/*  QueuingSolver: tries to solve a Diophantine equation by variable expansion
 *  @(#) $Id: QueuingSolver.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-11-25: 'expand' copied from TreeSolver and 'solve' from BaseSolver, TEC2 == QEC2
 *  2015-09-10: setSiblingIndex
 *  2015-07-23: deactivated, replaced by TreeSolver
 *  2015-06-15: RelationSet.parse was not static
 *  2015-05-28: subdirectory solver
 *  2015-02-07: try to treat variable name equivalences classes; Pforzheim 4th day; Dorothea's 105th birthday
 *  2014-04-05, Georg Fischer: copied from and replacing MonadicSolver.java
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
import  org.teherba.ramath.symbolic.branch.BaseBranch;
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
public class QueuingSolver extends BaseSolver {
    public final static String CVSID = "@(#) $Id: QueuingSolver.java 970 2012-10-25 16:49:32Z gfis $";

    /* debug is inherited */

    //--------------
    // Construction
    //--------------

    /** No-args Constructor - prints on {@link java.lang.System#out}
     */
    public QueuingSolver() {
        super(System.out);
    } // no-args Constructor

    /** Constructor with writer
     *  @param writer where to write the proof trace
     */
    public QueuingSolver(PrintStream writer) {
        super(writer); // this will also initialize the optional parameters
    } // Constructor(printer)

    //---------------------
    // Heavyweight Methods
    //---------------------

    // setRootNode
    
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
        ReasonFactory factory1 = rset1.getReasonFactory();
        if (factory1 != null) { // otherwise it is a pseudo node behind a subtree node
            if (factory1.explainReasons(rset1)) { // result = queueAgain
                BaseBranch branch   = factory1.getApplicableBranch(rset1, queueIndex);
                int nestingLevel    = rset1.getNestingLevel() + 1;
            /*
                int oldSiblingIndex = -1; // for the 1st child
                branch.setNestingLevel      (nestingLevel);
                branch.setParentIndex       (queueIndex);
                branch.setOldSiblingIndex   (oldSiblingIndex);
            */
                RefiningMap vmap1   = rset1.getMapping();
                BigInteger factor   = BigInteger.valueOf(this.getModBase()).pow(nestingLevel);
                ModoMeter meter     = this.getPreparedMeter(rset1, vmap1, factor);

                while (meter.hasNext()) { // over all constant combinations - generate all children
                    branch.createChildNode(this, factory1, vmap1, meter);
                    meter.next();
                } // while meter.hasNext() - generate all children
            
            } // queueAgain
            // not behind the startNode of a subtree
        } else { // pseudo node behind the startNode of a subtree
            printPseudoNode(queueIndex, rset1);
        } // pseudo
    } // expand
     
    /** Refines and evaluates modulus properties for variables in a {@link RelationSet}.
     *  The maximum queue size breaks the expansion loop in any case.
     *  Pseudo-abstract.
     *  @param rset0 start expansion with this {@link RelationSet}.
     *  @return whether the iteration did stop because the queue was exhausted
     */
    public boolean solve(RelationSet rset0) {
        prevLevel = -1;
        ReasonFactory factory = setRootNode(rset0, getCodeList());

        boolean exhausted = false;
        boolean busy = true;
        while (busy) {
            RelationSet rset1 = this.get(queueHead);
            int curLevel = rset1.getNestingLevel();
            if (curLevel > getMaxLevel()) { // nesting too deep - give up
                busy   = false;
            } else { // still expanding
                showSeparator(curLevel, rset1.getParentIndex());
                expand(queueHead);
            } // still expanding
            queueHead ++;
            if (queueHead >= size()) { // queue exhausted
                busy = false;
                exhausted = true;
            }
        } // while busy
        printTrailer(rset0, exhausted);
        close();
        return exhausted;
    } // solve

    //-------------
    // Test driver
    //-------------

    /** Local logger for exceptions */
    private static Logger log;

    /** Test method.
     *  @param args command line arguments, see {@link BaseSolver#getArguments}.
     */
    public static void main(String[] args) {
        log = Logger.getLogger(QueuingSolver.class.getName());
        try {
            QueuingSolver solver = new QueuingSolver();
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

} // QueuingSolver
