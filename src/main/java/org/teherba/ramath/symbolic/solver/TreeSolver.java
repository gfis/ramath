/*  TreeSolver: tries to solve a Diophantine equation by monadic variable expansion
 *  @(#) $Id: TreeSolver.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-09-10: setSiblingIndex
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
import  org.teherba.ramath.symbolic.reason.ReasonFactory;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.ModoMeter;
import  java.io.PrintStream;
import  java.math.BigInteger;
import  java.util.Iterator;
import  org.apache.log4j.Logger;

/** Tries to solve a set of Diophantine equations
 *  ("single", "double" or generally a {@link RelationSet})
 *  by a systematic tree expansion of the variables.
 *  A single Diophantine equation is represented by a {@link Polynomial} compared to zero.
 *  The procedure tries successive substitutions of all variables in the RelationSet.
 *  <p>
 *  On some level of the tree expansion:
 *  <ul>
 *  <li>all undecided nodes from the previous level are investigated,</li>
 *  <li>the variable set is expanded (somehow, for example with all possible
 *  combinations of one additional lowest bit),</li>
 *  <li>the resulting nodes (RelationSets) are filtered through a series of tests,
 *  so called "reasons",
 *  for example checks for proper congruences, transposition of variables,
 *  infinite descent and so on,</li>
 *  <li>only the nodes which could NOT be decided are stored for the next iteration.</li>
 *  </ul>
 *  <p>
 *  The tree of undecided nodes is represented by a queue which is processed from
 *  left to right (from low to high indices).
 *  <p>
 *  A binary expansion of x = 0+1*x_0 proceeds as follows (up to nesting level 3):
 *  <pre>
 *                                            0+1*x_0
 *  x_0 =                  0+2*x_1                                 1+2*x_1
 *
 *  x_1 =        0+2*x_2             1+2*x_2             0+2*x_2             1+2*x_2
 *  x_0 =        0+4*x_2             2+4*x_2             1+4*x_2             3+4*x_2
 *
 *  x_2 =   0+2*x_3   1+2*x_3   0+2*x_3   1+2*x_3   0+2*x_3   1+2*x_3   0+2*x_3   1+2*x_3
 *  x_1 =   0+4*x_3   2+4*x_3   1+4*x_3   3+4*x_3   0+4*x_3   2+4*x_3   1+4*x_3   3+4*x_3
 *  x_0 =   0+8*x_3   4+8*x_3   2+8*x_3   6+8*x_3   1+8*x_3   5+8*x_3   3+8*x_3   7+8*x_3
 *  </pre>
 *  In this way the unknown part of the variable is shifted left by one bit position
 *  in each expansion step.
 *  <p>
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
        super(System.out);
    } // no-args Constructor

    /** Constructor with writer
     *  @param writer where to write the proof trace
     */
    public TreeSolver(PrintStream writer) {
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
        if (debug > 1) {
            trace     .println("trace: TreeSolver.expand(" + rset1.niceString() + ")");
        }
        ReasonFactory factory1 = rset1.getReasonFactory();
        if (factory1 != null) { // otherwise it is a pseudo node behind a subtree node
            RefiningMap vmap1  = rset1.getMapping();
            int newLevel       = rset1.getNestingLevel() + 1;
            int base           = this.getModBase();
            BigInteger factor  = BigInteger.valueOf(base).pow(newLevel);
            ModoMeter meter    = this.getPreparedMeter(rset1, vmap1, factor);
            if (false && vmap1.size() == 0) {
                System.err.println("TreeSolver assertion??? vmap1.size()=0, rset1=" + rset1.toString(true));
            }
            // meter now ready for n-adic expansion, e.g. x -> 2*x+0, 2*x+1
            printNode(queueIndex, rset1, meter, factor);
            int oldSiblingIndex = -1; // for the 1st child
            while (meter.hasNext()) { // over all constant combinations - generate all children

                RefiningMap vmap2 = vmap1.getRefinedMap(meter);
                if (vmap2.size() > 0) {
                    RelationSet rset2 = factory1.getStartNode().substitute(vmap2, getUpperSubst());
                    if (norm) {
                        rset2.deflateIt();
                    }
                    rset2.setIndex(this.size()); // next free queue entry
                    rset2.setMapping(vmap2);
                    rset2.setNestingLevel(newLevel);
                    rset2.setParentIndex(queueIndex);
                    rset2.setReasonFactory(factory1);
                    rset2.setSiblingIndex(oldSiblingIndex);
                    if (factory1.evaluateReasons(rset2, vmap2)) { // result = queueAgain
                        // a reason could have modified the complete structure of rset2: a new subtree could be started
                        if (rset2.getReasonFactory() != null) {
                            oldSiblingIndex = rset2.getIndex();
                        } else {
                            // a reason inserted a copy and turned it into a pseudo node:
                            // leave oldSiblingIndex as before
                        }
                        this.add(rset2);
                    } // queueAgain
                } // vmap2.size() > 0
                meter.next();
            } // while meter.hasNext() - generate all children
            // not behind the startNode of a subtree
        } else { // pseudo node behind the startNode of a subtree
        	printPseudoNode(queueIndex, rset1);
        } // pseudo
    } // expand

    //-------------
    // Test driver
    //-------------
    /** Local logger for exceptions */
    private static Logger log;

    /** Test method.
     *  @param args command line arguments, see {@link BaseSolver#getArguments}.
     */
    public static void main(String[] args) {
        log = Logger.getLogger(TreeSolver.class.getName());
        try {
            TreeSolver solver = new TreeSolver();
            String expr = solver.getArguments(0, args);
            RelationSet rset0 = new RelationSet("(3+a)^2+(4+b)^2=(5+c)^2"); // solution a=b=c=0
            if (expr != null) {
                rset0 = RelationSet.parse(expr);
            }
            solver.solve(rset0);
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
            exc.printStackTrace();
        }
    } // main

} // TreeSolver
