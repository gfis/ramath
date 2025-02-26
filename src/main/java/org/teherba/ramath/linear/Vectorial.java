/*  Vectorial: a simple, short, generic vector of numbers of some type
 *  @(#) $Id: Vectorial.java 744 2011-07-26 06:29:20Z gfis $
 *  2020-03-17, Georg Fischer: copied from and generalizes ramath.linear.Vector/BigVector/RationalVector
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
package org.teherba.ramath.linear;
import  org.teherba.ramath.BigNumber;
import  org.teherba.ramath.util.IntegerExpander;
import  java.lang.Math; // abs(int)
import  java.math.BigInteger; // abs(int)
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.Arrays;
import  java.util.regex.Matcher;
import  java.util.regex.Pattern;

/** Class Vectorial represents a vector of coefficients for a univariate polynomial.
 *  The indices of the vector (0, 1, 2, etc.) correspond with the
 *  exponents of the polynomial's variable (x).
 *  Arithmetic operations and housekeeping methods for such vectors are defined
 *  independantly from the underlaying number type (BigNumber, BigRational).
 *  Both [0] and an empty vectorial represent a zero.
 *  @author Dr. Georg Fischer
 */
public class Vectorial<BN extends BigNumber> implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Vectorial.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private static int debug = 0;

    /*-------------- class properties -----------------------------*/
    /** a one-dimensional array of small numbers */
    protected ArrayList<BN> vector;
    /** number of elements in <em>vectorial</em> */
    protected int vecLen;

    /*-------------- construction -----------------------------*/
    /** No-args Constructor
     */
    public Vectorial() {
        vector = new ArrayList<BN>(); // capacity 10
        vecLen = 0;
    } // no-args Constructor

    /** Constructor for a Vectorial of some length
     *  @param numElems number of elements
     */
    public Vectorial(int numElems) {
        vector = new ArrayList<BN>(numElems);
        vecLen = numElems;
    } // Constructor(int)

    /** Extracts a Vectorial from a string, relying on the
     *  method <em>BN.valueOf(String)</em>.
     *  @param vectExpr a comma separated of vector elements
     *  consisting of digits and "+", "-" or "/".
     */
    public Vectorial(String vectExpr) {
        String [] terms = vectExpr
                .replaceAll("[^\\d\\+\\-\\/\\,\\;]", "") // remove spaces, brackets etc.
                .split("[\\,\\;]");
        vecLen = terms.length;
        vector = new ArrayList<BN>(vecLen);
        for (int ires = 0; ires < vecLen; ires ++) {
            vector.add((BN) (new BigNumber(terms[ires])));
        } // for ires
    } // Constructor(String)

    /** Deep copy of the Vectorial and its properties.
     *  @return independant copy of the Vectorial
     */
    public Vectorial<BN> clone() {
        Vectorial<BN> result = new Vectorial<BN>(vecLen);
        for (int ielem = 0; ielem < vecLen; ielem ++) {
            result.vector.add(get(ielem));
        } // for ielem
        return result;
    } // clone

    /** Return the a Vectorial with the same elements sorted in ascending order
     *  @return independant copy of the Vectorial
     */
    public Vectorial<BN> sort() {
        Vectorial<BN> result = new Vectorial<BN>(vecLen);
        result.vector.sort(null); // natural order
        return result;
    } // sort

    /** Compute a permutation of <em>this</em> Vectorial
     *  @param meter definition of the permutation, result of {@link org.teherba.ramath.util.Permutator},
     *  a permutation of the numbers [0 : n-1] defining, for each element, the
     *  position of the element of <em>this</em> Vectorial to be taken
     *  For example, [0,1,2,3] yields the identical vectorial, and [3,2,1,0] reverses the vectorial.
     *  @return reference to a new Vectorial
     */
    public Vectorial<BN> permute(int[] meter) {
        Vectorial<BN> result = new Vectorial<BN>(vecLen);
        for (int imet = 0; imet < vecLen; imet ++) {
            result.vector.add(get(meter[imet]));
        } // for imet
        return result;
    } // permute

   /*-------------- bean methods, setters and getters -----------------------------*/

    /** Returns the number of elements / coefficients
     *  @return a small number
     */
    public int size() {
        return vecLen;
    } // size

    /** Returns an element of the Vectorial
     *  @param icol number of the element (zero based)
     *  @return a number
     */
    public BN get(int icol) {
        return vector.get(icol);
    } // get

    /** Sets an element of the Vectorial
     *  @param icol number of the element (zero based)
     *  @param value a number
     */
    public void set(int icol, BN value) {
        vector.set(icol, value);
    } // set

    /** Returns the element representing the highest exponent
     *  @return a number
     */
    public BN getHighest() {
        return get(vecLen - 1);
    } // getHighest

    /** Throw element 0, Shift all elements to index - 1 in place,
     *  and reduce the size by one.
     */
    public void shiftDown() {
        for (int ielem = 1; ielem < vecLen; ielem ++) {
            vector.set(ielem - 1, vector.get(ielem));
        } // for ielem
        vecLen --;
        vector.remove(vecLen);
    } // shiftDown

    /*-------------- lightweight derived methods -----------------------------*/

    /** Equality of 2 Vectors
     *  @param vect2 compare <em>this</em> Vectorial with it
     *  @return whether the 2 vectors are equal
     */
    public boolean equals(Vectorial vect2) {
        boolean result = true;
        if (vect2.size() == vecLen) {
            int ielem = 0;
            while (ielem < vecLen && vector.get(ielem).equals(vect2.vector.get(ielem))) {
                ielem ++;
            } // while ielem
            result = ielem == vecLen; // false if the loop stopped before because of a difference
        } else {
            throw new IllegalArgumentException("cannot compare two vectors of different size " + vecLen);
        }
        return result;
    } // equals

    /** Gets the (first) position of an element in <em>this</em> Vectorial.
     *  @param elem search for this element
     *  @return index &gt;= 0 of <em>elem</em> in <em>this</em> Vectorial, or -1 if not found
     */
    public int indexOf(BN elem) {
        int result = -1;
        int ielem = 0;
        while (result < 0 && ielem < vecLen) {
            if (elem == vector.get(ielem)) {
                result = ielem;
            }
            ielem ++;
        } // while ielem
        return result;
    } // indexOf

    /** Determines whether <em>this</em> Vectorial contains a specific element.
     *  @param elem search for this element
     *  @return whether <em>elem</em> is an element of <em>this</em> Vectorial
     */
    public boolean contains(BN elem) {
        return indexOf(elem) >= 0;
    } // contains

    /** Whether the Vectorial consists of increasing numbers
     *  @return whether the Vectorial is of the form [0, 1, 2, 3, ...]
     */
    public boolean isMonotone() {
        boolean result = true;
        int ielem = 0;
        BN lower = get(ielem ++);
        while (result && ielem < vecLen) {
            result = lower.compareTo(get(ielem)) < 0;
            lower  = get(ielem);
            ielem ++;
        } // while ielem
        return result;
    } // isMonotone

    /** Whether there is any zero element in the Vectorial
     *  @return false if all elements are non-zero
     */
    public boolean hasZero() {
        boolean result = false;
        int ielem = 0;
        while (! result && ielem < vecLen) {
            result = get(ielem).compareTo(BigInteger.ZERO) == 0;
            ielem ++;
        } // while ielem
        return result;
    } // hasZero

    /** Whether Whether <em>this</em> Vectorial consists of positive elements only
     *  @return false if all elements are &gt;= 0
     */
    public boolean isPositive() {
        boolean result = false;
        int ielem = 0;
        while (! result && ielem < vecLen) {
            result = get(ielem).compareTo(BigInteger.ZERO) < 0;
            ielem ++;
        } // while ielem
        return result;
    } // hasNegative

    /** Whether <em>this</em> Vectorial is empty or consists of a single constant zero.
     *  @return true if zero
     */
    public boolean isZero() {
        int len = size();
        return len == 0 || (len == 1 && get(0).compareTo(BigInteger.ZERO) == 0);
    } // isZero

    /** Whether all elements of the vectorial are &lt;= 0
     *  @return false if there is any &gt; 0
     */
    public boolean isNegative() {
        boolean result = true;
        int ielem = 0;
        while (result && ielem < vecLen) {
            result = get(ielem).compareTo(BigInteger.ZERO) <= 0;
            ielem ++;
        } // while ielem
        return result;
    } // isNegative

    /** Whether all elements of the Vectorial have the same value
     *  @param value tests for this value
     *  @return whether the Vectorial is of the form [value, value, ...]
     */
    public boolean isConstant(BN value) {
        boolean result = true;
        int ielem = 0;
        while (result && ielem < vecLen) {
            result = get(ielem).compareTo(value) == 0;
            ielem ++;
        } // while ielem
        return result;
    } // isConstant

    /** Test whether some elements of the Vectorial are 0, or are
     *  equal to another element
     *  @return true if the Vectorial is trivial, false otherwise
     */
    public boolean isTrivial() {
        boolean result = get(0).compareTo(BigInteger.ZERO) != 0; // the final result is negated
        int ielem = 1;
        while (result && ielem < vecLen) {
            result = get(ielem).compareTo(BigInteger.ZERO) != 0;
            int kelem = 0;
            while (result && kelem < ielem) {
                result = get(ielem).compareTo(get(kelem)) != 0;
                kelem ++;
            } // while kelem
            ielem ++;
        } // while ielem
        return ! result;
    } // isTrivial

    /** Returns a String representation of the Vectorial
     *  with 4 places per element in one line
     *  @return a 1-dimensional array of small numbers
     */
    public String toString() {
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        for (int icol = 0; icol < vecLen; icol ++) {
            if (icol > 0) {
               result.append(sep);
            }
            result.append(String.valueOf(get(icol)));
        } // for icol
        result.append(']');
        return result.toString();
    } // toString()

    /** Returns a String representation of the Vectorial
     *  @param formatSpec (ignored)
     *  @return a one-dimensional array of small numbers
     */
    public String toString(String formatSpec) {
        return toString();
    } // toString(String)

    /** Gives the minimum element in <em>this</em> Vectorial
     *  @return the minimum value
     */
    public BN min() {
        BN result = get(0);
        int icol = 1;
        while (icol < vecLen) {
            if (get(icol).compareTo(result) < 0) {
                result = get(icol);
            }
            icol ++;
        } // while icol
        return result;
    } // min

    /** Gives the maximum element in <em>this</em> Vectorial
     *  @return the maximum value
     */
    public BN max() {
        BN result = get(0);
        int icol = 1;
        while (icol < vecLen) {
            if (get(icol).compareTo(result) > 0) {
                result = get(icol);
            }
            icol ++;
        } // while icol
        return result;
    } // max

    //========================
    // GCD, LCM and companions
    //========================
    /** Greatest common divisor of <em>this</em> Vectorial's elements
     *  @return a BigInteger &gt;= 1
     */
    public BN gcd() {
        return gcd(this.vector);
    } // gcdBig()

    /** Greatest common divisor of some array's elements
     *  @param vect the array
     *  @return an integer &gt;= 1
     */
    public BN gcd(ArrayList<BN> vect) {
        BN result = null;
/* nyi
        BN bn0 = abs(vect.get(0));
        int vlen = vect.length;
        int icol = 1;
        while (! result.equals(BigInteger.ONE) && icol < vlen) {
            BigInteger p = result;
            BigInteger q = vect[icol].abs();
            while (! q.equals(BigInteger.ZERO)) {
                BigInteger[] temp = p.divideAndRemainder(q);
                p = q;
                q = temp[1]; // the rest
            }
            result = p;
            result = result.gcd(vect[icol]); // method in BigInteger
            icol ++;
        } // while icol
*/
        return result;
    } // gcd(array)

    /** Computes the least common multiple (LCM) of 2 integers
     *  @param a first integer
     *  @param b second integer
     *  @return lcm(a,b)
     */
