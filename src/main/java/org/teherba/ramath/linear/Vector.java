/*  Vector: a simple, short vector of small numbers
 *  @(#) $Id: Vector.java 744 2011-07-26 06:29:20Z gfis $
 *  2018-01-22: more /+Type+/
 *  2017-05-28: javadoc 1.8
 *  2016-10-06: negate(), isNegative(); gcd, lcm corrected for 0
 *  2016-07-11: hasZero
 *  2015-04-05: gcd, isPowerSum repaired
 *  2015-02-24: isMonotone, isConstant
 *  2013-08-23: Serializable
 *  2013-07-27, Georg Fischer: copied from Vector
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
package org.teherba.ramath.linear;
import  org.teherba.ramath.util.IntegerExpander;
import  java.lang.Math; // abs(int)
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.Arrays;
import  java.util.regex.Matcher;
import  java.util.regex.Pattern;

/** Class Vector is used in conjunction with {@link Matrix} to
 *  implement some simple linear algebra operations
 *  on square matrices of small integer numbers (Java <em>int</em>s).
 *  Typically a Vector will have no more than 8 elements.
 *  @author Dr. Georg Fischer
 */
public class Vector implements Cloneable, Comparable<Vector>, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Vector.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

    /*-------------- class properties -----------------------------*/
    /** a one-dimensional array of small numbers */
    protected /*Type*/int[] vector;
    /** number of elements in <em>vector</em> */
    protected int vecLen;

    /*-------------- construction -----------------------------*/
    /** No-args Constructor
     */
    public Vector() {
        this.vecLen = 0;
    } // no-args Constructor

    /** Constructor for a Vector of some length
     *  @param numElems number of elements
     */
    public Vector(int numElems) {
        this.vecLen = numElems;
        this.vector = new /*Type*/int[this.vecLen];
    } // Constructor(int)

    /** Constructor for a Vector from a tuple of integers
     *  @param tuple array of integers
     */
    public Vector(/*Type*/int[] tuple) {
        this.vecLen = tuple.length;
        this.vector = new /*Type*/int[this.vecLen];
        for (int itup = 0; itup < this.vecLen; itup ++) {
            this.vector[itup] = tuple[itup];
        } // for itup
    } // Constructor(int[])

    /** Constructor for a Vector from a array of strings
     *  @param numElems number of elements
     *  @param iarg starting index in <em>args</em>
     *  @param args array of numbers as strings
     */
    public Vector(int numElems, int iarg, String[] args) {
        this(numElems);
        int ivect = 0;
        while (ivect < this.vecLen) {
            this.vector[ivect] = 0;
            try {
                this.vector[ivect] = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
            ivect ++;
        } // while ivect
    } // Constructor(3)

    /** Constructor for a Vector from an array of integers
     *  @param numElems number of elements
     *  @param values array of integers as strings
     */
    public Vector(int numElems, String[] values) {
        this(numElems, 0, values);
    } // Constructor(3)

    /** Constructor for a Vector from a vector expression
     *  @param vectExpr an array of comma or space-separated elements 
     *  (optionally in square brackets),
     *  for example "[3, 4, 5]" or "3 4 5"
     */
    public Vector(String vectExpr) {
        String[] values = vectExpr.replaceAll("[\\[\\]\\s\\,]+"," ").trim().split(" ");
        this.vecLen = values.length;
        this.vector = new /*Type*/int[this.vecLen];
        int ivect = 0;
        while (ivect < this.vecLen) {
            this.vector[ivect] = 0;
            try {
                this.vector[ivect] = Integer.parseInt(values[ivect]);
            } catch (Exception exc) {
            }
            ivect ++;
        } // while ivect
    } // Constructor(String)

    /** Deep copy of the Vector and its properties.
     *  @return independant copy of the Vector
     */
    public Vector clone() {
        Vector result = new Vector(this.vecLen);
        for (int ielem = 0; ielem < this.vecLen; ielem ++) {
            result.vector[ielem] = this.vector[ielem];
        } // for ielem
        return result;
    } // clone

    /** Return the a Vector with the same elements sorted in ascending order
     *  @return independant copy of the Vector
     */
    public Vector sort() {
        /*Type*/int[] result = new /*Type*/int[this.vector.length];
        for (int ielem = 0; ielem < this.vecLen; ielem ++) {
            result[ielem] = this.vector[ielem];
        } // for ielem
        Arrays.sort(result);
        return new Vector(result);
    } // sort

    /** Return the a Vector with the elements sorted in descending order
     *  and possibly multiplied by -1 such that the element with the
     *  greatest absolute value is first.
     *  @return independant copy of the Vector
     */
    public Vector nice() {
        /*Type*/int[] result = new /*Type*/int[this.vecLen];
        int imax = 0;
        for (int ielem = 0; ielem < this.vecLen; ielem ++) {
            result[ielem] = this.vector[ielem];
            if (Math.abs(this.vector[imax]) < Math.abs(this.vector[ielem])) {
                imax = ielem;
            }
        } // for ielem
        if (this.vector[imax] < 0) { 
            Arrays.sort(result); // max is first
            for (int ielem = 0; ielem < this.vecLen; ielem ++) {
                result[ielem] = - result[ielem];
            } // for ielem
        } else { // max > 0
            for (int ielem = 0; ielem < this.vecLen; ielem ++) {
                result[ielem] = - result[ielem];
            } // for ielem
            Arrays.sort(result); // max is first
            for (int ielem = 0; ielem < this.vecLen; ielem ++) {
                result[ielem] = - result[ielem];
            } // for ielem
        }
        return new Vector(result);
    } // nice

    /** Compute a permutation of <em>this</em> Vector
     *  @param meter definition of the permutation, result of {@link org.teherba.ramath.util.Permutator},
     *  a permutation of the numbers [0 : n-1] defining, for each element, the 
     *  position of the element of <em>this</em> Vector to be taken
     *  For example, [0,1,2,3] yields the identical vector, and [3,2,1,0] reverses the vector.
     *  @return reference to a new Vector
     */
    public Vector permute(int[] meter) {
        Vector result = new Vector(this.vecLen);
        for (int imet = 0; imet < this.vecLen; imet ++) {
            result.set(imet, this.vector[meter[imet]]);
        } // for imet
        return result;
    } // permute

    /** Extracts a Vector from a string.
     *  Only sequences of digits (optionally preceeded by a sign)
     *  are recognized, all other characters are ignored.
     *  @param line String to be splitted
     *  @return extracted Vector
     */
    public static Vector read(String line) {
        ArrayList<Integer> alist = new ArrayList<Integer>();
        // System.out.println("read args /" + line + "/");
        int temp = 0;
        try {
            Pattern pattern = Pattern.compile("[\\+\\-]?[0-9]+"); // digits with optional sign
            Matcher matcher = pattern.matcher(line);
            while (matcher.find()) {
                String part = line.substring(matcher.start(), matcher.end());
                temp = Integer.parseInt(part);
                alist.add(new Integer(temp));
            }  // while tokens
        } catch (Exception exc) {
            throw new IllegalArgumentException(exc.getMessage());
        }
        int ires = alist.size();
        Vector result = new Vector(ires --);
        while (ires >= 0) {
            result.vector[ires] = alist.get(ires);
            ires --;
        }
        return result;
    } // read

    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Returns the number of rows/columns
     *  @return a small number
     */
    public int size() {
        return this.vecLen;
    } // size

    /** Returns an element of the Vector
     *  @param icol number of the element (zero based)
     *  @return a small number
     */
    public /*Type*/int get(int icol) {
        return this.vector[icol];
    } // get

    /** Sets an element of the Vector
     *  @param icol number of the element (zero based)
     *  @param value a small number
     */
    public void set(int icol, /*Type*/int value) {
        this.vector[icol] = value;
    } // set

    /** Returns the last element of the Vector
     *  @return a small number
     */
    public /*Type*/int getLast() {
        return this.vector[vecLen - 1];
    } // getLast

    /** Gets the values of <em>this</em> {@link Vector} as an <em>int</em> array.
     *  @return int[]
     */
    public /*Type*/int[] getValues() {
        return vector;
    } // getValues

    /*-------------- lightweight derived methods -----------------------------*/

    /** Computes some power of an integer
     *  @param exp exponent
     *  @param base number to be raised to the 'exp'th power
     *  @return base**exp
     */
    public long pow(/*Type*/int base, int exp) {
        long result = 1;
        while (exp > 0) {
            result *= base;
            exp --;
        } // while exp
        return result;
    } // pow

    /** Equality of 2 Vectors
     *  @param vect2 compare <em>this</em> Vector with it
     *  @return whether the 2 vectors are equal
     */
    public boolean equals(Vector vect2) {
        boolean result = true;
        if (vect2.size() == this.vecLen) {
            int ielem = 0;
            while (ielem < this.vecLen && this.vector[ielem] == vect2.vector[ielem]) {
                ielem ++;
            } // while ielem
            result = ielem == this.vecLen; // false if the loop stopped before because of a difference
        } else {
            throw new IllegalArgumentException("cannot compare two vectors of different size " + this.vecLen);
        }
        return result;
    } // equals

    /** Gets the (first) position of an element in <em>this</em> Vector.
     *  @param elem search for this element
     *  @return index &gt;= 0 of <em>elem</em> in <em>this</em> Vector, or -1 if not found
     */
    public int indexOf(/*Type*/int elem) {
        int result = -1;
        int ielem = 0;
        while (result < 0 && ielem < this.vecLen) {
            if (elem == this.vector[ielem]) {
                result = ielem;
            }
            ielem ++;
        } // while ielem
        return result;
    } // indexOf

    /** Determines whether <em>this</em> Vector contains a specific element.
     *  @param elem search for this element
     *  @return whether <em>elem</em> is an element of <em>this</em> Vector
     */
    public boolean contains(int elem) {
        return this.indexOf(elem) >= 0;
    } // contains

    /** Computes the norm, that is the square root of 
     *  the innerproduct of the Vector with itself.
     *  @return sqrt(sum of all elements^2)
     */
    public double norm() {
        double result = 0.0;
        int ivect = 0;
        while (ivect < this.vecLen) {
            result += this.vector[ivect] * this.vector[ivect];
            ivect ++;
        } // while ivect
        return Math.sqrt(result);
    } // norm

    /** Computes the sum of absolute elements of <em>this</em> Vector
     *  @return sum of all absolute elements
     */
    public long norm2() {
        long result = 0L;
        int ivect = 0;
        while (ivect < this.vecLen) {
            result += Math.abs(this.vector[ivect]);
            ivect ++;
        } // while ivect
        return result;
    } // norm2

    /** Computes the sum of squares of the elements of <em>this</em> Vector
     *  @return sum of elements ^2
     */
    public long norm4() {
        long result = 0L;
        int ivect = 0;
        while (ivect < this.vecLen) {
            long val = this.vector[ivect];
            result += val * val;
            ivect ++;
        } // while ivect
        return result;
    } // norm4

    /** Compares 2 Vectors respectively their {@link #norm}s.
     *  @param vect2 compare <em>this</em> Vector with vect2
     *  @return this "-" vect2 as -1, 0, or +1
     */
    public int compareTo(Vector vect2) {
        int result = 0;
        if (vect2.size() == this.vecLen) {
            double normt = this .norm();
            double norm2 = vect2.norm();
            if (       normt == norm2) {
                // result = 0 already set
            } else if (normt <  norm2) {
                result = -1;
            } else if (normt >  norm2) {
                result = 1;
            } 
        } else {
            throw new IllegalArgumentException("cannot compare two vectors of different size " + this.vecLen);
        }
        return result;
    } // compareTo

    /** Whether the Vector consists of increasing numbers
     *  @return whether the Vector is of the form [0, 1, 2, 3, ...]
     */
    public boolean isMonotone() {
        boolean result = true;
        int ielem = 0;
        int lower = this.vector[ielem ++];
        while (result && ielem < this.vecLen) {
            result = lower < this.vector[ielem];
            lower  = this.vector[ielem];
            ielem ++;
        } // while ielem
        return result;
    } // isMonotone

    /** Whether the elements of the {@link Vector} are equal to their index
     *  @return whether the Vector is of the form [0, 1, 2, 3, ...]
     */
    public boolean isNatural() {
        boolean result = true;
        int ielem = 0;
        while (result && ielem < this.vecLen) {
            result = ielem == this.vector[ielem];
            ielem ++;
        } // while ielem
        return result;
    } // isNatural

    /** Whether there is any zero element in the Vector
     *  @return false if all elements are non-zero
     */
    public boolean hasZero() {
        boolean result = false;
        int ielem = 0;
        while (! result && ielem < this.vecLen) {
            result = this.vector[ielem] == 0;
            ielem ++;
        } // while ielem
        return result;
    } // hasZero

    /** Whether there is any negative element in the Vector
     *  @return false if all elements are &gt;= 0
     */
    public boolean hasNegative() {
        boolean result = false;
        int ielem = 0;
        while (! result && ielem < this.vecLen) {
            result = this.vector[ielem] < 0;
            ielem ++;
        } // while ielem
        return result;
    } // hasNegative

    /** Whether all elements of the vector are &lt;= 0
     *  @return false if there is any &gt; 0
     */
    public boolean isNegative() {
        boolean result = true;
        int ielem = 0;
        while (result && ielem < this.vecLen) {
            result = this.vector[ielem] <= 0;
            ielem ++;
        } // while ielem
        return result;
    } // isNegative

    /** Whether all elements of the Vector have the same value
     *  @param value tests for this value
     *  @return whether the Vector is of the form [value, value, ...]
     */
    public boolean isConstant(int value) {
        boolean result = true;
        int ielem = 0;
        while (result && ielem < this.vecLen) {
            result = value == this.vector[ielem];
            ielem ++;
        } // while ielem
        return result;
    } // isConstant

    /** Determines whether the Vector has a single non-zero element
     *  @return the index of that element &gt;= 0, if it exists, or &lt; otherwise
     */
    public int getSingleIndex() {
        int result = -1;
        int ielem = 0;
        while (ielem < this.vecLen) {
            if (this.vector[ielem] != 0) {
                if (result == -1) {
                    result = ielem;
                } else { // a 2nd: not valid
                    result = -2;
                }
            } // elem != 0
            ielem ++;
        } // while ielem
        return result;
    } // getSingleIndex

    //========================
    // GCD, LCM and companions
    //========================
    /** Computes the greatest common divisor (GCD) of 2 integers
     *  @param a first integer
     *  @param b second integer
     *  @return gcd(a,b)
     */
    public static int gcd(int a, int b) {
        int result = Math.abs(a);
        if (result != 1) {
            int p = result;
            int q = Math.abs(b);
            while (q != 0) {
                int temp = q;
                q = p % q;
                p = temp;
            }
            result = p;
        } // if > 1
        return Math.abs(result);
    } // gcd(a, b)

    /** Greatest common divisor of <em>this</em> Vector's elements
     *  @return an integer &gt;= 1
     */
    public int gcd() {
        return gcd(this.vector);
    } // gcd()

    /** Greatest common divisor of some array's elements
     *  @param vect the array
     *  @return an integer &gt;= 1
     */
    public static int gcd(/*Type*/int[] vect) {
        int result = Math.abs(vect[0]);
        int vlen = vect.length;
        int ielem = 1;
        while (result != 1 && ielem < vlen) {
            int p = result;
            int q = Math.abs(vect[ielem]);
            while (q != 0) {
                int temp = q;
                q = p % q;
                p = temp;
            }
            result = p;
            ielem ++;
        } // while ielem
        return Math.abs(result);
    } // gcd(array)

    /** Computes the least common multiple (LCM) of 2 integers
     *  @param a first integer
     *  @param b second integer
     *  @return lcm(a,b)
     */
    public static int lcm(int a, int b) {
        int divisor = gcd(a, b);
        int result = 0;
        if (divisor != 0) {
            result = Math.abs(a * b) / divisor;
        }
        return result;
    } // lcm(a, b)

    /** Least common multiple of <em>this</em> Vector's elements
     *  @return an integer
     */
    public int lcm() {
        return lcm(this.vector);
    } // lcm()

    /** Least common multiple of some array's elements
     *  @param vect the array
     *  @return an integer
     */
    public static int lcm(int[] vect) {
        int result = vect[0];
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
    public int extractGcd() {
        return this.extractGcd(this.vector);
    } // extractGcd()

    /** Determine the greatest common divisor of some array's elements,
     *  and divide all elements by this GCD if it is &gt; 1
     *  @param vect extract the GCD from this array
     *  @return an integer &gt;= 1
     */
    public static int extractGcd(int[] vect) {
        int result = Vector.gcd(vect);
        if (result > 1) {
            int vlen = vect.length;
            int ielem = 0;
            while (ielem < vlen) {
                vect[ielem] /= result;
                ielem ++;
            } // while ielem
        } // if gcd
        return result;
    } // extractGcd(array)

    /** Test whether all elements of the Vector are mutually coprime, and non-zero
     *  @return true if they are coprime, false otherwise
     */
    public boolean isCoprime() {
        boolean result = this.vector[0] != 0; // assume success
        int ielem = 1;
        while (result && ielem < this.vecLen) {
            result = this.vector[ielem] != 0;
            int kelem = 0;
            while (result && kelem < ielem) {
                result = gcd(this.vector[ielem], this.vector[kelem]) <= 1;
                kelem ++;
            } // while kelem
            ielem ++;
        } // while ielem
        return result;
    } // isCoprime

    /** Test whether some elements of the Vector are 0, or are
     *  equal to another element
     *  @return true if the Vector is trivial, false otherwise
     */
    public boolean isTrivial() {
        boolean result = vector[0] != 0; // the final result is negated
        int ielem = 1;
        while (result && ielem < this.vecLen) {
            result = this.vector[ielem] != 0;
            int kelem = 0;
            while (result && kelem < ielem) {
                result = this.vector[ielem] != this.vector[kelem];
                kelem ++;
            } // while kelem
            ielem ++;
        } // while ielem
        return ! result;
    } // isTrivial

    /** Test whether the last element is smaller
     *  @param vect2 compare <em>this</em> Vector with it
     *  @return whether this.vector[last] &lt; vect2.vector[last]
     */
    public boolean lessLast(Vector vect2) {
        boolean result = true;
        if (vect2.size() == this.vecLen) {
            result = Math.abs(this.vector[this.vecLen - 1]) < Math.abs(vect2.vector[this.vecLen - 1]);
        } else {
            throw new IllegalArgumentException("cannot compare two vectors of different size " + this.vecLen);
        }
        return result;
    } // lessLast

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
    public boolean isPowerSum(int exp, int left, int right) {
        long leftSum  = 0L;
        long rightSum = 0L;
        long temp = 0;
        if (left + right == this.vecLen) {
            int isum = 0;
            isum = 0;
            switch (exp) {
                case 2:
                    while (isum < left) {
                        temp = this.vector[isum ++];
                        leftSum  += temp * temp;
                    } // while < left
                    while (isum < this.vecLen) {
                        temp = this.vector[isum ++];
                        rightSum += temp * temp;
                    } // while < this.vecLen
                    break;
                case 3:
                    while (isum < left) {
                        temp = this.vector[isum ++];
                        leftSum  += temp * temp * temp;
                    } // while < left
                    while (isum < this.vecLen) {
                        temp = this.vector[isum ++];
                        rightSum += temp * temp * temp;
                    } // while < this.vecLen
                    break;
                default:
                    while (isum < left) {
                        leftSum  += pow(this.vector[isum ++], exp);
                    } // while < left
                    while (isum < this.vecLen) {
                        rightSum += pow(this.vector[isum ++], exp);
                    } // while < this.vecLen
                    break;
            } // switch exp
        } else {
            throw new IllegalArgumentException("cannot test a vector with the wrong size " + this.vecLen);
        }
        boolean result = leftSum == rightSum;
        return result;
    } // isPowerSum
    
    /** Test whether <em>this</em> Vector contains a sum of like powers.
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @return whether the sum of left elements raised to exp equals the sum
     *  of right elements raised to exp, and the sum of all elements is not zero
     */
    public boolean isNonTrivialPowerSum(int exp, int left, int right) {
        boolean result = isPowerSum(exp, left, right);
        if (result) {
            int sum = 0;
            for (int ielem = 0; ielem < this.vecLen; ielem ++) {
                sum += vector[ielem];
            } // for ielem
            result = sum != 0;
        } 
        return result;
    } // isNonTrivialPowerSum    

    /** Computes a sum of like powers from <em>this</em> Vector.
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
     *  @return sum of left elements raised to exp minus
     *  the sum of right elements raised to exp
     */
    public long powerSum(int exp, int left, int right) {
        long leftSum  = 0L;
        long rightSum = 0L;
        long temp = 0;
        if (left + right == this.vecLen) {
            int isum = 0;
            switch (exp) {
                case 2:
                    while (isum < left) {
                        temp = this.vector[isum ++];
                        leftSum  += temp * temp;
                    } // while < left
                    while (isum < this.vecLen) {
                        temp = this.vector[isum ++];
                        rightSum += temp * temp;
                    } // while < this.vecLen
                    break;
                case 3:
                    while (isum < left) {
                        temp = this.vector[isum ++];
                        leftSum  += temp * temp * temp;
                    } // while < left
                    while (isum < this.vecLen) {
                        temp = this.vector[isum ++];
                        rightSum += temp * temp * temp;
                    } // while < this.vecLen
                    break;
                default:
                    while (isum < left) {
                        leftSum  += pow(this.vector[isum ++], exp);
                    } // while < left
                    while (isum < this.vecLen) {
                        rightSum += pow(this.vector[isum ++], exp);
                    } // while < this.vecLen
                    break;
            } // switch exp
        } else {
            throw new IllegalArgumentException("cannot sum a vector with the wrong size " + this.vecLen);
        }
        return leftSum - rightSum;
    } // powerSum

    /** Returns a String representation of the Vector
     *  with 4 places per element in one line
     *  @return a 1-dimensional array of small numbers
     */
    public String toString() {
        return toString(null);
    } // toString()

    /** Returns a String representation of the Vector
     *  with comma separators and enclosed in square brackets,
     *  and with the GCD extracted and multiplied behind.
     *  @return "[1,6,8,9]*2" instead of "[2,12,16,18]"
     */
    public String toFactoredString() {
        Vector copy = this.clone();
        int gcd = extractGcd(copy.getValues());
        String result = copy.toString(",");
        if (gcd > 1) {
            result += "*" + String.valueOf(gcd);
        }
        return result;
    } // toFactoredString()

    /** Returns a String representation of the Vector
     *  @param formatSpecSpec specification of the layout: null = printf(%3d), ",", " ", " %4d"
     *  @return a one-dimensional array of small numbers
     */
    public String toString(String formatSpecSpec) {
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        if (false) {
        } else if (formatSpecSpec == null || formatSpecSpec.length() == 0) {
            for (int icol = 0; icol < this.vecLen; icol ++) {
                result.append(String.format(" %3d", this.vector[icol]));
            } // for icol
        } else if (formatSpecSpec.indexOf('%') >= 0) { // printf spec
            for (int icol = 0; icol < this.vecLen; icol ++) {
                result.append(String.format(formatSpecSpec, this.vector[icol]));
            } // for icol
        } else { 
            if (formatSpecSpec.indexOf(sep) >= 0) {
                result.append('[');
            }
            for (int icol = 0; icol < this.vecLen; icol ++) {
                if (icol > 0) {
                    result.append(sep);
                }
                result.append(String.valueOf(this.vector[icol]));
            } // for icol
            if (formatSpecSpec.indexOf(sep) >= 0) {
                result.append(']');
            }
        }
        return result.toString();
    } // toString()

    /** Returns an array with the integer elements of the Vector
     *  @return a one-dimensional array of ints
     */
    public /*Type*/int[] toArray_99() {
        return this.vector;
    } // toArray()

    /** Gives the minimum element in <em>this</em> Vector
     *  @return the minimum value
     */
    public /*Type*/int min() {
        /*Type*/int result = this.vector[0];
        int icol = 1;
        while (icol < this.vecLen) {
            if (this.vector[icol] < result) {
                result = this.vector[icol];
            }
            icol ++;
        } // while icol
        return result;
    } // min

    /** Gives the maximum element in <em>this</em> Vector
     *  @return the maximum value
     */
    public /*Type*/int max() {
        /*Type*/int result = this.vector[0];
        int icol = 1;
        while (icol < this.vecLen) {
            if (this.vector[icol] > result) {
                result = this.vector[icol];
            }
            icol ++;
        } // while icol
        return result;
    } // max

    /** Computes the sum of the absolute values of all elements
     *  @return sum of absolute values
     */
    public /*Type*/int absSum() {
        /*Type*/int result = Math.abs(this.vector[0]);
        int icol = 1;
        while (icol < this.vecLen) {
            result += Math.abs(this.vector[icol]);
            icol ++;
        } // while icol
        return result;
    } // absSum

    /** Determines the sum of the last bits of all elements
     *  @return 0 if all elements are even, 1 if exactly one element is odd, &gt; 1 otherwise
     */
    public /*Type*/int lastBitSum() {
        /*Type*/int result = 0;
        int icol = 0;
        while (icol < this.vecLen) {
            result += this.vector[icol] & 1;
            icol ++;
        } // while icol
        return result;
    } // lastBitSum

    /*-------------- arithmetic operations -------------------------*/

    /** Gets a new Vector which is a multiple of <em>this</em> Vector.
     *  @param scale multiply by this integer (maybe negative or zero)
     *  @return this * scale,
     *  that is a Vector where each element is multiplied by <em>scale</em>
     */
    public Vector multiply(int scale) {
        Vector result = new Vector(this.vecLen);
        int ielem = 0;
        while (ielem < this.vecLen) {
            result.vector[ielem] = this.vector[ielem] * scale;
            ielem ++;
        } // while ielem
        return result;
    } // multiply(int)

    /** Gets a new Vector which is the negative <em>this</em> Vector.
     *  @return a Vector where each original element is multiplied by <em>-1</em>
     */
    public Vector negate() {
        Vector result = new Vector(this.vecLen);
        int ielem = 0;
        while (ielem < this.vecLen) {
            result.vector[ielem] = - this.vector[ielem];
            ielem ++;
        } // while ielem
        return result;
    } // negate()

    /** Gets the innerproduct of two Vectors
     *  @param vect2 multiply by this Vector
     *  @return this * vect2,
     *  that is the sum of the products of corresponding elements
     */
    public /*Type*/int multiply(Vector vect2) {
        /*Type*/int result = 0;
        if (vect2.size() == this.vecLen) {
            int ielem = 0;
            while (ielem < this.vecLen) {
                result += this.vector[ielem] * vect2.vector[ielem];
                ielem ++;
            } // while ielem
        } else {
            throw new IllegalArgumentException("cannot multiply two vectors of different size " + this.vecLen);
        }
        return result;
    } // multiply(Vector)

    /** Divides the values of <em>this</em> Vector in place by a constan
     *  @param divisor divide by this constant
     *  @return this Vector with smaller absolute elements
     */
    public Vector divideBy(int divisor) {
        int ielem = 0;
        while (ielem < this.vecLen) {
            this.vector[ielem] /= divisor;
            ielem ++;
        } // while ielem
        return this;
    } // divideBy(int)

    /** Determines all Vectors which, when multiplied by <em>vect2</em>,
     *  would result in <em>this</em> Vector.
     *  @param vect2 divisor Vector
     *  @param maxDigit maximum absolute value + 1 of all matrix elements
     *  @return a list of possible "quotient" Vectors
     */
    public ArrayList<ArrayList<Vector>> divide(Vector vect2, int maxDigit) {
        ArrayList<ArrayList<Vector>> result = new ArrayList<ArrayList<Vector>>(4);
        if (vect2.size() == this.vecLen) {
            int min2 = vect2.min();
            for (int icol = 0; icol < this.vecLen; icol ++) {
                int target = this.vector[icol];
                int base = target / min2 + 1;
                base = maxDigit;
                ArrayList<Vector> subarray = new ArrayList<Vector>(64);
                IntegerExpander meter = new IntegerExpander(this.vecLen, base);
                while (meter.hasNext()) {
                    Vector vect3 = new Vector(meter.next());
                    if (debug > 0) {
                        System.out.println("## target=" + target
                                + ", vect3=" + vect3.toString(",")
                                + ", vect2=" + vect3.toString(",")
                                );
                    }
                    if (vect3.multiply(vect2) == target) {
                        subarray.add(vect3);
                    }
                } // while meter
                result.add(subarray);
            } // for icol
        } else {
            throw new IllegalArgumentException("cannot divide two vectors of different size " + this.vecLen);
        }
        return result;
    } // divide

    /** Determines all Vectors of the same length which,
     *  when multiplied by <em>this</em> Vector,
     *  would have an innerproduct of <em>target</em>.
     *  The resulting elements are all &gt;= 0.
     *  @param target desired innerproduct of the 2 Vectors
     *  @param minElem minimum element in result vectors
     *  @return an array of possible resulting "quotient" Vectors
     */
    public Vector[] divide(int target, int minElem) {
        ArrayList<Vector> result = new ArrayList<Vector>(64);
        int x0, x1, x2, x3, x4;
        int sum0, sum1, sum2, sum3, sum4;
        int maxElem = (- minElem > this.vecLen) ? - minElem : this.vecLen;
        switch (this.vecLen) {
            case 3:
                x0 = minElem;
                while (x0 <= maxElem && (sum0 = x0 * this.vector[0]) <= target) {
                    x1 = minElem;
                    while (x1 <= maxElem && (sum1 = x1 * this.vector[1] + sum0) <= target) {
                        sum2 = target - sum1;
                        x2 = sum2 / this.vector[2];
                        if (x2 <= maxElem && x2 * this.vector[2] == sum2) { // divides evenly
                            result.add(new Vector(new int[]{ x0, x1, x2     }));
                        } // if x2
                        x1 ++;
                    } // while x1
                    x0 ++;
                } // while x0
                break;
            default:
            case 4:
                x0 = minElem;
                while (x0 <= maxElem && (sum0 = x0 * this.vector[0]) <= target) {
                    x1 = minElem;
                    while (x1 <= maxElem && (sum1 = x1 * this.vector[1] + sum0) <= target) {
                        x2 = minElem;
                        while (x2 <= maxElem && (sum2 = x2 * this.vector[2] + sum1) <= target) {
                            sum3 = target - sum2;
                            x3 = sum3 / this.vector[3];
                            if (x3 <= maxElem && x3 * this.vector[3] == sum3) { // divides evenly
                                result.add(new Vector(new int[]{ x0, x1, x2, x3 }));
                            } // if x3
                            x2 ++;
                        } // while x2
                        x1 ++;
                    } // while x1
                    x0 ++;
                } // while x0
                break;
            case 5:
                x0 = minElem;
                while (x0 <= maxElem && (sum0 = x0 * this.vector[0]) <= target) {
                    x1 = minElem;
                    while (x1 <= maxElem && (sum1 = x1 * this.vector[1] + sum0) <= target) {
                        x2 = minElem;
                        while (x2 <= maxElem && (sum2 = x2 * this.vector[2] + sum1) <= target) {
                            x3 = minElem;
                            while (x3 <= maxElem && (sum3 = x3 * this.vector[3] + sum2) <= target) {
                                sum4 = target - sum3;
                                x4 = sum4 / this.vector[4];
                                if (x4 <= maxElem && x4 * this.vector[4] == sum4) { // divides evenly
                                    result.add(new Vector(new int[]{ x0, x1, x2, x3, x4 }));
                                } // if x4
                                x3 ++;
                            } // while x3
                            x2 ++;
                        } // while x2
                        x1 ++;
                    } // while x1
                    x0 ++;
                } // while x0
                break;
        } // switch this.vecLen
        return result.toArray(new Vector[0]);
    } // divide

    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        Vector vect1 = new Vector();
        Vector vect2 = new Vector("[3 ,4,5,6 ]");
        if (args.length == 0) {
            System.out.println("new Vector(\"[3 ,4,5,6 ]\") = " + vect2.toString("(,)"));
        } else { // arguments
            String opt = args[iarg ++];
            if (false) {

            } else if (opt.startsWith("-div")) {
                int dim = 4;
                try {
                    dim = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) {
                }
                vect1 = new Vector(new int[]{ 3,  4,  5    });
                vect2 = new Vector(new int[]{21, 20, 29    });
                vect1 = new Vector(new int[]{ 3,  4,  5,  6});
                vect2 = new Vector(new int[]{19, 18, 21, 28}); // 1!
                vect2 = new Vector(new int[]{30, 37, 27, 46}); // 0
                vect2 = new Vector(new int[]{ 3, 18, 10, 19}); // 0
                vect2 = new Vector(new int[]{18, 19, 21, 28}); // 0
                vect2 = new Vector(new int[]{19, 21, 18, 28}); // 0
                vect2 = new Vector(new int[]{21, 18, 19, 28}); // 1!
                vect1 = new Vector(dim, iarg, args); iarg += dim;
                vect2 = new Vector(dim, iarg, args); iarg += dim;
                ArrayList<ArrayList<Vector>> result = vect2.divide(vect1, 5);
                int combinations = 1;
                for (int ind0 = 0; ind0 < result.size(); ind0 ++) {
                    System.out.println("# possible rows[" + ind0 + "] for target " + vect2.vector[ind0]);
                    ArrayList<Vector> subarray = result.get(ind0);
                    int count = 0;
                    for (int ind1 = 0; ind1 < subarray.size(); ind1 ++) {
                        System.out.println(subarray.get(ind1).toString());
                        count ++;
                    } // for ind1
                    System.out.println("# rows in subarray[" + ind0 + "]: " + count);
                    combinations *= count;
                } // for ind0
                System.out.println("# possible combinations: " + combinations);

                Matrix cand = new Matrix(dim);
                ArrayList<Vector> arr0 = result.get(0);
                ArrayList<Vector> arr1 = result.get(1);
                ArrayList<Vector> arr2 = result.get(2);
                ArrayList<Vector> arr3 = result.get(3);
                for (int ir0 = arr0.size() - 1; ir0 >= 0; ir0 --) { Vector vec0 = arr0.get(ir0);
                for (int ir1 = arr1.size() - 1; ir1 >= 0; ir1 --) { Vector vec1 = arr1.get(ir1);
                for (int ir2 = arr2.size() - 1; ir2 >= 0; ir2 --) { Vector vec2 = arr2.get(ir2);
                for (int ir3 = arr3.size() - 1; ir3 >= 0; ir3 --) { Vector vec3 = arr3.get(ir3);
                    cand.setRow(0, vec0);
                    cand.setRow(1, vec1);
                    cand.setRow(2, vec2);
                    cand.setRow(3, vec3);
                    if (Math.abs(cand.determinant()) >= 0) {
                        int preserved = cand.preservedPowerSums(dim - 1, dim - 1, 1, vect1).size();
                        if (preserved > 1) {
                            System.out.print("# Vector-div: matrix preserved "
                                    + preserved + "\n" + cand.toString());
                        } // if preserved
                    } // if unimodular
                } // for ir3
                } // for ir2
                } // for ir1
                } // for ir0
                // -div

            } else if (opt.startsWith("-gcd")) {
                vect1 = new Vector(args[iarg ++]);
                System.out.println("Vector " + vect1.toString("(,)") + ".gcd() = " + vect1.gcd());
                int gcd = vect1.extractGcd();
                System.out.println("Vector " + vect1.toString("(,)") + ".extractGcd() = " + gcd);
                // -gcd

            } else if (opt.startsWith("-lcm")) {
                vect1 = new Vector(args[iarg ++]);
                System.out.println("Vector " + vect1.toString("(,)") + ".lcm() = " + vect1.lcm());
                // -lcm

            } else if (opt.startsWith("-pow")) {
                vect1 = new Vector(args[iarg ++]);
                System.out.println("Vector " + vect1.toString() + " is"
                        + (vect1.isPowerSum(vect1.size() - 1, vect1.size() - 1, 1) ? "" : " no")
                        + " sum of like powers");
                // -pow

            } else if (opt.startsWith("-psum")) {
                vect1 = new Vector(args[iarg ++]);
                int left = vect1.size();
                try {
                    left  = Integer.parseInt(args[iarg]);
                } catch (Exception exc) {
                }
                iarg ++;
                int right = 0;
                try {
                    right = Integer.parseInt(args[iarg]);
                } catch (Exception exc) {
                }
                iarg ++;
                System.out.println("Vector " + vect1.toString() + " is"
                        + (vect1.isPowerSum(vect1.size() - 1, left, right) ? "" : " no")
                        + " sum of like powers");
                System.out.println(vect1.toString("(,)") + ".gcd() = " + vect1.gcd());
                // -psum

            } else if (opt.startsWith("-read")) {
                String line = args[iarg ++];
                System.out.println("read " + (Vector.read(line)).toString("(,)"));
                // -read

            } // if opt
        } // more than 1 argument
    } // main

} // Vector
