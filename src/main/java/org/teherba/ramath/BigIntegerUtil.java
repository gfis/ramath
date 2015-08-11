/*  BigIntegerUtil: helper methods for BigInteger
 *  @(#) $Id: BigIntegerUtil.java 231 2009-08-25 08:47:16Z gfis $
 *  2015-08-11: THREE
 *  2015-07-20: lcm(BigRationals)
 *  2014-04-08: use BigInteger.valueOf(long)
 *  2013-09-20, Georg Fischer: copied from BigRational
 *
 *  c.f. also http://intra.csb.ethz.ch/javadoc/metabolic/ch/javasoft/util/numeric/BigIntegerUtil.html
 */
/*
 * Copyright 2013 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.BigRational;
import  java.math.BigInteger;

/** BigIntegerUtil - helper methods for {@link BigInteger}
 *  @author Dr. Georg Fischer
 */
public class BigIntegerUtil {
    public final static String CVSID = "@(#) $Id: BigIntegerUtil.java 231 2009-08-25 08:47:16Z gfis $";

    /** No-args Constructor - no instances
     */
    private BigIntegerUtil() {
    } // no-args Constructor

    /** constant big 2 */
    public static final BigInteger TWO   = BigInteger.valueOf(2);
    /** constant big 3 */
    public static final BigInteger THREE = BigInteger.valueOf(3);

    /** Tries to find an integer root
     *  (in a very primitive way)
     *  @param power determine the root of this number
     *  @param exp exponent for the result
     *  @return root such that root^exp = power, or 0 if no such root exists
     */
    public static BigInteger root(BigInteger power, int exp) {
        BigInteger result = BigInteger.ONE; // assume power == 1
        if (! power.equals(BigInteger.ONE)) {
            result = BigInteger.ZERO;
            BigInteger rootn  = BigInteger.ONE;
            int comp = rootn.pow(exp).compareTo(power);
            while (comp < 0) {
                rootn = rootn.add(BigInteger.ONE);
                comp  = rootn.pow(exp).compareTo(power);
            } // while <
            if (comp == 0) {
                result = rootn;
            }
        } // != 1
        return result;
    } // root1

    // the following was taken from
    // http://i12www.ira.uka.de/~bubel/nightly/doc/api/src-html/de/uka/ilkd/key/strategy/termgenerator/RootsGenerator.html

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
                res = res.subtract ( BigInteger.ONE );

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
                && ub.subtract ( lb ).compareTo ( BigInteger.ONE ) > 0 ) {
            final BigInteger mid = ub.add ( lb ).divide ( TWO );
            if ( power ( mid, exp ).compareTo ( prod ) <= 0 ) {
                lb = mid;
            } else {
                ub = mid;
            }
        }
        return lb;
    } // posRoot

    private static BigInteger power(BigInteger base, int exp) {
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
        BigInteger temp   = BigInteger.ONE;
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
                System.err.println("BigIntegerUtil.root did not converge for " + n + "th root of " + a.toString());
                    result = BigInteger.ZERO;
            }
        } // switch for n
        return result;
    } // root3

    /** Computes the greatest common divisior of 2 numbers
     *  @param num1 1st number
     *  @param num2 2nd number
     *  @return the greatest common divisior of the numbers
     */
    public static BigInteger gcd(BigInteger num1, BigInteger num2) {
        return num1.gcd(num2);
    } // gcd

    /** Computes the least common multiple of 2 numbers
     *  @param num1 1st number
     *  @param num2 2nd number
     *  @return the least common multiple of the numbers
     */
    public static BigInteger lcm(BigInteger num1, BigInteger num2) {
        return num1.multiply(num2).divide(num1.gcd(num2));
    } // lcm

    /** Computes the least common multiple of 2 numbers
     *  @param num1 1st number
     *  @param num2 2nd number
     *  @return the least common multiple of the numbers
     *  Caution, this implementation cares for the numerators only !!!
     */
    public static BigRational lcm(BigRational num1, BigRational num2) {
        return num1.multiply(num2.getNumerator()).divide(num1.getNumerator().gcd(num2.getNumerator()));
    } // lcm

    /** Computes the binomial coefficient <em>num1 choose num2</em>, that is
     *  the <em>num2</em>th entry in row <em>num1</em> of Pascal's triangle.
     *  Code adapted from {@link http://stackoverflow.com/questions/2201113/combinatoric-n-choose-r-in-java-math stackoverflow}
     *  @param num1 the upper parameter
     *  @param num2 the lower parameter
     *  @return num1! / (num1 - num2)! / num2!; 
     *  for example binomial(4,2) = 6, 
     *  or binomial(133,71) = 555687036928510235891585199545206017600
     */ 
    public static BigInteger binomial(int num1, int num2) {
        BigInteger result = BigInteger.ONE;
        int k = 0;
        while (k < num2) {
            result = result.multiply(BigInteger.valueOf(num1 - k))
                     .divide(BigInteger.valueOf(k + 1));
            k ++;
        } // while k
        return result;
    } // binomial

    /** Test method.
     *  Prints
     <pre>
    gcd(24,27) = 3
    lcm(24,27) = 216
    binomial(133,71) = 555687036928510235891585199545206017600
     </pre>
     */
    public static void main(String[] args) {
        /* elementary arithmetic */
        System.out.println("gcd(24,27) = " + BigIntegerUtil.gcd(BigInteger.valueOf(24), BigInteger.valueOf(27)).toString());
        System.out.println("lcm(24,27) = " + BigIntegerUtil.lcm(BigInteger.valueOf(24), BigInteger.valueOf(27)).toString());
        System.out.println("binomial(133,71) = " + BigIntegerUtil.binomial(133, 71).toString());
    } // main

} // BigIntegerUtil
