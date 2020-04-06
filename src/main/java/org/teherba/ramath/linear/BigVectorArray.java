/*  BigVectorArray: an array of BigVectors with possibly different lengths
 *  @(#) $Id: BigVectorArray.java 744 2011-07-26 06:29:20Z gfis $
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
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.Iterator;
import  java.util.TreeMap;
import  org.apache.log4j.Logger;

/** Class BigVectorArray implements operations on an array of {@link BigVector}s
 *  which are indexed by natural numbers 0, 1, 2 and so on.
 *  It can be used, for example, to represent:
 *  <ul>
 *  <li>the coefficients of a set of univariate {@link Polynomial}s </li>
 *  <li>a univariate {@link RelationSet}</li>
 *  <li>a linear recurrence equation</li>
 *  <li>a linear differential equation</li>
 *  </ul>
 *  @author Dr. Georg Fischer
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
     *  of a recurrence equation.
     *  @param input the input string, for example
     *  <code>"2*n*a(n) +(-23*n+36)*a(n-1) +6*(-2*n+3)*a(n-2)=0"</code>
     *  @return a reference to a new BigVectorArray, or null if
     *  the input could not properly be parsed
     */
    public static BigVectorArray parseRecurrence(String input) {
        ShuntingYard shy = new ShuntingYard(0); // debug?
        input = input
                .replaceAll("\\s", "")
                .replaceAll("\\=\\=","=")
                .replaceAll("\\[", "(")
                .replaceAll("\\]", ")")
                ;
        if (input.endsWith("=0")) {
            input = input.substring(0, input.length() - 2);
        }
        shy.setFunctionPattern("[a-h]"); // a-h may be recurrence element names
        ArrayList<String> postfix = shy.getPostfixList("(" + input + ")");
        if (debug >= 2) {
            System.out.println("postfix=" + postfix);
        }
        // A064063
        // in:  "2*n*a(n) +(-23*n+36)*a(n-1) +6*(-2*n+3)*a(n-2)=0"
        // out: [2,n,*,a(),n,funct,*,0,23,n,*,-,36,+,a(),n,1,-,funct,*,+,6,0,2,n,*,-,3,+,*,a(),n,2,-,funct,*,+,0,=]
        int ipfix = 0;
        int start = ipfix;
        Polynomial coeffPoly = null;
        TreeMap<BigInteger,Polynomial> polyMap = new TreeMap<BigInteger,Polynomial>();
        String recurVar = null; // "a"
        String indexVar = null; // "n"
        int signFactor  = +1; // additive operator between recurrence elements
        int equalFactor = +1; // do not yet negate because of "=" in the middle of the equation
        int offset = 0;
        while (ipfix < postfix.size()) {
            String elem = postfix.get(ipfix);
            if (debug >= 2) {
                System.out.println("postfix[" + ipfix + "] = \"" + elem + "\"");
            }
            if (false) {
            } else if (elem.endsWith("(")) { // "a("
                coeffPoly = start == ipfix 
                        ? new Polynomial("1")
                        : Polynomial.buildPolynomial(postfix, start, ipfix);
                if (debug >= 2) {
                    System.out.println("start=" + start + ", ipfix=" + ipfix
                            + ", equalFactor=" + equalFactor + ", signFactor="  + signFactor
                            + ", coeffPoly= "  + coeffPoly);
                }
                if (equalFactor * signFactor == -1) {
                    coeffPoly.negativeOf();
                }
                if (recurVar == null) { // first
                    recurVar =      elem.substring(0, elem.length() - 2);
                } else {
                    if (! recurVar.equals(elem.substring(0, elem.length() - 2))) {
                        System.out.println("** series variable \"" + recurVar + "\" differs from \""
                                  + elem.substring(0, elem.length() - 2) + "\"");
                    } // differs
                }
                start = ipfix + 1;
            } else if (elem.endsWith(")")) { // "a)"
                Polynomial indexPoly = Polynomial.buildPolynomial(postfix, start, ipfix);
                if (debug >= 2) {
                    System.out.println("start=" + start + ", ipfix=" + ipfix
                            + ", indexPoly= " + indexPoly);
                }
                elem = postfix.get(ipfix + 1); // look at next
                if (elem.equals("*")) {
                    ipfix ++; // ignore "*" behind "funct"
                    elem = postfix.get(ipfix + 1); // look at next
                }
                if (elem.matches("[\\+\\-]")) {
                    signFactor = elem.equals("+") ? +1 : -1;
                    ipfix ++; // skip the additive operator, too
                } else {
                    signFactor = +1;
                }
                Iterator <Signature> titer = indexPoly.keySet().iterator();
                String var = null;
                BigInteger bindex = BigInteger.ZERO; // -4 for "a(n-4)"
                while (titer.hasNext()) {
                    Monomial mono1 = indexPoly.get(titer.next());
                    if (mono1.isConstant()) {
                        bindex = mono1.getCoefficient().bigIntegerValue();
                    } else if (mono1.isUniVariate() && mono1.degree() == 1) {
                        var = mono1.firstName();
                    } else {
                        System.out.println("** invalid monomial " + mono1.toString());
                    }
                } // while titer
                if (indexVar == null) { // first
                    indexVar =      var;
                } else {
                    if (! indexVar.equals(var)) {
                        System.out.println("** index variable " + indexVar + " differs from " + var);
                    } // differs
                }
                polyMap.put(bindex, coeffPoly);
                start = ipfix + 1;
            } else if (elem.equals("=")) { // is it at the end: "=0" ?
                if (ipfix == postfix.size() - 2 && postfix.get(ipfix).equals("0")) {
                    // ok, ignore
                } else {
                    System.out.println("** parseRecurrence: \"=\" at the end only");
                }
            } else {
            }
            ipfix ++;
        } // while ipfix

        Iterator <BigInteger> piter = polyMap.keySet().iterator();
        BigInteger key = null;
        if (debug >= 1) {
            System.out.println("parseRecurrence: " + input);
            while (piter.hasNext()) {
                key = piter.next();
                System.out.println("a(" + key.toString() + "): " + polyMap.get(key));
                } // while piter
        } // debug
        BigVectorArray result = new BigVectorArray(polyMap.size() + 1); 
            if (debug >= 1) {
                System.out.println("result=" + result);
            }
        int ires = 0;
        result.set(ires, new BigVector(new int[] { 0 })); // for the (superfluous) constant
        ires ++;
        if (true) {
            if (debug >= 1) {
                System.out.println("ires=" + ires + ", result=" + result);
            }
            piter = polyMap.keySet().iterator();
            while (piter.hasNext()) {
                key = piter.next();
                if (debug >= 1) {
                    System.out.println("key=" + key + ", ires=" + ires + ", result=" + result);
                }
                result.set(ires, polyMap.get(key).getBigVector());
                ires ++;
            } // while piter
        } // debug
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
        for (int irow = 0; irow < this.size(); irow ++) {
            if (irow > 0) {
                result.append(sep);
            }
            result.append(this.getBigVector(irow).toString());
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
        while (! result && irow < this.size()) {
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
        while (result && irow < this.size()) {
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
        if (varr2.size() == this.size()) {
            int irow = 0;
            while (result && irow < this.size()) {
                result = varr2.get(irow).equals(this.get(irow));
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

    /** Local logger for exceptions */
    private static Logger log = Logger.getLogger(BigVectorArray.class.getName());

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
            log.error(exc.getMessage(), exc);
        }
    } // main

} // BigVectorArray
