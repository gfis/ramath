/*  EvenExponentReason: checks -x-1 mapping when x has even exponents only
 *  @(#) $Id: EvenExponentReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2017-05-28: javadoc 1.8
 *  2016-07-09: Signature
 *  2015-09-05: initialize
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
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.Signature;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;
import  java.util.Iterator;
import  java.util.TreeMap;

/** Checks whether there is another {@link RelationSet} on the same nesting level
 *  of the expansion tree which can be mapped to the RelationSet in question
 *  by a mapping of the form <em>x -&gt; -x-1</em>, and which has the same values since <em>x</em>
 *  occurs with even exponents only.
 *  @author Dr. Georg Fischer
 */
public class EvenExponentReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: EvenExponentReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** No-args Constructor
     */
    public EvenExponentReason() {
    } // no-args Constructor

    /** Local storage of the exponentGCDs.
     *  This reason {@link #isConsiderable} only
     *  if at least one of the elements of this {@link Vector} is even.
     */
    public Vector expGCDs = null;

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
        expGCDs = this.getExponentGCDs(startNode); // remember them for check below
        if (debug >= 2) {
            solver.getWriter().println("initialize.getExponentGCDs()=" + expGCDs.toString(","));
        }
    } // initialize

    /** Whether <em>this</em> reason should be considered for
     *  the starting {@link RelationSet}.
     *  @return <em>true</em> if the <em>this</em> should be considered (default),
     *  <em>false</em> otherwise.
     */
    public boolean isConsiderable() {
        boolean result = false;
        boolean odd = true; // assume that all GCDs are odd
        int ivect = expGCDs.size() - 1;
        if (debug >= 2) {
            solver.getWriter().println("isConsiderable, ivect=" + ivect);
        }
        while (odd && ivect >= 0) { // check whether there is at least one even element
            odd = expGCDs.get(ivect) % 2 != 0;
            ivect --;
        } // while
        result = ! odd; // at least one even = not all odd
        // solver.getWriter().println("ExponentGCDs=" + expGCDs.toString(","));
        if (debug >= 2) {
            solver.getWriter().println("isConsiderable, ExponentGCDs()=" + expGCDs.toString(",") + ", result=" + result);
        }
        return result;
    } // isConsiderable

    /** Joins a map of variable names
     *  to the greatest common divisors of that variables' exponents
     *  with the variables' exponents in an additional {@link Polynomial}
     *  @param expGCDs map assembled so far, which is augmented
     *  @param poly1 the Polynomial with the additional variable exponents
     */
    private static void joinExponentGCDs(TreeMap<String, Integer> expGCDs, Polynomial poly1) {
        Iterator <Signature> miter = poly1.keySet().iterator();
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

    /** Gets the greatest common divisors of variable exponents,
     *  in the natural order of the variable names in {@link RelationSet} <em>rset1</em>
     *  @param rset1 get the GCDs from this RelationSet
     *  @return a map of variable names to the greatest common divisors of their exponents
     */
    private static Vector getExponentGCDs(RelationSet rset1) {
        TreeMap<String, Integer> expGCDs = new TreeMap<String, Integer>();
        int ipoly = 0;
        while (ipoly < rset1.size()) { // over all Polynomials
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

    /** Determines whether the values (Polynomials) of {@link VariableMap} <em>vmap1</em>
     *  could be mapped those of a second, parallel VariableMap
     *  by transforming one or more variable <em>x</em> to <em>-x-1</em> while
     *  maintaining the values for all other variables the same.
     *  @param vmap1 the 1st VariableMap to be compared
     *  @param vmap2 the 2nd VariableMap to be compared
     *  @param expGCDs the greatest common divisors of the variables' exponents in natural order
     *  @return a mapping of the involved variables if such a mapping exists,
     *  for example "x=&gt;-x-1,y=&gt;-y-1"
     *  or the empty String otherwise
     */
    private static String testNegative_1(VariableMap vmap1, VariableMap vmap2, Vector expGCDs) {
        StringBuffer result = new StringBuffer(64); // assume failure
        Iterator<String> viter1 = vmap1.keySet().iterator();
        Iterator<String> viter2 = vmap2.keySet().iterator();
        int ivar = 0;
        boolean busy = true;
        while (busy && viter1.hasNext()) {
            String name1 = viter1.next();
            String name2 = viter2.next();
            if (! name1.equals(name2)) {
                // System.err.println("??? assertion: VariableMaps not parallel in isNegative_1");
                busy = false;
            } else { // names in parallel
                String expr1 = vmap1.get(name1);
                String expr2 = vmap2.get(name2);
                if (expr1.equals(expr2)) { // same expressions
                    // ignore
                } else { // expressions differ
                    if (debug >= 2) {
                        System.out.println("expressions differ: " + expr1 + " != " + expr2);
                    }
                    if (expGCDs.get(ivar) % 2 == 0) { // only even exponents for this variable
                        int sign = RefiningMap.compareRefinedFactors(expr1, expr2);
                        if (sign < 0) { // mappable by -x-1
                            result.append(',');
                            result.append(name1);
                            result.append("=>-");
                            result.append(name1);
                            result.append("-1");
                        }
                    } else { // some odd exponents for this variable
                        busy = false;
                        result.setLength(0); // test failed
                    }
                } // expression differ
            } // names in parallel
            ivar ++;
        } // while viter
        if (result.length() > 0) {
            result.deleteCharAt(0);
        }
        return result.toString();
    } // testNegative_1

    /** Consider the source {@link RelationSet} <em>rset2</em> to be queued together with
     *  another {@link RelationSet} <em>rset1</em> already queued.
     *  If the test is successful, a message is printed and returned,
     *  and <em>rset2</em> is not stored in the following;
     *  otherwise the checking process continues.
     *  Typical example (from test/T05.this.tst):
     *  <pre>
expanding queue[3]^2,meter=[2,1,2]*8: x+3x^2+4x^3+2x^4+2y^4-z-2z^2
[1+4x,0+2y,1+8z]:   unknown -&gt; [4] x+6x^2+16x^3+16x^4+y^4-z-4z^2
[3+4x,0+2y,1+8z]:   negative-1 [4] by {x=&gt;-x-1}
     *  </pre>
     *  The 2nd unknown Polynomial can be mapped to the 1st by {x -&gt; -x-1}.
     *  The constants of the unmapped variables must be parallel.
     *  @param iqueue index of the target RelationSet <em>rset1</em>
     *  @param rset1 the old target {@link RelationSet} already queued
     *  @param rset2 the new source {@link RelationSet} to be added to the queue
     *  @return a message String denoting the reasoning details,
     *  or {@link VariableMap#UNKNOWN} if the comparision is not conclusive.
     */
    public String consider(int iqueue, RelationSet rset1, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        VariableMap vmap1 = rset1.getMapping();
        VariableMap vmap2 = rset2.getMapping();
        if (debug >= 2) {
            solver.getWriter().println("consider(" + iqueue + ", "
                    + vmap1.toString() + ", " + vmap2.toString() + ")");
        }
        String message = testNegative_1(vmap1, vmap2, expGCDs);
        if (message.length() > 0) { // can be mapped by at least one -x-1
            result = "negative-1 [" + iqueue + "] by {" + message + "}";
        } // negative-1 found
        return result;
    } // consider

} // EvenExponentReason
