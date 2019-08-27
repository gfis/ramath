/*  RationalVector: a simple, short vector of BigRational numbers
 *  @(#) $Id: RationalVector.java 744 2011-07-26 06:29:20Z gfis $
 *  2019-08-27, Georg Fischer: copied from BigVector
 */
/*
 * Copyright 2019 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.BigRational;
import  org.teherba.ramath.linear.Vector;
import  java.math.BigInteger;
import  java.io.Serializable;

/** Class RationalVector is used in conjunction with {@link RationalMatrix} to
 *  implement some simple linear algebra operations on vectors
 *  and square matrices of {@link BigRational} numbers.
 *  @author Dr. Georg Fischer
 */
public class RationalVector extends Vector implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: RationalVector.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging level: 0 = none, 1 = moderate, 2 = more, 3 = most */
    private int debug = 2;

    /*-------------- class properties -----------------------------*/

    /** a one-dimensional array of numbers */
    protected BigRational[] vector;
    /** number of elements in <em>vector</em> */
    // inherited: protected int vecLen;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public RationalVector() {
        super();
    } // no-args Constructor

    /** Constructor for a RationalVector of some length
     *  @param numElems number of elements
     */
    public RationalVector(int numElems) {
        vecLen = numElems;
        vector = new BigRational[vecLen];
    } // Constructor(int)

    /** Constructor for a constant RationalVector of some length
     *  @param numElems number of elements
     *  @param value constant for all numerators; the denominators are 1.
     */
    public RationalVector(int numElems, BigInteger value) {
        vecLen = numElems;
        vector = new BigRational[vecLen];
        for (int itup = 0; itup < vecLen; itup ++) {
            set(itup, BigRational.valueOf(value, BigInteger.ONE));
        } // for itup
    } // Constructor(int, BigInteger)

    /** Constructor for a RationalVector from a tuple of integers
     *  @param tuple array of integers
     */
    public RationalVector(int[] tuple) {
        vecLen = tuple.length;
        vector = new BigRational[vecLen];
        for (int itup = 0; itup < vecLen; itup ++) {
            set(itup, BigRational.valueOf(tuple[itup], 1));
        } // for itup
    } // Constructor(int[])

    /** Constructor for a RationalVector from a {@link Vector} of integers
     *  @param tuple Vector
     */
    public RationalVector(BigVector tuple) {
        vecLen = tuple.size();
        vector = new BigRational[this.vecLen];
        for (int itup = 0; itup < vecLen; itup ++) {
            set(itup, BigRational.valueOf(tuple.getBig(itup), BigInteger.ONE));
        } // for itup
    } // Constructor(BigVector)

    /** Constructor for a RationalVector from an array of Strings
     *  of the form "num[/ den]".
     *  @param numElems number of elements
     *  @param iarg starting index in <em>args</em>
     *  @param args array of numbers as strings
     */
    public RationalVector(int numElems, int iarg, String[] args) {
        this(numElems);
        int ivect = 0;
        while (ivect < vecLen) {
            vector[ivect] = BigRational.ZERO;
            try {
                vector[ivect] = new BigRational(args[iarg ++]);
            } catch (Exception exc) {
            }
            ivect ++;
        } // while ivect
    } // Constructor(3)

    // inherited: clone

    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Sets the debugging level
     *  @param debug 0 = none, 1 = some , 2 = more
     */
    public void setDebug(int debug) {
        this.debug = debug;
    } // setDebug

    /** Returns an element of the Vector
     *  @param icol number of the element (zero based)
     *  @return a number
     */
    public BigRational getRat(int icol) {
        return vector[icol];
    } // getRat

    /** Sets an element of the RationalVector
     *  @param icol number of the element (zero based)
     *  @param value a number
     */
