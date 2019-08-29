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
 *  and arrays of vectors of {@link BigRational} numbers.
 *  When the indices are interpreted as powers of x, a RationalVector
 +  represents a univariate polynomial with rational coefficients.
 *  It is maintained that the highest element of every vector is never zero,
 *  except for element [0], which is always present.
 *  @author Dr. Georg Fischer
 */
public class RationalVector extends Vector implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: RationalVector.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging level: 0 = none, 1 = moderate, 2 = more, 3 = most */
    private int debug = 0;

    /*-------------- class properties -----------------------------*/

    /** a one-dimensional array of numbers */
    protected BigRational[] vector;
    /** number of elements in <em>vector</em> */
    // inherited: protected int vecLen;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor - a single zero
     */
    public RationalVector() {
        vecLen = 1;
        vector = new BigRational[] { BigRational.ZERO };
    } // no-args Constructor

    /** Constructor for a RationalVector of some length, filled with zeroes
     *  @param numElems number of elements
     */
    public RationalVector(int numElems) {
        vecLen = numElems;
        vector = new BigRational[vecLen];
        int icol = 0;
        while (icol < vecLen) {
            set(icol, BigRational.ZERO);
            icol ++;
        } // while icol
    } // Constructor(int)

    /** Constructor for a constant RationalVector of some length, filled with a value
     *  @param numElems number of elements
     *  @param value constant for all numerators; the denominators are 1.
     */
    public RationalVector(int numElems, BigInteger value) {
        this(numElems);
        int icol = 0;
        while (icol < vecLen) {
            set(icol, BigRational.valueOf(value, BigInteger.ONE));
            icol ++;
        } // while icol
    } // Constructor(int, BigInteger)

    /** Constructor for a RationalVector from a tuple of integers
     *  @param tuple array of integers
     */
    public RationalVector(int[] tuple) {
        this(tuple.length);
        int icol = 0;
        while (icol < vecLen) {
            set(icol, BigRational.valueOf(tuple[icol], 1));
            icol ++;
        } // while icol
    } // Constructor(int[])

    /** Constructor for a RationalVector from a {@link Vector} of integers
     *  @param tuple Vector
     */
    public RationalVector(BigVector tuple) {
        this(tuple.size());
        int icol = 0;
        while (icol < vecLen) {
            set(icol, BigRational.valueOf(tuple.getBig(icol), BigInteger.ONE));
            icol ++;
        } // while icol
    } // Constructor(BigVector)

    /** Constructor for a RationalVector from a String in vector notation
     *  @param vecNotation String of the form "[1/2,2/3]"
     *  @param args array of numbers as strings
     */
    public RationalVector(String vecNotation) {
        this();
        String[] parts = vecNotation.replaceAll("[\\[\\]\\s]", "") // remove "[", "]" and whitespece
                .split("\\,");
        vecLen = parts.length;
        vector = new BigRational[vecLen];
        int icol = 0;
        while (icol < vecLen) {
            vector[icol] = new BigRational(parts[icol]);
            icol ++;
        } // while icol
    } // Constructor(3)

    /** Constructor for a RationalVector from an array of Strings
     *  of the form "num[/ den]".
     *  @param numElems number of elements
     *  @param iarg starting index in <em>args</em>
     *  @param args array of numbers as strings
     */
    public RationalVector(int numElems, int iarg, String[] args) {
        this(numElems);
        int icol = 0;
        while (icol < vecLen) {
            vector[icol] = new BigRational(args[iarg ++]);
            icol ++;
        } // while icol
    } // Constructor(3)

    /** Deep copy of the RationalVector and its properties.
     *  @return independant copy of the Vector
     */
    public RationalVector clone() {
        RationalVector result = new RationalVector(size());
        int icol = 0;
        while (icol < size()) {
            result.set(icol, getRat(icol));
            icol ++;
        } // while icol
        return result;
    } // clone

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

    /** Returns an element of the Vector
     *  @param icol number of the element (zero based)
     *  @return a number
     */
    public BigRational getRatLast() {
        return getRat(size() - 1);
    } // getRatLast

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
        if (vect2.size() == size()) {
            int icol = 0;
            while (icol < size() && getRat(icol).equals(vect2.getRat(icol))) {
                icol ++;
            } // while icol
            result = icol == size(); // false if the loop stopped before because of a difference
        } else {
            result = false;
        }
        return result;
    } // equals

    /** Whether there is any zero element in the RationalVector
     *  @return false if all elements are non-zero
     */
    @Override
    public boolean hasZero() {
        boolean result = false;
        int icol = 0;
        while (! result && icol < size()) {
            result = getRat(icol).equals(BigRational.ZERO);
            icol ++;
        } // while icol
        return result;
    } // hasZero

    /** Gets the (first) position of an element in <em>this</em> RationalVector.
     *  @param elem search for this element
     *  @return index &gt;= 0 of <em>elem</em> in <em>this</em> RationalVector, or -1 if not found
     */
    public int indexOf(BigRational elem) {
        int result = -1;
        int icol = 0;
        while (result < 0 && icol < size()) {
            if (elem.equals(getRat(icol))) {
                result = icol;
            }
            icol ++;
        } // while icol
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
    /** Shrinks <em>this</em> RationalVector, that is removes zeroes at the tail.
     *  @return the shrinked RationalVector
     */
    public RationalVector shrink() {
        int icol = size() - 1;
        while (icol > 0 && getRat(icol).equals(BigRational.ZERO)) {
            icol --;
        } // while icol
        RationalVector result = new RationalVector(icol + 1);
        while (icol >= 0) {
            result.set(icol, getRat(icol));
            icol --;
        } // while icol
        return result;
    } // shrink

    /** Gets a new RationalVector which is the sum of <em>this</em> and a second
     *  RationalVector, which may have a differing length.
     *  @param vect2 the RationalVector to be added to <em>this</em>.
     *  @return this + vect2
     */
    public RationalVector add(RationalVector vect2) {
        int len1 = size();
        int len2 = vect2.size();
        int lenr = len1 > len2 ? len1 : len2;
        RationalVector result = new RationalVector(lenr);
        int icol = 0;
        while (icol < lenr) {
            BigRational rat1 = icol >= len1 ? BigRational.ZERO : getRat(icol);
            result.set(icol,  icol >= len2 ? rat1 : rat1.add(vect2.getRat(icol)));
            icol ++;
        } // while icol
        return result.shrink();
    } // add(BigRational)

    /** Gets a new RationalVector which is the difference of <em>this</em> and a second
     *  RationalVector, which may have a differing length.
     *  @param vect2 the RationalVector to be subtracted from <em>this</em>.
     *  @return this - vect2
     */
    public RationalVector subtract(RationalVector vect2) {
        int len1 = size();
        int len2 = vect2.size();
        int lenr = len1 > len2 ? len1 : len2;
        RationalVector result = new RationalVector(lenr);
        int icol = 0;
        while (icol < lenr) {
            BigRational rat1 = icol >= len1 ? BigRational.ZERO : getRat(icol);
            result.set(icol,  icol >= len2 ? rat1 : rat1.subtract(vect2.getRat(icol)));
            icol ++;
        } // while icol
        return result.shrink();
    } // subtract(BigRational)

    /** Gets a new RationalVector which is a multiple of <em>this</em> RationalVector.
     *  @param scale multiply by this BigRational
     *  @return this * scale,
     *  that is a RationalVector where each element is multiplied by <em>scale</em>
     */
    public RationalVector multiply(BigRational scale) {
        int len1 = size();
        int lenr = len1;
        RationalVector result = new RationalVector(len1);
        int icol = 0;
        while (icol < lenr) {
            result.set(icol, getRat(icol).multiply(scale));
            icol ++;
        } // while icol
        return result.shrink();
    } // multiply(BigRational)

    /** Gets a new RationalVector which is the product of <em>this</em> and a second
     *  RationalVector, which may have a differing length.
     *  @param vect2 multiply by this RationalVector
     *  @return this * vect2, that is a RationalVector
     */
    public RationalVector multiply(RationalVector vect2) {
        int len1 = size();
        int len2 = vect2.size();
        int lenr = len1 + len2 - 1; // [x^0..x^5]#6 * [x^0..x^7]#8 => [0..x^12]#13
        RationalVector result = new RationalVector(lenr, BigInteger.ZERO);
        int icol1 = 0;
        while (icol1 < len1) {
            int icol2 = 0;
            while (icol2 < len2) {
                int icolr = icol1 + icol2;
                result.set(icolr, result.getRat(icolr)
                        .add(getRat(icol1).multiply(vect2.getRat(icol2))));
                icol2 ++;
            } // while icol2
            icol1 ++;
        } // while icol1
        return result.shrink();
    } // multiply(RationalVector)

    /** Gets a new RationalVector which is the negative of <em>this</em> RationalVector.
     *  @return a RationalVector where each original element is multiplied by <em>-1</em>
     */
    public RationalVector negate() {
        int len1 = size();
        int lenr = len1;
        RationalVector result = new RationalVector(len1);
        int icol = 0;
        while (icol < lenr) {
            result.set(icol, getRat(icol).negate());
            icol ++;
        } // while icol
        return result;
    } // negate()

    /** Gets the reversed order of <em>this</em> RationalVector.
     *  @return the original RationalVector read backwards
     */
    public RationalVector reverse() {
        int len1 = size();
        int lenr = len1;
        RationalVector result = new RationalVector(len1);
        int icol = 0;
        while (icol < lenr) {
            result.set(icol, getRat(len1 - 1 - icol));
            icol ++;
        } // while icol
        return result;
    } // reverse()

    /** Gets the quotient and the remainder from a division of <em>this</em>
     *  and a second RationalVector, which  may have a differing length.
     *  @param vect2 the divisor
     *  @return [quotient, remainder]
     */
    public RationalVector[] divideAndRemainder(RationalVector vect2) {
       if (debug >= 1) {
            System.out.println("divideAndRemainder: " + this.toString() 
                    + " / " + vect2.toString());
        }
        BigRational last2 = vect2.getRatLast();
        if (last2.equals(BigRational.ZERO)) { // can only be a single zero
            System.out.println("# assertion in RationalVector: divisor is zero: num="
                    + toString() + ", den=" + vect2.toString());
            return new RationalVector[] { new RationalVector(), new RationalVector() };
        }
        RationalVector quot = new RationalVector(); // [0] = zero
        RationalVector remd = this.clone();
        int lenr = remd.size();
        int len2 = vect2.size();
        int lenq = lenr >= len2 ? lenr - len2 + 1: 0;
        if (lenq > 1) {
            quot = new RationalVector(lenq);
        }
       if (debug >= 1) {
            System.out.println("divideAndRemainder: quot=" + this.toString() 
                    + " / " + vect2.toString());
        }
        while (lenr >= len2) {
            int iremd = remd .size() - 1;
            int icol2 = vect2.size() - 1;
            BigRational factor = remd.getRat(iremd).divide(last2);
            quot.set(lenr - len2, factor);
            if (debug >= 1) {
                System.out.println("quot[" + (lenr - len2) + "] = " + factor.toString() 
                        + ", remd = " + remd.toString());
            }
            while (iremd >= 0) {
                if (icol2 >= 0) { 
                    remd.set(iremd, remd.getRat(iremd).subtract(vect2.getRat(icol2).multiply(factor)));
                } else { // keep remd[iremd]
                }
                iremd --;
                icol2 --;
            } // while iremd
            remd = remd.shrink();
            lenr = remd.size();
        } // while lenr
        return new RationalVector[] { quot, remd };
    } // divisideAndRemainder(RationalVector)
    
    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments: [vect1] oper [vect2] (cf. test/linear.tests)
     */
    public static void main(String[] args) {
        int iarg = 0;
        RationalVector vect1 = new RationalVector();
        RationalVector vect2 = new RationalVector();
        RationalVector vectq = new RationalVector();
        RationalVector vectr = new RationalVector();
        if (args.length == 0) {
            System.out.println("usage: java -cp dist/ramath.jar org.teherba.ramath.linear.RationalVector \"[vect1] oper [vect2]\"");
            System.out.println("    oper= + - * /");
        } else { // arguments
            String expr = args[iarg ++];
            String[] parts = expr.split("\\s+"); // [vect1] oper [vect2]
            vect1 = new RationalVector(parts        [0]);
            String oper = parts                             [1];
            BigRational brat2 = new BigRational("0");
            if (parts.length >= 3) {
                if (parts[2].startsWith("[")) {
                    vect2 = new RationalVector(parts             [2]);
                } else {
                    brat2 = new BigRational(parts                [2]);
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
                    System.out.println(vect1.multiply(brat2).toString());
                }
            } else if (oper.startsWith("/")) {
                RationalVector[] quotRemd = vect1.divideAndRemainder(vect2);
                System.out.println(quotRemd[0].toString() + ", remainder = "
                                 + quotRemd[1].toString() );
            } // if oper
        } // more than 1 argument
    } // main

} // RationalVector
