/*  BaseReason: base class for all reasons to cut the tree expansion
 *  @(#) $Id: BaseReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-02-21, Georg Fischer
 */
/*
 * Copyright 2015 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath.symbolic.reason;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.Solver;

/** Checks some reason why a node (a {@link RelationSet}) in the tree expansion
 *  of a {@link Solver} needs not to be investigated any further.
 *  There may be several reasons which are all checked in sequence, and the first
 *  valid reason stops this sequence.
 +  <p>
 *  BaseReason is the base class from which all other reasons inherit.
 *  It checks simple zero and modulus properties of the {@link RelationSet} in question.
 *  @author Dr. Georg Fischer
 */
public class BaseReason {
    public final static String CVSID = "@(#) $Id: BaseReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

    //--------------
    // Construction
    //--------------

    /** No-args Constructor
     */
    public BaseReason() {
    } // no-args Constructor

    //---------------------------
    // Check the specific reason
    //---------------------------

    /** Checks a specific expansion of the {@link RelationSet} and determines whether it
     *  <ul>
     *  <li>can be decided (and be cut from the tree) or</li>
     *  <li>must be further expanded.</li>
     *  </ul>
     *  @param solver the complete state of the expansion tree
     *  @param queueIndex position in the queue of the {@link RelationSet} to be expanded, >= 0
     */
    public String check(Solver solver, int queueIndex) {
        RelationSet rset1 = solver.get(queueIndex);
        String result = rset1.evaluate(rset1.getTuple());
        return result;
    } // check

    //-------------
    // Test driver
    //-------------

    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        BaseReason reason = new BaseReason();
    } // main

} // BaseReason
