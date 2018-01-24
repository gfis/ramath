/*  BigMatrix: a simple, small, square matrix of numbers
 *  @(#) $Id: BigMatrix.java 744 2011-07-26 06:29:20Z gfis $
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
import  org.teherba.ramath.linear.BigVector;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.ModoMeter;
import  org.teherba.ramath.util.Permutator;
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  org.apache.log4j.Logger;

/** Class BigMatrix implements some simple linear algebra operations
 *  on square matrices of small integer numbers (Java <em>int</em>s).
 *  Typically a BigMatrix will have no more than 8 rows/columns.
 *  It is used to solve diophantine problems.
 *  @author Dr. Georg Fischer
 */
public class BigMatrix extends Matrix implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: BigMatrix.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    public static int debug = 0;

    /*-------------- class properties -----------------------------*/

    /** a 2-dimensional array of small numbers */
    protected BigInteger[][] matrix;
    /*-------------- construction -----------------------------*/

    /** No-args Constructor: an empty, square BigMatrix of size 3
     */
    public BigMatrix() {
        this (3, 3);
    } // no-args Constructor

    /** Constructor for an empty, square BigMatrix.
     *  All elements are preset to 0.
     *  @param rowLen number of rows/columns
     */
    public BigMatrix(int rowLen) {
        this(rowLen, rowLen);
    } // Constructor(int)

    /** Constructor for an empty, rectangular BigMatrix
     *  @param rowLen number of rows
     *  @param colLen number of columns
     */
    public BigMatrix(int rowLen, int colLen) {
        this.rowLen = rowLen;
        this.colLen = colLen;
        this.matrix = new BigInteger[this.rowLen][this.colLen];
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = BigInteger.ZERO;
            } // for jcol
        } // for irow
    } // Constructor(int, int)

    /** Constructor for a rectangular BigMatrix which initializes it from an array of values
     *  @param rowLen number of rows/columns
     *  @param values linearized array of row values
     */
    public BigMatrix(int rowLen, BigInteger[] values) {
        this(rowLen, values.length / rowLen);
        int ival = 0;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = values[ival ++];
            } // for jcol
        } // for irow
    } // Constructor(int, int[])

    /** Fills a rectangular BigMatrix from an array of values
     *  @param values array of values
     */
    private void fill(String[] values) {
        this.matrix = new BigInteger[this.rowLen][this.colLen];
        int ival = 0;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = BigInteger.ZERO;
                try {
                    this.matrix[irow][jcol] = new BigInteger(values[ival]);
                } catch (Exception exc) {
                }
                ival ++;
            } // for jcol
        } // for irow
    } // fill

    /** Constructor for a square BigMatrix which initializes it from an array of values.
     *  If the number of elements is no square number, the next lower square
     *  number is taken, and some elements at the end are ignored.
     *  @param values linearized array of rows of arrays of column values
     */
    public BigMatrix(String[] values) {
        int numElem = values.length;
        rowLen = 0;
        while (rowLen * rowLen < numElem) {
            rowLen ++;
        } // while squaring
        if (rowLen * rowLen > numElem) {
            rowLen --;
        }
        colLen = rowLen;
        fill(values);
    } // Constructor(String[])

    /** Constructor for a rectangular BigMatrix which initializes it from a matrix expression.
     *  If the number of elements is no square number, the next lower square
     *  number is taken, and some elements at the end are ignored.
     *  @param matExpr comma-separated array of {@link Vector}s in square brackets,
     *  for example "[[11,12,13],[21,22,23],[31,32,33]]"
     */
    public BigMatrix(String matExpr) {
        String vectExpr = matExpr.substring(0, matExpr.indexOf("]"));
        String[] values = vectExpr.replaceAll("[\\[\\]\\s]+","").split("\\,");
        colLen = values.length; // first row, has how many columns?
        values = matExpr.replaceAll("[\\[\\]\\s]+","").split("\\,");// all
        rowLen = values.length / colLen;
        fill(values);
    } // Constructor(String)

    /** Deep copy of the BigMatrix and its properties.
     *  @return independant copy of the BigMatrix
     */
    public BigMatrix clone() {
        BigMatrix result = new BigMatrix(rowLen, colLen);
        for (int irow = 0; irow < rowLen; irow ++) {
            for (int jcol = 0; jcol < colLen; jcol ++) {
                result.matrix[irow][jcol] = matrix[irow][jcol];
            } // for jcol
        } // for irow
        return result;
    } // clone

    /*-------------- bean methods, setters and getters -----------------------------*/
	// inherited: size, getRowLen, getColLen
    
    /** Gets an element.
     *  @param rowNo number of the row, zero based
     *  @param colNo number of the column, zero based
     *  @return value value of the element
     */
    public BigInteger getBig(int rowNo, int colNo) {
        return this.matrix[rowNo][colNo];
    } // getBig

    /** Sets an element.
     *  @param rowNo number of the row, zero based
     *  @param colNo number of the column, zero based
     *  @param value value of the element
     */
    public void set(int rowNo, int colNo, BigInteger value) {
        this.matrix[rowNo][colNo] = value;
    } // set

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a row as a {@link Vector}.
     *  @param rowNo number of the row, zero based
     *  @return a Vector containing the elements of the matrix' row
     */
    public BigVector getBigRow(int rowNo) {
        BigVector result = new BigVector(this.colLen);
        for (int jcol = 0; jcol < this.colLen; jcol ++) {
            result.vector[jcol] = this.matrix[rowNo][jcol];
        } // for jcol
        return result;
    } // getBigRow

    /** Sets a row from a {@link BigVector}.
     *  @param rowNo number of the row, zero based
     *  @param vect1 BigVector containing the elements of the matrix' row
     */
    public void setRow(int rowNo, BigVector vect1) {
        for (int jcol = 0; jcol < this.colLen; jcol ++) {
            this.matrix[rowNo][jcol] = vect1.vector[jcol];
        } // for jcol
    } // setRow

    /** Returns a column as a {@link BigVector}.
     *  @param colNo number of the column, zero based
     *  @return a BigVector containing the elements of the matrix' column
     */
    public BigVector getBigColumn(int colNo) {
        BigVector result = new BigVector(this.rowLen);
        for (int irow = 0; irow < this.rowLen; irow ++) {
            result.vector[irow] = this.matrix[irow][colNo];
        } // for irow
        return result;
    } // getBigColumn

    /** Sets a column from a {@link BigVector}.
     *  @param colNo number of the column, zero based
     *  @param vect1 BigVector containing the elements of the matrix' column
     */
    public void setColumn(int colNo, BigVector vect1) {
        for (int irow = 0; irow < this.rowLen; irow ++) {
            this.matrix[irow][colNo] = vect1.vector[irow];
        } // for irow
    } // setColumn

    /** Returns a string representation of the matrix
     *  with 4 places per element and one line per row
     *  @return a 2-dimensional array of small numbers
     */
    public String toString() {
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        for (int irow = 0; irow < this.rowLen; irow ++) {
            if (irow > 0) {
                result.append(sep);
            }
            result.append(this.getBigRow(irow).toString());
        } // for irow
        result.append(']');
        return result.toString();
    } // toString()

    /** Determines whether the matrix is zero (all elements are zero)
     *  @return true if the matrix is zero, or false otherwise
     */
    public boolean isZero() {
        boolean result = true;
        int irow = 0;
        while (result && irow < this.rowLen) {
            int jcol = 0;
            while (result && jcol < this.colLen) {
                result = this.matrix[irow][jcol].equals(BigInteger.ZERO);
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
    public boolean equals(BigMatrix matr2) {
        boolean result = true;
        if (matr2.getRowLen() == this.rowLen && matr2.getColLen() == this.colLen) {
            int irow = 0;
            while (result && irow < this.rowLen) {
                int jcol = 0;
                while (result && jcol < this.colLen) {
                    result = this.matrix[irow][jcol].equals(matr2.matrix[irow][jcol]);
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

    /** Clone and adds all elements of another rectangular BigMatrix
     *  to <em>this</em> rectangular BigMatrix.
     *  @param matr2 add this matrix
     *  @return reference to a new object, the sum
     */
    public BigMatrix add(BigMatrix matr2) {
        BigMatrix result = new BigMatrix(this.rowLen);
        if (matr2.getRowLen() == this.rowLen && matr2.getColLen() == this.colLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    result.set(irow, jcol, this.getBig(irow, jcol).add(matr2.getBig(irow, jcol)));
                } // for jcol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot add matrices of different size "
                    + this.rowLen + "," + this.colLen);
        }
        return result;
    } // add(BigMatrix)

    /** Multiply <em>this</em> BigMatrix by some {@link BigVector} (on the right).
     *  @param vect2 multiply by this {@link BigVector}
     *  @return reference to a new {@link BigVector}, the right product
     */
    public BigVector multiply(BigVector vect2) {
        BigVector result = new BigVector(this.colLen);
        if (vect2.size() == this.colLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                    BigInteger sum = BigInteger.ZERO;
                    for (int jcol = 0; jcol < this.colLen; jcol ++) {
                        sum = sum.add(this.getBig(irow, jcol).multiply(vect2.getBig(jcol)));
                    } // for jcol
                    result.set(irow, sum);
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot multiply a matrix and a vector of different size: "
                + this.toString(",") + " * " + vect2.toString(","));
        }
        return result;
    } // multiply(BigVector)

    /*-------------- heavyweight methods -----------------------------*/

    /** Successively multiplies <em>this</em> {@link BigMatrix} with
     *  a {@link Vector} <em>vect0</em> and checks whether the power sum property
     *  is maintained, or whether an iteration limit is reached.
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @param vect0 the {@link Vector} to start with
     *  @return an array of Vectors as result of the multiplication;
     *  the size determines the number of times that <em>this</em> BigMatrix could be multiplied
     *  by <em>vect0</em> while maintaining the power sum property.
     *  A default of 8 iterations is tried
     */
    public ArrayList<Vector> preservedPowerSums(int exp, int left, int right, Vector vect0) {
        return preservedPowerSums(exp, left, right, vect0, 8);
    } // preservedPowerSums(4)

    /** Successively multiplies <em>this</em> {@link BigMatrix} with
     *  a {@link Vector} <em>vect0</em> and checks whether the power sum property
     *  is maintained, or whether an iteration limit is reached.
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @param vect0 the {@link Vector} to start with
     *  @param maxIter number of iterations to be tried
     *  @return an array of Vectors as result of the multiplication;
     *  the size determines the number of times that <em>this</em> BigMatrix could be multiplied
     *  by <em>vect0</em> while maintaining the power sum property.
     */
    public ArrayList<Vector> preservedPowerSums(int exp, int left, int right, Vector vect0, int maxIter) {
        ArrayList<Vector> result = new ArrayList<Vector>(maxIter);
        Vector vect1 = vect0;;
        Vector vect2 = this.multiply(vect1);
        int iter = 0;
        while ( true
                && vect2.gcd() <= 1
                && vect1.norm4() != vect2.norm4()
                && vect2.isPowerSum(exp, left, right)
                && iter < maxIter) {
            result.add(vect2);
            vect1 = vect2;
            vect2 = this.multiply(vect2);
            iter ++;
        } // while iter
        return result;
    } // preservedPowerSums(5)

    // method 'main' was exported to MatrixTester

} // BigMatrix
