/*  Matrix: a simple, small, square matrix of small numbers
 *  @(#) $Id: Matrix.java 744 2011-07-26 06:29:20Z gfis $
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
import  org.teherba.ramath.EulersExtendedConjecture;
import  java.io.BufferedReader;
import  java.io.File;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.HashMap;
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
    private /*Type*/int[][] matrix;
    /** the length of a row  */
    private int rowLen;
    /** the length of a column, currently always the same as <em>rowLen</em>, that means the matrices are square */
    private int colLen;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public Matrix() {
        this.rowLen = 0;
        this.colLen = this.rowLen;
    } // no-args Constructor

    /** Constructor for an empty square Matrix of some size
     *  @param rlen number of rows/columns
     */
    public Matrix(int rlen) {
        this.rowLen = rlen;
        this.colLen = this.rowLen;
        this.matrix = new /*Type*/int[this.rowLen][this.colLen];
    } // Constructor(int)

    /** Constructor for a Matrix which initializes it from an array of values
     *  @param rlen number of rows/columns
     *  @param values linearized array of row values
     */
    public Matrix(int rlen, int[] values) {
        this(rlen);
        int ival = 0;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int icol = 0; icol < this.colLen; icol ++) {
                this.matrix[irow][icol] = (/*Type*/int) values[ival ++];
            } // for icol
        } // for irow
    } // Constructor(int)

    /** Constructor for a Matrix which initializes it from an array of values.
     *  If the number of elements is no square number, the next lower square
     *  number is taken, and some elements at the end are ignored.
     *  @param values linearized array of rows of arrays of column values
     */
    public Matrix(String[] values) {
        int numElem = values.length;
        int rlen = 0;
        while (rlen * rlen < numElem) {
            rlen ++;
        } // while squaring
        if (rlen * rlen > numElem) {
            rlen --;
        }
        this.rowLen = rlen;
        this.colLen = rlen;
        this.matrix = new /*Type*/int[rowLen][colLen];
        int ival = 0;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int icol = 0; icol < this.colLen; icol ++) {
                this.matrix[irow][icol] = 0;
                try {
                    this.matrix[irow][icol] = Integer.parseInt(values[ival]);
                } catch (Exception exc) {
                }
                ival ++;
            } // for icol
        } // for irow
    } // Constructor(String[])

    /** Constructor for a Matrix which initializes it from a matrix expression.
     *  If the number of elements is no square number, the next lower square
     *  number is taken, and some elements at the end are ignored.
     *  @param matExpr comma-separated array of {@link PolyVector}s in square brackets,
     *  for example "[[a,b,c],[f,g,h],[k,l,m]]"
     */
    public Matrix(String matExpr) {
        String vectExpr = matExpr.substring(0, matExpr.indexOf("]"));
        String[] values = vectExpr.replaceAll("[\\[\\]\\s]+","").split("\\,");
        int rlen = values.length;
        values          = matExpr .replaceAll("[\\[\\]\\s]+","").split("\\,");
        this.rowLen = rlen;
        this.colLen = this.rowLen;
        this.matrix = new /*Type*/int[rowLen][colLen];
        int ival = 0;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int icol = 0; icol < this.colLen; icol ++) {
                this.matrix[irow][icol] = 0;
                try {
                    this.matrix[irow][icol] = Integer.parseInt(values[ival]);
                } catch (Exception exc) {
                }
                ival ++;
            } // for icol
        } // for irow
    } // Constructor(String)

    /** Deep copy of the Matrix and its properties.
     *  @return independant copy of the Matrix
     */
    public Matrix clone() {
        Matrix result = new Matrix(this.rowLen);
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int icol = 0; icol < this.colLen; icol ++) {
                result.matrix[irow][icol] = this.matrix[irow][icol];
            } // for icol
        } // for irow
        return result;
    } // clone

    /** Sets <em>this</em> Matrix to an elementary transformation
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
            for (int icol = 0; icol < elen; icol ++) {
                /*Type*/int elem = (irow == icol) ? (/*Type*/int) 1 : (/*Type*/int) 0; // set identity matrix
                if (elem == 0) {
                    if (iseq == seqNo) {
                        elem = unit;
                    }
                    iseq ++;
                }
                result.matrix[irow][icol] = elem;
            } // for icol
        } // for irow
        return result;
    } // elementary

    /** Initializes <em>this</em> Matrix by setting
     *  ones in the main diagonal and zeroes elsewhere.
     */
    public void setIdentity() {
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int icol = 0; icol < this.colLen; icol ++) {
                this.matrix[irow][icol] = (irow == icol) ? (/*Type*/int) 1 : (/*Type*/int) 0;
             } // for icol
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
            for (int icol = 0; icol < this.colLen; icol ++) {
                /*Type*/int elem = (irow == icol) ? (/*Type*/int) 1 : (/*Type*/int) 0; // set identity matrix
                if (elem == 0) {
                    if (iseq == seqNo) {
                        elem = unit;
                    }
                    iseq ++;
                }
                this.matrix[irow][icol] = elem;
            } // for icol
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
            for (int icol = 0; icol < this.colLen; icol ++) {
                result.matrix[irow][icol] = values[ival] == 0
                        ?   this.matrix[irow][icol]
                        : - this.matrix[irow][icol];
                ival ++;
            } // for icol
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

    /** Returns an element of the Matrix
     *  @param irow row    number of the element (zero based)
     *  @param icol column number of the element (zero based)
     *  @return a small number
     */
    public /*Type*/int get(int irow, int icol) {
        return this.matrix[irow][icol];
    } // get

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a row as a {@link Vector}.
     *  @param rowNo number of the row, zero based
     *  @return a Vector containing the elements of the matrix' row
     */
    public Vector getRow(int rowNo) {
        Vector result = new Vector(this.colLen);
        for (int icol = 0; icol < this.colLen; icol ++) {
            result.vector[icol] = this.matrix[rowNo][icol];
        } // for icol
        return result;
    } // getRow

    /** Sets a row from a {@link Vector}.
     *  @param rowNo number of the row, zero based
     *  @param vect1 Vector containing the elements of the matrix' row
     */
    public void setRow(int rowNo, Vector vect1) {
        for (int icol = 0; icol < rowNo; icol ++) {
            this.matrix[rowNo][icol] = vect1.vector[icol];
        } // for icol
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
        for (int irow = 0; irow< this.rowLen; irow ++) {
            this.matrix[irow][colNo] = vect1.vector[irow];
        } // for irow
    } // setColumn

    /** Returns a string representation of the matrix
     *  with 4 places per element and one line per row
     *  @return a 2-dimensional array of small numbers
     */
    public String toString() {
        StringBuffer result = new StringBuffer(256);
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int icol = 0; icol < this.colLen; icol ++) {
                // result.append(' ');
                result.append(String.format(" %3d", this.matrix[irow][icol]));
            } // for icol
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
                if (format.indexOf(sep) >= 0) {
                    result.append('[');
                }
                for (int icol = 0; icol < this.colLen; icol ++) {
                    if (icol > 0) {
                        result.append(sep);
                    }
                    result.append(String.valueOf(this.matrix[irow][icol]));
                } // for icol
                if (format.indexOf(sep) >= 0) {
                    result.append(']');
                }
            } else {
                for (int icol = 0; icol < this.colLen; icol ++) {
                    // result.append(' ');
                    result.append(String.format(" %3d", this.matrix[irow][icol]));
                } // for icol
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
                int icol = 0;
                while (result && icol < this.colLen) {
                    result = this.matrix[irow][icol] == 0;
                    icol ++;
                } // for icol
                irow ++;
            } // for irow
            return result;
    } // isZero

    /** Compares <em>this</em> matrix with a second for equal elements
     *  @param matr2 compare with this matrix
     *  @return true if all elements are equal
     */
    public boolean equals(Matrix matr2) {
        boolean result = true;
        if (matr2.size() == this.rowLen) {
            int irow = 0;
            while (result && irow < this.rowLen) {
                int icol = 0;
                while (result && icol < this.colLen) {
                    result = this.matrix[irow][icol] == matr2.matrix[irow][icol];
                    icol ++;
                } // for icol
                irow ++;
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot compare matrices of different size " + this.rowLen);
        }
        return result;
    } // equals

    /*-------------- arithmetic operations -------------------------*/

    /** Clone and adds all elements of another matrix to <em>this</em> matrix.
     *  @param matr2 add this matrix
     *  @return reference to a new object, the sum
     */
    public Matrix add(Matrix matr2) {
        Matrix result = new Matrix(this.rowLen);
        if (matr2.size() == this.rowLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int icol = 0; icol < this.colLen; icol ++) {
                    result.matrix[irow][icol] = (/*Type*/int) (this.matrix[irow][icol] + matr2.matrix[irow][icol]);
                } // for icol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot add matrices of different size " + this.rowLen);
        }
        return result;
    } // add(Matrix)

    /** Clone and multiply <em>this</em> matrix with another Matrix (on the right).
     *  @param matr2 multiply with this matrix
     *  @return reference to new object, the matrix product
     */
    public Matrix multiply(Matrix matr2) {
        Matrix result = new Matrix(this.rowLen);
        if (matr2.size() == this.rowLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int icol = 0; icol < this.colLen; icol ++) {
                    int sum = 0;
                    for (int kvec = 0; kvec < this.rowLen; kvec ++) {
                        sum += this.matrix[irow][kvec] * matr2.matrix[kvec][icol];
                    } // for kvec
                    result.matrix[irow][icol] = (/*Type*/int) sum;
                } // for icol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot multiply matrices of different size " + this.rowLen);
        }
        return result;
    } // multiply(Matrix)

    /** Multiply <em>this</em> matrix with some {@link Vector} (on the right).
     *  @param vect2 multiply with this Vector
     *  @return reference to new Vector, the right product
     */
    public Vector multiply(Vector vect2) {
        Vector result = new Vector(this.rowLen);
        if (vect2.size() == this.rowLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                    int sum = 0;
                    for (int kvec = 0; kvec < this.rowLen; kvec ++) {
                        sum += this.matrix[irow][kvec] * vect2.vector[kvec];
                    } // for kvec
                    result.vector[irow] = (/*Type*/int) sum;
            } // for irow
        } else {
        	System.out.println();
        	System.out.println("wrong sizes: " + this.toString(",") + " * " + vect2.toString(","));
            throw new IllegalArgumentException("cannot multiply a matrix and a vector of different size " + this.rowLen);
        }
        return result;
    } // multiply(Vector)


    /*-------------- symbolic ----------------------------------------*/
    /*
Abstract matrix * Pythagorean generator
 (a11*(m^2-n^2) + 2*a12*m*n + a13*(m^2+n^2))^2
+(a21*(m^2-n^2) + 2*a22*m*n + a23*(m^2+n^2))^2
-(a31*(m^2-n^2) + 2*a32*m*n + a33*(m^2+n^2))^2
==
 + a*b^3 * ( - 4*a11*a12 + 4*a12*a13 - 4*a21*a22 + 4*a22*a23 + 4*a31*a32 - 4*a32*a33)
 + a^2*b^2 * ( - 2*a11^2 + 4*a12^2 + 2*a13^2 - 2*a21^2 + 4*a22^2 + 2*a23^2 + 2*a31^2 - 4*a32^2 - 2*a33^2)
 + a^3*b * (4*a11*a12 + 4*a12*a13 + 4*a21*a22 + 4*a22*a23 - 4*a31*a32 - 4*a32*a33)
 + a^4 * (a11^2 + a13^2 + a21^2 + a23^2 - a31^2 - a33^2 + 2*a11*a13 + 2*a21*a23 - 2*a31*a33)
 + b^4 * (a11^2 + a13^2 + a21^2 + a23^2 - a31^2 - a33^2 - 2*a11*a13 - 2*a21*a23 + 2*a31*a33)
------------------
Abstract * (a b c) = a^2 + b^2 - c^2
 (a11*a + a12*b + a13*c)^2
+(a21*a + a22*b + a23*c)^2
-(a31*a + a32*b + a33*c)^2
==
 + a*b * (2*a11*a12 + 2*a21*a22 - 2*a31*a32)
 + a*c * (2*a11*a13 + 2*a21*a23 - 2*a31*a33)
 + a^2 * ( - 1 + a11^2 + a21^2 - a31^2)
 + b*c * (2*a12*a13 + 2*a22*a23 - 2*a32*a33)
 + b^2 * ( - 1 + a12^2 + a22^2 - a32^2)
 + c^2 * (1 + a13^2 + a23^2 - a33^2)
    */
    /*-------------- heavyweight methods -----------------------------*/

    /** Compute the determinant of <em>this</em> matrix.
     *  @return integer determinant value
     */
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
    public int determinant() {
        int result = 0;
        switch (this.rowLen) {
            case 0:
                result = 0;
                break;
            case 1:
                result = this.matrix[0][0];
                break;
            case 2:
                result =  this.matrix[0][0] * this.matrix[1][1]
                        - this.matrix[0][1] * this.matrix[1][0]
                        ;
                break;
            case 3:
                result =  this.matrix[0][0] * this.matrix[1][1] * this.matrix[2][2]
                        - this.matrix[0][2] * this.matrix[1][1] * this.matrix[2][0]
                        + this.matrix[0][1] * this.matrix[1][2] * this.matrix[2][0]
                        - this.matrix[0][1] * this.matrix[1][0] * this.matrix[2][2]
                        + this.matrix[0][2] * this.matrix[1][0] * matrix[2][1]
                        - matrix[0][0] * matrix[1][2] * matrix[2][1]
                        ;
                break;
        /*
        */
            default: // recursive Laplace expansion over minors of the first row
                Matrix minor = new Matrix(this.rowLen - 1);
                int irow, icol;
                // populate minor for 1st column
                for (irow = 1; irow < this.rowLen; irow ++) { // omit row 0
                    for (icol = 1; icol < this.colLen; icol ++) { // omit column 0
                        minor.matrix[irow - 1][icol - 1] = this.matrix[irow][icol];
                    } // for icol
                } // for irow
                // now expand minors over row 0
                for (icol = 0; icol < this.colLen; icol ++) {
                    if (icol > 0) { // repair 1st column of minor
                        for (int irow2 = 1; irow2 < this.rowLen; irow2 ++) {
                            minor.matrix[irow2 - 1][icol - 1] = this.matrix[irow2][icol - 1];
                        } // for irow2
                    }
                    if (debug > 0) {
                        System.out.print("multiply minor with column " + icol + " = "
                                + (this.matrix[0][icol] * ((icol & 1) == 0 ? -1 : 1))
                                + "\n" + minor.toString());
                    }
                    if ((icol & 1) == 0) {
                        result +=   minor.determinant() * this.matrix[0][icol];
                    } else {
                        result += - minor.determinant() * this.matrix[0][icol];
                    }
                } // for icol
                break;
        } // switch this.rowLen
        return result;
    } // determinant

    /** Compute the determinants of <em>this</em> Matrix
     *  for the minors of the first row, with alternating signs,
     *  as a {@link Vector}.
     *  The innerproduct of the resulting
     *  Vector with row 0 is the determinant of the whole matrix.
     *  @return Vector of determinant values of the minors with alternating signs
     */
    public Vector getSubDeterminants() {
        Vector result = new Vector(this.rowLen);
        switch (this.rowLen) {
            case 0:
                break;
            case 1:
                result.vector[0] =    1;
                break;
            case 2:
                result.vector[0] =    (this.matrix[1][1]);
                result.vector[1] =  - (this.matrix[1][0]);
                break;
            case 3:
                result.vector[0] =    (this.matrix[1][1] * this.matrix[2][2] - this.matrix[2][1] * this.matrix[1][2]);
                result.vector[1] =  - (this.matrix[1][0] * this.matrix[2][2] - this.matrix[2][0] * this.matrix[1][2]);
                result.vector[2] =    (this.matrix[1][0] * this.matrix[2][1] - this.matrix[1][1] * this.matrix[2][0]);
                break;
            default: // recursive Laplace expansion over minors of the first row
                Matrix minor = new Matrix(this.rowLen - 1);
                int irow, icol;
                // populate minor for 1st column
                for (irow = 1; irow < this.rowLen; irow ++) { // omit row 0
                    for (icol = 1; icol < this.colLen; icol ++) { // omit column 0
                        minor.matrix[irow - 1][icol - 1] = this.matrix[irow][icol];
                    } // for icol
                } // for irow
                // now expand minors over row 0
                for (icol = 0; icol < this.rowLen; icol ++) {
                    if (icol > 0) { // repair 1st column of minor
                        for (int irow2 = 1; irow2 < this.rowLen; irow2 ++) {
                            minor.matrix[irow2 - 1][icol - 1] = this.matrix[irow2][icol - 1];
                        } // for irow2
                    }
                    if (debug > 0) {
                        System.out.print("multiply minor with column " + icol + " = "
                                + (this.matrix[0][icol] * ((icol & 1) == 0 ? -1 : 1))
                                + "\n" + minor.toString());
                    }
                    if ((icol & 1) == 0) {
                        result.vector[icol] =   minor.determinant();
                    } else {
                        result.vector[icol] = - minor.determinant();
                    }
                } // for icol
                break;
        } // switch this.rowLen
        return result;
    } // getSubDeterminants

    /** Appends to the ArrayList all unimodular matrices A with elements >= 0 such that
     *  for positive {@link Vector}s <em>vect1, vect2: A * vect1 = vect2</em>
     *  @param result append to this list of matrices
     *  @param vect1 multiply this vector with the resulting matrices
     *  @param vect2 result of all multiplications
     *  @param minElem minimum element in the result matrices
     */
    public static void addMultiplicatorsDeprecated(ArrayList<Matrix> result, Vector vect1, Vector vect2, int minElem) {
        // ArrayList<Matrix> result = new ArrayList<Matrix>(16);
        int alen = vect1.size();
        VectorArray[] cands = new VectorArray[alen];
        int[] candSizes     = new         int[alen];
        int
        icand = alen - 1;
        boolean noZero = true;
        while (icand >= 0) {
            cands[icand] = new VectorArray(vect1.divide(vect2.vector[icand], minElem));
            candSizes[icand] = cands[icand].varr.length;
            noZero = noZero && candSizes[icand] > 0;
            icand --;
        } // while icand
        candSizes[0] = 1; // ModoMeter should not iterate over row 0
        ModoMeter meter = new ModoMeter(candSizes);
        Matrix amat = new Matrix(alen);
        while (meter.hasNext() && noZero) {
            int[] indexes = meter.next();
            icand = alen - 1;
            while (icand >= 1) { // row 0 is not yet set
                amat.setRow(icand, cands[icand].get(indexes[icand]));
                icand --;
            } // while icand
            Vector subDets = amat.getSubDeterminants();
            int bitSum = subDets.lastBitSum();
            if (bitSum > 0) { // not only even subdeterminants
                // now try for all possible rows 0
                Vector[] cand0 = cands[0].varr; // vect1.divide(vect2.vector[0]);
                int icand0 = cand0.length - 1;
                while (icand0 >= 0) {
                    int det = subDets.multiply(cand0[icand0]);
                    if (true || det == 1 || det == -1) { // unimodular
                        amat.setRow(0, cand0[icand0]);
                        ArrayList<Vector> chain = amat.preservedPowerSums(alen - 1, alen - 1, 1, vect2);
                        if (chain.size() > 1) {
                            System.out.println("# addMult: "
                                    + vect1.toString("(,)")
                                    + ", " + vect2.toString("(,)")
                                    + ", det=" + det
                                    );
                            for (int ichain = 0; ichain < chain.size() - 2; ichain ++) {
                                System.out.println("# next[" + ichain + "]: " + chain.get(ichain).toString("(,)"));
                            } // for ichain
                            System.out.println(amat.toString());
                            result.add(amat.clone());
                        } // preserved > 1
                    } // unimodular
                    icand0 --;
                } // while icand
            } // bitSum > 0
        } // while meter.hasNext()
        // return result.toArray(new Matrix[0]);
    } // addMultiplicatorsDeprecated

    /** Appends to the ArrayList all matrices A with elements >= 0 such that
     *  for positive {@link Vector}s <em>vect1, vect2: A * vect1 = vect2</em>
     *  @param result append to this list of matrices
     *  @param vect1 multiply this vector with the resulting matrices
     *  @param vect2 result of all multiplications
     *  @param minElem minimum element in the result matrices
     */
    public static void addMultiplicators(ArrayList<Matrix> result, Vector vect1, Vector vect2, int minElem) {
        // ArrayList<Matrix> result = new ArrayList<Matrix>(16);
        int alen = vect1.size();
        VectorArray[] cands = new VectorArray[alen];
        int[] candSizes     = new         int[alen];
        int
        icand = alen - 1;
        boolean noZero = true;
        while (icand >= 0) {
            cands[icand] = new VectorArray(vect1.divide(vect2.vector[icand], minElem));
            candSizes[icand] = cands[icand].varr.length;
            noZero = noZero && candSizes[icand] > 0;
            icand --;
        } // while icand
        candSizes[0] = 1; // ModoMeter should not iterate over row 0
        ModoMeter meter = new ModoMeter(candSizes);
        Matrix amat = new Matrix(alen);
        while (meter.hasNext() && noZero) {
            int[] indexes = meter.next();
            icand = alen - 1;
            while (icand >= 1) { // row 0 is not yet set
                amat.setRow(icand, cands[icand].get(indexes[icand]));
                icand --;
            } // while icand
        /*
            Vector subDets = amat.getSubDeterminants();
            int bitSum = subDets.lastBitSum();
            if (bitSum > 0) { // not only even subdeterminants
        */
                // now try for all possible rows 0
                Vector[] cand0 = cands[0].varr; // vect1.divide(vect2.vector[0]);
                int icand0 = cand0.length - 1;
                while (icand0 >= 0) {
                    if (true) { // no longer:unimodular
                        amat.setRow(0, cand0[icand0]);
                        ArrayList<Vector> chain = amat.preservedPowerSums(alen - 1, alen - 1, 1, vect2);
                        if (chain.size() > 1) {
                            int det = amat.determinant();
                            System.out.println("# addMult: "
                                    + vect1.toString("(,)")
                                    + ", " + vect2.toString("(,)")
                                    + ", det=" + det
                                    );
                            for (int ichain = 0; ichain < chain.size() - 2; ichain ++) {
                                System.out.println("# next[" + ichain + "]: " + chain.get(ichain).toString("(,)"));
                            } // for ichain
                            System.out.println(amat.toString());
                            result.add(amat.clone());
                        } // preserved > 1
                    } // unimodular
                    icand0 --;
                } // while icand
        /*
            } // bitSum > 0
        */
        } // while meter.hasNext()
        // return result.toArray(new Matrix[0]);
    } // addMultiplicators

    /** Appends to the ArrayList all  matrices A with elements >= 0 such that
     *  for positive {@link Vector}s <em>vect1, vect2: A * vect1 = vect2</em>.
     *  This variant does not check for unimodularity (abs(det) = 1).
     *  @param result append to this list of matrices
     *  @param vect1 multiply this vector with the resulting matrices
     *  @param vect2 result of all multiplications
     *  @param minElem minimum element in the result matrices
     */
    public static void addMultiplicators22(ArrayList<Matrix> result, Vector vect1, Vector vect2, int minElem) {
        // ArrayList<Matrix> result = new ArrayList<Matrix>(16);
        int alen = vect1.size();
        VectorArray[] cands = new VectorArray[alen];
        int[] candSizes     = new         int[alen];
        int
        icand = alen - 1;
        boolean noZero = true;
        while (icand >= 0) {
            cands[icand] = new VectorArray(vect1.divide(vect2.vector[icand], minElem));
            candSizes[icand] = cands[icand].varr.length;
            noZero = noZero && candSizes[icand] > 0;
            icand --;
        } // while icand
        // candSizes[0] = 1; // ModoMeter should not iterate over row 0
        ModoMeter meter = new ModoMeter(candSizes);
        Matrix amat = new Matrix(alen);
        while (meter.hasNext() && noZero) {
            int[] indexes = meter.next();
            icand = alen - 1;
            while (icand >= 0) { // row 0 is set
                amat.setRow(icand, cands[icand].get(indexes[icand]));
                icand --;
            } // while icand
            ArrayList<Vector> chain = amat.preservedPowerSums(alen - 1, alen - 1, 1, vect2);
            if (chain.size() > 1) {
                int det = amat.determinant();
                System.out.println("# addMult: "
                        + vect1.toString("(,)")
                        + ", " + vect2.toString("(,)")
                        + ", det=" + det
                        );
                for (int ichain = 0; ichain < chain.size() - 2; ichain ++) {
                    System.out.println("# next[" + ichain + "]: " + chain.get(ichain).toString("(,)"));
                } // for ichain
                System.out.println(amat.toString());
                result.add(amat.clone());
            } // preserved > 1
        } // while meter.hasNext()
        // return result.toArray(new Matrix[0]);
    } // addMultiplicators22

    /** Test whether <em>this</em> Matrix preserves the power sum property
     *  of the parameter {@link Vector}.
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @param vect0 the {@link Vector} to start with
     *  @return number of times that <em>this</em> Matrix can be multiplied
     *  by <em>base</em> while maintaining the power sum property.
     *  A default of 8 iterations is tried
     */
    public ArrayList<Vector> preservedPowerSums(int exp, int left, int right, Vector vect0) {
        return preservedPowerSums(exp, left, right, vect0, 8);
    } // preservedPowerSums(4)

    /** Test whether <em>this</em> Matrix preserves the power sum property
     *  of the parameter {@link Vector}.
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @param vect0 the {@link Vector} to start with
     *  @param maxIter number of iterations to be tried
     *  @return number of times that <em>this</em> Matrix can be multiplied
     *  by <em>vect0</em> while maintaining the power sum property
     */
    public ArrayList<Vector> preservedPowerSums(int exp, int left, int right, Vector vect0, int maxIter) {
        ArrayList<Vector> result = new ArrayList<Vector>(maxIter);
        Vector vecti = this.multiply(vect0);
        long norm0 = vect0.norm2();
        long normi = vecti.norm2();
        int iter = 0;
        while (    (false || norm0 < normi)
                && Math.abs(vecti.gcd()) <= 1
                && vecti.isPowerSum(exp, left, right)
                && iter < maxIter) {
            result.add(vecti);
            vecti = this.multiply(vecti);
            norm0 = normi;
            normi = vecti.norm2();
            iter ++;
        } // while iter
        return result;
    } // preservedPowerSums(5)

    /** Show <em>this</em> {@link Matrix} , and how it preserves the power sum property
     *  @param vect0 initial {@link Vector} to be used in the preservation chain
     *  @param left  number of variables on the left  of the equation
     *  @param rigth number of variables on the right of the equation
     *  @param fact  factor of the chained polynomial
     */
    public void printPreservedChain(Vector vect0, int fact, int left, int right) {
        int maxIter = 8;
        int alen    = vect0.size();
        ArrayList<Vector> chain = this.preservedPowerSums(alen - 1, left, right, vect0, maxIter);
        if (chain.size() >= 2) { // == maxIter) {
            System.out.print(""
                    + "chain " + chain.size()
                    + ", fact " + fact + " "
                    + String.format("%-32s ", this.toString("(,)"))
                    + vect0.toString("(,)")
                    );
            int maxShow = maxIter - (alen - 1 == 2 ? 5 : 0);
            if (maxShow > chain.size()) {
                maxShow = chain.size();
            }
            for (int ichain = 0; ichain < maxShow; ichain ++) {
                System.out.print(" => " + chain.get(ichain).toString("(,)"));
            } // for ichain
            if (chain.size() < maxIter) { // premature end
                System.out.print(" ?? " + this.multiply(chain.get(chain.size() - 1)).toString("(,)"));
            } // premature end
            System.out.println();
        } // preserved > 1
    } // printPreservedChain

    /** Starts with a powersum {@link Vector} <em> base</em>, multiplies it
     *  with all elements of the array of matrices, and checks
     *  whether the power sum property is maintained.
     *  @param base initial powersum
     *  @param marr array of matrices
     *  which may maintain the power sum property for some vectors
     */
    public static void processQueue(Vector base, Matrix[] marr) {
        int alen =  base.size();
        int MAX_QUEUE = 8192;
        ArrayList<Vector> queue = new ArrayList<Vector>(MAX_QUEUE);
        HashMap<String, Integer> map = new HashMap<String, Integer>(MAX_QUEUE);
        base = new Vector(new int[] { 3,4,5,6 });
        queue.add(base);
        map.put(base.toString(","), new Integer(-1));
        System.out.println("process queue, base=" + base.toString("(,)")
                + ", " + marr.length + " matrices, \n[0]=" + marr[0].toString("(,)")
                );
        int ique = 0;
        while (ique < queue.size() && queue.size() < MAX_QUEUE) {
            Vector vect0 = queue.get(ique);
            int last0 = vect0.vector[alen - 1];
            for (int imarr = 0; imarr < marr.length; imarr ++) {
                Vector vect1 = marr[imarr].multiply(vect0);
                int last1 = vect1.vector[alen - 1];
                if (last0 < last1
                        && vect1.isPowerSum(alen - 1, alen - 1, 1)) {
                    if (map.get(vect1.toString(",")) == null) {
                        System.out.print("# queue "     + vect0.toString("(,)")
                                + " =" + imarr + "==> " + vect1.toString("(,)")
                                );
                        queue.add(vect1);
                        map.put(vect1.toString(","), new Integer(imarr));
                        System.out.println(" >>>");
                    } else {
                        // System.out.println(".");
                    }
                    // if powerSum
                } else { // no powerSum
                /*
                    System.out.println("# queue "   + vect0.toString("(,)")
                            + " =" + imarr + "??? " + vect1.toString("(,)")
                            + " ??");
                */
                }
            } // imarr
            ique ++;
        } // while ique
    } // processQueue

    /** Computes a set of primary solutions and checks
     *  by which matrices in <em>matList</em> they can be continued.
     *  @param dim sizes of the vectors and matrices
     *  @param matList list of matrices
     *  which may maintain the power sum property for some vectors
     */
    public static void testPrimaries(int dim, ArrayList<Matrix> matList) {
        ArrayList<Vector> primTuples = (new EulersExtendedConjecture(dim - 1, 512))
        //      .run_3_3_1();
        //      .evalDutch1  (32);
                .evalDutch2  (32);
        //      .evalKorneck3(4);
        //      .evalVieta3(4);
        for (int iprim = 0; iprim < primTuples.size(); iprim ++) {
            Vector prim0 = primTuples.get(iprim);
            Vector prim1 = new Vector(dim);
            System.out.print(prim0.toString("(,)") + ": ");
            int found = 0;
            Permutator permutations = new Permutator(dim - 1);
            while (permutations.hasNext()) {
                int[] perms = permutations.next();
                int iperm = 0;
                while (iperm < dim - 1) {
                    int val = perms[iperm];
                    prim1.vector[iperm] = prim0.vector[val];
                    iperm ++;
                } // while iperm
                prim1.vector[iperm] = prim0.vector[iperm]; // last is not permuted
                int imat = 0;
                while (imat < matList.size()) {
                    Vector prim2 = matList.get(imat).multiply(prim1);
                    if (prim2.isPowerSum(dim - 1, dim - 1, 1)) { // candidate
                        found ++;
                    /*
                        String result = "\t" + prim1.toString("(,)") + "  --" + imat + "->";
                        int factor = prim2.gcd();
                        if (factor > 1) {
                            prim2.divideBy(factor);
                            result += prim2.toString("(,)") + "/" + factor;
                        } else {
                            result += prim2.toString("(,)");
                        } // factor
                        System.out.println(result);
                    */
                    } // candidate
                    imat ++;
                } // while imat
            } // while permutations
            if (found == 0) {
                System.out.println("none found");
            } else {
                System.out.println(found + " continuations");
            }
        } // for iprim
    } // testPrimaries

    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments
     * Test data: data/m3uni.dat
     <pre>
  twice: 1 8 6 9 => 3 10 18 19, determinant -20?
 3 -3 2 2
  -1 0 2
 1 2 -1 1
 3 -1 2 2
  twice: 1 8 6 9 => 3 10 18 19, determinant -6?
 3 -3 2 2
  -1 0 2
 1 2 -1 1
  2 -1 1
 ..
     </pre>
     */
    public static void main(String[] args) {
        Logger log = Logger.getLogger(Matrix.class.getName());
        int iarg = 0;
        int alen = 0; // size of amat
        Matrix amat = null; // matrix to be tested
        Vector vect1 = null;
        Vector vect2 = null;
        try {
            if (args.length == 0) {
                System.out.println("new Matrix(\"[[3, 4], [5, 6]]\") = "
                        + (new Matrix          ("[[3, 4], [5, 6]]")).toString("(,)"));
            } else if (args.length == 1) {
                alen = 3;
                try {
                    alen = Integer.parseInt(args[0]);
                } catch (Exception exc) {
                }
                for (int seqNo = 2 * alen * (alen - 1); seqNo >= 0; seqNo --) {
                    System.out.println("Elementary Matrix # " + seqNo);
                    amat = new Matrix(alen);
                    amat.setElementary(seqNo);
                    System.out.print(amat);
                } // for seqNo
            } else if (args.length >= 2) { // syntax is: -opt filename
                String opt = args[iarg ++];

                if (false) {
                } else if (opt.equals ("-f") || opt.equals("-queue") || opt.equals("-prim")) {
                    // read a list of matrices, and perform some operation with them
                    ArrayList<Matrix> matList = new ArrayList<Matrix>(32);
                    String fileName = args[iarg ++];
                    BufferedReader testReader = null;
                    if(fileName.equals("-")) { // STDIN
                        testReader = new BufferedReader(new InputStreamReader(System.in, "UTF-8"));
                    } else {
                        File testCases = new File(fileName);
                        testReader = new BufferedReader(new FileReader(testCases));
                    } // not STDIN
                    // System.err.println("fileName=" + fileName + ", directory=" + directory);
                    int state = 0; // runs from alen down to 0 for subsequent matrix lines
                    String line = null;
                    String[] parts = null;
                    int ip = 0;
                    Vector base = null; // the 1st tuple in the header line
                    Vector next = null; // the 2nd tuple in the header line
                    while ((line = testReader.readLine()) != null) { // read and process lines
                        System.out.println(line);
                        int colonPos = line.indexOf(":");
                        if (false) {
                        } else if (colonPos >= 0) {
                            // e.g. # twice: 1 8 6 9 => 3 10 18 19, determinant -20?
                            parts = line.replaceAll("\\)", " => ").replaceAll("[\\(,]", " ").split("\\s+");
                            ip = 0;
                            while (ip < parts.length && ! Character.isDigit(parts[ip].charAt(0))) {
                                ip ++;
                            } // up to 1st number
                            int start = ip;
                            while (ip < parts.length &&   Character.isDigit(parts[ip].charAt(0))) {
                                ip ++;
                            } // behind last number
                            int end   = ip;
                            alen = end - start; // number of rows/column/elements
                            base = new Vector(alen);
                            int ivect = 0;
                            for (ip = start; ip < end; ip ++) { // parse the 1st tuple
                                base.vector[ivect] = (/*Type*/int) 0;
                                try {
                                    base.vector[ivect] = (/*Type*/int) Integer.parseInt(parts[ip]);
                                } catch (Exception exc) {
                                }
                                ivect ++;
                            } // for ip 1st
                            if (debug > 1) {
                                System.out.println("state = " + state + ", base=" + base.toString());
                            }
                            start = end + 1;
                            end = start + base.size();
                            next = new Vector(end - start);
                            ivect = 0;
                            for (ip = start; ip < end; ip ++) { // parse the 2nd tuple
                                next.vector[ivect] = 0;
                                try {
                                    next.vector[ivect] = (/*Type*/int) Integer.parseInt(parts[ip]);
                                } catch (Exception exc) {
                                }
                                ivect ++;
                            } // for ip 2nd
                            if (debug > 1) {
                                System.out.println("state = " + state + ", next=" + next.toString());
                            }
                            amat = new Matrix(alen);
                            state = alen;
                        } else { // no ":"
                            // e.g. -3 -3 2 2
                            if (debug > 1) {
                                System.out.print("state " + state + ": ");
                                System.out.println(line);
                            }
                            int irow = alen - state;
                            parts = line.trim().split("\\s+");
                            for (ip = 0; ip < alen; ip ++) { // parse the tuple
                                amat.matrix[irow][ip] = (/*Type*/int) 0;
                                try {
                                    amat.matrix[irow][ip] = (/*Type*/int) Integer.parseInt(parts[ip]);
                                } catch (Exception exc) {
                                }
                            } // for ip
                            state --;
                            if (state == 0) { // now 1 matrix is ready; process the header line and the matrix
                                if (false) {
                                } else if (opt.equals("-queue")) {
                                    System.out.println("\nmatList[" + matList.size() + "]=" + amat.toString("(,)"));
                                    matList.add(amat);
                                } else if (opt.equals("-prim")) {
                                    matList.add(amat);
                                } else { // other keyword
                                    Vector next2 = amat.multiply(base);
                                    if (debug > 0) {
                                        System.out.print("multiplied = " + next2.toString() + ", Matrix=\n" + amat.toString());
                                    }
                                    // System.out.println("parts[1]=/" + parts[1] + "/" + parts[2]);
                                    System.out.println("next" + (next2.equals(next) ? "==" : "!="));
                                    int det = amat.determinant();
                                    System.out.println("det=" + det);
                                    Vector minDet = amat.getSubDeterminants();
                                    int det2 = minDet.multiply(amat.getRow(0));
                                    System.out.println("minDet=" + minDet.toString("(,)")
                                            + ", det2=" + det2);
                                } // other keyword
                            } // if state == 0
                        } // state > 0
                    } // while line
                    // at the end, when all matrices are read in
                    if (false) {
                    } else if (opt.equals("-queue")) { // process addMult output
                        processQueue(base, matList.toArray(new Matrix[0]));
                        // addMult output
                    } else if (opt.equals("-prim"))  { // multiply all matrices with a list of primitives
                        int dim = 4;
                        testPrimaries(dim, matList);
                        // multiply with a list of primitives
                    }
                    // opt -f, -queue, -prim

                } else if (opt.equals("-chain")) {
                    amat  = new Matrix(args[iarg ++]); // may not contain spaces
                    vect1 = new Vector(args[iarg ++]); // may not contain spaces
                    int maxIter = 8;
                    int vlen  = vect1.size();
                    int left  = vlen - 1;
                    if (iarg < args.length) {
                        try {
                            left  = Integer.parseInt(args[iarg ++]);
                        } catch (Exception exc) {
                        }
                    }
                    int right = vlen - left;
                    if (iarg < args.length) {
                        try {
                            right = Integer.parseInt(args[iarg ++]);
                        } catch (Exception exc) {
                        }
                    }
                    amat.printPreservedChain(vect1, 0, left, right);
                    // opt -chain

                } else if (opt.startsWith("-div")) {
                    int dim = 4;
                    try {
                        dim = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    vect1 = new Vector(dim, iarg, args); iarg += dim;
                    vect2 = new Vector(dim, iarg, args); iarg += dim;
                    ArrayList<Matrix> cands = new ArrayList<Matrix>(16);
                    Vector vect3 = vect2.clone();
                    if (false) {
                        Matrix.addMultiplicators(cands, vect1, vect3, 0);
                    } else { // with permutations
                        Permutator permutations = new Permutator(dim - 1);
                        while (permutations.hasNext()) {
                            int[] perms = permutations.next();
                            int iperm = 0;
                            while (iperm < dim - 1) {
                                int val = perms[iperm];
                                vect3.vector[iperm] = vect2.vector[val];
                                iperm ++;
                            } // while iperm
                            vect3.vector[iperm] = vect2.vector[iperm]; // last is not permuted
                            Matrix.addMultiplicators(cands, vect1, vect3, 0);
                            if (debug >= 1) {
                                System.out.println("# vect3=" + vect3.toString("(,)")
                                        + ", cands.size()=" + cands.size());
                            }
                        } // while permutations
                    } // with permutations
                    // -div

                } else if (opt.startsWith("-many")) {
                    int dim = 4;
                    int minElem = -2;
                    try {
                        minElem = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    ArrayList<Vector> test = new ArrayList<Vector>(64);
                    test.add(new Vector(new int[]{  3,  4,  5,  6 }));
/*
                    test.add(new Vector(new int[]{4,17,22,25}));
                    test.add(new Vector(new int[]{2,17,40,41}));
                    test.add(new Vector(new int[]{6,32,33,41}));
*/
                    test.add(new Vector(new int[]{29,34,44,53}));
                    test.add(new Vector(new int[]{22,51,54,67}));
                    test.add(new Vector(new int[]{14,23,70,71}));
                    test.add(new Vector(new int[]{38,43,66,75}));
                    test.add(new Vector(new int[]{31,33,72,76}));
                    test.add(new Vector(new int[]{28,53,75,84}));
                    test.add(new Vector(new int[]{26,55,78,87}));
                    test.add(new Vector(new int[]{21,43,84,88}));
                    test.add(new Vector(new int[]{17,40,86,89}));
                    test.add(new Vector(new int[]{25,38,87,90}));
                    test.add(new Vector(new int[]{19,53,90,96}));
                    test.add(new Vector(new int[]{12,31,102,103}));
                    test.add(new Vector(new int[]{33,70,92,105}));
                    test.add(new Vector(new int[]{13,51,104,108}));
                    test.add(new Vector(new int[]{29,75,96,110}));
                    test.add(new Vector(new int[]{16,47,108,111}));
                    test.add(new Vector(new int[]{3,34,114,115}));
                    test.add(new Vector(new int[]{9,55,116,120}));
                    test.add(new Vector(new int[]{49,84,102,121}));
                    test.add(new Vector(new int[]{44,51,118,123}));
                    test.add(new Vector(new int[]{13,65,121,127}));
                    test.add(new Vector(new int[]{38,57,124,129}));
                    test.add(new Vector(new int[]{5,76,123,132}));
                    test.add(new Vector(new int[]{44,73,128,137}));
/*
                    test.add(new Vector(new int[]{4,17,22,25}));
                    test.add(new Vector(new int[]{2,17,40,41}));
                    test.add(new Vector(new int[]{6,32,33,41}));
                    test.add(new Vector(new int[]{29,34,44,53}));
                    test.add(new Vector(new int[]{22,51,54,67}));
                    test.add(new Vector(new int[]{14,23,70,71}));
                    test.add(new Vector(new int[]{38,43,66,75}));
                    test.add(new Vector(new int[]{31,33,72,76}));
                    test.add(new Vector(new int[]{28,53,75,84}));
                    test.add(new Vector(new int[]{26,55,78,87}));
                    test.add(new Vector(new int[]{21,43,84,88}));
                    test.add(new Vector(new int[]{17,40,86,89}));
                    test.add(new Vector(new int[]{25,38,87,90}));
                    test.add(new Vector(new int[]{19,53,90,96}));
                    test.add(new Vector(new int[]{12,31,102,103}));
                    test.add(new Vector(new int[]{33,70,92,105}));
*/
/*
                    test.add(new Vector(new int[]{  3,  4,  5,  6 }));
                    test.add(new Vector(new int[]{  1,  6,  8,  9 }));
                    test.add(new Vector(new int[]{  3, 10, 18, 19 }));
                    test.add(new Vector(new int[]{  7, 14, 17, 20 }));
                    test.add(new Vector(new int[]{  4, 17, 22, 25 }));

                    test.add(new Vector(new int[]{ 18, 19, 21, 28 }));

                    test.add(new Vector(new int[]{ 11, 15, 27, 29 }));
                    test.add(new Vector(new int[]{  2, 17, 40, 41 }));
                    test.add(new Vector(new int[]{  6, 32, 33, 41 }));
                    test.add(new Vector(new int[]{ 16, 23, 41, 44 }));
                    test.add(new Vector(new int[]{  3, 36, 37, 46 }));
                    test.add(new Vector(new int[]{ 27, 30, 37, 46 }));
                    test.add(new Vector(new int[]{ 12, 19, 53, 54 }));
/*
*/
                    for (int iv0 =       0; iv0 < test.size(); iv0 ++) {
                        for (int iv1 = 0; iv1 < test.size(); iv1 ++) {
                            if (iv0 != iv1) {
                            // System.out.println("iv0=" + iv0 + ", iv1=" + iv1);
                            vect1 = test.get(iv0);
                            vect2 = test.get(iv1);
                            ArrayList<Matrix> cands = new ArrayList<Matrix>(16);
                            Vector vect3 = vect2.clone();
                            System.out.println("# vector[" + iv0 + "]=" + vect1.toString("(,)")
                                             + ", vector[" + iv1 + "]=" + vect3.toString("(,)")
                                             );
                            if (false) {
                                Matrix.addMultiplicators(cands, vect1, vect3, minElem);
                            } else { // with permutations
                                int iloop = dim * dim;
                                Permutator permutations = new Permutator(dim - 1);
                                while (permutations.hasNext() && iloop >= 0) {
                                    int[] perms = permutations.next();
                                    int iperm = 0;
                                    while (iperm < dim - 1) {
                                        int val = perms[iperm];
                                        vect3.vector[iperm] = vect2.vector[val];
                                        iperm ++;
                                    } // while iperm
                                    vect3.vector[iperm] = vect2.vector[iperm]; // last is not permuted
                                    Matrix.addMultiplicators(cands, vect1, vect3, minElem);
                                    if (debug >= 1) {
                                        System.out.println("# vect3=" + vect3.toString("(,)")
                                                + ", cands.size()=" + cands.size());
                                    }
                                    iloop --;
                                } // while permutations
                            } // with permutations
                        } // if iv0 != iv1
                        } // for iv1
                    } // for iv0
                    // -many

                } else if (opt.startsWith("-mult")) {
                    System.out.println(amat.toString("(,)") + " * "
                            + vect1.toString("(,)") + " = "
                            + amat.multiply(vect1).toString("(,)"));
                    // -mult

                } else if (opt.equals("-eec3")) {
                    int maxIter = 4;
                    try {
                        maxIter = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    Vector next0 = new Vector(new int[]
                            { 3, 4, 5, 6 });
                    int nlen = next0.size();
                    amat = new Matrix(4, new int[]
                            { 2, 2, 1, 0
                            , 1, 1, 1, 1
                            , 1, 2, 2, 0
                            , 2, 3, 2, 0
                            });
                    System.out.print("determinant=" + amat.determinant()
                            + "\n" + amat.toString());
                    if (false) { // old code
                        int iter = 0;
                        while (iter <= maxIter) {
                            System.out.println(next0.toString()
                                    + (next0.isPowerSum(3, 3, 1) ? " !" : " ?"));
                            next0 = amat.multiply(next0);
                            iter ++;
                        } // while iter
                    } else { // new code
                        System.out.println("preserved power sums "
                                + amat.preservedPowerSums(3, 3, 1, next0).size() + " times");
                    }
                    next0 = new Vector(new int[]
                            { 3, 4, 5, 6 });
                    ModoMeter meter = new ModoMeter(nlen * nlen); // binary
                    while (meter.hasNext()) {
                        int[] values = meter.next();
                        Matrix bmat = amat.toggleSigns(values);
                        if (bmat.preservedPowerSums(3, 3, 1, next0).size() > 0) {
                            Vector vals = new Vector(values);
                            System.out.print("this too, det=" + bmat.determinant()
                                    + " first=" + bmat.multiply(next0).toString()
                                    + "\n" + vals.toString()
                                    + "\n" + bmat.toString()
                                    );
                        } // if bmat
                    } // while hasNext
                    // opt -eec3

                } else if (opt.equals("-eec2")) {
                    int maxIter = 4;
                    try {
                        maxIter = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    Vector next0 = new Vector(new int[]
                            { 3, 4, 5 });
                    int nlen = next0.size();
                    ModoMeter meter = new ModoMeter(nlen * nlen, maxIter);
                    while (meter.hasNext()) {
                        int[] values = meter.next();
                        amat = new Matrix(nlen, values);
                        int preserved = amat.preservedPowerSums(nlen - 1, nlen - 1, 1, next0).size();
                        if  (Math.abs(amat.determinant()) == 1 && preserved > 0) {
                            System.out.print("preserved " + preserved
                                    + " power sums, det=" + amat.determinant()
                                    + " first=" + amat.multiply(next0).toString()
                                    + "\n" + amat.toString()
                                    );
                        } // if amat
                    } // while hasNext
                    // opt -eec2

                } else if (opt.equals("-eec4")) {
                    int maxIter = 4;
                    try {
                        maxIter = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    Vector next0 = new Vector(new int[]
                            { 3, 4, 5, 6 });
                    int nlen = next0.size();
                    ModoMeter meter = new ModoMeter(nlen * nlen, maxIter);
                    while (meter.hasNext()) {
                        int[] values = meter.next();
                        amat = new Matrix(nlen, values);
                        int preserved = amat.preservedPowerSums(nlen - 1, nlen - 1, 1, next0).size();
                        if  (Math.abs(amat.determinant()) == 1 && preserved > 0) {
                            System.out.print("preserved " + preserved
                                    + " power sums, det=" + amat.determinant()
                                    + " first=" + amat.multiply(next0).toString()
                                    + "\n" + amat.toString()
                                    );
                        } // if amat
                    } // while hasNext
                    // opt -eec4

                } else if (opt.equals("-elem")) {
                    alen = 4;
                    try {
                        alen = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    amat = new Matrix(alen);
                    amat.setIdentity();
                    int maxIter = alen * (alen + 1);
                    int iter = 0;
                    while (iter <= maxIter) {
                        Matrix elem = new Matrix(alen);
                        elem.setElementary(iter);
                        amat = amat.multiply(elem);
                        iter ++;
                    } // while iter
                    System.out.print("Product of elementary matrices with seqNo = 0.." + maxIter
                            + ", determinant = " + amat.determinant()
                            + "\n" + amat.toString());
                    // opt -elem

                } else if (opt.equals("-unimod")) {
                    alen = 3;
                    try {
                        alen = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    ArrayList<Matrix> alist = new ArrayList<Matrix>(32);
                    ModoMeter meter = new ModoMeter(alen*alen); // binary
                    while (meter.hasNext()) {
                        int[] met = meter.next();
                        int count = 0;
                        for (int imet = met.length - 1; imet >= 0; imet --) {
                            if (met[imet] != 0) {
                                count ++;
                            }
                        } // for imet
                        if (count <= alen + 1) {
                            amat = new Matrix(alen, met);
                            int det = amat.determinant();
                            if (Math.abs(det) == 1) { // is unimodular
                                System.out.print("Unimodular matrix E" + alist.size()
                                        + ", determinant = " + det
                                        + ", rank = " + count
                                        + "\n" + amat.toString());
                                alist.add(amat);
                            } // unimodular
                        } // if count
                    } // while meter
                    int asize = alist.size();
                    System.out.println(asize + " elementary matrices");
                    // opt -unimod
                    for (int irow = 0; irow < asize; irow ++) {
                        for (int icol = 0; icol < asize; icol ++) {
                            amat = alist.get(irow).multiply(alist.get(icol));
                            for (int ikey = 0; ikey < asize; ikey ++) {
                                if (amat.equals(alist.get(ikey))) {
                                    System.out.println("E" + ikey + " = E" + irow + " * E" + icol);
                                } // if ==
                            } // for ikey
                        } // for icol
                    } // for irow
                    // opt -unimod

                } // options
            } // 2 args
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    } // main

} // Matrix
