/*  BigVectorArray: an array of BigVectors with possibly different lengths
 *  @(#) $Id: BigVectorArray.java 744 2011-07-26 06:29:20Z gfis $
 *  2021-01-28: parseRecurrence reduces dist down to 0
 *  2021-01-20: parseRecurrence rewritten with a_3, a__4
 *  2020-02-11: parseRecurrence
 *  2020-02-03: copied from BigMatrix
 *  2019-08-30: with ArrayList of rows
 *  2018-01-24, Georg Fischer: copied from Matrix
 */
/*
 * Copyright 2020 Dr. Georg Fischer <dr.georg.fischer at gmail.com>
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
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.Signature;
import  org.teherba.ramath.symbolic.ShuntingYard;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.VariableMap;
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.Iterator;
import  java.util.TreeMap;

/** Class BigVectorArray implements operations on an array of {@link BigVector}s
 *  which are indexed by natural numbers 0, 1, 2 and so on.
 *  It can be used, for example, to represent:
 *  <ul>
 *  <li>the coefficients of a set of univariate {@link Polynomial}s </li>
 *  <li>a univariate RelationSet</li>
 *  <li>a linear recurrence equation</li>
 *  <li>a linear differential equation</li>
 *  </ul>
 *  @author Georg Fischer
 */
