/*  PolyMatrix: a square matrix with Polynomial elements
 *  @(#) $Id: PolyMatrix.java 744 2011-07-26 06:29:20Z gfis $
 *  2016-10-04: getVariableMap(Matrix)
 *  2016-04-24: construct systematically with prefix; getVariableMap()
 *  2015-04-14: explicit determinant for case 3
 *  2015-03-26: construct from expression
 *  2015-03-24: new PolyMatrix(Matrix amat)
 *  2015-01-01: Barnings B identity
 *  2013-08-23: Serializable
 *  2013-08-15, Georg Fischer: copied from linear.Matrix
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
package org.teherba.ramath.symbolic;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.PolyVector;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.linear.Vector;
import  java.io.BufferedReader;
import  java.io.File;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.io.Serializable;
import  java.util.ArrayList;
import  org.apache.logging.log4j.Logger;
import  org.apache.logging.log4j.LogManager;

/** Class PolyMatrix implements some simple linear algebra operations
 *  on square matrices of {@link Polynomial}s.
 *  Typically a PolyMatrix will have no more than 8 rows/columns.
 *  It is used to solve diophantine problems.
 *  @author Dr. Georg Fischer
 */
public class PolyMatrix implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: PolyMatrix.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    public static int debug = 0;
    /** System dependant newline character sequence */
    protected static String newline = System.getProperty("line.separator");

    /*-------------- class properties -----------------------------*/

    /** a 2-dimensional array of small numbers */
    protected /*Type*/Polynomial[][] matrix;
    /** the length of a row  */
    protected int rowLen;
    /** the length of a column, normally the same as <em>rowLen</em> */
    protected int colLen;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor: a square PolyMatrix of size 3
     */
    public PolyMatrix() {
        this(3, 3);
    } // no-args Constructor

    /** Constructor for an empty, square PolyMatrix
     *  @param rowLen number of rows/columns
     */
    public PolyMatrix(int rowLen) {
        this (rowLen, rowLen);
    } // Constructor(int)

    /** Constructor for an empty, rectangular PolyMatrix
     *  @param rowLen number of rows
     *  @param colLen number of columns
     */
    public PolyMatrix(int rowLen, int colLen) {
        this.rowLen = rowLen;
        this.colLen = colLen;
        this.matrix = new /*Type*/Polynomial[this.rowLen][this.colLen];
    } // Constructor(int, int)

    /** Constructor for a rectangular PolyMatrix from a rectangular {@link Matrix}
     *  @param matr a {@link Matrix} of small integers
     */
    public PolyMatrix(Matrix matr) {
        this(matr.getRowLen(), matr.getColLen());
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = new /*Type*/Polynomial(String.valueOf(matr.get(irow, jcol)));
            } // for jcol
        } // for irow
    } // Constructor(Matrix)

    /** Constructor for a rectangular PolyMatrix which initializes it from an array of values
     *  @param rowLen number of rows
     *  @param values linearized array of row values
     */
    public PolyMatrix(int rowLen, String[] values) {
        this(rowLen, values.length / rowLen);
        int ival = 0;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = new /*Type*/Polynomial(values[ival ++]);
            } // for jcol
        } // for irow
    } // Constructor(int, String[])

    /** Constructor for an abstract, square PolyMatrix which initializes it with
     *  systematic variable names.
     *  For example, PolyMatrix(2, "m") yields [[m11,m12],[m21,m22]].
     *  @param rowLen number of rows/columns (better &lt;= 9)
     *  @param prefix String (letter) for the start of the variable names
     */
    public PolyMatrix(int rowLen, String prefix) {
        this(rowLen, rowLen, prefix);
    } // Constructor(int, String)

    /** Constructor for an abstract, rectangular PolyMatrix which initializes it with
     *  systematic variable names.
     *  For example, PolyMatrix(2, "m") yields [[m11,m12],[m21,m22]].
     *  @param rowLen number of rows    (better &lt;= 9)
     *  @param colLen number of columns (better &lt;= 9)
     *  @param prefix String (letter) for the start of the variable names
     */
    public PolyMatrix(int rowLen, int colLen, String prefix) {
        this(rowLen, colLen);
        int numDig = String.format("%d", rowLen).length(); // number of digits
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = Polynomial.parse(
                        (String.format(prefix + "%0" + numDig + "d%0" + numDig + "d", irow + 1, jcol + 1)));
            } // for jcol
        } // for irow
    } // Constructor(int, int, String)

    /** Fills a rectangular PolyMatrix from an array of values
     *  @param values array of values
     */
    private void fill(String[] values) {
        this.matrix = new /*Type*/Polynomial[this.rowLen][this.colLen];
        int ival = 0;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = new /*Type*/Polynomial(values[ival ++]);
            } // for jcol
        } // for irow
    } // fill

    /** Constructor for a square PolyMatrix which initializes it from an array of values.
     *  If the number of elements is no square number, the next lower square
     *  number is taken, and some elements at the end are ignored.
     *  @param values linearized array of rows of arrays of column values
     */
    public PolyMatrix(String[] values) {
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

    /** Constructor for a rectangular PolyMatrix which initializes it from a matrix expression.
     *  If the number of elements is no square number, the next lower square
     *  number is taken, and some elements at the end are ignored.
     *  @param matExpr comma-separated array of {@link PolyVector}s in square brackets
     *  (which are ignored),
     *  for example "[[a,b,c],[f,g,h],[k,l,m]]"
     */
    public PolyMatrix(String matExpr) {
        String vectExpr = matExpr.substring(0, matExpr.indexOf("]"));
        String[] values = vectExpr.replaceAll("[\\[\\]\\s]+","").split("\\,"); // first row
        int colLen  = values.length;
        values      = matExpr .replaceAll("[\\[\\]\\s]+","").split("\\,"); // all
        this.colLen = colLen;
        this.rowLen = values.length / this.colLen;
        this.fill(values);
    } // Constructor(String)

    /** Deep copy of the PolyMatrix and its properties.
     *  @return independant copy of the PolyMatrix
     */
    public PolyMatrix clone() {
        PolyMatrix result = new PolyMatrix(this.rowLen, this.colLen);
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                result.matrix[irow][jcol] = this.matrix[irow][jcol];
            } // for jcol
        } // for irow
        return result;
    } // clone

    /** Initializes <em>this</em> PolyMatrix by setting
     *  the unit in the main diagonal and zeroes elsewhere.
     *  @param unit a string defining the value to be set in the main diagonal, usually "1"
     */
    public void setIdentity(String unit) {
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow][jcol] = new /*Type*/Polynomial(irow == jcol ? unit : "0");
             } // for jcol
        } // for irow
    } // setIdentity

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

    /** Returns an element of the PolyMatrix
     *  @param irow row    number of the element (zero based)
     *  @param jcol column number of the element (zero based)
     *  @return a small number
     */
    public /*Type*/Polynomial get(int irow, int jcol) {
        return this.matrix[irow][jcol];
    } // get

    /** Sets an element of the PolyMatrix
     *  @param irow row    number of the element (zero based)
     *  @param jcol column number of the element (zero based)
     *  @param value the desired value of the element
     */
    public void set(int irow, int jcol, Polynomial value) {
        this.matrix[irow][jcol] = value;
    } // set

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a row as a {@link PolyVector}.
     *  @param rowNo number of the row, zero based
     *  @return a PolyVector containing the elements of the matrix' row
     */
    public PolyVector getRow(int rowNo) {
        PolyVector result = new PolyVector(colLen);
        for (int jcol = 0; jcol < this.colLen; jcol ++) {
            result.vector[jcol] = this.matrix[rowNo][jcol];
        } // for jcol
        return result;
    } // getRow

    /** Sets a row from a {@link PolyVector}.
     *  @param rowNo number of the row, zero based
     *  @param vect1 PolyVector containing the elements of the matrix' row
     */
    public void setRow(int rowNo, PolyVector vect1) {
        for (int jcol = 0; jcol < rowNo; jcol ++) {
            this.matrix[rowNo][jcol] = vect1.vector[jcol];
        } // for jcol
    } // setRow

    /** Returns a column as a {@link PolyVector}.
     *  @param colNo number of the column, zero based
     *  @return a PolyVector containing the elements of the matrix' column
     */
    public PolyVector getColumn(int colNo) {
        PolyVector result = new PolyVector(rowLen);
        for (int irow = 0; irow < this.rowLen; irow ++) {
            result.vector[irow] = this.matrix[irow][colNo];
        } // for irow
        return result;
    } // getColumn

    /** Sets a column from a {@link PolyVector}.
     *  @param colNo number of the column, zero based
     *  @param vect1 PolyVector containing the elements of the matrix' column
     */
    public void setColumn(int colNo, PolyVector vect1) {
        for (int irow = 0; irow< this.rowLen; irow ++) {
            this.matrix[irow][colNo] = vect1.vector[irow];
        } // for irow
    } // setColumn

    /** Returns a string representation of the matrix
     *  @return a 2-dimensional array of small numbers
     */
    public String toString() {
        return this.toString(",");
     } // toString()

    /** Returns a string representation of the matrix
     *  @param format specification of the layout: "," or " "
     *  @return a 2-dimensional array of small numbers
     */
    public String toString(String format) {
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        for (int irow = 0; irow < this.rowLen; irow ++) {
            if (irow > 0) {
                result.append(sep);
            }
            if (format != null && format.length() > 0) {
                if (format.indexOf(sep) >= 0) {
                    result.append('[');
                }
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    if (jcol > 0) {
                        result.append(sep);
                    }
                    result.append(this.matrix[irow][jcol].toString().replaceAll("\\s" ,""));
                } // for jcol
                if (format.indexOf(sep) >= 0) {
                    result.append(']');
                }
            } else {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    // result.append(' ');
                    result.append(this.matrix[irow][jcol].toString().replaceAll("\\s" ,""));
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
                    result = this.matrix[irow][jcol].isZero();
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
    public boolean equals(PolyMatrix matr2) {
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

    /** Clone and adds all elements of another rectangular PolyMatrix
     *  to <em>this</em> rectangular PolyMatrix.
     *  @param matr2 add this matrix
     *  @return reference to a new object, the sum
     */
    public PolyMatrix add(PolyMatrix matr2) {
        PolyMatrix result = new PolyMatrix(rowLen);
        if (matr2.getRowLen() == this.rowLen && matr2.getColLen() == this.colLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    result.matrix[irow][jcol] = this.matrix[irow][jcol].add(matr2.get(irow, jcol));
                } // for jcol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot add matrices of different size "
                    + this.rowLen + "," + this.colLen);
        }
        return result;
    } // add(PolyMatrix)

    /** Clone and subtracts all elements of another matrix from <em>this</em> matrix.
     *  @param matr2 subtract this matrix
     *  @return reference to a new object, the sum
     */
    public PolyMatrix subtract(PolyMatrix matr2) {
        PolyMatrix result = new PolyMatrix(rowLen);
        if (matr2.getRowLen() == this.rowLen && matr2.getColLen() == this.colLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    result.matrix[irow][jcol] = this.matrix[irow][jcol].subtract(matr2.get(irow, jcol));
                } // for jcol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot subtract matrices of different size "
                    + this.rowLen + "," + this.colLen);
        }
        return result;
    } // subtract(PolyMatrix)

    /** Clone and multiplies all elements of <em>this</em> matrix with a fixed {@link Polynomial}.
     *  @param poly2 multiplicator
     *  @return reference to a new object, the product
     */
    public PolyMatrix multiply(Polynomial poly2) {
        PolyMatrix result = new PolyMatrix(rowLen);
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    result.matrix[irow][jcol] = this.matrix[irow][jcol].multiply(poly2);
                } // for jcol
            } // for irow
        return result;
    } // multiply(Polynomial)

    /** Clone and multiply <em>this</em> matrix with another PolyMatrix (on the right).
     *  @param matr2 multiply with this matrix
     *  @return reference to new object, the matrix product
     */
    public PolyMatrix multiply(PolyMatrix matr2) {
        PolyMatrix result = new PolyMatrix(rowLen);
        if (matr2.getColLen() == this.rowLen && matr2.getRowLen() == this.colLen ) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    Polynomial sum = new Polynomial();
                    for (int kvec = 0; kvec < this.rowLen; kvec ++) {
                        sum = sum.add(this.matrix[irow][kvec].multiply(matr2.get(kvec, jcol)));
                    } // for kvec
                    result.matrix[irow][jcol] = sum;
                } // for jcol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot multiply matrices of different size " + this.rowLen);
        }
        return result;
    } // multiply(PolyMatrix)

    /** Multiply <em>this</em> matrix by some {@link PolyVector} (on the right).
     *  @param vect2 multiply with this {@link PolyVector}
     *  @return reference to new {@link PolyVector}, the right product
     */
    public PolyVector multiply(PolyVector vect2) {
        PolyVector result = new PolyVector(rowLen);
        if (vect2.size() == this.colLen) {
            for (int irow = 0; irow < this.rowLen; irow ++) {
                    Polynomial sum = new Polynomial();
                    for (int jcol = 0; jcol < this.colLen; jcol ++) {
                        sum = sum.add(this.matrix[irow][jcol].multiply(vect2.vector[jcol]));
                    } // for jcol
                    result.vector[irow] = sum;
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot multiply a matrix and a vector of different size: "
                + this.toString(",") + " * " + vect2.toString(","));
        }
        return result;
    } // multiply(PolyVector)

    /** Gets a {@link VariableMap} from all variable names (key) to <em>null</em> (value).
     *  @return map of variable names mapped to <em>null</em>
     */
    public VariableMap getVariableMap() {
        VariableMap result = new VariableMap();
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
               result.addTo(this.matrix[irow][jcol].getVariableMap());
            } // for jcol
        } // for irow
        return result;
    } // getVariableMap()
    
    /** Gets a {@link VariableMap} from all elements in <em>this</em> {@link PolyMatrix} to
     *  the corresponding elements in a second {@link PolyMatrix}
     *  @param pmat2 2nd PolyMatrix for values
     *  @return mapping from keys (from <em>this</em>) to values (from <em>pmat2</em>)
     */
    public VariableMap getVariableMap(PolyMatrix pmat2) {
        VariableMap result = new VariableMap();
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
               result.put(this.get(irow, jcol).toString(), pmat2.get(irow, jcol).toString());
            } // for jcol
        } // for irow
        return result;
    } // getVariableMap(pmat2)

    /** Gets a {@link VariableMap} from all elements in <em>this</em> {@link PolyMatrix} to
     *  the corresponding elements in a second {@link Matrix}
     *  @param amat2 2nd Matrix for values
     *  @return mapping from keys (from <em>this</em>) to values (from <em>amat2</em>)
     */
    public VariableMap getVariableMap(Matrix amat2) {
        VariableMap result = new VariableMap();
        for (int irow = 0; irow < this.rowLen; irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
               result.put(this.get(irow, jcol).toString(), String.valueOf(amat2.get(irow, jcol)));
            } // for jcol
        } // for irow
        return result;
    } // getVariableMap(amat2)

    /*-------------- heavyweight methods -----------------------------*/

    /** Compute the characteristic polynomial of <em>this</em> matrix,
     *  that is <em>det(x*I - A)</em>
     *  @param x the variable for the resulting {@link Polynomial}
     *  @return a single {@link Polynomial} in <em>x</em>
     */
    public Polynomial characteristicPolynomial(String x) {
        PolyMatrix ident = new PolyMatrix(rowLen);
        ident.setIdentity(x);
        return ident.subtract(this).determinant();
    } // characteristicPolynomial

    /** Compute the determinant of <em>this</em> matrix.
     *  @return symbolic determinant as a single {@link Polynomial}
     */
    public Polynomial determinant() {
        Polynomial result = new Polynomial(); // 0 = 0
        switch (rowLen) {
            case 0:
                result = new Polynomial();
                break;
            case 1:
                result = this.matrix[0][0];
                break;
            case 2:
                result =  (this.matrix[0][0].multiply(this.matrix[1][1])).subtract
                          (this.matrix[0][1].multiply(this.matrix[1][0])) ;
                break;
            case 3:
                result =  (this.matrix[0][0].multiply(this.matrix[1][1]).multiply(this.matrix[2][2])).subtract
                          (this.matrix[0][2].multiply(this.matrix[1][1]).multiply(this.matrix[2][0])).add
                          (this.matrix[0][1].multiply(this.matrix[1][2]).multiply(this.matrix[2][0])).subtract
                          (this.matrix[0][1].multiply(this.matrix[1][0]).multiply(this.matrix[2][2])).add
                          (this.matrix[0][2].multiply(this.matrix[1][0]).multiply(this.matrix[2][1])).subtract
                          (this.matrix[0][0].multiply(this.matrix[1][2]).multiply(this.matrix[2][1])) ;
                break;
            default: // recursive Laplace expansion over minors of the first row
                PolyMatrix minor = new PolyMatrix(rowLen - 1);
                int irow, jcol;
                // populate minor for 1st column
                for (irow = 1; irow < this.rowLen; irow ++) { // omit row 0
                    for (jcol = 1; jcol < this.colLen; jcol ++) { // omit column 0
                        minor.matrix[irow - 1][jcol - 1] = this.matrix[irow][jcol];
                    } // for jcol
                } // for irow
                // now expand minors over row 0
                for (jcol = 0; jcol < this.colLen; jcol ++) {
                    if (jcol > 0) { // repair 1st column of minor
                        for (int irow2 = 1; irow2 < this.rowLen; irow2 ++) {
                            minor.matrix[irow2 - 1][jcol - 1] = this.matrix[irow2][jcol - 1];
                        } // for irow2
                    }
                    if ((jcol & 1) == 0) {
                        result  = result.add     (minor.determinant().multiply(this.matrix[0][jcol]));
                    } else {
                        result  = result.subtract(minor.determinant().multiply(this.matrix[0][jcol]));
                    }
                } // for jcol
                break;
        } // switch rowLen
        return result;
    } // determinant

    /*-------------------- Test Driver --------------------*/

    /** Euclid's formula for the generation of Pythagorean triples */
    private static PolyVector pgen = new PolyVector(3, 0, new String[]
            { "m^2 - n^2"
            , "2*m*n"
            , "m^2 + n^2"
            } );

    /** vector of variables for EEC(2) */
    private static PolyVector var3 = new PolyVector(3, 0, new String[]
            { "x", "y", "z" } );

    /** Print the results of some matrix tests
     *  @param title a description of the matrix to be tested
     *  @param amat the matrix to be tested
     */
    private static void printPythagoreanTest(String title, PolyMatrix amat) {
        System.out.println(title + " = "       + amat.toString(","));
        System.out.println("determinant = "    + amat.determinant().toString());
        System.out.println("characteristicPolynomial = " + amat.characteristicPolynomial("x").toString());
        PolyVector next = amat.multiply(pgen);
        System.out.println("next vector " + next.toString(",")
                + " is " + (next.isPowerSum(2, 2, 1) ? "a " : "no ") + "sum of powers");
        System.out.println("convolve(\"u^2+v^2-w^2\"): "
                + amat.multiply(var3).convolve(new Polynomial("u^2+v^2-w^2")).toString());
        int alen = amat.size();
        PolyVector vect1 = new PolyVector(alen, "a"); // the abstract vector
        System.out.println("abstract powersum: "
                + amat.multiply(vect1).powerSum(alen - 1, alen - 1, 1)
                .toString().replaceAll("\\s", "")
                );
        System.out.println("--------");
    } // printPythagoreanTest

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        Logger log = LogManager.getLogger(PolyMatrix.class.getName());
        int iarg = 0;
        int alen = 0; // size of amat
        PolyMatrix amat  = null; // matrix to be tested
        PolyVector vect1 = null;
        PolyVector vect2 = null;
        try {
            if (false) {
            } else if (args.length == 0) {
                amat = new              PolyMatrix ("[[x^2, y^2, - z^2],[x,y,z], [4,3,5]]");
                System.out.println("new PolyMatrix(\"[[x^2, y^2, - z^2],[x,y,z], [4,3,5]]\") = "
                        + amat.toString(","));

                amat = new PolyMatrix(3, "a");
                System.out.println("PolyMatrix " + amat.toString(",")
                        + newline + "determinant = " + amat.determinant().toString());
                amat = new PolyMatrix(4, "a");
                System.out.println("PolyMatrix " + amat.toString(",")
                        + newline + "determinant = " + amat.determinant().toString());
            } else if (args.length == 1) {
                alen = 4;
                try {
                    alen = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) {
                }
                amat = new PolyMatrix(alen);
                amat.setIdentity("1");
                System.out.println("Identity: " + amat.toString(","));
                amat = amat.multiply(new Polynomial("x+1"));
                System.out.println("*(x + 1): " + amat.toString(","));
            } else if (args.length >= 2) { // syntax is: -opt filename
                String opt = args[iarg ++];
                if (false) {
                } else if (opt.startsWith("-abst")) { // multiply with vector of abstract variables
                    amat  = new PolyMatrix(args[iarg ++]); // may not contain spaces
                    alen = amat.size();
                    vect1 = new PolyVector(alen, "a"); // the abstract vector
                    System.out.println(amat.toString("(,)") + " * "
                            + vect1.toString("(,)") + " = "
                            + amat.multiply(vect1).powerSum(alen - 1, alen, 0)
                            .toString().replaceAll("\\s", "")
                            );
                    // -abst
                } else if (opt.startsWith("-char")) {
                    // c.f. http://en.wikipedia.org/wiki/Tree_of_Pythagorean_triples
                    System.out.println("Generator " + pgen.toString(",")
                            + " is" + (pgen.isPowerSum(2, 2, 1) ? " " : "no ") + "sum of powers");
                    // (u+2*v+2*w)^2+(2*u+v+2*w)^2-(2*u+2*v+3*w)^2 = 0 --> u^2 + v^2 - w^2 = 0
                    printPythagoreanTest("Barning\'s B", new PolyMatrix(3, new String[]
                            { "1", "2", "2"
                            , "2", "1", "2"
                            , "2", "2", "3"
                            } ));
                    // (u-2*v+2*w)^2+(2*u-v+2*w)^2-(2*u-2*v+3*w)^2 --> u^2 + v^2 - w^2
                    printPythagoreanTest("Barning\'s A", new PolyMatrix(3, new String[]
                            { "1", "-2", "2"
                            , "2", "-1", "2"
                            , "2", "-2", "3"
                            } ));
                    // (-u+2*v+2*w)^2+(-2*u+v+2*w)^2-(-2*u+2*v+3*w)^2 --> u^2 + v^2 - w^2
                    printPythagoreanTest("Barning\'s C", new PolyMatrix(3, new String[]
                            { "-1", "2", "2"
                            , "-2", "1", "2"
                            , "-2", "2", "3"
                            } ));
                    //-----------------------------------
                    printPythagoreanTest("Price\'s B\'", new PolyMatrix(3, new String[]
                            { "2",  "1", "1"
                            , "2", "-2", "2"
                            , "2", "-1", "3"
                            } ));
                    printPythagoreanTest("Price\'s A\'", new PolyMatrix(3, new String[]
                            { "2",  "1", "-1"
                            , "-2", "2", "2"
                            , "-2", "1", "3"
                            } ));
                    printPythagoreanTest("Price\'s C\'", new PolyMatrix(3, new String[]
                            { "2",  "-1", "1"
                            , "2", "2", "2"
                            , "2", "1", "3"
                            } ));
                    // -char
                } else if (opt.startsWith("-mult")) {
                    amat  = new PolyMatrix(args[iarg ++]); // may not contain spaces
                    vect1 = new PolyVector(args[iarg ++]); // may not contain spaces
                    System.out.println(amat.toString("(,)") + " * " + vect1.toString("(,)") + " = ");
                    System.out.println(amat.multiply(vect1).toString("(,)"));
                    // -mult
                } else {
                    System.err.println("invalid option " + opt);
                } // options
            } // 2 args
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    } // main

} // PolyMatrix
