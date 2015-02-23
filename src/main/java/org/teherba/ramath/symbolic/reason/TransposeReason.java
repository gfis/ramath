/*  TransposeReason: checks the transposition of variable names
 *  @(#) $Id: TransposeReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-02-22, Georg Fischer
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

/** Checks whether there is another {@link RelationSet} on the same nesting level
 *  of the expansions tree which differs from the RelationSet in question only
 *  by a transposition of the variable (names).
 *  @author Dr. Georg Fischer
 */
public class TransposeReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: TransposeReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** No-args Constructor
     */
    public TransposeReason() {
    } // no-args Constructor
    
    /** Checks whether the {@link VariableMap}s of two {@link RelationSet}s
     *  can be seen as equivalent because the result by the transposition of 
     *  one or more variable pair(s)
     *  @param rset1 1st RelationSet
     *  @param rset2 2nd RelationSet
     *  @return null if no transposition is found, or a Vector indicating 
     *  the variables which must be exchanged 
     */
    private Vector checkTranspositions(RelationSet rset1, RelationSet rset2) {
        Vector result = null;
        return result;
    } // checkTranspositions
        

    /** Checks a {@link RelationSet} and determines whether 
     * there is another {@link RelationSet} on the same nesting level
     *  of the expansion tree which differs from the parameter RelationSet only
     *  by a transposition of the variable (names).
     *  @param solver the complete state of the expansion tree
     *  @param rset2 the new {@link RelationSet} to be added to the queue 
     */
    public String check(Solver solver, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        int level2 = rset2.getNestingLevel();
        int iqueue = solver.size() - 1; // last element
        RelationSet rset1 = solver.get(iqueue);
        while (iqueue > 0 && rset1.getNestingLevel() == level2) {
            if (true) { // transposition found
                
            } // transposition found
            iqueue --;
            rset1 = solver.get(iqueue);
        } // while iqueue
        return result;
    } // check

} // TransposeReason
