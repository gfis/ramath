/*  GrowingReason: checks whether the RelationSet was growing from a parent
 *  @(#) $Id: GrowingReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-02-27, Georg Fischer
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

/** Checks whether there is a parent of the {@link RelationSet} in question
 *  with the same dispenser values, such that the constants of the
 *  monomial in the relation set result from the corresponding constants
 *  in the parent by multiplication factors.
 *  @author Dr. Georg Fischer
 */
public class GrowingReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: GrowingReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

     /** No-args Constructor
     */
    public GrowingReason() {
    } // no-args Constructor
    
    /** Checks a {@link RelationSet} and determines whether 
     *  there is a parent node 
     *  <ol>
     *  <li>which has the same dispenser values, and</li>
     *  <lI>whose monomial coefficients lead to the 
     *  coefficients in the relation set by multiplication factors.</li>
     *  </ol>
     *  @param solver the complete state of the expansion tree
     *  @param rset2 the new {@link RelationSet} to be added to the queue 
     */
    public String check(Solver solver, RelationSet rset2) {
    	boolean all = false; // whether to examine all queue elements, or the parents only
        String result = VariableMap.UNKNOWN;
        int iparent = all ? solver.size() - 1 : rset2.getParentIndex();
        boolean busy = true;
        while (busy && iparent >= 0) {
            RelationSet rset1 = solver.get(iparent);
            if (debug > 0) {
                solver.getWriter().println("iparent=" + iparent 
                        + ", rset1.meter=" + rset1.getMeter()
                        + ", rset2.meter=" + rset2.getMeter()
                        + ", rset1.tuple=" + rset1.getTuple().getConstants()
                        + ", rset2.tuple=" + rset2.getTuple().getConstants()
                        );
            }
            if (rset1.getTuple().getConstants().equals(rset2.getTuple().getConstants())) { // condition (1)
        //  if (rset1.getMeter().equals(rset2.getMeter())) { // condition (1)
                if (rset2.isGrownFrom(rset1)) {
                    busy = false;
                    result = VariableMap.FAILURE + ", grown from [" + iparent + "]";
                } // condition (2)
            } // condition (1)
            iparent = all ? iparent - 1 : rset1.getParentIndex();
        } // while iparent
        return result;
    } // check

} // GrowingReason
