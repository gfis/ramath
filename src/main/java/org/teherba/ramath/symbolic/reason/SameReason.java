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
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.Coefficient;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.TreeMap;

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
        setWalkMode(WALK_ROOT); // compare with rset1 = [0] = rset0
        base = BigInteger.valueOf(solver.getModBase());
    } // initialize

    // inherited: BaseReason always isConsiderable()

    /** the solver's {@link BaseSolver#modBase} */
    private BigInteger base = null;
    
    /** Joins a map of variable names 
     *  to the maximum power (exponent) 
     *  of the solver's {@link BaseSolver#modBase} which could be "slipped into" the variable
     *  @param maxBasePowers map assembled so far, which is augmented
     *  @param poly1 the Polynomial with the additional powers
     */
    private void joinMaxBasePowers(TreeMap<String, Integer> maxBasePowers, Polynomial poly1) {
        Iterator <String> miter = poly1.keySet().iterator();
        Integer ZERO = new Integer(1);
        while (miter.hasNext()) { // over all signatures of monomials
            Monomial mono1 = poly1.get(miter.next());
            BigInteger coef1 = mono1.getCoefficient().bigIntegerValue(); // assume that all coefficients are integral
            TreeMap<String, Integer>  mvars = mono1.getMap();
            Iterator <String> viter = mvars.keySet().iterator();
            while (viter.hasNext()) { // over all variables
                String vname = viter.next();
                int vexp = mono1.getExponent(vname);
                BigInteger slipFactor = base.pow(vexp); // this may "slip into" the variable's power
                int uexp = 0; // old value of vexp, this did still "slip into"
                while (coef1.mod(slipFactor).equals(BigInteger.ZERO)) { // base fits, maybe higher powers, too?
                    uexp = vexp;
                    vexp *= 2;
                    slipFactor = slipFactor.multiply(slipFactor);
                } // while vexp
                        
                Integer oldValue = maxBasePowers.get(vname);
                if (oldValue == null) { // did not occur so far
                    maxBasePowers.put(vname, new Integer(uexp));
                } else { // previous value
                    int old = oldValue.intValue();
                    maxBasePowers.put(vname, new Integer(uexp < old ? uexp : old)); // the minimum
                }
            } // while viter
        } // while miter    
    } // joinMaxBasePowers

    /** Gets a map of variable names in {@link RelationSet} <em>rset1</em> 
     *  to the maximum power (exponent) 
     *  of the solver's {@link BaseSolver#modBase} which could be "slipped into" the variable
     *  @param rset1 get the maximum powers from this RelationSet
     *  @return a map of variable names to to the maximum power (exponent) 
     */
    private TreeMap<String, Integer> getMaxBasePowers(RelationSet rset1) {
        TreeMap<String, Integer> result = new TreeMap<String, Integer>();
        int ipoly = 0;
        while (ipoly < rset1.size()) { // over all Polynomials
            joinMaxBasePowers(result, rset1.get(ipoly));
            ipoly ++;
        } // while ipoly
        return result;
    } // getMaxBasePowers 
    
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

} // SameReason
