/*  BigMatrix: a simple, square matrix of BigInteger numbers
 *  @(#) $Id: BigMatrix.java 744 2011-07-26 06:29:20Z gfis $
 *  2019-08-30: with ArrayList of rows
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
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.util.ModoMeter;
import  org.teherba.ramath.util.Permutator;
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  org.apache.log4j.Logger;

/** Class BigMatrix implements some simple linear algebra operations
 *  on square matrices of BigInteger numbers (Java <em>int</em>s).
 *  It is used to solve diophantine problems.
 *  @author Dr. Georg Fischer
 */
public class BigMatrix extends Matrix implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: BigMatrix.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    public static int debug = 0;

    /*-------------- class properties -----------------------------*/

    /** a 2-dimensional array of numbers */
    protected ArrayList<BigVector> matrix;
    /*-------------- construction -----------------------------*/

    /** No-args Constructor: an empty, square RationalMatrix of size 3
     */
    public BigMatrix() {
        matrix = new ArrayList<BigVector>(16);
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
        this();
        this.rowLen = rowLen;
        this.colLen = colLen;
        for (int irow = 0; irow < this.rowLen; irow ++) {
            matrix.add(new BigVector(colLen, BigInteger.ZERO));
        } // for irow
    } // Constructor(int, int)

    /** Constructor for a rectangular BigMatrix which initializes it from an array of values
     *  @param rowLen number of rows/columns
     *  @param values linearized array of row values
     */
/*
    public BigMatrix(int rowLen, BigInteger[] values) {
        this(rowLen, values.length / rowLen);
        int ival = 0;
        for (int irow = 0; irow < this.size(); irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow, jcol, values[ival ++];
            } // for jcol
        } // for irow
    } // Constructor(int, int[])
*/
    /** Fills a rectangular BigMatrix from an array of values
     *  @param values array of values
     */
/*
    private void fill(String[] values) {
        this.matrix = new BigInteger[this.size(), this.colLen];
        int ival = 0;
        for (int irow = 0; irow < this.size(); irow ++) {
            for (int jcol = 0; jcol < this.colLen; jcol ++) {
                this.matrix[irow, jcol, BigInteger.ZERO;
                try {
                    this.matrix[irow, jcol, new BigInteger(values[ival]);
                } catch (Exception exc) {
                    System.err.println(exc.getMessage());
                    exc.printStackTrace();
                }
                ival ++;
            } // for jcol
        } // for irow
    } // fill
*/
    /** Constructor for a square BigMatrix which initializes it from an array of values.
     *  If the number of elements is no square number, the next lower square
     *  number is taken, and some elements at the end are ignored.
     *  @param values linearized array of rows of arrays of column values
     */
