/*  DownsizedMapReason: checks -x-1 mapping when x has even exponents only
 *  @(#) $Id: DownsizedMapReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-09-05: initialize
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
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;
import  java.math.BigInteger;
import  java.util.Iterator;

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

    /** Initializes any data structures for <em>this</em> reason.
     *  This method is called by {@link ReasonFactory};
     *  it may be  used to gather and store data which are 
     *  needed for the specific check.
     *  @param the {@link BaseSolver solver} which uses the reasons
     *  during tree expansion
     *  @param startNode the root node of the expansion (sub-)tree
     */
    public void initialize(BaseSolver solver, RelationSet startNode) {
        super.initialize(solver, startNode);
        setWalkMode(WALK_ANCHESTORS);
    } // initialize

    /** Deflates the additive factors <em>a</em> and
     *  the multiplicative factors <em>m</em> in all refined expressions of 
     *  {@link RefiningMap}
     *  such that they have no common divisor.
     *  The expressions remain unchanged when <em>a = 0</em>.
     *  @param vmap1 modify the values in this map
     *  @return a new, deflated map
     */
    public RefiningMap downsize(VariableMap vmap1) {
        RefiningMap result = new RefiningMap();
        Iterator<String> viter = vmap1.keySet().iterator();
        while (viter.hasNext()) {
            String key   = viter.next();
            String value = vmap1.get(key); // REFINED_FORM - this has the form "a+m*x"
            BigInteger[] fam = RefiningMap.extractRefinedFactors(value);
            if (fam[0].compareTo(BigInteger.ONE) > 0) {
                BigInteger gcd1 = fam[0].gcd(fam[1]);
                if (gcd1.compareTo(BigInteger.ONE) > 0) { // a, m have a common factor
                    value =   fam[0].divide(gcd1).toString() + "+"
                            + fam[1].divide(gcd1).toString() + "*" + key;
                } // gcd > 1
            } // a > 1
            result.put(key, value);
        } // while viter
        return result;
    } // downsize

    /** Checks a {@link RelationSet} and determines whether 
     *  there is some refined expression in its map
     *  which leads to a {@link VariableMap#FAILURE failure}.
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
    /*
    public String check(RelationSet rset2) {
        RefiningMap vmap3 = downsize(rset2.getMapping());
        RelationSet rset3 = this.getStartNode().substitute(vmap3);
        String result = rset3.evaluate(vmap3);
        if (debug > 0) {
            solver.getWriter().println("down " + " with " + vmap3.toString() 
                    + " => " + result + " " + rset3.toString());
        }
        if (result.startsWith(VariableMap.FAILURE)) {
            result = "downsized with " + vmap3.toString() + ", " + result;
            rset2.setMapping(vmap3);
        }
        return result;
    } // check
    */

} // DownsizedMapReason
