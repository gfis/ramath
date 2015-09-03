/*  DownsizedMapReason: checks -x-1 mapping when x has even exponents only
 *  @(#) $Id: DownsizedMapReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-08-30, Georg Fischer: copied from EvenExponentReason
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
import  org.teherba.ramath.linear.Vector;

/** Checks whether there is some refined expression in the map of the new tree node 
 *  which can be divided by a common factor, and which leads to a {@link VariableMap#FAILURE failure} 
 *  of the node. THis reason refines the {@link BaseReason}, and does not invlove
 *  other tree nodes or other reasons.
 *  @author Dr. Georg Fischer
 */
public class DownsizedMapReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: DownsizedMapReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

     /** No-args Constructor
     */
    public DownsizedMapReason() {
    } // no-args Constructor

    /** Checks a {@link RelationSet} and determines whether 
     *  there is some refined expression in its map
     *  which leads to a {@link VariableMap#FAILURE failrue}.
     *  @param solver the complete state of the expansion tree
     *  @param rset2 the new {@link RelationSet} to be added to the queue 
     *  @return a message string starting with one of 
     *  <ul>
     *  <li>{@link VariableMap#UNKNOWN} - the RelationSet cannot be decided and must be further expanded</li>
     *  <li>{@link VariableMap#FAILURE} - the RelationSet is not possible</li>
     *  <li>{@link VariableMap#SUCCESS} - there is a solution, but the RelationSet must further be expanded</li>
     *  </ul>
     *  <p>
     *  Typical example (from test/T52.this.tst):
     *  <pre>
[1+4*a,2+4*b,1+4*c,0+4*d]:  unknown -> [4] 1+a+6*a^2+16*a^3+16*a^4+8*b+24*b^2+32*b^3+16*b^4-c-6*c^2-16*c^3-16*c^4-16*d^4
     *  </pre>
     *  When the 2nd variable is mapped to <em>1+2*b</em> instead, the RelationSet becomes
     *  <pre>
1 + 16*a + 96*a^2 + 256*a^3 + 256*a^4 + 8*b + 24*b^2 + 32*b^3 + 16*b^4 - 16*c - 96*c^2 - 256*c^3 - 256*c^4 - 256*d^4
     *  </pre>
     *  which fails because of <em>varGCD = 8</em>
     */
    public String check(BaseSolver solver, RelationSet rset2) {
        VariableMap vmap3 = rset2.getTuple().deflateIt();
        RelationSet rset3 = this.getRootNode().substitute(vmap3);
        String result = rset3.evaluate(vmap3);
        if (debug > 0) {
        	solver.trace.println("down " + " with " + vmap3.toString() + " => " + result + " " + rset3.toString());
        }
        if (result.startsWith(VariableMap.FAILURE)) {
            result = "downsized with " + vmap3.toString() + ", " + result;
            rset2.setTuple(vmap3);
        }
        return result;
    } // check

} // DownsizedMapReason
