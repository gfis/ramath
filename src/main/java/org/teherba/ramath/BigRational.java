/*  BigRational: a fraction as a pair of BigIntegers
 *  @(#) $Id: BigRational.java 231 2009-08-25 08:47:16Z gfis $
 *  2020-03-16: implements Comparator
 *  2019-08-27: MINUS_ONE
 *  2017-05-28: javadoc 1.8
 *  2015-11-14: numerator -&gt; num, denominator -&gt; den (again)
 *  2015-06-17: extends BigInteger
 *  2014-04-08: use BigInteger.valueOf(long)
 *  2013-09-13: simplify
 *  2013-08-23: Serializable, lcm, gcd
 *  2013-08-21: denom -&gt; numerator, nomin -&gt; denominator
 *  2012-08-20: pow with special handling of exp=1
 *  2009-07-23: signum
 *  2008-10-24, Georg Fischer: copied from Series
 */
/*
 * Copyright 2008 Dr. Georg Fischer <dr dot georg dot fischer at gmail>
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
import  java.util.Comparator;

/** BigRational - a fraction as a pair of {@link BigInteger}s, and functions for them.
 *  @author Dr. Georg Fischer
 */
public class BigRational extends BigInteger implements Cloneable, Serializable, Comparator<BigRational> {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: BigRational.java 231 2009-08-25 08:47:16Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private static int debug = 0;

    /** dividend, numerator,  the integer number which is divided by the denominator, see https://en.wikipedia.org/wiki/Quotient */
    private BigInteger num;
    /** divisor, denominator, the natural number which divides the numerator (always positive) */
    private BigInteger den;

    /** No-args constructor - create 0
     */
    public BigRational() {
        super("0");
        this.num = BigInteger.ZERO;
        this.den = BigInteger.ONE;
    } // Constructor 

     /** Construct from a String: either a decimal number (with decimal dot),
     *  or a fraction of the form numerator/denominator.
     *  @param rawNumber String with decimal digits, decimal dot or slash;
     *  all characters except from 0-9, '.' and '/' are stripped.
     */
    public BigRational(String rawNumber) {
        super("0");
        String number = rawNumber.replaceAll("[^0-9\\.\\/\\-\\+]", "");
        int slashPos = number.indexOf("/");
        if (slashPos < 0) { // integral
            slashPos = number.length();
            number += "/1";
        } // integral
        this.num = new BigInteger(number.substring(0, slashPos));
        this.den = new BigInteger(number.substring(slashPos + 1));
    } // Constructor String

    /** Construct from a byte array containing a BigInteger
     *  @param bytes the result of BigInteger.toByteArray()
     */
    public BigRational(byte[] bytes) {
        super(bytes);
        this.num = new BigInteger(bytes);
        this.den = BigInteger.ONE;
    } // Constructor(byte[])

    /** Constructing with 1 BigInteger argument; the denominator will be 1
     *  @param num numerator of the instance
     *  @return a new instance
     */
    public static BigRational valueOf(BigInteger num) {
        BigRational result = new BigRational("0");
        result.setNum(num);
        result.setDen(BigInteger.ONE);
        return result;
    } // valueOf

    /** Constructing with 1 long argument; the denominator will be 1
     *  @param num   numerator of the instance
     *  @return a new instance
     */
    public static BigRational valueOf(long num) {
        BigRational result = new BigRational("0");
        result.setNum(num);
        result.setDen(BigInteger.ONE);
        return result;
    } // valueOf

    /** Constructing with 2 BigInteger arguments
     *  @param num   numerator   of the instance
     *  @param den denominator of the instance
     *  @return a new instance
     */
    public static BigRational valueOf(BigInteger num, BigInteger den) {
        BigRational result = new BigRational("0");
        result.setNum(num);
        result.setDen(den);
        return result;
    } // Constructor 2

    /** Constructor with 2 long arguments
     *  @param num numerator   of the instance
     *  @param den den of the instance
     *  @return a new instance
     */
    public static BigRational valueOf(long num, long den) {
        BigRational result = new BigRational("0");
        result.setNum(num);
        result.setDen(den);
        return result;
    } // Constructor 2

    /** Construct from a BigDecimal; the denominator will be a power of 10.
     *  @param bdec represent this exact
     *  @return a new instance
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
    /** constant -1 */
    public static BigRational MINUS_ONE  = BigRational.valueOf(-1);
    /** constant 2 */
    public static BigRational TWO  = BigRational.valueOf(2);