/*
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
*/
    /** Constructor for a rectangular BigMatrix which initializes it from a matrix expression.
     *  If the number of elements is no square number, the next lower square
     *  number is taken, and some elements at the end are ignored.
     *  @param matExpr comma-separated array of {@link BigVector}s in square brackets,
     *  for example "[[11,12,13],[21,22,23],[31,32,33]]"
     */
    public BigMatrix(String matExpr) {
        this();
        String[] rows = matExpr.replaceAll("\\s", "").split("\\],\\[");
        int irow = 0;
        while (irow < rows.length) {
            BigVector vect = new BigVector(rows[irow]);
            this.colLen = vect.size();
            this.set(irow, vect);
            irow ++;
        } // while irow
    } // Constructor(String)

    /** Deep copy of the BigMatrix and its properties.
     *  @return independant copy of the BigMatrix
     */
    public BigMatrix clone() {
        BigMatrix result = new BigMatrix();
        int irow = 0;
        while (irow < size()) {
            result.set(irow, this.get(irow));
            irow ++;
        } // for irow
        return result;
    } // clone

    /** Initializes <em>this</em> Matrix by setting
     *  "1" in the main diagonal and "0" elsewhere.
     */
    @Override
    public void setIdentity() {
        int irow = 0;
        while (irow < size()) {
            BigVector row = new BigVector(colLen, BigInteger.ZERO);
            row.set(irow, BigInteger.ONE);
            this.set(irow, row);
            irow ++;
        } // for irow
    } // setIdentity

    /*-------------- bean methods, setters and getters -----------------------------*/
    // inherited: size, getRowLen, getColLen

    /** Gets an element.
     *  @param rowNo number of the row, zero based
     *  @param colNo number of the column, zero based
     *  @return value value of the element
     */
    public BigInteger getBig(int rowNo, int colNo) {
        return this.matrix.get(rowNo).getBig(colNo);
    } // getBig

    /** Sets an element.
     *  @param rowNo number of the row, zero based
     *  @param colNo number of the column, zero based
     *  @param value value of the element
     */
    public void set(int rowNo, int colNo, BigInteger value) {
        BigVector row = matrix.get(rowNo);
        row.set(colNo, value);
        matrix.set(rowNo, row);
    } // set

    /** Returns a row as a {@link BigVector}.
     *  @param rowNo number of the row, zero based
     *  @return a BigVector containing the elements of the matrix' row
     */
    public BigVector getBigRow(int rowNo) {
        return matrix.get(rowNo);
    } // getBigRow

    /** Returns a row as a {@link BigVector}.
     *  @param rowNo number of the row, zero based
     *  @return a BigVector containing the elements of the matrix' row
     */
    public BigVector get(int rowNo) {
        return matrix.get(rowNo);
    } // get

    /** Sets a row from a {@link BigVector}.
     *  @param rowNo number of the row, zero based
     *  @param vect1 BigVector containing the elements of the matrix' row
     */
    public void setRow(int rowNo, BigVector vect1) {
        while (rowNo >= matrix.size()) {
            matrix.add(new BigVector());
        }
        matrix.set(rowNo, vect1);
    } // setRow

     /** Sets a row from a {@link BigVector}.
     *  @param rowNo number of the row, zero based
     *  @param vect1 BigVector containing the elements of the matrix' row
     */
    public void set(int rowNo, BigVector vect1) {
        while (rowNo >= matrix.size()) {
            matrix.add(new BigVector());
        }
        matrix.set(rowNo, vect1);
    } // set

    /** Returns a column as a {@link BigVector}.
     *  @param colNo number of the column, zero based
     *  @return a BigVector containing the elements of the matrix' column
     */
    public BigVector getBigColumn(int colNo) {
        BigVector result = new BigVector(this.size());
        for (int irow = 0; irow < this.size(); irow ++) {
            result.set(irow, this.getBig(irow, colNo));
        } // for irow
        return result;
    } // getBigColumn

    /** Sets a column from a {@link BigVector}.
     *  @param colNo number of the column, zero based
     *  @param vect1 BigVector containing the elements of the matrix' column
     */
