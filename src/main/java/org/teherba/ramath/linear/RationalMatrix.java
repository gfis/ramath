/*  RationalMatrix: a simple, square matrix of BigInteger numbers
 *  @(#) $Id: RationalMatrix.java 744 2011-07-26 06:29:20Z gfis $
 *  2018-01-24, Georg Fischer: copied from Matrix
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
import  org.teherba.ramath.BigRational;
import  org.teherba.ramath.linear.RationalVector;
import  org.teherba.ramath.linear.Matrix;
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  org.apache.logging.log4j.Logger;
import  org.apache.logging.log4j.LogManager;

/** Class RationalMatrix implements some simple linear algebra operations
 *  on square matrices of BigInteger numbers (Java <em>int</em>s).
 *  It is used to solve diophantine problems.
 *  @author Dr. Georg Fischer
 */
public class RationalMatrix extends Matrix implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: RationalMatrix.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    public static int debug = 0;

    /*-------------- class properties -----------------------------*/

    /** a 2-dimensional array of numbers */
    protected ArrayList<RationalVector> matrix;
    /*-------------- construction -----------------------------*/

    /** No-args Constructor: an empty, square RationalMatrix of size 3
     */
    public RationalMatrix() {
        matrix = new ArrayList<RationalVector>(16);
    } // no-args Constructor

    /** Constructor for an empty, square RationalMatrix.
     *  All elements are preset to 0.
     *  @param rowLen number of rows/columns
     */
/*
    public RationalMatrix(int rowLen) {
        this(rowLen, rowLen);
    } // Constructor(int)
*/
    /** Constructor for an empty, rectangular RationalMatrix
     *  @param rowLen number of rows
     *  @param colLen number of columns
     */
/*
    public RationalMatrix(int rowLen, int colLen) {
        this.rowLen = rowLen;
        this.colLen = colLen;
        this.matrix = new BigInteger[this.rowLen][this.colLen];
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = BigInteger.ZERO;
            } // for jcol
        } // for irow
    } // Constructor(int, int)
*/
    /** Constructor for a rectangular RationalMatrix which initializes it from an array of values
     *  @param rowLen number of rows/columns
     *  @param values linearized array of row values
     */
/*
    public RationalMatrix(int rowLen, BigInteger[] values) {
        this(rowLen, values.length / rowLen);
        int ival = 0;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = values[ival ++];
            } // for jcol
        } // for irow
    } // Constructor(int, int[])
*/
    /** Deep copy of the RationalMatrix and its properties.
     *  @return independant copy of the RationalMatrix
     */
/*
    public RationalMatrix clone() {
        RationalMatrix result = new RationalMatrix(rowLen, colLen);
        for (int irow = 0; irow < rowLen; irow ++) {
            for (int jcol = 0; jcol < colLen; jcol ++) {
                result.set(irow, jcol, this.getRat(irow, jcol));
            } // for jcol
        } // for irow
        return result;
    } // clone
*/
    /*-------------- bean methods, setters and getters -----------------------------*/
    // inherited: size, getRowLen, getColLen

    /** Gets an element of the matrix.
     *  @param rowNo number of the row, zero based
     *  @param colNo number of the column, zero based
     *  @return value a BigRational
     */
    public BigRational getRat(int rowNo, int colNo) {
        return matrix.get(rowNo).getRat(colNo);
    } // getRat(int, int)

    /** Sets an element.of the matrix
     *  @param rowNo number of the row, zero based
     *  @param colNo number of the column, zero based
     *  @param value BigRational value of the element
     */
    public void set(int rowNo, int colNo, BigRational value) {
        while (rowNo >= size()) {
            matrix.add(new RationalVector());
        }
        matrix.get(rowNo).set(colNo, value);
    } // set(int, int, BigRational)

    /** Gets a row.of the matrix
     *  @param rowNo number of the row, zero based
     *  @return the row as a RationalVector
     */
    public RationalVector get(int rowNo) {
        return matrix.get(rowNo);
    } // get(int)

    /** Sets a row.of the matrix
     *  @param rowNo number of the row, zero based
     *  @param value the row as a RationalVector
     */
    public void set(int rowNo, RationalVector value) {
        while (rowNo >= size()) {
            matrix.add(new RationalVector());
        }
        matrix.set(rowNo, value);
    } // set(int, RationalVector)

    /** Returns the current number of rows
     *  @return length of the the ArrayList for rows
     */
    public int size() {
        return matrix.size();
    } // size


    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a column as a {@link RationalVector}.
     *  @param colNo number of the column, zero based
     *  @return a RationalVector containing the elements of the matrix' column
     */
