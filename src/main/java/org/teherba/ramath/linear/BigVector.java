/*  BigVector: a simple, short vector of big numbers
 *  @(#) $Id: BigVector.java 744 2011-07-26 06:29:20Z gfis $
 *  2018-01-22, Georg Fischer: copied from Vector
 */
/*
 * Copyright 2018 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath.linear;
import  java.lang.Math; // abs(int)
import  java.math.BigInteger;
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.Arrays;
import  java.util.regex.Matcher;
import  java.util.regex.Pattern;

/** Class BigVector is used in conjunction with {@link Matrix} to
 *  implement some simple linear algebra operations
 *  on square matrices of small integer numbers (Java <em>int</em>s).
 *  Typically a BigVector will have no more than 8 elements.
 *  @author Dr. Georg Fischer
 */
public class BigVector extends Vector implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: BigVector.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

    /*-------------- class properties -----------------------------*/

    /** a one-dimensional array of numbers */
    protected BigInteger[] vector;
    /** number of elements in <em>vector</em> */
    // inherited: protected int vecLen;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public BigVector() {
        super();
    } // no-args Constructor

    /** Constructor for a BigVector of some length
     *  @param numElems number of elements
     */
    public BigVector(int numElems) {
        this.vecLen = numElems;
        this.vector = new BigInteger[this.vecLen];
    } // Constructor(int)

    /** Constructor for a BigVector from a tuple of integers
     *  @param tuple array of integers
     */
    public BigVector(int[] tuple) {
        this.vecLen = tuple.length;
        this.vector = new BigInteger[this.vecLen];
        for (int itup = 0; itup < this.vecLen; itup ++) {
            this.vector[itup] = BigInteger.valueOf(tuple[itup]);
        } // for itup
    } // Constructor(int[])

    /** Constructor for a BigVector from a {@link Vector} of integers
     *  @param tuple Vector
     */
    public BigVector(Vector tuple) {
        this.vecLen = tuple.size();
        this.vector = new BigInteger[this.vecLen];
        for (int itup = 0; itup < this.vecLen; itup ++) {
            this.vector[itup] = BigInteger.valueOf(tuple.get(itup));
        } // for itup
    } // Constructor(Vector)

    /** Constructor for a BigVector from a tuple of BigIntegers
     *  @param tuple array of BigIntegers
     */
    public BigVector(BigInteger[] tuple) {
        this.vecLen = tuple.length;
        this.vector = new BigInteger[this.vecLen];
        for (int itup = 0; itup < this.vecLen; itup ++) {
            this.vector[itup] = tuple[itup];
        } // for itup
    } // Constructor(BigInteger[])

    /** Constructor for a BigVector from a array of strings
     *  @param numElems number of elements
     *  @param iarg starting index in <em>args</em>
     *  @param args array of numbers as strings
     */
    public BigVector(int numElems, int iarg, String[] args) {
        this(numElems);
        int ivect = 0;
        while (ivect < this.vecLen) {
            this.vector[ivect] = BigInteger.ZERO;
            try {
                this.vector[ivect] = new BigInteger(args[iarg ++]);
            } catch (Exception exc) {
            }
            ivect ++;
        } // while ivect
    } // Constructor(3)

    /** Constructor for a BigVector from a vector expression
     *  @param vectExpr an array of comma or space-separated elements 
     *  (optionally in square brackets),
     *  for example "[3, 4, 5]" or "3 4 5"
     */
    public BigVector(String vectExpr) {
        String[] values = vectExpr.replaceAll("[\\[\\]\\s\\,]+"," ").trim().split(" ");
        this.vecLen = values.length;
        this.vector = new BigInteger[this.vecLen];
        int ivect = 0;
        while (ivect < this.vecLen) {
            this.vector[ivect] = BigInteger.ZERO;
            try {
                this.vector[ivect] = new BigInteger(values[ivect]);
            } catch (Exception exc) {
            }
            ivect ++;
        } // while ivect
    } // Constructor(String)

    // inherited: clone

    /** Compute a permutation of <em>this</em> BigVector
     *  @param meter definition of the permutation, result of {@link org.teherba.ramath.util.Permutator},
     *  a permutation of the numbers [0 : n-1] defining, for each element, the 
     *  position of the element of <em>this</em> BigVector to be taken
     *  For example, [0,1,2,3] yields the identical vector, and [3,2,1,0] reverses the vector.
     *  @return reference to a new BigVector
     */
    public BigVector permuteBig(int[] meter) {
        BigVector result = new BigVector(this.vecLen);
        for (int imet = 0; imet < this.vecLen; imet ++) {
            result.set(imet, this.vector[meter[imet]]);
        } // for imet
        return result;
    } // permuteBig


    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Returns an element of the Vector
     *  @param icol number of the element (zero based)
     *  @return a small number
     */
    public BigInteger getBig(int icol) {
        return this.vector[icol];
    } // getBig

    /** Sets an element of the BigVector
     *  @param icol number of the element (zero based)
     *  @param value a small number
     */
    public void set(int icol, BigInteger value) {
        this.vector[icol] = value;
    } // set

    /** Gets the values of <em>this</em> {@link BigVector} as an <em>BigInteger</em> array.
     *  @return array of BigIntegers
     */
    public BigInteger[] getBigValues() {
        return vector;
    } // getBigValues

	// inherited: size
    /*-------------- lightweight derived methods -----------------------------*/

    /** Computes the sum of squares of the elements of <em>this</em> BigVector
     *  @return sum of elements ^2
     */
    public BigInteger normBig4() {
        BigInteger result = BigInteger.ZERO;
        int ivect = 0;
        while (ivect < this.vecLen) {
            result = result.add(this.vector[ivect].multiply(this.vector[ivect]));
            ivect ++;
        } // while ivect
        return result;
    } // normBig4

    /** Equality of 2 BigVectors
     *  @param vect2 compare <em>this</em> BigVector with it
     *  @return whether the 2 vectors are equal
     */
    public boolean equals(BigVector vect2) {
        boolean result = true;
        if (vect2.size() == this.vecLen) {
            int ielem = 0;
            while (ielem < this.vecLen && this.vector[ielem].equals(vect2.vector[ielem])) {
                ielem ++;
            } // while ielem
            result = ielem == this.vecLen; // false if the loop stopped before because of a difference
        } else {
            throw new IllegalArgumentException("cannot compare two vectors of different size " + this.vecLen);
        }
        return result;
    } // equals

    /** Whether there is any zero element in the BigVector
     *  @return false if all elements are non-zero
     */
    @Override
    public boolean hasZero() {
        boolean result = false;
        int ielem = 0;
        while (! result && ielem < this.vecLen) {
            result = this.vector[ielem].equals(BigInteger.ZERO);
            ielem ++;
        } // while ielem
        return result;
    } // hasZero

    /** Gets the (first) position of an element in <em>this</em> BigVector.
     *  @param elem search for this element
     *  @return index &gt;= 0 of <em>elem</em> in <em>this</em> BigVector, or -1 if not found
     */
    public int indexOf(BigInteger elem) {
        int result = -1;
        int ielem = 0;
        while (result < 0 && ielem < this.vecLen) {
            if (elem.equals(this.vector[ielem])) {
                result = ielem;
            }
            ielem ++;
        } // while ielem
        return result;
    } // indexOf

    // inherited: contains

    /** Returns a String representation of the BigVector
     *  @return a one-dimensional array of BigIntegers
     */
    @Override
    public String toString() {
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        int icol = 0;
        while (icol < this.vecLen) {
            if (icol > 0) {
                result.append(sep);
            }
            result.append(this.vector[icol].toString());
            icol ++;
        } // while icol
        result.append(']');
        return result.toString();
    } // toString()

    //========================
    // GCD, LCM and companions
    //========================
    /** Greatest common divisor of <em>this</em> BigVector's elements
     *  @return a BigInteger &gt;= 1
     */
    public BigInteger gcdBig() {
        return gcd(this.vector);
    } // gcdBig()

    /** Greatest common divisor of some array's elements
     *  @param vect the array
     *  @return an integer &gt;= 1
     */
    public static BigInteger gcd(BigInteger[] vect) {
        BigInteger result = vect[0].abs();
        int vlen = vect.length;
        int ielem = 1;
        while (! result.equals(BigInteger.ONE) && ielem < vlen) {
            BigInteger p = result;
            BigInteger q = vect[ielem].abs();
            while (! q.equals(BigInteger.ZERO)) {
                BigInteger[] temp = p.divideAndRemainder(q);
                p = q; 
                q = temp[1]; // the rest
            }
            result = p;
            ielem ++;
        } // while ielem
        return result.abs();
    } // gcd(array)

    /** Computes the least common multiple (LCM) of 2 integers
     *  @param a first integer
     *  @param b second integer
     *  @return lcm(a,b)
     */
    public static BigInteger lcm(BigInteger a, BigInteger b) {
        BigInteger divisor = a.gcd(b);
        BigInteger result = BigInteger.ZERO;
        if (! divisor.equals(BigInteger.ZERO)) {
            result = a.multiply(b).abs().divide(divisor);
        }
        return result;
    } // lcm(a, b)

    /** Least common multiple of <em>this</em> Vector's elements
     *  @return an integer
     */
    public BigInteger lcmBig() {
        return lcm(this.vector);
    } // lcmBig()

    /** Least common multiple of some array's elements
     *  @param vect the array
     *  @return an integer
     */
    public static BigInteger lcm(BigInteger[] vect) {
        BigInteger result = vect[0];
        int vlen = vect.length;
        int ielem = 1;
        while (ielem < vlen) {
            result = lcm(result, vect[ielem]);
            ielem ++;
        } // while ielem
        return result;
    } // lcm(array)

    /** Determine the greatest common divisor of this Vector's elements,
     *  and divide all elements by this gcd if it is &gt; 1
     *  @return an integer &gt;= 1
     */
    public BigInteger extractGcdBig() {
        return this.extractGcdBig(this.vector);
    } // extractGcdBig()

    /** Determine the greatest common divisor of some array's elements,
     *  and divide all elements by this GCD if it is &gt; 1
     *  @param vect extract the GCD from this array
     *  @return an integer &gt;= 1
     */
    public static BigInteger extractGcdBig(BigInteger[] vect) {
        BigInteger result = BigVector.gcd(vect);
        if (result.compareTo(BigInteger.ONE) > 0) {
            int vlen = vect.length;
            int ielem = 0;
            while (ielem < vlen) {
                vect[ielem] = vect[ielem].divide(result);
                ielem ++;
            } // while ielem
        } // if gcd
        return result;
    } // extractGcdBig(array)

    /*-------------- arithmetic operations -------------------------*/

    /** Gets a new BigVector which is a multiple of <em>this</em> BigVector.
     *  @param scale multiply by this integer (maybe negative or zero)
     *  @return this * scale,
     *  that is a BigVector where each element is multiplied by <em>scale</em>
     */
   public BigVector multiply(int scale) {
        BigVector result = new BigVector(this.vecLen);
        int ielem = 0;
        while (ielem < this.vecLen) {
            result.vector[ielem] = this.vector[ielem].multiply(BigInteger.valueOf(scale));
            ielem ++;
        } // while ielem
        return result;
    } // multiply(int)

    /** Gets a new BigVector which is the negative <em>this</em> BigVector.
     *  @return a BigVector where each original element is multiplied by <em>-1</em>
     */
    public BigVector negate() {
        BigVector result = new BigVector(this.vecLen);
        int ielem = 0;
        while (ielem < this.vecLen) {
            result.vector[ielem] = this.vector[ielem].negate();
            ielem ++;
        } // while ielem
        return result;
    } // negate()

    /** Test whether <em>this</em> Vector contains a sum of like powers.
     *  Usual combinations of the parameters are:
     <pre>
        exp=2 left=2 right=1
        exp=3 left=3 right=1
        exp=3 left=2 right=2
        exp=4 left=3 right=1
        exp=4 left=4 right=1
     </pre>
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @return whether the sum of left elements raised to exp equals the sum
     *  of right elements raised to exp
     */
    @Override
    public boolean isPowerSum(int exp, int left, int right) {
        BigInteger leftSum  = BigInteger.ZERO;
        BigInteger rightSum = BigInteger.ZERO;
        int isum = 0;
        while (isum < left) {
            leftSum  = leftSum .add(this.vector[isum ++].pow(exp));
        } // while < left
        while (isum < this.vecLen) {
            rightSum = rightSum.add(this.vector[isum ++].pow(exp));
        } // while < this.vecLen
        return leftSum.equals(rightSum);
    } // isPowerSum

    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        BigVector vect1 = new BigVector();
        BigVector vect2 = new BigVector("[3 ,4,5,6 ]");
        if (args.length == 0) {
        } else { // arguments
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.startsWith("-div")) {
            } else if (opt.startsWith("-pow")) {
            } else if (opt.startsWith("-psum")) {
            } else if (opt.startsWith("-read")) {
            } // if opt
        } // more than 1 argument
    } // main

} // BigVector
