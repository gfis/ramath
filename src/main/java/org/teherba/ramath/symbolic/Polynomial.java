/*  Polynomial: a symbolic, multivariate Polynomial with addition, multiplication,
 *  exponentiation, comparision and other operations
 *  @(#) $Id: Polynomial.java 744 2011-07-26 06:29:20Z gfis $
 *  2016-07-09: Signature
 *  2016-04-14: isPreservedBy(Matrix)
 *  2016-03-31: Brahmagupta identity
 *  2016-02-03: derivative(varx, order)
 *  2015-12-06: toString(boolean) -> toString(1)
 *  2015-11-16: Groebner bases moved to Ideal.java
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
import  org.teherba.ramath.symbolic.Signature;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.BigIntegerUtil;
import  org.teherba.ramath.BigRational;
import  org.teherba.ramath.Coefficient;
import  org.teherba.ramath.PrimeFactorization;
import  org.teherba.ramath.linear.Matrix;
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

/** A {@link Polynomial} is a sum of {@link Monomial}s, ordered by the signatures
 *  (variable names and natural number exponents) of the monomials.
 *  <p>From http://en.wikipedia.org/wiki/Polynomial:
 *  <blockquote>
In mathematics, a Polynomial is a finite length expression constructed from variables
(also known as indeterminates) and constants, using the operations of addition, subtraction, multiplication,
and constant non-negative whole number exponents.
For example, x<sup>2</sup> − 4x + 7 is a Polynomial, but x<sup>2</sup> − 4/x + 7x<sup>3/2</sup> is not ...
 *  </blockquote>
 *
 *  Though a monomial may be zero, there is at most one,
 *  non-zero constant monomial (without variables) in any Polynomial.
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
     *  the {@link Monomial#signature signatures} of all monomials in the Polynomial
     *  are mapped to the monomials.
     */
    private TreeMap<Signature, Monomial> monomials;

    /** A pseudo property which marks all places where future
     * additional properties must be inserted or cloned
     */
    private int pseudo;

    /** Codes for the comparision of <em>this</em> Polynomial with zero.
     *  There are no codes LT0, LE0 since they can be translated to GT0, GE0
     *  by inversion of the sign (method {@link #negativeOf}).
     *  The default, predefined relation is EQ0.
     */
    public static enum Relator
            { EQ_0  // this Polynomial =  0
            , GT_0  // this Polynomial >  0
            , GE_0  // this Polynomial >= 0
            , NE_0  // this Polynomial != 0
            };

    /** relation with zero */
    private Relator relation;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public Polynomial() {
        monomials = new TreeMap<Signature, Monomial>(); // an empty map indicates value 0
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

    /** Construct from another Polynomial
     *  @param poly another Polynomial which is cloned
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

    /** Deep copy of the Polynomial with all {@link Monomial}s.
     *  @return independant copy of the Polynomial
     */
    public Polynomial clone() {
        Polynomial result = new Polynomial();
        TreeMap<Signature, Monomial> resultMonomials = new TreeMap<Signature, Monomial>();
        Iterator<Signature> titer = monomials.keySet().iterator();
        while (titer.hasNext()) {
            Signature tsig = titer.next();
            resultMonomials.put(tsig, this.monomials.get(tsig).clone());
        } // while titer
        result.setFactor    (this.getFactor());
        result.setMonomials (resultMonomials);
        result.setPseudo    (this.getPseudo());
        result.setRelation  (this.getRelation());
        return result;
    } // clone

    /** Returns a new Polynomial constructed from a string representation, possibly with an
     *  error message inserted at the point where parsing could not proceed.
     *  @param input the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return a reference to a new Polynomial
     */
    public static Polynomial parse(String input) {
        return (new PolynomialParser()).parseFrom(input);
    } // parse

    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Gets one of the {@link Monomial}s of the Polynomial.
     *  @param sig signature (variable names and their exponents) of the desired monomial
     *  @return monomial
     */
    public Monomial get(Signature sig) {
        return this.monomials.get(sig);
    } // get

    /** Inserts a {@link Monomial}s into the Polynomial.
     *  If there is already a monomial with the parameter signature, it is overwritten.
     *  @param sig signature (variable names and their exponents) of the desired monomial
     *  @param mono2 monomial to be inserted or overwritten.
     */
    public void put(Signature sig, Monomial mono2) {
        this.monomials.put(sig, mono2);
    } // put

    /** Gets the key set of the internal mapping from signatures to {@link Monomial}s.
     *  @return set of signatures
     */
    public Set<Signature> keySet() {
        return this.monomials.keySet();
    } // keySet

    /** Gets the internal map of {@link Monomial}s.
     *  @return map from signatures (variable names and their exponents) to monomials
     */
    public TreeMap<Signature, Monomial> getMonomials() {
        return this.monomials;
    } // getMonomials

    /** Sets the internal map of {@link Monomial}s.
     *  @param map map from signatures (variable names and their exponents) to monomials
     */
    public void setMonomials(TreeMap<Signature, Monomial> map) {
        this.monomials = map;
    } // setMonomials

    /** Gets one of the {@link Monomial}s of the Polynomial.
     *  @param sig signature (variable names and their exponents) of the desired monomial
     *  @return monomial
     */
    public Monomial getMonomial(Signature sig) {
        return this.monomials.get(sig);
    } // getMonomial(sig)

    /** Gets one of the {@link Monomial}s of the Polynomial.
     *  @param varName variable name
     *  @param exponent exponent of the variable
     *  @return Monomial
     */
    public Monomial getMonomial(String varName, int exponent) {
        Monomial result = null;
        Signature sig1 = (new Monomial(varName, exponent)).signature();
        Iterator<Signature> iter = this.keySet().iterator();
        boolean busy = true;
        while (busy && iter.hasNext()) {
            Signature sig2 = iter.next();
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

    /*-------------- lightweight methods -----------------------------*/

    /** Returns the number of {@link Monomial}s (summands) in the Polynomial
     *  @return number of monomials &gt;= 1
     */
    public int size() {
        return monomials.size();
    } // size

    /** Returns a String representation of <em>this</em> {@link Polynomial}, either compressed or full
     *  @param mode 
     *  <ul>
     *  <li>0 = normal</li>
     *  <li>1 = full (for substitution), with coefficients 1 and relation " = 0"</li>
     *  <li>2 = nice / human legible, with superscripts for exponents</li>
     *  <li>3 = with prime factors</li>
     *  <li>4 = with colored prime factors</li>
     *  <li>5 = exponentiation as products</li>
     *  </ul>
     *  @return "17*a0^2*a1 + a2^2*a3^3 - 4*b4", for example for mode = 0
     */
    public String toString(int mode) {
        StringBuffer buffer = new StringBuffer(2048);
        Iterator<Signature> iter = monomials.keySet().iterator();
        while (iter.hasNext()) {
            Signature sig = iter.next();
            buffer.append(monomials.get(sig).toString(mode));
        } // while iter
        if (buffer.length() == 0) {
            buffer.append("0");
        }
        switch (relation) {
            default:
            case EQ_0:
                if (mode == 1) {
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
        return buffer.toString().replaceAll("\\A\\s*\\+\\s*", ""); // leading "+"
    } // toString(mode)

    /** Returns a String representation of <em>this</em> {@link Polynomial}, with leading sign,
     *  in compressed representation, without the relation.
     *  @return "17*a0^2*a1 + a2^2*a3^3 - 4*b4", for example
     */
    public String toString() {
        return this.toString(0); // normal
    } // toString()

    /** Returns a nice, human legible String representation of <em>this</em> {@link Polynomial}
     *  @return "-2x^7*y^8", for example
     */
    public String niceString() {
        return toString(2);
    } // niceString()

    /** Returns a String representation of <em>this</em> {@link Polynomial},
     *  in compressed representation, without the relation,
     *  and with coefficients splitted into powers of prime factors.
     *  @return "2^2*3*5*x*y^3 + 2*z^4" for example
     */
    public String toFactoredString() {
        StringBuffer buffer = new StringBuffer(2048);
        Iterator<Signature> iter = monomials.keySet().iterator();
        while (iter.hasNext()) {
            Signature sig = iter.next();
            buffer.append(monomials.get(sig).toFactoredString());
        } // while iter
        if (buffer.length() == 0) {
            buffer.append("0");
        }
        String result = buffer.toString();
        return result.substring(result.startsWith(" + ") ? 3 : 0);
    } // toFactoredString()

    //----------------
    /** Gets the constant {@link Monomial} of <em>this</em> {@link Polynomial},
     *  if any, or the constant 0.
     *  @return the constant monomial if there is one, or 0
     */
    public Coefficient getConstant() {
        Coefficient result = Coefficient.ZERO;
        Monomial monomial = monomials.get(Signature.CONSTANT);
        if (monomial != null) {
            result = monomial.getCoefficient();
        }
        return result;
    } // getConstant

    /** Determines whether there is a non-zero constant {@link Monomial} in the Polynomial
     *  @return true if there is a constant monomial, or false otherwise
     */
    public boolean hasConstant() {
        return monomials.get(Signature.CONSTANT) != null;
    } // hasConstant

    /** Determines whether <em>this</em> {@link Polynomial} contains no variables
     * (only a constant {@link Monomial}).
     *  @return true if the Polynomial is constant, or false otherwise
     */
    public boolean isConstant() {
        return monomials.size() == 0 || monomials.size() == 1 && hasConstant();
    } // isConstant private static final String FAILURE = "? ";

    /** Determines whether there are one or more variables in the {@link Monomial}s of
     *  <em>this</em> {@link Polynomial}.
     *  @return true if there is at least one variable, or false otherwise
     */
    public boolean hasVariable() {
        boolean result = false;
        result = getVariableMap().size() > 0;
        return result;
    } // hasVariable

    /** Determines whether <em>this</em> {@link Polynomial} is zero (represented by no monomials)
     *  @return true if the Polynomial is zero, or false otherwise
     */
    public boolean isZero() {
        return monomials.size() == 0;
    } // isZero

    /** Determines whether all {@link Monomial}s in <em>this</em> {@link Polynomial}
     *  have the same sign. When all variables are assumed to have values >= 0,
     *  a biased Polynomial has no non-trivial solutions.
     *  @return true if the Polynomial has one type of sign and a constant, or false otherwise
     */
    public boolean isBiased() {
        boolean result = true; // assume success
        boolean first = true;
        int sign = 0;
        Iterator<Signature> iter1 = this.keySet().iterator();
        while (result && iter1.hasNext()) {
            Signature sig1 = iter1.next();
            if (first) {
                first = false;
                sign = monomials.get(sig1).signum();
            } else if (monomials.get(sig1).signum() != sign) {
                result = false;
            }
        } // while iter1
        return result;
    } // isBiased

    /** Gets the {@link Signature} of a {@link Monomial} with a variable
     *  (with upper or lower case first letter)
     *  having exponent 1, and which does not occur otherwise in <em>this</em>
     *  {@link Polynomial}, or <em>null</em> if no such variable exists.
     *  @return a Signature of an isolated variable, or <em>null</em>
     */
    public Signature getIsolatedSignature() {
        return getIsolatedSignature(true); // get with upper or lower case first letter
    } // getIsolatedSignature()
    
    /** Gets the {@link Signature} of a {@link Monomial} with a variable
     *  having exponent 1, and which does not occur otherwise in <em>this</em>
     *  {@link Polynomial}, or <em>null</em> if no such variable exists.
     *  @param upperSubst whether variables with uppercase first letter should be returned
     *  @return a Signature of an isolated variable, or <em>null</em>
     */
    public Signature getIsolatedSignature(boolean upperSubst) {
        Signature result = null;
        Iterator<Signature> titer = this.keySet().iterator();
        boolean busy = true;
        while (busy && titer.hasNext()) {
            Signature tsig = titer.next();
            Monomial monot = this.get(tsig);
            if (monot.isUniVariate() && monot.getCoefficient().abs().equals(Coefficient.ONE)) { // this is a candidate variable
                String vname = monot.firstName();
                if (upperSubst || vname.substring(0, 1).equals(vname.substring(0, 1).toLowerCase())) {
                    int vcount = 0; // vname should occur exactly once in this Polynomial
                    Iterator<Signature> viter = this.keySet().iterator();
                    while (vcount < 2 && viter.hasNext()) { // check all Monomials whether they contain vname
                        Monomial monov = this.get(viter.next());
                        int exp = monov.getExponent(vname);
                        if (exp > 0) { // occurs
                            vcount += exp; // will be > 1 if it occurs elsewhere
                        } // occurs
                    } // while vcount, viter
                    if (vcount == 1) { // exactly once
                        busy = false; // break outer loop
                        result = tsig;
                    }
                } // upperSubst
            } // univariate
        } // while titer
        return result;
    } // getIsolatedSignature

    //----------------
    /** Determines whether <em>this</em> {@link Polynomial} is a sum of like powers
     *  of different variables, without a constant, for example 4*a^2 + 4*b^2 - 4*c^2 = 0
     *  @return 0 if the Polynomial is no sum of like powers,
     *  or the common factor &gt;= 1 of all variables with the same exponent (4 in the example)
     */
    public Coefficient isPowerSum() {
        Coefficient result = null;
        int exp           = 0;
        boolean first     = true;
        boolean busy      = true;
        Iterator<Signature> iter1 = this.keySet().iterator();
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

    //----------------
    /** Determines whether <em>this</em> {@link Polynomial} is preserved when 
     *  its variable vector is multiplied by the parameter {@link Matrix}.
     *  @param amat Matrix to be multiplied on the variable Vector
     *  @return true if the Polynomial still evaluates to zero, or false otherwise
     */
    public boolean isPreservedBy(Matrix amat) {
        VariableMap vmap = this.getVariableMap().multiplyBy(amat);
        return this.substitute(vmap).isZero();
    } // isPreservedBy

    /*-------------- arithmetic operations -------------------------*/

    /** Adds a {@link Monomial} to <em>this</em> {@link Polynomial}.
     *  @param mono2 add this Monomial
     *  @return reference to <em>this</em> Polynomial that was modified
     */
    protected Polynomial addTo(Monomial mono2) {
        Signature sig2 = mono2.signature();
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

    /** Clone and adds all monomials of another Polynomial to this Polynomial.
     *  @param poly2 add this Polynomial
     *  @return reference to a new object, the sum
     */
    public Polynomial add(Polynomial poly2) {
        Polynomial result = this.clone();
        Iterator<Signature> iter2 = poly2.keySet().iterator();
        while (iter2.hasNext()) {
            Signature sig2 = iter2.next();
            result.addTo(poly2.get(sig2));
        } // while iter2
        return result;
    } // add(Polynomial)

    /** Subtracts a {@link Monomial} from this Polynomial.
     *  @param mono2 subtract this monomial
     *  @return reference to <em>this</em> Polynomial that was modified
     */
    protected Polynomial subtractFrom(Monomial mono2) {
        Signature sig2 = mono2.signature();
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
    public Polynomial negativeOf() {
        Iterator <Signature> titer = monomials.keySet().iterator();
        while (titer.hasNext()) {
            Monomial mono1 = monomials.get(titer.next());
            mono1.setCoefficient(Coefficient.valueOf(mono1.getCoefficient().negate()));
        } // while titer
        return this;
    } // negativeOf

    /** Clone and subtract all monomials of another Polynomial from this Polynomial.
     *  @param poly2 subtract this Polynomial
     *  @return reference to a new object, the difference
     */
    public Polynomial subtract(Polynomial poly2) {
        Polynomial result = this.clone();
        Iterator<Signature> iter2 = poly2.keySet().iterator();
        while (iter2.hasNext()) {
            Signature sig2 = iter2.next();
            result.subtractFrom(poly2.get(sig2));
        } // while iter2
        return result;
    } // subtract(Polynomial)

    /** Multiplies all monomials of this Polynomial with a {@link Monomial}.
     *  @param mono2 multiply with this monomial
     *  @return reference to <em>this</em> Polynomial which was modified
     */
    protected Polynomial multiplyBy(Monomial mono2) {
        Iterator<Signature> iter = monomials.keySet().iterator();
        if (mono2.isZero()) {
            monomials.clear(); // an empty map indicates constant 0
        } else {
            while (iter.hasNext()) {
                Signature sig1 = iter.next();
                monomials.put(sig1, monomials.get(sig1).multiply(mono2));
            } // while iter
        }
        return this;
    } // multiplyBy(Monomial)

    /** Multiplies all {@link Coefficient}s of <em>this</em> {@link Polynomial}
     *  with a {@link BigInteger}.
     *  This is the inverse operation to {@link #deflateIt}.
     *  @param number multiply with this BigInteger
     *  @return reference to <em>this</em> Polynomial which was modified
     */
    public Polynomial multiplyBy(BigInteger number) {
        if (! number.equals(BigInteger.ONE)) {
            Iterator<Signature> iter = monomials.keySet().iterator();
            while (iter.hasNext()) {
                Signature sig1 = iter.next();
                monomials.get(sig1).multiplyBy(number);
            } // while iter
        } // != 1
        return this;
    } // multiplyBy(number)

    /** Clone and multiply this Polynomial with another Polynomial.
     *  @param poly2 multiply with this Polynomial
     *  @return reference to new object, the product
     */
    public Polynomial multiply(Polynomial poly2) {
        Polynomial result = new Polynomial(); // empty = 0
        Iterator<Signature> iter1 = this .keySet().iterator();
        while (iter1.hasNext()) {
            Signature sig1 = iter1.next();
            Iterator<Signature> iter2 = poly2.keySet().iterator();
            while (iter2.hasNext()) {
                Signature sig2 = iter2.next();
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

    /** Take four {@link Polynomial}s a, b, c, d, and an optional n,
     +  and return the possible 2 sets of 2 summands in brackets (unsquared)
     *  on the right side of the Brahmagupta identity:
     *  <pre>
     *  [0]   [4] [1]   [2]   [4] [3]
     *  (a^2 + n * b^2)*(c^2 + n * d^2) = (ac - nbd)^2 + n(ad + bc)^2
     *                                    [   0    ]      [   1   ]
     *  (a^2 + n * b^2)*(c^2 + n * d^2) = (ac + nbd)^2 + n(ad - bc)^2 
     *                                    [   2    ]      [   3   ]
     *  </pre>
     *  @param poly input Polynomials for the formula
     *  @return resulting Polynomials for the +- and the -+ variant
     */
    public static Polynomial[] brahmagupta(Polynomial[] poly) {
        Polynomial ac = poly[0].multiply(poly[2]);
        Polynomial bd = poly[1].multiply(poly[3]);
        Polynomial ad = poly[0].multiply(poly[3]);
        Polynomial bc = poly[1].multiply(poly[2]);
        if (poly.length > 4) {
            bd = bd.multiply(poly[4]); // * n
        }
        return new Polynomial[]
                { ac.subtract(bd)
                , ad.add     (bc)
                , ac.add     (bd)
                , ad.subtract(bc)
                } ;
    } // brahmagupta

    /** Divides all monomials of this Polynomial by a {@link Monomial}.
     *  The caller should ensure that all monomials are in fact divisible
     *  by <em>mono2</em>, otherwise an exception will be thrown.
     *  @param mono2 divide by this monomial
     *  @return reference to <em>this</em> Polynomial which was modified
     */
    protected Polynomial divideBy(Monomial mono2) {
        if (mono2.isZero()) {
            throw new ArithmeticException();
        } else {
            Iterator<Signature> iter = monomials.keySet().iterator();
            while (iter.hasNext()) {
                Signature sig1 = iter.next();
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
            Iterator<Signature> iter = monomials.keySet().iterator();
            while (iter.hasNext()) {
                Signature sig1 = iter.next();
                monomials.get(sig1).divideBy(number);
            } // while iter
        } // != 1
        return this;
    } // divideBy(number)

    /** Clone and divide a {@link Polynomial} by another Polynomial
     *  assuming that there is no rest.
     *  This method is needed only for {@link PolynomialParser},
     *  and <em>poly2</em> must be a {@link Monomial} which divides
     *  evenly in all monomials of <em>this</em> Polynomial.
     *  @param poly2 divide by this Polynomial
     *  @return quotient
     */
    public Polynomial divide(Polynomial poly2) {
        Polynomial result = this.clone();
        if (poly2.keySet().size() != 1) {
            throw new IllegalArgumentException("divisor may have only one monomial");
        } else {
            result.divideBy(poly2.getMonomials().firstEntry().getValue()); // it is the only one
        }
        return result;
    } // divide(Polynomial)

    /** Determines whether the parameter {@link BigRational} is a
     *  rational solution (root) of <em>this</em> univariate {@link Polynomial}.
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
            Iterator<Signature> iter = monomials.keySet().iterator();
            BigRational sum = BigRational.ZERO;
            while (iter.hasNext()) {
                Signature sig1 = iter.next();
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

    //-----------------------------------------------

    /** Gets a map from all variable names (key) to <em>null</em> (value).
     *  @return map of variable names mapped to <em>null</em>
     */
    public VariableMap getVariableMap() {
        return getVariableMap("", true);
    } // getVariableMap()

    /** Gets a map from all variable names in <em>this</em> Polynomial (the key)
     *  to some string value.
     *  @param upperSubst whether uppercase variables should be returned in the map
     *  @return map of variable names mapped to <em>null</em>
     */
    public VariableMap getVariableMap(boolean upperSubst) {
        return getVariableMap("", upperSubst);
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
        Iterator<Signature> titer = monomials.keySet().iterator();
        while (titer.hasNext()) { // over all signatures of these monomials
            Signature tsig = titer.next();
            Monomial monot = monomials.get(tsig);
            Iterator<String> viter = monot.keySet().iterator();
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
    public RefiningMap getRefiningMap(String value, boolean upperSubst) {
        RefiningMap result = new RefiningMap();
        Iterator <Signature> titer = monomials.keySet().iterator();
        while (titer.hasNext()) { // over all signatures of these monomials
            Signature tsig = titer.next();
            Monomial monot = monomials.get(tsig);
            Iterator <String> viter = monot.keySet().iterator();
            while (viter.hasNext()) { // over all variables in a monomial
                String varName = viter.next();
                if (upperSubst || varName.compareTo("a") >= 0) {
                    result.put(varName, value.replaceAll("x", varName));
                } // if upperSubst
            } // while viter
        } // while titer
        return result;
    } // getRefiningMap(String, boolean)

    /** Gets a map from all variable names in <em>this</em> Polynomial (the key)
     *  to an expression involving this variable.
     *  @param value expression with literal "x" as placeholder for the variable names
     *  @return map of variable names mapped to an expression string
     */
    public RefiningMap getRefiningMap(String value) {
        return getRefiningMap(value, true);
    } // getRefiningMap(String)

    /** Gets a map from all variable names in <em>this</em> Polynomial (the keys)
     *  to the expression "0+1*x", where the literal "x" is a placeholder for
     *  the corresponding key (= variable name).
     *  @return map of variable names mapped to an expression string
     */
    public RefiningMap getRefiningMap() {
        return getRefiningMap("0+1*x", true); // REFINED_FORM
    } // getRefiningMap()

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
        Iterator <Signature> titer = monomials.keySet().iterator();
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

    //----------------
    /** Determines the degree, that is the sum of exponents in all {@link Monomial}s
     *  if it is the same in all Monomials
     *  @param upperSubst whether the exponents of uppercase variables should be counted
     *  @return degree >= 0, or -1 if the {@link Polynomial} has Monomials with different degrees
     */
    public int degree(boolean upperSubst) {
        int result = 0;
        Iterator <Signature> titer = monomials.keySet().iterator();
        if (! isConstant()) {
            result = monomials.get(titer.next()).degree(upperSubst);
        }
        while (result >= 0 && titer.hasNext()) {
            int degm = monomials.get(titer.next()).degree(upperSubst);
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
        return degree(true);
    } // degree()

    /** Determines whether all {@link Monomial}s are of the same {@link #degree}.
     *  @param upperSubst whether the exponents of uppercase variables should be counted
     *  @return true if the sum of exponents in all Monomials is the same, false otherwise
     */
    public boolean isHomogeneous(boolean upperSubst) {
        return degree(upperSubst) >= 0;
    } // isHomogeneous

    /** Determines whether all {@link Monomial}s are of the same {@link #degree}.
     *  @return true if the sum of exponents in all Monomials is the same, false otherwise
     */
    public boolean isHomogeneous() {
        return degree(true) >= 0;
    } // isHomogeneous

    //----------------
    /** Determines the maximum of the exponents for some variable in all {@link Monomial}s
     *  of <em>this</em> {@link Polynomial}
     *  @param varName determine the maximum degree of this variable
     *  @return maxDegree >= 0
     */
    public int maxDegree(String varName) {
        int result = 0;
        Iterator <Signature> titer = monomials.keySet().iterator();
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
     *  @param upperSubst whether the exponents of uppercase variables should be counted
     *  @return maxDegree >= 0
     */
    public int maxDegree(boolean upperSubst) {
        int result = 0;
        Iterator <Signature> titer = monomials.keySet().iterator();
        while (titer.hasNext()) {
            int degm = monomials.get(titer.next()).degree(upperSubst);
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
        return this.maxDegree(true);
    } // maxDegree()

    //----------------
    /** Gets the greatest common (positive) divisor of the coefficients of the variable {@link Monomial}s,
     *  or of all monomials if they are integral, or +1.
     *  @param all whether all Monomials should be investigated,
     *  otherwise the non-constant ones are taken only
     *  @return common divisor &gt;= 1
     */
    public BigInteger gcdCoefficients(boolean all) {
        BigInteger result = BigInteger.ONE;
        Iterator <Signature> titer = monomials.keySet().iterator();
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

    /** Gets the greatest common (positive) divisor of all coefficients
     *  of all monomials if they are integral, or +1.
     *  @return common divisor &gt;= 1
     */
    public BigInteger gcdCoefficients() {
        return gcdCoefficients(true);
    } // gcdCoefficients

    /*---------------- heavyweight methods ----------------------*/

    //-----------------
    // Generate subsets
    //------------------

    /** Takes all variables from the parameter {@link Monomial} <em>mono2</em> and
     *  creates a sum of Monomials for all different powers of these variables
     *  occurring in <em>this</em> Polynomial.
     *  @param mono2 a multiplication of all desired variables (names with exponent 1 and constant +1)
     *  @return {@link Polynomial} whose Monomials have coefficient 1, and which consists of
     *  all different powers of the variables in <em>mono2</em>
     */
    private Polynomial getVariablePowers(Monomial mono2) {
        Polynomial result = new Polynomial();
        Monomial mono3 = null;
        Iterator <Signature> titer = this.monomials.keySet().iterator();
        while (titer.hasNext()) { // over all monomials
            mono3 = this.monomials.get(titer.next());
            result.addTo(mono3.getVariablePowers(mono2));
        } // while titer
        Iterator <Signature> riter = result.monomials.keySet().iterator();
        while (riter.hasNext()) { // over all monomials
            result.monomials.get(riter.next()).setCoefficient(1);
        } // while riter
        return result;
    } // getVariablePowers

    /** Takes the variable names from the parameter {@link Monomial} <em>mono2</em>,
     *  creates an empty {@link RelationSet} and, for all Monomials that
     *  occur as combinations of powers of the selected variables in <em>this</em>
     *  {@link Polynomial}, adds a new {@link Polynomial} to the set which has the
     *  Monomial as key and the factors of the Monomial as terms.
     *  @param mono2 a multiplication of all desired variables (names with exponent 1 and constant +1)
     *  @return a RelationSet with one Polynomial for each variable combination
     */
    public RelationSet groupBy(Monomial mono2) {
    	Polynomial prest = this.clone();
        RelationSet result = new RelationSet();
        Polynomial poly3 = this.getVariablePowers(mono2);
        Iterator <Signature> piter3 = poly3.monomials.keySet().iterator();
        while (piter3.hasNext()) { // over all combinations of powers of variables
            Monomial mono3 = poly3.monomials.get(piter3.next()); // specific combination - where can it be extracted?
            Polynomial poly4 = new Polynomial();
            Iterator <Signature> piter1 = this.monomials.keySet().iterator();
            while (piter1.hasNext()) { // over all monomials of <em>this</em> Polynomial
                Monomial mono5 = this.monomials.get(piter1.next()); // current in this Polynomial
                if (mono5.getVariablePowers(mono2).equals(mono3)) { // mono3 can be extracted
                    poly4.addTo(mono5.getFactorOf(mono3)); // poly4 assembles the remaining factors
                } // can be extracted
            } // while titer
            BigInteger divisor = poly4.gcdCoefficients();
            if (divisor.compareTo(BigInteger.ONE) > 0) {
                mono3.multiplyBy(divisor);
                poly4.divideBy  (divisor);
            }
            poly4.setFactor(mono3);
            result.insert(poly4);
            prest = prest.subtract(poly4.multiply(new Polynomial(mono3)));
        } // while titer
        if (! prest.isZero() || result.size() == 0) {
	        result.insert(prest);
	    }
        return result;
    } // groupBy

    /** Extracts a new {@link Polynomial} consisting of all {@link Monomial}s
     *  whose coefficients are not divisible by the parameter <em>factor</em>.
     *  @param factor the common constant factor of the other monomials
     *  @return Polynomial with Monomials from <em>this</em> Polynomial
     */
    public Polynomial getRest(BigInteger factor) {
        Polynomial result = new Polynomial();
        Iterator <Signature> titer = this.monomials.keySet().iterator();
        while (titer.hasNext()) { // over all monomials
            Monomial mono = this.monomials.get(titer.next());
            if (! mono.getCoefficient().mod(factor).equals(BigInteger.ZERO)) { // indivisible
                result.addTo(mono.clone());
            } // if indivisible
        } // while titer
        return result;
    } // getRest

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
        Iterator <Signature> titer = this.monomials.keySet().iterator();
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

    /** Extracts a new {@link Polynomial} consisting of all {@link Monomial}s
     *  that involve the variable <em>varName</em>.
     *  @param varName variable to be factored out
     *  @return subset Polynomial with monomials from <em>this</em> Polynomial
     */
    public Polynomial getSubPolynomial(String varName) {
        Polynomial result = new Polynomial();
        Iterator <Signature> titer = this.monomials.keySet().iterator(); // signatures of Monomials
        while (titer.hasNext()) { // over all monomials
            Signature tsig = titer.next();
            Monomial mono = this.monomials.get(tsig);
            if (mono.getExponent(varName) > 0) { // involved
                result.put(tsig, mono.clone());
            } // if involved
        } // while titer
        return result;
    } // getSubPolynomial

    // Elimination of lower power terms

    /** Modifies <em>this<em> {@link Polynomial} such that
     *  all {@link Monomial}s consisting of a power of a variable
     *  "consumes" as much as possible of the {@link Coefficient} into
     *  the variable, and adjusts the {@link VariableMap} accordingly
     *  by multiplying the value of the variable.
     *  Assumption: all non-constant {@link Monomial}s
     *  are {@link Monomial#isUniVariate univariate},
     *  that is they contain only one variable.
     *  @param vmap map of variable names to expression strings
     *  @return <em>this<em> modified {@link Polynomial};
     *  side effect: modifies <em>vmap</em>
     */
    public Polynomial reducePowerCoefficients(VariableMap vmap) {
        Iterator <Signature> titer = this.monomials.keySet().iterator();
        while (titer.hasNext()) { // over all monomials
            Monomial mono1 = this.monomials.get(titer.next());
            if (mono1.isUniVariate()) { // implies not isConstant
                String var1 = mono1.firstName();
                BigInteger croot = mono1.reducePowerCoefficient(var1);
                String vexpr = vmap.get(var1);
                if (    // false &&
                        ! croot.equals(BigInteger.ONE)) { // could extract a root > 1
                    vexpr = "(" + vmap.get(var1) + ")*" + croot.toString();
                } // could extract a root > 1
                vmap.put(var1, (new Polynomial(vexpr).toString()));
            } else {
                // a constant is not modified
                // multi-variate Monomials are not expected, and remain unchanged
            }
        } // while titer
        return this;
    } // reducePowerCoefficients

    /** Performs one square completion step, and widens all subPolynomials
     *  appropriately.
     *  @param varName the variable to be square completed in this step
     *  @param vmapt the {@link VariableMap} assembled so far, maps variables to the
     *  expressions for which they are to be substituted
     *  @param phead the subPolynomial which is already processed
     *  @param pbody the subPolynomial for variable <em>varName</em>, to be square completed
     *  @param ptail the remaining {@link Monomial}s with other variables
     *  @param debug2 = 0: no debugging output, 1 = some, 2 = more, 3 = most
     *  @return the modified, remaining <em>ptail</em>;
     *  side effects: vmapt, phead
     */
    public Polynomial completeSquare(String varName, VariableMap vmapt
            , Polynomial phead, Polynomial pbody, Polynomial ptail, int debug2) {
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
        BigInteger root2  = BigInteger.ONE; // the root(e2) of coef2
        BigInteger fbody  = pbody.gcdCoefficients(true); // gcd factor for the whole bracket
        if (! fbody.equals(BigInteger.ONE)) {
            pbody.divideBy(fbody); // pbody -> fbody*(pbody)
        } // fbody > 1
        Monomial mlead = pbody.getMonomial(varName, e2).clone(); // the one with v^2
        pbody.subtractFrom(mlead).divideBy(new Monomial(varName)); // pbody -> mlead + (pbody / v^1)
        if (mlead.signum() < 0) { // move any negative sign of mlead to fbody
            mlead.negativeOf(); // now positive
            fbody = fbody.negate();
            pbody.negativeOf();
        } // negate
        if (! pbody.isZero()) {
            if (debug2 >= 3) {
                System.out.println("start1 " + varName
                        + ", pbody=" + pbody.toString()
                        + ", fbody=" + fbody.toString()
                        + ", mlead=" + mlead.toString()
                        );
            }
            BigInteger gcdv1 = pbody.gcdCoefficients(true); // inner gcd of the factor of v^1
            if (debug2 >= 3) {
                System.out.println("start2 " + varName
                        + ", phead=" + phead.toString()
                        + ", pbody=" + pbody.toString()
                        + ", ptail=" + ptail.toString()
                        + ", mlead=" + mlead.toString()
                        + ", fbody=" + fbody.toString()
                        + ", gcdv1=" + gcdv1.toString()
                        );
            }
            //----------------------
            // Determine factors which allow to perform a square completion properly.
            // - (root2*varName)^2 will become the lead term
            // - multiply the whole Polynomial by widev
            // - divide the cofactor of varName^1 by divs1 to get the square completion
            BigInteger coef2 = BigInteger.ONE; // the new coefficient of mlead
            BigInteger widev = BigInteger.ONE; // the overall widening factor for the remaining constituents
            BigInteger coef1 = gcdv1; // the new coefficient for pbody
            BigInteger flead = mlead.getCoefficient().bigIntegerValue();
            PrimeFactorization pflead = null;
            boolean busy = true;
            while (busy) {
                pflead = new PrimeFactorization(flead); // no abs, c.f. above
                BigInteger wide1 = pflead.wideToPower(e2);
                if (! wide1.equals(BigInteger.ONE)) { // was no power
                    widev = widev.multiply(wide1);
                    flead = flead.multiply(wide1);
                    coef1 = coef1.multiply(wide1);
                } else { // was a power
                } // was a power
                root2 = BigIntegerUtil.root(flead, e2);
                // now check whether root2*binom2 evenly divides coef1
                BigInteger divs1 = root2.multiply(binom2); // test divisor
                BigInteger[] qrest = coef1.divideAndRemainder(divs1);
                if (debug2 >= 3) {
                    System.out.println("loop1 " + varName
                            + ", pflead=" + pflead.toString()
                            + ", wide1=" + wide1.toString()
                            + ", widev=" + widev.toString()
                            + ", flead=" + flead.toString()
                            + ", coef1=" + coef1.toString()
                            + ", root2=" + root2.toString()
                            + ", divs1=" + divs1.toString()
                            + ", qrest[0]=" + qrest[0].toString()
                            + ", qrest[1]=" + qrest[1].toString()
                            + ", pbody=" + pbody.toString()
                            );
                }
                if (! qrest[1].equals(BigInteger.ZERO)) { // does not evenly divide -> increase coef2
                    widev = widev.multiply(divs1);
                    flead = flead.multiply(divs1);
                    coef1 = coef1.multiply(divs1);
                } else { // okay,
                    coef1 = qrest[0];
                    pbody.divideBy  (gcdv1);
                    pbody.multiplyBy(coef1);
                    busy = false; // break loop
                }
                if (debug2 >= 2) {
                    System.out.println("loop2 " + varName
                            + ", widev=" + widev.toString()
                            + ", flead=" + flead.toString()
                            + ", coef1=" + coef1.toString()
                            + ", pbody=" + pbody.toString()
                            );
                }
            } // while busy
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
                        + ", root2=" + root2.toString()
                        + ", widev=" + widev.toString()
                        );
            }
            ptail = ptail.subtract(pbody.pow(e2).multiply(new Polynomial(new Monomial(Coefficient.valueOf(fbody)))));
            // pbody != 0
        } else { // pbody.isZero()
            if (debug2 >= 1) {
                System.out.println("zero   " + varName + ", pbody == 0, fbody=" + fbody.toString());
            } // debug2
        } // pbody.isZero()
        phead.addTo(new Monomial(fbody, varName, e2)); // replaces the bracket
        Polynomial mbody = pbody.clone();
        if (false) { // code crashed in mbody.addTo(...)
            mbody.addTo(new Monomial(root2, varName, 1));
            vmapt.put(varName, mbody.toString());
        } else { // primitive, safe code
            vmapt.put(varName, mbody.toString() + "+" + root2 + "*" + varName);
        }
        if (debug2 >= 1) {
            System.out.println("after  " + varName
                    + ", phead=" + phead.toString()
                    + ", pbody=" + pbody.toString()
                    + ", ptail=" + ptail.toString()
                    + ", vmapt=" + vmapt.toString()
                    );
            System.out.println();
        } // debug2
        return ptail;
    } // completeSquare

    /** Creates a new, reduced {@link Polynomial} from <em>this</em> {@link Polynomial} such
     *  that - except for a constant - the number of {@link Monomial}s
     *  is the same as the number of variables, that is each variable has a unique Monomial
     *  where it occurs.
     *  For any powered variable a suitable power (square, cubic) completion is determined,
     *  and the Polynomial is widened appropriately.
     *  @param debug2 = 0: no debugging output, 1 = some, 2 = more, 3 = most
     *  @return a new {@link VariableMap} with a mapping from variables to expression which
     *  transforms this into the reduced Polynomial,
     *  and the reduced Polynomial mapped from "" (the empty String)
     *  <p>Trace of testcase LR1:
     *  <pre>
start0 x, phead=0, pbody=x^2 - 4*x*y + 8*x*z, ptail=2*y^2 - 7*z^2, vmapt={x=>x,y=>y,z=>z}
start1 x, pbody= - 4*y + 8*z, fbody=1, mlead= + x^2
start2 x, phead=0, pbody= - 4*y + 8*z, ptail=2*y^2 - 7*z^2, mlead= + x^2, fbody=1, gcdv1=4
loop1 x, pflead=1, wide1=1, widev=1, flead=1, coef1=4, root2=1, divs1=2, qrest[0]=2, qrest[1]=0, pbody= - 4*y + 8*z
loop2 x, widev=1, flead=1, coef1=2, pbody= - 2*y + 4*z
before x, phead=0, pbody= - 2*y + 4*z, ptail=2*y^2 - 7*z^2, mlead= + x^2, flead=1, root2=1, widev=1
after2 x, pbody= - 2*y + 4*z, ptail= - 2*y^2 + 16*y*z - 23*z^2
after3 x, phead=x^2, pbody= - 2*y + 4*z
after  x, phead=x^2, pbody= - 2*y + 4*z, ptail= - 2*y^2 + 16*y*z - 23*z^2, vmapt={x=> - 2*y + 4*z+x,y=>y,z=>z}

start0 y, phead=x^2, pbody= - 2*y^2 + 16*y*z, ptail= - 23*z^2, vmapt={x=> - 2*y + 4*z+x,y=>y,z=>z}
start1 y, pbody= - 8*z, fbody=-2, mlead= + y^2
start2 y, phead=x^2, pbody= - 8*z, ptail= - 23*z^2, mlead= + y^2, fbody=-2, gcdv1=8
loop1 y, pflead=1, wide1=1, widev=1, flead=1, coef1=8, root2=1, divs1=2, qrest[0]=4, qrest[1]=0, pbody= - 8*z
loop2 y, widev=1, flead=1, coef1=4, pbody= - 4*z
before y, phead=x^2, pbody= - 4*z, ptail= - 23*z^2, mlead= + y^2, flead=1, root2=1, widev=1
after2 y, pbody= - 4*z, ptail=9*z^2
after3 y, phead=x^2 - 2*y^2, pbody= - 4*z
after  y, phead=x^2 - 2*y^2, pbody= - 4*z, ptail=9*z^2, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>z}

start0 z, phead=x^2 - 2*y^2, pbody=9*z^2, ptail=0, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>z}
zero   z, pbody == 0, fbody=9
after3 z, phead=x^2 - 2*y^2 + 9*z^2, pbody=0
after  z, phead=x^2 - 2*y^2 + 9*z^2, pbody=0, ptail=0, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>z}

("x^2 - 4*x*y + 2*y^2 + 8*x*z - 7*z^2").reduce() = x^2 - 2*y^2 + z^2, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>(0+z)*3}
("x^2 - 4*x*y + 2*y^2 + 8*x*z - 7*z^2").reduce() = x^2 - 2*y^2 + z^2
     *  </pre>
     */
    public VariableMap getReductionMap(int debug2) {
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
                    ptail = completeSquare(varName, vmapt, phead, pbody, ptail, debug2);
                    break;
                default:
                    phead = phead.add(pbody);
                    break;
            } // switch e2;
        } // while variables
        if (! ptail.isZero()) {
            phead = phead.add(ptail);
        }
        phead.deflateIt().reducePowerCoefficients(vmapt);
        if (debug2 >= 0) {
            Polynomial ptest = phead.substitute(vmapt);
            if (! ptest.deflate().equals(this.deflate())) {
                System.out.println("??? assertion: "
                        + ptest.deflate().toString() + " != "
                        + this .deflate().toString());
            }
        } // debug2
        vmapt.put("", phead.toString()); // store the result as if being mapped from the empty String
        return vmapt;
    } // getReductionMap

    //----------------------------------------
    // Characterization, Equivalence, Mapping
    //----------------------------------------

    /** Computes a characterization of the Polynomial
     *  suitable for normalization and equivalence checking.
     *  This characterization is independant of the monomials' variable names and of the signs of the monomials.
     *  @return a sorted map whose keys are the {@link Monomial#characteristic} values of the monomials,
     *  and the values are the sub-Polynomials consisting of all monomials with that characteristic value
     */
    public TreeMap<Signature, Polynomial> characterize() {
        TreeMap <Signature, Polynomial> resultMap = new TreeMap<Signature, Polynomial>();
        Iterator <Signature> titer = this.monomials.keySet().iterator();
        int count = 0;
        while (titer.hasNext()) { // over all monomials
            Monomial mono = this.monomials.get(titer.next());
            Signature tchic = mono.characteristic(true, false);
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

    /** Deflates the {@link Coefficient}s of the {@link Monomial}s in place
     *  (and also returns <em>this</em> - modified - Polynomial).
     *  </ul>
     *  @return reference to <em>this</em> - modified - Polynomial
     */
    public Polynomial deflateIt() {
        BigInteger divisor = this.gcdCoefficients(true); // with constant
        if (divisor.compareTo(BigInteger.ONE) != 0) { // divide by GCD if != 1
            this.divideBy(divisor);
        }
        return this;
    } // deflateIt

    /** Deflates the {@link Coefficient}s of the {@link Monomial}s
     *  and returns the modified Polynomial.
     *  @return reference to the modified Polynomial
     */
    public Polynomial deflate() {
        Polynomial result = this.clone();
        return result.deflateIt();
    } // deflate

    /** Normalizes the {@link Coefficient}s of the {@link Monomial}s in place
     *  (and also returns <em>this</em> - modified - Polynomial).
     *  Normalization is a predecessor step for equivalence checking, and proceeds
     *  in this sequence:
     *  <ul>
     *      <li>deflate: divide all coefficients by their greatest common divisor (GCD)</li>
     *      <li>make the sign of the first {@link Monomial} positive</li>
     *  </ul>
     *  @return reference to <em>this</em> - modified - Polynomial
     */
    public Polynomial normalizeIt() {
        BigInteger divisor = this.gcdCoefficients(true); // with constant
        if (divisor.compareTo(BigInteger.ONE) != 0) { // divide by GCD if != 1
            this.divideBy(divisor);
        }
        Iterator <Signature> titer = getMonomials().keySet().iterator();
        boolean first = true;
        boolean busy  = true;
        while (busy && titer.hasNext()) {
            Monomial mono1 = monomials.get(titer.next());
            if (first) {
                first = false;
                Coefficient coeff1 = mono1.getCoefficient();
                if (coeff1.compareTo(Coefficient.ZERO) < 0) { // c.f. Monomial.isNegative()
                    mono1.setCoefficient(Coefficient.valueOf(coeff1.negate()));
                } else { // positive - break loop
                    busy = false;
                }
            } else {
                mono1.setCoefficient(Coefficient.valueOf(mono1.getCoefficient().negate()));
            }
        } // while titer
        return this;
    } // normalizeIt

    /** Normalizes the {@link Coefficient}s of the {@link Monomial}s
     *  and returns the modified Polynomial.
     *  @return reference to the modified Polynomial
     */
    public Polynomial normalize() {
        Polynomial result = this.clone();
        return result.normalizeIt();
    } // normalize

    /** Determines whether two {@link Polynomial}s are equivalent, that is whether
     *  they have the same variable names and signs of {@link Monomial}s.
     *  @param poly2 second comparision operand
     *  @return whether the String representations of the two Polynomials are the same,
     *  except for negated signs.
     */
    protected boolean equals(Polynomial poly2) {
        return this .toString().equals(
               poly2.toString() );
    } // equals

    /** Determines whether two {@link Polynomial}s are equivalent, that is whether
     *  they have the same variable names and signs of {@link Monomial}s.
     *  @param poly2 second comparision operand
     *  @return whether the String representations of the two Polynomials are the same
     */
    protected boolean isEqualTo(Polynomial poly2) {
        Polynomial poly1 = this .deflate(); // cloned
        Polynomial poly3 = poly2.deflate(); // cloned
        Polynomial add13 = poly1.add     (poly3);
        Polynomial sub13 = poly1.subtract(poly3);
        boolean result = poly1.add     (poly3).isZero() ||
                         poly1.subtract(poly3).isZero();
        // System.out.println(poly1.toString() +  " isEqualTo? " + poly3.toString() + " => " + result + ",add=" + add13.toString() + ", sub=" + sub13.toString());
        return result;
    } // isEqualTo

    /** Determines whether two {@link Polynomial}s are equivalent, that is whether
     *  <ul>
     *  <li>they are {@link #equals equal} or</li>
     *  <li>they have the same variable names and exponents, but they differ by
     *  a positive or negative multiplicative factor.</li>
     *  </ul>
     *  @param poly2 second comparision operand
     *  @return true if the two Polynomials are equivalent, false otherwise
     */
    public boolean isEquivalent(Polynomial poly2) {
        return this .deflate().toString().equals(
               poly2.deflate().toString() );
    } // isEquivalent

    /** For a variable, return the - univariate - {@link Monomial}s
     *  in <em>this</em> Polynomial which have
     *  (returned in [0]) the maximum exponent - 1 of that variable, and
     *  (returned in [1]) the maximum exponent of the variable,
     *  or the constant 0 if such Monomial(s) do not exist.
     *  Caution, currently the Monomials must be univariate.
     *  @param vname variable name
     *  @return Monomials: [0] = max-1 exponent, [1] = max exponent,
     *  or null if there was a non-univariate Monomial
     */
    public Monomial[] getHighTerms(String vname) {
        Monomial[] result = new Monomial[]{ null, null }; // [0] = max-1, [1] = max exponent
        Iterator <Signature> titer = monomials.keySet().iterator();
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
            result[1] = this.get(new Signature(prefix + String.format("%02x", maxExp    )));
            result[0] = this.get(new Signature(prefix + String.format("%02x", maxExp - 1)));
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
        Polynomial poly2 = poly2p.clone(); // .deflateIt();
        Polynomial poly1 = this  .clone(); // .deflateIt();
        int debugLimit = 1;
        VariableMap result = new VariableMap();
        boolean busy = true;
        VariableMap vmap1 = poly1.getRefiningMap();
        VariableMap vmap2 = poly2.getRefiningMap();
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
     *  by an affine map from the variables in <em>this</em> to the variables in <em>poly2</em>.
     *  @param poly2 target Polynomial
     *  @return String representation of the mapping from <em>this</em> to <em>poly2<em>, or <em>null</em>
     *  if no mapping could be determined
     */
    public String similiarity(Polynomial poly2) {
        String result = null;
        if (true) {
            VariableMap mapt = poly2.getRefiningMap();
            boolean outcome = this.substitute(mapt).clone().deflateIt()
                    .equals(poly2.clone().deflateIt());
            if (! outcome) {
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
            } else { // equals
                result = "same";
            }
        } // if sizes ==
        return result;
    } // similiarity

    /** Substitutes all variable names with a constant number (0, 1 and so on),
     *  and returns a new Polynomial.
     *  @param number value for all variables
     *  @return a new Polynomial
     */
    public Polynomial substitute(int number) {
        return substitute(getVariableMap(String.valueOf(number), true));
    } // substitute(int)

    /** Substitutes all variable names with a constant number (0, 1 and so on),
     *  and returns a new Polynomial.
     *  @param number value for all variables
     *  @param upperSubst whether uppercase variables should be substituted
     *  @return a new Polynomial
     */
    public Polynomial substitute(int number, boolean upperSubst) {
        return substitute(getVariableMap(String.valueOf(number), upperSubst));
    } // substitute(int, boolean)

    /** Substitutes variable names with the expressions from a {@link VariableMap} (if they are not null),
     *  and returns a new Polynomial.
     *  @param vmap map of variable names to (expressions or null);
     *  whether uppercase variables should be replaced must already have been
     *  defined during the construction of this map.
     *  @return a new Polynomial
     */
    public Polynomial substitute(VariableMap vmap) {
        return Polynomial.parse(vmap.substitute(this.toString(1)));
    } // substitute(VariableMap)

    /** Compute the (partial) nth order derivative of <em>this</em> {@link Polynomial}
     *  with respect to one variable.
     *  @param varx derivate for this variable
     *  @param order order n of derivation: first, second etc.
     *  @return a new Polynomial, the nth order derivative.
     *  For <em>order = 0</em>, a copy of <em>this</em> Polynomial is returned.
     *  For <em>x^3+x^2</em> the 1st order derivative is <em>3x^2+2x</em>,
     *  and the 2nd order derivative is <em>6x</em>.
     */
    public Polynomial derivative(String varx, int order) {
        Polynomial result = new Polynomial(); // 0 = 0
        if (varx != null) {
            Iterator <Signature> titer = this.getMonomials().keySet().iterator();
            while (titer.hasNext()) {
                Monomial mono1 = monomials.get(titer.next());
                int exp = mono1.getExponent(varx);
                if (exp > 0) {
                    Monomial mono2 = mono1.clone();
                    BigInteger coeff2 = mono2.getCoefficient().bigIntegerValue();
                    int iord = 0;
                    while (iord < order) {
                        coeff2 = coeff2.multiply(BigInteger.valueOf(exp)); // derivation rule for powers
                        exp --;
                        iord ++;
                    } // while iord
                    if (exp >= 0) {
                        mono2.setCoefficient(Coefficient.valueOf(coeff2));
                        mono2.putExponent(varx, exp);
                        result.addTo(mono2);
                    } // else 0 - do not add
                } // else varx not present - ignore this Monomial resp. add 0
            } // while titer
        } // varx != null
        return result;
    } // derivative

    /** Compute the (partial) 1st order derivative of <em>this</em> {@link Polynomial}
     *  with respect to one variable.
     *  @param varx derivate for this variable
     *  @return a new Polynomial, the 1st order derivative.
     *  For <em>x^3+x^2</em> the 1st order derivative is <em>3x^2+2x</em>,
     *  and the 2nd order derivative is <em>6x</em>.
     */
    public Polynomial derivative(String varx) {
        return this.derivative(varx, 1);
    } // derivative

    /** Compute the (partial) 1st order derivative of <em>this</em> {@link Polynomial}
     *  with respect to the first (only) variable.
     *  @return a new Polynomial, the 1st order derivative.
     *  For <em>x^3+x^2</em> the 1st order derivative is <em>3x^2+2x</em>,
     *  and the 2nd order derivative is <em>6x</em>.
     */
    public Polynomial derivative() {
        String varx = this.getVariableMap().getFirstName();
        return this.derivative(varx, 1);
    } // derivative

    /** Replaces all different variables by "x_y_z", and returns the corresponding Polynomial.
     *  @return a new Polynomial with all variables replaced by a single variable.
     */
    public Polynomial mergeVariables() {
        VariableMap vmap = this.getVariableMap();
        Iterator<String> viter  = vmap.keySet().iterator();
        String expr = "x_y_z"; // user should (can) not enter underscores, and solvers generate at most one '_'
        while (viter.hasNext()) { // over all variables in the map
            vmap.put(viter.next(), expr); // replace all by a unique variable
        } // while viter
        return this.substitute(vmap);
    } // mergeVariables

    /** Evaluates <em>this</em> {@link Polynomial} without any proof history,
     *  and returns whether
     *  <ul>
     *  <li>its (in)equality holds / is true       =&gt; SUCCESS</li>
     *  <li>the (in)equality fails                 =&gt; FAILURE</li>
     *  <li>the outcome cannot (yet) be decided    =&gt; UNKNOWN</li>
     *  </ul>
     *  The Polynomial is tested for:
     *  <ul>
     *  <li>constant value, especially zero</li>
     *  <li>bias, that is the Polynomial is known to be either greater or less than zero</li>
     *  <li>mismatch of the constant monomial and the greatest common divisor of all variable monomials</li>
     *  </ul>
     *  @param vmap1 the map of the variables describing how they were recently substituted
     *  in <em>this</em> Polynomial, or <em>null</em>
     *  @return text with the reason for the decision
     */
    public String evaluate(VariableMap vmap1) {
        // this.deflateIt();
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
        TreeMap<Signature, Polynomial> characterization = this.characterize();
        Iterator <Signature> citer = characterization.keySet().iterator();
        while (citer.hasNext()) {
            Signature tchic = citer.next();
            System.out.println(tchic + " -> " + characterization.get(tchic));
        } // while citer
    } // printProperties

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
            vmap1 = poly1.getVariableMap();
            vmap1.put("c", "0");
            vmap1.put("a", "5*a+1");
            vmap1.put("b", "5*b+1");
            poly2 = poly1.substitute(vmap1);
            System.out.println(poly2.toString(1));
        } else {
            String opt = args[iarg ++];
            if (! opt.startsWith("-") || ! opt.matches("\\-[a-z]+")) {
                poly1 = Polynomial.parse(opt);
                System.out.println(poly1.toString());
                poly1.printProperties();
            } else { // some option
                if (false) {

                } else if (opt.startsWith("-degree")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    System.out.println("(" + poly1.toString() + ").degree()      = " + poly1.degree()     );
                    System.out.println("(" + poly1.toString() + ").degree(false) = " + poly1.degree(false));
                    // -degree

                } else if (opt.startsWith("-derive")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    if (iarg < args.length) {
                        String varx = args[iarg ++];
                        int order = 1;
                        if (iarg < args.length) { // with order
                            try {
                                order = Integer.parseInt(args[iarg ++]);
                            } catch (Exception exc) {
                            }
                        } // with order
                        System.out.println("(" + poly1.toString() + ").derivative(\""
                                + varx + "\", " + order + ") = "
                                + poly1.derivative(varx, order).toString()
                                );
                    } else { // first variable
                        System.out.println("(" + poly1.toString() + ").derivative() = "
                                + poly1.derivative().toString()
                                );
                    }
                    // -derive

                } else if (opt.startsWith("-equiv")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    poly2 = Polynomial.parse(args[iarg ++]);
                    System.out.println(poly1.toString() + " <"
                            + (poly1.isEquivalent(poly2) ? "equiv" : "notequiv") + "> " + poly2);
                    // -equiv

                } else if (opt.startsWith("-f")) {
                    poly1 = Polynomial.parse(ereader.read(args[iarg ++]));
                    System.out.println(poly1.toString());
                    poly1.printProperties();
                    // -f

                } else if (opt.startsWith("-hiter")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    vmap1 = poly1.getRefiningMap("1", true);
                    viter = vmap1.keySet().iterator();
                    while (viter.hasNext()) {
                        String vname = viter.next();
                        Monomial highTerms[] = poly1.getHighTerms(vname);
                        System.out.print("(\"" + poly1.toString() + "\").getHighTerms(\"" + vname + "\") = ");
                        System.out.println(highTerms[0].toString() + ", " + highTerms[1].toString());
                    } // while iter1
                    // -hiter

                } else if (opt.startsWith("-incr")) {
                    // input is: poly vi ei; variable vi runs from 0 to ei
                    poly1 = Polynomial.parse(args[iarg ++]);
                    vmap1 = poly1.getVariableMap("*", true); // x -> x
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
                                + "\t" + poly2.deflateIt().toString());
                        iloop ++;
                    } // while iloop
                    // -incr

                } else if (opt.startsWith("-isosig")) {
                    // input is: poly 
                    poly1 = Polynomial.parse(args[iarg ++]);
                    System.out.println("(" + poly1.toString() + ").getIsolatedSignature() = " 
                                + poly1.getIsolatedSignature());
                    // -isosig

                } else if (opt.startsWith("-mappable")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    poly2 = Polynomial.parse(args[iarg ++]);
                    System.out.println("(\"" + poly1.toString() + "\").isMappableTo(\"" + poly2.toString() + "\") = "
                            + poly1.isMappableTo(poly2));
                    // -mappable

                } else if (opt.startsWith("-psum")) {
                    poly1 = Polynomial.parse(args[iarg ++]);
                    System.out.println("(\"" + poly1.toString() + "\").isPowerSum() = " + poly1.isPowerSum());
                    // -psum

                } else if (opt.startsWith("-redsol")) { // -f TreeSolver-resultfile
                    exprs = ereader.getArguments(iarg, args);
                    ipoly = 0;
                    while (ipoly < exprs.length) {
/* lines of the form (without the spaces):
----------------
expanding queue[0]^-1: a^4 + b^4 - c^4 - d^4 meter=[2,2,2,2] *2
solution [0,0,0,0],trivial(3)
[0+2*a,0+2*b,0+2*c,0+2*d]:  similiar to [0], same  a^4+b^4-c^4-d^4
[1+2*a,0+2*b,1+2*c,0+2*d]:  unknown -> [1] a+3*a^2+4*a^3+2*a^4+2*b^4-c-3*c^2-4*c^3-2*c^4-2*d^4
[0+2*a,1+2*b,1+2*c,0+2*d]:  transposed [1] {0/0+2*b,0/1+2*a,2/0+2*d,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b
*/
                        String line = exprs[ipoly];
                        int unkPos = line.indexOf("unknown");
                        if (unkPos >= 0) {
                            int cspPos = line.indexOf("]", unkPos);
                            poly1 = Polynomial.parse(line.substring(cspPos + 1));
                            // System.out.println("poly1 = " + poly1.toString());
                            vmap1 = poly1.getReductionMap(0);
                            System.out.println(vmap1.toString().replaceAll("\\s", "")
                                    + "\t" + line.substring(1, unkPos - 2));
                        } // startsWIth("[")
                        ipoly ++;
                    } // while ipoly
                    // -redsol

                } else if (opt.startsWith("-reduce")) { // poly
                    poly1 = Polynomial.parse(args[iarg ++]);
                    vmap1 = poly1.getReductionMap(1);
                    System.out.println("(\"" + poly1.toString() + "\")"
                            + ".getReductionMap(1)" + " = "+  vmap1.toString());
                    // -reduce

                } else if (opt.startsWith("-rest")) { // factor, poly
                    String factor = args[iarg ++];
                    poly1 = Polynomial.parse(args[iarg ++]);
                    System.out.println("getRest(" + poly1.toString() + ", " + factor + ") -> "
                            +  poly1.getRest(new Coefficient(factor)).toString());
                    // -rest

                } else if (opt.startsWith("-solut")) { // poly brat
                    poly1 =            Polynomial.parse(args[iarg ++]);
                    BigRational brat1 = new BigRational(args[iarg ++]);
                    System.out.println(brat1.toString() + " solves " + poly1.toString()
                            + "? " + poly1.hasSolution(brat1));
                    // -solut

                } else if (opt.startsWith("-var")) { // getVariablePowers and groupBy
                    String varName = args[iarg ++];
                    String[] vars = varName.split("\\W"); // non-word characters
                    poly1 = Polynomial.parse(ereader.read(args[iarg ++]));
                    System.out.println(poly1.toString());
                    Monomial mono4 = new Monomial(vars);
                    System.out.println("getVariablePowers(" + varName + ")=" + poly1.getVariablePowers(mono4));
                    System.out.println(          "groupBy(" + varName + ")=" + poly1.groupBy          (mono4).toList());
                    // -var

                } else {
                    System.err.println("??? invalid option: \"" + opt + "\"");
                }
            } // some option
        } // at least 1 argument
    } // main

} // Polynomial
