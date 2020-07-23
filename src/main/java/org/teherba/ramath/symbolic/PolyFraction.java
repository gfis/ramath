/*  PolyFraction: a fraction of two polynomials
 *  @(#) $Id: PolyFraction.java 970 2012-10-25 16:49:32Z  $
 *  2019-11-10: shorten
 *  2019-05-06: -coxg
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
import  org.teherba.ramath.symbolic.Monomial;
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
import  java.util.ArrayList;
import  java.util.Iterator;
import  java.util.Stack;
import  org.apache.log4j.Logger;

/** A PolyFraction is a pair of {@link Polynomial}s which represent
 *  the numerator and the denominator of the fraction.
 *  Normally there is only one variable, but bivariate fractions could
 +  also be useful.
 *  @author Dr. Georg Fischer
 */
public class PolyFraction
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
        polynomials = new Polynomial[]
                { new Polynomial(new Monomial(Coefficient.ZERO))
                , new Polynomial(new Monomial(Coefficient.ONE ))
                };
    } // Constructor()

    /** Construct from a numerator {@link Polynomial} only.
     *  @param num polynomial for the numerator; the denominator is 1
     */
    public PolyFraction(Polynomial num) {
        this(num, new Polynomial(new Monomial(Coefficient.ONE)));
    } // Constructor(Polynomial)

    /** Construct from a pair of {@link Polynomial}s.
     *  @param num polynomial for the numerator
     *  @param den polynomial for the denominator
     */
    public PolyFraction(Polynomial num, Polynomial den) {
        polynomials = new Polynomial[] { num, den };
        shorten();
        log = Logger.getLogger(PolyFraction.class.getName());
    } // Constructor(Polynomial, Polynomial)

    /** Construct from a pair of Strings.
     *  @param num polynomial for the numerator
     *  @param den polynomial for the denominator
     */
    public PolyFraction(String num, String den) {
        this(Polynomial.parse(num), Polynomial.parse(den));
    } // Constructor(String, String)

    /** Construct from an array of Strings which represent {@link Polynomial}s.
     *  @param exprs array of String expressions
     */
    public PolyFraction(String[] exprs) {
        int ipoly = 0;
        setNum(Polynomial.parse(exprs[ipoly ++]));
        setDen(Polynomial.parse(exprs[ipoly ++]));
    } // Constructor(String[])

    /** Construct two {@link Polynomial}s in variable <em>x</em> from two {@link BigVector}s.
     *  @param num BigVector for the coefficients of the numerator
     *  @param den BigVector for the coefficients of the denominator
     */
    public PolyFraction(BigVector num, BigVector den) {
        this(num.getPolynomial(), den.getPolynomial());
    } // Constructor(BigVector, BigVector)

    /** Deep copy of this PolyFraction with all {@link Polynomial}s.
     *  @return independant copy of the PolyFraction
     */
    public PolyFraction clone() {
        return new PolyFraction(this.getNum().clone(), this.getDen().clone());
    } // clone

    /** Returns a new PolyFraction constructed from a String representation, possibly with an
     *  error message inserted at the point where parsing could not proceed.
     *  @param input the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return a new PolyFraction, or null if no valid fraction could be recognized
     */
    public static PolyFraction parse(String input) {
        PolyFraction result = null; // assume failure
        ShuntingYard parser = new ShuntingYard(debug);
        ArrayList<String> postfix = parser.getPostfixList("(" + input + ")");
        Stack<PolyFraction> pfrStack = new Stack<PolyFraction>();
        PolyFraction pfr1 = null;
        PolyFraction pfr2 = null;
        // pfrStack contains: ... pfr1 pfr2 <operator>
        String elem = null;
        int exponent = 1;
        boolean busy = true;
        try {
            int ipfix = 0;
            while (busy && ipfix < postfix.size()) {
                elem = postfix.get(ipfix);
                if (debug >= 2) {
                    System.out.println("postfix elem[" + ipfix + "]: " + elem + ", " + pfrStack);
                }
                ipfix ++;
                char ch = elem.charAt(0);
                switch (ch) {
                    // additive operators
                    case '+':
                        pfr2 = pfrStack.pop();
                        pfrStack.push(pfrStack.pop().add(pfr2));
                        break;
                    case '-':
                        pfr2 = pfrStack.pop();
                        if (false) {
                        } else if (elem.equals("-.")) { // unary -
                            pfrStack.push(pfr2.negate());
                        } else if (elem.equals("-")) {
                            pfrStack.push(pfrStack.pop().subtract(pfr2));
                        }
                        break;

                    // multiplicative operators
                    case '*':
                        pfr2 = pfrStack.pop();
                        pfrStack.push(pfrStack.pop().multiply(pfr2));
                        break;
                    case '/':
                        pfr2 = pfrStack.pop();
                        pfrStack.push(pfrStack.pop().divide  (pfr2));
                        break;

                    // exponentiation
                    case '^':
                        pfr2 = pfrStack.pop();
                        if (pfr2.getNum().isConstant() && pfr2.getDen().isOne()) {
                            BigInteger brexp = pfr2.getNum().getConstant();
                            exponent = brexp.intValue();
                            pfrStack.push(pfrStack.pop().pow(exponent));
                        } else {
                            pfrStack.removeAllElements();
                            result = null;
                            busy = false;
                        /*  System.err.println("PolyFraction.parse:"
                                    + " exponent must be single natural number instead of \"" + pfr2.toString() + "\"");
                        */
                        }
                        break;

                    default:
                        if (false) {
                        } else if (Character.isJavaIdentifierStart(ch)) {
                            pfrStack.push(new PolyFraction(Polynomial.parse(elem)));
                        } else if (Character.isDigit              (ch)) {
                            pfrStack.push(new PolyFraction(Polynomial.parse(elem)));
                        } else { // strange character
                            System.err.println("PolyFraction.parse: strange operand \"" + elem + "\"");
                            pfrStack.removeAllElements();
                            result = null;
                            busy = false;
                        }
                        break;
                } // switch ch
            } // while ipfix
            result = pfrStack.pop().shorten();
        } catch (java.util.EmptyStackException exc) {
            result = null;
        }
        return result;
    } // parse

    //===================================
    // Bean methods, setters and getters
    //===================================

    /** Number of {@link Polynomial}s in the relation set
     *  @return size of the ArrayList
     */
    public int size() {
        return polynomials.length;
    } // size

    /** Gets the numerator {@link Polynomial} of the fraction
     *  @return the Polynomial above the fraction bar
     */
    public Polynomial getNum() {
        return polynomials[0];
    } // getNum

    /** Gets the denominator {@link Polynomial} of the fraction
     *  @return the Polynomial below the fraction bar
     */
    public Polynomial getDen() {
        return polynomials[1];
    } // getDen

    /** Sets the numerator {@link Polynomial} of the fraction
     *  @param poly2 the Polynomial to be set above the fraction bar
     */
    public void setNum(Polynomial poly2) {
        polynomials[0] = poly2;
    } // setNum

    /** Sets the denominator {@link Polynomial} of the fraction
     *  @param poly2 the Polynomial to be set below the fraction bar
     */
    public void setDen(Polynomial poly2) {
        polynomials[1] = poly2;
    } // setDem

    /** Gets the variable names of both Polynomials
     *  in "triangle" order, that is with decreasing degree.
     *  @return array of variable names
     */
    public String[] getVariables() {
        String[] result;
    /*
        Polynomial poden = getDen();
        VariableMap vmap = getNum().getVariableMap();
        vmap.putAll(poden.getVariableMap()); // union of both sets
        int vlen = vmap.size();
        String[] varExp  = new String[vlen];
        Iterator<String> viter = vmap.keySet().iterator();
        int [] maxExp = new int[vlen];
        int iexp = 0;
        while (viter.hasNext()) {
            String vname = viter.next();
            varExp[iexp] = vname;
            maxExp[iexp] = poden.maxDegree(vname);
            iexp ++;
        } // while viter

        // limitation to 2 variables only (for the moment)
        if (maxExp[0] > maxExp[1]) {
            result = new String[] { varExp[0], varExp[1] };
        } else {
            result = new String[] { varExp[1], varExp[0] };
        }
    */
        result = new String[] { "x", "y" };
        return result;
        // return
    } // getVariables

    /*-------------- lightweight derived methods -----------------------------*/

    /** Removes any GCD of <em>this</em> nominator and the denominator.
     *  @return <em>this</em> shortened PolyFraction
     */
    public PolyFraction shorten() {
        BigInteger gcd = polynomials[0].gcdCoefficients()
                    .gcd(polynomials[1].gcdCoefficients());
        if (! gcd.equals(BigInteger.ZERO)) {
            Monomial gcdMono = new Monomial(Coefficient.valueOf(gcd));
            polynomials[0].divideBy(gcdMono);
            polynomials[1].divideBy(gcdMono);
        }
        return this;
    } // shorten

    /** Returns a String representation of <em>this</em> {@link PolyFraction}
     *  @param mode 0 = normal, 1 = full (for substitution), 2 = nice / human legible,
     *  3 = with prime factors
     *  @return "(2 - x) / (1 - x - x^2)", for example
     */
    public String toString(int mode) {
        StringBuffer buffer = new StringBuffer(2048);
        buffer.append("(");
        buffer.append(this.getNum().toString(mode));
        buffer.append(") / (");
        buffer.append(this.getDen().toString(mode));
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

    /** Returns two {@link BigVector}s for the numerator and the denominator.
     *  For multivariate Polynomials, the result is somewhat meaningless,
     *  and nullis returned.
     *  @return "[2, -1],[1, -1, -1]" for example
     */
    public BigVector[] toVectors() {
        return new BigVector[] 
                { polynomials[0].getBigVector()
                , polynomials[1].getBigVector()
                };
    } // toVectors()

    /** Returns a String representation of the coefficients
     *  of the numerator and the denominator.
     *  For multivariate Polynomials, the result is somewhat meaningless.
     *  @return "[2, -1],[1, -1, -1]" for example, 
     *  or <em>null/em> if one of the Polynomials is multivariate
     */
    public String toVectorString() {
        BigVector num = polynomials[0].getBigVector();
        BigVector den = polynomials[1].getBigVector();
        return num != null && den != null 
                ? num.toString() + "," + den.toString()
                : null;
    } // toVectorString()

    //----------------------
    // Arithmetic operations

    /** Adds another PolyFraction to <em>this</em>.
     *  @param pfr2 add this PolyFraction
     *  @return reference to a new object: this+pfr2
     */
    public PolyFraction add(PolyFraction pfr2) {
        Polynomial den1 = this.getDen();
        Polynomial den2 = pfr2.getDen();
        PolyFraction result = null;
        if (den1.isOne()) {
            if (den2.isOne()) { // n1/1 + n2/1 = (n1 + n2)/1
                result = new PolyFraction(this.getNum().add(pfr2.getNum())
                        , den2);
            } else { // n1/1 + n2/d2 = (n1*d2 + n2)/d2
                result = new PolyFraction(this.getNum().multiply(den2).add(pfr2.getNum())
                        , den2);
            }
        } else { // d1 != 1
            if (den2.isOne()) { // n1/d1 + n2 = (n1 + n2*d1)/d1
                result = new PolyFraction(this.getNum().add(pfr2.getNum().multiply(den1))
                        , den1);
            } else { // d1 != 1 && d2 != 1: n1/d1 + n2/d2 = (n1*d2 + n2*d1)/(d1*d2)
                result = new PolyFraction(this.getNum().multiply(den2).add(pfr2.getNum().multiply(den1))
                        , den1.multiply(den2));
            }
        } // d2 != 1
        return result;
    } // add(PolyFraction)

    /** Subtracts another PolyFraction from <em>this</em>.
     *  @param pfr2 subtract this PolyFraction
     *  @return reference to a new object: this-pfr2
     */
    public PolyFraction subtract(PolyFraction pfr2) {
        Polynomial den1 = this.getDen();
        Polynomial den2 = pfr2.getDen();
        PolyFraction result = null;
        if (den1.isOne()) {
            if (den2.isOne()) { // n1/1 - n2/1 = (n1 - n2)/1
                result = new PolyFraction(this.getNum().subtract(pfr2.getNum())
                        , den2);
            } else { // n1/1 - n2/d2 = (n1*d2 - n2)/d2
                result = new PolyFraction(this.getNum().multiply(den2).subtract(pfr2.getNum())
                        , den2);
            }
        } else { // d1 != 1
            if (den2.isOne()) { // n1/d1 - n2 = (n1 - n2*d1)/d1
                result = new PolyFraction(this.getNum().subtract(pfr2.getNum().multiply(den1))
                        , den1);
            } else { // d1 != 1 && d2 != 1: n1/d1 - n2/d2 = (n1*d2 - n2*d1)/(d1*d2)
                result = new PolyFraction(this.getNum().multiply(den2).subtract(pfr2.getNum().multiply(den1))
                        , den1.multiply(den2));
            }
        } // d2 != 1
        return result;
    } // subtract(PolyFraction)

    /** Negates <em>this</em>.
     *  @return reference to a new object: -this
     */
    public PolyFraction negate() {
       return new PolyFraction(this.getNum().clone().negativeOf(), this.getDen().clone());
    } // negate(PolyFraction)

    /** Multiplies another PolyFraction with <em>this</em>.
     *  @param pfr2 multiply with this PolyFraction
     *  @return reference to a new object: this*pfr2
     */
    public PolyFraction multiply(PolyFraction pfr2) {
        Polynomial den1 = this.getDen();
        Polynomial den2 = pfr2.getDen();
        PolyFraction result = null;
        if (den1.isOne()) {
                // n1/1 * n2/d2 = (n1*n2)/d2
                result = new PolyFraction(this.getNum().multiply(pfr2.getNum())
                        , den2);
        } else { // d1 != 1
            if (den2.isOne()) { // n1/d1 * n2/1 = (n1*n2)/d1
                result = new PolyFraction(this.getNum().multiply(pfr2.getNum())
                        , den1);
            } else { // d1 != 1 && d2 != 1: n1/d1 * n2/d2 = (n1*n2)/(d1*d2)
                result = new PolyFraction(this.getNum().multiply(pfr2.getNum())
                        , den1.multiply(den2));
            }
        } // d2 != 1
        return result;
    } // multiply(PolyFraction)

    /** Clone and raise a PolyFraction to some power.
     *  @param exponent raise to this power &gt;= 0; exponents 0 and 1 are handled individually.
     *  @return reference to a <em>new</em> Polynomial
     */
    public PolyFraction pow(int exponent) {
        PolyFraction result = this.clone();
        if (exponent < 0) {
            exponent = - exponent;      // (x/y)^(-n) = (y/x)^n
            Polynomial temp = getNum(); // exchange num and den
            setNum(getDen());
            setDen(temp);
        }
        if (exponent == 0) {
            result = new PolyFraction();
        } else if (exponent == 1) {
            // result = this.clone();
        } else { // >= 2 : multiply as often;
            // for higher exponents, this could be improved by some "powers of 2 evaluation" of the exponent
            // result = this.clone();
            while (exponent > 1) {
                result = result.multiply(this);
                exponent --;
            } // while exponent
        } // >= 2
        return result;
    } // pow

    /** Divides another PolyFraction into <em>this</em>.
     *  @param pfr2 divide by this PolyFraction
     *  @return reference to a new object: this/pfr2
     */
    public PolyFraction divide(PolyFraction pfr2) {
        Polynomial den1 = this.getDen();
        Polynomial den2 = pfr2.getDen();
        PolyFraction result = null;
        if (den1.isOne()) {
                // (n1/1) / (n2/d2) = (n1*d2)/n2
                result = new PolyFraction(this.getNum().multiply(den2)
                        , pfr2.getNum());
        } else { // d1 != 1
            if (den2.isOne()) { // (n1/d1) / (n2/1) = (n1)/(n2*d1)
                result = new PolyFraction(this.getNum()
                        , pfr2.getNum().multiply(den1));
            } else { // d1 != 1 && d2 != 1: (n1/d1) / (n2/d2) = (n1*d2)/(n2*d1)
                result = new PolyFraction(this.getNum().multiply(den2)
                        , pfr2.getNum().multiply(den1));
            }
        } // d2 != 1
        return result;
    } // divide(PolyFraction)

    /** Expands the fraction into a formal power series and
     *  returns the coefficients of the powers of the variable.
     *  @param numTerms return so many coefficients
     *  @return a {@link BigVector} of numbers
     */
    public BigVector getSeriesCoefficients(int numTerms) {
        BigVector vnum   = polynomials[0].getBigVector();
        BigVector vden   = polynomials[1].getBigVector();
        BigVector result = new BigVector(numTerms);
        // vnum.setDebug(debug);
        int iterm = 0;
        boolean busy = true;
        while (busy && iterm < numTerms) {
            BigInteger coeff = vnum.divisionStep(vden);
            if (coeff != null) {
                result.set(iterm, coeff);
            } else {
                result.set(iterm, BigInteger.ONE.negate());
                busy = false;
            }
            iterm ++;
        } // while iterm
        return result;
    } // getSeriesCoefficients

    /** Normalizes the fraction by ensuring that any constant in the denominator
     *  is positive.
     */
    public PolyFraction normalize() {
        Coefficient cons1 = polynomials[1].getConstant();
        if (cons1.compareTo(BigInteger.ZERO) < 0) {
            polynomials[0].negativeOf();
            polynomials[1].negativeOf();
        }
        return this;
    } // normalize

    /** Expands the multivariate fraction into a formal power series and
     *  returns the coefficients of the powers of the variables as
     *  a flattened triangular array.
     *  @param numTerms return so many coefficients
     *  @param vars names of the variables, for example "x", "y".
     *  @return a {@link BigVector} of numbers
     *  For two variables, the triangle begins:
     *  <pre>
     *  c0*x^0*y^0
     *  c1*x^1*y^0 c2*x^1*y^1
     *  c3*x^2*y^0 c4*x^2*y^1 c5*x^2*y^2
     *  c6*x^3*y^0 c7*x^3*y^1 c8*x^3*y^2 c9*x^3*y^3
     *  ...
     *  </pre>
     */
    public BigVector getCoefficientTriangle(int numTerms, String[] vars) {
        BigVector result = new BigVector(numTerms);
        this.normalize(); // make any denominator constant positive
        Polynomial ponum  = polynomials[0].clone(); // we operate on both
        Polynomial poden  = polynomials[1];
        Coefficient cons1 = poden.getConstant();
        if (! cons1.equals(BigInteger.ONE)) {
            System.err.println("PolyFraction.getCoefficientTriangle: Coefficient of"
                    +  " denominator must be 1 instead of " + cons1.toString()
                    + " in pfr " + this.toString());
            return new BigVector(new int[] { 0 });
        }
        int vlen = vars.length;
        int iterm = 0;
        boolean busy = true;
        int ix = 0;
        while (busy) {
            int iy = 0;
            while (busy && iy <= ix) {
                Monomial mono1 = new Monomial(vars, new int[] {ix, iy});
                Signature sig1 = mono1.signature();
                Monomial pivot = ponum.getMonomial(sig1);
                if (pivot != null) {
                    Coefficient coeff = pivot.getCoefficient();
                    if (iterm < numTerms) {
                        if (coeff != null) {
                            result.set(iterm, coeff.bigIntegerValue());
                        } else {
                            result.set(iterm, BigInteger.ZERO);
                        }
                        iterm ++;
                        ponum = ponum.subtract(poden.multiply(new Polynomial(pivot)));
                    } else {
                        busy = false;
                    }
                } else {
                    if (iterm < numTerms) {
                        result.set(iterm, BigInteger.ZERO);
                        iterm ++;
                    } else {
                        busy = false;
                    }
                }
                iy ++;
            } // while iy
            ix ++;
        } // while iexp
        return result;
    } // getCoefficientTriangle

    /** Returns a PolyFraction which generates a Coxeter group sequence.
     *  This method corresponds with the Mathematica routine <em>coxG</em>
     *  defined in OEIS {@link https://oeis.org/A169452 A169452}:
     * <pre>
     coxG[{pwr_, c1_, c2_, trms_:20}]:=Module[{
     num=Total[2t^Range[pwr-1]]+t^pwr+ 1,
     den=Total[c2*t^Range[pwr-1]]+c1*t^pwr+1},
     CoefficientList[ Series[ num/den, {t, 0, trms}], t]];
     coxG[{33, 15, -5, 30}]

     G.f.: (t^33 + 2*t^32 + 2*t^31 + 2*t^30 + 2*t^29 + 2*t^28 + 2*t^27 + 2*t^26
     + 2*t^25 + 2*t^24 + 2*t^23 + 2*t^22 + 2*t^21 + 2*t^20 + 2*t^19 + 2*t^18
     + 2*t^17 + 2*t^16 + 2*t^15 + 2*t^14 + 2*t^13 + 2*t^12 + 2*t^11 + 2*t^10
     + 2*t^9 + 2*t^8 + 2*t^7 + 2*t^6 + 2*t^5 + 2*t^4 + 2*t^3 + 2*t^2 + 2*t + 1)/
     (15*t^33 - 5*t^32 - 5*t^31 - 5*t^30 - 5*t^29 - 5*t^28 - 5*t^27 - 5*t^26
     - 5*t^25 - 5*t^24 - 5*t^23 - 5*t^22 - 5*t^21 - 5*t^20 - 5*t^19 - 5*t^18
     - 5*t^17 - 5*t^16 - 5*t^15 - 5*t^14 - 5*t^13 - 5*t^12 - 5*t^11 - 5*t^10
     - 5*t^9 - 5*t^8 - 5*t^7 - 5*t^6 - 5*t^5 - 5*t^4 - 5*t^3 - 5*t^2 - 5*t + 1).
     * </pre>
     *  @param pwr largest exponent in the g.f. and of "(S_i S_j)" in the name,
     *  @param c1 first coefficient in the denominator of the g.f.,
     *  = triangular(-c2) = binomial(-c2 + 1, 2)
     *  @param c2 second coefficient in the denominator of the g.f.,
     *  = 2 - (numbers of generators in the name)
     *  @return corresponding PolyFraction
     */
    public static PolyFraction getCoxeterFraction(int pwr, int c1, int c2) {
        BigVector num = new BigVector(pwr + 1);
        BigVector den = new BigVector(pwr + 1);
        num.setBig(pwr, BigInteger.ONE);
        num.setBig(0,   BigInteger.ONE);
        den.setBig(pwr, BigInteger.valueOf(c1));
        den.setBig(0,   BigInteger.ONE);
        BigInteger bigC2 = BigInteger.valueOf(c2);
        int ipwr = pwr - 1;
        while (ipwr > 0) {
            num.setBig(ipwr, BigIntegerUtil.TWO);
            den.setBig(ipwr, bigC2);
            ipwr --;
        } // while ipwr
        return new PolyFraction(num, den);
    } // coxG

    /** Returns a PolyFraction which generates a Coxeter group sequence.
     *  This version has simpler parameters which are directly deduceable
     *  from the name of the OEIS sequence.
     *  @param pwr the exponent
     *  @param ngen number of generators
     *  @return corresponding PolyFraction
     */
    public static PolyFraction getCoxeterFraction(int pwr, int ngen) {
        int triang = 0;
        // A000217 Triangular numbers: a(n) = binomial(n+1, 2)
        // 0  1  2  3   4   5   6   7   8   9  10
        // 0, 1, 3, 6, 10, 15, 21, 28, 36, 45, 55
        return getCoxeterFraction(pwr, (ngen - 2) * (ngen - 1) / 2, 2 - ngen);
    } // getCoxeterFraction

    /*--------------- Test driver --------------------*/

    /** Test method, shows some fixed PolyFractions with no arguments, or the
     *  PolyFraction resulting from the input parameters.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        PolyFraction pfr1 = new PolyFraction();
        int numTerms = 16;

        if (false) {
        } else if (args.length == 0) {
            pfr1 = new PolyFraction("(2-x)", "1-x-x^2"); // Lucas A000032: 2,1,3,4,7,11, ...
            System.out.println(pfr1.toString());
            System.out.println(pfr1.toVectorString());

        } else if (args.length == 1 && ! args[0].startsWith("-")) {
            pfr1 = new PolyFraction(args[iarg], args[iarg + 1]); iarg += 2;
            System.out.println(pfr1.toString());

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
                    pfr1 = new PolyFraction(args[iarg], args[iarg + 1]); iarg += 2;
                    try {
                        numTerms = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    System.out.println(pfr1.toString());
                    System.out.println("vectors: "      + pfr1.toVectorString());
                    System.out.println("coefficients: " + pfr1.getSeriesCoefficients(numTerms));
                    // -coeff

                } else if (opt.startsWith("-coxg")  ) {
                    int pwr  = 33;
                    int c1   = 15;
                    int c2   = -5;
                    int ngen = 0;
                    try {
                        pwr  = Integer.parseInt(args[iarg ++]);
                        c1   = Integer.parseInt(args[iarg ++]);
                        ngen = c1;
                        if (iarg < args.length) {
                            c2 = Integer.parseInt(args[iarg ++]);
                        } else { // 2 parameter variant
                            c2 = 0;
                        }
                    } catch (Exception exc) {
                    }
                    if (c2 != 0) {
                        pfr1 = PolyFraction.getCoxeterFraction(pwr, c1, c2);
                    } else {
                        pfr1 = PolyFraction.getCoxeterFraction(pwr, ngen);
                    }
                    System.out.println(pfr1.toString());
                    System.out.println("vectors: "      + pfr1.toVectorString());
                    System.out.println("coefficients: " + pfr1.getSeriesCoefficients(numTerms));
                    // -coxg

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
                                if (false) {
                                } else if (mode.equals("sage")) {
                                    Polynomial num = Polynomial.parse(parms[iparm ++]);
                                    Polynomial den = Polynomial.parse(parms[iparm ++]);
                                    pfr1 = new PolyFraction(num, den);
                                    System.out.println(aseqno + "\t" + mode
                                            + "\t" + pfr1.getNum().toString() + "\t" + pfr1.getDen().toString()
                                            );
                                    System.out.println(aseqno + "\t" + "vect"
                                            + "\t" + pfr1.toVectorString()
                                            );
                                    System.out.println(aseqno + "\t" + "coef"
                                            + "\t" + pfr1.getSeriesCoefficients(numTerms)
                                            );
                                } else if (mode.equals("coxf")) {
                                    try {
                                        int pwr  = Integer.parseInt(parms[iparm ++]);
                                        int ngen = Integer.parseInt(parms[iparm ++]);
                                        pfr1 = PolyFraction.getCoxeterFraction(pwr, ngen);
                                    } catch (Exception exc) {
                                    }
                                    System.out.println(aseqno
                                            + "\t" + pfr1.getSeriesCoefficients(numTerms)
                                            .toString().replaceAll("[\\[\\]]", "")
                                            );
                            /*
                                } else if (mode.equals("delta")) {
                                    String offset1 = parms[iparm ++];
                                    System.out.print(aseqno + "\tdelta1\toffset1\t");
                                    pfr1 = PolyFraction.parse(parms[iparm]).normalize();
                                    System.out.println(pfr1.toString());
                                    System.out.print(aseqno + "\tdelta2\toffset1\t");
                                    System.out.println(pfr1.getCoefficientTriangle(numTerms
                                            , new String[] { "x", "y" })
                                            .toString().replaceAll("[\\[\\]]", ""));
                            */
                                } else if (mode.startsWith("fract")) {
                                    String offset1 = parms[iparm ++];
                                    pfr1 = PolyFraction.parse(parms[iparm]).normalize();
                                    if (pfr1 == null) {
                                        // ignore, bad syntax
                                    } else if (mode.equals("fract1")) {
                                        String vects = pfr1.toVectorString();
                                        if (vects != null) {
                                            System.out.println(aseqno + "\t" + "orgf"
                                                    + "\t" + offset1
                                                    + "\t" + vects
                                                            .replaceAll("\\],\\[", "\t")
                                                            .replaceAll("[\\[\\]]", "")
                                                    );
                                            System.out.println(aseqno + "\t" + "coef"
                                                    + "\t" + pfr1.getSeriesCoefficients(numTerms)
                                                            .toString().replaceAll("[\\[\\]]", "")
                                                    );
                                        } else { 
                                            System.out.println("PolyFraction is not univariate");
                                        }
                                    } else if (mode.equals("fract2")) {
                                        String[] vars = pfr1.getVariables();
                                        System.out.println(aseqno + "\t" + "tria"
                                                + "\t" + offset1
                                                + "\t" + pfr1.getNum().toTriangleList(vars)
                                                + "\t" + pfr1.getDen().toTriangleList(vars)
                                                + "\t" + vars[0] + "," + vars[1]
                                                );
                                    } else {
                                        System.out.println(aseqno
                                                + "\t" + offset1
                                                + "\t??" + parms[iparm]
                                                );
                                    }
                                    iparm ++;
                                } else if (mode.equals("rioarr")) {
                                    String offset1 = parms[iparm ++];
                                    System.out.print(aseqno + "\t");
                                    pfr1 = PolyFraction.parse(parms[iparm]).normalize();
                                    System.out.println(pfr1.getCoefficientTriangle(numTerms
                                            , new String[] { "x", "y" })
                                            .toString().replaceAll("[\\[\\]]", ""));
                                } // switch mode
                            } // is not a comment
                        } // while ! eof
                        lineReader.close();
                    } catch (Exception exc) {
                        pfr1.log.error(exc.getMessage(), exc);
                        System.err.println("exception for pfr1=" + pfr1.toString());
                    } // try
                    // -f

                } else if (opt.equals    ("-parse")) {
                    pfr1 = PolyFraction.parse(args[iarg ++]);
                    System.out.println(pfr1.toString());

                } else if (opt.equals    ("-n")     ) {
                    numTerms = 16;
                    try {
                        numTerms = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) { // take default
                    }
                    // -n

                } else if (opt.startsWith("-tria")  ) {
                    numTerms = 16;
                    try {
                        numTerms = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) { // take default
                    }
                    pfr1 = new PolyFraction(args[iarg], args[iarg + 1]); iarg += 2;
                    System.out.println(pfr1.toString());
                    System.out.println("triangle: "
                        + pfr1.getCoefficientTriangle(numTerms, new String[] { "x", "y" }));
                    // -trian

                } else if (opt.equals    ("-vect")  ) {
                    pfr1 = new PolyFraction(args[iarg], args[iarg + 1]); iarg += 2;
                    System.out.println(pfr1.toString());
                    System.out.println("vectors: "      + pfr1.toVectorString());
                    // -vect

                } else {
                    System.err.println("??? invalid option: \"" + opt + "\"");
                }
            } // while args
        } // with >= 2 args
    } // main

} // PolyFraction
