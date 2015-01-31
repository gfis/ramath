/*  MonadicSolver: tries to solve a Diophantine equation by monadic variable expansion
 *  @(#) $Id: MonadicSolver.java 970 2012-10-25 16:49:32Z gfis $
 *  2012-10-25: EquationSet replaced by RelationSet
 *  2010-09-01: with solutions
 *  2009-09-30, Georg Fischer: copied from and replacing BinarySolver.java
 *
 *  Limitation: only positive values for variables can be found
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.symbolic.Solver;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.util.ModoMeter;
import  java.io.PrintWriter;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.Vector; // essentially a java.util.Queue (Java 1.6)

/** Tries to solve a set of Diophantine inequalities (a {@link RelationSet})
 *  by some systematic variable tree expansion.
 *  A single Diophantine equation is represented by a {@link Polynomial} compared to zero.
 *  The procedure tries successive, systematic substitutions of all variables in the equation set.
 *  <p>
 *  On some level of the tree expansion:
 *  <ul>
 *  <li>all undecided nodes from the previous level are investigated,</li>
 *  <li>the variable set is expanded (somehow, for example with all possible
 *  combinations of one additional bit),</li>
 *  <li>the resulting nodes (equation sets) are filtered through a series of tests,
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
public class MonadicSolver extends Solver {
    public final static String CVSID = "@(#) $Id: MonadicSolver.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 1;

    /*----------------- construction ----------------------*/

    /** No-args Constructor - prints on {@link java.lang.System#out}
     */
    public MonadicSolver() {
        super(new PrintWriter(System.out));
    } // no-args Constructor

    /** Constructor with writer
     *  @param writer where to write the proof trace
     */
    public MonadicSolver(PrintWriter writer) {
        super(writer); // this will also initialize the optional parameters
    } // Constructor(printer)

    /*----------------- heavyweight methods ----------------------*/

    /** Refines the variables of {@link RelationSet} <em>rset1</em>
     *  by one level of modulus expansion and computes the resulting RelationSet.
     *  @param rset1 the RelationSet to be refined
     *  @param varMap1 variables of rset1 mapped to null
     *  @param tupleShift2 factor for the variables
     *  @param mods result of a dispenser, modulus constants for the variables
     *  @return the resulting RelationSet (rset2)
     */
    private RelationSet refineVariables(RelationSet rset1, VariableMap varMap1, BigInteger tupleShift2, int[] mods) {
        VariableMap varMap0 = rset1.getTuple().clone(); // map for constant parts of expressions
        VariableMap varMap2 = new VariableMap(); // map for variable replacement expressions
        Iterator<String> viter1 = varMap1.keySet().iterator();
        int imod = 0;
        while (viter1.hasNext()) { // over all variables in the equation set: replace x_i by (2*x_j + k), j = i+1, k=0..base-1
            String varName  = viter1.next();
            StringBuffer expr2 = (new StringBuffer(16)).append('(');
            if (mods[imod] > 0) { // avoid "0+"
                expr2   .append(String.valueOf(mods[imod]))
                        .append('+');
            } // avoid "0+"
            expr2   .append(String.valueOf(getModBase()))
                    .append('*')
                    .append(varName)
                    .append(')')
                    ;
            varMap2.put(varName, expr2.toString()); // stored expanded formula for 1 variable

            BigInteger const0 = new BigInteger(varMap0.get(varName));
            if (mods[imod] > 0) { // avoid "*0"
                const0 = const0.add((BigInteger.valueOf(mods[imod])).multiply(tupleShift2));
            } // avoid "*0"
            varMap0.put(varName, const0.toString()); // store expanded constant for 1 variable
            imod ++;
        } // while viter1
        // varMap2 now contains the complete replacements for one derived equation set

        RelationSet rset2 = rset1.substitute(varMap2).normalize(); // one expanded child
        rset2.setTupleShift     (tupleShift2.multiply(BigInteger.valueOf(getModBase())));
        rset2.setTuple          (varMap0);
        return rset2;
    } // refineVariables

    /** Try to find a similiar RelationSet in the solver's history,
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
        RelationSet rset1 = get(queueIndex); // expand this parent element
        int curLevel = rset1.getNestingLevel() + 1;
        VariableMap varMap1 = rset1.getVariableMap(null, getUpperSubst()); // parent variable names mapped to null
        BigInteger tupleShift2 = rset1.getTupleShift();
        int varNo = varMap1.size(); // total number of variables to be substituted
        ModoMeter meter = new ModoMeter(varNo, getModBase()); // for n-adic expansion, e.g. x_i -> 0+2*x_j, 1+2*x_j
        if (debug >= 1) {
            trace.println();
            trace.println("expanding [" + queueIndex + "]"
                    + "*"  + tupleShift2.toString()
                    + ": " + polish(rset1.toString()));
        }
        while (meter.hasNext()) { // over all constant combinations - generate all children
            int[] mods = meter.toArray();
            RelationSet rset2 = refineVariables(rset1, varMap1, tupleShift2, mods);
            rset2.setNestingLevel   (curLevel); // + 1);
            rset2.setParentIndex    (queueIndex);
            String decision = rset2.evaluate(rset2.getTuple()); // getTuple = varMap0

            String tupleStr = rset2.getTuple().toString() + "*" + rset2.getTupleShift().toString() + " ";
            if (! decision.startsWith(VariableMap.UNKNOWN) && ! decision.startsWith(VariableMap.SUCCESS)) {
                if (debug >= 0) {
                    trace.print(meter.toString() + ": ");
                    trace.print(tupleStr);
                    trace.print(decision);
                    trace.println(" " + polish(rset2.toString()));
                }
            } else { // UNKNOWN || SUCCESS
                String similiar = findSimiliar(rset2);
                if (! similiar.startsWith("[-1]")) { // similiar RelationSet was found
                    if (debug >= 1) {
                        trace.print(meter.toString() + ": ");
                        trace.print(tupleStr);
                        trace.print(VariableMap.SIMILIAR + " to " + similiar);
                        trace.println(" " + polish(rset2.toString()));
                    }
                } else { // no similiar RelationSet found
                    if (debug >= 1) {
                        trace.print(meter.toString() + ": ");
                        trace.print(tupleStr);
                        trace.print(decision + " -> [" + size() + "]");
                        if (! rset2.hasConstant() && tupleStr.indexOf("=0") < 0) {
                            trace.print(", const=0 ");
                        }
                        trace.println(" " + polish(rset2.toString()));
                    }
                    add(rset2);
                } // no similiar
            } // unkown
            meter.next();
        } // while meter.hasNext() - generate all children
    } // expand

    //==============
    // Test driver
    //==============

    /** Test method.
     *  @param args command line arguments, see {@link Solver#getArguments}.
     *  <ul>
     *  <li>-b modulo base (default 2)</li>
     *  <li>-e equation set (enclosed in quotes)</li>
     *  <li>-f fileName (for a file containing the polynomial)</li>
     *  <li>-l maximum nesting level (default 4)</li>
     *  <li>-m maximum size of queue (default 256)</li>
     *  <li>-s substitute subsets of variables (default: all variables)</li>
     *  <li>-u do not substitute uppercase variables (default: all variables)</li>
     *  </ul>
     */
    public static void main(String[] args) {
        MonadicSolver solver = new MonadicSolver();
        String expr = solver.getArguments(0, args);
        RelationSet   rset   = new RelationSet("(3+a)^2+(4+b)^2=(5+c)^2"); // solution a=b=c=0
        if (expr != null) {
            rset = rset.parse(expr);
        }
        solver.solve(rset);
    } // main

} // MonadicSolver