/*
    public RationalVector getRatColumn(int colNo) {
        RationalVector result = new RationalVector(this.rowLen);
        for (int irow = 0; irow < this.rowLen; irow ++) {
            result.set(irow, this.getRat(irow, colNo));
        } // for irow
        return result;
    } // getRatColumn
*/
    /** Sets a column from a {@link RationalVector}.
     *  @param colNo number of the column, zero based
     *  @param vect1 RationalVector containing the elements of the matrix' column
     */
/*
    public void setColumn(int colNo, RationalVector vect1) {
        for (int irow = 0; irow < this.rowLen; irow ++) {
            this.set(irow, colNo, vect1.getRat(irow));
        } // for irow
    } // setColumn
*/
    /** Exchanges two rows in <em>this</em> Matrix.
     *  @param rowNo1 number of the 1st row
     *  @param rowNo2 number of the 2nd row
     */
    @Override
    public void exchangeRows(int rowNo1, int rowNo2) {
        RationalVector row1 = get(rowNo1);
        RationalVector row2 = get(rowNo2);
        set(rowNo2, row1);
        set(rowNo1, row2);
    } // exchangeRows

    /** Returns a String representation of the matrix
     *  @return a 2-dimensional array of numbers
     */
    @Override
    public String toString() {
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        for (int irow = 0; irow < size(); irow ++) {
            if (irow > 0) {
                result.append(sep);
            }
            result.append(this.get(irow).toString());
        } // for irow
        result.append(']');
        return result.toString();
    } // toString()

    /** Returns a string representation of the matrix
     *  with 4 places per element and one line per row
     *  @param format (not used)
     *  @return a 2-dimensional array of numbers
     */
    @Override
    public String toString(String format) {
        return toString();
    } // toString(String)

    /** Determines whether the RationalMatrix has a zero element
     *  @return true if the matrix has a zero, or false otherwise
     */
    @Override
    public boolean hasZero() {
        boolean result = false;
        int irow = 0;
        while (! result && irow < this.rowLen) {
            int jcol = 0;
            while (! result && jcol < this.colLen) {
                result = this.getRat(irow, jcol).equals(BigInteger.ZERO);
                jcol ++;
            } // for jcol
            irow ++;
        } // for irow
        return result;
    } // hasZero

    /** Determines whether the matrix is zero (all elements are zero)
     *  @return true if the matrix is zero, or false otherwise
     */
    @Override
    public boolean isZero() {
        boolean result = true;
        int irow = 0;
        while (result && irow < this.rowLen) {
            int jcol = 0;
            while (result && jcol < this.colLen) {
                result = this.getRat(irow, jcol).equals(BigInteger.ZERO);
                jcol ++;
            } // for jcol
            irow ++;
        } // for irow
        return result;
    } // isZero

    /** Compares <em>this</em> matrix with a second for equal elements
     *  @param matr2 compare with this matrix
     *  @return true if all elements are equal
     */
    public boolean equals(RationalMatrix matr2) {
        boolean result = true;
        if (matr2.getRowLen() == this.rowLen && matr2.getColLen() == this.colLen) {
            int irow = 0;
            while (result && irow < this.rowLen) {
                int jcol = 0;
                while (result && jcol < this.colLen) {
                    result = this.getRat(irow, jcol).equals(matr2.getRat(irow, jcol));
                    jcol ++;
                } // for jcol
                irow ++;
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot compare matrices of different size "
                    + this.rowLen + "," + this.colLen);
        }
        return result;
    } // equals

    /*-------------- arithmetic operations -------------------------*/

    /** Clone and adds all elements of another rectangular RationalMatrix
     *  to <em>this</em> rectangular RationalMatrix.
     *  @param matr2 add this matrix
     *  @return reference to a new object, the sum
     */
