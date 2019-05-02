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
import  org.teherba.ramath.linear.BigVector;
import  org.teherba.ramath.util.BigIntegerUtil;
import  org.teherba.ramath.util.ExpressionReader;
import  java.io.BufferedReader;
import  java.io.FileInputStream;
import  java.io.InputStreamReader;
import  java.io.Serializable;
import  java.nio.channels.Channels;
import  java.nio.channels.ReadableByteChannel;
import  java.math.BigInteger;
import  java.util.Iterator;
import  org.apache.log4j.Logger;

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
    public static int debug = 0;

    /** log4j logger (category) */
    private Logger log;

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
        log = Logger.getLogger(PolyFraction.class.getName());
        polynomials     = new Polynomial[2];
    } // Constructor()

    /** Construct from a pair of {@link Polynomial}s.
     *  @param num polynomial for the numerator
     *  @param den polynomial for the denominator
     */
    public PolyFraction(Polynomial num, Polynomial den) {
        this(new Polynomial[] { num, den });
    } // Constructor(Polynomial, Polynomial)

    /** Construct from a pair of Strings.
     *  @param num polynomial for the numerator
     *  @param den polynomial for the denominator
     */
    public PolyFraction(String num, String den) {
        this(new String[] { num, den });
    } // Constructor(String, String)

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
     *  @return "(2 - x) / (1 - x - x^2)", for example
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

    /** Returns a String representation of the coefficients
     *  of the numerator and the denominator.
     *  @param mode 0 = normal, 1 = full (for substitution), 2 = nice / human legible,
     *  3 = with prime factors
     *  @return "[2, -1],[1, -1, -1]" for example
     */
    public String toVectors() {
        BigVector num = polynomials[0].getBigVector();
        BigVector den = polynomials[1].getBigVector();
        return num.toString() + "," + den.toString();
    } // toVectors(int)

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

    /** Expands the fraction into a formal power series and
     *  returns the coefficients of the powers of the variable.
     *  @param numTerms return so many coefficients
     *  @return a {@link BigVector} of numbers
     */
    public BigVector getSeriesCoefficients(int numTerms) {
        BigVector num    = polynomials[0].getBigVector();
        BigVector den    = polynomials[1].getBigVector();
        BigVector result = new BigVector(numTerms);
        num.setDebug(debug);
        int iterm = 0;
        while (iterm < numTerms) {
            result.set(iterm, num.divisionStep(den));
            iterm ++;
        } // while iterm
        return result;
    } // getSeriesCoefficients

    /** Returns a {@link PolyFraction} constructed from a String representation, possibly with an
     *  error message inserted at the point where parsing could not proceed.
     *  @param input the input String, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return a reference to a new {@link PolyFraction}
     */
    public static PolyFraction parse_99(String input) {
        return new PolyFraction(input.split("\\/"));
    } // parse

    /** Determines whether two {@link PolyFraction}s are equivalent, that is whether
     *  there is a permutation of the constituting {@link Polynomial}s
     *  which {@link Polynomial#isEqualTo are equal}.
     *  @param pfrac2 second comparision operand
     *  @return whether sets of Polynomials are the same
     */
    public boolean isEqualTo_99(PolyFraction pfrac2) {
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
     *  PolyFraction resulting from the input parameters.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        PolyFraction pfrac1 = new PolyFraction();
        int numTerms = 16;

        if (false) {
        } else if (args.length == 0) {
            pfrac1 = new PolyFraction("(2-x)", "1-x-x^2"); // Lucas A000032: 2,1,3,4,7,11, ...
            System.out.println(pfrac1.toString());
            System.out.println(pfrac1.toVectors());

        } else if (args.length == 1 && ! args[0].startsWith("-")) {
            pfrac1 = new PolyFraction(args[iarg], args[iarg + 1]); iarg += 2;
            System.out.println(pfrac1.toString());
            System.out.println("evaluate: " + pfrac1.evaluate(null));

        } else if (args.length >= 2) {
            while (iarg < args.length) { // consume all arguments
                String opt = args[iarg ++];
                if (false) {

                } else if (opt.equals    ("-d")     ) {
                    debug = 1;
                    try {
                        debug = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) { // take default
                    }
                    // -d

                } else if (opt.startsWith("-coeff")  ) {
                    pfrac1 = new PolyFraction(args[iarg], args[iarg + 1]); iarg += 2;
                    try {
                        numTerms = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    System.out.println(pfrac1.toString());
                    System.out.println("vectors: "      + pfrac1.toVectors());
                    System.out.println("coefficients: " + pfrac1.getSeriesCoefficients(numTerms));
                    // -evaluate

                } else if (opt.equals    ("-f")     ) {
                    String fileName = args[iarg ++];
                    BufferedReader lineReader; // Reader for the input file
                    String srcEncoding = "UTF-8"; // Encoding of the input file
                    String line = null; // current line from text file
                    try {
                        if (fileName == null || fileName.length() <= 0 || fileName.equals("-")) {
                            lineReader = new BufferedReader(new InputStreamReader(System.in, srcEncoding));
                        } else {
                            ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
                            lineReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
                        }
                        while ((line = lineReader.readLine()) != null) { // read and process lines
                            if (! line.matches("\\s*#.*")) { // is not a comment
                                String parms[] = line.split("\\s+");
                                int iparm = 0;
                                String aseqno = parms[iparm ++];
                                String mode   = parms[iparm ++];
                                Polynomial num = new Polynomial(parms[iparm ++]);
                                Polynomial den = new Polynomial(parms[iparm ++]);
                                pfrac1 = new PolyFraction(num, den);
                                System.out.println(aseqno
                                        + "\t" + mode
                                        + "\t" + num.toString() 
                                        + "\t" + den.toString() 
                                        );
                                System.out.println(aseqno
                                        + "\t" + "vect"
                                        + "\t" + pfrac1.toVectors()
                                        );
                                System.out.println(aseqno
                                        + "\t" + "coef"
                                        + "\t" + numTerms
                                        + "\t" + pfrac1.getSeriesCoefficients(numTerms)
                                        );
                            } // is not a comment
                        } // while ! eof
                        lineReader.close();
                    } catch (Exception exc) {
                        pfrac1.log.error(exc.getMessage(), exc);
                    } // try
                    // -f

                } else if (opt.equals    ("-n")     ) {
                    numTerms = 16;
                    try {
                        numTerms = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) { // take default
                    }
                    // -n

                } else if (opt.equals    ("-vect")  ) {
                    pfrac1 = new PolyFraction(args[iarg], args[iarg + 1]); iarg += 2;
                    System.out.println(pfrac1.toString());
                    System.out.println("vectors: "      + pfrac1.toVectors());
                    // -vect

                } else {
                    System.err.println("??? invalid option: \"" + opt + "\"");
                }
            } // while args
        } // with >= 2 args
    } // main

} // PolyFraction
