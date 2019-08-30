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
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  java.lang.Math; // abs(int)
import  java.math.BigInteger;
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.Arrays;
import  java.util.regex.Matcher;
import  java.util.regex.Pattern;

/** Class BigVector is used to
 *  implement some simple linear algebra operations
 *  on vectors of BigInteger numbers.
 *  @author Dr. Georg Fischer
 */
public class BigVector extends Vector implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: BigVector.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging level: 0 = none, 1 = moderate, 2 = more, 3 = most */
    private static int debug = 0;

    /*-------------- class properties -----------------------------*/

    /** a one-dimensional array of numbers */
    protected BigInteger[] vector;
    /** number of elements in <em>vector</em> */
    // inherited: protected int vecLen;
    /** common denominator or 1 */
    protected BigInteger comDen;
    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public BigVector() {
        vecLen  = 1;
        vector  = new BigInteger[] { BigInteger.ZERO };
        comDen  = BigInteger.ONE;
    } // no-args Constructor

    /** Constructor for a BigVector of some length
     *  @param numElems number of elements
     */
    public BigVector(int numElems) {
        vecLen = numElems;
        if (vecLen == 0) {
            vecLen ++;
        }
        vector = new BigInteger[vecLen];
        comDen  = BigInteger.ONE;
        int icol = 0;
        while (icol < vecLen) {
            set(icol, BigInteger.ZERO);
            icol ++;
        } // while icol
    } // Constructor(int)

    /** Constructor for a constant BigVector of some length
     *  @param numElems number of elements
     *  @param value constant for all elements
     */
    public BigVector(int numElems, BigInteger value) {
        this.vecLen = numElems;
        this.vector = new BigInteger[this.vecLen];
        comDen  = BigInteger.ONE;
        for (int icol = 0; icol < this.vecLen; icol ++) {
            this.vector[icol] = value;
        } // for icol
    } // Constructor(int, BigInteger)

    /** Constructor for a BigVector from a tuple of integers
     *  @param tuple array of integers
     */
    public BigVector(int[] tuple) {
        this.vecLen = tuple.length;
        this.vector = new BigInteger[this.vecLen];
        comDen  = BigInteger.ONE;
        for (int icol = 0; icol < this.vecLen; icol ++) {
            this.vector[icol] = BigInteger.valueOf(tuple[icol]);
        } // for icol
    } // Constructor(int[])

    /** Constructor for a BigVector from a {@link Vector} of integers
     *  @param tuple Vector
     */
    public BigVector(Vector tuple) {
        this.vecLen = tuple.size();
        this.vector = new BigInteger[this.vecLen];
        comDen  = BigInteger.ONE;
        for (int icol = 0; icol < this.vecLen; icol ++) {
            this.vector[icol] = BigInteger.valueOf(tuple.get(icol));
        } // for icol
    } // Constructor(Vector)

    /** Constructor for a BigVector from a tuple of BigIntegers
     *  @param tuple array of BigIntegers
     */
    public BigVector(BigInteger[] tuple) {
        this.vecLen = tuple.length;
        this.vector = new BigInteger[this.vecLen];
        comDen  = BigInteger.ONE;
        for (int icol = 0; icol < this.vecLen; icol ++) {
            this.vector[icol] = tuple[icol];
        } // for icol
    } // Constructor(BigInteger[])

    /** Constructor for a BigVector from an array of strings
     *  @param numElems number of elements
     *  @param iarg starting index in <em>args</em>
     *  @param args array of numbers as strings
     */
    public BigVector(int numElems, int iarg, String[] args) {
        this(numElems);
        int icol = 0;
        while (icol < this.vecLen) {
            this.vector[icol] = BigInteger.ZERO;
            try {
                this.vector[icol] = new BigInteger(args[iarg ++]);
            } catch (Exception exc) {
            }
            icol ++;
        } // while icol
    } // Constructor(3)

    /** Constructor for a BigVector from a vector expression
     *  @param vectExpr an array of comma or space-separated elements
     *  (optionally in square brackets), and with an option common denominator,
     *  for example "[3, 4, 5]/20" or "3 4 5".
     */
    public BigVector(String vectExpr) {
        this();
        try {
            int slashPos = vectExpr.indexOf("/");
            if (slashPos >= 0) {
                comDen = new BigInteger(vectExpr.substring(slashPos + 1));
            } else {
                slashPos = vectExpr.length();
            }
            String[] values = vectExpr.substring(0, slashPos)
                    .replaceAll("[\\[\\]\\s\\,]+"," ").trim().split(" ");
            this.vecLen = values.length;
            this.vector = new BigInteger[this.vecLen];
            int icol = 0;
            while (icol < this.vecLen) {
                this.vector[icol] = BigInteger.ZERO;
                    this.vector[icol] = new BigInteger(values[icol]);
                icol ++;
            } // while icol
        } catch (Exception exc) {
        }
    } // Constructor(String)

    /** Deep copy of the BigVector and its properties.
     *  @return independant copy of the Vector
     */
    public BigVector clone() {
        BigVector result = new BigVector(size());
        result.setDen(this.getDen());
        int icol = 0;
        while (icol < size()) {
            result.set(icol, this.getBig(icol));
            icol ++;
        } // while icol
        return result;
    } // clone

    /** Compute a permutation of <em>this</em> BigVector
     *  @param meter definition of the permutation, result of {@link org.teherba.ramath.util.Permutator},
     *  a permutation of the numbers [0 : n-1] defining, for each element, the
     *  position of the element of <em>this</em> BigVector to be taken
     *  For example, [0,1,2,3] yields the identical vector, and [3,2,1,0] reverses the vector.
     *  @return reference to a new BigVector
     */
    public BigVector permuteBig(int[] meter) {
        BigVector result = new BigVector(this.vecLen);
        result.setDen(this.getDen());
        for (int imet = 0; imet < this.vecLen; imet ++) {
            result.set(imet, this.vector[meter[imet]]);
        } // for imet
        return result;
    } // permuteBig

    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Sets the debugging level
     *  @param debug 0 = none, 1 = some , 2 = more
     */
    public void setDebug(int debug) {
        this.debug = debug;
    } // setDebug

    /** Returns the common denominator
     *  @return a number &gt;= 1 
     */
    public BigInteger getDen() {
        return comDen;
    } // getDen

    /** Sets the common denominator
     *  @param den a number &gt;= 1 
     */
    public void setDen(BigInteger den) {
        comDen = den;
    } // setDen

    /** Returns an element of the Vector
     *  @param icol number of the element (zero based)
     *  @return a number
     */
    public BigInteger getBig(int icol) {
        return vector[icol];
    } // getBig

    /** Sets an element of the BigVector
     *  @param icol number of the element (zero based)
     *  @param value a number
     */
    public void setBig(int icol, BigInteger value) {
        vector[icol] = value;
    } // set

    /** Sets an element of the BigVector
     *  @param icol number of the element (zero based)
     *  @param value a small number
     */
    public void set(int icol, BigInteger value) {
        vector[icol] = value;
    } // set

    /** Gets the values of <em>this</em> {@link BigVector} as an <em>BigInteger</em> array.
     *  @return array of BigIntegers
     */
    public BigInteger[] getBigValues() {
        return this.vector;
    } // getBigValues

    /** Gets an univariate {@link Polynomial}
     *  @return a Polynomial where the elements of <em>this</em> are the coefficients of the variable "x",
     *  and the indices are the exponents.
     */
    public Polynomial getPolynomial() {
        Polynomial result = new Polynomial();
        String var = "x";
        int icol = 0;
        while (icol < vecLen) {
            result.addTo(new Monomial(vector[icol], var, icol));
            icol ++;
        } // while icol
        return result;
    } // getPolynomial

    /** Returns the number of elements
     *  @return a small number
     */
    public int size() {
        return this.vector.length;
    } // size

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a new BigVector which has the highest element &gt; 0, and
     *  all elements are divided by any greatest common divisor; 
     *  the common denominator is set to 1.
     *  @return normalized BigVector
     */
    public BigVector normalize() {
        BigVector result = this.shrink();
        if (result.getBig(this.size() - 1).compareTo(BigInteger.ZERO) < 0) { // highest element is negative
            result = result.negate(); // make it positive
        }
        result.extractGcdBig();
        result.setDen(BigInteger.ONE);
        return result;
    } // normalize

    /** Computes the sum of squares of the elements of <em>this</em> BigVector
     *  @return sum of elements^2
     */
    public BigInteger normBig4() {
        BigInteger result = BigInteger.ZERO;
        int icol = 0;
        while (icol < this.vecLen) {
            result = result.add(this.getBig(icol).multiply(this.getBig(icol)));
            icol ++;
        } // while icol
        return result;
    } // normBig4

    /** Equality of 2 BigVectors
     *  @param vect2 compare <em>this</em> BigVector with it
     *  @return whether the 2 vectors are equal
     */
    public boolean equals(BigVector vect2) {
        boolean result = true;
        if (this.vecLen == vect2.size()) {
            int icol = 0;
            BigInteger den1 = this .getDen();
            BigInteger den2 = vect2.getDen();
            while (icol < size() && this.getBig(icol).multiply(den2).equals(vect2.getBig(icol).multiply(den1))) {
                icol ++;
            } // while icol
            result = icol == size(); // false if the loop stopped before because of a difference
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
        int icol = 0;
        while (! result && icol < this.vecLen) {
            result = this.getBig(icol).equals(BigInteger.ZERO);
            icol ++;
        } // while icol
        return result;
    } // hasZero

    /** Gets the (first) position of an element in <em>this</em> BigVector.
     *  @param elem search for this element
     *  @return index &gt;= 0 of <em>elem</em> in <em>this</em> BigVector, or -1 if not found
     */
    public int indexOf(BigInteger elem) {
        int result = -1;
        int icol = 0;
        while (result < 0 && icol < this.vecLen) {
            if (elem.equals(this.getBig(icol))) {
                result = icol;
            }
            icol ++;
        } // while icol
        return result;
    } // indexOf

    // inherited: contains

    /** Returns a String representation of the BigVector
     *  @return a list of the form "[n1,n2,n3]"
     */
    @Override
    public String toString() {
        return toString(",");
    } // toString()

    /** Returns a String representation of the BigVector
     *  @param formatSpec separator or printf spec; "%3d" is converted to "%-3s".
     *  @return a separated list of BigIntegers
     */
    @Override
    public String toString(String formatSpec) {
        if (formatSpec.matches("\\s*\\%\\d*d")) {
            formatSpec = formatSpec.replaceAll("\\%", "%-").replaceAll("d\\Z", "s");
        }
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        if (false) {
        } else if (formatSpec == null || formatSpec.length() == 0) {
            for (int icol = 0; icol < size(); icol ++) {
                result.append(String.format(" %-3s", getBig(icol)));
            } // for icol
        } else if (formatSpec.indexOf('%') >= 0) { // printf spec
            for (int icol = 0; icol < size(); icol ++) {
                result.append(String.format(formatSpec, getBig(icol)));
            } // for icol
        } else {
            if (formatSpec.indexOf(sep) >= 0) {
                result.append('[');
            }
            for (int icol = 0; icol < size(); icol ++) {
                if (icol > 0) {
                    result.append(formatSpec);
                }
                result.append(String.valueOf(getBig(icol)));
            } // for icol
            if (formatSpec.indexOf(sep) >= 0) {
                result.append(']');
            }
        }
        if (! this.getDen().equals(BigInteger.ONE)) {
            result.append("/");
            result.append(getDen().toString());
        }
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
            icol ++;
        } // while icol
        return result.abs();
    } // gcd(array)

    /** Computes the least common multiple (LCM) of 2 integers
     *  @param a first integer
     *  @param b second integer
     *  @return lcm(a,b)
     */
    public static BigInteger lcm(BigInteger a, BigInteger b) {
        BigInteger divisor = a.gcd(b);
        BigInteger result  = BigInteger.ZERO;
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
     *  @return a BigInteger
     */
    public static BigInteger lcm(BigInteger[] vect) {
        BigInteger result = vect[0];
        int vlen = vect.length;
        int icol = 1;
        while (icol < vlen) {
            result = lcm(result, vect[icol]);
            icol ++;
        } // while icol
        return result;
    } // lcm(array)

    /** Determine the greatest common divisor of this BigVector's elements,
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
            int icol = 0;
            while (icol < vlen) {
                vect[icol] = vect[icol].divide(result);
                icol ++;
            } // while icol
        } // if gcd
        return result;
    } // extractGcdBig(array)

    /*-------------- arithmetic operations -------------------------*/

    /** Shrinks <em>this</em> BigVector, that is removes zeroes at the tail.
     *  @return the shrinked BigVector
     */
    public BigVector shrink() {
        int icol = size() - 1;
        while (icol > 0 && getBig(icol).equals(BigInteger.ZERO)) {
            icol --;
        } // while icol
        BigVector result = new BigVector(icol + 1);
        result.setDen(getDen());
        while (icol >= 0) {
            result.set(icol, getBig(icol));
            icol --;
        } // while icol
        return result;
    } // shrink

    /** Gets a new BigVector which is the sum of <em>this</em> and a second
     *  BigVector, which may have a differing length.
     *  @param vect2 the BigVector to be added to <em>this</em>.
     *  @return this + vect2
     */
    public BigVector add(BigVector vect2) {
        BigInteger lcm12 = lcm(getDen(), vect2.getDen());
        BigInteger fac1  = lcm12.divide(      getDen());
        BigInteger fac2  = lcm12.divide(vect2.getDen());
        int len1 = size();
        int len2 = vect2.size();
        int lenr = len1 > len2 ? len1 : len2; // max
        BigVector result = new BigVector(lenr);
        result.setDen(lcm12);
        int icol = 0;
        while (icol < lenr) {
            BigInteger big1 = icol >= len1 ? BigInteger.ZERO :     getBig(icol).multiply(fac1);
            result.set(icol,  icol >= len2 ? big1 : big1.add(vect2.getBig(icol).multiply(fac2)));
            icol ++;
        } // while icol
        return result.shrink();
    } // add(BigInteger)

    /** Gets a new BigVector which is the difference of <em>this</em> and a second
     *  BigVector, which may have a differing length.
     *  @param vect2 the BigVector to be subtracted from <em>this</em>.
     *  @return this - vect2
     */
    public BigVector subtract(BigVector vect2) {
        BigInteger lcm12 = lcm(getDen(), vect2.getDen());
        BigInteger fac1  = lcm12.divide(      getDen());
        BigInteger fac2  = lcm12.divide(vect2.getDen());
        int len1 = size();
        int len2 = vect2.size();
        int lenr = len1 > len2 ? len1 : len2;
        BigVector result = new BigVector(lenr);
        result.setDen(lcm12);
        int icol = 0;
        while (icol < lenr) {
            BigInteger big1 = icol >= len1 ? BigInteger.ZERO          : getBig(icol).multiply(fac1);
            result.set(icol,  icol >= len2 ? big1 : big1.subtract(vect2.getBig(icol).multiply(fac2)));
            icol ++;
        } // while icol
        return result.shrink();
    } // subtract(BigInteger)

    /** Gets a new BigVector which is a multiple of <em>this</em> BigVector.
     *  @param scale multiply by this BigInteger
     *  @return this * scale,
     *  that is a BigVector where each element is multiplied by <em>scale</em>
     */
    public BigVector multiply(BigInteger scale) {
        int len1 = size();
        int lenr = len1;
        BigVector result = new BigVector(len1);
        result.setDen(getDen());
        int icol = 0;
        while (icol < lenr) {
            result.set(icol, getBig(icol).multiply(scale));
            icol ++;
        } // while icol
        return result.shrink();
    } // multiply(BigInteger)

    /** Gets a new BigVector which is a multiple of <em>this</em> BigVector.
     *  @param scale multiply by this int
     *  @return this * scale,
     *  that is a BigVector where each element is multiplied by <em>scale</em>
     */
    public BigVector multiply(int scale) {
        return this.multiply(BigInteger.valueOf(scale));
    } // multiply(int)

    /** Gets a new BigVector which is the product of <em>this</em> and a second
     *  BigVector, which may have a differing length.
     *  @param vect2 multiply by this BigVector
     *  @return this * vect2, that is a BigVector
     */
    public BigVector multiply(BigVector vect2) {
        BigInteger lcm12 = lcm(getDen(), vect2.getDen());
        BigInteger fac1  = lcm12.divide(      getDen());
        BigInteger fac2  = lcm12.divide(vect2.getDen());
        int len1 = size();
        int len2 = vect2.size();
        int lenr = len1 + len2 - 1; // [x^0..x^5]#6 * [x^0..x^7]#8 => [0..x^12]#13
        BigVector result = new BigVector(lenr, BigInteger.ZERO);
        result.setDen(lcm12);
        int icol1 = 0;
        while (icol1 < len1) {
            int icol2 = 0;
            while (icol2 < len2) {
                int icolr = icol1 + icol2;
                result.set(icolr, result.getBig(icolr)
                        .add(getBig(icol1).multiply(fac1).multiply(vect2.getBig(icol2).multiply(fac2))));
                icol2 ++;
            } // while icol2
            icol1 ++;
        } // while icol1
        return result.shrink();
    } // multiply(BigVector)

    /** Gets a new BigVector which is the negative of <em>this</em> BigVector.
     *  @return a BigVector where each original element is multiplied by <em>-1</em>
     */
    public BigVector negate() {
        int len1 = size();
        int lenr = len1;
        BigVector result = new BigVector(len1);
        result.setDen(getDen());
        int icol = 0;
        while (icol < lenr) {
            result.set(icol, getBig(icol).negate());
            icol ++;
        } // while icol
        return result;
    } // negate()

    /** Gets the reversed order of <em>this</em> BigVector.
     *  @return the original BigVector read backwards
     */
    public BigVector reverse() {
        int len1 = size();
        int lenr = len1;
        BigVector result = new BigVector(len1);
        result.setDen(getDen());
        int icol = 0;
        while (icol < lenr) {
            result.set(icol, getBig(len1 - 1 - icol));
            icol ++;
        } // while icol
        return result;
    } // reverse()

    /** Gets the quotient and the remainder from a division of <em>this</em>
     *  and a second BigVector, which  may have a differing length.
     *  @param vect2 the divisor
     *  @return [quotient, remainder]
     */
    public BigVector[] divideAndRemainder_99(BigVector vect2) {
        int len2 = vect2.size();
        BigInteger last2 = vect2.getBig(len2 - 1);
        if (last2.equals(BigInteger.ZERO)) { // can only be a single zero
            System.out.println("# assertion in BigVector: divisor is zero: num="
                    + this.toString() + ", den=" + vect2.toString());
            return new BigVector[] { new BigVector(), new BigVector() };
        }
        BigVector remd  = this .clone();
        int lenr = remd .size();
        int lenq = lenr >= len2 ? lenr - len2 + 1 : 0;
        BigVector quot  = new BigVector(); // [0] = zero, den = 1
        if (lenq > 1) {
            quot = new BigVector(lenq);
        }
        while (lenr >= len2) {
            int iremd = remd .size() - 1;
            int icol2 = vect2.size() - 1;
            BigInteger last1 = remd .getBig(iremd);
            BigInteger[] bigPair = last1.divideAndRemainder(last2);
            if (! bigPair[1].equals(BigInteger.ZERO)) { // no even factor -expand to least common multiple
                BigInteger blcm  = this.lcm(last1, last2);
                remd  = remd .multiply(blcm.divide(last1));
                last1 = remd .getBig(iremd);
                bigPair = last1.divideAndRemainder(last2); // { blcm / last2, 0 }
                if (debug >= 1) {
                    System.out.println("blcm=" + blcm + ", last1=" + last1 + ", last2=" + last2 + ", remd=" + remd);
                }
            } // no even factor
            BigInteger factor = bigPair[0];
            if (debug >= 1) {
                System.out.println("quot=" + quot + ", remd=" + remd + ", factor=" + factor
                         + ", lenq=" + lenq + ", lenr=" + lenr + ", len2=" + len2);
            }
            quot.set(lenr - len2, factor);
            while (iremd >= 0) {
                if (icol2 >= 0) {
                    remd.set(iremd, remd.getBig(iremd).subtract(vect2.getBig(icol2).multiply(factor)));
                } else { // keep remd[iremd]
                }
                iremd --;
                icol2 --;
            } // while iremd
            remd = remd.shrink();
            lenr = remd.size();
            if (debug >= 1) {
                System.out.println("quot=" + quot + ", remd=" + remd);
            }
        } // while lenr
        return new BigVector[] { quot, remd };
    } // divideAndRemainder(BigVector)

    /** Gets the quotient and the remainder from a division of <em>this</em>
     *  and a second BigVector
     *  @param vect2 the divisor
     *  @return [quotient, remainder]
     */
    public BigVector[] divideAndRemainder(BigVector vect2) {
        int len2 = vect2.size();
        BigInteger last2 = vect2.getBig(vect2.size() - 1).abs();
        if (last2.equals(BigInteger.ZERO)) { // can only be a single zero
            System.out.println("# assertion in BigVector: divisor is zero: num="
                    + this.toString() + ", den=" + vect2.toString());
            return new BigVector[] { new BigVector(), new BigVector() };
        }
        BigVector  rem1 = clone().multiply(vect2.getDen());
        BigVector  div2 = vect2  .multiply(      getDen());
        rem1.setDen(BigInteger.ONE);
        div2.setDen(BigInteger.ONE);
        BigInteger newDen = BigInteger.ONE;
        BigInteger fact   = BigInteger.ONE;
        int len1 = rem1.size();
        int lenq = len1 >= len2 ? len1 - len2 + 1 : 0;
        BigVector  quot  = new BigVector(lenq); 
        while (len1 >= len2) {
            int irem1 = rem1.size() - 1;
            int icol2 = div2.size() - 1;
            BigInteger last1 = rem1.getBig(irem1);
            BigInteger[] bigPair = last1.divideAndRemainder(div2.getBig(icol2));
            if (! bigPair[1].equals(BigInteger.ZERO)) { // some rest - expand to least common multiple
                BigInteger lcm12  = this.lcm(last1, last2);
                BigInteger fac1   = lcm12.divide(last1).abs();
                newDen = newDen.multiply(fac1);
                rem1   = rem1  .multiply(fac1);
                int iquo = len1 - len2 + 1;
                while (iquo < lenq) {
                    quot.set(iquo, quot.getBig(iquo).multiply(fac1));
                    iquo ++;
                } // while iquo
                last1  = rem1.getBig(irem1);
                bigPair = last1.divideAndRemainder(last2); // { blcm / last2, 0 }
                if (debug >= 1) {
                    System.out.println("lcm12=" + lcm12 + ", last1=" + last1 + ", last2=" + last2 + ", rem1=" + rem1);
                }
            } // no even factor
            BigInteger bquot = bigPair[0];
            if (debug >= 1) {
                System.out.println("quot=" + quot + ", rem1=" + rem1 + ", div2=" + div2 + "\n\t, bquot" + bquot
                         + ", lenq=" + lenq + ", len1=" + len1 + ", len2=" + len2);
            }
            quot.set(len1 - len2, bquot);
            while (irem1 >= 0) {
                if (icol2 >= 0) {
                    rem1.set(irem1, rem1.getBig(irem1).subtract(div2.getBig(icol2).multiply(bquot)));
                } else { // keep rem1[irem1]
                }
                irem1 --;
                icol2 --;
            } // while irem1
            rem1 = rem1.shrink();
            len1 = rem1.size();
            if (debug >= 1) {
                System.out.println("quot=" + quot + ", rem1=" + rem1);
            }
        } // while lenr
        rem1.setDen(newDen);
        quot.setDen(newDen);
        return new BigVector[] { quot, rem1 };
    } // divisideAndRemainder(BigVector)

    /** Determines the quotient of the first elements of <em>this</em> (numerator of the g.f.)
     *  and <em>vect2</em> (the division may not have a rest, and the first element of vect2 must be ONE),
     *  subtracts the product of <em>vect2 * quotient</em>
     *  from <em>this</em> (eventually after padding the latter with zeroes),
     *  removes the first element of <em>this</em> (this is zero then),
     *  and returns the quotient.
     *  @param vect2 the divisor (denominator of the g.f.)
     *  @return quotient, coefficient of the Taylor series
     */
    public BigInteger divisionStep(BigVector vect2) {
        BigInteger divisor    = vect2.getBig(0);
        if (divisor.equals(BigInteger.ZERO)) {
            System.out.println("# assertion in BigVector: divisor is zero: num="
                    + this.toString() + ", den=" + vect2.toString());
            return BigInteger.ZERO;
        }
        if (this.size() == 0) {
            System.out.println("# assertion in BigVector: empty vector");
            return BigInteger.ZERO;
        }
        BigInteger[] quotRest = this.getBig(0).divideAndRemainder(divisor);
        BigInteger result     = quotRest[0];
        BigInteger quotient   = result.negate();
        if (! quotRest[1].equals(BigInteger.ZERO)) {
            System.out.println("# assertion in BigVector: no even division: num="
                    + this.toString() + ", den=" + vect2.toString());
            return BigInteger.ZERO;
        }
        int len1 = this.size();
        int len2 = vect2.size();
        if (len2 > len1) {
            len1 = len2; // the maximum of both lengths
        }
        BigVector vect1 = new BigVector(len1 - 1); // will replace 'this' in the end
        int iterm = 1; // the first term of vect1 becomes ZERO and is skipped
        while (iterm < len1) {
            if (debug >= 2) {
                System.out.println("# iterm=" + iterm + ", len1=" + len1 + ", len2=" + len2
                        + ", quotient=" + quotient.toString() + ", this=" + this.toString());
            }
            BigInteger term = BigInteger.ZERO;
            if (iterm < len2) {
                term = vect2.getBig(iterm).multiply(quotient);
            }
            if (iterm < this.size()) {
                term = term.add(this.getBig(iterm));
            }
            if (debug >= 2) {
                System.out.println("# iterm=" + iterm + ", term=" + term);
            }
            vect1.set(iterm - 1, term);
            iterm ++;
        } // while iterm
        if (debug >= 1) {
            System.out.println("# result: " + result + ", vect1 = " + vect1.toString());
        }
        this.vector = vect1.vector;
        this.vecLen = this.vector.length;
        return result;
    } // divisionStep(BigVector)

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
     *  @param args command line arguments: [vect1] oper [vect2] (cf. test/linear.tests)
     */
    public static void main(String[] args) {
        BigVector.debug = 1;
        int iarg = 0;
        BigVector vect1 = new BigVector();
        BigVector vect2 = new BigVector();
        BigVector vectq = new BigVector();
        BigVector vectr = new BigVector();
        if (args.length == 0) {
            System.out.println("usage: java -cp dist/ramath.jar org.teherba.ramath.linear.BigVector \"[vect1] oper [vect2]\"");
            System.out.println("    oper= + - * /");
        } else { // arguments
            String expr = args[iarg ++];
            String[] parts = expr.split("\\s+"); // [vect1] oper [vect2]
            vect1 = new BigVector(parts             [0]);
            String oper = parts                             [1];
            BigInteger big2 = new BigInteger("0");
            if (parts.length >= 3) {
                if (parts[2].startsWith("[")) {
                    vect2 = new BigVector(parts                  [2]);
                } else {
                    big2  = new BigInteger(parts                 [2]);
                }
            }
            System.out.print(expr + " = ");
            if (false) {
            } else if (oper.equals("+")) {
                System.out.println(vect1.add         (vect2).toString());
            } else if (oper.equals("-")) {
                if (parts.length == 2) { // unary minus
                    System.out.println(vect1.negate  (     ).toString());
                } else {
                    System.out.println(vect1.subtract(vect2).toString());
                }
            } else if (oper.equals("*")) {
                if (parts[2].startsWith("[")) {
                    System.out.println(vect1.multiply(vect2).toString());
                } else {
                    System.out.println(vect1.multiply(big2 ).toString());
                }
        /*
            } else if (oper.startsWith("//")) {
                BigVector[] quotRemdFact = vect1.divideRemainderFactor(vect2);
                System.out.println(quotRemdFact[0].toString() + ", remainder = "
                                 + quotRemdFact[1].toString() + ", factor = "
                                 + quotRemdFact[2].toString());
        */
            } else if (oper.startsWith("/")) {
                BigVector[] quotRemd = vect1.divideAndRemainder(vect2);
                System.out.println(quotRemd[0].toString() + ", remainder = "
                                 + quotRemd[1].toString() );
            } // if oper
        } // more than 1 argument
    } // main

} // BigVector
