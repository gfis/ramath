/*  SameReason: checks whether the RelationSet is the same as the root
 *  @(#) $Id: SameReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-02-24, Georg Fischer
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
import  org.teherba.ramath.symbolic.reason.BaseReason;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.symbolic.Solver;

/** Checks whether the tree expansion root {@link RelationSet} 
 *  is the same as the RelationSet in question 
 *  @author Dr. Georg Fischer
 */
public class SameReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: SameReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

     /** No-args Constructor
     */
    public SameReason() {
    } // no-args Constructor
    
    /** Checks a {@link RelationSet} and determines whether 
     *  it is the same as the tree expansion root {@link RelationSet}
     *  @param solver the complete state of the expansion tree
     *  @param rset2 the new {@link RelationSet} to be added to the queue 
     */
    public String check(Solver solver, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        if (solver.size() == 1 && solver.get(0).toString().equals(rset2.clone().normalize().toString())) { 
            // first queue entry, expanded with [0,0,...0]
            result  = VariableMap.SAME + " form as " + solver.polish(rset2);
        } // same as [0]
        return result;
    } // check

/* old code in TreeSolver
                if (size() == 1 && get(0).toString().equals(rset2.clone().normalize().toString())) { // first queue entry, expanded with [0,0,...0]
                        if (debug >= 1) {
                            trace.print(vmap2.toVector() + ": ");
                            trace.print(VariableMap.SAME + " as");
                            trace.print(" " + polish(rset2));
                            trace.println();
*/

} // SameReason
