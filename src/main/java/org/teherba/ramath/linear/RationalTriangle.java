/*  RationalTriangle: a lower left triangle of BigRational numbers
 *  @(#) $Id: RationalTriangle.java 744 2011-07-26 06:29:20Z gfis $
 *  2019-10-30: reduce
 *  2019-10-04: shifted multiplication
 *  2019-09-19, Georg Fischer: copied from RationalVector
 */
/*
 * Copyright 2019 Dr. Georg Fischer <dr.georg.fischer(at)gmail.com>
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
import  org.teherba.ramath.symbolic.Polynomial;
import  java.math.BigInteger;
import  java.io.Serializable;

/** Class RationalTriangle is used to
 *  implement some simple linear algebraic operations on
 *  triangles of {@link BigRational} numbers.
 *  When the indices are interpreted as exponents of two variables x and y,
 *  a RationalTriangle represents a bivariate polynomial with rational coefficients,
 *  where the exponent of y is always <= the exponent of x.
 *  An example for a triangle is {@link https://oeis.org/A118981 A118981} with the
 *  generating function: (1 + x^2)/(1-x-x^2 - x*y)  (columns in reverse order)
 *  <pre>
 *  1;                      x^0*y^0
 *  1, 1;                   x^1*y^0  x^1*y^1
 *  1, 2, 3;                x^2*y^0  x^2*y^1  x^2*y^2
 *  1, 3, 6, 4;             x^3*y^0  x^3*y^1  x^3*y^2  x^3*y^3
 *  1, 4, 10, 12, 7;        x^4*y^0  x^4*y^1  x^4*y^2  x^4*y^3  x^4*y^4
 *  1, 5, 15, 25, 25, 11;   x^5*y^0  x^5*y^1  x^5*y^2  x^5*y^3  x^5*y^4  x^5*y^5
 *  </pre>
 *  The central formula for the representation of a triangle is:
 *  <pre>
 *  ielem = (irow + 1) * irow / 2 + icol
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

    /** Constructor for a RationalTriangle with some number of rows, filled with zeroes
     *  @param nrows number of (complete) rows
     *  @param ncols number of columns (in last row)
     */
    public RationalTriangle(int nrows, int ncols) {
        super(linearIndex(nrows, ncols) + 1);
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

    /** Constructor for a RationalTriangle from a {@link RationalVector}
     *  @param vect vector which is the flat representation of the triangle
     */
    public RationalTriangle(RationalVector vect) {
        this(vect.vecLen);
        this.vector = vect.vector;
    } // Constructor(RationalVector)

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
        return new RationalTriangle(super.clone());
    } // clone

    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Shrinks <em>this</em> RationalTrianlge, that is removes zeroes at the tail.
     *  @return the shrinked RationalTriangle
     */
    @Override
    public RationalTriangle shrink() {
        return new RationalTriangle(super.shrink());
    } // shrink

    /** Sets the debugging level
     *  @param level 0 = none, 1 = some , 2 = more
     */
    public static void setDebug(int level) {
        debug = level;
    } // setDebug

    // getRat(int icol) is inherited
    // set(int icol, BigRational value) is inherited
    // getRationalValues() is inherited
    // size is inherited
    // hasZero is inherited
    // indexOf is inherited
    // contains is inherited

    /** Returns the number of (complete) rows of the triangle.
     *  @return rowSize such that size = (rowNo + 1) * rowNo / 2
     */
    public int getRowSize() {
        int len = 1;
        int irow = 0;
        while (len < size()) {
            irow ++;
            len += irow + 1;
        }
        return irow + 1;
    } // getRowSize

    /** Returns the linearized index of a triangle's element
     *  @param irow row    number (x exponent) of the element (zero based)
     *  @param icol column number (y exponent) of the element (zero based)
     *  @return rowSize such that size = (rowNo + 1) * rowNo / 2
     */
    public static int linearIndex(int irow, int icol) {
        return (irow + 1) * irow / 2 + icol;
    } // linearIndex

    /** Returns the row and column number from a linearized index of a triangle's element
     *  @param ielem linear index of the element
     *  @return [row, column] of the element (zero based)
     */
    public static int[] triangleIndex(int ielem) {
        int len = 1;
        int irow = 1;
        while (len <= ielem) {
            irow ++;
            len += irow;
        } // while len
        return new int[] { irow - 1, ielem - (len - irow) };
    } // indexTriangle

    /** Returns an element of the triangle.
     *  @param irow row    number (x exponent) of the element (zero based)
     *  @param icol column number (y exponent) of the element (zero based)
     *  @return a number
     */
    public BigRational getTri(int irow, int icol) {
        int ielem = (irow + 1) * irow / 2 + icol;
        return icol <= irow && ielem < size() ? vector[ielem] : BigRational.ZERO;
    } // getTri

    /** Sets an element of the triangle.
     *  @param irow row    number (x exponent) of the element (zero based)
     *  @param icol column number (y exponent) of the element (zero based)
     *  @param value rational number to be set
     */
    public void setTri(int irow, int icol, BigRational value) {
        int ielem = (irow + 1) * irow / 2 + icol;
        vector[ielem] = value;
    } // setTri

    /** Whether the RationalVector is empty or consists of a single constant zero.
     *  @return true if zero
     */
    @Override
    public boolean isZero() {
        int len = size();
        return len == 0 || (len == 1 && getTri(0, 0).equals(BigRational.ZERO));
    } // isZero

    /** Returns a String representation of the RationalTriangle
     *  @return a list of the form "[[n00],[n10,n11],[n20,n21,n22],...]"
     */
    @Override
    public String toString() {
        return toString(",");
    } // toString()

    /** Returns a String representation of the RationalTriangle
     *  @param formatSpec separator
     *  @return a separated list of BigIntegers
     */
    @Override
    public String toString(String formatSpec) {
        String sep = formatSpec;
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        int icol = 0;
        int rowLen = 1;
        int irow = 0;
        while (icol < size()) {
            if (icol > 0) {
                result.append(formatSpec);
            }
            if (irow == 0) {
                result.append('[');
            }
            result.append(String.valueOf(getRat(icol)));
            icol ++;
            irow ++;
            if (irow >= rowLen) {
                result.append(']');
                rowLen ++;
                irow = 0;
            }
        } // while icol
        result.append(']');
        return result.toString();
    } // toString(String)

    /** Returns the {@link Polynomial} in two variables x, y
     *  which is represented by <em>this</em> RationalTriangle
     *  @return a Polynomial
     */
    public Polynomial toPolynomial() {
        StringBuffer result = new StringBuffer(256);
        int ielem = 0;
        int irow = 0;
        while (ielem < size()) {
            int icol = 0;
            while (icol <= irow) {
                result.append("+");
                result.append(getTri(irow, icol));
                result.append("*x^");
                result.append(irow);
                result.append("*y^");
                result.append(icol);
                ielem ++;
                icol ++;
            } // while icol
            irow ++;
        } // while irow
        return new Polynomial(result.toString().replaceAll("\\+\\-", "-"));
    } // toPolynomial()

    // shrink() is inherited

    /*-------------- arithmetic operations -------------------------*/
    /** Gets a new RationalVector which is the sum of <em>this</em> and a second
     *  RationalVector, which may have a differing length.
     *  @param vect2 the RationalTriangle to be added to <em>this</em>.
     *  @return this + vect2
     */
    public RationalTriangle add(RationalTriangle vect2) {
        return new RationalTriangle(super.add(vect2));
    } // add(RationalTriangle)

    /** Gets a new RationalTriangle which is the difference of <em>this</em> and a second
     *  RationalTriangle, which may have a differing length.
     *  @param vect2 the RationalTriangle to be subtracted from <em>this</em>.
     *  @return this - vect2
     */
    public RationalTriangle subtract(RationalTriangle vect2) {
        return new RationalTriangle(super.subtract(vect2));
    } // subtract(RationalTriangle)

    /** Gets a new RationalTriangle which is a multiple of <em>this</em> RationalTriangle.
     *  @param scale multiply by this BigRational
     *  @return this * scale,
     *  that is a RationalTriangle where each element is multiplied by <em>scale</em>
     */
    public RationalTriangle multiply(BigRational scale) {
        return new RationalTriangle(super.multiply(scale));
    } // multiply(BigRational)

    /** Gets a new RationalTriangle which is a shifted multiple of <em>this</em> RationalTriangle.
     *  @param scale multiply by this BigRational
     *  @param xexp exponent for x factor
     *  @param yexp exponent for y factor
     *  @return <em>this * scale * x^xexp * y^yexp</em>.
     */
    public RationalTriangle multiply(BigRational scale, int xexp, int yexp) {
        int nrow1 = getRowSize();
        RationalTriangle result = new RationalTriangle(nrow1 + xexp, nrow1 + yexp);
        int irow = 0;
        while (irow < nrow1) {
            int icol = 0;
            while (icol <= irow) {
                result.setTri(irow + xexp, icol + yexp, getTri(irow, icol).multiply(scale));
                icol ++;
            } // while icol
            irow ++;
        } // while irow
        return result.shrink();
    } // multiply(BigRational)

    /** Gets a new RationalTriangle which is a multiple of <em>this</em> RationalTriangle.
     *  @param scale multiply by this int
     *  @return this * scale,
     *  that is a RationalTriangle where each element is multiplied by <em>scale</em>
     */
    public RationalTriangle multiply(int scale) {
        return new RationalTriangle(super.multiply(BigRational.valueOf(scale)));
    } // multiply(int)

    /** Gets a new RationalTriangle which is the product of <em>this</em>
     *  and a second RationalTriangle which may have a different size.
     *  Each element of this triangle is multiplied with each element
     *  of the second triangle, and the product is added to the
     *  element which corresponds to the exponent sums of the variables
     *  involved in the two elements.
     *  If the last row is not complete, the remaining elements are assumed to be zero.
     *  @param triang2 multiply by this RationalTriangle
     *  @return this * triang2
     */
    public RationalTriangle multiply(RationalTriangle triang2) {
        int rsize1 = this   .getRowSize();
        int rsize2 = triang2.getRowSize();
        int rsizer = rsize1 + rsize2 - 1;
        if (debug >= 1) {
            System.out.println("\nrsize1=" + rsize1 + ", rsize2=" + rsize2 + ", rsizer=" + rsizer);
        }
        RationalTriangle result = new RationalTriangle((rsizer + 1) * rsizer / 2, BigInteger.ZERO);
        int irow1 = 0;
        while (irow1 < rsize1) {
            int icol1 = 0;
            while (icol1 <= irow1) {
                int irow2 = 0;
                while (irow2 < rsize2) {
                    int icol2 = 0;
                    while (icol2 <= irow2) {
                        int irowr = irow1 + irow2;
                        int icolr = icol1 + icol2;
                        if (debug >= 2) {
                            System.out.println(   "[" + irow1 + "," + icol1
                                    +        "] *  [" + irow2 + "," + icol2
                                    +        "] -> [" + irowr + "," + icolr + "]"
                                    );
                        }
                        result.setTri(irowr, icolr, result.getTri(irowr, icolr)
                                .add(             getTri(irow1, icol1)
                                .multiply(triang2.getTri(irow2, icol2))));

                        icol2 ++;
                    } // while icol2
                    irow2 ++;
                } // while irow2
                icol1 ++;
            } // while icol1
            irow1 ++;
        } // while irow1
        return result;
    } // multiply(RationalTriangle)

    /** Gets a new RationalTriangle which is the negative of <em>this</em> RationalTriangle.
     *  @return a RationalTriangle where each original element is multiplied by <em>-1</em>
     */
    public RationalTriangle negate() {
        return new RationalTriangle(super.negate());
    } // negate()

    /** Gets the quotient and the remainder from a division of <em>this</em>
     *  and a second RationalTriangle, which  may have a differing length.
     *  @param triang2 the divisor
     *  @return [quotient, remainder]
     */
    public RationalTriangle[] divideAndRemainder(RationalTriangle triang2) {
        BigRational last2 = triang2.getRatLast();
        if (last2.equals(BigRational.ZERO)) { // can only be a single zero
            System.out.println("# assertion in RationalTriangle: divisor is zero: num="
                    + toString() + ", den=" + triang2.toString());
            return new RationalTriangle[] { new RationalTriangle(), new RationalTriangle() };
        }
        if (debug >= 1) {
            System.out.println();
        }
        RationalTriangle quot = new RationalTriangle(); // [0] = zero
        RationalTriangle remd = clone();
        int lenr = remd   .size();
        int len2 = triang2.size();
        int lenq = lenr >= len2 ? lenr - len2 + 1 : 0;
        if (lenq > 1) {
            quot = new RationalTriangle(lenq);
        }
        try {
            while (lenr >= len2) {
                int iremd = lenr           - 1;
                int icol2 = triang2.size() - 1;
                BigRational factor = remd.getRat(iremd).divide(last2);
                int[] coordr = triangleIndex(iremd);
                int[] coord2 = triangleIndex(icol2);
                int xexp = coordr[0] - coord2[0];
                int yexp = coordr[1] - coord2[1];
                if (xexp >= 0 && yexp >= 0) {
                    RationalTriangle prod = triang2.multiply(factor, xexp, yexp);
                    quot.setTri(xexp, yexp, factor);
                    if (debug >= 1) {
                        System.out.println("quot[" + xexp + "," + yexp + "] = " + factor.toString()
                                + ", remd = " + remd.toString()
                                + ", prod = " + prod.toString());
                    }
                    remd = remd.subtract(prod);
                } // both non-negative
                lenr --;
            } // while lenr
        } catch (Throwable exc) {
            System.out.println("Exception in divideAndRemainder " + exc.getMessage());
            exc.printStackTrace();
        }
        return new RationalTriangle[] { quot.shrink(), remd.shrink() };
    } // divideAndRemainder(RationalTriangle)

    /** Repetitively divide <em>this</em>
     *  by a second {@link RationalVector}, 
     *  then the divisor by the rest and so on.
     *  @param vect2 the divisor
     *  @return the result of the EUclidian algorithm which 
     *  repetitively divides the divisor by the rest.
     */
    public RationalTriangle reduce(RationalTriangle vect2) {
        RationalTriangle quot = this ;
        RationalTriangle remd = vect2;
        while (! remd.isZero()) {
            RationalTriangle[] quotRemd = quot.divideAndRemainder(remd);
            if (debug >= 1) {
                System.out.println("reduce: " + quot.toString() + " / " + remd.toString() 
                        + " -> " + quotRemd[0] + " rest " + quotRemd[1]);
            }
            quot = remd;
            remd = quotRemd[1];
        } // while > 0
        if (debug >= 1) {
            System.out.println("reduced: " + quot.toString());
        }
        return quot;
    } // reduce(RationalTriangle)

    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments: [vect1] oper [vect2] (cf. test/linear.tests)
     */
    public static void main(String[] args) {
        RationalTriangle.setDebug(1);
        int iarg = 0;
        RationalTriangle vect1 = new RationalTriangle();
        RationalTriangle vect2 = new RationalTriangle();
        RationalTriangle vectq = new RationalTriangle();
        RationalTriangle vectr = new RationalTriangle();
        int xexp = 0; // no shift
        int yexp = 0; // no shift
        try {
            if (args.length == 0) {
                System.out.println("usage: java -cp dist/ramath.jar org.teherba.ramath.linear.RationalTriangle \"[vect1] oper [vect2]\"");
                System.out.println("    oper= + - * / |");
            } else if (args.length == 1 || args.length == 3) { // [-d debug] "expression"
                String expr = args[iarg ++];
                if (expr.equals("-d")) {
                    expr = args[iarg ++];
                    try {
                        int debug = Integer.parseInt(expr);
                        RationalVector  .setDebug(debug);
                        RationalTriangle.setDebug(debug);
                    } catch (Exception exc) {
                    }
                    expr = args[iarg ++];
                } // -d
                String[] parts = expr.split("\\s+"); // [vect1] oper [vect2] xexp yexp
                vect1 = new RationalTriangle(parts        [0]);
                String oper = parts                             [1];
                BigRational brat2 = new BigRational("0");
                    if (parts.length >= 3) {
                        if (parts[2].startsWith("[")) {
                            vect2 = new RationalTriangle(parts        [2]);
                        } else {
                            brat2 = new BigRational(parts             [2]);
                        }
                        if (parts.length >= 4) {
                            xexp = Integer.parseInt(parts[3]);
                            yexp = Integer.parseInt(parts[4]);
                        }
                    } // >= 3 args
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
                    if (parts[2].startsWith("[")) { // 2nd operand is a triangle, too
                        System.out.println(vect1.multiply(vect2).toString());
                        if (! expr.matches("\\/")) { // no fractional constants involved
                            System.out.println((vect1.toPolynomial().multiply(vect2.toPolynomial())).toString());
                        }
                    } else { // 2nd operand is a (fractional) constant
                        System.out.println(vect1.multiply(brat2, xexp, yexp).toString());
                    }
                } else if (oper.startsWith("/")) {
                    RationalTriangle[] quotRemd = vect1.divideAndRemainder(vect2);
                    System.out.println(quotRemd[0].toString() + ", remainder = "
                                     + quotRemd[1].toString() );
                    if (! expr.matches("\\/")) { // no fractional constants involved
                        System.out.println(   quotRemd[0].toPolynomial().toString()
                                + ", rest=" + quotRemd[1].toPolynomial().toString());
                    }
                } else if (oper.equals("|")) { // repetitively divide
                    System.out.println();
                    vectq = vect1.reduce(vect2);
                    System.out.println("result: " + vectq.toString());
                } // if oper
            } else {
                xexp  = Integer.parseInt(args[iarg ++]);
                yexp  = Integer.parseInt(args[iarg ++]);
                int ielem = linearIndex(xexp, yexp);
                System.out.println("linearIndex(" + xexp + "," + yexp + ") = " + ielem);
                int[] coords = triangleIndex(ielem);
                System.out.println("triangleIndex(" + ielem + ") = (" + coords[0] + "," + coords[1] + ")");
            } // more than 1 argument
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
        } // try
    } // main

} // RationalTriangle
