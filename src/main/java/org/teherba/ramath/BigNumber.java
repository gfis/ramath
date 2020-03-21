/*  BigNumber: a wrapper around BigInteger
 *  @(#) $Id: BigNumber.java 231 2009-08-25 08:47:16Z gfis $
 *  2020-03-17, Georg Fischer: copied from BigRational
 */
/*
 * Copyright 2020 Dr. Georg Fischer <dr.georg.fischer@gmail.com>
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
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.Comparator;

/** BigNumber - a wrapper around BigInteger, with some additional methods
 *  used in the generic class Vectorial
 *  @author Dr. Georg Fischer
 */
public class BigNumber extends BigInteger
        implements Cloneable, Serializable
        // , Comparator<BigNumber>
        {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: BigNumber.java 231 2009-08-25 08:47:16Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private static int debug = 0;

    /** No-args constructor - create 0
     */
    public BigNumber() {
        super("0");
    } // Constructor 

    /** Construct from a BigInteger,
     *  @param term String with decimal digits, decimal dot or slash;
     *  all characters except from 0-9, '.' and '/' are stripped.
     */
    public BigNumber(BigInteger term) {
        super(term.toString());
    } // Constructor BigInteger

    /** Construct from a String.
     *  @param term String with decimal digits, decimal dot or slash;
     *  all characters except from 0-9, '.' '+', '-' and '/' are stripped.
     */
    public BigNumber(String term) {
        super(term.replaceAll("[^0-9\\.\\/\\-\\+]", ""));
    } // Constructor String

    /** constant 0 */
    public static BigNumber ZERO        = new BigNumber(BigInteger.valueOf(0));
    /** constant 2 */
    public static BigNumber ONE         = new BigNumber(BigInteger.valueOf(1));
    /** constant -1 */
    public static BigNumber MINUS_ONE   = new BigNumber(BigInteger.valueOf(-1));
    /** constant 2 */
    public static BigNumber TWO         = new BigNumber(BigInteger.valueOf(2));

    /** Deep copy of the rational number with numerator and denominator
     *  @return independant, simplified copy of the rational number
     */
    public BigNumber clone() {
        return new BigNumber(toString());
    } // clone

    /** Create a BigNumber from a String
     *  @param term String with decimal digits and optional sign
     *  @return independant, simplified copy of the rational number
     */
    public BigNumber parse(String term) {
        return (BigNumber) (new BigInteger(toString()));
    } // parse

    /** Return a number zero
     *  @return 0
     */
    public static BigNumber valueZero() {
        return (BigNumber) BigInteger.ZERO;
    } // valueZero

    /** Return a number one.
     *  @return 1.
     */
    public static BigNumber valueOne() {
        return (BigNumber) BigInteger.ONE;
    } // valueOne

    /** Determine whether <em>this</em> BigNumber is zero.
     *  @return true i f= 0, false otherwise.
     */
    public boolean isZero() {
        return equals(BigInteger.ZERO);
    } // isZero

    /** Determine whether <em>this</em> BigNumber is zero.
     *  @return true i f= 0, false otherwise.
     */
    public boolean isOne() {
        return equals(BigInteger.ONE);
    } // isOne


    /** Returns a BigRational whose value is  <em>(this + val)</em>
     *  @param val value to be added to      this BigRational
     *  @return this + val
     */
    public BigNumber add     (BigNumber val) {
        return new BigNumber(((BigInteger) this).add    ((BigInteger) val));
    } // add(BigNumber)

    /** Returns a BigNumber whose value is  <em>(this - val)</em>
     *  @param val value to be subtracted from this BigNumber
     *  @return this - val
     */
    public BigNumber subtract(BigNumber  val) {
        return new BigNumber(((BigInteger) this).subtract((BigInteger) val));
    } // subtract(BigNumber)

    /** Returns a BigNumber whose value is  <em>(- this)</em>
     *  @return - this
     */
/* nyi
    public BigNumber negate() {
        return BigNumber.ZERO.subtract((BigInteger) this);
    } // negate(BigNumber)
*/
    /** Returns a BigRational whose value is <em>(this * val)</em>
     *  @param val value to be multiplied with this BigRational
     *  @return this + val
     */
    public BigNumber multiply(BigNumber val) {
        return new BigNumber(((BigInteger) this).multiply((BigInteger) val));
    } // multiply(BigNumber)

    /** Returns a BigNumber whose value is  <em>(this / val)</em>
     *  @param val value to be divided into    this BigNumber
     *  @return this - val
     */
    public BigNumber divide  (BigNumber  val) {
        return new BigNumber(((BigInteger) this).divide  ((BigInteger) val));
    } // divide(BigNumber)

    /** Returns a BigNumber whose value is  <em>(this / val)</em>
     *  @param val value to be divided into    this BigNumber
     *  @return this - val
     */
    public ArrayList<BigNumber> divideAndRemainder(BigNumber val) {
        BigInteger[] quotRemd = ((BigInteger) this).divideAndRemainder((BigInteger) val);
        ArrayList<BigNumber> result = new ArrayList<BigNumber>(2);
        result.add(new BigNumber(quotRemd[0]));
        result.add(new BigNumber(quotRemd[1]));
        return result;
    } // divideAndRemainder(BigNumber)


    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        /* elementary arithmetic */
/* nyi
        System.out.println((BigNumber.valueOf(2906,1947)).toString());
        System.out.println("3/4 + 5/7 = " + (BigNumber.valueOf(3,4)).add      (BigNumber.valueOf(5,7))             .toString());
        System.out.println("3/4 - 5/7 = " + (BigNumber.valueOf(3,4)).subtract (BigNumber.valueOf(5,7))             .toString());
        System.out.println("3/4 * 5/7 = " + (BigNumber.valueOf(3,4)).multiply (BigNumber.valueOf(5,7))             .toString());
        System.out.println("3/4 / 5/7 = " + (BigNumber.valueOf(3,4)).divide   (BigNumber.valueOf(5,7))             .toString());
        System.out.println("3/4 + 5   = " + (BigNumber.valueOf(3,4)).add      (BigNumber.valueOf(5  ))             .toString());
        System.out.println("3/4 - 5   = " + (BigNumber.valueOf(3,4)).subtract (BigNumber.valueOf(5  ))             .toString());
        System.out.println("3/4 * 5   = " + (BigNumber.valueOf(3,4)).multiply (BigNumber.valueOf(5  ))             .toString());
        System.out.println("3/4 / 5   = " + (BigNumber.valueOf(3,4)).divide   (BigNumber.valueOf(5  ))             .toString());
        System.out.println("3/4 / 5/7 = " + (BigNumber.valueOf(3,4)).divide   (BigNumber.valueOf(5,7)).getDecimal().toString());
        System.out.println("3/4 * 4/3 = " + (BigNumber.valueOf(3,4)).multiply (BigNumber.valueOf(4,3))             .toString());
        System.out.println("3/4 pow 3 = " + (BigNumber.valueOf(3,4)).pow      (3                   )                 .toString());
        System.out.println("3/4 pow -1= " + (BigNumber.valueOf(3,4)).pow      (-1                  )                 .toString());
        System.out.println("3/4 <>5/7 = " + (BigNumber.valueOf(3,4)).compareTo(BigNumber.valueOf(5,7)));
        System.out.println("3/4 == 5/7 = "     + (BigNumber.valueOf(3,4)).equals   (BigNumber.valueOf(5,7)));
        System.out.println("3/4 == -12/-16 = " + (BigNumber.valueOf(3,4)).equals   (new BigNumber("-12/-16")));
        System.out.println("3/4 == -12/16  = " + (BigNumber.valueOf(3,4)).equals   (new BigNumber("-12/16")));
        System.out.println("3/4 == -12/16  = " + (BigNumber.valueOf(3,4)).equals   (BigNumber.valueOf(-12,16)));
*/
    } // main

} // BigNumber
