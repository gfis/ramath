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
import  java.util.Iterator;

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
        if (debug >= 1) {
            if (testParm.length() > 0) { // test whether 2 comma-separated variables are transposable
                String[] vars = testParm.split("\\,");
                boolean areResult = areTransposable(rmap2, vars[0], vars[1]);
                solver.getWriter().println("areTransposable(" + rset2.niceString() 
                        + ", " + vars[0] + ", " + vars[1] + ") = " + areResult); 
            } // test of areTransposable
            if (debug >= 2) {
                solver.getWriter().println(""
                        + "check " + rmap1.toVector() + " against [" + iqueue + "]"
                        + "="      + rmap2.toVector() 
                        + " => " + (testResult == null ? "null" : testResult.toString(",")));
            }
        }
        if (testResult != null) {
            result = "transposed [" + iqueue + "]"
                //  + " " + rmap1.toString() 
                    + " by " + testResult.toString(",");
        } // transposition found
        return result;
    } // consider

    /** Determines whether two variables in <em>this</em> {@link RelationSet}
     *  are transposable, that is they can be interchanged without loss of structure.
     *  Caution: this method uses and works only with a 
     *  stored {@link RefiningMap} and a prepared TransitionReason 
     *  obtained from the internal {@link ReasonFactory}.
     *  @param vmap  {@link VariableMap} which contains the two variables in question,
     *  and which defines their natural indexes
     *  @param vnam1 name of 1st variable
     *  @param vnam2 name of 2st variable
     *  @return true if the varaibles could be interchanged
     */
    public boolean areTransposable(VariableMap vmap, String vnam1, String vnam2) {
        boolean result = false;
        // first we must index the 2 variables
        int idx1 = -1;
        int idx2 = -1;
        Iterator<String> viter = vmap.keySet().iterator();
        int idx = 0;
        while (viter.hasNext()) {
            String name = viter.next();
            if (false) {
            } else if (name.equals(vnam1)) {
                idx1 = idx;
            } else if (name.equals(vnam2)) {
                idx2 = idx;
            }
            idx ++;
        } // while viter
        if (debug >= 1) {
            solver.getWriter().println("vmap=" + vmap.toVector()
                    + ", index(" + vnam1 + ")=" + idx1 + ", index(" + vnam2 + ")=" + idx2);
        }
        
        if (idx1 >= 0 && idx2 >= 0) { // both variables were indexable
            // now we can try to find a proper permutation Vector
            int itset = transet.size() - 1;
            while (! result && itset >= 0) {
                int[] perms = transet.get(itset).getValues(); // e.g. [1,0,2,3]
                if (perms[idx1] == idx2) { // can be interchanged
                    result = true;
                }
                itset --;
            } // while iter
        } // indexable
        // else result = false
        return result;
    } // areTransposable

} // TranspositionReason