/* nyi
    public static BigInteger lcm(BigInteger a, BigInteger b) {
        BigInteger divisor = a.gcd(b);
        BigInteger result  = BigInteger.ZERO;
        if (! divisor.equals(BigInteger.ZERO)) {
            result = a.multiply(b).abs().divide(divisor);
        }
        return result.abs();
    } // lcm(a, b)
*/
    /** Least common multiple of <em>this</em> Vector's elements
     *  @return an integer
     */
/* nyi
    public BigInteger lcmBig() {
        return lcm(this.vector);
    } // lcmBig()
*/
    /** Least common multiple of some array's elements
     *  @param vect the array
     *  @return a BigInteger
     */
/* nyi
    public static BigInteger lcm(BigInteger[] vect) {
        BigInteger result = vect[0];
        int vlen = vect.length;
        int icol = 1;
        while (icol < vlen) {
            result = lcm(result, vect[icol]); // static
            icol ++;
        } // while icol
        return result;
    } // lcm(array)
*/
    /** Determine the greatest common divisor of this Vectorial's elements,
     *  and divide all elements by this gcd if it is &gt; 1
     *  @return an integer &gt;= 1
     */
/* nyi
    public BigInteger extractGcdBig() {
        return extractGcdBig(vector);
    } // extractGcdBig()
*/
    /** Determine the greatest common divisor of some array's elements,
     *  and divide all elements by this GCD if it is &gt; 1
     *  @param vect extract the GCD from this array
     *  @return an integer &gt;= 1
     */
