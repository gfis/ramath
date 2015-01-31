/*  BigRational: a fraction as a pair of BigIntegers
 *  @(#) $Id: BigRational.java 231 2009-08-25 08:47:16Z gfis $
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
public class BigRational implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: BigRational.java 231 2009-08-25 08:47:16Z gfis $";

    /** the number which is divided by the nominator */
    private BigInteger numerator  ;
    /** the number which divides the denominator */
    private BigInteger denominator;

    /** No-args Constructor
     */
    public BigRational() {
    } // no-args Constructor

    /** Constructor with 1 BigInteger argument; the nominator will be 1
     *  @param numerator   numerator of the instance
     */
    public BigRational(BigInteger numerator  ) {
        this.numerator   = numerator  ;
        this.denominator = BigInteger.ONE;
    } // Constructor 1

    /** Constructor with 1 long argument; the nominator will be 1
     *  @param numerator   numerator of the instance
     */
    public BigRational(long numerator  ) {
        this.numerator   = BigInteger.valueOf(numerator  );
        this.denominator = BigInteger.ONE;
    } // Constructor 1

    /** Constructor with 2 BigInteger arguments
     *  @param numerator   numerator   of the instance
     *  @param denominator denominator of the instance
     */
    public BigRational(BigInteger numerator  , BigInteger denominator) {
        this.numerator   = numerator  ;
        this.denominator = denominator  ;
    } // Constructor 2

    /** Constructor with 2 long arguments
     *  @param numerator   numerator   of the instance
     *  @param denominator denominator of the instance
     */
    public BigRational(long numerator  , long denominator) {
        this.numerator   = BigInteger.valueOf(numerator  );
        this.denominator = BigInteger.valueOf(denominator);
    } // Constructor 2

    /** Construct from a BigDecimal; the denominator will be a power of 10.
     *  @param bdec represent this exact
     */
    public BigRational(BigDecimal bdec) {
        this.set(bdec);
    } // Constructor BigDecimal

    /** Construct from a String: either a decimal number (with decimal dot),
     *  or a fraction of the form numerator  /denominator.
     *  All characters except from digits, '.' and '/' are stripped.
      * @param rawNumber string with digits, decimal dot or slash.
     */
    public BigRational(String rawNumber) {
        this();
        String number = rawNumber.replaceAll("[^\\d\\.\\/]", "");
        int slash = number.indexOf("/");
        if (slash >= 0) {
            this.numerator   = new BigInteger(number.substring(0, slash));
            this.denominator = new BigInteger(number.substring(slash + 1));
        } else {
            this.set(new BigDecimal(number));
        }
    } // Constructor String

    /** constant 0 */
    public static BigRational ZERO = new BigRational(0);
    /** constant 1 */
    public static BigRational ONE  = new BigRational(1);

    /** Deep copy of the rational number with denominator and nominator.
     *  @return independant, simplified copy of the rational number
     */
    public BigRational clone() {
        return (new BigRational(numerator  , denominator)).simplify();
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

    /** Returns a BigRational whose value is (this + val).
     *  The resulting fraction is not simplified: a/b + c/1 = (a*1 + c*b)/(b*1)
     *  @param val value to be added to  this BigRational
     *  @return this + val
     */
    public BigRational add     (BigInteger  val) {
        return new BigRational
                ( (this.numerator                           ).add     (val           .multiply(this.denominator))
                , (this.denominator                         )
                );
    } // add(BigInteger)

    /** Returns a BigRational whose value is (this + val).
     *  The resulting fraction is not simplified: a/b + c/d = (a*d + c*b)/(b*d)
     *  @param val value to be added to      this BigRational
     *  @return this + val
     */
    public BigRational add     (BigRational val) {
        return  (new BigRational
                ( (this.numerator  .multiply(val.getDenominator())).add     (val.getNumerator().multiply(this.denominator))
                , (this.denominator.multiply(val.getDenominator()))
                )).simplify();
    } // add(BigRational)

    /** Returns a BigRational whose value is (this - val).
     *  The resulting fraction is not simplified: a/b - c/1 = (a*1 - c*b)/(b*1)
     *  @param val value to be subtracted from this BigRational
     *  @return this - val
     */
    public BigRational subtract(BigInteger  val) {
        return new BigRational
                ( (this.numerator                           ).subtract(val           .multiply(this.denominator))
                , (this.denominator                         )
                );
    } // subtract(BigInteger)

    /** Returns a BigRational whose value is (this - val).
     *  The resulting fraction is not simplified: a/b - c/d = (a*d - c*b)/(b*d)
     *  @param val value to be subtracted from this BigRational
     *  @return this - val
     */
    public BigRational subtract(BigRational val) {
        return  (new BigRational
                ( (this.numerator  .multiply(val.getDenominator())).subtract(val.getNumerator().multiply(this.denominator))
                , (this.denominator.multiply(val.getDenominator()))
                )).simplify();
    } // subtract(BigRational)

    /** Returns a BigRational whose value is (this * val).
     *  The resulting fraction is not simplified: a/b * c/1 = (a*c)/(b*1)
     *  @param val value to be multiplied with this BigRational
     *  @return this * val
     */
    public BigRational multiply(BigInteger  val) {
        return new BigRational
                ( (this.numerator                           ).multiply(val                                       )
                , (this.denominator                         )
                );
    } // multiply(BigInteger)

    /** Returns a BigRational whose value is (this * val).
     *  The resulting fraction is not simplified: a/b * c/d = (a*c)/(b*d)
     *  @param val value to be multiplied with this BigRational
     *  @return this * val
     */
    public BigRational multiply(BigRational val) {
        return  (new BigRational
                ( (this.numerator                           ).multiply(val.getNumerator()                        )
                , (this.denominator.multiply(val.getDenominator()))
                )).simplify();
    } // multiply(BigRational)

    /** Returns a BigRational whose value is (this * val).
     *  The resulting fraction is not simplified: (a/b) / (c/1) = (a*1)/(b*c)
     *  @param val value by which this BigRational is to be divided
     *  @return this / val
     */
    public BigRational divide  (BigInteger  val) {
        return new BigRational
                ( (this.numerator                           )
                , (this.denominator                         ).multiply(val                                       )
                );
    } // divide  (BigInteger)

    /** Returns a BigRational whose value is (this / val).
     *  The resulting fraction is not simplified: (a/b) / (c/d) = (a*d)/(b*c)
     *  @param val value by which this BigRational is to be divided
     *  @return this / val
     */
    public BigRational divide  (BigRational val) {
        return  (new BigRational
                ( (this.numerator  .multiply(val.getDenominator()))
                , (this.denominator                         ).multiply(val.getNumerator()                        )
                )).simplify();
    } // divide  (BigRational)

    /** Returns a BigRational whose value is (this**exp) - raised to some exponent.
     *  The resulting fraction is simplified.
     *  @param exp the power to which this BigRational is to be raised
     *  @return this**exp
     */
    public BigRational pow     (int exp) {
        return exp == 1
            ? this.clone()
            : new BigRational
                ( (this.numerator  .pow(exp))
                , (this.denominator.pow(exp))
                );
    } // pow  (BigRational)

    /** Tries to find an integer root
     *  (in a very primitive way)
     *  @param power determine the root of this number
     *  @param exp exponent for the result
     *  @return root such that root^exp = power
     */
    public static BigInteger root(BigInteger power, int exp) {
        BigInteger result = BigInteger.ZERO;
        BigInteger rootn  = BigInteger.ONE.add(BigInteger.ONE); // = 2
        int comp = rootn.pow(exp).compareTo(power);
        while (comp < 0) {
            rootn = rootn.add(BigInteger.ONE);
            comp  = rootn.pow(exp).compareTo(power);
        } // while <
        if (comp == 0) {
            result = rootn;
        }
        return result;
    } // root1

    // the following was taken from
    // http://i12www.ira.uka.de/~bubel/nightly/doc/api/src-html/de/uka/ilkd/key/strategy/termgenerator/RootsGenerator.html

    private static final BigInteger one = BigInteger.ONE;
    private static final BigInteger two = BigInteger.valueOf ( 2 );

    /**
      * @return a number <tt>res</tt> with the property
      *         <tt>prod in [res^exp, (res+1)^exp)</tt>
      */
    public static BigInteger root2 (BigInteger prod, int exp) {
        assert exp > 0;
        BigInteger result = null;

        if ( prod.signum () >= 0 ) {
            result = posRoot ( prod, exp );
        } else {
            assert exp % 2 != 0;

            BigInteger res = posRoot ( prod.abs (), exp ).negate ();
            while ( power ( res, exp ).compareTo ( prod ) > 0 )
                res = res.subtract ( one );

            result = res;
        }
        if (! result.pow(exp).equals(prod)) {
        	result = BigInteger.ZERO;
        }
        return result;
    } // root2

    private static BigInteger posRoot(BigInteger prod, int exp) {
        assert exp > 0;
        assert prod.signum () >= 0;

        // binary search for finding the root

        BigInteger lb = BigInteger.ZERO;
        BigInteger ub = prod;
        while ( !power ( lb, exp ).equals ( prod )
                && ub.subtract ( lb ).compareTo ( one ) > 0 ) {
            final BigInteger mid = ub.add ( lb ).divide ( two );
            if ( power ( mid, exp ).compareTo ( prod ) <= 0 ) {
                lb = mid;
            } else {
                ub = mid;
            }
        }
        return lb;
    } // posRoot

    private static BigInteger power (BigInteger base, int exp) {
        assert exp >= 0;

        // shift-multiplier

        BigInteger res = BigInteger.ONE;
        while (true) {
            if ( exp % 2 != 0 ) res = res.multiply ( base );

            exp >>= 1;
            if ( exp == 0 ) return res;

            base = base.multiply ( base );
        }
    } // power

    /** Computes the <em>n</em>th root of some BigInteger <em>a</em>.
     *  If <em>a</a> is no exact <em>n</em>th power of the result, the result is 0.
     *  @param a take the root of this number
     *  @param n exponent
     *  @return the exact root, or 0
     */
    public static BigInteger root3(BigInteger a, int n) {
        BigInteger exp    = BigInteger.valueOf(n);
        BigInteger exp_1  = exp.subtract(BigInteger.ONE);
        BigInteger result = BigInteger.ONE; // a.divide(new BigInteger(new byte[] { (byte) (n + 4) })).max(BigInteger.ONE); // initial guess
        BigInteger temp = BigInteger.ONE;
        if (false) {
        } else if (n <= 1) {
        	result = a;
        } else {
	        int iloop = 1024;
	        while (iloop > 0) {
	            iloop --;
	            /*
	              ret = ( (n - 1) * ret
	                    + ( A / (int) pow(ret, n - 1) )
	                    ) / n;
	            */
	            BigInteger pown_1 = result.pow(n - 1);
	            result= (exp_1.multiply(result)
	                    .add(a.divide(pown_1))
	                    ).divide(exp);
	            BigInteger pown = pown_1.multiply(result);
	            if (a.equals(pown)) {
	            	iloop = -8; // exact solution
	            } else if (temp.equals(result)) {
	                if (! a.equals(pown)) { // inexact solution
	                    result = BigInteger.ZERO;
	                }
	                // System.out.println(String.valueOf(1024 - iloop) + " loops in Newton-Raphson");
	                iloop = -16; // break loop
	        //  } else if (! temp.equals(result.subtract(BigInteger.ONE))) {
	            } else if (! temp.subtract(result).abs().equals(BigInteger.ONE)) {
	                temp = result;
	            }
	        }
	        if (iloop >= -1) {
	        	System.err.println("BigRational.root did not converge for " + n + "th root of " + a.toString());
	                result = BigInteger.ZERO;
	        }
	   	} // switch for n
        return result;
    } // root3

    /** Computes the greatest common divisor of the numerators
     *  @param brat2 2nd BigRational
     *  @return the greatest common divisor of the numerators
     */
    public BigRational gcd(BigRational brat2) {
        return new BigRational(this.numerator.gcd(brat2.getNumerator()));
    } // gcd(BigRational)

    /** Computes the least common multiple of the numerators
     *  @param brat2 2nd BigRational
     *  @return the least common multiple of the numerators
     */
    public BigRational lcm(BigRational brat2) {
        BigInteger num1 = this.numerator;
        BigInteger num2 = brat2.getNumerator();
        return new BigRational(num1.multiply(num2).divide(num1.gcd(num2)));
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
     *	<li>the denominator is positive</li>
     *	</ul>
     *  @return reduced fraction with positive denominator
     */
    public BigRational simplify() {
        BigRational result = this;
        BigInteger  common = this.numerator  .gcd(this.denominator);
        if (common.compareTo(BigInteger.ONE) > 0) {
            if (common.compareTo(this.denominator) == 0) {
                result = new BigRational(this.numerator  .divide(common));
            } else {
                result = new BigRational(this.numerator  .divide(common), this.denominator.divide(common));
            }
        }
        if (this.denominator.signum() < 0) { // denominator is always made positive
            result = new BigRational(result.getNumerator().negate(), result.getDenominator().negate());
        }
        return result;
    } // simplify

    /** Returns the BigRational with inverted sign.
     *  @return a copy of the object with the opposite sign
     */
    public BigRational negate() {
        return (new BigRational(numerator  .negate(), denominator)).simplify();
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
     *  @param val - BigRational to which this BigRational is to be compared.
     *  @return -1, 0 or 1 as this BigRational is numerically
     *  less than, equal to, or greater than <em>val</em>.
     */
    public int compareTo(BigRational val) {
        return this.numerator  .multiply(val.getDenominator()).compareTo(this.denominator.multiply(val.getNumerator()));
    } // compareTo

    /** Determines whether <em>this</em> BigRational has the same value as the parameter.
     *  @param num2 2nd comparision operand
     *  @return true when the two rational are the same
     */
    public boolean equals(BigRational num2) {
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
        return new BigRational
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
        System.out.println((new BigRational(2906,1947)).toString());
        System.out.println("3/4 + 5/7 = " + (new BigRational(3,4)).add     (new BigRational(5,7))             .toString());
        System.out.println("3/4 - 5/7 = " + (new BigRational(3,4)).subtract(new BigRational(5,7))             .toString());
        System.out.println("3/4 * 5/7 = " + (new BigRational(3,4)).multiply(new BigRational(5,7))             .toString());
        System.out.println("3/4 / 5/7 = " + (new BigRational(3,4)).divide  (new BigRational(5,7))             .toString());
        System.out.println("3/4 + 5   = " + (new BigRational(3,4)).add     (new BigRational(5  ))             .toString());
        System.out.println("3/4 - 5   = " + (new BigRational(3,4)).subtract(new BigRational(5  ))             .toString());
        System.out.println("3/4 * 5   = " + (new BigRational(3,4)).multiply(new BigRational(5  ))             .toString());
        System.out.println("3/4 / 5   = " + (new BigRational(3,4)).divide  (new BigRational(5  ))             .toString());
        System.out.println("3/4 / 5/7 = " + (new BigRational(3,4)).divide  (new BigRational(5,7)).getDecimal().toString());
        System.out.println("3/4 * 4/3 = " + (new BigRational(3,4)).multiply(new BigRational(4,3))             .toString());
        System.out.println("3/4 pow 3 = " + (new BigRational(3,4)).pow     (3                   )             .toString());
    } // main

} // BigRational
