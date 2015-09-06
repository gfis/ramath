/*  QueuingSolver: tries to solve a Diophantine equation by monadic variable expansion
 *  @(#) $Id: QueuingSolver.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-07-23: deactivated, replaced by TreeSolver
 *  2015-06-15: RelationSet.parse was not static
 *  2015-05-28: subdirectory solver
 *  2015-02-07: try to treat variable name equivalences classes; Pforzheim 4th day post; Dorothea's 105th birthday
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
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.util.ModoMeter;
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
public class QueuingSolver extends BaseSolver {
    public final static String CVSID = "@(#) $Id: QueuingSolver.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 1;

    //--------------
    // Construction
    //--------------

    /** No-args Constructor - prints on {@link java.lang.System#out}
     */
    public QueuingSolver() {
        super(System.out);
    } // no-args Constructor

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
    } // expand

    //-------------
    // Test driver
    //-------------

    /** Test method.
     *  @param args command line arguments, see {@link BaseSolver#getArguments}.
     */
    public static void main(String[] args) {
        QueuingSolver solver = new QueuingSolver();
        String expr = solver.getArguments(0, args);
        RelationSet rset0 = new RelationSet("(3+a)^2+(4+b)^2=(5+c)^2"); // solution a=b=c=0
        if (expr != null) {
            rset0 = RelationSet.parse(expr);
        }
        rset0.setMapping(rset0.getRefiningMap());
        solver.solve(rset0);
    } // main

} // QueuingSolver
