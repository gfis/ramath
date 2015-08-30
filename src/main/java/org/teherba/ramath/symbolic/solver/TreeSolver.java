/*  TreeSolver: tries to solve a Diophantine equation by monadic variable expansion
 *  @(#) $Id: TreeSolver.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-07-23: printSolutions
 *  2015-06-15: RelationSet.parse was not static
 *  2015-05-28: subdirectory solver
 *  2015-04-26: solution if (xi,yi,..) elem of {0,1}^n
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
package org.teherba.ramath.symbolic.solver;
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.ModoMeter;
import  java.io.PrintWriter;
import  java.math.BigInteger;
import  java.util.Iterator;

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
public class TreeSolver extends BaseSolver {
    public final static String CVSID = "@(#) $Id: TreeSolver.java 970 2012-10-25 16:49:32Z gfis $";

    /* debug is inherited */
    
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

    /** Expands one {@link RelationSet} in the queue,
     *  evaluates the expanded children,
     *  and requeues all children with status UNKNOWN or SUCCESS.
     *  Binary expansion (for example) replaces all variables x_i by 0+2*x_j and 1+2*x_j (j=i+1).
     *  The constants which are added run from (0,0,0 ... 0), (1,0,0 ... 0) ... through to (1,1,1 ... 1);
     *  they are obtained from a {@link ModoMeter}.
     *  @param queueIndex position in the queue of the element ({@link RelationSet}) to be expanded, >= 0
     */
    public void expand(int queueIndex) {
        RelationSet rset1 = this.get(queueIndex); // expand this element (the "parent")
        VariableMap vmap1 = rset1.getTuple();
        int newLevel      = rset1.getNestingLevel() + 1;
        int base          = this.getModBase();
        BigInteger factor = BigInteger.valueOf(base).pow(newLevel);
        ModoMeter meter   = this.getPreparedMeter(rset1, vmap1, factor);  
        if (false && vmap1.size() == 0) {
            System.out.println("TreeSolver assertion??? vmap1.size()=0, rset1=" + rset1.toString(true));
        }    
        // meter now ready for n-adic expansion, e.g. x -> 2*x+0, 2*x+1
        printNode(queueIndex, rset1, meter, factor);
        printSolutions(rset1, vmap1);
        while (meter.hasNext()) { // over all constant combinations - generate all children
            VariableMap vmap2 = vmap1.refineExpressions(meter);
            if (vmap2.size() > 0) {
                RelationSet rset2 = getRootNode().substitute(vmap2);
                if (norm) {
                    rset2.normalizeIt();
                }
                rset2.setTuple(vmap2, this.getTransposables());
                rset2.setNestingLevel(newLevel);
                rset2.setParentIndex(queueIndex);
                if (reasons.evaluateReasons(this, rset2, vmap2)) { // queueAgain
                    this.add(rset2);
                } // queueAgain
            } // vmap2.size() > 0
            meter.next();
        } // while meter.hasNext() - generate all children
    } // expand

    //-------------
    // Test driver
    //-------------

    /** Test method.
     *  @param args command line arguments, see {@link BaseSolver#getArguments}.
     */
    public static void main(String[] args) {
        TreeSolver solver = new TreeSolver();
        String expr = solver.getArguments(0, args);
        RelationSet rset0 = new RelationSet("(3+a)^2+(4+b)^2=(5+c)^2"); // solution a=b=c=0
        if (expr != null) {
            rset0 = RelationSet.parse(expr);
        }
        solver.solve(rset0);
    } // main

} // TreeSolver