/* nyi
    public static BigInteger extractGcdBig(BigInteger[] vect) {
        BigInteger result = gcd(vect);
        if (result.compareTo(BigInteger.ONE) > 0) {
            int vlen = vect.length;
            int icol = 0;
            while (icol < vlen) {
                vect[icol] = vect[icol].divide(result);
                icol ++;
            } // while icol
        } // if gcd
        return result;
    } // extractGcdBig(array)
*/
    /** Gets the reversed order of <em>this</em> Vectorial.
     *  @return a clone of the original Vectorial read backwards
     */
    public Vectorial<BN> reverse() {
        int len1 = size();
        int lenr = len1;
        Vectorial<BN> result = new Vectorial<BN>(len1);
        int icol = 0;
        while (icol < lenr) {
            result.vector.add(get(len1 - 1 - icol));
            icol ++;
        } // while icol
        return result;
    } // reverse()

    /*-------------- arithmetic operations -------------------------*/
    /** Shrinks <em>this</em> Vectorial, that is removes zeroes at the tail.
     *  By default extract a GCD from the vector and the common denominator.
     */
    public void shrinkIt() {
        shrinkIt(true);
    } // shrink

    /** Shrinks <em>this</em> Vectorial, that is removes zeroes at the tail.
     *  @param reduce whether to remove a GCD from the vector
     */
    public void shrinkIt(boolean reduce) {
        int icol = size() - 1;
        while (icol > 0 && get(icol).isZero()) { // remove leading zeroes
            vector.remove(icol);
            icol --;
        } // while icol
        if (reduce) {
            shortenIt();
        }
        vecLen = icol + 1;
    } // shrink(boolean)

    /** Creates a new Vectorial with any GCD of the nominators and the denominator removed
     */
    public void shortenIt() {
/* nyi
        int icol = size() - 1;
        Vectorial<BN> result = clone();
        BN tden = this.getDen();
        BN fgcd = tden.gcd(this.gcdBig());
        result = new Vectorial(icol + 1);
        if (fgcd.equals(BN.ONE)) {
            while (icol >= 0) {
                result.set(icol, getBig(icol));
                icol --;
            } // while icoltden.divide(fgcd));
            result.setDen(tden);
        } else {
            while (icol >= 0) {
                result.set(icol, getBig(icol).divide(fgcd));
                icol --;
            } // while icoltden.divide(fgcd));
            result.setDen(tden.divide(fgcd));
        }
*/
    } // shortenIt

    /*-------------- arithmetic operations -------------------------*/

    /** Gets a new Vectorial which is the sum of <em>this</em> and a second
     *  Vectorial, which may have a differing length.
     *  @param vect2 the Vectorial to be added to <em>this</em>.
     *  @return this + vect2
     */
    public Vectorial<BN> add     (Vectorial<BN> vect2) {
        int len1 =       size();
        int len2 = vect2.size();
        int lenr = len1 > len2 ? len1 : len2; // max
        Vectorial<BN> result = new Vectorial<BN>(lenr);
        for (int icol = 0; icol < lenr; icol ++) {
            if (icol < len1 && icol < len2) {
                result.vector.add((BN) (get(icol).add     (vect2.get(icol))));
            } else if (icol < len1) {
                result.vector.add(      get(icol));
            } else { // } if (icol < len2) {
                result.vector.add(vect2.get(icol));
            }
        } // for icol
        result.shrinkIt();
        return result;
    } // add(BN)

    /** Gets a new Vectorial which is the difference of <em>this</em> and a second
     *  Vectorial, which may have a differing length.
     *  @param vect2 the Vectorial to be subtracted from <em>this</em>.
     *  @return this - vect2
     */
    public Vectorial<BN> subtract(Vectorial<BN> vect2) {
        int len1 =       size();
        int len2 = vect2.size();
        int lenr = len1 > len2 ? len1 : len2; // max
        Vectorial<BN> result = new Vectorial<BN>(lenr);
        for (int icol = 0; icol < lenr; icol ++) {
            if (icol < len1 && icol < len2) {
                result.vector.add((BN)   get(icol).subtract(vect2.get(icol)));
            } else if (icol < len1) {
                result.vector.add(      get(icol));
            } else { // } if (icol < len2) {
                result.vector.add(vect2.get(icol));
            }
        } // for icol
        result.shrinkIt();
        return result;
    } // subtract(BN)

    /** Gets a new Vectorial which is a multiple of <em>this</em> Vectorial.
     *  @param scale multiply by this BN
     *  @return this * scale,
     *  that is a Vectorial where each element is multiplied by <em>scale</em>
     */
    public Vectorial<BN> multiply(BN scale) {
        int len1 = size();
        int lenr = len1;
        Vectorial<BN> result = new Vectorial<BN>(len1);
        for (int icol = 0; icol < lenr; icol ++) {
            result.vector.add((BN) get(icol).multiply(scale));
        } // for icol
        result.shrinkIt();
        return result;
    } // multiply(BN)

    /** Gets a new Vectorial which is the product of <em>this</em> and a second
     *  Vectorial, which may have a differing length.
     *  @param vect2 multiply by this Vectorial
     *  @return this * vect2, that is a Vectorial
     */
    public Vectorial<BN> multiply(Vectorial<BN> vect2) {
        int len1 =       size();
        int len2 = vect2.size();
        int lenr = len1 + len2 - 1; // [x^0..x^5]#6 * [x^0..x^7]#8 => [0..x^12]#13
        Vectorial<BN> result = new Vectorial<BN>(lenr);
        for (int icol1 = 0; icol1 < lenr; icol1 ++) {
            result.vector.add((BN) BigNumber.ZERO);
        }
        for (int icol1 = 0; icol1 < len1; icol1 ++) {
        for (int icol2 = 0; icol2 < len2; icol2 ++) {
            int icolr = icol1 + icol2;
            result.vector.set(icolr, (BN) result.get(icolr) .add(get(icol1).multiply(vect2.get(icol2))));
        } // for icol2
        } // for icol1
        result.shrinkIt();
        return result;
    } // multiply(Vectorial)

    /** Gets a new Vectorial which is the negative of <em>this</em> Vectorial.
     *  @return a Vectorial where each original element is multiplied by <em>-1</em>
     */
    public Vectorial<BN> negate() {
        int len1 = size();
        int lenr = len1;
        Vectorial<BN> result = new Vectorial<BN>(len1);
        int icol = 0;
        while (icol < lenr) {
            result.vector.add((BN) get(icol).negate());
            icol ++;
        } // while icol
        return result;
    } // negate()

    /** Gets a new Vectorial which is the quotient of <em>this</em> Vectorial and <em>scale</em>;
     *  there may not remain a remainder for any element.
     *  @param scale divide by this BN - must be non-zero
     *  @return a clone of this / scale,
     *  that is a Vectorial where each element is divided by <em>scale</em>
     */
    public Vectorial<BN> divide(BN scale) {
        int len1 = size();
        int lenr = len1;
        Vectorial<BN> result = new Vectorial<BN>(len1);
        int icol = 0;
        while (icol < lenr) {
            result.vector.add((BN) get(icol).divide(scale));
            icol ++;
        } // while icol
        return result; // no !! shrink, since that uses this method
    } // divide(BN)

    /** Gets the quotient only from a division of <em>this</em>
     *  and a 2nd Vectorial; any remainder is ignored.
     *  @param vect2 divide by this Vectorial - must be non-zero
     *  @return a clone of this / vect2.
     */
    public Vectorial<BN> divide(Vectorial<BN> vect2) {
        ArrayList<Vectorial<BN>> result = divideAndRemainder(vect2);
        return result.get(0);
    } // divide(Vectorial)

    /** Gets the quotient and the remainder from a division of <em>this</em>
     *  and a 2nd Vectorial
     *  @param vect2 the divisor
     *  @return (quotient, remainder)
     */
    public ArrayList<Vectorial<BN>> divideAndRemainder(Vectorial<BN> vect2) {
        ArrayList<Vectorial<BN>> result = new ArrayList<Vectorial<BN>>(2);
        Vectorial<BN> quot  = new Vectorial<BN>();
        Vectorial<BN> vect1 = clone();
        int len1 = vect1.size();
        int len2 = vect2.size();
        BN last2 = vect2.get(len2 - 1);
        if (last2.isZero()) { // can only be a single zero
            System.out.println("# assertion in Vectorial: divisor is zero: num="
                    + toString() + ", den=" + vect2.toString());
            result.add(new Vectorial<BN>());
            result.add(new Vectorial<BN>());
            return result;
        } else { // last2 != ZERO
/* nyi
            if (len1 < len2) {
                result.add(new Vectorial<BN>()); // ZERO
                result.add(vect2); // remainder
            } else { // len1 >= len2, divisor is shorter or same length as dividend
                int lenq = len2 - len1 + 1;
                Vectorial<BN> quot = new Vectorial<BN>(lenq);
                while (len1 >= len2 && ! vect1.isZero()) {
                    int icol1 = vect1.size() - 1;
                    BN  last1 = vect1.get(icol1);
                    int icol2 = vect2.size() - 1;
                    BN factor = (BN) (remd.get(iremd).divide(last2));
                    int xexp = iremd - icol2;
                    Vectorial<BN> prod = vect2.multiply(factor, xexp);
                    quot.set(xexp, factor);
                    remd = remd.subtract(prod);
                    remd.shrinkIt();
                    lenr = remd.size();
                    if (debug >= 1) {
                        System.out.println("divide: quot[" + xexp + "] = " + factor.toString()
                                + ", remd = " + remd.toString());
                    }
                } // while lenr
                quot.shrinkIt();
                remd.shrinkIt();
                result.add(quot);
                result.add(vect1);
            } // len1 >= len2
*/
        } // last2 != ZERO
        return result;
    } // divideAndRemainder(Vectorial)

    /** Determines the quotient of the lowest elements of <em>this</em> (numerator of the generating function)
     *  and <em>vect2</em> (the division may not have a rest, and the first element of vect2 should be ONE),
     *  subtracts the product of <em>vect2 * quotient</em>
     *  from <em>this</em> (eventually after padding the latter with zeroes),
     *  removes the first element of <em>this</em> (this was zero),
     *  and returns the quotient.
     *  @param vect2 the divisor (denominator of the generating function)
     *  @return quotient, coefficient of the series expansion for the generating function
     */
    public BN divisionStep(Vectorial<BN> vect2) {
        int len1 = this .size();
        int len2 = vect2.size();
        BN result = (BN) BigNumber.ZERO;
        BN divisor = vect2.get(0);
        if (divisor.equals(BigInteger.ZERO)) {
            System.out.println("# assertion in Vectorial: divisor is zero: num="
                    + this.toString() + ", den=" + vect2.toString());
        } else if (len1 == 0) {
            System.out.println("# assertion in Vectorial: empty vector");
        } else { // valid divisor
            ArrayList<BigNumber> quotRemd = ((BigNumber) this.get(0)).divideAndRemainder((BigNumber) divisor);
            result      = (BN) quotRemd.get(0);
            BN factor = (BN) (BigNumber.ZERO.subtract(result)); // .negate();
            if (! quotRemd.get(1).isZero()) { // remainder is not zero
                System.out.println("# assertion in Vectorial: no even division: num="
                        + this.toString() + ", den=" + vect2.toString());
                result = (BN) BigNumber.ZERO;
            } else { // even division
                int lenMax = len1 > len2 ? len1 : len2;
                int iterm = 1; // the first term of <em>this</em> becomes ZERO and can be skipped
                while (iterm < lenMax) {
                    if (debug >= 2) {
                        System.out.println("# iterm=" + iterm + ", len1=" + len1 + ", len2=" + len2
                                + ", factor=" + factor.toString() + ", this=" + this.toString());
                    }
                    BN term = iterm < len2 ? (BN) (vect2.get(iterm).multiply(factor)) : (BN) BigNumber.ZERO;
                    if (iterm < len1) {
                        term = (BN) (term.add(this.get(iterm)));
                    }
                    if (debug >= 2) {
                        System.out.println("# iterm=" + iterm + ", term=" + term);
                    }
                    set(iterm - 1, term); // shift <em>this</em> left by one
                    iterm ++;
                } // while iterm
                vecLen = lenMax - 1;
                while (vector.size() > vecLen) {
                    vector.remove(vecLen);
                }
                if (debug >= 1) {
                    System.out.println("# result: " + result + ", this = " + toString());
                }
            } // even division
        } // valid divisor
        return result;
    } // divisionStep(Vectorial)

    /** Euclidian algorithm: Repetitively divide <em>this</em>
     *  by a second {@link RationalVector},
     *  then the divisor by the rest, until there is no rest.
     *  @param vect2 the divisor
     *  @return the last divisor which yields no rest,
     *  that is the greatest common divisor.
     */
    public Vectorial gcd(Vectorial<BN> vect2) {
        Vectorial result = null;
/* nyi
        Vectorial quot = this ;
        Vectorial remd = vect2;
        Vectorial[] quotRemd = null;
        while (! remd.isZero()) {
            quotRemd = quot.divideAndRemainder(remd);
            if (debug >= 1) {
                System.out.println("gcd: " + quot.toString() + " / " + remd.toString()
                        + " -> " + quotRemd[0] + " rest " + quotRemd[1]);
            }
            quot = remd;
            remd = quotRemd[1];
        } // while > 0
        return quotRemd[0];
*/
        return result;
    } // gcd(Vectorial)

    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments: [vect1] oper [vect2] (cf. test/linear.tests)
     */
    public static void main(String[] args) {
        int iarg = 0;
        Vectorial<BigNumber> vect1 = null;
        Vectorial<BigNumber> vect2 = null;
        ArrayList<Vectorial<BigNumber>> vectq = null;
        Vectorial<BigNumber> vectr = null;
        if (args.length == 0) {
            System.out.println("usage: java -cp dist/ramath.jar org.teherba.ramath.linear.Vectorial [-d n] \"[vect1] oper [vect2]\"");
            System.out.println("    oper= + - * / % | ,");
        } else { // arguments
            String expr = args[iarg ++];
            if (expr.equals("-d")) {
                debug = 0;
                try {
                    debug = Integer.parseInt(args[iarg ++]);
                } catch(Exception exc) {
                }
                expr = args[iarg ++];
            }
            String[] parts = expr.split("\\s+"); // [vect1] oper [vect2]
            vect1 = new Vectorial<BigNumber>(parts  [0]);
            String oper = parts                             [1];
            BigNumber big2 = BigNumber.ZERO;
            if (parts.length >= 3) {
                if (parts[2].startsWith("[")) {
                    vect2 = new Vectorial<BigNumber>(parts       [2]);
                } else {
                    big2  = new BigNumber(parts                  [2]);
                }
            }
            System.out.print(expr + " = ");
            if (false) {
            } else if (oper.equals("+")) {
                    vectr = vect1.add     (vect2);
                    System.out.println(vectr + ", original = " + vectr.subtract(vect2));
            } else if (oper.equals("-")) {
                if (parts.length == 2) { // unary minus
                    System.out.println(vect1.negate  (     ).toString());
                } else {
                    vectr = vect1.subtract(vect2);
                    System.out.println(vectr + ", original = " + vectr.add(vect2));
                }
            } else if (oper.equals("*")) {
                if (parts[2].startsWith("[")) {
                    vectr = vect1.multiply(vect2);
                    System.out.println(vectr);
                /*
                    vectq = vectr.divideAndRemainder(vect1);
                    System.out.println("/ vect1 = " + vectq.get(0));
                    vectq = vectr.divideAndRemainder(vect2);
                    System.out.println("/ vect2 = " + vectq.get(0));
                */
                } else {
                    vectr = vect1.multiply(big2);
                    System.out.println(vectr + ", original = " + vectr.divide(big2));
                }
            } else if (oper.startsWith("/")) { // divide
                if (parts[2].startsWith("[")) {
                    vectr = vect1.divide  (vect2);
                    System.out.println(vectr);
                } else {
                    vectr = vect1.divide  (big2);
                    System.out.println(vectr);
                }
            } else if (oper.startsWith("%")) { // divideAndRemainder
                    vectq = vect1.divideAndRemainder(vect2);
                    System.out.println(vectq.get(0) + ", rem=" + vectq.get(1));
            } else if (oper.startsWith(",")) { // divisionStep
                for (int iterm = 0; iterm < 16; iterm ++) {
                    big2 = vect1.divisionStep(vect2);
                    System.out.print(big2 + ",");
                } // for iterm
                System.out.println();
            } else if (oper.equals("|")) { // repetitively divide
/* nyi
                System.out.println();
                vectr = vect1.gcd(vect2);
                System.out.println("gcd: " + vectr.toString());
*/
            } // if oper
        } // more than 1 argument
    } // main

} // Vectorial
