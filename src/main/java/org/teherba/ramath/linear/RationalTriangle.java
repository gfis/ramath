/*  RationalTriangle: a lower left triangle of BigRational numbers
 *  @(#) $Id: RationalTriangle.java 744 2011-07-26 06:29:20Z gfis $
 *  2019-09-19, Georg Fischer: copied from RationalVector
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
import  org.teherba.ramath.linear.RationalVector;
import  java.math.BigInteger;
import  java.io.Serializable;

/** Class RationalTriangle is used to
 *  implement some simple linear algebraic operations on
 *  trianlges of {@link BigRational} numbers.
 *  When the indices are interpreted as powers of two variables x and y,
 *  a RationalTriangle
 *  represents a univariate polynomial with rational coefficients.
 *  It is maintained that the highest element of every vector is never zero,
 *  except for element [0], which is always present.
 *  An example for a triangle is {@link https://oeis.org/A118981 A118981} with the 
 *  generating function: (1 + x^2)/(1-x-x^2 - x*y)  (columns in reverse order)
 *  <pre>
 *  1;                      x^0*y^0
 *  1, 1;                   x^1*y^0     x^1*y^1
 *  1, 2, 3;                x^2*y^0     x^2*y^1     x^2*y^2
 *  1, 3, 6, 4;             x^3*y^0     x^3*y^1     x^3*y^2     x^3*y^3
 *  1, 4, 10, 12, 7;
 *  1, 5, 15, 25, 25, 11;
 *  </pre>
 *  @author Dr. Georg Fischer
 */
