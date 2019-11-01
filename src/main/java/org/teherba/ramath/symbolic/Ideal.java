/*  Ideal over a Polynomial ring - Groebner basis methods
 *  @(#) $Id: Ideal.java $
 *  2019-05-17: PolynomialParser -> Polynomial
 *  2016-07-09: Signature
 *  2015-11-16, Georg Fischer: extracted from Polynomial.java
 */
/*
 * Copyright 2015 Dr. Georg Fischer <dr.georg.fischer@gmail.com>
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
package org.teherba.ramath.symbolic;
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.util.ExpressionReader;
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.Iterator;
import  java.util.Map;
import  java.util.Set;
import  java.util.TreeMap;

/** A Polynomial is a sum of {@link Monomial}s, ordered by the signatures
 *  (variable names and natural number exponents) of the monomials.
 *  <p>From http://en.wikipedia.org/wiki/Polynomial:
 *  <blockquote>
In mathematics, a Polynomial is a finite length expression constructed from variables
(also known as indeterminates) and constants, using the operations of addition, subtraction, multiplication,
and constant non-negative whole number exponents.
For example, x<sup>2</sup> - 4x + 7 is a Polynomial, but x<sup>2</sup> - 4/x + 7x<sup>3/2</sup> is not ...
 *  </blockquote>
 *
 *  Though a monomial may be zero, there is at most one, non-zero constant monomial (without variables) in any Polynomial.
 *  A single zero Polynomial is represented by an empty map of monomials.
 *  <p>
 *  In this class, methods which have a preposition in their name operate on and
 *  modify <em>this</em> object, and return <em>this</em> object in addition,
 *  while methods without a preposition in the name return a <em>new</em> (cloned), modified object.
 *  @author Dr. Georg Fischer
 */