/*
    public RationalMatrix add(RationalMatrix matr2) {
        RationalMatrix result = new RationalMatrix(this.rowLen);
        if (matr2.getRowLen() == this.rowLen && matr2.getColLen() == this.colLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    result.set(irow, jcol, this.getRat(irow, jcol).add(matr2.getRat(irow, jcol)));
                } // for jcol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot add matrices of different size "
                    + this.rowLen + "," + this.colLen);
        }
        return result;
    } // add(RationalMatrix)
*/
    /** Clone and multiply <em>this</em> RationalMatrix by another RationalMatrix (on the right).
     *  @param matr2 multiply by this matrix
     *  @return reference to a new object, the matrix product
     */
/*
    public RationalMatrix multiply(RationalMatrix matr2) {
        RationalMatrix result = new RationalMatrix(this.colLen);
        if (matr2.getColLen() == this.rowLen && matr2.getRowLen() == this.colLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    BigRational sum = BigRational.ZERO;
                    for (int kvec = 0; kvec < this.rowLen; kvec ++) {
                        sum = sum.add(this.getRat(irow, kvec).multiply(matr2.getRat(kvec,jcol)));
                    } // for kvec
                    result.set(irow, jcol, sum);
                } // for jcol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot multiply matrices of different size " + this.rowLen);
        }
        return result;
    } // multiply(RationalMatrix)
*/
     /** Multiply <em>this</em> RationalMatrix by some {@link RationalVector} (on the right).
     *  @param vect2 multiply by this {@link RationalVector}
     *  @return reference to a new {@link RationalVector}, the right product
     */
/*
    public RationalVector multiply(RationalVector vect2) {
        RationalVector result = new RationalVector(this.colLen);
        if (vect2.size() == this.colLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                    BigRational sum = BigRational.ZERO;
                    for (int jcol = 0; jcol < this.colLen; jcol ++) {
                        sum = sum.add(this.getRat(irow, jcol).multiply(vect2.getRat(jcol)));
                    } // for jcol
                    result.set(irow, sum);
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot multiply a matrix and a vector of different size: "
                + this.toString(",") + " * " + vect2.toString(","));
        }
        return result;
    } // multiply(RationalVector)
*/
    /*-------------- heavyweight methods -----------------------------*/

    /*-------------------- Test Driver --------------------*/

    /** Local logger for exceptions */
    private static Logger log = LogManager.getLogger(RationalMatrix.class.getName());

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0; // this collides with Options
        int alen = 0; // size of amat
        RationalMatrix amat = null; // matrix to be tested
        RationalVector vect1 = null;
        RationalVector vect2 = null;
        try {
            if (args.length == 0) {
            /*
                System.out.println("new RationalMatrix(\"[[3, 4], [5, 6]]\") = "
                        + (new RationalMatrix          ("[[3, 4], [5, 6]]")).toString("(,)"));
            */
            } else if (args.length >= 2) { // syntax is: -opt filename
                String opt = args[iarg ++];

                if (false) {
                } else if (opt.equals("-f"    )  ) {

                } else if (opt.startsWith("-mult")) {
                    System.out.println(amat.toString("(,)") + " * "
                            + vect1.toString("(,)") + " = "
                            + amat.multiply(vect1).toString("(,)"));
                    // -mult

                } // options
            } // 2 args
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    } // main

} // RationalMatrix
