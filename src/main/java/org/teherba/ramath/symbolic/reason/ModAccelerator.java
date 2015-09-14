/*  ModAccelerator: replace variables by fractions as long as foreign GCD is > 0
 *  @(#) $Id: ModAccelerator.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-09-13: renamed fromPythagorasReason
 *  2015-09-11, Georg Fischer: copied from EvenExponentReason.java
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
import  org.teherba.ramath.symbolic.reason.ReasonFactory;
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.BigIntegerUtil;
import  java.util.Iterator;
import  java.math.BigInteger;

/** For a {@link RelatonSet#isHomogeneous homogeneous} {@link RelationSet},
 *  all {@link Polynomial}s are investigated as follows.
 *  For all {@link Monomial}s except one (the "missing" Monomial) the GCD of
 *  the coefficients is computed.
 *  For all such GCDs > 1, the variable in the missing Monomial must be divisible by that
 *  GCD, and the variable is therefore replaced by a multiple of the GCD. 
 *  The process is repeated until no such variable can be found anymore.
 *  If the missing Monomial was the constant, the RelationSet fails.
 *  @author Dr. Georg Fischer
 */
public class ModAccelerator extends BaseReason {
    public final static String CVSID = "@(#) $Id: ModAccelerator.java 970 2012-10-25 16:49:32Z gfis $";

    /** No-args Constructor
     */
    public ModAccelerator() {
    } // no-args Constructor
    
