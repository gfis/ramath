/*  EvenExponentReason: checks -x-1 mapping when x has even exponents only
 *  @(#) $Id: EvenExponentReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-08-25, Georg Fischer
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
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.linear.Vector;
import  java.util.Iterator;
import  java.util.TreeMap;

/** Checks whether there is another {@link RelationSet} on the same nesting level
 *  of the expansion tree which can be mapped to the RelationSet in question 
 *  by a mapping of the form <em>x -> -x-1</em>, and which has the same values since <em>x</em>
 *  occurs with even exponents only.
 *  @author Dr. Georg Fischer
 */
public class EvenExponentReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: EvenExponentReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

     /** No-args Constructor
     */
    public EvenExponentReason() {
    } // no-args Constructor

    /** a copy of the exponentGCDs */
    private Vector expGCDs = null;
        
    /** Joins a map of variable names 
     *  to the greatest common divisors of that variables' exponents
     *  with the variables' exponents in an additional {@link Polynomial}
     *  @param expGCDs map assembled so far, which is augmented
     *  @param poly1 the Polynomial with the additional variable exponents
     */
    public static void joinExponentGCDs(TreeMap<String, Integer> expGCDs, Polynomial poly1) {
        Iterator <String> miter = poly1.keySet().iterator();
        while (miter.hasNext()) { // over all signatures of monomials
            Monomial mono1 = poly1.get(miter.next());
            TreeMap<String, Integer>  mvars = mono1.getMap();
            Iterator <String> viter = mvars.keySet().iterator();
            while (viter.hasNext()) { // over all variables
                String vname = viter.next();
                int    vexp  = mono1.getExponent(vname);
                Integer rexp = expGCDs.get(vname);
                if (rexp == null) {
                    expGCDs.put(vname, new Integer(vexp));
                } else {
                    expGCDs.put(vname, new Integer(Vector.gcd(rexp.intValue(), vexp)));
                }
            } // while viter
        } // while miter    
    } // joinExponentGCDs

    /** Gets a map of variable names in a {@link Polynomial}
     *  to the greatest common divisors of that variables' exponents.
     *  @param poly1 get the map from this Polynomial
     *  @return a map of variable names to the greatest common divisors of their exponents
     */
    public static TreeMap<String, Integer> getExponentGCDs(Polynomial poly1) {
        TreeMap<String, Integer> result = new TreeMap<String, Integer>();
        joinExponentGCDs(result, poly1);
        return result;
    } // getExponentGCDs

    /** Gets the greatest common divisors of variable exponents,
     *  in the natural order of the variable names in {@link RelationSet} <em>rset1</em> 
     *  @param rset1 get the GCDs from this RelationSet
     *  @return a map of variable names to the greatest common divisors of their exponents
     */
    public static Vector getExponentGCDs(RelationSet rset1) {
        TreeMap<String, Integer> expGCDs = new TreeMap<String, Integer>();
        int ipoly = 0;
        while (ipoly < rset1.size()) { // over all relations
            joinExponentGCDs(expGCDs, rset1.get(ipoly));
            ipoly ++;
        } // while ipoly
        Vector result = new Vector(expGCDs.size());
        int ivar = 0;
        Iterator<String> viter = expGCDs.keySet().iterator();
        while (viter.hasNext()) {
            String varName = viter.next();
            result.set(ivar, expGCDs.get(varName).intValue());
            ivar ++;
        } // while viter
        return result;
    } // getExponentGCDs

    /** Whether <em>this</em> reason should be considered for 
     *  the starting {@link RelationSet}.
     *  Only a few reasons overwrite this method and return <em>false</em> for
     *  some types of RelationSets.
     *  This method may be also used to gather and store data which are 
     *  needed for the specific check.
     *  @param solver the solver which uses <em>this</em> reason for iteration control
     *  @return <em>true</em> if the <em>this</em> should be considered (default), 
     *  <em>false</em> otherwise.
     */
    public boolean isConsiderable(BaseSolver solver) {
    	boolean result = false;
        RelationSet rset0 = solver.getRootNode();
        expGCDs = getExponentGCDs(rset0); // remember them for check below
        boolean odd = true; // assume that all GCDs are odd
        int ivect = expGCDs.size() - 1;
        while (odd && ivect >= 0) { // check whether there is at least one even element
            odd = expGCDs.get(ivect) % 2 != 0;
            ivect --;
        } // while
        result = ! odd; // at least one even = not all odd
        if (true || result) {
            solver.getWriter().println("ExponentGCDs=" + expGCDs.toString(","));
        } // if result 
        return result;
    } // isConsiderable
    
    /** Checks a {@link RelationSet} and determines whether 
     *  there is another {@link RelationSet} on the same nesting level
     *  of the expansion tree which differs from the parameter RelationSet only
     *  by a transposition of the variable (names).
     *  @param solver the complete state of the expansion tree
     *  @param rset2 the new {@link RelationSet} to be added to the queue 
     *  @return a message string starting with one of 
     *  <ul>
     *  <li>{@link VariableMap#UNKNOWN} - the RelationSet cannot be decided and must be further expanded</li>
     *  <li>{@link VariableMap#FAILURE} - the RelationSet is not possible</li>
     *  <li>{@link VariableMap#SUCCESS} - there is a solution, but the RelationSet must further be expanded</li>
     *  </ul>
     *  <p>
     *  Typical example (from test/T05.this.tst):
     *  <pre>
expanding queue[3]^2: 8*x + 24*x^2 + 32*x^3 + 16*x^4 + 16*y^4 - 8*z - 16*z^2 meter=[2,1,2] *8
[1+4*x,0+2*y,1+8*z]: unknown 16*x+96*x^2+256*x^3+256*x^4+16*y^4-16*z-64*z^2 -> [5]
[3+4*x,0+2*y,1+8*z]: unknown 80+432*x+864*x^2+768*x^3+256*x^4+16*y^4-16*z-64*z^2 -> [6]
expanding queue[4]^2:  - 8 + 8*x + 24*x^2 + 32*x^3 + 16*x^4 + 16*y^4 - 24*z - 16*z^2 meter=[2,1,2] *8
[1+4*x,0+2*y,7+8*z]: unknown -48+16*x+96*x^2+256*x^3+256*x^4+16*y^4-112*z-64*z^2 -> [7]
[3+4*x,0+2*y,7+8*z]: unknown 32+432*x+864*x^2+768*x^3+256*x^4+16*y^4-112*z-64*z^2 -> [8]
     *  </pre>
     *  The 2nd unknown Polynomial can be mapped to the 1st by {x -> -x-1},
     *  and the 3rd to the 1st by {z -> -z-1}. 
     *  The constants of the unmapped variables must be parallel.
     */
    public String check(BaseSolver solver, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        int level2 = rset2.getNestingLevel();
        int iqueue = solver.size() - 1; // last element
        RefiningMap vmap2 = rset2.getMapping();
        RelationSet rset1 = solver.get(iqueue);
        while (iqueue > 0 && rset1.getNestingLevel() == level2) { // down in the same level
            RefiningMap vmap1 = rset1.getMapping();
            if (debug >= 1) {
                solver.getWriter().println(""
                        + "check " + vmap2.toString() + " against [" + iqueue + "]\n" 
                        + "      " + vmap1.toString());
            }
            String message = vmap1.testNegative_1(vmap2, expGCDs);
            if (message.length() > 0) { // can be mapped by at least one -x-1
                result = "negative-1 [" + iqueue + "] by {" + message + "}";
                iqueue = 1; // break loop
            } // negative-1 found
            iqueue --;
            rset1 = solver.get(iqueue);
        } // while iqueue
        return result;
    } // check

} // EvenExponentReason
