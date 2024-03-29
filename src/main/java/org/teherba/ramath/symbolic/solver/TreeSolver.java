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
import  org.apache.logging.log4j.Logger;
import  org.apache.logging.log4j.LogManager;

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

    //-------------
    // Test driver
    //-------------
    /** Local logger for exceptions */
    private static Logger log;

    /** Test method.
     *  @param args command line arguments, see {@link BaseSolver#getArguments}.
     */
    public static void main(String[] args) {
        log = LogManager.getLogger(TreeSolver.class.getName());
        try {
            BaseSolver solver = new TreeSolver();
            String expr = solver.getArguments(0, args);
            RelationSet rset0 = new RelationSet("(3+a)^2+(4+b)^2=(5+c)^2"); // solution a=b=c=0
            if (expr != null) {
                rset0 = RelationSet.parse(expr);
            }
            solver.solve(rset0);
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    } // main

} // TreeSolver