public class RationalTriangle extends RationalVector implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: RationalTriangle.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging level: 0 = none, 1 = moderate, 2 = more, 3 = most */
    private static int debug = 0;

    /*-------------- class properties -----------------------------*/

    /** a one-dimensional array of numbers */
    // protected BigRational[] vector;
    /** number of elements in <em>vector</em> */
    // inherited: protected int vecLen;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor - a single zero
     */
    public RationalTriangle() {
        super();
    } // no-args Constructor

    /** Constructor for a RationalTriangle of some length, filled with zeroes
     *  @param numElems number of elements
     */
    public RationalTriangle(int numElems) {
        super(numElems);
    } // Constructor(int)

    /** Constructor for a constant RationalTriangle of some length, filled with a value
     *  @param numElems number of elements
     *  @param value constant for all numerators; the denominators are 1.
     */
    public RationalTriangle(int numElems, BigInteger value) {
        super(numElems, value);
    } // Constructor(int, BigInteger)

    /** Constructor for a RationalTriangle from a tuple of integers
     *  @param tuple array of integers
     */
    public RationalTriangle(int[] tuple) {
        super(tuple);
    } // Constructor(int[])

    /** Constructor for a RationalTriangle from a {@link Vector} of integers
     *  @param tuple Vector
     */
    public RationalTriangle(BigVector tuple) {
        super(tuple);
    } // Constructor(BigVector)

    /** Constructor for a RationalTriangle from a String in vector notation
     *  @param vecNotation String of the form "[1/2,2/3]"
     *  @param args array of numbers as strings
     */
    public RationalTriangle(String vecNotation) {
        super(vecNotation);
    } // Constructor(3)

    /** Constructor for a RationalTriangle from an array of Strings
     *  of the form "num[/ den]".
     *  @param numElems number of elements
     *  @param iarg starting index in <em>args</em>
     *  @param args array of numbers as strings
     */
    public RationalTriangle(int numElems, int iarg, String[] args) {
        super(numElems, iarg, args);
    } // Constructor(3)

    /** Deep copy of the RationalVector and its properties.
     *  @return independant copy of the Vector
     */
    @Override
    public RationalTriangle clone() {
        return (RationalTriangle) super.clone();
    } // clone

    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Shrinks <em>this</em> RationalTrianlge, that is removes zeroes at the tail.
     *  @return the shrinked RationalTriangle
     */
    @Override
    public RationalTriangle shrink() {
        return (RationalTriangle) super.shrink();
    } // shrink

    /** Sets the debugging level
     *  @param debug 0 = none, 1 = some , 2 = more
     */
    public void setDebug(int debug) {
        this.debug = debug;
    } // setDebug

    // getRat(int icol) is inherited
    // set(int icol, BigRational value) is inherited
    // getRationalValues() is inherited
    // size is inherited
    // hasZero is inherited
    // indexOf is inherited
    // contains is inherited

    /** Returns a String representation of the RationalTriangle
     *  @return a list of the form "[n1,n2,n3]"
     */
    @Override
    public String toString() {
        return toString(",");
    } // toString()

    /** Returns a String representation of the RationalTriangle
     *  @param formatSpec separator or printf spec; "%3d" is converted to "%-3s".
     *  @return a separated list of BigIntegers
     */
    @Override
    public String toString(String formatSpec) {
        if (formatSpec.matches("\\s*\\%\\d*d")) {
            formatSpec = formatSpec.replaceAll("\\%", "%-").replaceAll("d\\Z", "s");
        }
        String sep = ",";
        boolean vecNotation = formatSpec.indexOf(sep) >= 0;
        StringBuffer result = new StringBuffer(256);
        if (vecNotation) {
            result.append('[');
        }
        int icol = 0;
        int rowLen = 1;
        int irow = 0;
        while (icol < vecLen) {
            if (icol > 0) {
                result.append(formatSpec);
            }
            if (irow == 0 && vecNotation) {
                result.append('[');
            }
            result.append(String.valueOf(getRat(icol)));
            icol ++;
            irow ++;
            if (irow >= rowLen && vecNotation) {
                result.append(']');
                rowLen ++;
                irow = 0;
            }
        } // while icol
        if (vecNotation) {
            result.append(']');
        }
        return result.toString();
    } // toString()

    // shrink() is inherited

    /*-------------- arithmetic operations -------------------------*/
    /** Gets a new RationalVector which is the sum of <em>this</em> and a second
     *  RationalVector, which may have a differing length.
     *  @param vect2 the RationalTriangle to be added to <em>this</em>.
     *  @return this + vect2
     */
    public RationalTriangle add(RationalTriangle vect2) {
    	return (RationalTriangle) super.add(vect2);
    } // add(RationalTriangle)

    /** Gets a new RationalTriangle which is the difference of <em>this</em> and a second
     *  RationalTriangle, which may have a differing length.
     *  @param vect2 the RationalTriangle to be subtracted from <em>this</em>.
     *  @return this - vect2
     */
    public RationalTriangle subtract(RationalTriangle vect2) {
    	return (RationalTriangle) super.subtract(vect2);
    } // subtract(RationalTriangle)

    /** Gets a new RationalTriangle which is a multiple of <em>this</em> RationalTriangle.
     *  @param scale multiply by this BigRational
     *  @return this * scale,
     *  that is a RationalTriangle where each element is multiplied by <em>scale</em>
     */
    public RationalTriangle multiply(BigRational scale) {
    	return (RationalTriangle) super.multiply(scale);
    } // multiply(BigRational)

    /** Gets a new RationalTriangle which is a multiple of <em>this</em> RationalTriangle.
     *  @param scale multiply by this int
     *  @return this * scale,
     *  that is a RationalTriangle where each element is multiplied by <em>scale</em>
     */
    public RationalTriangle multiply(int scale) {
    	return (RationalTriangle) super.multiply(BigRational.valueOf(scale));
    } // multiply(int)
    
    /** Gets a new RationalTriangle which is the product of <em>this</em> and a second
     *  RationalTriangle, which may have a differing length.
     *  @param vect2 multiply by this RationalTriangle
     *  @return this * vect2, that is a RationalTriangle
     */
    public RationalTriangle multiply(RationalTriangle vect2) {
        int len1 = size();
        int len2 = vect2.size();
        int lenr = len1 + len2 - 1; // [x^0..x^5]#6 * [x^0..x^7]#8 => [0..x^12]#13
        RationalTriangle result = new RationalTriangle(lenr, BigInteger.ZERO);
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
    } // multiply(RationalTriangle)

    /** Gets a new RationalTriangle which is the negative of <em>this</em> RationalTriangle.
     *  @return a RationalTriangle where each original element is multiplied by <em>-1</em>
     */
    public RationalTriangle negate() {
    	return (RationalTriangle) super.negate();
    } // negate()

    /** Gets <em>this</em> RationalTriangle with all rows in reversed order.
     *  @return the original RationalTriangle read from right to left.
     */
    public RationalTriangle reverse() {
        int len1 = size();
        int lenr = len1;
        RationalTriangle result = new RationalTriangle(len1);
        int icol = 0;
        while (icol < lenr) {
            result.set(icol, getRat(len1 - 1 - icol));
            icol ++;
        } // while icol
        return result;
    } // reverse()

    /** Gets the quotient and the remainder from a division of <em>this</em>
     *  and a second RationalTriangle, which  may have a differing length.
     *  @param vect2 the divisor
     *  @return [quotient, remainder]
     */
    public RationalTriangle[] divideAndRemainder(RationalTriangle vect2) {
        BigRational last2 = vect2.getRatLast();
        if (last2.equals(BigRational.ZERO)) { // can only be a single zero
            System.out.println("# assertion in RationalTriangle: divisor is zero: num="
                    + toString() + ", den=" + vect2.toString());
            return new RationalTriangle[] { new RationalTriangle(), new RationalTriangle() };
        }
        RationalTriangle quot = new RationalTriangle(); // [0] = zero
        RationalTriangle remd = clone();
        int lenr = remd .size();
        int len2 = vect2.size();
        int lenq = lenr >= len2 ? lenr - len2 + 1 : 0;
        if (lenq > 1) {
            quot = new RationalTriangle(lenq);
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
        return new RationalTriangle[] { quot, remd };
    } // divideAndRemainder(RationalTriangle)

    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments: [vect1] oper [vect2] (cf. test/linear.tests)
     */
    public static void main(String[] args) {
        int iarg = 0;
        RationalTriangle vect1 = new RationalTriangle();
        RationalTriangle vect2 = new RationalTriangle();
        RationalTriangle vectq = new RationalTriangle();
        RationalTriangle vectr = new RationalTriangle();
        if (args.length == 0) {
            System.out.println("usage: java -cp dist/ramath.jar org.teherba.ramath.linear.RationalTriangle \"[vect1] oper [vect2]\"");
            System.out.println("    oper= + - * /");
        } else { // arguments
            String expr = args[iarg ++];
            String[] parts = expr.split("\\s+"); // [vect1] oper [vect2]
            vect1 = new RationalTriangle(parts        [0]);
            String oper = parts                             [1];
            BigRational brat2 = new BigRational("0");
            if (parts.length >= 3) {
                if (parts[2].startsWith("[")) {
                    vect2 = new RationalTriangle(parts             [2]);
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
                RationalTriangle[] quotRemd = vect1.divideAndRemainder(vect2);
                System.out.println(quotRemd[0].toString() + ", remainder = "
                                 + quotRemd[1].toString() );
            } // if oper
        } // more than 1 argument
    } // main

} // RationalTriangle