/*
    public void setColumn(int colNo, BigVector vect1) {
        for (int irow = 0; irow < this.size(); irow ++) {
            this.matrix.[rowNo, colNo, vect1.getBig(irow);
        } // for irow
    } // setColumn
*/
    /** Exchanges two rows in <em>this</em> BigMatrix.
     *  @param rowNo1 number of the 1st row
     *  @param rowNo2 number of the 2nd row
     */
    @Override
    public void exchangeRows(int rowNo1, int rowNo2) {
        BigVector row1 = getBigRow(rowNo1);
        BigVector row2 = getBigRow(rowNo2);
        setRow(rowNo2, row1);
        setRow(rowNo1, row2);
    } // exchangeRows

    /** Returns the number of rows
     *  @return a small number
     */
    public int size() {
        return matrix.size();
    } // size

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a string representation of the matrix
     *  with 4 places per element and one line per row
     *  @return a 2-dimensional array of numbers
     */
    @Override
    public String toString() {
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        for (int irow = 0; irow < this.size(); irow ++) {
            if (irow > 0) {
                result.append(sep);
            }
            result.append(this.getBigRow(irow).toString());
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

    /** Determines whether the BigMatrix has a zero element
     *  @return true if the matrix has a zero, or false otherwise
     */
    @Override
    public boolean hasZero() {
        boolean result = false;
        int irow = 0;
        while (! result && irow < this.size()) {
            int jcol = 0;
            while (! result && jcol < this.colLen) {
                result = this.getBig(irow, jcol).equals(BigInteger.ZERO);
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
        while (result && irow < this.size()) {
            int jcol = 0;
            while (result && jcol < this.colLen) {
                result = this.getBig(irow, jcol).equals(BigInteger.ZERO);
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
        if (matr2.getRowLen() == this.size() && matr2.getColLen() == this.colLen) {
            int irow = 0;
            while (result && irow < this.size()) {
                int jcol = 0;
                while (result && jcol < this.colLen) {
                    result = this.getBig(irow, jcol).equals(matr2.getBig(irow, jcol));
                    jcol ++;
                } // for jcol
                irow ++;
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot compare matrices of different size "
                    + this.size() + "," + this.colLen);
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
        BigMatrix result = new BigMatrix(this.size());
        if (matr2.getRowLen() == this.size() && matr2.getColLen() == this.colLen) {
            for (int irow = 0; irow < this.size(); irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    result.set(irow, jcol, this.getBig(irow, jcol).add(matr2.getBig(irow, jcol)));
                } // for jcol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot add matrices of different size "
                    + this.size() + "," + this.colLen);
        }
        return result;
    } // add(BigMatrix)

    /** Clone and multiply <em>this</em> BigMatrix by another BigMatrix (on the right).
     *  @param matr2 multiply by this matrix
     *  @return reference to a new object, the matrix product
     */
    public BigMatrix multiply(BigMatrix matr2) {
        BigMatrix result = new BigMatrix(this.colLen);
        if (matr2.getColLen() == this.size() && matr2.getRowLen() == this.colLen) {
            for (int irow = 0; irow < this.size(); irow ++) {
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    BigInteger sum = BigInteger.ZERO;
                    for (int kvec = 0; kvec < this.size(); kvec ++) {
                        sum = sum.add(this.getBig(irow, kvec).multiply(matr2.getBig(kvec,jcol)));
                    } // for kvec
                    result.set(irow, jcol, sum);
                } // for jcol
            } // for irow
        } else {
            throw new IllegalArgumentException("cannot multiply matrices of different size " + this.size());
        }
        return result;
    } // multiply(BigMatrix)

     /** Multiply <em>this</em> BigMatrix by some {@link BigVector} (on the right).
     *  @param vect2 multiply by this {@link BigVector}
     *  @return reference to a new {@link BigVector}, the right product
     */
    public BigVector multiply(BigVector vect2) {
        BigVector result = new BigVector(this.colLen);
        if (vect2.size() == this.colLen) {
            for (int irow = 0; irow < this.size(); irow ++) {
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

    /** Greatest common divisor of the elements of <em>this</em> {@link Matrix}
     *  @return an integer &gt;= 1
     */
    public BigInteger gcdBig() {
        BigVector rowGCDs = new BigVector(rowLen);
        int irow = 0;
        while (irow < size()) {
            rowGCDs.set(irow, getBigRow(irow).gcdBig());
            irow ++;
        } // while irow
        return rowGCDs.gcdBig();
    } // gcdBig()

    /** Compute the determinant of <em>this</em> BigMatrix.
     *  For row lengths &gt;= 4, this method is called recursively.
     *  @return BigInteger determinant value
     */
    public BigInteger determinantBig() {
        BigInteger result = BigInteger.ZERO;
        switch (this.size()) {
            case 0:
                result =  BigInteger.ZERO;
                break;
            case 1:
                result =  this.getBig(0, 0);
                break;
            case 2:
                result =  this.getBig(0, 0).multiply(this.getBig(1, 1)).subtract(
                          this.getBig(0, 1).multiply(this.getBig(1, 0))         );
                break;
        /*
            case 3:
                result =  this.getBig(0, 0).multiply(this.getBig(1, 1).multiply(this.getBig(2, 1))).subtract(
                          this.getBig(0, 1).multiply(this.getBig(1, 1).multiply(this.getBig(2, 0))).add     (
                          this.getBig(0, 1).multiply(this.getBig(1, 1).multiply(this.getBig(2, 0))).subtract(
                          this.getBig(0, 1).multiply(this.getBig(1, 0).multiply(this.getBig(2, 1))).add     (
                          this.getBig(0, 1).multiply(this.getBig(1, 0).multiply(this.getBig(2, 1))).subtract(
                          this.getBig(0, 0).multiply(this.getBig(1, 1).multiply(this.getBig(2, 1))) )))));
                break;
        */
            default: // recursive Laplace expansion over minors of the first row
                BigMatrix minor = new BigMatrix(this.size() - 1);
                // populate minor for 1st column
                for (int irow = 1; irow < this.size(); irow ++) { // omit row 0
                    for (int jcol = 1; jcol < this.colLen; jcol ++) { // omit column 0
                        minor.set(irow - 1, jcol - 1, this.getBig(irow, jcol));
                    } // for jcol
                } // for irow
                // now expand minors over row 0
                for (int jcol = 0; jcol < this.colLen; jcol ++) {
                    if (jcol > 0) { // repair 1st column of minor
                        for (int irow2 = 1; irow2 < this.size(); irow2 ++) {
                            minor.set(irow2 - 1, jcol - 1, this.getBig(irow2, jcol - 1));
                        } // for irow2
                    }
                    if ((jcol & 1) == 0) { // even
                        result = result.add     (minor.determinantBig().multiply(this.getBig(0, jcol)));
                    } else { // odd
                        result = result.subtract(minor.determinantBig().multiply(this.getBig(0, jcol)));
                    }
                } // for jcol
                break;
        } // switch this.size()
        return result;
    } // determinantBig

    /** Compute the inverse of <em>this</em> Matrix, if possible.
     *  C.f. <a href="http://matrix.reshish.com/inverse.php">Online matrix calculator</a>.
     *  @return a new Matrix, or null if the inverse cannot be computed
     */
    public BigMatrix inverse() {
        int debugInverse = 2906;
        int result = 0;
        BigMatrix lmat = this.clone();
        BigMatrix rmat = new BigMatrix(this.size());
        rmat.setIdentity();
        // now always operate on combined matrix L|R
        boolean pivotFound = true;
        int irow  = 0;
        int icol  = 0;
        int jrow  = 0;
        int jcol  = 0;
        BigInteger pivot = BigInteger.ZERO;
        BigVector vpivot = new BigVector(this.size());
        while (pivotFound && irow < this.size()) {
            if (lmat.getBig(irow, irow).equals(BigInteger.ZERO)) { // no proper pivot element - exchange
                jrow = irow + 1;
                while (jrow < this.size() && lmat.getBig(jrow, irow).equals(BigInteger.ZERO)) { // search first non-zero -> pivot
                    jrow ++;
                } // while jrow
                if (jrow < this.size()) {
                    lmat.exchangeRows(irow, jrow);
                    rmat.exchangeRows(irow, jrow);
                } else { // no pivot
                    pivotFound = false;
                }
            } // no pivot - exchange
            if (pivotFound) {
                pivot = lmat.getBig(irow, irow);
                if (pivot.compareTo(BigInteger.ZERO) < 0) { // negate row[irow]
                    for (icol = 0; icol < this.size(); icol ++) {
                        lmat.set(irow, icol, lmat.getBig(irow, icol).negate());
                        rmat.set(irow, icol, rmat.getBig(irow, icol).negate());
                    } // for icol
                    pivot = lmat.getBig(irow, irow);
                } // negate row
                vpivot.set(irow, pivot);
                jrow = 0;
                while (jrow < this.size()) {
                    if (jrow != irow) {
                        BigInteger stone = lmat.getBig(jrow, irow);
                        if (! stone.equals(BigInteger.ZERO)) { // remove this stone
                            // subtract rowi * stone from rowj * pivot
                            for (jcol = 0; jcol < this.colLen; jcol ++) {
                                lmat.set(jrow, jcol, lmat.getBig(jrow, jcol).multiply(pivot)
                                           .subtract(lmat.getBig(irow, jcol).multiply(stone)));
                                rmat.set(jrow, jcol, rmat.getBig(jrow, jcol).multiply(pivot)
                                           .subtract(rmat.getBig(irow, jcol).multiply(stone)));
                            } // for jcol
                        } // if stone != 0
                    } // jrow != irow
                    jrow ++;
                } // while jrow
            } // pivotFound
            irow ++;
        } // for irow

        // normalizing of the diagonal
        BigInteger lcmDiag = BigInteger.ONE;
        for (irow = 0; irow < this.size(); irow ++) {
            pivot = lmat.getBig(irow, irow);
            if (pivot.compareTo(BigInteger.ONE) > 0) {
                boolean divisible = true;
                icol = 0;
                while (divisible && icol < this.colLen) {
                    BigInteger[] temp = rmat.getBig(irow, icol).divideAndRemainder(pivot);
                    if (! temp[1].equals(BigInteger.ZERO)) { // rest != 0
                        divisible = false;
                    }
                    icol ++;
                } // while divisible
                if (divisible) { // now divide
                    lmat.set(irow,     irow, lmat.getBig(irow, irow).divide(pivot));
                    for (icol = 0; icol < this.colLen; icol ++) {
                        rmat.set(irow, icol, rmat.getBig(irow, icol).divide(pivot));
                    } // for dividing
                } else { // not divisible
                    lcmDiag = BigVector.lcm(lcmDiag, pivot);
                } // not divisible
            } // pivot > 1
        } // for irow
        if (lcmDiag.compareTo(BigInteger.ONE) > 0) { // scale all rows up to this LCM
            for (irow = 0; irow < this.size(); irow ++) {
                pivot = lmat.getBig(irow, irow);
                BigInteger ifact = lcmDiag.divide(pivot);
                lmat.set(irow, irow, lmat.getBig(irow, irow).multiply(ifact));
                for (icol = 0; icol < this.colLen; icol ++) {
                    rmat.set(irow, icol, rmat.getBig(irow, icol).multiply(ifact));
                } // for icol
            } // for irow
            // rmat.setFraction(lcmDiag);
        } // lcmDiag > 1

        return rmat;
    } // inverse

    /** Successively multiplies <em>this</em> {@link BigMatrix} with
     *  a {@link Vector} <em>vect0</em> and checks whether the power sum property
     *  is maintained, or whether an iteration limit is reached.
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @param vect0 the {@link BigVector} to start with
     *  @return an array of Vectors as result of the multiplication;
     *  the size determines the number of times that <em>this</em> BigMatrix could be multiplied
     *  by <em>vect0</em> while maintaining the power sum property.
     *  A default of 8 iterations is tried
     */
    public ArrayList<BigVector> preservedPowerSums(int exp, int left, int right, BigVector vect0) {
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
    public ArrayList<BigVector> preservedPowerSums(int exp, int left, int right, BigVector vect0, int maxIter) {
        ArrayList<BigVector> result = new ArrayList<BigVector>(maxIter);
        BigVector vect1 = vect0;
        BigVector vect2 = this.multiply(vect1);
        int iter = 0;
        while ( true
        //      && vect2.gcd() <= 1
                && vect1.normBig4() != vect2.normBig4()
                && vect2.isPowerSum(exp, left, right)
                && iter < maxIter) {
            result.add(vect2);
            vect1 = vect2;
            vect2 = this.multiply(vect2);
            iter ++;
        } // while iter
        return result;
    } // preservedPowerSums(5)

    /*-------------------- Test Driver --------------------*/

    /** Local logger for exceptions */
    private static Logger log = Logger.getLogger(BigMatrix.class.getName());

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0; // this collides with Options
        int alen = 0; // size of amat
        BigMatrix amat = null; // matrix to be tested
        BigMatrix[] matArray  = null;
        BigVector[] vectArray = null;
        BigVector vect1 = null;
        BigVector vect2 = null;
        try {
            if (args.length == 0) {
                System.out.println("new BigMatrix(\"[[3, 4], [5, 6]]\") = "
                        + (new BigMatrix          ("[[3, 4], [5, 6]]")).toString("(,)"));

            } else if (args.length >= 2) { // syntax is: -opt filename
                String opt = args[iarg ++];

                if (false) {
                } else if (opt.equals("-f"    )  ) {

                } else if (opt.startsWith("-inv")) {
                    amat = new BigMatrix(args[iarg ++]);
                    BigMatrix rmat = amat.inverse();
                    System.out.println(rmat.toString("(,)")
                            + ",det="           + rmat.determinantBig()
                            + " is inverse of " + amat.toString("(,)")
                            + ",det="           + amat.determinantBig()
                            + ",identity = "    + amat.multiply(rmat).isIdentity()
                            );
                    // -inv

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

} // BigMatrix