    /** Local copy of the startNode */
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
        setWalkMode(WALK_NONE);
        if (debug >= 2) {
            solver.getWriter().println("ModAccelerator.initialize, rset0=" + startNode.niceString());
        }
    } // initialize

    /** Determines whether a {@link Polynomial} can be "accelerated".
     *  For all {@link Monomial}s except one (the "missing" Monomial) the GCD of
     *  the coefficients is computed.
     *  For all such GCDs > 1, the variable in the missing Monomial must be divisible by that
     *  GCD, and the variable is therefore replaced by a multiple of the GCD. 
     *  The process is repeated until no such variable can be found anymore.
     *  If the missing Monomial was the constant, the RelationSet fails.
     *  @param poly2 Polynomial to be investigated
     *  @param upperSubst whether to substitute uppercase variables (default: true)
     *  @param rmap2 current {@link RefiningMap} defining the state of the expansion
     *  @return "factor*vname" if a variable could be accelerated, or the empty String if no more
     *  acceleratable variables were found.
     *  <p>
     *  Caution, side effect: rmap2 is modified
     */
    public String getAcceleration(Polynomial poly2, boolean upperSubst,   RefiningMap rmap2) {
        String result = "";
        int plen = poly2.size();
        Iterator<String> miter = poly2.keySet().iterator();
        Monomial  [] monoms = new Monomial  [plen];
        BigInteger[] coeffs = new BigInteger[plen];
        int 
        imono = 0;
        while (miter.hasNext()) { // get 2 arrays
            String sig2 = miter.next();
            Monomial mono2 = poly2.get(sig2);
            monoms[imono] = mono2;
            coeffs[imono] = mono2.getCoefficient().bigIntegerValue().abs();
            if (debug >= 2) {
                solver.getWriter().println("imono=" + imono
                        + ", coeff=" + coeffs[imono].toString()
                        + ", monom=" + monoms[imono].toString());
            }
            imono ++;
        } // while miter
    
        // now work on the arrays: leave 1 element out and compute the GCD of the others
        imono = 0; // index of the the missing monomial
        while (result.length() == 0 && imono < plen) {
            boolean first = true;
            BigInteger gcd_1 = null;
            int kmono = 0; // index of the other monomials
            while (kmono < plen) { // compute the gcd of all except [imono]
                if (kmono != imono) {
                    if (first) { // first monomial
                        first = false;
                        gcd_1 = coeffs[kmono];
                    } else { // following monomials
                        gcd_1 = gcd_1.gcd(coeffs[kmono]);
                    } // following
                } // kmono != imono
                kmono ++;
            } // while kmono
            
            if (gcd_1.compareTo(BigInteger.ONE) > 0 
                    && ! coeffs[imono].mod(gcd_1).equals(BigInteger.ZERO) // coeffs[imono] not divisible by gcd_1
                    //       56             16        
                    ) { // gcd_1 > 1
                if (monoms[imono].size() == 1) { // uniVariate
                    BigInteger[] divmod = gcd_1.divideAndRemainder(gcd_1.gcd(coeffs[imono])); // 16 / 8, rest 0
                    String vname = monoms[imono].firstName();
                    if (vname != null) {
                        String expr  = rmap2.get(vname);
                        int plusPos  = expr.indexOf("+");
                        int timesPos = expr.indexOf("*");
                        expr = expr.substring(0, plusPos + 1) // n+
                                + (new BigInteger(expr.substring(plusPos + 1, timesPos))).multiply(divmod[0]).toString() // * 2
                                + expr.substring(timesPos); // *vname
                        rmap2.put(vname, expr);
                        result = vname + "*" + divmod[0].toString(); // x*m
                        if (debug >= 1) {
                            solver.getWriter().println("accelerated by " + divmod[0].toString()
                                    + ", poly2=" + poly2.niceString() 
                                    + ", gcd_1=" + gcd_1.toString()
                                    + ", vname=" + vname + ", expr=" + expr + ", rmap2=" + rmap2.toVector());
                        }
                    } else { // must be the constant
                        
                    } // constant
                } // if uniVariate
            } // gcd_1 > 1
            imono ++;
        } // while ! found
        return result;
    } // getAcceleration

    /** Determines whether the current node can be "accelerated", that is whether
     *  it contains a {@link Polynomial} which is still {@link #isAcceleratable acceleratable}.
     *  @param rmap2 current {@link RefiningMap} defining the state of the expansion
     *  @param upperSubst whether to substitute uppercase variables (default: true)
     *  @return the empty String if accelartion was not possible, or
     *  a message describing the new mapping.
     *  <p>
     *  Caution, side effect: rmap2 is modified
     */
    public String accelerate(boolean upperSubst,   RefiningMap rmap2) {
        boolean busy = true;
        String result = "";
        int loopCheck = 128;
        while (busy
                && loopCheck >= 0
                ) {
            RelationSet rset2 = startNode.substitute(rmap2, upperSubst);
            int ipoly = rset2.size() - 1;
			boolean found = false;
            while (ipoly >= 0
                    && loopCheck >= 0
                    ) { // find the first acceleratable Polynomial
                Polynomial poly2 = rset2.get(ipoly);
                String message = getAcceleration(poly2, upperSubst,   rmap2);
                if (message.length() > 0) {
                    result += " " + message;
                    found = true;
                    ipoly = 0; // break loop
                }
                ipoly --;
                loopCheck --;
            } //  while ipoly
            busy = found;
            loopCheck --;
        } // while busy
        if (loopCheck <= 0) {
        	System.err.println("??? assertion: accelerate loopCheck");
        }
        return result;
    } // accelerate

    /** Consider the source {@link RelationSet} <em>rset2</em> to be queued.
     *  If the test is successful, a message is printed and returned,
     *  and <em>rset2</em> is not stored in the following; 
     *  otherwise the checking process continues.
     *  @param iqueue index of the target RelationSet <em>rset1</em> (unused)
     *  @param dummy1 the old target {@link RelationSet} already queued (unused)
     *  @param rset2 the new source {@link RelationSet} to be added to the queue 
     *  @return a message String denoting the reasoning details,
     *  or {@link VariableMap#UNKNOWN} if the comparision is not conclusive.
     */
    public String consider(int iqueue, RelationSet dummy1, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        if (debug >= 1) {
            solver.getWriter().println("consider(" + iqueue + ", " 
                    + ", " + rset2.niceString() + ")");
        }
        String message = accelerate(solver.getUpperSubst(), rset2.getMapping());
        if (message.length() > 0) {
            result += " accelerated by" + message;
        } 
        return result;
    } // consider

} // ModAccelerator
