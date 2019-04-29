/*  PolyFraction: a fraction of two polynomials
 *  @(#) $Id: PolyFraction.java 970 2012-10-25 16:49:32Z  $
 *  2019-04-29: Georg Fischer: copied from RelationSet.java
 */
/*
 * Copyright 2019 Dr. Georg Fischer
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
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.Coefficient;
import  org.teherba.ramath.util.BigIntegerUtil;
import  org.teherba.ramath.util.ExpressionReader;
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.ArrayList;
import  java.util.TreeMap;

/** A PolyFraction is a pair of univariate {@link Polynomial}s which represent 
 *  the numerator and the denominator of the fraction.
 *  @author Dr. Georg Fischer
 */
public class PolyFraction
        extends Polynomial
        implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id: PolyFraction.java 970 2012-10-25 16:49:32Z  $";

    /** Debugging switch */
    public int debug = 0;

    //==================
    // Construction
    //==================

    /** The array for the two {@link Polynomial}s.
     *  Elements are indexed by 0 (numerator) and 1 (denominator).
     *  In the denominator, the {@link Monomial} with the lowest
     *  degree (usually the constant) is normalized to have a positive sign.
     */
    private Polynomial[] polynomials;

    /** No-args constructor for an empty PolyFraction.
     */
    public PolyFraction() {
        polynomials     = new Polynomial[2];
    } // Constructor()

    /** Construct from a pair of {@link Polynomial}s.
     *  @param num polynomial for the numerator
     *  @param den polynomial for the denominator
     */
    public PolyFraction(Polynomial num, Polynomial den) {
        this();
        polynomials[0] = num;
        polynomials[1] = den;
    } // Constructor(Polynomial, Polynomial)

    /** Construct from an array of Strings which represent {@link Polynomial}s.
     *  @param exprs array of String expressions
     */
    public PolyFraction(String[] exprs) {
        this();
        int ipoly = 0;
        while (ipoly < 2) {
            polynomials[ipoly] = new Polynomial(exprs[ipoly]);
            ipoly ++;
        } // while ipoly
    } // Constructor(String[])

    /** Construct from an array of {@link Polynomial}s.
     *  @param polys array of Polynomials
     */
    public PolyFraction(Polynomial[] polys) {
        this();
        int ipoly = 0;
        while (ipoly < 2) {
            polynomials[ipoly] = polys[ipoly];
            ipoly ++;
        } // while ipoly
    } // Constructor(Polynomial[])

    /** Deep copy of this PolyFraction with all {@link Polynomial}s.
     *  @return independant copy of the PolyFraction
     */
    public PolyFraction clone() {
        return new PolyFraction(this.get(0).clone(), this.get(1).clone());
    } // clone

    //===================================
    // Bean methods, setters and getters
    //===================================

    /** Number of {@link Polynomial}s in the relation set
     *  @return size of the ArrayList
     */
    public int size() {
        return polynomials.length;
    } // size

    /** Gets one of the {@link Polynomial}s in the fraction
     *  @param index sequential index of the Polynomial: 0 or 1
     *  @return a Polynomial
     */
    public Polynomial get(int index) {
        return polynomials[index];
    } // get

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a String representation of <em>this</em> {@link PolyFraction}
     *  @param mode 0 = normal, 1 = full (for substitution), 2 = nice / human legible,
     *  3 = with prime factors
     *  @return "(17*a0^2*a1^1 + a2^2*a3^3) / ( - 4*b4^1 = 0)", for example for mode = 1
     */
    public String toString(int mode) {
        StringBuffer buffer = new StringBuffer(2048);
        buffer.append("(");
        buffer.append(this.get(0).toString(mode));
        buffer.append(") / (");
        buffer.append(this.get(1).toString(mode));
        buffer.append(")");
        return buffer.toString();
    } // toString(int)

    /** Returns a string representation of the {@link Polynomial}s in <em>this</em> {@link PolyFraction},
     *  with leading signs, in compressed form.
     *  @return "17*a0^2*a1 + a2^2*a3^3; - 4*b4", for example
     */
    public String toString() { 
        return toString(0);
    } // toString()

    //----------------
    /** Deflates all member {@link Polynomial}s in place
     *  @return <em>this</em> deflated PolyFraction
     */
    public PolyFraction deflateIt() {
        int ipoly = this.polynomials.length - 1;
        while (ipoly >= 0) {
            this.get(ipoly).deflateIt();
            ipoly --;
        } // while ipoly
        return this;
    } // deflateIt

    /** Deflates all member {@link Polynomial}s
     *  @return a new deflated PolyFraction
     */
    public PolyFraction deflate() {
        PolyFraction result = this.clone();
        return result.deflateIt();
    } // deflate

    /** Normalizes all member {@link Polynomial}s in place
     *  @return <em>this</em> normalized PolyFraction
     */
    public PolyFraction normalizeIt() {
        int ipoly = this.polynomials.length - 1;
        while (ipoly >= 0) {
            this.get(ipoly).normalizeIt();
            ipoly --;
        } // while ipoly
        return this;
    } // normalizeIt

    /** Normalizes all member {@link Polynomial}s
     *  @return a new normalized PolyFraction
     */
    public PolyFraction normalize() {
        PolyFraction result = this.clone();
        return result.normalizeIt();
    } // normalize

    /** Divides all {@link Polynomial}s of <em>this</em> {@link PolyFraction}
     *  by a {@link BigInteger}.
     *  @param number divide by this BigInteger
     *  @return reference to <em>this</em> PolyFraction which was modified
     */
    protected PolyFraction divideBy(BigInteger number) {
        int ipoly = this.polynomials.length - 1;
        while (ipoly >= 0) {
            this.get(ipoly).divideBy(number);
            ipoly --;
        } // while ipoly
        return this;
    } // divideBy(number)

    /** Multiplies all {@link Polynomial}s of <em>this</em> {@link PolyFraction}
     *  with a {@link BigInteger}.
     *  This is the inverse operation to {@link #deflateIt}.
     *  @param number multiply with this BigInteger
     *  @return reference to <em>this</em> PolyFraction which was modified
     */
    public PolyFraction multiplyBy(BigInteger number) {
        int ipoly = this.polynomials.length - 1;
        while (ipoly >= 0) {
            this.get(ipoly).multiplyBy(number);
            ipoly --;
        } // while ipoly
        return this;
    } // multiplyBy(number)

    /** Returns a {@link PolyFraction} constructed from a String representation, possibly with an
     *  error message inserted at the point where parsing could not proceed.
     *  @param input the input String, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return a reference to a new {@link PolyFraction}
     */
    public static PolyFraction parse(String input) {
        return new PolyFraction(input.split("\\/"));
    } // parse

    /** Determines whether two {@link PolyFraction}s are equivalent, that is whether
     *  there is a permutation of the constituting {@link Polynomial}s
     *  which {@link Polynomial#isEqualTo are equal}.
     *  @param pfrac2 second comparision operand
     *  @return whether sets of Polynomials are the same
     */
    public boolean isEqualTo(PolyFraction pfrac2) {
		return false;
    } // isEqualTo


    /* ------------ Solver evaluation --------------- */

    /** Evaluates a {@link PolyFraction} without any proof history by evaluating
     *  all its member {@link Polynomial}s, and returning the cummulative results, whether
     *  <ul>
     *  <li>all its (in)equalities hold / are true         =&gt; {@link VariableMap#SUCCESS}</li>
     *  <li>there is at least one (in)equality which fails =&gt; {@link VariableMap#FAILURE}</li>
     *  <li>the outcome cannot be decided                  =&gt; {@link VariableMap#UNKNOWN}</li>
     *  </ul>
     *  @param pfrac1 evaluate this PolyFraction
     *  @param varMap the map of the variables how they were recently substituted
     *  in <em>this</em> Polynomial, or <em>null</em>
     *  @return SUCCESS, FAILURE or UNKNOWN
     */

    /*--------------- Test driver --------------------*/

    /** Test method, shows some fixed PolyFractions with no arguments, or the
     *  PolyFraction resulting from the input formula.
     *  @param args command line arguments
     *  When called without arguments, the output is:
     *  <pre>
a^2 + b^2 - c^2 = 0, - a + b &gt; 0 ;  - b + c &gt; 0
evaluate: unknown
9*a_2^2 + 16*b_2^2 - 25*c_2^2 = 0 ;  - 3*a_2 + 4*b_2 &gt; 0 ;  - 4*b_2 + 5*c_2 &gt; 0
     *  </pre>
     */
    public static void main(String[] args) {
        int iarg = 0;
        PolyFraction pfrac1 = new PolyFraction();
        PolyFraction pfrac2 = new PolyFraction();
        ExpressionReader ereader = new ExpressionReader();
        String[] exprs = null;
        int debug = 0;

        if (false) {
        } else if (args.length == 0) {
            pfrac1 = PolyFraction.parse("a²+b^2=c^2, a<b, b<c");
            System.out.println(pfrac1.toString());

        } else if (args.length == 1 && ! args[0].startsWith("-")) {
            pfrac1 = PolyFraction.parse(args[iarg ++]);
            System.out.println(pfrac1.toString(1));
            System.out.println("evaluate: " + pfrac1.evaluate(null));

        } else if (args.length >= 2) {
            while (iarg < args.length) { // consume all arguments
                String opt = args[iarg ++];
                if (false) {

                } else if (opt.equals    ("-d")     ) {
                    debug = 1;
                    try {
                        debug = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    // -d

                } else if (opt.equals    ("-equals")     ) {
                    pfrac1 = PolyFraction.parse(args[iarg ++]);
                    pfrac2 = PolyFraction.parse(args[iarg ++]);
                    System.out.println(pfrac1.toString());
                    System.out.println(pfrac2.toString());
                    System.out.println("equals="       + pfrac1.equals      (pfrac2)
                            +        ", isEqualTo="    + pfrac1.isEqualTo   (pfrac2)
                            );
                    // -equals

                } else if (opt.equals    ("-evaluate")   ) {
                    System.out.println(pfrac1.toString(1));
                    System.out.println("evaluate: " + pfrac1.evaluate(null));
                    // -evaluate

                } else if (opt.equals    ("-f")     ) {
                    String fileName = args[iarg ++];
                    pfrac1 = PolyFraction.parse((new ExpressionReader()).read(fileName));
                    // -f

                } else {
                    System.err.println("??? invalid option: \"" + opt + "\"");
                }
            } // while args
        } // with >= 2 args
    } // main

} // PolyFraction
