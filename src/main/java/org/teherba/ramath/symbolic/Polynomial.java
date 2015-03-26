/*  Polynomial: a symbolic, multivariate polynomial with addition, multiplication
 *  and exponentiation
 *  @(#) $Id: Polynomial.java 744 2011-07-26 06:29:20Z gfis $
 *  2015-03-25: isPowerSum
 *  2015-02-13: getTransposition
 *  2014-04-04: getIndivisiblePart(2)
 *  2013-09-20: BigRational -> BigIntegerUtil
 *  2013-08-30: property modulus, serialVersionUID = 2L
 *  2013-08-26: Buchberger's algorithm
 *  2013-08-12: groupBy, getVariablePowers
 *  2013-07-03: [quotient,rest] = poly.divide(uniVariatePolynomial)
 *  2010-08-30: isLike
 *  2009-09-24: relation to zero EQ0, GT0, GE0, NE0
 *  2009-08-13: (GF was on holidays in Berlin when the wall was built 48 years ago) normalization of 0 - x + y to x - y
 *  2009-07-27: equivalence finally implemented
 *  2009-07-01, Georg Fischer: copied from ContinuedFraction
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.symbolic.PolynomialParser;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.BigIntegerUtil;
import  org.teherba.ramath.util.ExpressionReader;
import  org.teherba.ramath.util.Permutator;
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.Iterator;
import  java.util.Map;
import  java.util.Set;
import  java.util.TreeMap;

/** A Polynomial is a sum of {@link Monomial}s, ordered by the signatures
 *  (variable names and natural number exponents) of the monomials.
 *  <p>From http://en.wikipedia.org/wiki/Polynomial:
 *  <blockquote>
In mathematics, a polynomial is a finite length expression constructed from variables
(also known as indeterminates) and constants, using the operations of addition, subtraction, multiplication,
and constant non-negative whole number exponents.
For example, x<sup>2</sup> − 4x + 7 is a polynomial, but x<sup>2</sup> − 4/x + 7x<sup>3/2</sup> is not ...
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
public class Polynomial implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id: Polynomial.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private static int debug = 0;

    /*-------------- class properties -----------------------------*/

    /** The sorted map for {@link Monomial}s:
     *  the {@link Monomial#signature signatures} of all monomials in the polynomial
     *  are mapped to the monomials.
     */
    private TreeMap<String, Monomial> monomials;

    /** A pseudo property which marks all places where future additional properties must be inserted or cloned */
    private int pseudo;

    /** Codes for the comparision of <em>this</em> polynomial with zero.
     *  There are no codes LT0, LE0 since they can be translated to GT0, GE0
     *  by inversion of the sign (method {@link #negativeOf}).
     *  The default, predefined relation is EQ0.
     */
    public static enum Relator
            { EQ_0  // this polynomial =  0
            , GT_0  // this polynomial >  0
            , GE_0  // this polynomial >= 0
            , NE_0  // this polynomial != 0
            , MOD0  // this polynomial mod modulus == 0
            };

    /** relation with zero */
    private Relator relation;
    /** The Polynomial must be congruent 0 modulus this number for {@link Polynomial.Relator}
     *  {@link Polynomial.Relator#MOD0}.
     *  For other relators, the modulus is irrelevant, and its default value is 0.
     */
    private BigInteger modulus;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public Polynomial() {
        monomials = new TreeMap<String, Monomial>(); // an empty map indicates value 0
        initialize();
    } // no-args Constructor

    /** Construct from monomial
     *  @param monomial single {@link Monomial} (summand)
     */
    public Polynomial(Monomial monomial) {
        this();
        initialize();
        if (! monomial.isZero()) {
            monomials.put(monomial.signature(), monomial);
        }
    } // Constructor(Monomial)

    /** Construct from another polynomial
     *  @param poly another polynomial which is cloned
     */
    public Polynomial(Polynomial poly) {
        monomials =  (poly.clone()).getMonomials();
        setFactor    (poly.getFactor());
        setModulus   (poly.getModulus());
        setPseudo    (poly.getPseudo());
        setRelation  (poly.getRelation());
    } // Constructor(Polynomial)

    /** Construct from an arithmetic expression as input string
     *  @param expr a sum of signed monomials
     */
    public Polynomial(String expr) {
        this((new PolynomialParser()).parseFrom(expr));
    } // Constructor(String)

    /** Initializes all simple properties of the object
     */
    private void initialize() {
        setFactor(new Monomial("1"));
        setModulus(BigInteger.ZERO);
        setPseudo(0);
        setRelation(Relator.EQ_0);
    } // initialize

    /** Deep copy of the polynomial with all {@link Monomial}s.
     *  @return independant copy of the polynomial
     */
    public Polynomial clone() {
        Polynomial result = new Polynomial();
        TreeMap<String, Monomial> resultMonomials = new TreeMap<String, Monomial>();
        Iterator<String> titer = monomials.keySet().iterator();
        while (titer.hasNext()) {
            String sigt = titer.next();
            resultMonomials.put(sigt, this.monomials.get(sigt).clone());
        } // while titer
        result.setFactor    (this.getFactor());
        result.setMonomials (resultMonomials);
        result.setModulus   (this.getModulus());
        result.setPseudo    (this.getPseudo());
        result.setRelation  (this.getRelation());
        return result;
    } // clone

    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Gets one of the {@link Monomial}s of the polynomial.
     *  @param sig signature (variable names and their exponents) of the desired monomial
     *  @deprecated
     *  @return monomial
     */
    public Monomial get(String sig) {
        return monomials.get(sig);
    } // get

    /** Inserts a {@link Monomial}s into the polynomial.
     *  If there is already a monomial with the parameter signature, it is overwritten.
     *  @param sig signature (variable names and their exponents) of the desired monomial
     *  @param monomial2 monomial to be inserted or overwritten.
     *  @deprecated
     */
    public void put(String sig, Monomial monomial2) {
        monomials.put(sig, monomial2);
    } // put

    /** Gets the key set of the internal mapping from signatures to {@link Monomial}s.
     *  @return set of signatures
     */
    public Set<String> keySet() {
        return monomials.keySet();
    } // keySet

    /** Gets the internal map of {@link Monomial}s.
     *  @return map from signatures (variable names and their exponents) to monomials
     */
    public TreeMap<String, Monomial> getMonomials() {
        return this.monomials;
    } // getMonomials

    /** Sets the internal map of {@link Monomial}s.
     *  @param map map from signatures (variable names and their exponents) to monomials
     */
    public void setMonomials(TreeMap<String, Monomial> map) {
        this.monomials = map;
    } // setMonomials

    /** Gets one of the {@link Monomial}s of the polynomial.
     *  @param sig signature (variable names and their exponents) of the desired monomial
     *  @return monomial
     */
    public Monomial getMonomial(String sig) {
        return this.monomials.get(sig);
    } // getMonomial

    /** Inserts a {@link Monomial} into the polynomial.
     *  If there is already a monomial with the parameter signature, it is overwritten.
     *  @param sig signature (variable names and their exponents) of the desired monomial
     *  @param monomial2 monomial to be inserted or overwritten.
     */
    public void setMonomial(String sig, Monomial monomial2) {
        this.monomials.put(sig, monomial2);
    } // setMonomial

    /** a factor common to all {@link Monomial}s of the Polynomial */
    private Monomial factor;
    /** Gets the factor
     *  @return multiply the Polynomial by this factor
     */
    public Monomial getFactor() {
        return factor;
    } // getFactor
    /** Sets the factor
     *  @param factor multiply the Polynomial by this factor
     */
    public void setFactor(Monomial factor) {
        this.factor = factor;
    } // setFactor

    /** Gets the modulus.
     *  @return the number which is used for {@link Polynomial.Relator} {@link Polynomial.Relator#MOD0}
     */
    protected BigInteger getModulus() {
        return modulus;
    } // getModulus

    /** Sets the modulus
     *  @param modulus the number which is used for {@link Polynomial.Relator} {@link Polynomial.Relator#MOD0}
     */
    protected void setModulus(BigInteger modulus) {
        this.modulus = modulus;
    } // setModulus

    /** Gets the pseudo property.
     *  @return pseudo
     */
    protected int getPseudo() {
        return pseudo;
    } // getPseudo

    /** Inserts the pseudo property.
     *  @param pseudo
     */
    protected void setPseudo(int pseudo) {
        this.pseudo = pseudo;
    } // setPseudo

    /** Gets the relation to zero
     *  @return one of Relator.EQ_0, .GT_0, .GE_0, .NE_0
     */
    protected Relator getRelation() {
        return relation;
    } // getRelation

    /** Sets the relation to zero
     *  @param relation one of Relator.EQ_0, .GT_0, .GE_0, .NE_0
     */
    protected void setRelation(Relator relation) {
        this.relation = relation;
    } // setRelation

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns the lead term, that is the "greatest" {@link Monomial}
     *  with respect to the monomial order defined by the TreeMap.
     *  @return the last element in the TreeMap
     */
    public Monomial leadTerm() {
        Monomial result = null;
        String lastKey = monomials.lastKey();
        if (lastKey != null) {
            result = monomials.get(lastKey);
        }
        return result;
    } // leadTerm

    /** Returns the number of monomials (summands) in the polynomial
     *  @return number of monomials &gt;= 1
     */
    public int size() {
        return monomials.size();
    } // size

    /** Returns a string representation of the polynomial, with leading sign,
     *  in compressed representation, without the relation.
     *  @return "17*a0^2*a1 + a2^2*a3^3 - 4*b4", for example
     */
    public String toString() {
        StringBuffer buffer = new StringBuffer(2048);
        Iterator<String> iter = monomials.keySet().iterator();
        while (iter.hasNext()) {
            String sig = iter.next();
            buffer.append(monomials.get(sig).toString());
        } // while iter
        if (buffer.length() == 0) {
            buffer.append("0");
        }
        switch (relation) {
            default:
        /*
            case EQ_0:
                buffer.append(" = 0");
        */
                break;
            case GT_0:
                buffer.append(" > 0");
                break;
            case GE_0:
                buffer.append(" >= 0");
                break;
            case NE_0:
                buffer.append(" != 0");
                break;
            case MOD0:
                buffer.append(" mod " + modulus.toString() + " = 0");
                break;
        } // switch relation
        String result = buffer.toString();
        return result.substring(result.startsWith(" + ") ? 3 : 0);
    } // toString()

    /** Returns a string representation of the polynomial, either compressed or full,
     *  always with the relation
     *  @param full whether to return a complete representation suitable for substitution
     *  or a compressed representation which suppresses positive unary sign and
     *  coefficients and exponents of 1
     *  @return "17*a0^2*a1 + a2^2*a3^3 - 4*b4 = 0", for example
     */
    public String toString(boolean full) {
        StringBuffer buffer = new StringBuffer(2048);
        Iterator<String> iter = monomials.keySet().iterator();
        while (iter.hasNext()) {
            String sig = iter.next();
            buffer.append(monomials.get(sig).toString(full));
        } // while iter
        if (buffer.length() == 0) {
            buffer.append("0");
        }
        switch (relation) {
            default:
            case EQ_0:
                buffer.append(" = 0");
                break;
            case GT_0:
                buffer.append(" > 0");
                break;
            case GE_0:
                buffer.append(" >= 0");
                break;
            case NE_0:
                buffer.append(" != 0");
                break;
            case MOD0:
                buffer.append(" mod " + modulus.toString() + " = 0");
                break;
        } // switch relation
        String result = buffer.toString();
        return result.substring(result.startsWith(" + ") ? 3 : 0);
    } // toString

    /** Returns a string representation of the polynomial, with leading sign,
     *  in compressed representation, without the relation.
     *  @param factor if the constant of a monomial is divisible by this factor &gt; 1,
     *  the constant is written as "factor*factor2"
     *  @return "4*4*x^2+4*4*y^2-32*4*x*y*z+4*4*z^2" (factor 4), for example
     */
    public String toFactoredString(BigInteger factor) {
        StringBuffer buffer = new StringBuffer(2048);
        Iterator<String> iter = monomials.keySet().iterator();
        while (iter.hasNext()) {
            String sig = iter.next();
            buffer.append(monomials.get(sig).toFactoredString(factor));
        } // while iter
        if (buffer.length() == 0) {
            buffer.append("0");
        }
        String result = buffer.toString();
        return result.substring(result.startsWith(" + ") ? 3 : 0);
    } // toFactoredString()

    /** Gets the constant {@link Monomial} of the polynomial, if any, or the constant 0.
     *  @return the constant monomial if there is one, or 0
     */
    public BigInteger getConstant() {
        BigInteger result = BigInteger.ZERO;
        Monomial monomial = monomials.get(Monomial.CONSTANT_SIGNATURE);
        if (monomial != null) {
            result = monomial.getCoefficient();
        }
        return result;
    } // getConstant

    /** Determines whether there is a non-zero constant {@link Monomial} in the polynomial
     *  @return true if there is a constant monomial, or false otherwise
     */
    public boolean hasConstant() {
        return monomials.get(Monomial.CONSTANT_SIGNATURE) != null;
    } // hasConstant

    /** Determines whether the polynomial contains no variables (only a constant {@link Monomial}).
     *  @return true if the polynomial is constant, or false otherwise
     */
    public boolean isConstant() {
        return monomials.size() == 0 || monomials.size() == 1 && hasConstant();
    } // isConstant private static final String FAILURE = "? ";

    /** Determines whether there are one or more variables in the {@link Monomial}s of the polynomial.
     *  @return true if there is at least one variable, or false otherwise
     */
    public boolean hasVariable() {
        boolean result = false;
        result = getVariableMap().size() > 0;
        return result;
    } // hasVariable

    /** Determines whether the polynomial is zero (represented by no monomials)
     *  @return true if the polynomial is zero, or false otherwise
     */
    public boolean isZero() {
        return monomials.size() == 0;
    } // isZero

    /** Determines whether the polynomial has a non-zero constant
     *  and all monomials have the same sign as the constant - such polynomials
     *  have no solutions in variables which are all >= 0.
     *  Assuming positive variable values, such polynomials can never become zero.
     *  @return true if the polynomial has one type of sign and a constant, or false otherwise
     */
    public boolean isBiased() {
        boolean result = true; // assume success
        int monomNo  = 0;
        int sign = 0;
        Iterator<String> iter1 = this.keySet().iterator();
        while (result && iter1.hasNext()) {
            monomNo ++;
            String sig1 = iter1.next();
            if (monomNo == 1) {
                sign = monomials.get(sig1).signum();
            } else if (monomials.get(sig1).signum() != sign) {
                result = false;
            }
        } // while iter1
        return result && monomials.get(Monomial.CONSTANT_SIGNATURE) != null;
    } // isBiased

    /** Gets the <em>polarity</em> of the polynomial, that is the sign of the constant monomial, if present,
     *  or the sum of the signums of all monomials otherwise.
     *  @return
     *  <ul>
     *  <li>the signum of the constant monomial, if present, or otherwise:</li>
     *  <li>s &gt; 0 if there were more positive monomials</li>
     *  <li>s &lt; 0 if there were more negative monomials</li>
     *  <li>s = 0 if the number of positive and negative monomials is the same, or the polynomial itself is zero</li>
     *  </ul>
     */
    public int polarity() {
        int result = this.getConstant().signum();
        if (result == 0) {
            Iterator<String> iter1 = this.keySet().iterator();
            while (iter1.hasNext()) {
                result += this.get(iter1.next()).signum();
            } // while iter1
        } // no constant
    /*
        if (result == 0) {
        } else if (result > 0) {
            result = 1;
        } else {
            result = -1;
        }
    */
        return result;
    } // polarity

    /** Determines whether the Polynomial is a sum of like powers 
     *  of different variables, without a constant, for example 4*a^2 + 4*b^2 -4*c^2 = 0
     *  @return 0 if the Polynomial is no sum of like powers,
     *  or the common factor &gt;= 1 of all variables with the same exponent (4 in the example)
     */
    public BigInteger isPowerSum() {
        BigInteger result = null;
        int exp           = 0;
        boolean first     = true;
        boolean busy      = true;
        Iterator<String> iter1 = this.keySet().iterator();
        while (busy && iter1.hasNext()) {
            Monomial mono = this.get(iter1.next());
            if (mono.size() != 1) { // =0 : hasConstant, >1: more than 1 variable
                busy   = false;
                result = null;
            } else { // a single variable
                if (first) {
                    first  = false;
                    result = mono.getCoefficient().abs();
                    exp    = mono.getExponent(mono.firstName());
                } else { // ! first
                    if (! result.equals(mono.getCoefficient().abs())
                            || exp !=   mono.getExponent(mono.firstName())) {
                        busy   = false;
                        result = null;
                    }
                } // ! first
            } // a single variable
        } // while iter1
        return result;
    } // isPowerSum
    /*-------------- arithmetic operations -------------------------*/

    /** Adds a {@link Monomial} to this polynomial.
     *  @param monomial2 add this monomial
     *  @return reference to <em>this</em> polynomial that was modified
     */
    protected Polynomial addTo(Monomial monomial2) {
        String sig2 = monomial2.signature();
        Monomial monomial1 = monomials.get(sig2);
        if (monomial2.isZero()) {
            // ignore "+ 0"
            if (debug >= 2) {
                System.out.println("+ 0 ignored");
            }
        } else if (monomial1 == null) {
            monomials.put(sig2, monomial2.clone());
        } else {
            monomial1.addTo(monomial2);
            if (monomial1.isZero()) {
                monomials.remove(sig2);
            }
        }
        return this;
    } // addTo(Monomial)

    /** Clone and adds all monomials of another polynomial to this polynomial.
     *  @param poly2 add this polynomial
     *  @return reference to a new object, the sum
     */
    public Polynomial add(Polynomial poly2) {
        Polynomial result = this.clone();
        Iterator<String> iter2 = poly2.keySet().iterator();
        while (iter2.hasNext()) {
            String sig2 = iter2.next();
            result.addTo(poly2.get(sig2));
        } // while iter2
        return result;
    } // add(Polynomial)

    /** Subtracts a {@link Monomial} from this polynomial.
     *  @param monomial2 subtract this monomial
     *  @return reference to <em>this</em> polynomial that was modified
     */
    protected Polynomial subtractFrom(Monomial monomial2) {
        String sig2 = monomial2.signature();
        Monomial monomial1 = monomials.get(sig2);
        if (monomial2.isZero()) {
            // ignore "- 0"
        } else if (monomial1 == null) {
            monomials.put(sig2, monomial2.clone().negate());
        } else {
            monomial1.subtractFrom(monomial2);
            if (monomial1.isZero()) {
                monomials.remove(sig2);
            }
        }
        return this;
    } // subtractFrom(Monomial)

    /** Inverts the signs of the monomials of <em>this</em> polynomial.
     *  @return reference to <em>this</em> modified object.
     */
    protected Polynomial negativeOf() {
        Iterator <String> titer = monomials.keySet().iterator();
        while (titer.hasNext()) {
            Monomial monomial = monomials.get(titer.next());
            monomial.setCoefficient(monomial.getCoefficient().negate());
        } // while titer
        return this;
    } // negativeOf

    /** Clone and subtract all monomials of another polynomial from this polynomial.
     *  @param poly2 subtract this polynomial
     *  @return reference to a new object, the difference
     */
    public Polynomial subtract(Polynomial poly2) {
        Polynomial result = this.clone();
        Iterator<String> iter2 = poly2.keySet().iterator();
        while (iter2.hasNext()) {
            String sig2 = iter2.next();
            result.subtractFrom(poly2.get(sig2));
        } // while iter2
        return result;
    } // subtract(Polynomial)

    /** Multiplies all monomials of this polynomial with a {@link Monomial}.
     *  @param monomial2 multiply with this monomial
     *  @return reference to <em>this</em> polynomial which was modified
     */
    protected Polynomial multiplyBy(Monomial monomial2) {
        Iterator<String> iter = monomials.keySet().iterator();
        if (monomial2.isZero()) {
            monomials.clear(); // an empty map indicates constant 0
        } else {
            while (iter.hasNext()) {
                String sig1 = iter.next();
                monomials.put(sig1, monomials.get(sig1).multiply(monomial2));
            } // while iter
        }
        return this;
    } // multiplyBy(Monomial)

    /** Clone and multiply this polynomial with another Polynomial.
     *  @param poly2 multiply with this polynomial
     *  @return reference to new object, the product
     */
    public Polynomial multiply(Polynomial poly2) {
        Polynomial result = new Polynomial(); // empty = 0
        Iterator<String> iter1 = this .keySet().iterator();
        while (iter1.hasNext()) {
            String sig1 = iter1.next();
            Iterator<String> iter2 = poly2.keySet().iterator();
            while (iter2.hasNext()) {
                String sig2 = iter2.next();
                result.addTo(this.get(sig1).multiply(poly2.get(sig2)));
            } // while iter2
        } // while iter1
        return result;
    } // multiply(Polynomial)

    /** Clone and raise a Polynomial to some power.
     *  @param exponent raise to this power &gt;= 0; exponents 0 and 1 are handled individually.
     *  @return reference to a <em>new</em> Polynomial
     */
    public Polynomial pow(int exponent) {
        Polynomial result = null;
        if (exponent < 0) {
            throw new IllegalArgumentException("exponent may not be negative");
        } else if (exponent == 0) {
            result = new Polynomial(new Monomial("1"));
        } else if (exponent == 1) {
            result = this.clone();
        } else { // >= 2 : multiply as often;
            // for higher exponents, this could be improved by some "powers of 2 evaluation" of the exponent
            result = this.clone();
            while (exponent > 1) {
                result = result.multiply(this);
                exponent --;
            } // while exponent
        } // >= 2
        return result;
    } // pow

    /** Divides all monomials of this polynomial by a {@link Monomial}.
     *  The caller should ensure that all monomials are in fact divisible
     *  by <em>monomial2</em>, otherwise an exception will be thrown.
     *  @param monomial2 divide by this monomial
     *  @return reference to <em>this</em> polynomial which was modified
     */
    protected Polynomial divideBy(Monomial monomial2) {
        if (monomial2.isZero()) {
            throw new ArithmeticException();
        } else {
            Iterator<String> iter = monomials.keySet().iterator();
            while (iter.hasNext()) {
                String sig1 = iter.next();
                if (debug > 0) {
                    System.out.println("Polynomial (" + this.toString() + ").divideBy(" + monomial2.toString()
                            + ", sig1=" + sig1 + ", get(sig1)=" + monomials.get(sig1));
                }
                monomials.put(sig1, monomials.get(sig1).divide(monomial2));
            } // while iter
        }
        return this;
    } // divideBy(Monomial)

    /** Clone and divide a Polynomial by another Polynomial
     *  assuming that there is no rest.
     *  This method is needed only for {@link PolynomialParser},
     *  and <em>poly2</em> must be a {@link Monomial} which divides
     *  evenly in all monomials of <em>this</em> polynomial.
     *  @param poly2 divide by this polynomial
     *  @return quotient
     */
    public Polynomial divide(Polynomial poly2) {
        if (poly2.keySet().size() != 1) {
            throw new IllegalArgumentException("divisor may have only one monomial");
        }
        Polynomial result = this.clone();
        result.divideBy(poly2.leadTerm()); // it is the only one
        return result;
    } // divide(Polynomial)

    //===============================================
    // Gröbner bases, Buchberger's algorithm
    //===============================================
    /** Compute the so-called S-polynomial S(f,g) of Buchberger's algorithm.
     *  @param poly2 <em>poly2</em> is g and <em>this</em> is f
     *  @return S(f,g) = lcm(lt(f),lt(g)) / lt(f) * f - lcm(lt(f),lt(g)) / lt(g) * g
     */
    public Polynomial s_Polynomial(Polynomial poly2) {
        Monomial ltf    = this .leadTerm();
        Monomial ltg    = poly2.leadTerm();
        Monomial lcmfg  = ltf.lcm(ltg);
        Monomial monof  = lcmfg.divide(ltf);
        Monomial monog  = lcmfg.divide(ltg);
        return (new Polynomial(monof)).multiply(this).subtract((new Polynomial(monog)).multiply(poly2));
    } // s_Polynomial(Polynomial)

    /** Divide a multivariate Polynomial by a set of other multivariate {@link Polynomial}s,
     *  and return the rest.
     *  <em>this</em> is the Polynomial f to be divided by the Polynomials F.
     *  See http://de.wikipedia.org/wiki/Benutzer:Ap86/Artikelwerkstatt
     *  @param polyF divide by these polynomials
     *  @param store whether to compute the resulting quotient Polynomials Ai
     *  and store them back into <em>polyF</em>
     *  @return <em>polyr</em>, the rest
     */
    public Polynomial multiDivide(ArrayList<Polynomial> polyF, boolean store) {
        Polynomial polys = this.clone();
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
                lts = polys.leadTerm();
                Monomial ltf  = polyF.get(ipoly).leadTerm();
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
                        System.err.println("multiDivide error: "
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
            System.err.println("infinite loop in (" + this.toString() + ").multiDivide(...)");
        } // loopCheck
        if (store) {
            if (debug >= 0 && store) {
                System.out.print("multipleDivide: " + this.toString() + " = ");
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
                        Polynomial sijG = polyG.get(ipG).s_Polynomial(polyG.get(jpG));
                        Polynomial rest = sijG.multiDivide(polyG, store);
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
    /*-------------- lightweight methods -----------------------------*/

    /** Returns a slash prepended list of the variables, in increasing exponent order
     *  @return "/a1,a0/a2,a3/b4;" for "+ 17*a0^2*a1 + a2^2*a3^3 - 4*b4", for example
     */
    public String listVariables() {
        StringBuffer result = new StringBuffer(2048);
        Iterator<String> iter = monomials.keySet().iterator();
        while (iter.hasNext()) {
            String sig = iter.next();
            result.append(sig.substring(sig.indexOf('/')));
        } // while iter
        result.append(';');
        return result.toString();
    } // listVariables

    /** Returns a new polynomial constructed from a string representation, possibly with an
     *  error message inserted at the point where parsing could not proceed.
     *  @param input the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return a reference to a new polynomial
     */
    public Polynomial parse(String input) {
        return (new PolynomialParser()).parseFrom(input);
    } // parse

    //-----------------------------------------------

    /** Gets a map from all variable names (key) to <em>null</em> (value).
     *  @return map of variable names mapped to <em>null</em>
     */
    public VariableMap getVariableMap() {
        return getVariableMap(true);
    } // getVariableMap()

    /** Gets a map from all variable names in <em>this</em> Polynomial (the key)
     *  to some string value.
     *  @param upperSubst whether uppercase variables should be returned in the map
     *  @return map of variable names mapped to <em>null</em>
     */
    public VariableMap getVariableMap(boolean upperSubst) {
        return getVariableMap(null, upperSubst);
    } // getVariableMap(boolean)

    /** Gets a map from all variable names (key) to some string value.
     *  @param value all variable names are mapped to this (constant) value, or null;
     *  if the value matches a single non-word character ("*", "%" or similiar),
     *  it is replaced by the variable's name
     *  @return map of variable names mapped to a string
     */
    public VariableMap getVariableMap(String value) {
        return getVariableMap(value, true);
    } // getVariableMap(String)

    /** Gets a map from all variable names in <em>this</em> Polynomial (the key)
     *  to some string value.
     *  @param value all variable names are mapped to this (constant) value, or null;
     *  if the value matches a single non-word character ("*", "%" or similiar),
     *  it is replaced by the variable's name
     *  @param upperSubst whether uppercase variables should be returned in the map
     *  (default: true)
     *  @return map of variable names mapped to a string
     */
    public VariableMap getVariableMap(String value, boolean upperSubst) {
        VariableMap result = new VariableMap();
        Iterator <String> titer = monomials.keySet().iterator();
        while (titer.hasNext()) { // over all signatures of these monomials
            String tsig = titer.next();
            Monomial monomial = monomials.get(tsig);
            Iterator <String> viter = monomial.keySet().iterator();
            while (viter.hasNext()) { // over all variables in a monomial
                String varName = viter.next();
                if (upperSubst || varName.compareTo("a") >= 0) {
                    result.put(varName, value != null && value.matches("\\W") // "*", "%" or similiar non-word character
                            ? varName
                            : value);
                } // if upperSubst
            } // while viter
        } // while titer
        return result;
    } // getVariableMap(String, boolean)

    /** Gets a map from all variable names in <em>this</em> Polynomial (the key)
     *  to the expression "0+1*x", where "x" is a placeholder for the variable names.
     *  Caution: this expression is required by {@link VariableMap#refineExpressions}.
     *  @return map of variable names mapped to an expression string
     */
    public VariableMap getExpressionMap() {
        return getExpressionMap("0+1*x", true); // REFINED_FORM
    } // getExpressionMap()

    /** Gets a map from all variable names in <em>this</em> Polynomial (the key)
     *  to an expression involving this variable.
     *  @param value expression with "x" as placeholder for the variable names
     *  @return map of variable names mapped to an expression string
     */
    public VariableMap getExpressionMap(String value) {
        return getExpressionMap(value, true);
    } // getExpressionMap(String)

    /** Gets a map from all variable names in <em>this</em> Polynomial (the key)
     *  to an expression involving this variable.
     *  @param value expression with "x" as placeholder for the variable names
     *  @param upperSubst whether uppercase variables should be returned in the map
     *  (default: true)
     *  @return map of variable names mapped to an expression string
     */
    public VariableMap getExpressionMap(String value, boolean upperSubst) {
        VariableMap result = new VariableMap();
        Iterator <String> titer = monomials.keySet().iterator();
        while (titer.hasNext()) { // over all signatures of these monomials
            String tsig = titer.next();
            Monomial monomial = monomials.get(tsig);
            Iterator <String> viter = monomial.keySet().iterator();
            while (viter.hasNext()) { // over all variables in a monomial
                String varName = viter.next();
                if (upperSubst || varName.compareTo("a") >= 0) {
                    result.put(varName, value.replaceAll("x", varName));
                } // if upperSubst
            } // while viter
        } // while titer
        return result;
    } // getExpressionMap(String, boolean)

    /** Gets a map from all variable names (key) in <em>this</em> Polynomial
     *  to the variable names in another Polynomial. Both sets of
     *  variables must have the same size and order.
     *  @param factor linear factor for <em>var2</em>
     *  @param poly2 the variable names in that Polynomial are the new values to be substituted
     *  @return map of variable names mapped to the variable names of <em>poly2</em>
     */
    public VariableMap getVariableMap(String factor, Polynomial poly2) {
        boolean upperSubst = true;
        VariableMap result = new VariableMap();
        VariableMap map1   = this .getVariableMap(upperSubst);
        VariableMap map2   = poly2.getVariableMap(upperSubst);
        if (map1.size() == map2.size()) {
            Iterator <String> iter1 = map1.keySet().iterator();
            Iterator <String> iter2 = map2.keySet().iterator();
            while (iter1.hasNext()) { // over all key variables in map1
                String var1 = iter1.next();
                String var2 = iter2.next();
                result.put(var1, "(" + factor + "*" + var2 + ")");
            } // while iter1
        } // if sizes ==
        return result;
    } // getVariableMap(Poly)

    //-----------------------------------------------

    /** Determines the number of different variables in the polynomial.
     *  @return count of different variables, &gt;= 0
     */
    public int getVariableCount() {
        return getVariableMap().size();
    } // getVariableCount

    /** Determines whether there is exactly one variable in the polynomial.
     *  @return true if there is only one variable, false otherwise
     */
    public boolean isUniVariate() {
        return getVariableMap().size() == 1;
    } // isUniVariate

    /** Gets the greatest common divisor of the coefficients of all variable monomials,
     *  if they are integral, or 1.
     *  @return common divisor
     */
    public BigInteger gcdVariables() {
        return gcdCoefficients(false);
    } // gcdVariables

    /** Gets the greatest common (positive) divisor of the coefficients of the variable monomials,
     *  or of all monomials if they are integral, or +1.
     *  @param all whether all monomials should be investigated, or the non-constant ones only
     *  @return common divisor &gt;= 1
     */
    private BigInteger gcdCoefficients(boolean all) {
        BigInteger result = BigInteger.ONE;
        Iterator <String> titer = monomials.keySet().iterator();
        int index = 0;
        while (titer.hasNext()) {
            Monomial monomial = monomials.get(titer.next());
            if (all || ! monomial.isConstant()) {
                if (index == 0) { // first monomial
                    result = monomial.getCoefficient().abs();
                } else { // following variables
                    result = result.gcd(monomial.getCoefficient());
                } // following
                index ++;
            } // ! isConstant
        } // while titer
        return result;
    } // gcdCoefficients

    /*---------------- heavyweight methods ----------------------*/
    /** Determine whether two variable names of <em>this</em> Polynomial
     *  are interchangeable (equivalent).
     *  @param name1 name of 1st variable
     *  @param name2 name of 2nd variable
     *  @return true of the two variable names can be interchanged in the polynomial
     *  without loss of structure
     */
    protected boolean areTransposable(String name1, String name2) {
        boolean result = true; // irrelevant
        VariableMap varm2 = new VariableMap();
        varm2.put(name1, name2);
        varm2.put(name2, name1);
        Polynomial poly2 = substitute(varm2);
        result = this.add(poly2).isZero() || this.subtract(poly2).isZero();
        return result;
    } // areTransposable

    /** Denotes transposition equivalence classes which contain only one single element */
    public final static int LONELY = 1947;
    
    /** Determines the equivalence classes (subsets) of variables
     *  which can be interchanged (renamed) in <em>this</em> Polynomial,
     *  while the polynomial's structure is still maintained.
     *  @return an {@link Vector} of indexes into a fictitious array of the sorted variable names of
     *  <em>this</em> Polynomial. The indexes start with 0, but they are not necessarily consecutive.
     *  Two variable names having the same index may be interchanged/renamed in the Polynomial
     *  without loss of structure.
     *  <p>
     *  Examples:
     *  <pre>
     *  (new Polynomial("a^3 +   b^3 +   c^3 - d^3 = 0")).getTransposition() -> [0, 0, 0, 3]
     *  (new Polynomial("a^3 + 2*b^3 + 3*c^3 - d^3 = 0")).getTransposition() -> [0, 1, 2, 3]
     *  </pre>
     */
    public Vector getTransposableClasses() {
        VariableMap varmt = getVariableMap();
        String [] names = varmt.getNameArray();
        int len = names.length;
        Vector result = new Vector(len);

        int itran = 0;
        while (itran < len) { // preset to default (natural, increasing from 0): no equivalent names found
            result.set(itran, itran);
            itran ++;
        } // while presetting
        itran = 0;
        while (itran < len) { // search for interchangeable names
            boolean lonely = true; // whether the equivalence class contains this element only
            int jtran = itran + 1;
            while (jtran < len) { //  those not yet investigated
                if (result.get(jtran) >= jtran && areTransposable(names[itran], names[jtran])) {
                    result.set(jtran, itran);
                    lonely = false;
                } // areTransposable
                jtran ++;
            } // while jtran
        /*
            if (false && lonely) { // equivalence class contains this element only
                result.set(itran, Polynomial.LONELY);
            } // lonely
        */
            itran ++;
        } // while searching
        return result;
    } // getTransposableClasses()

    /** Takes all variables from <em>monomial</em> and
     *  creates a sum of {@link Monomial}s for all different powers of these variables
     *  occurring in <em>this</em> polynomial.
     *  @param monomial2 a multiplication of all desired variables (names with exponent 1 and constant +1)
     *  @return polynomial whose monomials have constant &gt;= +1, and which consists of
     *  all different powers of the variables in <em>monomial</em>
     */
    public Polynomial getVariablePowers(Monomial monomial2) {
        Polynomial result = new Polynomial();
        Monomial monomial = null;
        Iterator <String> titer = this.monomials.keySet().iterator();
        while (titer.hasNext()) { // over all monomials
            monomial = this.monomials.get(titer.next());
            result.addTo(monomial.getVariablePowers(monomial2));
        } // while titer
        Iterator <String> riter = result.monomials.keySet().iterator();
        while (riter.hasNext()) { // over all monomials
            result.monomials.get(riter.next()).setCoefficient(BigInteger.ONE);
        } // while riter
        return result;
    } // getVariablePowers

    /** Takes the variable names from <em>monomial</em>,
     *  creates an empty {@link RelationSet} and, for all {@link Monomial}s that
     *  occur as combinations of powers of the selected variables in <em>this</em>
     *  Polynomial, adds a new {@link Polynomial} to the set which has the
     *  monomial as key and the factors of the monomial as terms.
     *  @param monomial2 a multiplication of all desired variables (names with exponent 1 and constant +1)
     *  @return a RelationSet with one Polynomial for each variable combination
     */
    public RelationSet groupBy(Monomial monomial2) {
        RelationSet result = new RelationSet();
        Polynomial poly3 = this.getVariablePowers(monomial2);
        Iterator <String> piter3 = poly3.monomials.keySet().iterator();
        while (piter3.hasNext()) { // over all combinations of powers of variables
            Monomial monomial3 = poly3.monomials.get(piter3.next()); // specific combination
            Polynomial poly4 = new Polynomial();
            Iterator <String> piter1 = this.monomials.keySet().iterator();
            while (piter1.hasNext()) { // over all monomials of <em>this</em> polynomial
                Monomial monomial5 = this.monomials.get(piter1.next());
                if (monomial5.getVariablePowers(monomial2).equals(monomial3)) {
                    poly4.addTo(monomial5.getFactorOf(monomial3));
                }
            } // while titer
            poly4.setFactor(monomial3);
            result.insert(poly4);
        } // while titer
        return result;
    } // groupBy

    /** Extracts a new {@link Polynomial} consisting of all monomials
     *  whose coefficient is not divisible by the parameter <em>factor</em>.
     *  @param factor the common constant factor of the other monomials
     *  @return polynomial with monomials from <em>this</em> polynomial
     */
    public Polynomial getRest(BigInteger factor) {
        Polynomial result = new Polynomial();
        Monomial monomial = null;
        Iterator <String> titer = this.monomials.keySet().iterator();
        while (titer.hasNext()) { // over all monomials
            monomial = this.monomials.get(titer.next());
            if (! monomial.getCoefficient().mod(factor).equals(BigInteger.ZERO)) { // indivisible
                result.addTo(monomial); // .clone()); ??
            } // if indivisible
        } // while titer
        return result;
    } // getRest

    /** Computes a characterization of the polynomial
     *  suitable for normalization and equivalence checking.
     *  This characterization is independant of the monomials' variable names and of the signs of the monomials.
     *  @return a sorted map whose keys are the {@link Monomial#characteristic} values of the monomials,
     *  and the values are the sub-polynomials consisting of all monomials with that characteristic value
     */
    public TreeMap<String, Polynomial> characterize() {
        TreeMap <String, Polynomial> resultMap = new TreeMap<String, Polynomial>();
        Iterator <String> titer = this.monomials.keySet().iterator();
        int count = 0;
        while (titer.hasNext()) { // over all monomials
            Monomial monomial = this.monomials.get(titer.next());
            String tchic = monomial.characteristic();
            Polynomial subPoly = resultMap.get(tchic);
            if (subPoly == null) {
                subPoly = new Polynomial(monomial);
                resultMap.put(tchic, subPoly);
            } else {
                subPoly.addTo(monomial);
            }
        } // while titer
        return resultMap;
    } // characterize

    /** Normalizes the coefficients and the signs of the monomials,
     *  and returns <em>this</em> modified polynomial.
     *  Normalization is a predecessor step for equivalence checking, and proceeds
     *  in this sequence:
     *  <ul>
     *      <li>divide all coefficients by their greatest common divisor (GCD)</li>
     *  </ul>
     *  @return reference to <em>this</em> modified object
     */
    public Polynomial normalize() {
        BigInteger divisor = this.gcdCoefficients(true);
        if (divisor.compareTo(BigInteger.ONE) != 0 && this.hasVariable()) { // divide by GCD if > 1
           this.divideBy(new Monomial(divisor));
        }
        return this;
    } // normalize

    /** Determines whether the parameter polynomial is identical with <em>this</em> polynomial,
     *  including variable names and signs of monomials.
     *  @param poly2 second comparision operand
     *  @return whether the string representations are the same
     */
    public boolean equals(Polynomial poly2) {
        return this.toString().equals(poly2.toString());
    } // equals

    /** Tries to establish an affine mapping between the variables
     *  of <em>this</em> Polynomial and a 2nd Polynomial.
     *  The absolute coefficients of the 2nd Polynomial should be greater or equal
     *  than the absolute coefficients of this Polynomial.
     *  The set of variable names in both Polynomials must be identical.
     *  Currently, only univariate Monomials are treated properly,
     *  and the offsets <em>bi</em> are assumed to be 0.
     *  @param poly2 second comparision operand
     *  @return a map from this set of variables to the 2nd set
     *  in the form (ai*xi + bi) -&gt; xi'
     *  <pre>
     *  this  = x^4     - y^4    - z^2  = 0
     *  poly2 = 16*x^4  - 16*y^4 - z^2  = 0
     *  ------------------------------------------------
     *  this.affineMap(poly2) = { x -> 2*x, y -> 2*y, z ->   z }  AND
     *  poly2.affineMap(this) = { x ->   x, y ->   y, z -> 4*z }
     *  </pre>
     */
    public VariableMap affineMap(Polynomial poly2) {
        boolean success = true;
        VariableMap result = this.getVariableMap();
        try {
            Set<String> set1 = this .keySet();
            Set<String> set2 = poly2.keySet();
            if (set1.size() == set2.size()) {
                Iterator <String> iter1 = set1.iterator();
                Iterator <String> iter2 = set2.iterator();
                boolean busy = true;
                while (success && busy && iter1.hasNext()) { // over all signatures
                    String sig1 = iter1.next();
                    String sig2 = iter2.next();
                    busy = sig1.equals(sig2);
                    if (busy) { // sigs ==
                        Monomial mono1 = this .get(sig1);
                        Monomial mono2 = poly2.get(sig2);
                        BigInteger coeff1 = mono1.getCoefficient();
                        BigInteger coeff2 = mono2.getCoefficient();
                        if (! sig1.equals(Monomial.CONSTANT_SIGNATURE)) { // skip constant
                            if (coeff2.mod(coeff1.abs()).equals(BigInteger.ZERO)) { // coeff2 is multiple of coeff1
                                coeff2 = coeff2.divide(coeff1);
                                Iterator<String> miter1 = mono1.keySet().iterator();
                                String var1 = miter1.next();
                                int exp1 = mono1.getExponent(var1);
                                BigInteger factor = coeff2.equals(BigInteger.ONE)
                                        ? BigInteger.ONE
                                        : BigIntegerUtil.root(coeff2, exp1);
                                if (factor.compareTo(BigInteger.ONE) >= 0) { // 1 or root > 1
                                    String value = result.get(var1);
                                    if (value == null) { // new
                                        result.put(var1, "(" + factor.toString() + "*" + var1 + ")");
                                    } else { // previously stored - must be the same
                                        success = success && value.startsWith("(" + factor.toString() + "*");
                                    } // previously
                                    // factor is root
                                } else { // factor is no root
                                    success = false;
                                }
                            } else {
                                success = false;
                            }
                            // ! constant
                        } else { // compare the constants
                            success = success && (coeff1.equals(coeff2));
                        }
                        // if sigs ==
                    } else {
                        success = false;
                    }
                } // while iter1
                // keySets of same size
            } else {
                success = false;
            }
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
        }
        return success ? result : null;
    } // affineMap

    /** For a variable, return the - univariate - {@link Monomial}s
     *  in <em>this</em> Polynomial
     *  which have [0] the maximum exponent - 1 of that variable,
     *  and [1] the maximum exponent of the variable,
     *  or the constant 0 if such monomial(s) do not exist.
     *  @param vname variable name
     *  @return monomials: [0] = max-1 exponent, [1] = max exponent
     */
    public Monomial[] getHighTerms(String vname) {
        Monomial[] result = new Monomial[]{ null, null }; // [0] = max-1, [1] = max exponent
        Iterator <String> titer = monomials.keySet().iterator();
        int maxExp = 0; // lowest possible exponent
        while (titer.hasNext()) {
            Monomial mono1 = this.get(titer.next());
            if (mono1.size() == 1) { // univariate
                int exp = mono1.getExponent(vname);
                if (exp > maxExp) { // this is higher
                    maxExp = exp;
                } // was higher
            } // univariate
        } // while titer
        if (maxExp > 0) {
            String prefix = "/" + vname + ".";
            result[1] = this.get(prefix + String.format("%02x", maxExp    ));
            result[0] = this.get(prefix + String.format("%02x", maxExp - 1));
        } // not "00"
        if (result[1] == null) {
            result[1] =  new Monomial("0");
        }
        if (result[0] == null) {
            result[0] =  new Monomial("0");
        }
        return result;
    } // getHighTerms

    /** Tries to establish an affine mapping between the variables
     *  of <em>this</em> Polynomial and a 2nd Polynomial.
     *  The absolute coefficients of the 2nd Polynomial should be greater than
     *  or equal to the corresponding absolute coefficients of this Polynomial.
     *  The set of variable names in both Polynomials must be identical.
     *  Currently, only univariate Monomials are treated properly.
     *  @param poly2 second comparision operand
     *  @return a map from this set of variables to the 2nd set
     *  in the form (ai*xi + bi) -&gt; xi', or null if no such map exists.
     <pre>
     Examples:
     this  = x^4     - y^4    - z^2  = 0
     poly2 = 16*x^4  - 16*y^4 - z^2  = 0
     ------------------------------------------------
      poly2   .isMappableTo(this ) = { x -> 2*x, y -> 2*y, z ->   z }  AND
     (16*this).isMappableTo(poly2) = { x ->   x, y ->   y, z -> 4*z }

     ("4 + 32*x + 96*x^2 + 128*x^3 + 64*x^4 - 64*y^4 - 4*z^2").isMappableTo("4*x^4 - 4*y^4 - z^2") = {x=2*x+1,y=2*y+0,z=2*z+0}
     </pre>
     */
    public VariableMap isMappableTo(Polynomial poly2) {
        int debugLimit = 1;
        VariableMap result = new VariableMap();
        boolean busy = true;
        VariableMap vmap1 = this .getExpressionMap();
        VariableMap vmap2 = poly2.getExpressionMap();
        try {
            busy = vmap1.size() == vmap2.size();
            if (busy) { // same number of variables
                Iterator <String> iter1 = vmap1.keySet().iterator();
                Iterator <String> iter2 = vmap2.keySet().iterator();
                TreeMap<String, Monomial[]> hits1 = new TreeMap<String, Monomial[]>(); // map variable names to their highTerms
                TreeMap<String, Monomial[]> hits2 = new TreeMap<String, Monomial[]>(); // map variable names to their highTerms
                Monomial highLcm2 = new Monomial("1"); // least common multiple of the highest exponents of all variables
                while (busy && iter1.hasNext()) { // over all variable names
                    String vname1 = iter1.next();
                    String vname2 = iter2.next();
                    busy = vname1.equals(vname2); // variable names are parallel
                    if (busy) {
                        Monomial[] hit1 = this .getHighTerms(vname1);
                        Monomial[] hit2 = poly2.getHighTerms(vname2);
                        hits1.put(vname1, hit1);
                        hits2.put(vname2, hit2);
                        // this.isMappableTo(poly2) => a*x1 + b = x2; a = root(x2.coeff / x1.coeff, exp)
                        int exp1 = hit1[1].getExponent(vname1);
                        int exp2 = hit2[1].getExponent(vname2);
                        busy = exp1 == exp2;
                        if (busy) { // same exponents
                            BigInteger pn = hit1[1].getCoefficient();
                            BigInteger qn = hit2[1].getCoefficient();
                            BigInteger quotRest[] = pn.divideAndRemainder(qn);
                            busy = quotRest[1].equals(BigInteger.ZERO);
                            if (busy) { // even divisible
                                BigInteger fact = BigIntegerUtil.root(quotRest[0], exp1);
                                busy = ! fact.equals(BigInteger.ZERO);
                                if (busy) { // root exists
                                    BigInteger fact_1 = fact.pow(exp1 - 1);
                                    BigInteger summ[] = hit1[0].getCoefficient() // pn-1
                                            .subtract(  hit2[0].getCoefficient().multiply(fact_1))
                                            .divideAndRemainder(BigInteger.valueOf(exp1)
                                            .multiply(fact_1)
                                            .multiply(qn)
                                            );
                                    busy = summ[1].equals(BigInteger.ZERO);
                                    if (busy) { // summand divisible
                                        result.put(vname2, fact.toString() + "*" + vname1 + "+" + summ[0].toString());
                                    } else {
                                        if (debug >= debugLimit) {
                                            System.out.println("isMappableTo: indivisible summand for " + vname2);
                                        }
                                    } // summand divisible
                                    // root exists
                                } else { // no root
                                    if (debug >= debugLimit) {
                                        System.out.println("isMappableTo: root, "
                                            + hit1[1].getCoefficient().toString() + "/"
                                            + hit2[1].getCoefficient().toString() + " = " + quotRest[0].toString());
                                    }
                                }
                                // even divisible
                            } else {
                                if (debug >= debugLimit) {
                                    System.out.println("isMappableTo: quotRest[1] " + quotRest[1].toString());
                                }
                            }
                            // same exponents
                        } else {
                            if (debug >= debugLimit) {
                                System.out.println("isMappableTo: exp1 " + exp1 + " != exp2 " + exp2);
                            }
                        }
                        // parallel variable names
                    } else {
                        if (debug >= debugLimit) {
                            System.out.println("isMappableTo: vname1 " + vname1 + " != vname2 " + vname2);
                        }
                    }
                } // while iter1
                // same number of variables
            } else {
                if (debug >= debugLimit) {
                    System.out.println("isMappableTo: size " + vmap1.size() + " != " + vmap2.size());
                }
            }
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
        }
        return busy ? result : null;
    } // isMappableTo

    /** Determines whether <em>this</em> Polynomial can be transformed into <em>poly2</em>
     *  by multiplying the constants of the monomials in <em>poly2</em> by 
     *  some factors &gt; 1.
     *  @param poly2 target Polynomial
     *  @return true if such factors exist, false otherwise
     */
    public boolean isGrownFrom(Polynomial poly2) {
        boolean result = true; // assume success
        int psize1 =  this .size();
        if (psize1 == poly2.size()) {
            Iterator <String> iter1 = this .keySet().iterator();
            Iterator <String> iter2 = poly2.keySet().iterator();
            while (result && iter1.hasNext()) {
                Monomial mono1 = this .get(iter1.next());
                Monomial mono2 = poly2.get(iter2.next());
                Monomial factor  = mono1.divide(mono2);
                if (factor == null || ! factor.isConstant() || factor.getCoefficient().compareTo(BigInteger.ONE) < 0) { // no factor
                    result = false; 
                } // no factor
            } // while iter1
        } // same size
        return result;
    } // isGrownFrom

    /** Determines whether <em>this</em> polynomial can be transformed into <em>poly2</em>
     *  by an affine map from the variables in <em>this</em> to the variables in <em>poly2</em>.
     *  @param poly2 target polynomial
     *  @return string representation of the mapping from <em>this</em> to <em>poly2<em>, or <em>null</em>
     *  if no mapping could be determined
     */
    public String similiarity(Polynomial poly2) {
        String message = null;
        if (debug >= 2) {
            System.out.println(this .toString().replaceAll("_\\d+", "") + " isLike " );
            System.out.println(poly2.toString().replaceAll("_\\d+", "") + " --> " +
                this .normalize().toString().replaceAll("_\\d+", "").equals(
                poly2.normalize().toString().replaceAll("_\\d+", "")       )

            );
        } // debug
        boolean result = this.size() == poly2.size();
        if (true || result) {
            VariableMap mapt = this.getVariableMap("1", poly2);
            result = this.substitute(mapt).equals(poly2);
            if (! result) {
                if (true) { // old code
                    mapt = this.affineMap   (poly2);
                    result = mapt != null;
                    if (result) {
                        message = "affine map: "     + mapt.toString();
                    }
                } else { // new code
                    mapt = this.isMappableTo(poly2);
                    result = mapt != null;
                    if (result) {
                        message = "is mappable to: " + mapt.toString();
                    }
                } // new
            } else {
                message = "same";
            }
        } // if sizes ==
        return message;
    } // similiarity

    /** Determines whether two polynomials are equivalent, that is whether
     *  they differ by the names of the variables
     *  and eventually by a factor of (-1) only.
     *  The <em>renameMap</em> is set as a side effect if the comparision is successful.
     *  @param poly2 second comparision operand
     *  @return true if the two polynomials are equivalent, false otherwise
     */
    public boolean isEquivalent(Polynomial poly2) {
        boolean result = false; // assume failure
        this .normalize();
        poly2.normalize();
        TreeMap<String, Polynomial> charzn1 = this .characterize();
        TreeMap<String, Polynomial> charzn2 = poly2.characterize();

        // compare number of characteristics in both polynomials
        if (charzn1.size() != charzn2.size()) {
            if (debug >= 1) {
                System.out.println("#csize " + charzn1   .size() + " != " + charzn2   .size());
            }
            // failure
        } else { // number of characteristics matches
            int signSum1 = this .polarity();
            int signSum2 = poly2.polarity();
            if (signSum1 != signSum2) { // signSums are >= 0
                if (debug >= 1) {
                    System.out.println("#sign " + signSum1 + " != " + signSum2);
                }
                // failure
            } else { // signSums match or are 0
                VariableMap renameMap1 = this .getVariableMap(); // variables of 'this' mapped to null
                VariableMap renameMap2 = poly2.getVariableMap(); // variables of 'poly2' mapped to null
                if (renameMap1.size() != renameMap2.size()) {
                    if (debug >= 1) {
                        System.out.println("#vsize " + renameMap1.size() + " != " + renameMap2.size());
                    }
                    // failure
                } else { // equal number of variables
                    boolean busy = true;
                    // 1st: compare the characterizations
                    Iterator<String> citer1 = charzn1.keySet().iterator();
                    Iterator<String> citer2 = charzn2.keySet().iterator();
                    busy = true;
                    while (busy && citer1.hasNext()) {
                        String chic1 = citer1.next();
                        String chic2 = citer2.next();
                        if (debug >= 1) {
                            System.out.println("#chic1");
                        }
                        if (! chic1.equals(chic2)) {
                            if (debug >= 1) {
                                System.out.println("#chic " + chic1 + " != " + chic2);
                            }
                            busy = false; // failure
                        } // chic comparision
                    } // while citer
                    int signLim = 2; // loop with 2: orginal signs; with 1; 'this' with opposite sign; 0: break loop
                    if (signSum1 > 0) {
                        signLim --; // do not negate 'this'
                    }
                    while (busy && signLim > 0) { // whole loop did not find a difference in characteristic of monomial
                        // permute through all variables in poly1 and replace them for poly2 variables
                        String[] variables1 = renameMap1.keySet().toArray(new String[0]);
                        int width = variables1.length;
                        if (debug >= 2) {
                            System.out.println("#busy3 " + width);
                        }
                        Permutator vperm = new Permutator(width);
                        while (! result && busy && vperm.hasNext()) {
                            if (debug >= 2) {
                                System.out.println("#busy4 " + width);
                            }
                            Iterator<String> viter2 = renameMap2.keySet().iterator();
                            int[] perms = vperm.next();
                            int iperm = 0;
                            if (debug >= 2) {
                                System.out.println("#busy5 " + perms.length);
                            }
                            while (iperm < width) {
                                if (debug >= 2) {
                                    System.out.println("#busy6 " + iperm);
                                }
                                renameMap2.put(viter2.next(), variables1[perms[iperm]]);
                                iperm ++;
                            } // while ip
                            Polynomial pren2 = poly2.substitute(renameMap2);
                            if (debug >= 1) {
                                System.out.println("#perm " + pren2.toString());
                            }
                            result = this.equals(pren2);
                        } // while vperm
                        if (debug >= 2) {
                            System.out.println("#busy8 ");
                        }
                        signLim --;
                        if (! result && signLim > 0) { // negate
                            this.negativeOf();
                        } // negate
                    } // while signLim
                } // equal number of variables
            } // equal signs
        } // equal number of characteristics
        return result;
    } // isEquivalent

    /** Substitutes all variable names with a constant number (0, 1 and so on),
     *  and returns a new polynomial.
     *  @param number value for all variables
     *  @return a new polynomial
     */
    public Polynomial substitute(int number) {
        return substitute(getVariableMap(String.valueOf(number), true));
    } // substitute(int)

    /** Substitutes all variable names with a constant number (0, 1 and so on),
     *  and returns a new polynomial.
     *  @param number value for all variables
     *  @param upperSubst whether uppercase variables should be substituted
     *  @return a new polynomial
     */
    public Polynomial substitute(int number, boolean upperSubst) {
        return substitute(getVariableMap(String.valueOf(number), upperSubst));
    } // substitute(int, boolean)

    /** Substitutes variable names with the expressions from a map (if they are not null),
     *  and returns a new polynomial.
     *  @param varMap map of variable names to (expressions or null);
     *  whether uppercase variables should be replaced must already be defined in this map
     *  @return a new polynomial
     */
    public Polynomial substitute(Map<String, String> varMap) {
        String result = this.toString(true); // full representation contains "*var^" for all variables
        Iterator <String> viter = varMap.keySet().iterator();
        while (viter.hasNext()) { // over all variables to be substituted
            String name = viter.next();
            if (name != null) {
                String expr = varMap.get(name);
                if (expr != null) {
                    result = result.replaceAll("\\*" + name + "\\^", "*(" + expr + ")^");
                }
            } // if valid mapping
        } // while viter
        return (new Polynomial()).parse(result);
    } // substitute(Map)

    /** Replaces all different variables by "x_y_z", and returns the corresponding polynomial.
     *  @return the polynomial with all variables replaced by a single variable.
     */
    public Polynomial mergeVariables() {
        VariableMap      varMap = this.getVariableMap();
        Iterator<String> viter  = varMap.keySet().iterator();
        String expr = "x_y_z"; // user should (can) not enter underscores, and solvers generate at most one '_'
        while (viter.hasNext()) { // over all variables in the map
            varMap.put(viter.next(), expr); // replace all by a unique variable
        } // while viter
        return this.substitute(varMap);
    } // mergeVariables

    /** Evaluates <em>this</em> Polynomial without any proof history, and returns whether
     *  <ul>
     *  <li>its (in)equality holds / is true       =&gt; SUCCESS</li>
     *  <li>the (in)equality fails                 =&gt; FAILURE</li>
     *  <li>the outcome cannot (yet) be decided    =&gt; UNKNOWN</li>
     *  </ul>
     *  The polynomial is tested for:
     *  <ul>
     *  <li>constant value, especially zero</li>
     *  <li>bias, that is the polynomial is known to be either greater or less than zero</li>
     *  <li>mismatch of the constant monomial and the greatest common divisor of all variable monomials</li>
     *  </ul>
     *  @param varMap the map of the variables how they were recently substituted
     *  in <em>this</em> Polynomial, or <em>null</em>
     *  @return text with the reason for the decision
     */
    public String evaluate(VariableMap varMap) {
        // this.normalize();
        StringBuffer result = new StringBuffer(64);
        BigInteger constant = this.getConstant();
        if (false) {
        } else if (isConstant()) {
            if (isZero()) {
                switch (getRelation()) {
                    default:
                    case EQ_0:
                    case GE_0:
                        result.append(VariableMap.SUCCESS);
                        result.append(" =0");
                        break;
                    case GT_0:
                    case NE_0:
                        result.append(VariableMap.FAILURE);
                        result.append(" !=0");
                        break;
                } // switch relation
            } else { // constant, but not 0
                switch (getRelation()) {
                    default:
                    case EQ_0:
                        result.append(VariableMap.FAILURE);
                        break;
                    case GE_0:
                    case GT_0:
                        result.append(constant.compareTo(BigInteger.ZERO) > 0 ? VariableMap.SUCCESS : VariableMap.FAILURE);
                        break;
                    case NE_0:
                        result.append(VariableMap.SUCCESS);
                        break;
                } // switch relation
                result.append(" constant=");
                result.append(constant.toString());
            }
    /* unsure whether biasedness should be tested
        } else if (isBiased()) { // > 0 or < 0
                switch (getRelation()) {
                    default:
                    case EQ_0:
                        result.append(VariableMap.FAILURE);
                        break;
                    case GE_0:
                    case GT_0:
                        result.append(constant.compareTo(BigInteger.ZERO) > 0 ? VariableMap.SUCCESS : VariableMap.FAILURE);
                        break;
                    case NE_0:
                        result.append(VariableMap.SUCCESS);
                        break;
                } // switch relation
                result.append(" biased");
    */

        } else if (constant.equals(BigInteger.ZERO)) {
                switch (getRelation()) {
                    default:
                    case EQ_0:
                    case GE_0:
                        result.append(VariableMap.SUCCESS);
                        if (varMap != null) {
                            result.append(" ");
                            result.append(varMap.getConstants()); // they are a solution when all variables are set to zero
                            result.append(" ");
                            int trivial = varMap.triviality();
                            if (trivial == 0) {
                                result.append("NONTRIVIAL");
                            } else {
                                result.append("trivial=" + String.valueOf(trivial));
                            }
                        } else {
                            result.append(" =0");
                        }
                        break;
                    case GT_0:
                    case NE_0:
                        result.append(VariableMap.FAILURE);
                        result.append(" !=0");
                        break;
                } // switch relation

        } else { // not a single constant, not biased
            // check greatest common divisor of variables
            BigInteger  varGCD = this.gcdVariables();
            if (! varGCD.equals(BigInteger.ONE) && ! constant.mod(varGCD).equals(BigInteger.ZERO)) {
                // constant is not divisible by GCD of variables which is != 1
                switch (getRelation()) {
                    default:
                    case EQ_0:
                        result.append(VariableMap.FAILURE);
                        break;
                    case GE_0:
                    case GT_0:
                        result.append(VariableMap.UNKNOWN);
                        break;
                    case NE_0:
                        result.append(VariableMap.SUCCESS);
                        break;
                } // switch relation
                result.append(" constant=");
                result.append(constant.toString());
                result.append(", vgcd=");
                result.append(varGCD.toString());
            } else {
                result.append(VariableMap.UNKNOWN);
                if (debug >= 3) {
                    result.append(" varGCD=" + varGCD.toString() + ", constant=" + getConstant().toString()
                            + ", gcd=" + varGCD.gcd(constant.abs()).toString());
                }
            } // UNKNOWN
        } // not a single constant, not biased
        return result.toString();
    } // evaluate

    /** Prints some standard properties of <em>this</em> Polynomial for test
     *  purposes.
     */
    private void printProperties() {
       System.out.println(""
                + "; vgcd="             + this.gcdVariables  ()
                + "; gcd="              + this.gcdCoefficients          (true)
                + "; isZero="           + this.isZero          ()
                + "; hasVariable="      + this.hasVariable     ()
                + "; isBiased="         + this.isBiased        ()
                + "; mergeVariables="   + this.mergeVariables  ()
                + "; relation="         + this.getRelation     ()
                + "\n"
                + "; evaluate="         + this.evaluate        (null)
                );
        TreeMap<String, Polynomial> characterization = this.characterize();
        Iterator <String> citer = characterization.keySet().iterator();
        while (citer.hasNext()) {
            String tchic = citer.next();
            System.out.println(tchic + " -> " + characterization.get(tchic));
        } // while citer
    } // printProperties

    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed polynomials with no arguments, or the
     *  polynomial resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        Polynomial poly1 = new Polynomial();
        Polynomial poly2 = new Polynomial();
        ArrayList<Polynomial> polys = null;
        int ipoly = 0;
        ExpressionReader ereader = new ExpressionReader();
        String[] exprs = null;
        if (false) {
        } else if (args.length == 0) {
            poly1 = poly1.add     (new Polynomial(new Monomial("a")));
            poly1 = poly1.subtract(new Polynomial(new Monomial("b")));
            for (int exp = 0; exp < 5; exp ++) {
                poly2 = poly1.pow(exp);
                System.out.println(poly2.toString());
            } // for int
            poly1 = poly1.add     (new Polynomial(new Monomial("c")));
            for (int exp = 0; exp < 5; exp ++) {
                poly2 = poly1.pow(exp);
                System.out.println(poly2.toString());
            } // for int
            VariableMap varMap = poly1.getVariableMap();
            varMap.put("c", "0");
            varMap.put("a", "5*a+1");
            varMap.put("b", "5*b+1");
            poly2 = poly1.substitute(varMap);
            System.out.println(poly2.toString(true));
        } else {
            String opt = args[iarg ++];
            if (! opt.startsWith("-")) {
                poly1 = poly1.parse(opt);
                System.out.println(poly1.toString());
                poly1.printProperties();
            } else { // some option
                if (false) {

                } else if (opt.startsWith("-affine")) {
                    poly1 = poly1.parse(args[iarg ++]);
                    poly2 = poly2.parse(args[iarg ++]);
                    System.out.println("(\"" + poly1.toString() + "\").affineMap(\""    + poly2.toString() + "\") = "
                            + poly1.affineMap   (poly2));

                } else if (opt.startsWith("-equiv")) {
                    poly1 = poly1.parse(args[iarg ++]);
                    poly2 = poly2.parse(args[iarg ++]);
                    System.out.println(poly1.toString() + " <"
                            + (poly1.isEquivalent(poly2) ? "equiv" : "notequiv") + "> " + poly2);

                } else if (opt.startsWith("-f")) {
                    poly1 = poly1.parse(ereader.read(args[iarg ++]));
                    System.out.println(poly1.toString());
                    poly1.printProperties();

                } else if (opt.startsWith("-groebner")) {
                    exprs = ereader.getArguments(iarg, args);
                    ipoly = 0;
                    polys = new ArrayList<Polynomial>(16);
                    System.out.println("Input:");
                    while (ipoly < exprs.length) {
                        polys.add((new PolynomialParser()).parseFrom(exprs[ipoly]));
                        System.out.println(polys.get(ipoly));
                        ipoly ++;
                    } // while ipoly
                    polys = Polynomial.groebnerBasis(polys, true);
                    System.out.println("Groebner Basis:");
                    ipoly = 0;
                    while (ipoly < polys.size()) {
                        System.out.println("GB: " + polys.get(ipoly));
                        ipoly ++;
                    } // while ipoly

                } else if (opt.startsWith("-hiter")) {
                    poly1 = poly1.parse(args[iarg ++]);
                    VariableMap vmap = poly1.getExpressionMap("1", true);
                    Iterator<String> viter = vmap.keySet().iterator();
                    while (viter.hasNext()) {
                        String vname = viter.next();
                        Monomial highTerms[] = poly1.getHighTerms(vname);
                        System.out.print("(\"" + poly1.toString() + "\").getHighTerms(\"" + vname + "\") = ");
                        System.out.println(highTerms[0].toString() + ", " + highTerms[1].toString());
                    } // while iter1

                } else if (opt.startsWith("-map")) {
                    poly1 = poly1.parse(args[iarg ++]);
                    poly2 = poly2.parse(args[iarg ++]);
                    System.out.println("(\"" + poly1.toString() + "\").isMappableTo(\"" + poly2.toString() + "\") = "
                            + poly1.isMappableTo(poly2));

                } else if (opt.startsWith("-mdiv")) {
                    exprs = ereader.getArguments(iarg, args);
                    ipoly = 0;
                    poly1 = (new PolynomialParser()).parseFrom(exprs[ipoly]);
                    ipoly ++;
                    polys = new ArrayList<Polynomial>(16);
                    while (ipoly < exprs.length) {
                        polys.add((new PolynomialParser()).parseFrom(exprs[ipoly]));
                        ipoly ++;
                    } // while ipoly
                    System.out.println("multiDivide(" + poly1.toString() + ") = "
                            + poly1.multiDivide(polys, true).toString());

                } else if (opt.startsWith("-psum")) {
                    poly1 = poly1.parse(args[iarg ++]);
                    System.out.println("(\"" + poly1.toString() + "\").isPowerSum() = "
                            + poly1.isPowerSum());

                } else if (opt.startsWith("-rest")) { // factor, poly
                    String factor = args[iarg ++];
                    poly1 = poly1.parse(args[iarg ++]);
                    System.out.println("getRest(" + poly1.toString() + ", " + factor + ") -> "
                            +  poly1.getRest(new BigInteger(factor)).toString());

                } else if (opt.startsWith("-spoly")) {
                    exprs = ereader.getArguments(iarg, args);
                    poly1 = poly1.parse(exprs[0]);
                    poly2 = poly2.parse(exprs[1]);
                    System.out.println("S(" + poly1.toString() + ", " + poly2.toString() + ") = "
                            + poly1.s_Polynomial(poly2).toString());

                } else if (opt.startsWith("-transp")) {
                    poly1 = poly1.parse(args[iarg ++]);
                    System.out.println("getTransposableClasses(\"" + poly1.toString() + "\") = "
                            + poly1.getTransposableClasses().toString());

                } else if (opt.startsWith("-var")) { // getVariablePowers and groupBy
                    String varStr = args[iarg ++];
                    String[] vars = varStr.split("\\W"); // non-word characters
                    poly1 = poly1.parse(ereader.read(args[iarg ++]));
                    System.out.println(poly1.toString());
                    Monomial monomial4 = new Monomial(vars);
                    System.out.println("getVariablePowers(" + varStr + ")="   + poly1.getVariablePowers(monomial4));
                    System.out.println(          "groupBy(" + varStr + ")=\n" + poly1.groupBy          (monomial4).toList(false));

                } else {
                    System.err.println("invalid option " + opt);
                }
            } // some option
        } // at least 1 argument
    } // main

} // Polynomial
