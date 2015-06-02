/*  DoGrowReason: checks whether the RelationSet was growing from a parent
 *  @(#) $Id: DoGrowReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-06-01, Georg Fischer: copied from GrowingReason
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
import  org.teherba.ramath.symbolic.solver.BaseSolver;

/** Checks whether there is a parent of the {@link RelationSet} in question
 *  with the same dispenser values, such that the constants of the
 *  monomial in the relation set result from the corresponding constants
 *  in the parent by multiplicative factors &gt;= 1.
 *  This class is identical to {@link GrowingReason} except that it does no stop the tree expansion.
 *  @author Dr. Georg Fischer
 */
public class DoGrowReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: DoGrowReason.java 970 2012-10-25 16:49:32Z gfis $";

     /** No-args Constructor
     */
    public DoGrowReason() {
    } // no-args Constructor
    
    /** Checks a {@link RelationSet} and determines whether 
     *  there is a parent node 
     *  <ol>
     *  <li>which has the same dispenser values, and</li>
     *  <lI>whose monomial coefficients lead to the 
     *  coefficients in the relation set by multiplicative factors &gt;= 1.</li>
     *  </ol>
     *  @param solver the complete state of the expansion tree
     *  @param rset2 the new {@link RelationSet} to be added to the queue 
     *  @return a message string starting with one of 
     *  <ul>
     *  <li>{@link VariableMap#UNKNOWN} - the RelationSet cannot be decided and must be further expanded</li>
     *  <li>{@link VariableMap#FAILURE} - the RelationSet is not possible</li>
     *  <li>{@link VariableMap#SUCCESS} - there is a solution, but the RelationSet must further be expanded</li>
     *  </ul>
     *  This method is identical to {@link GrowingReason#check} except that it does no stop the tree expansion.
     */
    public String check(BaseSolver solver, RelationSet rset2) {
        boolean all = false; // whether to examine all queue elements, or the parents only
        String result = VariableMap.UNKNOWN;
        int iparent = all ? solver.size() - 1 : rset2.getParentIndex();
        boolean busy = true;
        while (busy && iparent >= 0) {
            RelationSet rset1 = solver.get(iparent);
            if (true || rset1.getMeter().equals(rset2.getMeter())) { // condition (1)
                String factors = rset2.getGrowingFactors(rset1);
                if (solver.debug >= 2) {
                    solver.getWriter().println("DoGrowReason iparent=" + iparent + ", factors=" + factors
                            + "\n\trset1:" + rset1.getMeter() + ", " + solver.polish(rset1)
                            + "\n\trset2:" + rset2.getMeter() + ", " + solver.polish(rset2)
                            );
                }
                if (factors != null) {
                    // busy = false;
                    result += ", grown from [" + iparent + "]*" + factors; //  + " " + solver.polish(rset2);
                    if (solver.debug >= 2) {
                        result += "\n\t\tfrom " + solver.polish(rset1);
                    }
                    // condition (2)
                } else {
                }    
            } // condition (1)
            iparent = all ? iparent - 1 : rset1.getParentIndex();
        } // while iparent
        return result;
    } // check

} // DoGrowReason