    /** Deep copy of the rational number with numerator and denominator
     *  @return independant, simplified copy of the rational number
     */
    public BigRational clone() {
        return (BigRational.valueOf(num, den)).simplify();
    } // clone

    /** Sets a BigRational to a BigDecimal; the denominator will be a power of 10.
     *  @param bdec represent this exact
     */
    public void set(BigDecimal bdec) {
        this.num = bdec.unscaledValue();
        int sc10 = bdec.scale();
        StringBuffer pow10 = new StringBuffer(sc10 + 1);
        pow10.append('1');
        while (sc10 > 0) {
            pow10.append('0');
            sc10 --;
        } // while scale
        this.den = new BigInteger(pow10.toString());
    } // set(BigDecimal)

    /** Gets the numerator
     *  @return  numerator of this fraction
     */
    protected BigInteger getNum() {
        return this.num;
    } // getNum

    /** Gets the denominantor
     *  @return  denominator of this fraction
     */
    protected BigInteger getDen() {
        return this.den;
    } // getDen

    /** sets the "a" coefficient of a continued fraction [a0;b1/a1,b2/a2...]
     *  @param a  numerator of this fraction
     */
    public void setNum(BigInteger a) {
        this.num = a;
    } // setNum

    /** sets the "b" coefficient of a continued fraction [a0;b1/a1,b2/a2...]
     *  @param b  denominator of this fraction
     */
    public void setDen(BigInteger b) {
        this.den = b;
    } // setDen

    /** sets the "a" coefficient of a continued fraction [a0;b1/a1,b2/a2...]
     *  @param a  numerator of this fraction
     */
    public void setNum(long a) {
        setNum(BigInteger.valueOf(a));
    } // setNum

    /** sets the "b" coefficient of a continued fraction [a0;b1/a1,b2/a2...]
     *  @param b  denominator of this fraction
     */
    public void setDen(long b) {
        setDen(BigInteger.valueOf(b));
    } // setDen

    /** Returns a BigRational whose value is  <em>(this + val)</em>
     *  The resulting fraction is simplified: <em>a/b + c = (a + c*b)/(b)</em>
     *  @param val value to be added to  this BigRational
     *  @return this + val
     */
    public BigRational add     (BigInteger  val) {
        return  BigRational.valueOf
                ( (this.num)
                  .add     (val               .multiply(this.den))
                , (this.den)
                ).simplify();
    } // add(BigInteger)

    /** Returns a BigRational whose value is  <em>(this + val)</em>
     *  The resulting fraction is simplified: <em>a/b + c/d = (a*d + c*b)/(b*d)</em>
     *  @param val value to be added to      this BigRational
     *  @return this + val
     */
    public BigRational add     (BigRational val) {
        return  BigRational.valueOf
                ( (this.num.multiply(val.getDen()))
                  .add     (val.getNum().multiply(this.den))
                , (this.den.multiply(val.getDen()))
                ).simplify();
    } // add(BigRational)

    /** Returns a BigRational whose value is  <em>(this - val)</em>
     *  The resulting fraction is simplified: <em>a/b - c = (a - c*b)/(b)</em>
     *  @param val value to be subtracted from this BigRational
     *  @return this - val
     */
    public BigRational subtract(BigInteger  val) {
        return  BigRational.valueOf
                ( (this.num)
                  .subtract(val               .multiply(this.den))
                , (this.den)
                ).simplify();
    } // subtract(BigInteger)

    /** Returns a BigRational whose value is  <em>(this - val)</em>
     *  The resulting fraction is simplified: <em>a/b - c/d = (a*d - c*b)/(b*d)</em>
     *  @param val value to be subtracted from this BigRational
     *  @return this - val
     */
    public BigRational subtract(BigRational val) {
        return  BigRational.valueOf
                ( (this.num.multiply(val.getDen()))
                  .subtract(val.getNum().multiply(this.den))
                , (this.den.multiply(val.getDen()))
                ).simplify();
    } // subtract(BigRational)

    /** Returns a BigRational whose value is  <em>(this * val)</em>
     *  The resulting fraction is simplified: <em>a/b * c = (a*c)/(b)</em>
     *  @param val value to be multiplied with this BigRational
     *  @return this * val
     */
    public BigRational multiply(BigInteger  val) {
        return  BigRational.valueOf
                ( (this.num).multiply(val                 )
                , (this.den                               )
                ).simplify();
    } // multiply(BigInteger)

