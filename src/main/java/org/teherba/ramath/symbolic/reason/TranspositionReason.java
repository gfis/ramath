/*  TranspositionReason: checks the transposition of variable names
 *  @(#) $Id: TranspositionReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-09-05: initialize
 *  2015-09-04, Georg Fischer: copied from TransposeReason
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
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.TranspositionSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;

/** Checks whether there is another {@link RelationSet} on the same nesting level
 *  of the expansion tree which differs from the RelationSet in question only
 *  by a transposition of the variable names.
 *  @author Dr. Georg Fischer
 */
public class TranspositionReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: TranspositionReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** Stores the possible transpositions */
    private TranspositionSet transet = null;

     /** No-args Constructor
     */
    public TranspositionReason() {
    } // no-args Constructor

    /** Initializes any data structures for <em>this</em> reason.
     *  This method is called by {@link ReasonFactory};
     *  it may be  used to gather and store data which are 
     *  needed for the specific check.
     *  @param solver the {@link BaseSolver solver} which uses <em>this</em> reason for iteration control
     *  @param startNode the root node of the expansion (sub-)tree
     */
    public void initialize(BaseSolver solver, RelationSet startNode) {
        super.initialize(solver, startNode);
        setWalkMode(WALK_SIBLINGS);
        transet = new TranspositionSet(startNode);
    } // initialize

    /** Whether <em>this</em> reason should be considered for 
     *  the starting {@link RelationSet}.
     *  Only a few reasons overwrite this method and return <em>false</em> for
     *  some types of RelationSets.
     *  This method may be also used to gather and store data which are 
     *  needed for the specific check.
     *  @return <em>true</em> if the <em>this</em> should be considered (default), 
     *  <em>false</em> otherwise.
     */
    public boolean isConsiderable() {
        boolean result = transet.size() > 0;
        if (result) {
            solver.getWriter().println("TranspositionSet=" + transet.toString());
        } // if result 
        return result;
    } // isConsiderable

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
        RefiningMap rmap2 = rset2.getMapping();
        String[] exprs2   = rmap2.getBareRefinedArray();
        RefiningMap rmap1 = rset1.getMapping();
        String[] exprs1   = rmap1.getBareRefinedArray();
        Vector testResult = transet.testPermutation(exprs1, exprs2);
        if (debug >= 2) {
            solver.getWriter().println(""
                    + "check " + rmap1.toVector() + " against [" + iqueue + "]"
                    + "="      + rmap2.toVector() 
                    + " => " + (testResult == null ? "null" : testResult.toString(",")));
        }
        if (testResult != null) {
            result = "transposed [" + iqueue + "]"
                //  + " " + rmap1.toString() 
                    + " by " + testResult.toString(",");
        } // transposition found
        return result;
    } // consider

} // TranspositionReason
