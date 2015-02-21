/*  TreeSolver: tries to solve a Diophantine equation by monadic variable expansion
 *  @(#) $Id: TreeSolver.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-02-20, Georg Fischer: copied from and replacing QueuingSolver.java
 *
 *  Limitation: only positive values for variables can be found
 */
/*
 * Copyright 2014 Dr. Georg Fischer <punctum at punctum dot kom>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.teherba.ramath.symbolic;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.Solver;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.symbolic.reason.ReasonList;
import  org.teherba.ramath.util.ModoMeter;
import  java.io.PrintWriter;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.Vector; // essentially a java.util.Queue (Java 1.6)

/** Tries to solve a set of Diophantine inequalities (a {@link RelationSet})
 *  by some systematic variable tree expansion.
 *  A single Diophantine equation is represented by a {@link Polynomial} compared to zero.
 *  The procedure tries successive, systematic substitutions of all variables in the relation set.
 *  <p>
 *  On some level of the tree expansion:
 *  <ul>
 *  <li>all undecided nodes from the previous level are investigated,</li>
 *  <li>the variable set is expanded (somehow, for example with all possible
 *  combinations of one additional bit),</li>
 *  <li>the resulting nodes (relation sets) are filtered through a series of tests,
 *  for example modulo checks or size estimations,</li>
 *  <li>only the nodes which could not be decided are stored for the next iteration.</li>
 *  </ul>
 *  <p>
 *  The tree of undecided nodes is represented by a queue which is processed from
 *  left to right (from low to high indices).
 *  <p>
 *  Expansion of x = 1*x_0 up to nesting level 3:
 *  <pre>
 *                                             1*x_0
 *  x_0=                  2*x_1+0                                 2*x_1+1
 *
 *  x_1=        2*x_2+0             2*x_2+1             2*x_2+0             2*x_2+1
 *  x_0=        4*x_2+0             4*x_2+2             4*x_2+1             4*x_2+3
 *
 *  x_2=   2*x_3+0   2*x_3+1   2*x_3+0   2*x_3+1   2*x_3+0   2*x_3+1   2*x_3+0   2*x_3+1
 *  x_1=   4*x_3+0   4*x_3+2   4*x_3+1   4*x_3+3   4*x_3+0   4*x_3+2   4*x_3+1   4*x_3+3
 *  x_0=   8*x_3+0   8*x_3+4   8*x_3+2   8*x_3+6   8*x_3+1   8*x_3+5   8*x_3+3   8*x_3+7
 *  </pre>
 *  In this way the unknown part of the variable is shifted left by one digit position
 *  in each expansion step.
 *  <p>
 *  This solver uses a {@link RelationSet} and a {@link VariableMap},
 *  whereas its anchestor <em>BinarySolver</em> could only solve one {@link Polynomial} = 0.
 *  @author Dr. Georg Fischer
 */
public class TreeSolver extends Solver {
    public final static String CVSID = "@(#) $Id: TreeSolver.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 1;

    //--------------
    // Construction
    //--------------

    /** No-args Constructor - prints on {@link java.lang.System#out}
     */
    public TreeSolver() {
        super(new PrintWriter(System.out));
    } // no-args Constructor

    /** Constructor with writer
     *  @param writer where to write the proof trace
     */
    public TreeSolver(PrintWriter writer) {
        super(writer); // this will also initialize the optional parameters
    } // Constructor(printer)

    //---------------------
    // Heavyweight Methods
    //---------------------

    /** Tries to find a similiar {@link RelationSet} in the solver's history,
     *  either in the parents or in all queue elements (depending on the findMode)
     *  @param rset2 RelationSet to be looked up
     *  @return index of similiar element in queue, or "[-1]" if none was found
     */
    protected String findSimiliar(RelationSet rset2) {
        int isimil = -1; // assume not found
        int iqueue = size() - 1;
        String message = null;
        switch (getFindMode()) {
            default:
            case FIND_IN_PREVIOUS:
                while (isimil < 0 && iqueue >= 0) {
                    message = get(iqueue).similiarity(rset2);
                    if (message != null) {
                        isimil = iqueue;
                    }
                    iqueue --;
                } // while iqueue
                break;
            case FIND_IN_PARENTS:
                iqueue = rset2.getParentIndex();
                while (isimil < 0 && iqueue >= 0) {
                    message = get(iqueue).similiarity(rset2);
                    if (message != null) {
                        isimil = iqueue;
                    }
                    iqueue = rset2.getParentIndex();
                } // while iqueue
                break;
        } // switch findMode
        return "[" + String.valueOf(isimil) + "], " + message;
    } // findSimiliar

