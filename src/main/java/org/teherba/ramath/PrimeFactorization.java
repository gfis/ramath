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
     *  @return product of all prime powers
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
            BigInteger prime = iter.next();
            int exp = this.get(prime).intValue();
            int rest = exp % power;
            if (false) {
            } else if (rest == 0) {
                // result unchanged
            } else if (rest == power - 1) {
                result = result.multiply(prime);
            } else  {
                result = result.multiply(prime.pow(power - exp));
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
        Iterator<BigInteger> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            BigInteger prime = iter.next();
            int exp = this.get(prime).intValue();
            if (exp % power != 0) { // not divisible
            	throw new IllegalArgumentException("cannot take root(" + power + ") of " + this.toString());
            }
            result.put(prime, exp / power);
        } // while iter
        return result;
    } // root

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
                result.append("*");
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
        BigInteger number = new BigInteger(args[0]);
        PrimeFactorization primfn1 = new PrimeFactorization(number);
        System.out.println("PrimeFactorization(" + number.toString() + ") = " + primfn1.toString());
        PrimeFactorization primfn4 = new PrimeFactorization(primfn1.wideToPower(4));
        System.out.println(".wideToPower(4) = " + primfn4.toString());
        System.out.println(".root(2) = " + primfn4.multiply(primfn1).root(2).toString());
        PrimeFactorization primfn2 = primfn1.multiply(primfn1);
        System.out.println(".multiply(same) = " + primfn2.toString());
        System.out.println(".valueOf() = " + primfn2.valueOf().toString());
    } // main

} // PrimeFactorization