/*
    public void setRat(int icol, BigRational value) {
        vector[icol] = value;
    } // setRat
*/
    /** Sets an element of the RationalVector
     *  @param icol number of the element (zero based)
     *  @param value a small number
     */
    public void set(int icol, BigRational value) {
        vector[icol] = value;
    } // set

    /** Gets the values of <em>this</em> {@link RationalVector} as an <em>BigInteger</em> array.
     *  @return array of BigIntegers
     */
    public BigRational[] getRationalValues() {
        return vector;
    } // getRationalValues

    // inherited: size
    /*-------------- lightweight derived methods -----------------------------*/

    /** Equality of 2 RationalVectors
     *  @param vect2 compare <em>this</em> RationalVector with it
     *  @return whether the 2 vectors are equal
     */
    public boolean equals(RationalVector vect2) {
        boolean result = true;
        if (vect2.size() == this.vecLen) {
            int ielem = 0;
            while (ielem < this.vecLen && this.getRat(ielem).equals(vect2.getRat(ielem))) {
                ielem ++;
            } // while ielem
            result = ielem == this.vecLen; // false if the loop stopped before because of a difference
        } else {
            throw new IllegalArgumentException("cannot compare two vectors of different size " + this.vecLen);
        }
        return result;
    } // equals

    /** Whether there is any zero element in the RationalVector
     *  @return false if all elements are non-zero
     */
    @Override
    public boolean hasZero() {
        boolean result = false;
        int ielem = 0;
        while (! result && ielem < this.vecLen) {
            result = this.getRat(ielem).equals(BigRational.ZERO);
            ielem ++;
        } // while ielem
        return result;
    } // hasZero

    /** Gets the (first) position of an element in <em>this</em> RationalVector.
     *  @param elem search for this element
     *  @return index &gt;= 0 of <em>elem</em> in <em>this</em> RationalVector, or -1 if not found
     */
    public int indexOf(BigRational elem) {
        int result = -1;
        int ielem = 0;
        while (result < 0 && ielem < this.vecLen) {
            if (elem.equals(this.getRat(ielem))) {
                result = ielem;
            }
            ielem ++;
        } // while ielem
        return result;
    } // indexOf

    // inherited: contains

    /** Returns a String representation of the RationalVector
     *  @return a list of the form "[n1,n2,n3]"
     */
    @Override
    public String toString() {
        return toString(",");
    } // toString()
    
    /** Returns a String representation of the RationalVector
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
            for (int icol = 0; icol < vecLen; icol ++) {
                result.append(String.format(" %-3s", getRat(icol)));
            } // for icol
        } else if (formatSpec.indexOf('%') >= 0) { // printf spec
            for (int icol = 0; icol < vecLen; icol ++) {
                result.append(String.format(formatSpec, getRat(icol)));
            } // for icol
        } else { 
            if (formatSpec.indexOf(sep) >= 0) {
                result.append('[');
            }
            for (int icol = 0; icol < vecLen; icol ++) {
                if (icol > 0) {
                    result.append(formatSpec);
                }
                result.append(String.valueOf(getRat(icol)));
            } // for icol
            if (formatSpec.indexOf(sep) >= 0) {
                result.append(']');
            }
        }
        return result.toString();
    } // toString()
    
    /*-------------- arithmetic operations -------------------------*/

    /** Gets a new RationalVector which is a multiple of <em>this</em> RationalVector.
     *  @param scale multiply by this integer (maybe negative or zero)
     *  @return this * scale,
     *  that is a RationalVector where each element is multiplied by <em>scale</em>
     */
/*
    public RationalVector multiply(long scale) {
        RationalVector result = new RationalVector(vecLen);
        int ielem = 0;
        while (ielem < vecLen) {
            result.set(ielem, getBig(ielem).multiply(BigRational.valueOf(scale));
            ielem ++;
        } // while ielem
        return result;
    } // multiply(int)
*/
    /** Gets a new RationalVector which is the negative <em>this</em> RationalVector.
     *  @return a RationalVector where each original element is multiplied by <em>-1</em>
     */
    public RationalVector negate() {
        RationalVector result = new RationalVector(vecLen);
        int ielem = 0;
        while (ielem < vecLen) {
            result.set(ielem, getRat(ielem).negate());
            ielem ++;
        } // while ielem
        return result;
    } // negate()

    /** Determines the quotient of the first elements of <em>this</em> (numerator of the g.f.)
     *  and <em>vect2</em> (the division may not have a rest, and the first element of vect2 must be ONE),
     *  subtracts the product of <em>vect2 * quotient</em>
     *  from <em>this</em> (eventually after padding the latter with zeroes),
     *  removes the first element of <em>this</em> (this is zero then),
     *  and returns the quotient.
     *  @param vect2 the divisor (denominator of the g.f.)
     *  @return quotient, coefficient of the Taylor series
     */
/*
    public BigInteger divisionStep(RationalVector vect2) {
        BigInteger divisor    = vect2.getBig(0);
        if (divisor.equals(BigInteger.ZERO)) {
            System.out.println("# assertion in RationalVector: divisor is zero: num="
                    + this.toString() + ", den=" + vect2.toString());
            return BigInteger.ZERO;
        }
        if (this.size() == 0) {
            System.out.println("# assertion in RationalVector: empty vector");
            return BigInteger.ZERO;
        }
        BigInteger[] quotRest = this.getBig(0).divideAndRemainder(divisor);
        BigInteger result     = quotRest[0];
        BigInteger quotient   = result.negate();
        if (! quotRest[1].equals(BigInteger.ZERO)) {
            System.out.println("# assertion in RationalVector: no even division: num="
                    + this.toString() + ", den=" + vect2.toString());
            return BigInteger.ZERO
        }
        int len1 = this.size();
        int len2 = vect2.size();
        if (len2 > len1) {
            len1 = len2; // the maximum of both lengths
        }
        RationalVector vect1 = new RationalVector(len1 - 1); // will replace 'this' in the end
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
    } // divisionStep(RationalVector)
*/
    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        RationalVector vect1 = new RationalVector();
        RationalVector vect2 = new RationalVector();
        if (args.length == 0) {
        } else { // arguments
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.startsWith("-div")) {
            } else if (opt.startsWith("-mult")) {
            } else if (opt.startsWith("-sub")) {
            } else if (opt.startsWith("-read")) {
            } // if opt
        } // more than 1 argument
    } // main

} // RationalVector