public class Ideal implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id: Polynomial.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private static int debug = 0;

    /*-------------- class properties -----------------------------*/

    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public Ideal() {
    } // no-args Constructor

    /** Initializes all simple properties of the object
     */
    private void initialize() {
    } // initialize

    /** Deep copy of the Polynomial with all {@link Monomial}s.
     *  @return independant copy of the Polynomial
     */
    public Ideal clone() {
        Ideal result = new Ideal();
        return result;
    } // clone

    /*-------------- bean methods, setters and getters -----------------------------*/

    /*-------------- lightweight methods -----------------------------*/

    /** Returns the number of {@link Monomial}s (summands) in the Polynomial
     *  @return number of monomials &gt;= 1
     */
    public int size() {
        return 0;
    } // size


    //===============================================
    // Gröbner bases, Buchberger's algorithm
    //===============================================
    /** Returns the lead term, that is the "greatest" {@link Monomial}
     *  with respect to the monomial order defined by the TreeMap <em>monomials</em>.
     *  @param poly1 get the lead term from this {@link Polynomial}
     *  @return the last element in the TreeMap <em>monomials</em>
     */
    public static Monomial getLeadTerm(Polynomial poly1) {
        Monomial result = null;
        Signature lastKey = poly1.getMonomials().lastKey();
        if (lastKey != null) {
            result =  poly1.getMonomials().get(lastKey);
        }
        return result;
    } // getLeadTerm

    /** Compute the so-called S-Polynomial S(f,g) of Buchberger's algorithm.
     *  @param f the 1st {@link Polynomial}
     *  @param g the 2nd {@link Polynomial}
     *  @return S(f,g) = lcm(lt(f),lt(g)) / lt(f) * f - lcm(lt(f),lt(g)) / lt(g) * g
     */
    public static Polynomial s_Polynomial(Polynomial f, Polynomial g) {
        Monomial ltf    = getLeadTerm(f);
        Monomial ltg    = getLeadTerm(g);
        Monomial lcmfg  = ltf.lcm(ltg);
        Monomial monof  = lcmfg.divide(ltf);
        Monomial monog  = lcmfg.divide(ltg);
        return (new Polynomial(monof)).multiply(f).subtract((new Polynomial(monog)).multiply(g));
    } // s_Polynomial

    /** Divide a multivariate {@link Polynomial} by a set of other multivariate {@link Polynomial}s,
     *  and return the rest.
     *  @param polyf the Polynomial f to be divided by the Polynomials F.
     *  See http://de.wikipedia.org/wiki/Benutzer:Ap86/Artikelwerkstatt
     *  @param polyF divide by these Polynomials
     *  @param store whether to compute the resulting quotient Polynomials Ai
     *  and store them back into <em>polyF</em>
     *  @return <em>polyr</em>, the rest
     */
    public static Polynomial multiDivide(Polynomial polyf, ArrayList<Polynomial> polyF, boolean store) {
        Polynomial polys = polyf.clone();
        Polynomial polyr = new Polynomial(); // the rest
        Polynomial[] polyA = new Polynomial[polyF.size()];
        int ipoly = 0;
        if (store) {
            ipoly = polyF.size() - 1;
            while (ipoly >= 0) {
                polyA[ipoly] = new Polynomial(); // set Ai = 0
                ipoly --;
            } // while ipoly
        } // if store
        int loopCheck = 512;
        boolean busy = true;
        while (busy && ! polys.isZero() && loopCheck >= 0) {
            Monomial lts = null;
            ipoly = 0;
            boolean found = false;
            while (! found && ipoly < polyF.size()) {
                lts = getLeadTerm(polys);
                Monomial ltf  = getLeadTerm(polyF.get(ipoly));
                Monomial quot = lts.divide(ltf);
                if (debug >= 0 && store) {
                    System.out.println("mdiv s = " + polys.toString()
                            + ": (lts: "        + lts   .toString()
                            + ") / (ltf[" + ipoly + "]: "   + ltf   .toString()
                            + ") = (quot: "  + quot
                            + "), rest "      + polyr .toString()
                            );
                }
                if (quot != null) { // divides
                    found = true;
                    if (! quot.multiply(ltf).equals(lts)) { // assertion
                        System.err.println("??? assertion: multiDivide error: "
                                + quot.multiply(ltf).toString() + " <> "
                                + lts.toString());
                    } // assertion
                    if (store) {
                      polyA[ipoly].addTo(quot);
                    } // if store
                    polys = polys.subtract((new Polynomial(quot)).multiply(polyF.get(ipoly)));
                } // divides
                ipoly ++;
            } // while ipoly
            if (! found) {
                busy = false;
                polyr = polys;
            /*
                polyr.addTo       (lts);
                polys.subtractFrom(lts);
            */
            }
            loopCheck --;
        } // while s != 0
        if (loopCheck < 0) {
            System.err.println("infinite loop in (" + polyf.toString() + ").multiDivide(...)");
        } // loopCheck
        if (store) {
            if (debug >= 0) {
                System.out.print("multipleDivide: " + polyf.toString() + " = ");
                for (ipoly = 0; ipoly < polyA.length; ipoly ++) {
                    if (! polyA[ipoly].isZero()) {
                        System.out.print(" + (" + polyA[ipoly].toString()
                                + ") * (" + polyF.get(ipoly).toString()
                                + ")");
                    } // A[i] != 0
                } // for ipoly
                System.out.println(" + [Rest = " + polyr.toString() + "]");
            }
        } // if store
        return polyr;
    } // multiDivide()

    /** Compute the Gröbner basis of a set of {@link Polynomial}s with Buchberger's algorithm.
     *  See http://en.wikipedia.org/wiki/Gr%C3%B6bner_basis and especially
     *  http://en.wikipedia.org/wiki/Buchberger%27s_algorithm
     *  @param polyF a set of Polynomials F = (f1, f2 ...)
     *  @param store whether to print debugging information
     *  @return another set polygi, the Gröbner base G = (g1, g2 ...)
     */
    public static ArrayList<Polynomial> groebnerBasis(ArrayList<Polynomial> polyF, boolean store) {
        ArrayList<Polynomial> polyG = new ArrayList<Polynomial>(32); // the future result
        int ipF = 0;
        while (ipF < polyF.size()) { // copy F to G
            polyG.add(polyF.get(ipF ++));
        } // while copying

        int sizeG = polyG.size();
        int ipG = 0;
        int jpG = 0;
        int kpG = 0;
        int kpN = 0;
        boolean steady = false;
        while (! steady) {
            ArrayList<Polynomial> polyN = new ArrayList<Polynomial>(32); // the new elements
            sizeG = polyG.size();
            ipG = 0;
            while (ipG < sizeG) { // cross ipG with all lower jpG
                jpG = 0;
                while (jpG < sizeG) {
                    if (ipG != jpG) {
                        Polynomial sijG = Ideal.s_Polynomial(polyG.get(ipG), polyG.get(jpG));
                        Polynomial rest = Ideal.multiDivide(sijG, polyG, store);
                        if (! rest.isZero()) {
                            boolean foundG = false;
                            kpG = 0;
                            while (! foundG && kpG < polyG.size()) {
                                foundG = rest.equals(polyG.get(kpG));
                                kpG ++;
                            } // while kpG
                            boolean foundN = false;
                            kpN = 0;
                            while (! foundN && kpN < polyN.size()) {
                                foundN = rest.equals(polyN.get(kpN));
                                kpN ++;
                            } // while kpN
                            if (! foundG && ! foundN) {
                                if (store && debug >= 0) {
                                    System.out.println("adding [" + (polyG.size() + polyN.size())
                                            + "] = " + rest.toString());
                                }
                                polyN.add(rest);
                                ipG = sizeG; // break both loops
                                jpG = sizeG;
                            }
                        } // rest != 0
                    } // if ipG != jpG
                    jpG ++;
                } // while jpG
                ipG ++;
            } // while ipG
            steady = polyN.size() == 0;
            if (! steady) {
                kpN = 0;
                while (kpN < polyN.size()) {
                    polyG.add(polyN.get(kpN));
                    kpN ++;
                } // while kpN
            } // ! steady
        } // while ! steady
        return polyG;
    } // groebnerBasis

