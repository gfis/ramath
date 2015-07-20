/*  BigRational: a fraction as a pair of BigIntegers
 *  @(#) $Id: BigRational.java 231 2009-08-25 08:47:16Z gfis $
 *  2015-06-17: extends BigInteger
 *  2014-04-08: use BigInteger.valueOf(long)
 *  2013-09-13: normalize -> simplify
 *  2013-08-23: Serializable, lcm, gcd
 *  2013-08-21: denom -> numerator, nomin -> denominator
 *  2012-08-20: pow with special handling of exp=1
 *  2009-07-23: signum
 *  2008-10-24, Georg Fischer: copied from Series
 */
/*
 * Copyright 2008 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath;
import  java.io.Serializable;
import  java.math.BigDecimal;
import  java.math.BigInteger;
import  java.math.MathContext;
import  java.math.RoundingMode;

/** BigRational - a fraction as a pair of {@link BigInteger}s, and functions for them.
 *  @author Dr. Georg Fischer
 */
public class BigRational 
        extends BigInteger 
        implements Cloneable, Serializable 
        {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: BigRational.java 231 2009-08-25 08:47:16Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private static int debug = 0;

    /** dividend, the number which is divided by the denominator, see https://en.wikipedia.org/wiki/Quotient */
    private BigInteger numerator  ;
    /** divisor, the number which divides the numerator */
    private BigInteger denominator;

    /** Construct from a String: either a decimal number (with decimal dot),
     *  or a fraction of the form numerator  /denominator.
     *  All characters except from digits, '.' and '/' are stripped.
     *  @param rawNumber string with digits, decimal dot or slash.
     *  @result a new instance 
     */
    public BigRational(String rawNumber) {
        super("0");
        String number = rawNumber.replaceAll("[^\\d\\.\\/\\-\\+]", "");
        int slashPos = number.indexOf("/");
        if (slashPos < 0) { // integral
            slashPos = number.length();
            number += "/1";
        } // integral
        this.numerator   = new BigInteger(number.substring(0, slashPos), 10);
        if (false && number.startsWith("-")) {
            this.numerator   = this.numerator  .negate();
        }
        this.denominator = new BigInteger(number.substring(slashPos + 1), 10);
        if (false && number.indexOf("/-") >= 0) {
            this.denominator = this.denominator.negate();
        }
    } // Constructor String

    /** Constructing with 1 BigInteger argument; the denominator will be 1
     *  @param numerator   numerator of the instance
     *  @result a new instance 
     */
    public static BigRational valueOf(BigInteger numerator) {
        BigRational result = new BigRational("0");
        result.setA(numerator);
        result.setB(BigInteger.ONE);
        return result;
    } // valueOf

    /** Constructing with 1 long argument; the denominator will be 1
     *  @param numerator   numerator of the instance
     *  @result a new instance 
     */
    public static BigRational valueOf(long numerator) {
        BigRational result = new BigRational("0");
        result.setA(numerator);
        result.setB(BigInteger.ONE);
        return result;
    } // valueOf

    /** Constructing with 2 BigInteger arguments
     *  @param numerator   numerator   of the instance
     *  @param denominator denominator of the instance
     *  @result a new instance 
     */
    public static BigRational valueOf(BigInteger numerator, BigInteger denominator) {
        BigRational result = new BigRational("0");
        result.setA(numerator);
        result.setB(denominator);
        return result;
    } // Constructor 2

    /** Constructor with 2 long arguments
     *  @param numerator   numerator   of the instance
     *  @param denominator denominator of the instance
     *  @result a new instance 
     */
    public static BigRational valueOf(long numerator, long denominator) {
        BigRational result = new BigRational("0");
        result.setA(numerator);
        result.setB(denominator);
        return result;
    } // Constructor 2

    /** Construct from a BigDecimal; the denominator will be a power of 10.
     *  @param bdec represent this exact
     *  @result a new instance 
     */
    public static BigRational valueOf(BigDecimal bdec) {
        BigRational result = new BigRational("0");
        result.set(bdec);
        return result;
    } // Constructor BigDecimal

    /** constant 0 */
    public static BigRational ZERO = BigRational.valueOf(0);
    /** constant 1 */
    public static BigRational ONE  = BigRational.valueOf(1);
    /** constant 2 */
    public static BigRational TWO  = BigRational.valueOf(2);

    /** Deep copy of the rational number with denominator and nominator.
     *  @return independant, simplified copy of the rational number
     */
    public BigRational clone() {
        return (BigRational.valueOf(numerator, denominator)).simplify();
    } // clone

    /** Sets a BigRational to a BigDecimal; the denominator will be a power of 10.
     *  @param bdec represent this exact
     */
    public void set(BigDecimal bdec) {
        this.numerator   = bdec.unscaledValue();
        int sc10 = bdec.scale();
        StringBuffer pow10 = new StringBuffer(sc10 + 1);
        pow10.append('1');
        while (sc10 > 0) {
            pow10.append('0');
            sc10 --;
        } // while scale
        this.denominator   = new BigInteger(pow10.toString());
    } // set(BigDecimal)

    /** Gets the denominator
     *  @return denominator of this fraction
     */
    protected BigInteger getNumerator() {
        return this.numerator  ;
    } // getNumerator

    /** Gets the nominantor
     *  @return nominator of this fraction
     */
    protected BigInteger getDenominator() {
        return this.denominator;
    } // getDenominator

    /** Gets the "a" coefficient of a continued fraction [a0;b1/a1,b2/a2...]
     *  @return numerator of this fraction
     */
    public BigInteger getA() {
        return this.numerator  ;
    } // getA

    /** Gets the "b" coefficient of a continued fraction [a0;b1/a1,b2/a2...]
     *  @return denominator of this fraction
     */
    public BigInteger getB() {
        return this.denominator;
    } // getB

    /** sets the "a" coefficient of a continued fraction [a0;b1/a1,b2/a2...]
     *  @param a numerator of this fraction
     */
    public void setA(BigInteger a) {
        this.numerator   = a;
    } // setA

    /** sets the "b" coefficient of a continued fraction [a0;b1/a1,b2/a2...]
     *  @param b denominator of this fraction
     */
    public void setB(BigInteger b) {
        this.denominator = b;
    } // setB

    /** sets the "a" coefficient of a continued fraction [a0;b1/a1,b2/a2...]
     *  @param a numerator of this fraction
     */
    public void setA(long a) {
        setA(BigInteger.valueOf(a));
    } // setA

    /** sets the "b" coefficient of a continued fraction [a0;b1/a1,b2/a2...]
     *  @param b denominator of this fraction
     */
    public void setB(long b) {
        setB(BigInteger.valueOf(b));
    } // setB

    /** Returns a BigRational whose value is  <em>(this + val)</em>
     *  The resulting fraction is simplified: <em>a/b + c = (a + c*b)/(b)</em>
     *  @param val value to be added to  this BigRational
     *  @return this + val
     */
    public BigRational add     (BigInteger  val) {
        return  BigRational.valueOf
                ( (this.numerator  )
                  .add     (val               .multiply(this.denominator))
                , (this.denominator)
                ).simplify();
    } // add(BigInteger)

    /** Returns a BigRational whose value is  <em>(this + val)</em>
     *  The resulting fraction is simplified: <em>a/b + c/d = (a*d + c*b)/(b*d)</em>
     *  @param val value to be added to      this BigRational
     *  @return this + val
     */
    public BigRational add     (BigRational val) {
        return  BigRational.valueOf
                ( (this.numerator  .multiply(val.getDenominator()))
                  .add     (val.getNumerator().multiply(this.denominator))
                , (this.denominator.multiply(val.getDenominator()))
                ).simplify();
    } // add(BigRational)

    /** Returns a BigRational whose value is  <em>(this - val)</em>
     *  The resulting fraction is simplified: <em>a/b - c = (a - c*b)/(b)</em>
     *  @param val value to be subtracted from this BigRational
     *  @return this - val
     */
    public BigRational subtract(BigInteger  val) {
        return  BigRational.valueOf
                ( (this.numerator  )
                  .subtract(val               .multiply(this.denominator))
                , (this.denominator)
                ).simplify();
    } // subtract(BigInteger)

    /** Returns a BigRational whose value is  <em>(this - val)</em>
     *  The resulting fraction is simplified: <em>a/b - c/d = (a*d - c*b)/(b*d)</em>
     *  @param val value to be subtracted from this BigRational
     *  @return this - val
     */
    public BigRational subtract(BigRational val) {
        return  BigRational.valueOf
                ( (this.numerator  .multiply(val.getDenominator()))
                  .subtract(val.getNumerator().multiply(this.denominator))
                , (this.denominator.multiply(val.getDenominator()))
                ).simplify();
    } // subtract(BigRational)

    /** Returns a BigRational whose value is  <em>(this * val)</em>
     *  The resulting fraction is simplified: <em>a/b * c = (a*c)/(b)</em>
     *  @param val value to be multiplied with this BigRational
     *  @return this * val
     */
    public BigRational multiply(BigInteger  val) {
        return  BigRational.valueOf
                ( (this.numerator  ).multiply(val                 )
                , (this.denominator                               )
                ).simplify();
    } // multiply(BigInteger)

    /** Returns a BigRational whose value is  <em>(this * val)</em>
     *  The resulting fraction is simplified: <em>a/b * c/d = (a*c)/(b*d)</em>
     *  @param val value to be multiplied with this BigRational
     *  @return this * val
     */
    public BigRational multiply(BigRational val) {
        return  BigRational.valueOf
                ( (this.numerator  .multiply(val.getNumerator  ()))
                , (this.denominator.multiply(val.getDenominator()))
                ).simplify();
    } // multiply(BigRational)

    /** Returns a BigRational whose value is  <em>(this * val)</em>
     *  The resulting fraction is simplified: <em>(a/b) / (c) = (a)/(b*c)</em>
     *  @param val value by which this BigRational is to be divided
     *  @return this / val
     */
    public BigRational divide  (BigInteger  val) {
        return BigRational.valueOf
                ( (this.numerator                                 )
                , (this.denominator                               ).multiply(val                )
                ).simplify();
    } // divide  (BigInteger)

    /** Returns a BigRational whose value is  <em>(this / val)</em>
     *  The resulting fraction is simplified: <em>(a/b) / (c/d) = (a*d)/(b*c)</em>
     *  @param val value by which this BigRational is to be divided
     *  @return this / val
     */
    public BigRational divide  (BigRational val) {
        return  (BigRational.valueOf
                ( (this.numerator  .multiply(val.getDenominator() )                             )
                , (this.denominator                               ).multiply(val.getNumerator() )                        )
                ).simplify();
    } // divide  (BigRational)

    /** Returns a BigRational whose value is (this**exp) - raised to some exponent.
     *  The resulting fraction is simplified.
     *  @param exp the power to which this BigRational is to be raised, may be negative
     *  @return this**exp
     */
    public BigRational pow     (int exp) {
        BigRational result;
        switch (exp) {
            case 0:
                result = BigRational.ONE;
                break;
            case 1:
                result = this.clone();
                break;
            case 2:
                result = this.clone();
                result = result.multiply(result);
                break;
            case -1:
                result = BigRational.valueOf(this.denominator, this.numerator).simplify();
                break;
            default:
                if (exp >= 0) {
                    result = BigRational.valueOf(this.numerator  .pow(exp), this.denominator.pow(exp));
                } else {
                    exp = - exp;
                    result = BigRational.valueOf(this.denominator.pow(exp), this.numerator  .pow(exp)).simplify();
                }
                break;
        } // switch exp
        return result;
    } // pow()

    /** Computes the greatest common divisor of the numerators
     *  @param brat2 2nd BigRational
     *  @return the greatest common divisor of the numerators
     */
    public BigRational gcd(BigRational brat2) {
        return BigRational.valueOf(this.numerator.gcd(brat2.getNumerator()));
    } // gcd(BigRational)

    /** Computes the least common multiple of the numerators
     *  @param brat2 2nd BigRational
     *  @return the least common multiple of the numerators
     */
    public BigRational lcm(BigRational brat2) {
        BigInteger num1 = this.numerator;
        BigInteger num2 = brat2.getNumerator();
        return BigRational.valueOf(num1.multiply(num2).divide(num1.gcd(num2)));
    } // lcm(BigRational)

    /** Computes the least common multiple of the numerators
     *  @param brat2 2nd BigRational
     *  @return the least common multiple of the numerators
     */
    public BigRational lcm_new(BigRational brat2) {
        return this.multiply(brat2).simplify();
    } // lcm(BigRational)

    /** Returns the BigRational with simplified numerator and denominator, that is:
     *  <ul>
     *  <li>numerator and denominator have no common divisor > 1</li>
     *  <li>the denominator is positive</li>
     *  </ul>
     *  @return reduced fraction with positive denominator
     */
    public BigRational simplify() {
        BigRational result = this;
        BigInteger  common = this.numerator  .gcd(this.denominator);
        if (common.compareTo(BigInteger.ONE) > 0) {
            if (common.compareTo(this.denominator) == 0) {
                result = BigRational.valueOf( this.numerator  .divide(common));
            } else {
                result = BigRational.valueOf( this.numerator  .divide(common)
                                            , this.denominator.divide(common));
            }
        }
        if (this.denominator.signum() < 0) { // denominator is always made positive
            result = BigRational.valueOf( result.getNumerator  ().negate()
                                        , result.getDenominator().negate());
        }
        return result;
    } // simplify

    /** Returns the BigRational with inverted sign.
     *  @return a copy of the object with the opposite sign
     */
    public BigRational negate() {
        return (BigRational.valueOf(numerator  .negate(), denominator)).simplify();
    } // negate

    /** Returns the sign of <em>this</em> BigRational.
     *  @return -1, 0 or 1
     */
    public int signum() {
        this.simplify(); // makes numerator positive
        return numerator  .signum();
    } // compareTo

    /** Compares this BigRational with the specified BigRational.
     *  This method is provided in preference to individual methods
     *  for each of the six boolean comparison operators (<, ==, >, >=, !=, <=).
     *  The suggested idiom for performing these comparisons is:
     *  (x.compareTo(y) <op> 0), where <op> is one of the six comparison operators.
     *  Returns the signum of the difference of <em>this</em> BigRational minus the parameter.
     *  @param num2 number to which this BigRational is to be compared.
     *  @return -1, 0 or 1 as this BigRational is numerically
     *  less than, equal to, or greater than <em>num2</em>.
     */
    public int compareTo(BigRational num2) {
        return this.numerator  .multiply(num2.getDenominator()).compareTo(this.denominator.multiply(num2.getNumerator()));
    } // compareTo

    /** Compares this BigRational with the specified BigInteger.
     *  This method is provided in preference to individual methods
     *  for each of the six boolean comparison operators (<, ==, >, >=, !=, <=).
     *  The suggested idiom for performing these comparisons is:
     *  (x.compareTo(y) <op> 0), where <op> is one of the six comparison operators.
     *  Returns the signum of the difference of <em>this</em> BigRational minus the parameter.
     *  @param num2 number to which this BigRational is to be compared.
     *  @return -1, 0 or 1 as this BigRational is numerically
     *  less than, equal to, or greater than <em>num2</em>.
     */
    public int compareTo(BigInteger num2) {
        return this.numerator.compareTo(this.denominator.multiply(num2));
    } // compareTo

    /** Determines whether <em>this</em> BigRational has the same value as the parameter.
     *  @param num2 2nd comparision operand
     *  @return true when the two numbers have the same values
     */
    public boolean equals(BigRational num2) {
        return this.compareTo(num2) == 0;
    } // equals

    /** Determines whether <em>this</em> BigRational has the same value as the parameter.
     *  @param num2 2nd comparision operand
     *  @return true when the two numbers have the same values
     */
    public boolean equals(BigInteger num2) {
        return this.compareTo(num2) == 0;
    } // equals

    /** Returns the fraction as a BigDecimal.
     *  This method is the inverse of <em>this(BigDecimal)</em>.
     *  @return value as BigDecimal
     */
    public BigDecimal getDecimal() {
        MathContext mc = new MathContext((this.denominator.bitLength() / 10 + 1) * 3); // 10^3 ~= 2^10
        return new BigDecimal(this.numerator  ).divide(new BigDecimal(this.denominator), mc);
    } // getDecimal

    /** Gets the integral part of the rational number, or 1.
     *  @return denominator if the numerator is 1, or 1 otherwise.
     */
    public BigInteger getInteger() {
        BigInteger result = BigInteger.ONE;
        if (denominator.abs().equals(BigInteger.ONE)) {
            result = new BigInteger(numerator  .toByteArray()); // clone it
        }
        return result;
    } // getInteger

    /** Determines whether the reduced denominator is 1.
     *  @return true if the reduced denominator is 1, false otherwise.
     */
    public boolean isInteger() {
        return this.simplify().getDenominator().equals(BigInteger.ONE);
    } // isInteger

    /** Returns 1 / this
     *  @return inverted fraction
     */
    public BigRational invert() {
        return BigRational.valueOf
                (  this.denominator
                ,  this.numerator
                );
    } // invert

    /** Returns a string representation of the fraction in radix 10
     *  @return "a/b"
     */
    public String toString() {
        StringBuffer result = new StringBuffer(64);
        result.append(this.numerator  .toString());
        if (! denominator.equals(BigInteger.ONE)) {
            result.append("/");
            result.append(this.denominator.toString());
        }
        return result.toString();
    } // toString

    /** Returns a string representation of the fraction in the given radix
     *  @return "a/b"
     */
    public String toString(int radix) {
        return this.numerator  .toString(radix) + "/" + this.denominator.toString(radix);
    } // toString(radix)

    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        /* elementary arithmetic */
        System.out.println((BigRational.valueOf(2906,1947)).toString());
        System.out.println("3/4 + 5/7 = " + (BigRational.valueOf(3,4)).add      (BigRational.valueOf(5,7))             .toString());
        System.out.println("3/4 - 5/7 = " + (BigRational.valueOf(3,4)).subtract (BigRational.valueOf(5,7))             .toString());
        System.out.println("3/4 * 5/7 = " + (BigRational.valueOf(3,4)).multiply (BigRational.valueOf(5,7))             .toString());
        System.out.println("3/4 / 5/7 = " + (BigRational.valueOf(3,4)).divide   (BigRational.valueOf(5,7))             .toString());
        System.out.println("3/4 + 5   = " + (BigRational.valueOf(3,4)).add      (BigRational.valueOf(5  ))             .toString());
        System.out.println("3/4 - 5   = " + (BigRational.valueOf(3,4)).subtract (BigRational.valueOf(5  ))             .toString());
        System.out.println("3/4 * 5   = " + (BigRational.valueOf(3,4)).multiply (BigRational.valueOf(5  ))             .toString());
        System.out.println("3/4 / 5   = " + (BigRational.valueOf(3,4)).divide   (BigRational.valueOf(5  ))             .toString());
        System.out.println("3/4 / 5/7 = " + (BigRational.valueOf(3,4)).divide   (BigRational.valueOf(5,7)).getDecimal().toString());
        System.out.println("3/4 * 4/3 = " + (BigRational.valueOf(3,4)).multiply (BigRational.valueOf(4,3))             .toString());
        System.out.println("3/4 pow 3 = " + (BigRational.valueOf(3,4)).pow      (3                   )                 .toString());
        System.out.println("3/4 pow -2= " + (BigRational.valueOf(3,4)).pow      (-2                  )                 .toString());
        System.out.println("3/4 <>5/7 = " + (BigRational.valueOf(3,4)).compareTo(BigRational.valueOf(5,7)));
        System.out.println("3/4 == 5/7 = "     + (BigRational.valueOf(3,4)).equals   (BigRational.valueOf(5,7)));
        System.out.println("3/4 == -12/-16 = " + (BigRational.valueOf(3,4)).equals   (new BigRational("-12/-16")));
        System.out.println("3/4 == -12/16  = " + (BigRational.valueOf(3,4)).equals   (new BigRational("-12/16")));
        System.out.println("3/4 == -12/16  = " + (BigRational.valueOf(3,4)).equals   (BigRational.valueOf(-12,16)));
    } // main

} // BigRational
