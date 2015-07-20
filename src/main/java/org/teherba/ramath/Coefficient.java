/*  Coefficient: extends either BigInteger or BigRational
 *  @(#) $Id: Coefficient.java 231 2009-08-25 08:47:16Z gfis $
 *  2015-07-20: moved from ./symbolic
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
import  java.io.Serializable;
import  java.math.BigInteger;

/** Utility class for the migration from BigInteger to BigRational coefficients of
 *  {@link Monomial}s.
 *  The class serves as a placeholder for, and extends one of these number classes.
 *  @author Dr. Georg Fischer
 */
public class Coefficient 
        extends BigInteger/*Rational*/ 
        implements Cloneable, Serializable 
        {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Coefficient.java 231 2009-08-25 08:47:16Z gfis $";

    /** Construct from a String: an optional sign, and either a decimal number (with decimal dot),
     *  or a fraction of the form <em>numerator/denominator</em>.
     *  All characters except from digits, '-', '.' and '/' are stripped.
     *  @param rawNumber string with sign, digits, decimal dot and/or slash.
     *  @result a new instance 
     */
    public Coefficient(String rawNumber) {
        super(rawNumber);
    } // Constructor String

    /** Constructing with 1 BigInteger argument; the denominator will be 1
     *  @param number   number of the instance
     *  @result a new instance 
     */
    public static Coefficient valueOf(String number) {
        return new Coefficient(number); // new BigInteger/*Rational*/(number);
    } // valueOf(String)

    /** Constructing with 1 BigInteger argument; the denominator will be 1
     *  @param number   number of the instance
     *  @result a new instance 
     */
    public static Coefficient valueOf(BigInteger number) {
        return new Coefficient(number.toString());
    } // valueOf(BigInteger)

    /** Constructing with 1 long argument; the denominator will be 1
     *  @param number   number of the instance
     *  @result a new instance 
     */
/*
    public static Coefficient valueOf(long number) {
        return valueOf(number);
    } // valueOf(long)
*/

    /** constant 0 */
    public static final Coefficient ZERO = Coefficient.valueOf(BigInteger.ZERO);
    /** constant 1 */
    public static final Coefficient ONE  = Coefficient.valueOf(BigInteger.ONE);
    /** constant 2 */
    public static final Coefficient TWO  = Coefficient.valueOf(BigIntegerUtil.TWO);

    /** Returns a {@link Coefficient} whose value is (this**exp) - raised to some exponent.
     *  The resulting fraction is simplified.
     *  @param exp the power to which this BigRational is to be raised, may be negative
     *  @return this**exp
     */
/*
    public Coefficient pow     (int exp) {
		return super.pow(exp);
	} // pow
*/
} // Coefficient
