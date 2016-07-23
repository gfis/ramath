/*  Matrix: a simple, small, square matrix of small numbers
 *  @(#) $Id: Matrix.java 744 2011-07-26 06:29:20Z gfis $
 *  2015-09-04: Constructor(int) presets elements to 0
 *  2015-04-17: test methods exported to MatrixTester
 *  2015-04-15: inverse
 *  2015-04-04: permute
 *  2014-04-06: MultiModoMeter incorporated into ModoMeter
 *  2013-08-23: Serializable
 *  2013-08-14: non-square matrices are prepared by colLen
 *  2013-07-26, Georg Fischer: copied from Polynomial
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
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.linear.VectorArray;
import  org.teherba.ramath.util.ModoMeter;
import  org.teherba.ramath.util.Permutator;
import  java.io.Serializable;
import  java.util.ArrayList;
import  org.apache.log4j.Logger;

/** Class Matrix implements some simple linear algebra operations
 *  on square matrices of small integer numbers.
 *  Typically a Matrix will have no more than 8 rows/columns.
 *  It is used to solve diophantine problems.
 *  @author Dr. Georg Fischer
 */
public class Matrix implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Matrix.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    public static int debug = 0;
    /** System dependant newline character sequence */
    protected static String newline = System.getProperty("line.separator");

    /*-------------- class properties -----------------------------*/

    /** a 2-dimensional array of small numbers */
    protected /*Type*/int[][] matrix;
    /** the length of a row  */
    protected int rowLen;
    /** the length of a column, currently always the same as <em>rowLen</em>, that means the matrices are square */
    protected int colLen;
    /** usually 1, but maybe &gt; 1 when the Matrix is the result of {@link #inverse} */
    protected int fraction;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor: an empty, square Matrix of size 3
     */
    public Matrix() {
        this (3, 3);
    } // no-args Constructor

    /** Constructor for an empty, square Matrix.
     *  All elements are preset to 0.
     *  @param rowLen number of rows/columns
     */
    public Matrix(int rowLen) {
        this(rowLen, rowLen);
    } // Constructor(int)

    /** Constructor for an empty, rectangular Matrix
     *  @param rowLen number of rows
     *  @param colLen number of columns
     */
    public Matrix(int rowLen, int colLen) {
        this.rowLen = rowLen;
        this.colLen = colLen;
        this.matrix = new /*Type*/int[this.rowLen][this.colLen];
        this.fraction = 1;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = (/*Type*/int) 0;
            } // for jcol
        } // for irow
    } // Constructor(int, int)

    /** Constructor for a rectangular Matrix which initializes it from an array of values
     *  @param rowLen number of rows/columns
     *  @param values linearized array of row values
     */
    public Matrix(int rowLen, int[] values) {
        this(rowLen, values.length / rowLen);
        int ival = 0;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = (/*Type*/int) values[ival ++];
            } // for jcol
        } // for irow
        this.fraction = 1;
    } // Constructor(int, int[])

    /** Fills a rectangular Matrix from an array of values
     *  @param values array of values
     */
    private void fill(String[] values) {
        this.matrix = new /*Type*/int[this.rowLen][this.colLen];
        int ival = 0;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = 0;
                try {
                    this.matrix[irow][jcol] = Integer.parseInt(values[ival]);
                } catch (Exception exc) {
                }
                ival ++;
            } // for jcol
        } // for irow
        this.fraction = 1;
    } // fill

    /** Constructor for a square Matrix which initializes it from an array of values.
     *  If the number of elements is no square number, the next lower square
     *  number is taken, and some elements at the end are ignored.
     *  @param values linearized array of rows of arrays of column values
     */
    public Matrix(String[] values) {
        int numElem = values.length;
        this.rowLen = 0;
        while (this.rowLen * this.rowLen < numElem) {
            this.rowLen ++;
        } // while squaring
        if (this.rowLen * this.rowLen > numElem) {
            this.rowLen --;
        }
        this.colLen = this.rowLen;
        this.fill(values);
    } // Constructor(String[])
    
    /** Constructor for a rectangular Matrix which initializes it from a matrix expression.
     *  If the number of elements is no square number, the next lower square
     *  number is taken, and some elements at the end are ignored.
     *  @param matExpr comma-separated array of {@link Vector}s in square brackets,
     *  for example "[[11,12,13],[21,22,23],[31,32,33]]"
     */
    public Matrix(String matExpr) {
        String vectExpr = matExpr.substring(0, matExpr.indexOf("]"));
        String[] values = vectExpr.replaceAll("[\\[\\]\\s]+","").split("\\,");
        this.colLen = values.length; // first row, has how many columns?
        values      = matExpr.replaceAll("[\\[\\]\\s]+","").split("\\,");// all
        this.rowLen = values.length / this.colLen;
        this.fill(values);
    } // Constructor(String)

    /** Deep copy of the Matrix and its properties.
     *  @return independant copy of the Matrix
     */
    public Matrix clone() {
        Matrix result = new Matrix(this.rowLen, this.colLen);
        result.fraction = this.fraction;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                result.matrix[irow][jcol] = this.matrix[irow][jcol];
            } // for jcol
        } // for irow
        return result;
    } // clone

    /** Computes a Matrix which is an elementary transformation
     *  (column addition, subtraction or identity).
     *  @param elen number of rows/columns
     *  @param seqNo a sequential number for the zeroes in the identity matrix,
     *  which is evaluated modulo <em>nelem = rowLen * (rowLen - 1)</em>:
     *  <dl>
     *  <dt>0 &lt;= seqNo &lt; nelem        </dt><dd>set the element to 1</dd>
     *  <dt>nelem &lt;= seqNo &lt; 2* nelem </dt><dd>set the element to -1</dd>
     *  <dt>2*nelem &lt;= seqNo             </dt><dd>(leave the 0, identity matrix)</dd>
     *  </dl>
     */
    public static Matrix elementary(int elen, int seqNo) {
        Matrix result = new Matrix(elen);
        int nelem = elen * (elen - 1); // number of zeroes in the identity matrix
        int iseq = 0;
        /*Type*/int unit = 1;
        if (seqNo >= nelem) {
            seqNo -= nelem;
            unit = -1;
        }
        for (int irow = 0; irow < elen; irow ++) {
            for (int jcol = 0; jcol < elen; jcol ++) {
                /*Type*/int elem = (irow == jcol) ? (/*Type*/int) 1 : (/*Type*/int) 0; // set identity matrix
                if (elem == 0) {
                    if (iseq == seqNo) {
                        elem = unit;
                    }
                    iseq ++;
                }
                result.matrix[irow][jcol] = elem;
            } // for jcol
        } // for irow
        return result;
    } // elementary

    /** Compute a permutation matrix which has exactly one "1" element in each row and column,
     *  and "0" elements elsewhere.
     *  @param  meter definition of the permutation, result of {@link org.teherba.ramath.util.Permutator},
     *  a permutation of the numbers [0 : n-1] defining, for each row, the column to be set.
     *  For example, [0,1,2,3] yields the 4x4 identity matrix.
     *  @return reference to a new matrix
     */
    public static Matrix permutation(int[] meter) {
        int rowLen = meter.length;
        Matrix result = new Matrix(rowLen);
        for (int irow = 0; irow < rowLen; irow ++) {
            for (int jcol = 0; jcol < rowLen; jcol ++) {
                result.matrix[irow][jcol] = (meter[irow] == jcol) ? (/*Type*/int) 1 : (/*Type*/int) 0;
            } // for jcol
        } // for irow
        return result;
    } // permutation

    /** Initializes <em>this</em> Matrix by setting
     *  "1" in the main diagonal and "0" elsewhere.
     */
    public void setIdentity() {
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = (irow == jcol) ? (/*Type*/int) 1 : (/*Type*/int) 0;
             } // for jcol
        } // for irow
    } // setIdentity

    /** Sets <em>this</em> Matrix to an elementary transformation
     *  (column addition, subtraction or identity).
     *  @param seqNo a sequential number for the zeroes in the identity matrix,
     *  which is evaluated modulo <em>nelem = rowLen * (rowLen - 1)</em>:
     *  <dl>
     *  <dt>0 &lt;= seqNo &lt; nelem        </dt><dd>set the element to 1</dd>
     *  <dt>nelem &lt;= seqNo &lt; 2* nelem </dt><dd>set the element to -1</dd>
     *  <dt>2*nelem &lt;= seqNo             </dt><dd>(leave the 0, identity matrix)</dd>
     *  </dl>
     */
    public void setElementary(int seqNo) {
        int nelem = this.rowLen * (this.rowLen - 1); // number of zeroes in the identity matrix
        int iseq = 0;
        /*Type*/int unit = 1;
        if (seqNo >= nelem) {
            seqNo -= nelem;
            unit = -1;
        }
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                /*Type*/int elem = (irow == jcol) ? (/*Type*/int) 1 : (/*Type*/int) 0; // set identity matrix
                if (elem == 0) {
                    if (iseq == seqNo) {
                        elem = unit;
                    }
                    iseq ++;
                }
                this.matrix[irow][jcol] = elem;
            } // for jcol
        } // for irow
    } // setElementary

    /** Toggles the signs of all elements if the corresponding element
     *  in the row ordered parameter array is not zero
     *  @param values with zeroes and ones for same and negate
     */
    public Matrix toggleSigns(int[] values) {
        int ival = 0;
        Matrix result = new Matrix(this.rowLen);
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                result.matrix[irow][jcol] = values[ival] == 0
                        ?   this.matrix[irow][jcol]
                        : - this.matrix[irow][jcol];
                ival ++;
            } // for jcol
        } // for irow
        return result;
    } // toggleSigns

    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Returns the number of rows/columns
     *  @return a small number
     */
    public int size() {
        return this.rowLen;
    } // size

    /** Returns the number of rows
     *  @return a small number
     */
    public int getRowLen() {
        return this.rowLen;
    } // getRowLen

    /** Returns the number of columns
     *  @return a small number
     */
    public int getColLen() {
        return this.colLen;
    } // getColLen

    /** Gets an element.
     *  @param rowNo number of the row, zero based
     *  @param colNo number of the column, zero based
     *  @return value value of the element
     */
    public /*Type*/int get(int rowNo, int colNo) {
        return this.matrix[rowNo][colNo];
    } // get

    /** Sets an element.
     *  @param rowNo number of the row, zero based
     *  @param colNo number of the column, zero based
     *  @param value value of the element
     */
    public void        set(int rowNo, int colNo, /*Type*/int value) {
        this.matrix[rowNo][colNo] = value;
    } // set

    /** Returns the {@link #fraction}
     *  @return the divisor when the Matrix was the result of {@link #inverse}
     */
    public int getFraction() {
        return this.fraction;
    } // getFraction

    /** Sets the {@link #fraction}
     *  @param fraction the divisor when the Matrix was the result of {@link #inverse}
     */
    public void setFraction(int fraction) {
        this.fraction = fraction;
    } // setFraction

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a row as a {@link Vector}.
     *  @param rowNo number of the row, zero based
     *  @return a Vector containing the elements of the matrix' row
     */
    public Vector getRow(int rowNo) {
        Vector result = new Vector(this.colLen);
        for (int jcol = 0; jcol < this.colLen; jcol ++) {
            result.vector[jcol] = this.matrix[rowNo][jcol];
        } // for jcol
        return result;
    } // getRow

    /** Sets a row from a {@link Vector}.
     *  @param rowNo number of the row, zero based
     *  @param vect1 Vector containing the elements of the matrix' row
     */
    public void setRow(int rowNo, Vector vect1) {
        for (int jcol = 0; jcol < this.colLen; jcol ++) {
            this.matrix[rowNo][jcol] = vect1.vector[jcol];
        } // for jcol
    } // setRow

    /** Returns a column as a {@link Vector}.
     *  @param colNo number of the column, zero based
     *  @return a Vector containing the elements of the matrix' column
     */
    public Vector getColumn(int colNo) {
        Vector result = new Vector(this.rowLen);
        for (int irow = 0; irow < this.rowLen; irow ++) {
            result.vector[irow] = this.matrix[irow][colNo];
        } // for irow
        return result;
    } // getColumn

    /** Sets a column from a {@link Vector}.
     *  @param colNo number of the column, zero based
     *  @param vect1 Vector containing the elements of the matrix' column
     */
    public void setColumn(int colNo, Vector vect1) {
        for (int irow = 0; irow < this.rowLen; irow ++) {
            this.matrix[irow][colNo] = vect1.vector[irow];
        } // for irow
    } // setColumn

    /** Returns the main diagonal as a {@link Vector}.
     *  @return a Vector containing the elements [i,i] of <em>this</em> Matrix
     */
    public Vector getDiagonal() {
        Vector result = new Vector(this.rowLen);
        for (int irow = 0; irow < this.rowLen; irow ++) {
            result.vector[irow] = this.matrix[irow][irow];
        } // for irow
        return result;
    } // getDiagonal

    /** Exchanges two rows in <em>this</em> Matrix.
     *  @param rowNo1 number of the 1st row
     *  @param rowNo2 number of the 2nd row
     */
    public void exchangeRows(int rowNo1, int rowNo2) {
        Vector row1 = getRow(rowNo1);
        Vector row2 = getRow(rowNo2);
        setRow(rowNo2, row1);
        setRow(rowNo1, row2);
    } // exchangeRows

    /** Exchanges two columns in <em>this</em> Matrix.
     *  @param colNo1 number of the 1st column
     *  @param colNo2 number of the 2nd column
     */
    public void exchangeColumns(int colNo1, int colNo2) {
        Vector col1 = getRow(colNo1);
        Vector col2 = getRow(colNo2);
        setRow(colNo2, col1);
        setRow(colNo1, col2);
    } // exchangeColumns

    /** Returns a string representation of the matrix
     *  with 4 places per element and one line per row
     *  @return a 2-dimensional array of small numbers
     */
    public String toString() {
        StringBuffer result = new StringBuffer(256);
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                // result.append(' ');
                result.append(String.format(" %3d", this.matrix[irow][jcol]));
            } // for jcol
            result.append(newline);
        } // for irow
        return result.toString();
    } // toString()

    /** Returns a string representation of the matrix
     *  with 4 places per element and one line per row
     *  @param format specification of the layout: null = printf(%3d), ",", " ", "(,)", "( )"
     *  @return a 2-dimensional array of small numbers
     */
    public String toString(String format) {
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        for (int irow = 0; irow < this.rowLen; irow ++) {
            if (format != null && format.length() > 0) {
                if (irow > 0) {
                    result.append(sep);
                }

                // now one row [0,1,2...
                if (format.indexOf(sep) >= 0) {
                    result.append('[');
                }
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    if (jcol > 0) {
                        result.append(sep);
                    }
                    result.append(String.valueOf(this.matrix[irow][jcol]));
                } // for jcol
                if (format.indexOf(sep) >= 0) {
                    result.append(']');
                }
                // end of that row

            } else { // no format: print in separate lines
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    // result.append(' ');
                    result.append(String.format(" %3d", this.matrix[irow][jcol]));
                } // for jcol
                result.append(newline);
            }
        } // for irow
        result.append(']');
        return result.toString();
    } // toString(format)

    /** Determines whether the matrix is zero (all elements are zero)
     *  @return true if the matrix is zero, or false otherwise
     */
    public boolean isZero() {
        boolean result = true;
        int irow = 0;
        while (result && irow < this.rowLen) {
            int jcol = 0;
            while (result && jcol < this.colLen) {
                result = this.matrix[irow][jcol] == 0;
                jcol ++;
            } // for jcol
            irow ++;
        } // for irow
        return result;
    } // isZero

    /** Determines whether <em>this</em> Matrix is the identity matrix,
     *  that is, the diagonal is +1 and all other elements are zero
     *  @return true if the matrix is zero, or false otherwise
     */
    public boolean isIdentity() {
        boolean result = true;
        int irow = 0;
        while (result && irow < this.rowLen) {
            int jcol = 0;
            while (result && jcol < this.colLen) {
                result = this.matrix[irow][jcol] == (irow == jcol ? 1 : 0);
                jcol ++;
            } // for jcol
            irow ++;
        } // for irow
        return result;
    } // isIdentity

    /** Compares <em>this</em> matrix with a second for equal elements
     *  @param matr2 compare with this matrix
     *  @return true if all elements are equal
     */
    public boolean equals(Matrix matr2) {
        boolean result = true;
        if (matr2.getRowLen() == this.rowLen && matr2.getColLen() == this.colLen) {
            int irow = 0;
            while (result && irow < this.rowLen) {
                int jcol = 0;
                while (result && jcol < this.colLen) {
                    result = this.matrix[irow][jcol] == matr2.matrix[irow][jcol];
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

    /** Determines whether <em>this</em> matrix is a permutation
     *  of a second matrix, that is whether there is a {@link #permutation}
     *  matrix such that <em>this=matr2*perm</em>.
     *  @param matr2 compare with this matrix
     *  @return null if there is no such permutation matrix,
     *  or a {@link Vector} showing the permutation.
     */
    public Vector isPermutation(Matrix matr2) {
        int rowLen = matr2.size();
        Vector result = null; // assume not found
        if (rowLen == this.size()) {
            boolean busy = true;
            Permutator permutator = new Permutator(rowLen);
            while (busy && permutator.hasNext()) {
                int[] meter = permutator.next();
                if (this.equals(matr2.multiply(Matrix.permutation(meter)))) { // found
                    busy = false;
                    result = new Vector(meter);
                }
            } // while permutator
        } else {
            throw new IllegalArgumentException("cannot compare matrices of different size " + this.rowLen);
        }
        return result;
    } // isPermutation

    /*-------------- arithmetic operations -------------------------*/

    /** Clone and adds all elements of another rectangular Matrix
     *  to <em>this</em> rectangular Matrix.
     *  @param matr2 add this matrix
     *  @return reference to a new object, the sum
     */
    public Matrix add(Matrix matr2) {
        Matrix result = new Matrix(this.rowLen);
        if (matr2.getRowLen() == this.rowLen && matr2.getColLen() == this.colLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    result.matrix[irow][jcol] = (/*Type*/int) (this.matrix[irow][jcol] + matr2.get(irow, jcol));
                } // for jcol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot add matrices of different size "
                    + this.rowLen + "," + this.colLen);
        }
        return result;
    } // add(Matrix)

    /** Adds all elements of a {@link Vector} to a row of
     *  <em>this</em> rectangular Matrix.
     *  @param irow add to the row with this number
     *  @param vect2 add this {@link Vector}
     *  @return <em>this</em> Matrix
     */
    public Matrix addToRow(int irow, Vector vect2) {
        if (vect2.size() == this.rowLen) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] += vect2.get(jcol);
            } // for jcol
        } else {
            throw new IllegalArgumentException("cannot add vector to matrix of different size " + this.rowLen);
        }
        return this;
    } // addToRow

    /** Clone and multiply <em>this</em> Matrix by another Matrix (on the right).
     *  @param matr2 multiply by this matrix
     *  @return reference to a new object, the matrix product
     */
    public Matrix multiply(Matrix matr2) {
        Matrix result = new Matrix(this.colLen);
        if (matr2.getColLen() == this.rowLen && matr2.getRowLen() == this.colLen ) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    int sum = 0;
                    for (int kvec = 0; kvec < this.rowLen; kvec ++) {
                        sum += this.matrix[irow][kvec] * matr2.matrix[kvec][jcol];
                    } // for kvec
                    result.matrix[irow][jcol] = (/*Type*/int) sum;
                } // for jcol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot multiply matrices of different size " + this.rowLen);
        }
        return result;
    } // multiply(Matrix)

    /** Multiply <em>this</em> Matrix by some {@link Vector} (on the right).
     *  @param vect2 multiply by this {@link Vector}
     *  @return reference to a new {@link Vector}, the right product
     */
    public Vector multiply(Vector vect2) {
        Vector result = new Vector(this.colLen);
        if (vect2.size() == this.colLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                    int sum = 0;
                    for (int jcol = 0; jcol < this.colLen; jcol ++) {
                        sum += this.matrix[irow][jcol] * vect2.vector[jcol];
                    } // for jcol
                    result.vector[irow] = (/*Type*/int) sum;
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot multiply a matrix and a vector of different size: "
                + this.toString(",") + " * " + vect2.toString(","));
        }
        return result;
    } // multiply(Vector)

    /*-------------- heavyweight methods -----------------------------*/

    /** Compute the determinant of <em>this</em> matrix.
     *  For row lengths >= 4, this method is called recursively.
     *  @return integer determinant value
     */
    public int determinant() {
        int result = 0;
        switch (this.rowLen) {
            case 0:
                result =  0;
                break;
            case 1:
                result =  this.matrix[0][0];
                break;
            case 2:
                result =  this.matrix[0][0] * this.matrix[1][1] -
                          this.matrix[0][1] * this.matrix[1][0] ;
                break;
            case 3:
                result =  this.matrix[0][0] * this.matrix[1][1] * this.matrix[2][2] -
                          this.matrix[0][2] * this.matrix[1][1] * this.matrix[2][0] +
                          this.matrix[0][1] * this.matrix[1][2] * this.matrix[2][0] -
                          this.matrix[0][1] * this.matrix[1][0] * this.matrix[2][2] +
                          this.matrix[0][2] * this.matrix[1][0] * this.matrix[2][1] -
                          this.matrix[0][0] * this.matrix[1][2] * this.matrix[2][1] ;
                break;

            /*  Perl code from Matrix.pm:
                foreach my $col (0..$last) {
                  my $matrix = $self->slice(0..$col-1,$col+1..$last);
                  $matrix = $class->new(@$matrix[1..$last]);
                  my $term += $matrix->determinant();
                  $term *= $self->[0][$col];
                  $term *= $col % 2 ? -1 : 1;
                  $result += $term;
                }
            */
            default: // recursive Laplace expansion over minors of the first row
                Matrix minor = new Matrix(this.rowLen - 1);
                // populate minor for 1st column
                for (int irow = 1; irow < this.rowLen; irow ++) { // omit row 0
                    for (int jcol = 1; jcol < this.colLen; jcol ++) { // omit column 0
                        minor.matrix[irow - 1][jcol - 1] = this.matrix[irow][jcol];
                    } // for jcol
                } // for irow
                // now expand minors over row 0
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    if (jcol > 0) { // repair 1st column of minor
                        for (int irow2 = 1; irow2 < this.rowLen; irow2 ++) {
                            minor.matrix[irow2 - 1][jcol - 1] = this.matrix[irow2][jcol - 1];
                        } // for irow2
                    }
                    if (debug > 0) {
                        System.out.print("multiply minor with column " + jcol + " = "
                                + (this.matrix[0][jcol] * ((jcol & 1) == 0 ? -1 : 1))
                                + "\n" + minor.toString());
                    }
                    if ((jcol & 1) == 0) { // even
                        result +=   minor.determinant() * this.matrix[0][jcol];
                    } else { // odd
                        result += - minor.determinant() * this.matrix[0][jcol];
                    }
                } // for jcol
                break;
        } // switch this.rowLen
        return result;
    } // determinant

    /** Compute the inverse of <em>this</em> Matrix, if possible.
     *  C.f. <a href="http://matrix.reshish.com/inverse.php">Online matrix calculator</a>.
     *  @return a new Matrix, or null if the inverse cannot be computed
     */
    public Matrix inverse() {
        int debugInverse = 2906;
        int result = 0;
        Matrix lmat = this.clone();
        Matrix rmat = new Matrix(this.rowLen);
        rmat.setIdentity();
        if (debug > debugInverse) {
            System.out.println("start with=" + lmat.toString(",")
                    + "\t| " + rmat.toString(",")
                    + ", lmat.determinant()=" + lmat.determinant());
        }
        // now always operate on combined matrix L|R
        boolean pivotFound = true;
        int irow  = 0;
        int icol  = 0;
        int jrow  = 0;
        int jcol  = 0;
        int pivot = 0;
        Vector vpivot = new Vector(this.rowLen);
        while (pivotFound && irow < this.rowLen) {
            if (lmat.matrix[irow][irow] == 0) { // no proper pivot element - exchange
                jrow = irow + 1;
                while (jrow < this.rowLen && lmat.matrix[jrow][irow] == 0) { // search first non-zero -> pivot
                    jrow ++;
                } // while jrow
                if (jrow < this.rowLen) {
                    if (debug > debugInverse) {
                        System.out.println("exchangeRows(" + irow + ", " + jrow + ");");
                    }
                    lmat.exchangeRows(irow, jrow);
                    rmat.exchangeRows(irow, jrow);
                } else { // no pivot
                    pivotFound = false;
                    if (debug > debugInverse) {
                        System.out.println("no pivot found for irow=" + irow);
                    }
                }
            } // no pivot - exchange
            if (pivotFound) {
                pivot = lmat.matrix[irow][irow];
                if (pivot < 0) { // negate row[irow]
                    for (icol = 0; icol < this.rowLen; icol ++) {
                        lmat.matrix[irow][icol] = - lmat.matrix[irow][icol];
                        rmat.matrix[irow][icol] = - rmat.matrix[irow][icol];
                    } // for icol
                    pivot = lmat.matrix[irow][irow];
                } // negate row
                vpivot.set(irow, pivot);
                if (debug > debugInverse) {
                    System.out.println("irow=" + irow
                            + ", pivot=" + pivot
                            );
                }
                jrow = 0;
                while (jrow < this.rowLen) {
                    if (jrow != irow) {
                        int stone = lmat.matrix[jrow][irow];
                        if (stone != 0) { // remove this stone
                            if (debug > debugInverse) {
                                System.out.println("subtract row[" + irow + "]*" + stone
                                                  +   " from row[" + jrow + "]*" + pivot);
                            }
                            // subtract rowi * stone from rowj * pivot
                            for (jcol = 0; jcol < this.colLen; jcol ++) {
                                lmat.matrix[jrow][jcol] = lmat.matrix[jrow][jcol] * pivot - lmat.matrix[irow][jcol] * stone;
                                rmat.matrix[jrow][jcol] = rmat.matrix[jrow][jcol] * pivot - rmat.matrix[irow][jcol] * stone;
                            } // for jcol
                        } // if stone != 0
                    } // jrow != irow
                    jrow ++;
                } // while jrow
            } // pivotFound
            if (debug > debugInverse) {
                System.out.println("done for irow=" + irow + ": "
                        + lmat.toString(",") + " | "
                        + rmat.toString(","));
            }
            irow ++;
        } // for irow

        // normalizing of the diagonal
        int lcmDiag = 1;
        for (irow = 0; irow < this.rowLen; irow ++) {
            pivot = lmat.matrix[irow][irow];
            if (pivot > 1) {
                boolean divisible = true;
                icol = 0;
                while (divisible && icol < this.colLen) {
                    if (rmat.matrix[irow][icol] % pivot != 0) {
                        divisible = false;
                    }
                    icol ++;
                } // while divisible
                if (divisible) { // now divide
                    lmat.matrix[irow][irow] /= pivot;
                    for (icol = 0; icol < this.colLen; icol ++) {
                        rmat.matrix[irow][icol] /= pivot;
                    } // for dividing
                    if (debug > debugInverse) {
                        System.out.println("divided row[" + irow + "] by " + pivot + ": "
                                + lmat.toString(",") + " | "
                                + rmat.toString(","));
                    }
                } else { // not divisible
                    lcmDiag = Vector.lcm(lcmDiag, pivot);
                } // not divisible
            } // pivot > 1
        } // for irow
        if (lcmDiag > 1) { // scale all rows up to this LCM
            for (irow = 0; irow < this.rowLen; irow ++) {
                pivot = lmat.matrix[irow][irow];
                int ifact = lcmDiag / pivot;
                lmat.matrix[irow][irow] *= ifact;
                for (icol = 0; icol < this.colLen; icol ++) {
                    rmat.matrix[irow][icol] *= ifact;
                } // for icol
                if (debug > debugInverse) {
                    System.out.println("row[" + irow + "] scaled up by " + ifact + ": "
                            + lmat.toString(",") + " | "
                            + rmat.toString(","));
                }
            } // for irow
            rmat.setFraction(lcmDiag);
        } // lcmDiag > 1

        return rmat;
    } // inverse


    /** Successively multiplies <em>this</em> {@link Matrix} with
     *  a {@link Vector} <em>vect0</em> and checks whether the power sum property
     *  is maintained, or whether an iteration limit is reached.
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @param vect0 the {@link Vector} to start with
     *  @return an array of Vectors as result of the multiplication;
     *  the size determines the number of times that <em>this</em> Matrix could be multiplied
     *  by <em>vect0</em> while maintaining the power sum property.
     *  A default of 8 iterations is tried
     */
    public ArrayList<Vector> preservedPowerSums(int exp, int left, int right, Vector vect0) {
        return preservedPowerSums(exp, left, right, vect0, 8);
    } // preservedPowerSums(4)

    /** Successively multiplies <em>this</em> {@link Matrix} with
     *  a {@link Vector} <em>vect0</em> and checks whether the power sum property
     *  is maintained, or whether an iteration limit is reached.
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @param vect0 the {@link Vector} to start with
     *  @param maxIter number of iterations to be tried
     *  @return an array of Vectors as result of the multiplication;
     *  the size determines the number of times that <em>this</em> Matrix could be multiplied
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

} // Matrix
