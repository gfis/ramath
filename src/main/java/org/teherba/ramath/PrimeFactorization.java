/*  Prime Factorization of BigIntegers
 *  @(#) $Id: PrimeFactorization.java 231 2009-08-25 08:47:16Z gfis $
 *  2015-08-11, Georg Fischer: copied from BigIntegerUtil
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
import  org.teherba.ramath.BigIntegerUtil;
import  org.teherba.ramath.linear.Vector;
import  java.io.Serializable;
import  java.lang.IllegalArgumentException;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.TreeMap;

/** This class handles prime factorizations of positive {@link BigInteger}s.
 *  The prime factors are mapped to their exponents.
 *  ZERO and ONE are represented by an empty map.
 *  @author Dr. Georg Fischer
 */
public class PrimeFactorization extends TreeMap<BigInteger, Integer> 
        implements Cloneable, Serializable {
    public final static String CVSID = "@(#) $Id: PrimeFactorization.java 231 2009-08-25 08:47:16Z gfis $";

    /** No-args Constructor (represents ZERO or ONE)
     */
    public PrimeFactorization() {
        super();
    } // no-args Constructor

    /** Constructor for a positive BigInteger.
     *  This code was adapted from 
     *  {@link <a href="http://stackoverflow.com/questions/16802233/faster-prime-factorization-for-huge-bigintegers-in-java">stackoverflow.com</a>}
     *  @param number number to be factored
     */
    public PrimeFactorization(BigInteger number) {
        super();
        Integer oldExp = null;
        if (number.compareTo(BigIntegerUtil.THREE) <= 0) {
            this.put(number, new Integer(1));
        } else { // > 3
            while (number.mod(BigIntegerUtil.TWO).equals(BigInteger.ZERO)) { // remove powers of 2 first
                oldExp = this.put(BigIntegerUtil.TWO, 1);
                if (oldExp != null) {
                    this.put(BigIntegerUtil.TWO, oldExp + 1);
                }
                number = number.divide(BigIntegerUtil.TWO);
            } // while 2**x
        
            if (number.compareTo(BigInteger.ONE) > 0) {
                BigInteger factor = BigIntegerUtil.THREE;
                while (factor.multiply(factor).compareTo(number) <= 0) {
                    if (number.mod(factor).equals(BigInteger.ZERO)) {
                        oldExp = this.put(factor, 1);
                        if (oldExp != null) {
                            this.put(factor, oldExp + 1);
                        }
                        number = number.divide(factor);
                    } else {
                        factor = factor.add(BigIntegerUtil.TWO);
                    }
                } // while factor <= number
                oldExp = this.put(number, 1);
                if (oldExp != null) {
                    this.put(number, oldExp + 1);
                }
            } // number > 0
        } // > 3
    } // Constructor(BigInteger)

    /** Deep copy of the {@link PrimeFactorization} with all primes and their exponents
     *  @return independant copy of the PrimeFactorization
     */
    public PrimeFactorization clone() {
        PrimeFactorization result = new PrimeFactorization();
        Iterator<BigInteger> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            BigInteger prime = iter.next();
            result.put(prime, this.get(prime));
        } // while iter
        return result;
    } // clone

    /** Get the BigInteger value represented by <em>this</em> {@link PrimeFactorization}
     *  @return product of all prime powers, or 1 for an empty map
     */
    public BigInteger valueOf() {
        BigInteger result = BigInteger.ONE;
        Iterator<BigInteger> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            BigInteger prime = iter.next();
            result = result.multiply(prime.pow(get(prime)));
        } // while iter
        return result;
    } // valueOf

    /** Multiplies two {@link PrimeFactorization}s by merging the
     *  two TreeMaps and adding the exponents
     *  @param primfn2 second PrimeFactorization 
     *  @return resulting product as PrimeFactorization
     */
    public PrimeFactorization multiply(PrimeFactorization primfn2) {
        PrimeFactorization result = this.clone();
        Iterator<BigInteger> iter2 = primfn2.keySet().iterator();
        Integer oldExp = null;
        while (iter2.hasNext()) {
            BigInteger prime2 = iter2.next();
            Integer exp2 = primfn2.get(prime2);
            oldExp = result.put(prime2, exp2);
            if (oldExp != null) {
                result.put(prime2, new Integer(oldExp.intValue() + exp2.intValue()));
            }
        } // while iter2
        return result;
    } // multiply

    /** Get the rests of the prime factors (without exponent) 
     *  with respect to some divisor
     *  @param divisor compute the rests for this divisor
     *  @return a {@link Vector} of rests
     */
    public Vector modulus(int divisor) {
        Vector result = new Vector(this.size());
        Iterator<BigInteger> iter2 = this.keySet().iterator();
        int ivect = 0;
        BigInteger bdiv = BigInteger.valueOf(divisor);
        while (iter2.hasNext()) {
            BigInteger prime2 = iter2.next();
            result.set(ivect, prime2.mod(bdiv).intValue());
            ivect ++;
        } // while iter2
        return result;
    } // modulus

    /** Determines 3 factors which allow to perform a square completion properly.
     *  <em>this</em> is the {@link PrimeFactorization} of the factor of v^2.
     *  @param gcd1 the GCD of the subpolynomial for v^1
     *  @return 
     *  <ul>
     *  <li>[0] = rootv: (rootv*varName)^2 will become the lead term</li>
     *  <li>[0] = widev: multiply the whole Polynomial by this factor</li>
     *  <li>[0] = divs1: divide the cofactor of varName^1 by this divisor to get the square completion</li>
     *  </ul>
     */
    public BigInteger[] getCompletion2(BigInteger gcd1) {
        BigInteger[] result = new BigInteger[] 
                { BigInteger.ONE      // rootv
                , BigInteger.ONE      // widev
                , BigIntegerUtil.TWO  // divs1
                };
        result[1] = this.wideToPower(2);
        result[0] = (new PrimeFactorization(result[1].multiply(this.valueOf()))).root(2).valueOf();
        result[2] = result[1].multiply(BigIntegerUtil.TWO); // for power 2
        return result;
    } // getCompletion2

    /** Returns the least number which turns <em>this</em>
     *  {@link PrimeFactorization} into some power number, 
     *  or 1 if the PrimeFactorization represents already such a power
     *  @param power widen the number to this power >= 2
     *  @return 3*5 for 2^2*3*5 = 60 and power 2, 1 for 64 and power 6
     */
    public BigInteger wideToPower(int power) {
        BigInteger result = BigInteger.ONE;
        Iterator<BigInteger> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            BigInteger prime = iter.next(); // this must get an exponent of a multiple of 'power'
            int exp = this.get(prime).intValue();
            int rest = exp % power;
            if (false) {
            } else if (rest == 0) {
                // result unchanged
            } else if (rest == power - 1) {
                result = result.multiply(prime);
            } else  {
                result = result.multiply(prime.pow(power - rest));
            }
        } // while iter
        return result;
    } // wideToPower

    /** Returns a number <em>result</em> such that <em>result.pow(power) = this</em>.
     *  @param power take the <em>power</em>th root
     *  @return 3^2*5^2 for 3^4*5^4 and power 2
     */
    public PrimeFactorization root(int power) {
        PrimeFactorization result = new PrimeFactorization();
        if (this.size() > 0) { // not 0, 1
            Iterator<BigInteger> iter = this.keySet().iterator();
            while (iter.hasNext()) {
                BigInteger prime = iter.next();
                if (! prime.equals(BigInteger.ONE)) {
                    int exp = this.get(prime).intValue();
                    if (exp % power != 0) { // not divisible
                        throw new IllegalArgumentException("cannot take root(" + power + ") of " + this.toString());
                    }
                    result.put(prime, exp / power);
                } else {
                    result.put(prime, 1);
                }
            } // while iter
        } // if size
        return result;
    } // root

    /** Divides a <em>this</em> number by the maximum factor which is a power
     *  @param power the maximum factor taken to this power 
     *  must still evenly divide <em>this</em> number
     *  @return []{2^3, 2^1} for this=2^7 and power=2
     */
    // BigInteger[] pfpair = primfn.reducePowerOf(exp1); // [0] = extracted root, [1] = remaining factor

    public BigInteger[] reducePowerOf(int power) {
        BigInteger rfact = BigInteger.ONE;
        BigInteger rootv = BigInteger.ONE;
        if (this.size() > 0) { // not 0, 1
            Iterator<BigInteger> iter = this.keySet().iterator();
            while (iter.hasNext()) {
                BigInteger prime = iter.next(); // next prime factor (2)
                if (! prime.equals(BigInteger.ONE)) { // for safety only
                    int pexp = this.get(prime).intValue(); // 7
                    int equot  = pexp / power; // 3
                    if (equot > 0) {
                        rootv = rootv.multiply(equot == 1 ? prime : prime.pow(equot));
                    } 
                    int erest = pexp % power; // 1
                    if (erest > 0) {
                        rfact = rfact.multiply(erest == 1 ? prime : prime.pow(erest));
                    } 
                } // prime > 1
            } // while iter
        } // if size
        return new BigInteger[] { rootv, rfact };
    } // reducePowerOf

    /** Returns the least number which turns <em>this</em>
     *  {@link PrimeFactorization} into some power number times a binomial factor, 
     *  or 1 if the PrimeFactorization represents already such a power
     *  @param power widen the number to this power >= 2
     *  @return a BigInteger factor
     */
    public BigInteger wideToBinomialPower(int power, BigInteger binomial) {
        BigInteger result = this.wideToPower(power).multiply(binomial);
        return result;
    } // wideToBinomialPower

    /** Returns a string representation of the {@link PrimeFactorization} 
     *  @return "2^2*3*5" for 60
     */
    public String toString() {
        StringBuffer result = new StringBuffer(64);
        Iterator<BigInteger> iter = this.keySet().iterator();
        boolean first = true;
        while (iter.hasNext()) {
            BigInteger prime = iter.next();
            if (first) {
                first = false;
            } else {
                result.append(" * ");
            }
            result.append(prime.toString());
            Integer exp = this.get(prime);
            if (exp > 1) {
                result.append("^");
                result.append(Integer.toString(exp));
            } // exp > 1
        } // while iter
        return result.toString();
    } // toString

    /** Test method.
     *  The first commandline argument is factorized.
     */
    public static void main(String[] args) {
        BigInteger number  = new BigInteger(args[0]);
        BigInteger number2 = args.length > 1 ? new BigInteger(args[1]) : BigIntegerUtil.TWO;
            
        PrimeFactorization primfn1 = new PrimeFactorization(number);
        System.out.println("PrimeFactorization(" + number.toString() + ") = " + primfn1.toString());
        PrimeFactorization primfn4 = new PrimeFactorization(primfn1.wideToPower(4));
        System.out.println(".wideToPower(4) = " + primfn4.toString());
        System.out.println(".root(2) = " + primfn4.multiply(primfn1).root(2).toString());
        PrimeFactorization primfn2 = primfn1.multiply(primfn1);
        System.out.println(".multiply(same) = " + primfn2.toString());
        System.out.println(".valueOf() = " + primfn2.valueOf().toString());
        BigInteger[] rpair = primfn1.reducePowerOf(number2.intValue());
        System.out.println(primfn1.valueOf().toString() + ".reducePowerOf(" + number2.toString() + ") = " 
                + rpair[0].toString() + ", " + rpair[1].toString());
        Vector mods = primfn1.modulus(4);
        System.out.println(primfn1.valueOf().toString() + ".modulus(4) = " + mods.toString());
    } // main

} // PrimeFactorization
