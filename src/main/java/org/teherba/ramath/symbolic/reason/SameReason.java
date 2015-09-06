/*  SameReason: checks whether the RelationSet is the same as the root
 *  @(#) $Id: SameReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-09-05: initialize
 *  2015-07-23: used only on explicit request
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
    
    /** Initializes any data structures for <em>this</em> reason.
     *  This method is called by {@link ReasonFactory};
     *  it may be  used to gather and store data which are 
     *  needed for the specific check.
     *  @param the {@link BaseSolver solver} which uses the reasons
     *  during tree expansion
     */
    public void initialize(BaseSolver solver) {
        super.initialize(solver);
        setWalkMode(WALK_ROOT);
    } // initialize

    // inherited: BaseReason always isConsiderable()
    
    /** Compares the source {@link RelationSet} <em>rset2</em> to be queued with 
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
    public String compare(int iqueue, RelationSet rset1, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        if (rset1.isEqualTo(rset2)) { 
            result  = VariableMap.SAME + " form as " + rset2.niceString();
        } // same as [0]
        return result;
    } // compare

    /** Checks a {@link RelationSet} and determines whether 
     *  it is the same as the {@link RelationSet} at the root of the expansion tree
     *  @param rset2 the new {@link RelationSet} to be added to the queue 
     *  @return a message string starting with one of 
     *  <ul>
     *  <li>{@link VariableMap#UNKNOWN} - the RelationSet cannot be decided and must be further expanded</li>
     *  <li>{@link VariableMap#FAILURE} - the RelationSet is not possible</li>
     *  <li>{@link VariableMap#SUCCESS} - there is a solution, but the RelationSet must further be expanded</li>
     *  </ul>
     */
    public String check_99(RelationSet rset2) {
        return compare(0, solver.getRootNode(), rset2);
    } // check

} // SameReason
