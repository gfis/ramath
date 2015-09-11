/*  PythagorasReason: insert a new subtree with more variables
 *  @(#) $Id: PythagorasReason.java 970 2012-10-25 16:49:32Z gfis $
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

/** Checks whether the source node contains a {@link Polynomial}
 *  of the form <em>x^2 + y^2 = z^2</em> with odd <em>x, z</em> and even <em>y</em>, and adds 
 *  <em>x = m^2 - n^2; y = 2m*n; z = m^2 + n^2</em> to that target node.
 *  Moreoover, a new expansion subtree is started, and a corresponding {@link ReasonFactory} is set up
 *  for that subtree.
 *  For the transformatin c.f. Keith Conrad: Proofs by Descent, p. 4.
 *  @author Dr. Georg Fischer
 */
public class PythagorasReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: PythagorasReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** No-args Constructor
     */
    public PythagorasReason() {
    } // no-args Constructor

    /** Whether <em>this</em> {@link BaseReason reason} might
     *  be considered when the congruence conditions are met.
     *  Set to <em>null</em> if there is no {@link Polynomial}
     *  of the Pythagorean form, or else an array of suitable 
     *  variable names for the additonal Polynomials.
     */
    public String[] newNames = null;
        
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
        setWalkMode(WALK_NONE);
        if (debug >= 2) {
            solver.getWriter().println("PythagorasReason.initialize");
        }
        // newNames = getNewNames(startNode);
    } // initialize

    /** Whether <em>this</em> reason should be considered for 
     *  the starting {@link RelationSet}.
     *  @param solver the solver which uses <em>this</em> reason for iteration control
     *  @return <em>true</em> if the <em>this</em> should be considered (default), 
     *  <em>false</em> otherwise.
     */
    public boolean isConsiderable() {
        boolean result = solver.getModBase() == 2; // newNames != null;
        // solver.getWriter().println("ExponentGCDs=" + expGCDs.toString(","));
        if (debug >= 2) {
            String sep = "=";
            solver.getWriter().print("newNames" + sep);
            if (newNames != null) {
                int iname = 0;
                while (iname < newNames.length) {
                    solver.getWriter().print(sep + newNames[iname]);
                    sep = ",";
                    iname ++;
                } // while iname
                solver.getWriter().println();
            } else {
                solver.getWriter().println("null");
            }
        }
        return result;
    } // isConsiderable
    
    /** Determines whether a {@link Polynomial} has the form
     *  <em>x^2 + y^2 = z^2</em>, maybe with inverted signs or 
     *  higher even exponents.
     *  @param poly1 the {@link Polynomial} to be tested
     *  @param rmap1 the {@link RefiningMap} which determines the even/odd parities of the variables
     *  @return a map of variable names to their (even) exponents 
     *  if the Polynomial has the Pythagorean form, or <em>null</em> otherwise.
     *  Caution, side effect: if the result is non-null and 2 {@link Monomial}s are negative,
     *  <em>this</em> Polynomial is negated.
     */
    private VariableMap testPythagorean(Polynomial poly1, RefiningMap rmap1) {
        VariableMap result = poly1.getVariableMap();
        if (result.size() == 3) { // x,y,z
            String sig1    = null;
            Monomial mono1 = null;
            String vname   = null;
            int    vexp    = 0;
            int signSum    = 0; // sum of signums +++- or +--
            Iterator <String> 
            titer = poly1.getMonomials().keySet().iterator();
            while (result != null && titer.hasNext()) { // over all monomials: determine signSum
                sig1 = titer.next();
                if (sig1 != Monomial.CONSTANT_SIGNATURE) { // not the constant term
                    mono1 = poly1.getMonomials().get(sig1);
                    if (mono1.size() == 1) { // only 1 variable in the term
                        vname = mono1.firstName();
                        signSum += mono1.signum();
                    } else { // not MonoVariate
                        result = null;
                    }
                } else { // = constant - give up for the moment
                    result = null;
                } // constant
            } // while titer
            if (result == null) { // already wrong
            } else if (signSum ==  1) { // okay
            } else if (signSum == -1) { // okay, but negate
                poly1 = poly1.negativeOf(); // invert signs
            } else { // 3 plus or 3 minus or 0 - wrong
                result = null;
            }   
            // now store the (even) exponents together with the signs of the Monomials
            titer = poly1.getMonomials().keySet().iterator();
            while (result != null && titer.hasNext()) { // over all monomials
                sig1  = titer.next();
                mono1 = poly1.getMonomials().get(sig1);
                vname = mono1.firstName();
                vexp  = mono1.getExponent(vname);
                if (vexp % 2 == 0) {
                    result.put(vname, String.valueOf(vexp * mono1.signum()));
                } else {
                    result = null; 
                }
            } // while titer
        } else { // size != 3
            result = null;
        }
        return result;
    } // testPythagorean

    /** For each suitable {@link Polynomial} in {@link RelationSet} <em>rset1</em>,
     *  add the three {@link Polynomial}s which correspond to the 
     *  formulas for generating Pythagorean triples.
     *  @param rset1 expand <em>this</em> {@link RelationSet}
     *  @param rmap1 the {@link RefiningMap} defining the even/odd status 
     *  of the variables in <em>rset1</em>
     *  @return number of additional variable names, if a the expansion was successful,
     *  0 otherwise
     */
    private int expandPythagorean(RelationSet rset1, RefiningMap rmap1) {
        int result = rmap1.size();
        int ipoly = 0;
        while (ipoly < rset1.size()) { // over all Polynomials; size() may increase!
            Polynomial poly1 = rset1.get(ipoly); // maybe just added
            VariableMap emap1 = testPythagorean(poly1, rmap1);
            if (emap1 != null) { // try to expand poly1 
                /*  The maps must correspond as follows:
                + + -   signs in expons (case - - + was negated above)
                1 0 1   x odd,  y even, z odd
                0 1 1   x even, y odd,  z odd
                */
                if (debug >= 1) {
                    solver.getWriter().println("expand poly1=" + poly1.niceString()
                            + ", emap1=" + emap1.toVector());
                }
                String[] pnam = new String[2]; // the 2 names    in the positive Monomials
                int   [] pari = new int   [2]; // the 2 parities of the positive Monomials
                int   [] pexp = new int   [2]; // the exponents  of the positive Monomials
                int ipari = 0; // index for posPari
                Polynomial xpoly = null;
                Polynomial ypoly = null;
                Polynomial zpoly = null;
                String[] ntemp = rmap1.getNewNames(2); // m, n
                String m = ntemp[0];
                String n = ntemp[1];
                Iterator<String> viter = emap1.keySet().iterator();
                boolean possible = true; // assume success
                while (possible && viter.hasNext()) { // iterate over 3 variables x,y,z from x^(2n) + y^(2m) - z^(2k)
                    String vname        = viter.next();
                    int eexpr           = Integer.parseInt(emap1.get(vname)) / 2; // x^2 -> x, y^4 -> y^2 ...
                    BigInteger[] btemp  = RefiningMap.extractRefinedFactors(rmap1.get(vname)); // a+b*x => [a,b]
                    int newPari         = btemp[0].mod(BigIntegerUtil.TWO).intValue(); // a mod 2 
                    if (btemp[1].equals(BigInteger.ONE)) { // b= 1: 0+1*x
                        newPari = -1; // undefined
                    }
                    if (eexpr < 0) { // negative -> right side z -> must be odd or undefined
                        possible = newPari % 2 == 1 || newPari < 0;
                        if (possible) {         // z - odd
                            zpoly = new Polynomial(vname + "^" + Math.abs(eexpr) + "=" 
                                    + m + "^2+" + n + "^2"); // z = m^2 + n^2
                        }
                    } else { // positive x or y
                        pnam[ipari] = vname;
                        pari[ipari] = newPari; 
                        pexp[ipari] = eexpr;
                        ipari ++;
                    } // positive
                } // while viter over x,y,z
                
                /*  For positive Monomials for x and y, the following 9 combinations of the 3 parity values may occur:
                 x  y  conclusion
                +1 +0  x odd
                +1 -1  x odd
                -1 +0  x odd
                +0 +1  y odd
                -1 +1  y odd
                +0 -1  y odd
                +0 +0  not possible
                +1 +1  not possible
                -1 -1  undecidable
                */
                if (pari[0] == pari[1]) { // both the same
                    possible = false;
                } else { // both are different - remove the undefined ones
                    if (pari[0] == -1) { // the other is 0 or 1
                        pari[0] = 1 - pari[1]; // make them opposite
                        rmap1.put(pnam[0], pari[0] + "+2*" + pnam[0]);
                    }
                    if (pari[1] == -1) { // the other is 0 or 1
                        pari[1] = 1 - pari[0]; // make them opposite
                        rmap1.put(pnam[1], pari[1] + "+2*" + pnam[1]);
                    }
                } // different
                if (! possible) { 
                    // ignore
                } else if (pari[0] == 1) { // x odd, y even
                            xpoly = new Polynomial(pnam[0] + "^" + Math.abs(pexp[0]) + "=" 
                                    + m + "^2-" + n + "^2"); // x = m^2 - n^2
                            ypoly = new Polynomial(pnam[1] + "^" + Math.abs(pexp[1]) + "=" 
                                    + m + "*2*" + n       ); // y = m*2*n
                } else /* if (pari[1] == 1) */ { // y odd, x even
                            xpoly = new Polynomial(pnam[0] + "^" + Math.abs(pexp[0]) + "=" 
                                    + m + "*2*" + n       ); // y = m*2*n
                            ypoly = new Polynomial(pnam[1] + "^" + Math.abs(pexp[1]) + "=" 
                                    + m + "^2-" + n + "^2"); // x = m^2 - n^2
                }

                if (possible) { // all fits - add additional Polynomials
                    rset1.insert(xpoly);
                    rset1.insert(ypoly);
                    rset1.insert(zpoly);
                    rmap1.put(m, "0+1*" + m);
                    rmap1.put(n, "0+1*" + n);
                    // all fits
                } // all fits
            } // try to expand poly1
            ipoly ++;
        } // while ipoly
        result = rmap1.size() - result; // number of additional variables
        return result;
    } // expandPythagorean

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
        RefiningMap rmap2 = rset2.getMapping();
        if (debug >= 1) {
            solver.getWriter().println("consider(" + iqueue + ", " 
                    + ", " + rset2.niceString() + "), rmap2=" + rmap2.toString());
        }
        int additional = expandPythagorean(rset2, rmap2);
        if (additional > 0) { // contained one or more Pythagorean Polynomials
            result = "new subtree [" + iqueue + "], " + additional + " new variables: " 
                + rset2.niceString() +  " " + rmap2.toVector();
        } // contained Pythagorean Polynomials
        return result;
    } // consider

} // PythagorasReason
