/*  SimiliarReason: checks whether the RelationSet is similiar to any in the queue
 *  @(#) $Id: SimiliarReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-09-05: initialize, rewritten
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
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;

/** Checks whether {@link RelationSet} 
 *  is {@link RelationSet similiar} to another RelationSet in the tree / queue.
 *  @author Dr. Georg Fischer
 */
public class SimiliarReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: SimiliarReason.java 970 2012-10-25 16:49:32Z gfis $";

     /** No-args Constructor
     */
    public SimiliarReason() {
    } // no-args Constructor
    
    /** Initializes any data structures for <em>this</em> reason.
     *  This method is called by {@link ReasonFactory};
     *  it may be  used to gather and store data which are 
     *  needed for the specific check.
     *  @param solver the solver which uses <em>this</em> reason for iteration control
     *  @param startNode the root node of the expansion (sub-)tree
     */
    public void initialize(BaseSolver solver, RelationSet startNode) {
        super.initialize(solver, startNode);
        setWalkMode(WALK_ANCHESTORS);
    } // initialize

    /** Consider the source {@link RelationSet} <em>rset2</em> to be queued together with 
     *  another {@link RelationSet} <em>rset1</em> already queued.
     *  If the test is successful, a message is printed and returned,
     *  and <em>rset2</em> is not stored in the following; 
     *  otherwise the checking process continues.
     *  @param iqueue index of the target RelationSet <em>rset1</em>
     *  @param rset1 the old target {@link RelationSet} already queued
     *  @param rset2 the new source {@link RelationSet} to be added to the queue 
     *  @return a message String denoting the reasoning details,
     *  or {@link VariableMap#UNKNOWN} if the comparision is not conclusive.
     */
    public String consider(int iqueue, RelationSet rset1, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        if (debug >= 2) {
            getSolver().getWriter().println("SimiliarReason.consider(" 
                    + rset2.niceString() + ", " + rset2.niceString() + ")");
        }
        String message = rset1.similiarity(rset2);
        if (message != null) {
            result = VariableMap.SIMILIAR + "   [" + iqueue + "], " + message;
        } // similiar
        return result;
    } // consider

} // SimiliarReason