    /** Returns a BigRational whose value is  <em>(this * val)</em>
     *  The resulting fraction is simplified: <em>a/b * c/d = (a*c)/(b*d)</em>
     *  @param val value to be multiplied with this BigRational
     *  @return this * val
     */
    public BigRational multiply(BigRational val) {
        return  BigRational.valueOf
                ( (this.num.multiply(val.getNum()))
                , (this.den.multiply(val.getDen()))
                ).simplify();
    } // multiply(BigRational)

    /** Returns a BigRational whose value is  <em>(this * val)</em>
     *  The resulting fraction is simplified: <em>(a/b) / (c) = (a)/(b*c)</em>
     *  @param val value by which this BigRational is to be divided
     *  @return this / val
     */
    public BigRational divide(BigInteger  val) {
        return BigRational.valueOf
                ( (this.num)
                , (this.den                               ).multiply(val                )
                ).simplify();
    } // divide  (BigInteger)

    /** Returns quotient and rest
     *  Caution: This method works for the numerators only !!!
     *  @param val value by which this BigRational is to be divided
     *  @return [this / val, this mod val]
     */
    public BigInteger[] divideAndRemainder(BigRational val) {
        BigInteger[] result = this.getNum().divideAndRemainder(val.getNum());
        return result;
    } // divideAndRemeinder(BigRational)

    /** Returns a BigRational whose value is  <em>(this / val)</em>
     *  The resulting fraction is simplified: <em>(a/b) / (c/d) = (a*d)/(b*c)</em>
     *  @param val value by which this BigRational is to be divided
     *  @return this / val
     */
    public BigRational divide  (BigRational val) {
        return  (BigRational.valueOf
                ( (this.num.multiply(val.getDen() )                             )
                , (this.den                               ).multiply(val.getNum() )                        )
                ).simplify();
    } // divide  (BigRational)

