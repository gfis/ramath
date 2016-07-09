/*  Coefficient: extends either BigInteger or BigRational
 *  @(#) $Id: Coefficient.java 231 2009-08-25 08:47:16Z gfis $
 *  2015-12-06: toString(int mode)
 *  2015-07-20: moved from ./symbolic, lifted to BigRational
 *  2015-06-17: Georg Fischer: copied from BigRational
 */
/*
 * Copyright 2015 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.BigIntegerUtil;
import  org.teherba.ramath.PrimeFactorization;
import  org.teherba.ramath.symbolic.Monomial;
import  java.io.Serializable;
import  java.math.BigInteger;

/** Utility class for the migration from BigInteger to {@link BigRational} coefficients of
 *  {@link Monomial}s.
 *  The class serves as a placeholder for, and extends one of these number classes.
 *  @author Dr. Georg Fischer
 */
public class Coefficient 
        extends BigInteger
        implements Cloneable, Serializable 
        {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Coefficient.java 231 2009-08-25 08:47:16Z gfis $";

    /** constant 0 */
    public static final Coefficient ZERO = new Coefficient("0");
    /** constant 1 */
    public static final Coefficient ONE  = new Coefficient("1");
    /** constant 2 */
    public static final Coefficient TWO  = new Coefficient("2");

    /** Construct from a String: an optional sign, and either a decimal number (with decimal dot),
     *  or a fraction of the form <em>numerator/denominator</em>.
     *  All characters except from digits, '-', '.' and '/' are stripped.
     *  @param rawNumber string with sign, digits, decimal dot and/or slash.
     */
    public Coefficient(String rawNumber) {
        super(rawNumber);
    } // Constructor String

    /** Construct from a byte array containing a BigInteger
     *  @param bytes the result of gibint.toByteArray()
     */
    public Coefficient(byte[] bytes) {
        super(bytes);
    } // Constructor String

    /** Constructing with 1 BigInteger argument; the denominator will be 1
     *  @param number   number of the instance
     *  @return a new instance 
     */
    public static Coefficient valueOf(String number) {
        return new Coefficient(number);
    } // valueOf(String)

    /** Constructing with 1 BigInteger argument; the denominator will be 1
     *  @param number   number of the instance
     *  @return a new instance 
     */
    public static Coefficient valueOf(BigInteger number) {
        return new Coefficient(number.toString());
    } // valueOf(BigInteger)

    /** Constructing with 1 BigRational argument; the denominator will be 1
     *  @param number   number of the instance
     *  @return a new instance 
     */
    public static Coefficient valueOf(BigRational number) {
        return new Coefficient(number.toString());
    } // valueOf(BigInteger)

    /** Constructing with a long argument; the denominator will be 1
     *  @param number   number of the instance
     *  @return a new instance 
     */
    public static Coefficient valueOf(long number) {
        return new Coefficient(String.valueOf(number));
    } // valueOf(long)

    /** Returns the absolute value of <em>this</em> {@link Coefficient}
     *  @return positive BigInteger
     */
    public BigInteger abs() {
        return super.abs();
    } // abs

    /** Returns the integral part of <em>this</em> {@link Coefficient},
     *  or +1 if the Coefficient is fractional.
     *  @return BigInteger or 1
     */
    public BigInteger bigIntegerValue() {
        return this;
    } // bigIntegerValue

    /** Returns a String representation of <em>this</em> {@link Coefficient}, 
     *  either as decimal number or as product of prime factor powers
     *  @param mode 0 = normal, 1 = full (for substitution), 2 = nice / human legible,
     *  3 = with prime factors
     *  @return "17*a0^2*a1 + a2^2*a3^3 - 4*b4", for example for mode = 0
     */
/*
    public String toString(int mode) {
        String result = null;
        if (mode <= 2 || true) { // normal
            result = this.toString();
        } else { // >= 3: with PrimeFactorization
            result = (new PrimeFactorization(this.bigIntegerValue())).toString(mode);
        } // if mode
        return result;
    } // toString(mode)
*/    
} // Coefficient