/* Mencinger Fig. 8
IN:
 x^2 + y*z + x
 z^2 + x*y + z
 y^2 + x*z + y
OUT:
x + x^2 + y*z   #5
z + x*y + z^2   #4
y + y^2 + x*z
x - y + x^2 - x*y - y^2 - 2*x*y^2
x^2 - y^2 + x^3 - y^3
x - y + x^2 + x*y - y^2 + 2*x^2*y
x^2 + 3*x^3 + 2*x^4
*/
    //-----------------------------------------------

    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed Polynomials with no arguments, or the
     *  Polynomial resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        Polynomial poly1 = new Polynomial();
        Polynomial poly2 = new Polynomial();
        ArrayList<Polynomial> polys = null;
        VariableMap vmap1 = null;
        Iterator<String> viter = null;
        int ipoly = 0;
        ExpressionReader ereader = new ExpressionReader();
        String[] exprs = null;
        if (false) {
        } else if (args.length == 0) {
        } else {
            String opt = args[iarg ++];
            if (false) {
            } else { // some option
                if (false) {

                } else if (opt.startsWith("-groebner")) {
                    exprs = ereader.getArguments(iarg, args);
                    ipoly = 0;
                    polys = new ArrayList<Polynomial>(16);
                    System.out.println("Input:");
                    while (ipoly < exprs.length) {
                        polys.add(Polynomial.parse(exprs[ipoly]));
                        System.out.println(polys.get(ipoly));
                        ipoly ++;
                    } // while ipoly
                    polys = Ideal.groebnerBasis(polys, true);
                    System.out.println("Groebner Basis:");
                    ipoly = 0;
                    while (ipoly < polys.size()) {
                        System.out.println("GB: " + polys.get(ipoly));
                        ipoly ++;
                    } // while ipoly

                } else if (opt.startsWith("-mdiv")) {
                    exprs = ereader.getArguments(iarg, args);
                    ipoly = 0;
                    poly1 = Polynomial.parse(exprs[ipoly]);
                    ipoly ++;
                    polys = new ArrayList<Polynomial>(16);
                    while (ipoly < exprs.length) {
                        polys.add(Polynomial.parse(exprs[ipoly]));
                        ipoly ++;
                    } // while ipoly
                    System.out.println("multiDivide(" + poly1.toString() + ") = "
                            + Ideal.multiDivide(poly1, polys, true).toString());

                } else if (opt.startsWith("-spoly")) {
                    exprs = ereader.getArguments(iarg, args);
                    poly1 = Polynomial.parse(exprs[0]);
                    poly2 = Polynomial.parse(exprs[1]);
                    System.out.println("S(" + poly1.toString() + ", " + poly2.toString() + ") = "
                            + Ideal.s_Polynomial(poly1, poly2).toString());

                } else {
                    System.err.println("??? invalid option: \"" + opt + "\"");
                }
            } // some option
        } // at least 1 argument
    } // main

} // Ideal
