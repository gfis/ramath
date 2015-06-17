/*  Coefficient: extends either BigInteger or BigRational
 *  @(#) $Id: Coefficient.java 231 2009-08-25 08:47:16Z gfis $
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
package org.teherba.ramath.symbolic;
import  org.teherba.ramath.BigRational;
import  java.io.Serializable;
import  java.math.BigInteger;

/** Utility class for the migration from BigInteger to BigRational coefficients 
 *  {@link Monomial}s.
 *  The class serves as a placeholder for, and extends one of these classes.
 *  @author Dr. Georg Fischer
 */
public class Coefficient 
		extends BigInteger/*Rational*/ 
        implements Cloneable, Serializable 
        {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Coefficient.java 231 2009-08-25 08:47:16Z gfis $";

    /** Construct from a String: either a decimal number (with decimal dot),
     *  or a fraction of the form numerator  /denominator.
     *  All characters except from digits, '.' and '/' are stripped.
     *  @param rawNumber string with digits, decimal dot or slash.
     *  @result a new instance 
     */
    public Coefficient(String rawNumber) {
    	super(rawNumber);
    } // Constructor String

    /** Constructing with 1 BigInteger argument; the denominator will be 1
     *  @param number   number of the instance
     *  @result a new instance 
     */
    public static BigInteger/*Rational*/ valueOf(String number) {
    	return new BigInteger/*Rational*/(number);
    } // valueOf

    /** Constructing with 1 BigInteger argument; the denominator will be 1
     *  @param number   number of the instance
     *  @result a new instance 
     */
    public static BigInteger/*Rational*/ valueOf(BigInteger/*Rational*/ number) {
    	return number;
    } // valueOf

    /** Constructing with 1 long argument; the denominator will be 1
     *  @param number   number of the instance
     *  @result a new instance 
     */
    public static BigInteger/*Rational*/ valueOf(long number) {
    	return BigInteger/*Rational*/.valueOf(number);
    } // valueOf

    /** constant 0 */
    public static final BigInteger/*Rational*/ ZERO = BigInteger/*Rational*/.valueOf(0);
    /** constant 1 */
    public static final BigInteger/*Rational*/ ONE  = BigInteger/*Rational*/.valueOf(1);
    /** constant 2 */
    public static final BigInteger/*Rational*/ TWO  = BigInteger/*Rational*/.valueOf(2);

} // Coefficient