    /** Expands one {@link RelationSet} in the queue,
     *  evaluates the expanded children,
     *  and requeues all children with status UNKNOWN or SUCCESS.
     *  Binary expansion (for example) replaces all variables x_i by 0+2*x_j and 1+2*x_j (j=i+1).
     *  The constants which are added run from (0,0,0 ... 0), (1,0,0 ... 0) ... through to (1,1,1 ... 1);
     *  they are obtained from a {@link ModoMeter}.
     *  @param queueIndex position in the queue of the element ({@link RelationSet}) to be expanded, >= 0
     */
    public void expand(int queueIndex) {
        RelationSet rset1 = get(queueIndex); // expand this element (the "parent")
        int curLevel      = rset1.getNestingLevel() + 1;
        int base          =  getModBase();
        VariableMap vmap1 = rset1.getTuple();
        int varNo         = vmap1.size(); // total number of variables to be substituted
        ModoMeter meter   = new ModoMeter(varNo, 1); // assume that all variables are not involved
        VariableMap vmapr = rset1.getRest(base).getExpressionMap();
        Iterator<String> iter1 = vmap1.keySet().iterator();
        int im = 0;
        while (iter1.hasNext()) {
            String name = iter1.next();
            if (true || vmapr.get(name) != null) { // name occurs in rest: this will be involved
                meter.setBase(im, base); // involve it
            } // name in rest
            im ++;
        } // while iter1
        // meter now ready for n-adic expansion, e.g. x -> 2*x+0, 2*x+1
        BigInteger factor = BigInteger.valueOf(base).pow(curLevel);
        if (debug >= 1) {
            trace.println();
            trace.println("expanding queue[" + queueIndex + "]: "
                    + (rset1.toString())
                    + " modulo " + meter.toBaseList()
                    + " *" + factor.toString()
                    );
        }
        while (meter.hasNext()) { // over all constant combinations - generate all children
            VariableMap vmap2 = vmap1.refineExpressions(meter);
            RelationSet rset2 = getStartSet().substitute(vmap2); // .normalize();
            rset2.setNestingLevel   (curLevel); // + 1);
            rset2.setParentIndex    (queueIndex);
            rset2.setTuple          (vmap2);
            int qpos = size(); // position where the next queue element is stored
            add(rset2);
            String decision = reasons.check(this, qpos);
            remove(qpos);
            
            if (! decision.startsWith(VariableMap.UNKNOWN) && ! decision.startsWith(VariableMap.SUCCESS)) {
                    if (debug >= 0) {
                        trace.print(vmap2.toVector() + ": ");
                        trace.println(decision);
                    }
            } else { // UNKNOWN || SUCCESS
                if (size() == 1 && get(0).toString().equals(rset2.clone().normalize().toString())) { // first queue entry, expanded with [0,0,...0]
                        if (debug >= 1) {
                            trace.print(vmap2.toVector() + ": ");
                            trace.print(VariableMap.SAME + " as");
                            trace.print(" " + polish(rset2, factor));
                            trace.println();
                        }
                } else { // not [0]
                    String similiar = findSimiliar(rset2);
                    if (! similiar.startsWith("[-1]")) { // no index "[-1]" means a similiar RelationSet was found
                        if (debug >= 1) {
                            trace.print(vmap2.toVector() + ": ");
                            trace.print(VariableMap.SIMILIAR + " to " + similiar);
                            trace.print(" " + polish(rset2, factor));
                            trace.println();
                        }
                    } else { // "[-1]", no similiar RelationSet found
                        if (debug >= 1) {
                            trace.print(vmap2.toVector() + ": ");
                            trace.print(decision);
                            trace.print(" " + polish(rset2, factor));
                            trace.print(" -> [" + size() + "]");
                            trace.println();
                        }
			            add(rset2);
                    } // no similiar
                } // not [0]
            } // unkown
            meter.next();
        } // while meter.hasNext() - generate all children
    } // expand

    //-------------
    // Test driver
    //-------------

    /** Test method.
     *  @param args command line arguments, see {@link Solver#getArguments}.
     */
    public static void main(String[] args) {
        TreeSolver solver = new TreeSolver();
        String expr = solver.getArguments(0, args);
        RelationSet rset0 = new RelationSet("(3+a)^2+(4+b)^2=(5+c)^2"); // solution a=b=c=0
        if (expr != null) {
            rset0 = rset0.parse(expr);
        }
        rset0.setTuple(rset0.getExpressionMap());
        solver.solve(rset0);
    } // main

} // TreeSolver
