/*  GrowingReason: checks whether the RelationSet was growing from a parent
 *  @(#) $Id: GrowingReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-09-05: initialize
 *  2015-07-23: no longer in use
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
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.Coefficient;
import  java.util.Iterator;

/** Checks whether there is a parent of the {@link RelationSet} in question
 *  with the same dispenser values, such that the constants of the
 *  monomial in the relation set result from the corresponding constants
 *  in the parent by multiplicative factors &gt;= 1.
 *  @author Dr. Georg Fischer
 */
public class GrowingReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: GrowingReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** No-args Constructor
     */
    public GrowingReason() {
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

    /** Determines whether a source {@link Polynomial} <em>poly1</em> can be transformed into <em>poly2</em>
     *  by multiplying the {@link Coefficient}s of the {@link Monomial}s in <em>poly2</em> by
     *  some factors &lt;&gt; 0.
     *  @param poly1 source Polynomial
     *  @param poly2 target Polynomial
     *  @return a list of numbers separated by "," if such factors exist, null otherwise
     */
    private static String getGrowingFactors(Polynomial poly1, Polynomial poly2) {
        String result = null;
        int psize1 =  poly1.size();
        if (psize1 == poly2.size()) {
            Iterator <String> iter1 = poly1.keySet().iterator();
            Iterator <String> iter2 = poly2.keySet().iterator();
            boolean busy = true;
            while (busy && iter1.hasNext()) {
                String sig1 = iter1.next();
                String sig2 = iter2.next();
                if (sig1.equals(sig2)) {
                    Monomial mono1 = poly1.get(sig1);
                    Monomial mono2 = poly2.get(sig2);
                    Monomial factor  = mono1.divide(mono2);
                    if (factor != null && factor.isConstant()
                            && factor.getCoefficient().compareTo(Coefficient.ZERO) > 0
                            ) { // valid factor
                        result = (result != null ? result + "," : "") + factor.toString()
                                .replaceAll(" ", "").replaceAll("\\A\\+", "");
                        // no factor
                    } else {
                        busy = false;
                        result = null;
                    }
                    // sig1 == sig2
                } else {
                    busy = false;
                    result = null;
                }
            } // while iter1
            // same size
        } else { // different size
            result = null;
        }
        return result;
    } // getGrowingFactors

    /** Determines whether a source {@link RelationSet} can be transformed into <em>rset2</em>
     *  by multiplying the constants of the monomials in <em>rset2</em> by
     *  some factors &gt;= 1.
     *  @param rset1 source RelationSet
     *  @param rset2 target RelationSet
     *  @return a list of numbers separated by "," if such factors exist, null otherwise
     */
    private static String getGrowingFactors(RelationSet rset2, RelationSet rset1) {
        String result  = null;
        String factors = ""; // assume success
        int rsize1 =  rset1.size();
        if (rsize1 == rset2.size()) {
            int ipoly = 0;
            while (factors != null && ipoly < rsize1) {
                factors = getGrowingFactors(rset1.get(ipoly), rset2.get(ipoly));
                if (factors != null) {
                    result = result == null ? factors : result + factors;
                }
                ipoly ++;
            } // while ipoly
        } // same size
        return result;
    } // getGrowingFactors
    
    // default: isConsiderable() = true
    
    /** Checks a {@link RelationSet} and determines whether 
     *  there is a parent node 
     *  <ol>
     *  <li>which has the same dispenser values, and</li>
     *  <lI>whose monomial coefficients lead to the 
     *  coefficients in the {@link RelationSet} by multiplicative factors &gt;= 1.</li>
     *  </ol>
     *  @param rset2 the new {@link RelationSet} to be added to the queue 
     *  @return a message string starting with one of 
     *  <ul>
     *  <li>{@link VariableMap#UNKNOWN} - the RelationSet cannot be decided and must be further expanded</li>
     *  <li>{@link VariableMap#FAILURE} - the RelationSet is not possible</li>
     *  <li>{@link VariableMap#SUCCESS} - there is a solution, but the RelationSet must further be expanded</li>
     *  </ul>
     */
    public String check(RelationSet rset2) {
        boolean all = false; // whether to examine all queue elements, or the parents only
        String result = VariableMap.UNKNOWN;
        int iparent = all ? solver.size() - 1 : rset2.getParentIndex();
        boolean busy = true;
        while (busy && iparent >= 0) {
            RelationSet rset1 = solver.get(iparent);
            if (true) { // condition (1)
                String factors = getGrowingFactors(rset2, rset1);
                if (factors != null) {
                    // busy = false;
                    result += ", grown from [" + iparent + "]*" + factors + " " + rset2.niceString();
                    if (solver.debug >= 2) {
                        result += "\n\t\tfrom " + rset1.niceString();
                    }
                    // condition (2)
                } else {
                }    
            } // condition (1)
            iparent = all ? iparent - 1 : rset1.getParentIndex();
        } // while iparent
        return result.replaceAll("\\A" + VariableMap.UNKNOWN + "\\, grown", "grown");
    } // check

} // GrowingReason
