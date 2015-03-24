/*  Vector: a simple, short vector of small numbers
 *  @(#) $Id: Vector.java 744 2011-07-26 06:29:20Z gfis $
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
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.Arrays;
import  java.util.regex.Matcher;
import  java.util.regex.Pattern;

/** Class Vector is used in conjunction with {@link Matrix} to
 *  implement some simple linear algebra operations
 *  on square matrices of small integer numbers (Java <em>byte</em>s).
 *  Typically a Vector will have no more than 8 elements.
 *  @author Dr. Georg Fischer
 */
public class Vector implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Vector.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;
    /** System dependant newline character sequence */
    protected static String newline = System.getProperty("line.separator");

    /*-------------- class properties -----------------------------*/

    /** a one-dimensional array of small numbers */
    protected /*Type*/int[] vector;
    /** number of elements in <em>vector</em> */
    protected int vecLen;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public Vector() {
        vecLen = 0;
    } // no-args Constructor

    /** Constructor for a Vector of some length
     *  @param numElems number of elements
     */
    public Vector(int numElems) {
        vecLen = numElems;
        vector = new /*Type*/int[vecLen];
    } // Constructor(int)

    /** Constructor for a Vector from a tuple of integers
     *  @param tuple array of integers
     */
    public Vector(int[] tuple) {
        vecLen = tuple.length;
        vector = new /*Type*/int[vecLen];
        for (int itup = 0; itup < vecLen; itup ++) {
            this.vector[itup] = (/*Type*/int) tuple[itup];
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
        while (ivect < vecLen) {
            vector[ivect] = 0;
            try {
                vector[ivect] = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
            ivect ++;
        } // while ivect
    } // Constructor(3)

    /** Deep copy of the Vector and its properties.
     *  @return independant copy of the Vector
     */
    public Vector clone() {
        Vector result = new Vector(vecLen);
        for (int ielem = 0; ielem < vecLen; ielem ++) {
            result.vector[ielem] = vector[ielem];
        } // for ielem
        return result;
    } // clone

    /** Return the a Vector with the same elements sorted in ascending order
     *  @return independant copy of the Vector
     */
    public Vector sort() {
        int[] result = new int[vector.length];
        for (int ielem = 0; ielem < vecLen; ielem ++) {
            result[ielem] = vector[ielem];
        } // for ielem
        Arrays.sort(result);
        return new Vector(result);
    } // sort

    /** Extracts a Vector from a string.
     *  Only sequences of digits (optionally preceeded by a sign)
     *  are recognized, all other characters are ignored.
     *  @param line String to be splitted
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
        return vecLen;
    } // size

    /** Returns an element of the Vector
     *  @param icol number of the element (zero based)
     *  @return a small number
     */
    public /*Type*/int get(int icol) {
        return vector[icol];
    } // get

    /** Sets an element of the Vector
     *  @param icol number of the element (zero based)
     *  @param value a small number
     */
    public void set(int icol, int value) {
        vector[icol] = value;
    } // set

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
        if (vect2.size() == vecLen) {
            int ielem = 0;
            while (ielem < vecLen && this.vector[ielem] == vect2.vector[ielem]) {
                ielem ++;
            } // while ielem
            result = ielem == vecLen; // false if the loop stopped before because of a difference
        } else {
            throw new IllegalArgumentException("cannot compare two vectors of different size " + vecLen);
        }
        return result;
    } // equals

    /** Whether the Vector consists of increasing natural numbers starting at 0
     *  @return whether the Vector is of the form [0, 1, 2, 3, ...]
     */
    public boolean isMonotone() {
        boolean result = true;
        int ielem = 0;
        while (result && ielem < vecLen) {
            result = ielem == this.vector[ielem];
            ielem ++;
        } // while ielem
        return result;
    } // isMonotone

    /** Whether all elements of the Vector have the same value
     *  @param value tests for this value
     *  @return whether the Vector is of the form [value, value, ...]
     */
    public boolean isConstant(int value) {
        boolean result = true;
        int ielem = 0;
        while (result && ielem < vecLen) {
            result = value == this.vector[ielem];
            ielem ++;
        } // while ielem
        return result;
    } // isConstant

    //====================
    // GCD and companions
    //====================
    /** Computes the greatest common divisor (GCD) of 2 integers
     *  @param a first integer
     *  @param b second integer
     *  @return gcd(a,b)
     */
    public static int gcd(int a, int b) {
        int result = 1;
    /* the algorithm exchanges itself
        if (Math.abs(b) > Math.abs(a)) { // exchange
            int temp = b; b = a; a = temp;
        }
    */
        if (b == 0) {
            result = a;
        } else {
            int rest = a % b;
            while (rest != 0) {
                a = b;
                b = rest;
                rest = a % b;
            } // while
            result = b;
        } // b != 0
        return Math.abs(result);
    } // gcd(a, b)

    /** Greatest common divisor of this Vector's elements
     *  @return an integer >= 1
     */
    public int gcd() {
        return gcd(this.vector);
    } // gcd()

    /** Greatest common divisor of some array's elements
     *  @param vector the array
     *  @return an integer >= 1
     */
    public static int gcd(int[] vector) {
        int result = Math.abs(vector[0]);
        int vecLen = vector.length;
        int ielem = 1;
        while (result > 1 && ielem < vecLen) {
            int p = result;
            int q = vector[ielem];
            while (q != 0) {
                int temp = q;
                q = p % q;
                p = temp;
            }
            result = p;
            ielem ++;
        } // while ielem
        if (result == 0) {
            result = 1;
        }
        return Math.abs(result);
    } // gcd(array)

    /** Determine the greatest common divisor of this Vector's elements,
     *  and divide all elements by this gcd if it is > 1
     *  @return an integer >= 1
     */
    public int extractGcd() {
        return this.extractGcd(this.vector);
    } // extractGcd()

    /** Determine the greatest common divisor of some array's elements,
     *  and divide all elements by this gcd if it is > 1
     *  @return an integer >= 1
     */
    public static int extractGcd(int[] vector) {
        int result = Vector.gcd(vector);
        if (result > 1) {
            int vecLen = vector.length;
            int ielem = 0;
            while (ielem < vecLen) {
                vector[ielem] /= result;
                ielem ++;
            } // while ielem
        } // if gcd
        return result;
    } // extractGcd(array)

    /** Test whether all elements of the Vector are mutually coprime, and non-zero
     *  @return true if they are coprime, false otherwise
     */
    public boolean isCoprime() {
        boolean result = vector[0] != 0; // assume success
        int ielem = 1;
        while (result && ielem < vecLen) {
            result = vector[ielem] != 0;
            int kelem = 0;
            while (result && kelem < ielem) {
                result = gcd(vector[ielem], vector[kelem]) <= 1;
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
        while (result && ielem < vecLen) {
            result = vector[ielem] != 0;
            int kelem = 0;
            while (result && kelem < ielem) {
                result = vector[ielem] != vector[kelem];
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
        if (vect2.size() == vecLen) {
            result = Math.abs(this.vector[vecLen - 1]) < Math.abs(vect2.vector[vecLen - 1]);
        } else {
            throw new IllegalArgumentException("cannot compare two vectors of different size " + vecLen);
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
        if (left + right == vecLen) { 
        	// check for trivial case: 2 elements are equal
            int isum = 0;
            for (isum = left; isum < vecLen; isum ++) {
                for (int lsum = 0; lsum < left; lsum ++) {
                    if (vector[isum] == vector[lsum]) {
                        return false;
                    }
                } // for lsum
            } // for isum
            if (Math.abs(gcd()) > 1) { // common gcd: another trival case
                return false;
            }
            isum = 0;
            switch (exp) {
                case 2:
                    while (isum < left) {
                        temp = vector[isum];
                        leftSum  += temp * temp;
                        isum ++;
                    } // while < left
                    while (isum < vecLen) {
                        temp = vector[isum];
                        rightSum += temp * temp;
                        isum ++;
                    } // while < vecLen
                    break;
                case 3:
                    while (isum < left) {
                        temp = vector[isum];
                        leftSum  += temp * temp * temp;
                        isum ++;
                    } // while < left
                    while (isum < vecLen) {
                        temp = vector[isum];
                        rightSum += temp * temp * temp;
                        isum ++;
                    } // while < vecLen
                    break;
                default:
                    while (isum < left) {
                        leftSum += pow(vector[isum], exp);
                        isum ++;
                    } // while < left
                    while (isum < vecLen) {
                        rightSum += pow(vector[isum], exp);
                        isum ++;
                    } // while < vecLen
                    break;
            } // switch exp
        } else {
            throw new IllegalArgumentException("cannot test a vector with the wrong size " + vecLen);
        }
        return leftSum == rightSum;
    } // isPowerSum

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
        if (left + right == vecLen) { 
            int isum = 0;
            switch (exp) {
                case 2:
                    while (isum < left) {
                        temp = vector[isum];
                        leftSum  += temp * temp;
                        isum ++;
                    } // while < left
                    while (isum < vecLen) {
                        temp = vector[isum];
                        rightSum += temp * temp;
                        isum ++;
                    } // while < vecLen
                    break;
                case 3:
                    while (isum < left) {
                        temp = vector[isum];
                        leftSum  += temp * temp * temp;
                        isum ++;
                    } // while < left
                    while (isum < vecLen) {
                        temp = vector[isum];
                        rightSum += temp * temp * temp;
                        isum ++;
                    } // while < vecLen
                    break;
                default:
                    while (isum < left) {
                        leftSum += pow(vector[isum], exp);
                        isum ++;
                    } // while < left
                    while (isum < vecLen) {
                        rightSum += pow(vector[isum], exp);
                        isum ++;
                    } // while < vecLen
                    break;
            } // switch exp
        } else {
            throw new IllegalArgumentException("cannot sum a vector with the wrong size " + vecLen);
        }
        return leftSum - rightSum;
    } // powerSum

    /** Returns a string representation of the vector
     *  with 4 places per element in one line
     *  @return a 1-dimensional array of small numbers
     */
    public String toString() {
        StringBuffer result = new StringBuffer(256);
        for (int ielem = 0; ielem < vecLen; ielem ++) {
            result.append(String.format(" %3d", vector[ielem]));
        } // for ielem
        return result.toString();
    } // toString()

    /** Returns a string representation of the vector
     *  @param format specification of the layout: null = printf(%3d), ",", " "
     *  @return a one-dimensional array of small numbers
     */
    public String toString(String format) {
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        if (format != null && format.length() > 0) {
            if (format.indexOf(sep) >= 0) {
                result.append('[');
            }
            for (int icol = 0; icol < vecLen; icol ++) {
                if (icol > 0) {
                    result.append(sep);
                }
                result.append(String.valueOf(vector[icol]));
            } // for icol
            if (format.indexOf(sep) >= 0) {
                result.append(']');
            }
        } else {
            for (int icol = 0; icol < vecLen; icol ++) {
                // result.append(' ');
                result.append(String.format(" %3d", vector[icol]));
            } // for icol
            result.append(newline);
        }
        return result.toString();
    } // toString()

    /** Returns an array with the integer elements of the Vector
     *  @return a one-dimensional array of ints
     */
    public int[] toArray() {
        return this.vector;
    } // toArray()

    /** Gives the minimum element in <em>this</em> Vector
     *  @return the minimum value
     */
    public int min() {
        int result = vector[0];
        int icol = 1;
        while (icol < vecLen) {
            if (vector[icol] < result) {
                result = vector[icol];
            }
            icol ++;
        } // while icol
        return result;
    } // min

    /** Gives the maximum element in <em>this</em> Vector
     *  @return the maximum value
     */
    public int max() {
        int result = vector[0];
        int icol = 1;
        while (icol < vecLen) {
            if (vector[icol] > result) {
                result = vector[icol];
            }
            icol ++;
        } // while icol
        return result;
    } // max

    /** Computes the sum of the absolute values of all elements
     *  @return sum of absolute values
     */
    public int absSum() {
        int result = Math.abs(vector[0]);
        int icol = 1;
        while (icol < vecLen) {
            result += Math.abs(vector[icol]);
            icol ++;
        } // while icol
        return result;
    } // absSum

    /** Determines the sum of the last bits of all elements
     *  @return 0 if all elements are even, 1 if exactly one element is odd, > 1 otherwise
     */
    public int lastBitSum() {
        int result = 0;
        int icol = 0;
        while (icol < vecLen) {
            result += vector[icol] & 1;
            icol ++;
        } // while icol
        return result;
    } // lastBitSum

    /*-------------- arithmetic operations -------------------------*/

    /** Gets the innerproduct of two Vectors
     *  @param vect2 multiply by this Vector
     *  @return this * vect2,
     *  that is the sum of the products of corresponding elements
     */
    public int multiply(Vector vect2) {
        int result = 0;
        if (vect2.size() == vecLen) {
            int ielem = 0;
            while (ielem < vecLen) {
                result += this.vector[ielem] * vect2.vector[ielem];
                ielem ++;
            } // while ielem
        } else {
            throw new IllegalArgumentException("cannot multiply two vectors of different size " + vecLen);
        }
        return result;
    } // multiply

    /** Divides the values of <em>this</em> Vector in place by a constant
     *  @param divisor divide by this constant
     *  @return this Vector with smaller absolute elements
     */
    public Vector divideBy(int divisor) {
        int ielem = 0;
        while (ielem < vecLen) {
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
        if (vect2.size() == vecLen) {
            int min2 = vect2.min();
            for (int icol = 0; icol < vecLen; icol ++) {
                int target = this.vector[icol];
                int base = target / min2 + 1;
                base = maxDigit;
                ArrayList<Vector> subarray = new ArrayList<Vector>(64);
                IntegerExpander meter = new IntegerExpander(vecLen, base);
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
            throw new IllegalArgumentException("cannot divide two vectors of different size " + vecLen);
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
        int maxElem = (- minElem > vecLen) ? - minElem : vecLen;
        switch (vecLen) {
            case 3:
                x0 = minElem;
                while (x0 <= maxElem && (sum0 = x0 * vector[0]) <= target) {
                    x1 = minElem;
                    while (x1 <= maxElem && (sum1 = x1 * vector[1] + sum0) <= target) {
                        sum2 = target - sum1;
                        x2 = sum2 / vector[2];
                        if (x2 <= maxElem && x2 * vector[2] == sum2) { // divides evenly
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
                while (x0 <= maxElem && (sum0 = x0 * vector[0]) <= target) {
                    x1 = minElem;
                    while (x1 <= maxElem && (sum1 = x1 * vector[1] + sum0) <= target) {
                        x2 = minElem;
                        while (x2 <= maxElem && (sum2 = x2 * vector[2] + sum1) <= target) {
                            sum3 = target - sum2;
                            x3 = sum3 / vector[3];
                            if (x3 <= maxElem && x3 * vector[3] == sum3) { // divides evenly
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
                while (x0 <= maxElem && (sum0 = x0 * vector[0]) <= target) {
                    x1 = minElem;
                    while (x1 <= maxElem && (sum1 = x1 * vector[1] + sum0) <= target) {
                        x2 = minElem;
                        while (x2 <= maxElem && (sum2 = x2 * vector[2] + sum1) <= target) {
                            x3 = minElem;
                            while (x3 <= maxElem && (sum3 = x3 * vector[3] + sum2) <= target) {
                                sum4 = target - sum3;
                                x4 = sum4 / vector[4];
                                if (x4 <= maxElem && x4 * vector[4] == sum4) { // divides evenly
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
        } // switch vecLen
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
        Vector vect2 = new Vector();
        if (false) {
        } else { // arguments
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.startsWith("-gcd")) {
                int alen = args.length - iarg;
                vect1 = new Vector(alen);
                int ivect = 0;
                while (iarg < args.length) {
                    vect1.vector[ivect] = (/*Type*/int) 0;
                    try {
                        vect1.vector[ivect] = (/*Type*/int) Integer.parseInt(args[iarg]);
                    } catch (Exception exc) {
                    }
                    iarg ++;
                    ivect ++;
                } // while iarg
                System.out.println("Vector " + vect1.toString("(,)") + ".gcd() = " + vect1.gcd());
                int gcd = vect1.extractGcd();
                System.out.println("Vector " + vect1.toString("(,)") + ".extractGcd() = " + gcd);
                // -gcd

            } else if (opt.startsWith("-pow")) {
                int alen = args.length - iarg;
                vect1 = new Vector(alen);
                int ivect = 0;
                while (iarg < args.length) {
                    vect1.vector[ivect] = (/*Type*/int) 0;
                    try {
                        vect1.vector[ivect] = (/*Type*/int) Integer.parseInt(args[iarg]);
                    } catch (Exception exc) {
                    }
                    iarg ++;
                    ivect ++;
                } // while iarg
                System.out.println("Vector " + vect1.toString() + " is"
                        + (vect1.isPowerSum(vect1.size() - 1, vect1.size() - 1, 1) ? "" : " no")
                        + " sum of like powers");
                // -pow

            } else if (opt.startsWith("-read")) {
                String line = args[iarg ++];
                System.out.println("read " + (Vector.read(line)).toString("(,)"));
                // -read

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

            } // if opt
        } // more than 1 argument
    } // main

} // Vector