public class BigVectorArray implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: BigVectorArray.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    public static int debug = 0;

    /*-------------- class properties -----------------------------*/

    /** The array of BigVectors */
    protected ArrayList<BigVector> varr;
    /*-------------- construction -----------------------------*/

    /** No-args Constructor: an empty array 
     */
    public BigVectorArray() {
        varr = new ArrayList<BigVector>(16);
    } // no-args Constructor

    /** Constructor for an empty BigVectorArray.
     *  @param rowLen number of rows
     */
    public BigVectorArray(int rowLen) {
        this();
        int irow = 0;
        while (irow < rowLen) {
            varr.add(new BigVector());
            irow ++;
        } // for irow
    } // Constructor(int)

    /** Constructor for a BigVectorArray which initializes it
     *  from an array expression.
     *  @param arrExpr comma-separated list of {@link BigVector} representations
     *  in square brackets,
     *  for example "[[11,12,13],[21,22,23],[31,32,33]]"
     */
    public BigVectorArray(String arrExpr) {
        this();
        String[] rows = arrExpr.replaceAll("\\s", "")
                .replaceAll("[\\{\\(]", "[").replaceAll("[\\}\\)]", "]")
                .split("\\],\\[");
        int irow = 0;
        while (irow < rows.length) {
            varr.add(new BigVector(rows[irow]));
            irow ++;
        } // while irow
    } // Constructor(String)

    /** Deep copy of the BigVectorArray and its properties.
     *  @return independant copy of the BigVectorArray
     */
    public BigVectorArray clone() {
        BigVectorArray result = new BigVectorArray();
        int irow = 0;
        while (irow < size()) {
            result.setBigVector(irow, this.getBigVector(irow).clone());
            irow ++;
        } // while irow
        return result;
    } // clone

    /*-------------- bean methods, setters and getters -----------------------------*/
    // inherited: size, getRowLen, getColLen

    /** Sets the debugging flag
     *  @param mode 0=no debugging output, 1=some, 2=more
     */
    public static void setDebug(int mode) {
        debug = mode;
    } // setDebug

    /** Gets an element.
     *  @param rowNo number of the row, zero based
     *  @param colNo number of the column, zero based
     *  @return value value of the element
     */
    public BigInteger getBig(int rowNo, int colNo) {
        return this.varr.get(rowNo).getBig(colNo);
    } // getBig

    /** Sets an element.
     *  @param rowNo number of the row, zero based
     *  @param colNo number of the column, zero based
     *  @param value value of the element
     */
    public void set(int rowNo, int colNo, BigInteger value) {
        BigVector row = varr.get(rowNo);
        row.set(colNo, value);
        varr.set(rowNo, row);
    } // set

    /** Returns a row as a {@link BigVector}.
     *  @param rowNo number of the row, zero based
     *  @return a BigVector containing the elements of the varr' row
     */
    public BigVector getBigVector(int rowNo) {
        return varr.get(rowNo);
    } // getBigVector

    /** Returns a row as a {@link BigVector}.
     *  @param rowNo number of the row, zero based
     *  @return a BigVector containing the elements of the array's row
     */
    public BigVector get(int rowNo) {
        return varr.get(rowNo);
    } // get

    /** Sets a row from a {@link BigVector}.
     *  @param rowNo number of the row, zero based
     *  @param vect1 BigVector containing the elements of the array's row
     */
    public void setBigVector(int rowNo, BigVector vect1) {
        while (rowNo >= varr.size()) {
            varr.add(new BigVector());
        }
        varr.set(rowNo, vect1);
    } // setBigVector

    /** Sets a row from a {@link BigVector}.
     *  The array is extended with empty rows as necessary.
     *  @param rowNo number of the row, zero based
     *  @param vect1 BigVector containing the elements of the array's row
     */
    public void set(int rowNo, BigVector vect1) {
        while (rowNo >= varr.size()) {
            varr.add(new BigVector());
        }
        varr.set(rowNo, vect1);
    } // set

    /** Exchanges two rows in <em>this</em> BigVectorArray.
     *  @param rowNo1 number of the 1st row
     *  @param rowNo2 number of the 2nd row
     */
    public void exchangeVectors(int rowNo1, int rowNo2) {
        BigVector row1 = getBigVector(rowNo1);
        BigVector row2 = getBigVector(rowNo2);
        setBigVector(rowNo2, row1);
        setBigVector(rowNo1, row2);
    } // exchangeVectors

    /** Returns the number of rows
     *  @return a small number
     */
    public int size() {
        return varr.size();
    } // size

    /** Returns a new BigVectorArray constructed from a String representation
     *  of a recurrence equation. This array is suitable as matrix parameter for HolonomicRecurrence.
     *  @param input the input string, for example
     *  <code>"2*n*a(n) +(-23*n+36)*a(n-1) +6*(-2*n+3)*a(n-2)=0"</code>.
     *  {@link ShuntingYard} normalizes the names to "a" and "n".
     *  There may be a single index variable [i-n], and a single series variable [a-h].
     *  @return a reference to a new BigVectorArray, or null if
     *  the input could not properly be parsed
     */
    public static BigVectorArray parseRecurrence(String input) {
        if (debug >= 1) {
            System.out.println("BigVectorArray.parseRecurrence(\"" + input + "\")");
        }
        ShuntingYard parser = new ShuntingYard();
        Polynomial poly = new Polynomial(parser.parseRecurrence(input.replaceAll("\\=\\=","=")));
        VariableMap vmap = poly.getVariableMap(); // size is 1 (for n) + number of a_* variables
        int kmin = 1;
        int kmax = 0;
        Iterator<String> 
        viter = vmap.keySet().iterator();
        while (viter.hasNext()) {
            String vname = viter.next();
            if (! vname.startsWith("a_")) { // must be "n" - ignore
            } else {
                int k = parser.decodeRVar(vname);
                kmin = k < kmin ? k : kmin;
                kmax = k > kmax ? k : kmax;
                if (debug >= 2) {
                    System.out.println("vname=" + vname + ", k=" + k + ", kmax=" + kmax + ", kmin=" + kmin + ", poly=" + poly.toString());
                }
            }
        } // while vmap
        
        int dist = -kmax; // positive kmax must be shifted down by dist
        vmap = poly.getVariableMap(); // recompute it
        int klen = kmax - kmin + 1 + 1; // +1 for constant
        BigVectorArray result = new BigVectorArray(); // +1 for constant in recurrence
        if (debug >= 2) {
            System.out.println("shift by " + dist);
            System.out.println("create bva[" + String.valueOf(klen) + "]");
        }
        viter = vmap.keySet().iterator();
        while (viter.hasNext()) {
            String vname = viter.next();
            if (! vname.startsWith("a_")) {
                // n - ignore
            } else { // a_1 = a(n-1)
                int kold = parser.decodeRVar(vname);
                int knew = kold - kmin + 1; // [0] reserved for constant
                Polynomial subPoly = poly.getSubPolynomial(vname);
                poly = poly.subtract(subPoly);
                subPoly.divideBy(new Monomial(vname));
                result.set(knew, subPoly.getBigVector().shift(dist));
                if (debug >= 2) {
                    System.out.println("bva[" + (knew) + "]=" + subPoly.toString()
                             + ", vector=" + result.get(knew) + ", poly=" + poly.toString());
                }
            }
        } // while
        if (debug >= 2) {
            System.out.println("bva[0]=" + poly.toString());
        }
        result.set(0, poly.getBigVector()); // [0] = remaining constant polynomial in n
        return result;
    } // parseRecurrence

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a string representation of the array
     *  with comma separated lists of values for the {@link BigVector}s
     *  enclosed in quare brackets, where the vector expressions
     *  are in turn comma separated and enclosed in square brackets.
     *  @return "[[0],[0,1],[0,1,2]]" for example.
     */
    public String toString() {
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        for (int irow = 0; irow < size(); irow ++) {
            if (irow > 0) {
                result.append(sep);
            }
            result.append(getBigVector(irow).toString());
        } // for irow
        result.append(']');
        return result.toString();
    } // toString()

    /** Determines whether the BigVectorArray has a zero element
     *  @return true if the array contains a zero, or false otherwise
     */
    public boolean hasZero() {
        boolean result = false;
        int irow = 0;
        while (! result && irow < size()) {
            result = get(irow).hasZero();
            irow ++;
        } // while irow
        return result;
    } // hasZero

    /** Determines whether all elements of the array are zero
     *  @return true if the array is zero, or false otherwise
     */
    public boolean isZero() {
        boolean result = true;
        int irow = 0;
        while (result && irow < size()) {
            result = get(irow).isZero();
            irow ++;
        } // while irow
        return result;
    } // isZero

    /** Compares <em>this</em> array with a second for equal elements
     *  @param varr2 compare with this array
     *  @return true if all elements are equal
     */
    public boolean equals(BigVectorArray varr2) {
        boolean result = true;
        if (varr2.size() == size()) {
            int irow = 0;
            while (result && irow < size()) {
                result = varr2.get(irow).equals(get(irow));
            } // while irow
        } else {
            result = false;
        }
        return result;
    } // equals

    /*-------------- arithmetic operations -------------------------*/
    /** Reduce 2 or more rows by dividing them by their greatest common divisor
     *  @param rsel selection of at least 2 rows 
     *  to be divided by their greatest common divisor (starting at 0)
     */
    public void reduce(int[] rsel) {
    /* nyi
        BigVector vect0 = getRow(rsel[0]);
        int isel = 1;
        while (isel < rsel.length) {
            BigVector vect1 = getRow(rsel[isel]);
            BigVector vgcd  = vect0.gcd(vect1);
            [] quotRemd = null;
            isel ++;
        } // while isel
    
        while (! remd.isZero()) {
            quotRemd = quot.divideAndRemainder(remd);
            if (debug >= 1) {
                System.out.println("gcd: " + quot.toString() + " / " + remd.toString() 
                        + " -> " + quotRemd[0] + " rest " + quotRemd[1]);
            }
            quot = remd;
            remd = quotRemd[1];
        } // while > 0
        return quotRemd[0];
    */    
    } // gcd(BigVector)

    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        try {
            if (args.length == 0) {
                System.out.println("new BigVectorArray(\"[[1],[3, 4], [5, 6, 7]]\") = "
                        + (new BigVectorArray          ("[[1],[3, 4], [5, 6, 7]]")).toString());
            } else {
                while (iarg < args.length) { // syntax is: -opt filename
                    String opt = args[iarg ++];
                    if (false) {
                    } else if (opt.equals("-d")) {
                        int debug = Integer.parseInt(args[iarg ++]);
                        BigVectorArray.setDebug(debug);
                    } else if (opt.startsWith("-recur")) {
                        BigVectorArray bva = BigVectorArray.parseRecurrence(args[iarg ++]);
                        System.out.println("result= " + bva);
                    } else {
                        System.out.println("invalid option[" + iarg + "]: \"" + opt + "\"");
                        iarg ++;
                    }
                } // while iarg
            } // >= 1 args
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
        }
    } // main

} // BigVectorArray
