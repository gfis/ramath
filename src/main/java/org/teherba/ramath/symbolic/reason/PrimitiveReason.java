/*  PrimitiveReason: checks whether the RelationSet is the same as the root
 *  @(#) $Id: PrimitiveReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-09-10, Georg Fischer: copied from SameReason
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
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.Coefficient;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.TreeMap;

/** Checks whether the tree expansion root {@link RelationSet} 
 *  is the same as the RelationSet in question 
 *  @author Dr. Georg Fischer
 */
public class PrimitiveReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: PrimitiveReason.java 970 2012-10-25 16:49:32Z gfis $";

     /** No-args Constructor
     */
    public PrimitiveReason() {
    } // no-args Constructor
    
    /** the solver's {@link BaseSolver#modBase} */
    private BigInteger base = null;
    
    /** copy of the ReasonFactory's startNode */
    private RelationSet startNode = null;

    /** Initializes any data structures for <em>this</em> reason.
     *  This method is called by {@link ReasonFactory};
     *  it may be  used to gather and store data which are 
     *  needed for the specific check.
     *  @param solver the {@link BaseSolver solver} which uses <em>this</em> reason for iteration control
     *  @param startNode the root node of the expansion (sub-)tree
     */
    public void initialize(BaseSolver solver, RelationSet startNode) {
        super.initialize(solver, startNode);
        this.startNode = startNode;
        setWalkMode(WALK_NONE); // consider with rset1 = [0] = rset0
        base = BigInteger.valueOf(solver.getModBase());
    } // initialize

    // inherited: BaseReason always isConsiderable()

    /** Whether <em>this</em> reason should be considered for 
     *  the starting {@link RelationSet}.
     *  @return <em>true</em> if the <em>this</em> should be considered (default), 
     *  <em>false</em> otherwise.
     */
    public boolean isConsiderable() {
        boolean result = startNode.isHomogeneous();
        if (result) {
            solver.getWriter().println("isHomogeneous");
        }
        return result;
    } // isConsiderable
    
    /** Determines whether all additive factors in a {@link RefiningMap} are 0, 
     *  and all multiplicative factors are the same and > 1.
     *  @param rmap2 investigat this {@link RefiningMap}
     *  @return true for the initial metered values when invall = true
     */
    public boolean isNonPrimitive(RefiningMap rmap2) {
        boolean result  = false; // assume failure
        String name     = null;
        String value    = null;
        String constant = null;
        if (debug >= 1) {
            solver.getWriter().println("isNonPrimitive? rmap2=" + rmap2.toVector());
        }
        Iterator<String> iter = rmap2.keySet().iterator();
        if (iter.hasNext()) { // at least 1 element
            name  = iter.next();
            value = rmap2.get(name);
            if (value.startsWith("0+")) {
                constant = value.substring(0, value.indexOf("*"));
                result   = true; // now assume success
            }
        } // at least 1 element
        while (result && iter.hasNext()) {
            name   = iter.next();
            value  = rmap2.get(name);
            result = value.startsWith(constant);
        } // while iter
        return result // all are equal and "0+a"
                && ! constant.startsWith("0+1");
    } // isNonPrimitive

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
        if (debug >= 2) {
            getSolver().getWriter().println("rmap2=" + rmap2.niceString());
        } // debug
        if (isNonPrimitive(rmap2)) {
            result = "non-primitive";
        }
        return result;
    } // consider

} // PrimitiveReason