    /** Returns a BigRational whose value is (this**exp) - raised to some exponent.
     *  The resulting fraction is simplified.
     *  @param exp the power to which this BigRational is to be raised, may be -1
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
                result = BigRational.valueOf(this.den, this.num).simplify();
                break;
            default:
                if (exp >= 0) {
                    result = BigRational.valueOf(this.num.pow(exp), this.den.pow(exp));
                } else {
                    throw new IllegalArgumentException("negative exponent in 'pow': " + exp);
                /*
                    exp = - exp;
                    result = BigRational.valueOf(this.den.pow(exp), this.num.pow(exp)).simplify();
                */
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
        return BigRational.valueOf(this.num.gcd(brat2.getNum()));
    } // gcd(BigRational)

    /** Computes the least common multiple of the numerators
     *  @param brat2 2nd BigRational
     *  @return the least common multiple of the numerators
     */
    public BigRational lcm(BigRational brat2) {
        BigInteger num1 = this.num;
        BigInteger num2 = brat2.getNum();
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
     *  <li>numerator and denominator have no common divisor &gt; 1</li>
     *  <li>the denominator is positive</li>
     *  </ul>
     *  @return reduced fraction with positive denominator
     */
    public BigRational simplify() {
        BigRational result = this;
        BigInteger  common = this.num.gcd(this.den);
        if (common.compareTo(BigInteger.ONE) > 0) {
            if (common.compareTo(this.den) == 0) {
                result = BigRational.valueOf( this.num.divide(common));
            } else {
                result = BigRational.valueOf( this.num.divide(common)
                                            , this.den.divide(common));
            }
        }
        if (this.den.signum() < 0) { // denominator is always made positive
            result = BigRational.valueOf( result.getNum().negate()
                                        , result.getDen().negate());
        }
        return result;
    } // simplify

    /** Returns the absolute value of the BigRational
     *  @return a copy of the object with a positive sign
     */
    public BigRational abs() {
        this.simplify(); // makes denominator positive
        return BigRational.valueOf(num.signum() < 0 ? num.negate() : num, den);
    } // abs

    /** Returns the sign of <em>this</em> BigRational.
     *  @return -1, 0 or 1
     */
    public int signum() {
        this.simplify(); // makes denominator positive
        return num.signum();
    } // signum

    /** Returns the BigRational with inverted sign.
     *  @return a copy of the object with the opposite sign
     */
    @Override
    public BigRational negate() {
        return (BigRational.valueOf(num.negate(), den)).simplify();
    } // negate

    /** Compares this BigRational with the specified BigRational.
     *  This method is provided in preference to individual methods
     *  for each of the six boolean comparison operators (&lt;, ==, &gt;, &gt;=, !=, &lt;=).
     *  The suggested idiom for performing these comparisons is:
     *  (x.compareTo(y) &lt;op&gt; 0), where &lt;op&gt; is one of the six comparison operators.
     *  Returns the signum of the difference of <em>this</em> BigRational minus the parameter.
     *  @param num2 number to which this BigRational is to be compared.
     *  @return -1, 0 or 1 as this BigRational is numerically
     *  less than, equal to, or greater than <em>num2</em>.
     */
    public int compareTo(BigRational num2) {
        return this.num.multiply(num2.getDen()).compareTo(this.den.multiply(num2.getNum()));
    } // compareTo

    /** Compares two BigRationals (Comparator interface).
     *  @return -1, 0 or 1 as num is numerically
     *  less than, equal to, or greater than <em>num2</em>.
     */
    @Override
    public int compare(BigRational num1, BigRational num2) {
        return num1.multiply(num2.getDen()).compareTo(num1.multiply(num2.getNum()));
    } // compare

    /** Compares this BigRational with the specified BigInteger.
     *  This method is provided in preference to individual methods
     *  for each of the six boolean comparison operators (&lt;, ==, &gt;, &gt;=, !=, &lt;=).
     *  The suggested idiom for performing these comparisons is:
     *  (x.compareTo(y) &lt;op&gt; 0), where &lt;op&gt; is one of the six comparison operators.
     *  Returns the signum of the difference of <em>this</em> BigRational minus the parameter.
     *  @param num2 number to which this BigRational is to be compared.
     *  @return -1, 0 or 1 as this BigRational is numerically
     *  less than, equal to, or greater than <em>num2</em>.
     */
    @Override
    public int compareTo(BigInteger num2) {
        return this.num.compareTo(this.den.multiply(num2));
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
        MathContext mc = new MathContext((this.den.bitLength() / 10 + 1) * 3); // 10^3 ~= 2^10
        return new BigDecimal(this.num).divide(new BigDecimal(this.den), mc);
    } // getDecimal

    /** Gets the integral part of the rational number, or 1.
     *  @return denominator if the numerator is 1, or 1 otherwise.
     */
    public BigInteger getInteger() {
        BigInteger result = BigInteger.ONE;
        if (den.abs().equals(BigInteger.ONE)) {
            result = new BigInteger(num.toByteArray()); // clone it
        }
        return result;
    } // getInteger

    /** Determines whether the reduced denominator is 1.
     *  @return true if the reduced denominator is 1, false otherwise.
     */
    public boolean isInteger() {
        return this.simplify().getDen().equals(BigInteger.ONE);
    } // isInteger

    /** Returns 1 / this
     *  @return inverted fraction
     */
    public BigRational inverse() {
        return BigRational.valueOf(this.den, this.num);
    } // inverse

    /** Returns a string representation of the fraction in radix 10
     *  @return "a/b"
     */
    public String toString() {
        StringBuffer result = new StringBuffer(64);
        result.append(this.num.toString());
        if (! den.equals(BigInteger.ONE)) {
            result.append("/");
            result.append(this.den.toString());
        }
        return result.toString();
    } // toString

    /** Returns a string representation of the fraction in the given radix
     *  @param radix base for numer representation
     *  @return "a/b"
     */
    public String toString(int radix) {
        return this.num.toString(radix) + "/" + this.den.toString(radix);
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
        System.out.println("3/4 pow -1= " + (BigRational.valueOf(3,4)).pow      (-1                  )                 .toString());
        System.out.println("3/4 <>5/7 = " + (BigRational.valueOf(3,4)).compareTo(BigRational.valueOf(5,7)));
        System.out.println("3/4 == 5/7 = "     + (BigRational.valueOf(3,4)).equals   (BigRational.valueOf(5,7)));
        System.out.println("3/4 == -12/-16 = " + (BigRational.valueOf(3,4)).equals   (new BigRational("-12/-16")));
        System.out.println("3/4 == -12/16  = " + (BigRational.valueOf(3,4)).equals   (new BigRational("-12/16")));
        System.out.println("3/4 == -12/16  = " + (BigRational.valueOf(3,4)).equals   (BigRational.valueOf(-12,16)));
    } // main

} // BigRational
