/*  Polynomial: a symbolic, multivariate polynomial with addition, multiplication
 *  and exponentiation
 *  @(#) $Id: Polynomial.java 744 2011-07-26 06:29:20Z gfis $
 *  2015-07-17: degree, isHomogeneous
 *  2015-06-17: modulus removed, coefficients are BigRatiaonal again
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
import  org.teherba.ramath.BigIntegerUtil;
import  org.teherba.ramath.BigRational;
import  org.teherba.ramath.Coefficient;
import  org.teherba.ramath.PrimeFactorization;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.ExpressionReader;
import  org.teherba.ramath.util.ModoMeter;
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
            };

    /** relation with zero */
    private Relator relation;

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
            String tsig = titer.next();
            resultMonomials.put(tsig, this.monomials.get(tsig).clone());
        } // while titer
        result.setFactor    (this.getFactor());
        result.setMonomials (resultMonomials);
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
        return this.monomials.get(sig);
    } // get

    /** Inserts a {@link Monomial}s into the polynomial.
     *  If there is already a monomial with the parameter signature, it is overwritten.
     *  @param sig signature (variable names and their exponents) of the desired monomial
     *  @param mono2 monomial to be inserted or overwritten.
     *  @deprecated
     */
    public void put(String sig, Monomial mono2) {
        this.monomials.put(sig, mono2);
    } // put

    /** Gets the key set of the internal mapping from signatures to {@link Monomial}s.
     *  @return set of signatures
     */
    public Set<String> keySet() {
        return this.monomials.keySet();
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
    } // getMonomial(sig)

    /** Gets one of the {@link Monomial}s of the polynomial.
     *  @param varName variable name
     *  @param exponent exponent of the variable
     *  @return Monomial
     */
    public Monomial getMonomial(String varName, int exponent) {
        Monomial result = null;
        String sig1 = (new Monomial(varName, exponent)).signature();
        Iterator<String> iter = this.keySet().iterator();
        boolean busy = true;
        while (busy && iter.hasNext()) {
            String sig2 = iter.next();
            if (sig1.equals(sig2)) {
                busy = false;
                result = this.get(sig2);
            }
        } // while iter2
        return result;
    } // getMonomial(varName, exponent)

    /** a factor common to all {@link Monomial}s of the Polynomial */
    private Monomial factor;
    /** Gets the factor
     *  @return multiply the Polynomial by this factor
     */
    public Monomial getFactor() {
        return this.factor;
    } // getFactor
    /** Sets the factor
     *  @param factor multiply the Polynomial by this factor
     */
    public void setFactor(Monomial factor) {
        this.factor = factor;
    } // setFactor

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
     *  with respect to the monomial order defined by the TreeMap <em>monomials</em>.
     *  @return the last element in the TreeMap <em>monomials</em>
     */
    public Monomial getLeadTerm() {
        Monomial result = null;
        String lastKey = monomials.lastKey();
        if (lastKey != null) {
            result = monomials.get(lastKey);
        }
        return result;
    } // getLeadTerm

    /** Returns the number of monomials (summands) in the polynomial
     *  @return number of monomials &gt;= 1
     */
    public int size() {
        return monomials.size();
    } // size

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
                if (full) {
                    buffer.append(" = 0");
                }
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
        } // switch relation
        String result = buffer.toString();
        return result.substring(result.startsWith(" + ") ? 3 : 0);
    } // toString

    /** Returns a string representation of the polynomial, with leading sign,
     *  in compressed representation, without the relation.
     *  @return "17*a0^2*a1 + a2^2*a3^3 - 4*b4", for example
     */
    public String toString() {
        return this.toString(false);
    } // toString()

    /** Returns a string representation of <em>this</em> {@link Polynomial},
     *  in compressed representation, without the relation, 
     *  and with coefficients splitted into powers of prime factors.
     *  @return "2^2*3*5*x*y^3 + 2*z^4" for example
     */
    public String toFactoredString() {
        StringBuffer buffer = new StringBuffer(2048);
        Iterator<String> iter = monomials.keySet().iterator();
        while (iter.hasNext()) {
            String sig = iter.next();
            buffer.append(monomials.get(sig).toFactoredString());
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
    public Coefficient getConstant() {
        Coefficient result = Coefficient.ZERO;
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

    /** Determines whether all {@link Monomial}s in <em>this</em> {@link Polynomial} 
     *  have the same sign. When all variables are assumed to have values >= 0,
     *  a biased polynomial has no non-trivial solutions.
     *  @return true if the polynomial has one type of sign and a constant, or false otherwise
     */
    public boolean isBiased() {
        boolean result = true; // assume success
        boolean first = true;
        int sign = 0;
        Iterator<String> iter1 = this.keySet().iterator();
        while (result && iter1.hasNext()) {
            String sig1 = iter1.next();
            if (first) {
                first = false;
                sign = monomials.get(sig1).signum();
            } else if (monomials.get(sig1).signum() != sign) {
                result = false;
            }
        } // while iter1
        return result; //  && monomials.get(Monomial.CONSTANT_SIGNATURE) != null;
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
    public Coefficient isPowerSum() {
        Coefficient result = null;
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
                    result = Coefficient.valueOf(mono.getCoefficient().abs());
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

    /** Adds a {@link Monomial} to <em>this</em> {@link Polynomial}.
     *  @param mono2 add this Monomial
     *  @return reference to <em>this</em> Polynomial that was modified
     */
    protected Polynomial addTo(Monomial mono2) {
        String sig2 = mono2.signature();
        Monomial mono1 = this.monomials.get(sig2);
        if (mono2.isZero()) { // ignore "+ 0"
            if (debug >= 2) {
                System.out.println("+ 0 ignored");
            }
        } else if (mono1 == null) {
            this.monomials.put(sig2, mono2.clone());
        } else {
            if (! mono1.signature().equals(mono2.signature())) {
                throw new IllegalArgumentException("Polynomial: signatures of " + this.toString() 
                    + " and " + mono2.toString() + " must be equal: " 
                    + "\"" + mono1.signature() + "\" != \"" + mono2.signature() + "\"");
            /*
                System.out.println("signatures of " + this.toString() 
                    + " and " + mono2.toString() + " must be equal: " 
                    + "\"" + this.signature() + "\" != \"" + mono2.signature() + "\"");
            */
            }
            mono1.addTo(mono2);
            if (mono1.isZero()) {
                this.monomials.remove(sig2);
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
     *  @param mono2 subtract this monomial
     *  @return reference to <em>this</em> polynomial that was modified
     */
    protected Polynomial subtractFrom(Monomial mono2) {
        String sig2 = mono2.signature();
        Monomial mono1 = monomials.get(sig2);
        if (mono2.isZero()) { // ignore "- 0"
        } else if (mono1 == null) {
            monomials.put(sig2, mono2.clone().negate());
        } else {
            mono1.subtractFrom(mono2);
            if (mono1.isZero()) {
                monomials.remove(sig2);
            }
        }
        return this;
    } // subtractFrom(Monomial)

    /** Inverts the signs of the monomials of <em>this</em> {@link Polynomial}.
     *  @return reference to <em>this</em> modified object.
     */
    protected Polynomial negativeOf() {
        Iterator <String> titer = monomials.keySet().iterator();
        while (titer.hasNext()) {
            Monomial mono1 = monomials.get(titer.next());
            mono1.setCoefficient(Coefficient.valueOf(mono1.getCoefficient().negate()));
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
     *  @param mono2 multiply with this monomial
     *  @return reference to <em>this</em> polynomial which was modified
     */
    protected Polynomial multiplyBy(Monomial mono2) {
        Iterator<String> iter = monomials.keySet().iterator();
        if (mono2.isZero()) {
            monomials.clear(); // an empty map indicates constant 0
        } else {
            while (iter.hasNext()) {
                String sig1 = iter.next();
                monomials.put(sig1, monomials.get(sig1).multiply(mono2));
            } // while iter
        }
        return this;
    } // multiplyBy(Monomial)

    /** Multiplies all {@link Coefficient}s of <em>this</em> {@link Polynomial}
     *  with a {@link BigInteger}.
     *  This is the inverse operation to {@link #normalizeIt}.
     *  @param number multiply with this BigInteger
     *  @return reference to <em>this</em> Polynomial which was modified
     */
    public Polynomial multiplyBy(BigInteger number) {
        if (! number.equals(BigInteger.ONE)) {
            Iterator<String> iter = monomials.keySet().iterator();
            while (iter.hasNext()) {
                String sig1 = iter.next();
                monomials.get(sig1).multiplyBy(number);
            } // while iter
        } // != 1
        return this;
    } // multiplyBy(number)

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
     *  by <em>mono2</em>, otherwise an exception will be thrown.
     *  @param mono2 divide by this monomial
     *  @return reference to <em>this</em> polynomial which was modified
     */
    protected Polynomial divideBy(Monomial mono2) {
        if (mono2.isZero()) {
            throw new ArithmeticException();
        } else {
            Iterator<String> iter = monomials.keySet().iterator();
            while (iter.hasNext()) {
                String sig1 = iter.next();
                if (debug > 0) {
                    System.out.println("Polynomial (" + this.toString() + ").divideBy(" + mono2.toString()
                            + ", sig1=" + sig1 + ", get(sig1)=" + monomials.get(sig1));
                }
                monomials.put(sig1, monomials.get(sig1).divide(mono2));
            } // while iter
        }
        return this;
    } // divideBy(Monomial)

    /** Divides all {@link Coefficient}s of <em>this</em> {@link Polynomial}
     *  by a {@link BigInteger}.
     *  The division must be possible without rest.
     *  @param number multiply with this BigInteger
     *  @return reference to <em>this</em> Polynomial which was modified
     */
    protected Polynomial divideBy(BigInteger number) {
        if (! number.equals(BigInteger.ONE)) {
            Iterator<String> iter = monomials.keySet().iterator();
            while (iter.hasNext()) {
                String sig1 = iter.next();
                monomials.get(sig1).divideBy(number);
            } // while iter
        } // != 1
        return this;
    } // divideBy(number)

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
        result.divideBy(poly2.getLeadTerm()); // it is the only one
        return result;
    } // divide(Polynomial)

    /** Determines whether the parameter {@link BigRational} is a 
     *  rational solution (root) of <em>this</em> univariate Polynomial.
     *  @param root the desired solution
     *  @return true if <em>(variable - root)</em> divides this Polynomial evenly
     */
    public boolean hasSolution(BigRational root) {
        boolean result = false;
        if (! this.isUniVariate()) {
            VariableMap vmap1 = this.getVariableMap();
            System.out.println("not isUniVariate: " + vmap1.toString() + ", size=" + vmap1.size());
            throw new ArithmeticException();
        } else { // univariate
            Iterator<String> iter = monomials.keySet().iterator();
            BigRational sum = BigRational.ZERO;
            while (iter.hasNext()) {            
                String sig1 = iter.next();
                Monomial mono1 = this.get(sig1);
                BigRational term = new BigRational(mono1.getCoefficient().toString());
                String vname = mono1.firstName();
                if (vname != null) { // with variable
                    int exp = mono1.getExponent(vname);
                    while (exp > 0) {
                        term = term.multiply(root);
                        exp --;
                    } // while exp
                } // with variable
                sum = sum.add(term);
                if (debug > 0) {
                    System.out.println("Monomial \"" + mono1.toString() + ", sum = " + sum.toString());
                }
            } // while iter
            result = sum.equals(BigInteger.ZERO);
        } // univeriate
        return result;
    } // hasSolution


    //===============================================
    // Gröbner bases, Buchberger's algorithm
    //===============================================
    /** Compute the so-called S-polynomial S(f,g) of Buchberger's algorithm.
     *  @param poly2 <em>poly2</em> is g and <em>this</em> is f
     *  @return S(f,g) = lcm(lt(f),lt(g)) / lt(f) * f - lcm(lt(f),lt(g)) / lt(g) * g
     */
    public Polynomial s_Polynomial(Polynomial poly2) {
        Monomial ltf    = this .getLeadTerm();
        Monomial ltg    = poly2.getLeadTerm();
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
                lts = polys.getLeadTerm();
                Monomial ltf  = polyF.get(ipoly).getLeadTerm();
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
    public static Polynomial parse(String input) {
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

    /** Gets a map from all variable names in <em>this</em> Polynomial (the key)
     *  to an expression involving this variable.
     *  @param value expression with literal "x" as placeholder for the variable names
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

    /** Gets a map from all variable names in <em>this</em> Polynomial (the key)
     *  to an expression involving this variable.
     *  @param value expression with literal "x" as placeholder for the variable names
     *  @return map of variable names mapped to an expression string
     */
    public VariableMap getExpressionMap(String value) {
        return getExpressionMap(value, true);
    } // getExpressionMap(String)

    /** Gets a map from all variable names in <em>this</em> Polynomial (the keys)
     *  to the expression "0+1*x", where the literal "x" is a placeholder for
     *  the corresponding key (= variable name).
     *  Caution: this expression is required by {@link VariableMap#refineExpressions}.
     *  @return map of variable names mapped to an expression string
     */
    public VariableMap getExpressionMap() {
        return getExpressionMap("0+1*x", true); // REFINED_FORM
    } // getExpressionMap()

    //-----------------------------------------------

    /** Determines the number of different variables in the Polynomial.
     *  @return count of different variables, &gt;= 0
     */
    public int getVariableCount() {
        return getVariableMap().size();
    } // getVariableCount

    /** Determines whether there is exactly one variable in each {@link Monomial} 
     *  of <em>this</em> Polynomial.
     *  @return true if there is only one variable, false otherwise
     */
    public boolean isMonoVariate() {
        boolean result = true;
        Iterator <String> titer = monomials.keySet().iterator();
        while (result && titer.hasNext()) {
            Monomial mono1 = monomials.get(titer.next());
            result = mono1.size() <= 1;
        } // while titer
        return result;
    } // isMonoVariate

    /** Determines whether there is exactly one variable in the Polynomial.
     *  @return true if there is only one variable, false otherwise
     */
    public boolean isUniVariate() {
        return getVariableMap().size() == 1;
    } // isUniVariate

    /** Determines the degree, that is the sum of exponents in all {@link Monomial}s
     *  if it is the same in all Monomials
     *  @param upperConst whether the exponents of uppercase variables should not be counted
     *  @return degree >= 0, or -1 if the {@link Polynomial} has Monomials with different degrees
     */
    public int degree(boolean upperConst) {
        int result = 0;
        Iterator <String> titer = monomials.keySet().iterator();
        if (! this.isConstant()) {
            result = monomials.get(titer.next()).degree(upperConst);
        }
        while (result >= 0 && titer.hasNext()) {
            int degm = monomials.get(titer.next()).degree(upperConst);
            if (degm != result) {
                result = -1;
            }
        } // while titer
        return result;
    } // degree(boolean)
    
    /** Determines the degree, that is the sum of exponents in all {@link Monomial}s
     *  if it is the same in all Monomials
     *  @return degree >= 0, or -1 if the {@link Polynomial} has Monomials with different degrees
     */
    public int degree() {
        return this.degree(false);
    } // degree()

    /** Determines the maximum of the exponents for some variable in all {@link Monomial}s
     *  of <em>this</em> {@link Polynomial}
     *  @param varName determine the maximum degree of this variable
     *  @return maxDegree >= 0
     */
    public int maxDegree(String varName) {
        int result = 0;
        Iterator <String> titer = monomials.keySet().iterator();
        while (titer.hasNext()) {
            int deg1 = monomials.get(titer.next()).getExponent(varName);
            if (deg1 > result) {
                result = deg1;
            }
        } // while titer
        return result;
    } // maxDegree
    
    /** Determines the maximum degree, that is the sum of exponents in all {@link Monomial}s
     *  irrespective of the variable names
     *  @param upperConst whether the exponents of uppercase variables should not be counted
     *  @return maxDegree >= 0
     */
    public int maxDegree(boolean upperConst) {
        int result = 0;
        Iterator <String> titer = monomials.keySet().iterator();
        while (titer.hasNext()) {
            int degm = monomials.get(titer.next()).degree(upperConst);
            if (degm > result) {
                result = degm;
            }
        } // while titer
        return result;
    } // maxDegree(boolean)

    /** Determines the maximum degree, that is the sum of exponents in all {@link Monomial}s
     *  irrespective of the variable names
     *  @return maxDegree >= 0
     */
    public int maxDegree() {
        return this.maxDegree(false);
    } // maxDegree()
    
   /** Determines whether all {@link Monomial}s are of the same {@link #degree}.
     *  @param upperConst whether the exponents of uppercase variables should not be counted
     *  @return true if the sum of exponents in all Monomials is the same, false otherwise
     */
    public boolean isHomogeneous(boolean upperConst) {
        return this.degree(upperConst) >= 0;
    } // isHomogeneous

    /** Determines whether all {@link Monomial}s are of the same {@link #degree}.
     *  @return true if the sum of exponents in all Monomials is the same, false otherwise
     */
    public boolean isHomogeneous() {
        return this.degree(false) >= 0;
    } // isHomogeneous

    /** Gets the greatest common (positive) divisor of the coefficients of the variable {@link Monomial}s,
     *  or of all monomials if they are integral, or +1.
     *  @param all whether all monomials should be investigated, 
     *  otherwise the non-constant ones are taken only
     *  @return common divisor &gt;= 1
     */
    public BigInteger gcdCoefficients(boolean all) {
        BigInteger result = BigInteger.ONE;
        Iterator <String> titer = monomials.keySet().iterator();
        int index = 0;
        while (titer.hasNext()) {
            Monomial monomial = monomials.get(titer.next());
            if (all || ! monomial.isConstant()) {
                if (index == 0) { // first monomial
                    result = monomial.getCoefficient().bigIntegerValue().abs();
                } else { // following variables
                    result = result.gcd(monomial.getCoefficient().bigIntegerValue());
                } // following
                index ++;
            } // ! isConstant
        } // while titer
        return result;
    } // gcdCoefficients

    /** Gets the greatest common (positive) divisor of the coefficients of the variable {@link Monomial}s,
     *  or of all monomials if they are integral, or +1.
     *  @param all whether all monomials should be investigated, 
     *  otherwise the non-constant ones are taken only
     *  @return common divisor &gt;= 1
     */
    public BigInteger gcdCoefficients() {
        return gcdCoefficients(true);
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
        VariableMap vmap2 = new VariableMap();
        vmap2.put(name1, name2);
        vmap2.put(name2, name1);
        Polynomial poly2 = substitute(vmap2);
        result = this.add(poly2).isZero() || this.subtract(poly2).isZero();
        return result;
    } // areTransposable

    /** Denotes transposition equivalence classes which contain only one single element */
    public final static int LONELY = 1947;

    /** Determines the equivalence classes (subsets) of variables
     *  which can be interchanged (renamed) in <em>this</em> Polynomial,
     *  while the polynomial's structure is still maintained.
     *  Caution: primitive, inefficient implementation.
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
        String [] names = getVariableMap().getNameArray();
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

    //------------
    // Subsetting
    //------------
    
    /** Takes all variables from <em>mono2</em> and
     *  creates a sum of {@link Monomial}s for all different powers of these variables
     *  occurring in <em>this</em> polynomial.
     *  @param mono2 a multiplication of all desired variables (names with exponent 1 and constant +1)
     *  @return polynomial whose monomials have constant &gt;= +1, and which consists of
     *  all different powers of the variables in <em>mono2</em>
     */
    private Polynomial getVariablePowers(Monomial mono2) {
        Polynomial result = new Polynomial();
        Monomial monomial = null;
        Iterator <String> titer = this.monomials.keySet().iterator();
        while (titer.hasNext()) { // over all monomials
            monomial = this.monomials.get(titer.next());
            result.addTo(monomial.getVariablePowers(mono2));
        } // while titer
        Iterator <String> riter = result.monomials.keySet().iterator();
        while (riter.hasNext()) { // over all monomials
            result.monomials.get(riter.next()).setCoefficient(1);
        } // while riter
        return result;
    } // getVariablePowers
    
    /** Takes the variable names from <em>mono2</em>,
     *  creates an empty {@link RelationSet} and, for all {@link Monomial}s that
     *  occur as combinations of powers of the selected variables in <em>this</em>
     *  Polynomial, adds a new {@link Polynomial} to the set which has the
     *  monomial as key and the factors of the monomial as terms.
     *  @param mono2 a multiplication of all desired variables (names with exponent 1 and constant +1)
     *  @return a RelationSet with one Polynomial for each variable combination
     */
    private RelationSet groupBy(Monomial mono2) {
        RelationSet result = new RelationSet();
        Polynomial poly3 = this.getVariablePowers(mono2);
        Iterator <String> piter3 = poly3.monomials.keySet().iterator();
        while (piter3.hasNext()) { // over all combinations of powers of variables
            Monomial mono3 = poly3.monomials.get(piter3.next()); // specific combination
            Polynomial poly4 = new Polynomial();
            Iterator <String> piter1 = this.monomials.keySet().iterator();
            while (piter1.hasNext()) { // over all monomials of <em>this</em> polynomial
                Monomial mono5 = this.monomials.get(piter1.next());
                if (mono5.getVariablePowers(mono2).equals(mono3)) {
                    poly4.addTo(mono5.getFactorOf(mono3));
                }
            } // while titer
            poly4.setFactor(mono3);
            result.insert(poly4);
        } // while titer
        return result;
    } // groupBy

    /** Extracts a new {@link Polynomial} consisting of all {@link Monomial}s
     *  whose coefficients are not divisible by the parameter <em>factor</em>.
     *  @param factor the common constant factor of the other monomials
     *  @return Polynomial with Monomials from <em>this</em> Polynomial
     */
    public Polynomial getRest(BigInteger factor) {
        Polynomial result = new Polynomial();
        Iterator <String> titer = this.monomials.keySet().iterator();
        while (titer.hasNext()) { // over all monomials
            Monomial mono = this.monomials.get(titer.next());
            if (! mono.getCoefficient().mod(factor).equals(BigInteger.ZERO)) { // indivisible
                result.addTo(mono.clone());
            } // if indivisible
        } // while titer
        return result;
    } // getRest

    /** Extracts a new {@link Polynomial} consisting of all {@link Monomial}s
     *  that involve the variable <em>varName</em>.
     *  @param varName variable to be factored out 
     *  @return subset Polynomial with monomials from <em>this</em> Polynomial
     */
    public Polynomial getSubPolynomial(String varName) {
        Polynomial result = new Polynomial();
        Iterator <String> titer = this.monomials.keySet().iterator(); // signatures of Monomials
        while (titer.hasNext()) { // over all monomials
            String tsig = titer.next();
            Monomial mono = this.monomials.get(tsig);
            if (mono.getExponent(varName) > 0) { // involved
                result.put(tsig, mono.clone()); 
            } // if involved
        } // while titer
        return result;
    } // getSubPolynomial

    /** Extracts, from <em>this<em> {@link Polynomial},  
     *  a new {@link RelationSet} with a Polynomial
     *  for each power of the parameter variable. 
     *  These Polynomials gather the factors of the variable's power. 
     *  The indexes of the resulting RelationSet correspond with those powers.
     *  @param varName variable to be factored out 
     *  @return RelationSet of factored Polynomials
     */
    public Polynomial reduceCoefficients(int power) {
        Iterator <String> titer = this.monomials.keySet().iterator();
        while (titer.hasNext()) { // over all monomials
            Monomial mono1 = this.monomials.get(titer.next());
            if (! mono1.isConstant()) {
                BigInteger bint = mono1.getCoefficient().bigIntegerValue();
                PrimeFactorization primfn = new PrimeFactorization(bint.abs());
                BigInteger bint2 = primfn.reducePower(power);
                mono1.setCoefficient(Coefficient.valueOf(bint.compareTo(BigInteger.ZERO) < 0 ? bint2.negate() : bint2));
            }
        } // while titer
        return this;
    } // reduceCoefficients

    /** Extracts, from <em>this<em> {@link Polynomial},  
     *  a new {@link RelationSet} with a Polynomial
     *  for each power of the parameter variable. 
     *  These Polynomials gather the factors of the variable's power. 
     *  The indexes of the resulting RelationSet correspond with those powers.
     *  @param varName variable to be factored out 
     *  @return RelationSet of factored Polynomials
     */
    public RelationSet getPowerFactors(String varName) {
        RelationSet result = new RelationSet();
        Iterator <String> titer = this.monomials.keySet().iterator();
        while (titer.hasNext()) { // over all monomials
            Monomial mono1 = this.monomials.get(titer.next());
            int exp1 = mono1.getExponent(varName);
            while (result.size() <= exp1) {
                result.insert(exp1, new Polynomial());
            }
            result.get(exp1).addTo(mono1.divide(new Monomial(varName, exp1)));
        } // while titer
        return result;
    } // getPowerFactors

    /** Creates a new {@link Polynomial} from <em>this</em> {@link Polynomial} such
     *  that all variables occur only once in a {@link Monomial}.
     *  For any squared variable a suitable square completion is determined,
     *  and the Polynomial is widened appropriately.
     *  @return
     *  for example:
     *  <pre>
     *  this   = - 9 + 15x^2 - 7*(x+b)^2
     *  result = - 9 - 7*b^2 + 15*x^2
     *  </pre>
     */
    public Polynomial completeSquare(String varName, Polynomial phead, Polynomial pbody, Polynomial ptail, VariableMap vmapt) {
        int debug2 = 1; // debug;
        int e2 = 2;
        if (debug2 >= 2) { 
            System.out.println("start0 " + varName
                    + ", phead=" + phead.toString()
                    + ", pbody=" + pbody.toString()
                    + ", ptail=" + ptail.toString()
                    + ", vmapt=" + vmapt.toString()
                    ); 
        }
        BigInteger binom2 = BigIntegerUtil.binomial(e2, 1);
        BigInteger fbody = pbody.gcdCoefficients(true); // factor for the whole bracket
        if (! fbody.equals(BigInteger.ONE)) {
            pbody.divideBy(fbody); // pbody contains the bracket
        } // fbody > 1       
        Monomial mlead = pbody.getMonomial(varName, e2).clone(); // the one with v^2
        pbody.subtractFrom(mlead).divideBy(new Monomial(varName)); // now contains the factor of v^1 only
        if (mlead.signum() < 0) {
            mlead.negativeOf(); // now positive
            fbody = fbody.negate();
            pbody.negativeOf();
        } // negate
        if (debug2 >= 1) { 
            System.out.println("start1 " + varName
                    + ", pbody=" + pbody.toString()
                    + ", fbody=" + fbody.toString()
                    + ", mlead=" + mlead.toString()
                    ); 
        }
        BigInteger gcdv1 = pbody.gcdCoefficients(true); // gcd of the factor of v^1
        if (gcdv1.mod(binom2).equals(BigInteger.ZERO)) { // binom2 must fit into pbody
            pbody.divideBy(binom2);
        } else { 
            phead.multiplyBy(binom2);
            // pbody is ok, think as if already "dividedBy(binom2)'
            ptail.multiplyBy(binom2);
            mlead.multiplyBy(binom2);
            vmapt.multiplyBy(binom2);
        } // pbody fits binom2
        if (debug2 >= 1) { 
            System.out.println("start2 " + varName
                    + ", phead=" + phead.toString()
                    + ", pbody=" + pbody.toString()
                    + ", ptail=" + ptail.toString()
                    + ", fbody=" + fbody.toString()
                    + ", mlead=" + mlead.toString()
                    + ", gcdv1=" + gcdv1.toString()
                    ); 
        }
        //----------------------
        // Determine factors which allow to perform a square completion properly.
        // <em>this</em> is the {@link PrimeFactorization} of the factor of v^2:
        // - (rootv*varName)^2 will become the lead term
        // - multiply the whole Polynomial by widev
        // - divide the cofactor of varName^1 by divs1 to get the square completion
        BigInteger flead = mlead.getCoefficient().bigIntegerValue();
        PrimeFactorization pmf2 = new PrimeFactorization(flead); // no abs, c.f. above
        BigInteger widev = pmf2.wideToPower(e2);
        BigInteger rootv = (new PrimeFactorization(widev.multiply(flead))).root(e2).valueOf();
        //----------------------
        phead.multiplyBy(widev);
        ptail.multiplyBy(widev);
        if (debug2 >= 1) { 
            System.out.println("before " + varName
                    + ", phead=" + phead.toString()
                    + ", pbody=" + pbody.toString()
                    + ", ptail=" + ptail.toString()
                    + ", mlead=" + mlead.toString()
                    + ", flead=" + flead.toString()
                    + ", rootv=" + rootv.toString() 
                    + ", widev=" + widev.toString()
                    ); 
        }
        ptail = ptail.subtract(pbody.pow(e2).multiply(new Polynomial(new Monomial(Coefficient.valueOf(fbody)))));
        if (debug2 >= 2) {
            System.out.println("after2 " + varName
                    + ", pbody=" + pbody.toString()
                    + ", ptail=" + ptail.toString()
                    ); 
        } // debug2
        phead.addTo(new Monomial(fbody, varName, e2)); // replaces the bracket
        if (debug2 >= 2) {
            System.out.println("after3 " + varName
                    + ", phead=" + phead.toString()
                    + ", pbody=" + pbody.toString()
                    ); 
        } // debug2
        Polynomial mbody = pbody.clone();
        // mbody.addTo(new Monomial(rootv, varName, 1));
        vmapt.put(varName, mbody.toString() + "+" + rootv + "*" + varName);
        if (debug2 >= 1) {
            System.out.println("after  " + varName
                    + ", phead=" + phead.toString()
                    + ", pbody=" + pbody.toString()
                    + ", ptail=" + ptail.toString()
                    + ", vmapt=" + vmapt.toString()
                    + "\n"
                    ); 
        } // debug2
        return ptail;
    } // completeSquare

    /** Creates a new {@link Polynomial} from <em>this</em> {@link Polynomial} such
     *  that all variables occur only once in a {@link Monomial}.
     *  For any squared variable a suitable power (square, cubic) completion is determined,
     *  and the Polynomial is widened appropriately.
     *  @return
     *  for example:
     *  <pre>
java -cp dist/ramath.jar org.teherba.ramath.symbolic.Polynomial 
-reduce "x^2 - 4x*y + 8x*z + 2y^2 - 7z^2"

start0 x, phead=0, pbody=x^2 - 4*x*y + 8*x*z, ptail=2*y^2 - 7*z^2, vmapt={x=>x,y=>y,z=>z}
start1 x, pbody= - 4*y + 8*z, fbody=1, mlead= + x^2
start2 x, phead=0, pbody= - 2*y + 4*z, ptail=2*y^2 - 7*z^2, fbody=1, mlead= + x^2, gcdv1=4
before x, phead=0, pbody= - 2*y + 4*z, ptail=2*y^2 - 7*z^2, mlead= + x^2, flead=1, rootv=1, widev=1
after  x, phead=x^2, pbody= - 2*y + 4*z, ptail= - 2*y^2 + 16*y*z - 23*z^2, vmapt={x=>x - 2*y + 4*z,y=>y,z=>z}

start0 y, phead=x^2, pbody= - 2*y^2 + 16*y*z, ptail= - 23*z^2, vmapt={x=>x - 2*y + 4*z,y=>y,z=>z}
start1 y, pbody= - 8*z, fbody=-2, mlead= + y^2
start2 y, phead=x^2, pbody= - 4*z, ptail= - 23*z^2, fbody=-2, mlead= + y^2, gcdv1=8
before y, phead=x^2, pbody= - 4*z, ptail= - 23*z^2, mlead= + y^2, flead=1, rootv=1, widev=1
after  y, phead=x^2 - 2*y^2, pbody= - 4*z, ptail=9*z^2, vmapt={x=>x - 2*y + 4*z,y=>y - 4*z,z=>z}

start0 z, phead=x^2 - 2*y^2, pbody=9*z^2, ptail=0, vmapt={x=>x - 2*y + 4*z,y=>y - 4*z,z=>z}
start1 z, pbody=0, fbody=9, mlead= + z^2
start2 z, phead=2*x^2 - 4*y^2, pbody=0, ptail=0, fbody=9, mlead= + 2*z^2, gcdv1=1
before z, phead=4*x^2 - 8*y^2, pbody=0, ptail=0, mlead= + 2*z^2, flead=2, rootv=2, widev=2
after  z, phead=4*x^2 - 8*y^2 + 9*z^2, pbody=0, ptail=0, vmapt={x=>2*x - 4*y + 8*z,y=>2*y - 8*z,z=>2*z}

("x^2 - 4*x*y + 2*y^2 + 8*x*z - 7*z^2").reduceIt() = 4*x^2 - 8*y^2 + 9*z^2
     *  </pre>
     */
    public Polynomial reduceIt() {
        int debug2 = 1; // debug;
        VariableMap vmapt = this.getVariableMap("*");
        int varNo = vmapt.size();
        Polynomial  phead   = new Polynomial(); // already squared
        Polynomial  pbody   = null; // current, to be squared with respect to varName
        Polynomial  ptail   = this.clone(); // rest not containing varName
        Iterator<String> iter = vmapt.keySet().iterator(); // for variable names
        boolean busy = true;
        while (busy && iter.hasNext()) { // over all variable names
            String varName = iter.next();
            pbody = ptail.getSubPolynomial(varName); // Monomials with v^2 and v (maybe more than 2)
            ptail = ptail.subtract(pbody); // extract all with varName from it (the constant remains)
            switch (pbody.maxDegree()) {
                case 2:
                    ptail = completeSquare(varName, phead, pbody, ptail, vmapt);
                    break;
                default:
                    phead = phead.add(pbody);
                    break;
            } // switch e2;
        } // while variables
        if (! ptail.isZero()) {
            phead = phead.add(ptail);
        }
        return phead.normalizeIt(); // .reduceCoefficients(e2);
    } // reduceIt

    /** Creates a new {@link Polynomial} from <em>this</em> {@link Polynomial} such
     *  that all variables occur only once in a {@link Monomial}.
     *  For any squared variable a suitable square completion is determined,
     *  and the Polynomial is widened appropriately.
     *  @return
     *  for example:
     *  <pre>
     *  this   = - 9 + 15x^2 - 7*(x+b)^2
     *  result = - 9 - 7*b^2 + 15*x^2
     *  </pre>
     */
    public Polynomial getSquareCompletion_2() {
        int debug2 = 1; // debug;
        Polynomial result = new Polynomial();
        int power = this.maxDegree();
        VariableMap vmapt = this.getVariableMap("*");
        int varNo = vmapt.size();
        Polynomial[] brackets  = new Polynomial[varNo]; // Sum of Monomials for one variable, to be squared
        BigInteger[] brFactors = new BigInteger[varNo]; // factors for the brackets to be square
        Polynomial rest = this.clone();
        int ibr = 0; // index for brackets and variables
        if (power == 2) { // can handle quadratic expressions only
            Iterator<String> iter = vmapt.keySet().iterator(); // for variable names
            boolean busy = true;
            while (busy && iter.hasNext()) { // over all variable names
                String varName = iter.next();
                Polynomial polyv  = rest.getSubPolynomial(varName); // all Monomials involving varName
                brFactors[ibr]    = polyv.gcdCoefficients(true);
                RelationSet rsetv = polyv.getPowerFactors(varName); // split for each exponent of varName
                if (rsetv.get(power).getLeadTerm().getCoefficient().bigIntegerValue()
                        .compareTo(BigInteger.ZERO) < 0) { // is negative
                    brFactors[ibr] = brFactors[ibr].negate(); // switch it
                } // negative
                if (! brFactors[ibr].equals(BigInteger.ONE)) { 
                    rsetv.divideBy(brFactors[ibr]); // extract brFactors[ibr], bracket is positive
                } // extract
                if (debug2 >= 1) { 
                    System.out.println("var " + varName
                            + ", polyv=" + polyv.toString()
                            + ", brFactors[" + ibr + "]=" + brFactors[ibr].toString() 
                            + ", rsetv(before prepare)=" + rsetv.toString(false)
                            ); 
                }
                BigInteger widev = rsetv.prepareIt(varName);
                if (! widev.equals(BigInteger.ONE)) { // multiply those which are already processed
                    result.multiplyBy(new Monomial(widev, "", 0));
                /*
                    int kbr = 0;
                    while (kbr < ibr) {
                        brFactors[kbr] = brFactors[kbr].multiply(widev);
                        kbr ++;
                    } // while kbr
                */
                } // already processed
                BigInteger rootv = rsetv.getTupleShift();
                if (debug2 >= 1) { 
                    System.out.println("rsetv(after prepare)="  + rsetv.toString(false)
                            + ", brFactors[" + ibr + "]=" + brFactors[ibr].toString() 
                            + ", rootv=" + rootv.toString() 
                            + ", widev=" + widev.toString()
                            + ", polyv=" + polyv.toString()
                            + ", rest="  + rest .toString()
                            ); 
                }
                Polynomial polyc = rsetv.get(1); // for square completion
                brackets[ibr] = (new Polynomial(new Monomial(rootv, varName, 1))).add(polyc); 
                rest = rest.subtract(polyv).multiplyBy(widev)
                        .subtract(polyc.pow(2).multiplyBy(brFactors[ibr]));
                if (debug2 >= 1) {
                    System.out.println("complete " + varName
                            + ", polyc=" + polyc.toString()
                            + ", rest="  + rest.toString()
                            );
                    System.out.println("--> bracket for " + varName 
                            + ": " + brFactors[ibr].toString() 
                            + "*(" + brackets [ibr].toString() + ")");
                } // debug2
                // busy = false; // take the first only
                result.addTo(new Monomial(brFactors[ibr], varName, power));
                vmapt.put(varName, brackets[ibr].toString());
                ibr ++;
            } // while variables
        } // quadratic expressions only
        if (! rest.isZero()) {
            result = result.add(rest);
        }
        if (debug2 >= 1) {
            Polynomial ptest = rest;
            ibr = 0;
            while (ibr < brackets.length) {
                ptest = ptest.add(brackets[ibr].pow(power).multiplyBy(brFactors[ibr]));
                ibr ++;
            } // while ibr
            ptest.normalizeIt();
            System.out.println("vmapt=" + vmapt.toString()
                    + ", rest="  + rest.toString()  + "\n"
                    + ", ptest=" + ptest.toFactoredString() + " = " + ptest.toString()
                    );
            if (! ptest.equals(this)) {
                System.out.println("squareCompletion.assertion???");
            }
        }
        return result.normalizeIt(); // .reduceCoefficients(power);
    } // getSquareCompletion_2

    //----------------------------------------
    // Characterization, Equivalence, Mapping
    //----------------------------------------
    
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
            Monomial mono = this.monomials.get(titer.next());
            String tchic = mono.characteristic();
            Polynomial subPoly = resultMap.get(tchic);
            if (subPoly == null) {
                subPoly = new Polynomial(mono);
                resultMap.put(tchic, subPoly);
            } else {
                subPoly.addTo(mono);
            }
        } // while titer
        return resultMap;
    } // characterize

    /** Normalizes the coefficients and the signs of the monomials in place
     *  (and also returns <em>this</em> - modified - polynomial).
     *  Normalization is a predecessor step for equivalence checking, and proceeds
     *  in this sequence:
     *  <ul>
     *      <li>divide all coefficients by their greatest common divisor (GCD)</li>
     *  </ul>
     *  @return reference to <em>this</em> - modified - object
     */
    public Polynomial normalizeIt() {
        BigInteger divisor = this.gcdCoefficients(true);
        if (divisor.compareTo(BigInteger.ONE) != 0 && this.hasVariable()) { // divide by GCD if != 1
            this.divideBy(divisor);
        }
        return this;
    } // normalizeIt

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
     *  The absolute coefficients of the 2nd Polynomial should be greater than or equal to
     *  the absolute coefficients of <em>this</em> Polynomial.
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
            if (set1.size() == set2.size() && poly2.isMonoVariate()) {
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
     *  in <em>this</em> Polynomial which have 
     *  (returned in [0]) the maximum exponent - 1 of that variable, and
     *  (returned in [1]) the maximum exponent of the variable,
     *  or the constant 0 if such monomial(s) do not exist.
     *  Caution, currently the monomials must be univariate.
     *  @param vname variable name
     *  @return monomials: [0] = max-1 exponent, [1] = max exponent, 
     *  or null if there was a non-univariate Monomial
     */
    public Monomial[] getHighTerms(String vname) {
        Monomial[] result = new Monomial[]{ null, null }; // [0] = max-1, [1] = max exponent
        Iterator <String> titer = monomials.keySet().iterator();
        int maxExp = 0; // lowest possible exponent
        boolean univariate = true;
        while (univariate && titer.hasNext()) {
            Monomial mono1 = this.get(titer.next());
            if (mono1.size() == 1) { // univariate
                int exp = mono1.getExponent(vname);
                if (exp > maxExp) { // this is higher
                    maxExp = exp;
                } // was higher
                // univariate
            } else {
            /*
                univariate = false;
                maxExp = 0;
            */
            }
        } // while titer
        if (maxExp > 0) {
            String prefix = "/" + vname + ".";
            result[1] = this.get(prefix + String.format("%02x", maxExp    ));
            result[0] = this.get(prefix + String.format("%02x", maxExp - 1));
        } // not "00"
        if (result[1] == null) {
            result[1] =  new Monomial("0");
        } // result[1] != null
        if (result[0] == null) {
            result[0] =  new Monomial("0");
        } // result[0] != null
        return result;
    } // getHighTerms

    /** Tries to establish an affine mapping between the variables
     *  of <em>this</em> Polynomial and a 2nd Polynomial.
     *  The absolute coefficients of the 2nd Polynomial should be greater than
     *  or equal to the corresponding absolute coefficients of this Polynomial.
     *  The set of variable names in both Polynomials must be identical.
     *
     *  Caution, currently only univariate {@link Monomial}s are treated properly!
     *
     *  @param poly2p second comparision operand
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
    public VariableMap isMappableTo(Polynomial poly2p) {
        Polynomial poly2 = poly2p.clone(); // .normalizeIt();
        Polynomial poly1 = this  .clone(); // .normalizeIt();
        int debugLimit = 1;
        VariableMap result = new VariableMap();
        boolean busy = true;
        VariableMap vmap1 = poly1.getExpressionMap();
        VariableMap vmap2 = poly2.getExpressionMap();
        try {
            busy = vmap1.size() == vmap2.size() && poly2.isMonoVariate();
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
                        Monomial[] hit1 = poly1.getHighTerms(vname1);
                        Monomial[] hit2 = poly2.getHighTerms(vname2);
                        busy = true;
                        if (busy) { // both Polynomials had all univariate Monomials ???
                            hits1.put(vname1, hit1);
                            hits2.put(vname2, hit2);
                            // this.isMappableTo(poly2) => a*x1 + b = x2; a = root(x2.coeff / x1.coeff, exp)
                            int exp1 = hit1[1].getExponent(vname1);
                            int exp2 = hit2[1].getExponent(vname2);
                            busy = exp1 == exp2 && exp1 > 0;
                            if (busy) { // same exponents
                                BigInteger pn = hit1[1].getCoefficient();
                                BigInteger qn = hit2[1].getCoefficient();
                                BigInteger quotRest[] = pn.divideAndRemainder(qn);
                                busy = quotRest[1].equals(BigInteger.ZERO);
                                if (busy) { // evenly divisible
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
                                            result.put(vname2, summ[0].toString() + "+" + fact.toString() + "*" + vname1);
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
                            // both Polynomials had all univariate Monomials
                        } else { // there were some non-univariate
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
        return busy && result.size() >= 1 ? result : null;
    } // isMappableTo

    /** Determines whether <em>this</em> Polynomial can be transformed into <em>poly2</em>
     *  by multiplying the constants of the monomials in <em>poly2</em> by
     *  some factors &lt;&gt; 0.
     *  @param poly2 target Polynomial
     *  @return a list of numbers separated by "," if such factors exist, null otherwise
     */
    public String getGrowingFactors(Polynomial poly2) {
        String result = null;
        int psize1 =  this .size();
        if (psize1 == poly2.size()) {
            Iterator <String> iter1 = this .keySet().iterator();
            Iterator <String> iter2 = poly2.keySet().iterator();
            boolean busy = true;
            while (busy && iter1.hasNext()) {
                String sig1 = iter1.next();
                String sig2 = iter2.next();
                if (sig1.equals(sig2)) {
                    Monomial mono1 = this .get(sig1);
                    Monomial mono2 = poly2.get(sig2);
                    Monomial factor  = mono1.divide(mono2);
                    if (factor != null && factor.isConstant() 
                            && factor.getCoefficient().compareTo(Coefficient.ZERO) > 0
                            ) { // valid factor
                        result = (result != null ? result + "," : "") + factor.toString()
                                .replaceAll(" ", "").replaceAll("\\A\\+", "");
                        // no factor
                    } else {
                        busy = false;
                        result = null;
                    }
                    // sig1 == sig2
                } else {
                    busy = false;
                    result = null;
                }
            } // while iter1
            // same size
        } else { // different size
            result = null;
        }
        return result;
    } // getGrowingFactors

    /** Determines whether <em>this</em> polynomial can be transformed into <em>poly2</em>
     *  by an affine map from the variables in <em>this</em> to the variables in <em>poly2</em>.
     *  @param poly2 target polynomial
     *  @return string representation of the mapping from <em>this</em> to <em>poly2<em>, or <em>null</em>
     *  if no mapping could be determined
     */
    public String similiarity(Polynomial poly2) {
        String result = null;
        if (true) {
            VariableMap mapt = poly2.getExpressionMap();
            boolean outcome = this.substitute(mapt).clone().normalizeIt()
                    .equals(poly2.clone().normalizeIt());
            if (! outcome) {
                if (false) { // old code
                    mapt = this.affineMap   (poly2);
                    outcome = mapt != null;
                    if (outcome) {
                        result = "affine map: "     + mapt.toString();
                    }
                } else { // new code
                    mapt = this.isMappableTo(poly2); // this is the way to map the new element to one in the queue
                    outcome = mapt != null;
                    if (outcome) {
                        result = "is mappable by: " + mapt.toString();
                        if (debug >= 2) {
                            result += " ("  + this .toString()
                                    + " => " + poly2.toString()
                                    +  ") ";        
                        } // debug
                    }
                } // new
            } else { // equals
                result = "same";
            }
        } // if sizes ==
        return result;
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
        this .normalizeIt();
        poly2.normalizeIt();
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
     *  @param map map of variable names to (expressions or null);
     *  whether uppercase variables should be replaced must already be defined in this map
     *  @return a new polynomial
     */
    public Polynomial substitute(Map<String, String> map) {
        String result = this.toString(true); // full representation contains "*var^" for all variables
        Iterator <String> viter = map.keySet().iterator();
        while (viter.hasNext()) { // over all variables to be substituted
            String name = viter.next();
            if (name != null) {
                String expr = map.get(name);
                if (expr != null) {
                    result = result.replaceAll("\\*" + name + "\\^", "*(" + expr + ")^");
                }
            } // if valid mapping
        } // while viter
        return Polynomial.parse(result);
    } // substitute(Map)

    /** Replaces all different variables by "x_y_z", and returns the corresponding Polynomial.
     *  @return a new Polynomial with all variables replaced by a single variable.
     */
    public Polynomial mergeVariables() {
        VariableMap      vmap = this.getVariableMap();
        Iterator<String> viter  = vmap.keySet().iterator();
        String expr = "x_y_z"; // user should (can) not enter underscores, and solvers generate at most one '_'
        while (viter.hasNext()) { // over all variables in the map
            vmap.put(viter.next(), expr); // replace all by a unique variable
        } // while viter
        return this.substitute(vmap);
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
     *  @param vmap1 the map of the variables describing how they were recently substituted
     *  in <em>this</em> Polynomial, or <em>null</em>
     *  @return text with the reason for the decision
     */
    public String evaluate(VariableMap vmap1) {
        // this.normalizeIt();
        StringBuffer result = new StringBuffer(64);
        Coefficient constant = this.getConstant();
        if (false) {
        } else if (this.isConstant()) {
            if (this.isZero()) {
                switch (this.getRelation()) {
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
                switch (this.getRelation()) {
                    default:
                    case EQ_0:
                        result.append(VariableMap.FAILURE);
                        break;
                    case GE_0:
                    case GT_0:
                        result.append(constant.compareTo(Coefficient.ZERO) > 0 ? VariableMap.SUCCESS : VariableMap.FAILURE);
                        break;
                    case NE_0:
                        result.append(VariableMap.SUCCESS);
                        break;
                } // switch relation
                result.append(" constant=");
                result.append(constant.toString());
            }

    /* unsure whether biasedness should be tested
    */
        } else if (this.isBiased()) { // > 0 or < 0
                switch (this.getRelation()) {
                    default:
                    case EQ_0:
                        result.append(VariableMap.FAILURE);
                        break;
                    case GE_0:
                    case GT_0:
                        result.append(constant.compareTo(BigInteger/*Rational*/.ZERO) > 0 ? VariableMap.SUCCESS : VariableMap.FAILURE);
                        break;
                    case NE_0:
                        result.append(VariableMap.SUCCESS);
                        break;
                } // switch relation
                result.append(" biased");

        } else { // not a single constant, not biased
            // check greatest common divisor of variables
            BigInteger varGCD = this.gcdCoefficients(false);
            if (! varGCD.equals(BigInteger.ONE) && ! constant.mod(varGCD).equals(BigInteger.ZERO)) {
                // constant is not divisible by GCD of variables which is != 1
                switch (this.getRelation()) {
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
            } // Test for (x,y,...) elem of {0,1}^n
        } // not a single constant, not biased
        return result.toString();
    } // evaluate

    /** Prints some standard properties of <em>this</em> Polynomial for test
     *  purposes.
     */
    private void printProperties() {
       System.out.println(""
                + "; vgcd="             + this.gcdCoefficients (false)
                + "; gcd="              + this.gcdCoefficients (true)
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
            VariableMap vmap1 = poly1.getVariableMap();
            vmap1.put("c", "0");
            vmap1.put("a", "5*a+1");
            vmap1.put("b", "5*b+1");
            poly2 = poly1.substitute(vmap1);
            System.out.println(poly2.toString(true));
        } else {
            String opt = args[iarg ++];
            if (! opt.startsWith("-") || ! opt.matches("\\-[a-z]+")) {
                poly1 = Polynomial.parse(opt);
                System.out.println(poly1.toString());
                poly1.printProperties();
            } else { // some option
                if (false) {

                } else if (opt.startsWith("-affine")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    poly2 = Polynomial.parse(args[iarg ++]);
                    System.out.println("(\"" + poly1.toString() + "\").affineMap(\""    + poly2.toString() + "\") = "
                            + poly1.affineMap   (poly2));

                } else if (opt.startsWith("-bachet")) {
                    // input is x,y,c of a Mordell equation y^2 = x^3 + c
                    Polynomial x = Polynomial.parse(args[iarg ++]); 
                    Polynomial y = Polynomial.parse(args[iarg ++]);
                    Polynomial c = Polynomial.parse(args[iarg ++]);
                    Polynomial denomX = x.pow(4).subtract((new Polynomial("8")).multiply(c).multiply(x));
                    Polynomial nominX = (new Polynomial("4")).multiply(y.pow(2));
                    Polynomial denomY =         (new Polynomial("8")).multiply(c.pow(2)
                                        ).subtract(
                                                (new Polynomial("20")).multiply(c).multiply(x.pow(3))
                                        ).subtract(
                                                x.pow(6)
                                        );
                    Polynomial nominY = (new Polynomial("8")).multiply(y.pow(3));
                    System.out.println(denomX.toString() + " / " + nominX.toString());
                    System.out.println(denomY.toString() + " / " + nominY.toString());

                } else if (opt.startsWith("-degree")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    System.out.println(poly1.toString() + ".degree()     = " + poly1.degree()    );
                    System.out.println(poly1.toString() + ".degree(true) = " + poly1.degree(true));

                } else if (opt.startsWith("-equiv")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    poly2 = Polynomial.parse(args[iarg ++]);
                    System.out.println(poly1.toString() + " <"
                            + (poly1.isEquivalent(poly2) ? "equiv" : "notequiv") + "> " + poly2);

                } else if (opt.startsWith("-f")) {
                    poly1 = Polynomial.parse(ereader.read(args[iarg ++]));
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

                } else if (opt.startsWith("-grow")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    poly2 = Polynomial.parse(args[iarg ++]);
                    System.out.println("(\"" + poly1.toString() + "\").getGrowingFactors\n(\"" + poly2.toString() + "\") = "
                            + poly1.getGrowingFactors(poly2));

                } else if (opt.startsWith("-hiter")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    VariableMap vmap = poly1.getExpressionMap("1", true);
                    Iterator<String> viter = vmap.keySet().iterator();
                    while (viter.hasNext()) {
                        String vname = viter.next();
                        Monomial highTerms[] = poly1.getHighTerms(vname);
                        System.out.print("(\"" + poly1.toString() + "\").getHighTerms(\"" + vname + "\") = ");
                        System.out.println(highTerms[0].toString() + ", " + highTerms[1].toString());
                    } // while iter1

                } else if (opt.startsWith("-incr")) {
                    // input is: poly vi ei; variable vi runs from 0 to ei 
                    poly1 = Polynomial.parse(args[iarg ++]);
                    VariableMap vmap1 = poly1.getVariableMap("*", true); // x -> x
                    String vname = args[iarg ++];
                    int limit = 1;
                    try {
                        limit = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    int iloop = 0;
                    while (iloop <= limit) {
                        String sloop = String.valueOf(iloop);
                        vmap1.put(vname, sloop);
                        poly2 = poly1.substitute(vmap1);
                        System.out.println(sloop
                                + "\t" + poly2.toString() 
                                + "\t" + poly2.normalizeIt().toString());
                        iloop ++;
                    } // while iloop

                } else if (opt.startsWith("-mappable")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    poly2 = Polynomial.parse(args[iarg ++]);
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
                    poly1 = Polynomial.parse(args[iarg ++]);
                    System.out.println("(\"" + poly1.toString() + "\").isPowerSum() = "
                            + poly1.isPowerSum());

                } else if (opt.startsWith("-reduce")) { 
                    poly1 = Polynomial.parse(args[iarg ++]); 
                    poly2 = poly1.reduceIt();
                    System.out.println("(\"" + poly1.toString() + "\")"
                            + ".reduceIt()" // + " = " + poly2.toFactoredString()
                            + " = "+  poly2.toString());

                } else if (opt.startsWith("-rest")) { // factor, poly
                    String factor = args[iarg ++];
                    poly1 = Polynomial.parse(args[iarg ++]);
                    System.out.println("getRest(" + poly1.toString() + ", " + factor + ") -> "
                            +  poly1.getRest(new Coefficient(factor)).toString());

                } else if (opt.startsWith("-solut")) { // poly brat
                    poly1 =            Polynomial.parse(args[iarg ++]);
                    BigRational brat1 = new BigRational(args[iarg ++]);
                    System.out.println(brat1.toString() + " solves " + poly1.toString() 
                            + "? " + poly1.hasSolution(brat1));

                } else if (opt.startsWith("-spoly")) {
                    exprs = ereader.getArguments(iarg, args);
                    poly1 = Polynomial.parse(exprs[0]);
                    poly2 = Polynomial.parse(exprs[1]);
                    System.out.println("S(" + poly1.toString() + ", " + poly2.toString() + ") = "
                            + poly1.s_Polynomial(poly2).toString());

                } else if (opt.startsWith("-square")) { 
                    poly1 = Polynomial.parse(args[iarg ++]); 
                    poly2 = poly1.getSquareCompletion_2();
                    System.out.println("(\"" + poly1.toString() + "\")"
                            + ".squareCompletion_2() = " + poly2.toFactoredString()
                            + " = "+  poly2.toString());

                } else if (opt.startsWith("-subst")) { // substitute
                    poly1 = Polynomial.parse(args[iarg ++]); 
                    VariableMap vmap2 = poly1.getExpressionMap("2*x+1", true);
                    System.out.println("(\"" + poly1.toString() + "\")"
                            + ".substitute(2*x+1) = " + poly1.substitute(vmap2).toString());

                } else if (opt.startsWith("-transp")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    System.out.println("getTransposableClasses(\"" + poly1.toString() + "\") = "
                            + poly1.getTransposableClasses().toString());

                } else if (opt.startsWith("-var")) { // getVariablePowers and groupBy
                    String varName = args[iarg ++];
                    String[] vars = varName.split("\\W"); // non-word characters
                    poly1 = Polynomial.parse(ereader.read(args[iarg ++]));
                    System.out.println(poly1.toString());
                    Monomial mono4 = new Monomial(vars);
                    System.out.println("getVariablePowers(" + varName + ")="   + poly1.getVariablePowers(mono4));
                    System.out.println(          "groupBy(" + varName + ")=\n" + poly1.groupBy          (mono4).toList(false));

                } else if (opt.startsWith("-widen")) { 
                    String varName = args[iarg ++];
                    poly1 = Polynomial.parse(args[iarg ++]); 
                    RelationSet rset2 = poly1.getPowerFactors(varName);
                    System.out.println("(\"" + poly1.toString(false) + "\")"
                            + ".getPowerFactors(\""  + varName + "\") ="   + rset2.toList(true));
                    BigInteger widev = rset2.prepareIt(varName);
                    System.out.println(".prepareIt(\"" + varName + "\")=" + widev.toString()
                            + ", rootv=" + rset2.getTupleShift().toString()   
                            + rset2.toList(true));
                } else {
                    System.err.println("invalid option " + opt);
                }
            } // some option
        } // at least 1 argument
    } // main

} // Polynomial
