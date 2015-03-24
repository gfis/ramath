/*  PolyVector: a vector Polynomials
 *  @(#) $Id: PolyVector.java 744 2011-07-26 06:29:20Z gfis $
 *  2015-03-19: convolve
 *  2013-08-23: Serializable
 *  2013-08-15, Georg Fischer: copied from linear.Vector
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
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.IntegerExpander;
import  org.teherba.ramath.util.ModoMeter;
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.Iterator;
import  java.util.regex.Matcher;
import  java.util.regex.Pattern;

/** Class PolyVector is used in conjunction with {@link Matrix} to
 *  implement linear algebra operations
 *  on square matrices of symbolic {@link Polynomial}s.
 *  Typically a PolyVector will have no more than 8 elements.
 *  @author Dr. Georg Fischer
 */
public class PolyVector implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: PolyVector.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

    /*-------------- class properties -----------------------------*/

    /** a one-dimensional array of {@link Polynomial}s */
    protected /*Type*/Polynomial[] vector;
    /** number of elements in <em>vector</em> */
    protected int vecLen;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public PolyVector() {
        vecLen = 0;
    } // no-args Constructor

    /** Constructor for a PolyVector of some length
     *  @param numElems number of elements
     */
    public PolyVector(int numElems) {
        vecLen = numElems;
        vector = new /*Type*/Polynomial[vecLen];
    } // Constructor(int)

    /** Constructor for a PolyVector from a tuple of integers
     *  @param tuple array of integers
     */
    public PolyVector(int[] tuple) {
        this(tuple.length);
        for (int itup = 0; itup < vecLen; itup ++) {
            this.vector[itup] = new /*Type*/Polynomial(String.valueOf(tuple[itup]));
        } // for itup
    } // Constructor(int[])

    /** Constructor for a PolyVector from a {@link Vector}
     *  @param vector a {@link Vector} of small integers
     */
    public PolyVector(Vector vector) {
        this(vector.size());
        for (int ivect = 0; ivect < vecLen; ivect ++) {
            this.vector[ivect] = new /*Type*/Polynomial(String.valueOf(vector.get(ivect)));
        } // for ivect
    } // Constructor(Vector)

    /** Constructor for a PolyVector from a array of strings
     *  @param numElems number of elements
     *  @param iarg starting index in <em>args</em>
     *  @param args array of numbers as strings
     */
    public PolyVector(int numElems, int iarg, String[] args) {
        this(numElems);
        int ivect = 0;
        while (ivect < vecLen) {
            vector[ivect] = new Polynomial(args[iarg ++]);
            ivect ++;
        } // while ivect
    } // Constructor(3)

    /** Deep copy of the PolyVector and its properties.
     *  @return independant copy of the PolyVector
     */
    public PolyVector clone() {
        PolyVector result = new PolyVector();
        result.vecLen = vecLen;
        result.vector = new /*Type*/Polynomial[vecLen];
        for (int ielem = 0; ielem < vecLen; ielem ++) {
            result.vector[ielem] = vector[ielem];
        } // for ielem
        return result;
    } // clone

    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Returns the number of rows/columns
     *  @return a small number
     */
    public int size() {
        return vecLen;
    } // size

    /** Returns an element of the Vector
     *  @param icol number of the element (zero based)
     *  @return a Polynomial
     */
    public Polynomial get(int icol) {
        return vector[icol];
    } // get

    /** Sets an element of the Vector
     *  @param icol number of the element (zero based)
     *  @param value a Polynomial
     */
    public void set(int icol, Polynomial value) {
        vector[icol] = value;
    } // set

    /*-------------- lightweight derived methods -----------------------------*/

    /** Equality of 2 Vectors
     *  @param vect2 compare <em>this</em> PolyVector with it
     *  @return whether the 2 vectors are equal
     */
    public boolean equals(PolyVector vect2) {
        boolean result = true;
        if (vect2.size() == vecLen) {
            int ielem = 0;
            while (ielem < vecLen && this.vector[ielem].equals(vect2.vector[ielem])) {
                ielem ++;
            } // while ielem
            result = ielem == vecLen; // false if the loop stopped before because of a difference
        } else {
            throw new IllegalArgumentException("cannot compare two vectors of different size " + vecLen);
        }
        return result;
    } // equals

    /** Returns a string representation of the vector
     *  @return a 1-dimensional array of {@link Polynomial}s.
     */
    public String toString() {
        return this.toString(",");
    } // toString()

    /** Returns a string representation of the vector
     *  @param format specification of the layout: "," or " "
     *  @return a one-dimensional array of {@link Polynomial}s
     */
    public String toString(String format) {
        String sep = format + " ";
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        for (int icol = 0; icol < vecLen; icol ++) {
            if (icol > 0) {
                result.append(sep);
            }
            result.append(vector[icol].toString());
        } // for icol
        result.append(']');
        return result.toString();
    } // toString()

    /*-------------- heavyweight operations -------------------------*/

    /** Gets the innerproduct of two Vectors
     *  @param vect2 multiply by this PolyVector
     *  @return this * vect2,
     *  that is the sum of the products of corresponding elements
     */
    public Polynomial multiply(PolyVector vect2) {
        Polynomial result = new Polynomial();
        if (vect2.size() == vecLen) {
            int ielem = 0;
            while (ielem < vecLen) {
                Polynomial poly2 = this.vector[ielem].multiply(vect2.vector[ielem]);
                Iterator/*<1.5*/<String>/*1.5>*/ iter2 = poly2.keySet().iterator();
                while (iter2.hasNext()) {
                    String sig2 = iter2.next();
                    result.addTo(poly2.getMonomial(sig2));
                } // while iter2
                ielem ++;
            } // while ielem
        } else {
            throw new IllegalArgumentException("cannot multiply two vectors of different size " + vecLen);
        }
        return result;
    } // multiply

    /** Replaces the variables in the parameter {@link Polynomial}
     *  by the elements of <em>this</em> PolyVector.
     *  The lexicographical order of the names of the variables
     *  corresponds to the order of element numbers in the PolyVector.
     *  @param pschema replace the variables in this Polynomial
     *  @return a new Polynomial with substituted variables.
     */
    public Polynomial convolve(Polynomial pschema) {
        VariableMap vmap = pschema.getVariableMap();
        Iterator<String> viter = vmap.keySet().iterator();
        int ielem = 0;
        while (viter.hasNext()) {
            String vname = viter.next();
            vmap.put(vname, this.get(ielem).toString());
            ielem ++;
        } // while viter
        return pschema.substitute(vmap);
    } // convolve

    /** Test whether <em>this</em> PolyVector contains a sum of like powers.
     *  Usual combinations of the parameters are:
     <pre>
        exp=2 left=2 right=1
        exp=3 left=3 right=1
        exp=3 left=2 right=2
        exp=4 left=3 right=1
        exp=4 left=4 right=1
     </pre>
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @return whether the sum of left elements raised to exp equals the sum
     *  of right elements raised to exp
     */
    public boolean isPowerSum(int exp, int left, int right) {
        Polynomial leftSum  = new Polynomial();
        Polynomial rightSum = new Polynomial();
        if (left + right == vecLen) { 
            // check for trivial case: 2 elements are equal
            int isum = 0;
            for (isum = left; isum < vecLen; isum ++) {
                for (int lsum = 0; lsum < left; lsum ++) {
                    if (vector[isum].equals(vector[lsum])) {
                        return false;
                    }
                } // for lsum
            } // for isum
            isum = 0;
            while (isum < left) {
                leftSum = leftSum  .add(vector[isum].pow(exp));
                isum ++;
            } // while < left
            while (isum < vecLen) {
                rightSum = rightSum.add(vector[isum].pow(exp));
                isum ++;
            } // while < vecLen
        } else {
            throw new IllegalArgumentException("cannot test a vector with the wrong size " + vecLen);
        }
        return leftSum.subtract(rightSum).isZero();
    } // isPowerSum

    /** Computes a sum of like powers from <em>this</em> Vector.
     *  Usual combinations of the parameters are:
     <pre>
        exp=2 left=2 right=1
        exp=3 left=3 right=1
        exp=3 left=2 right=2
        exp=4 left=3 right=1
        exp=4 left=4 right=1
     </pre>
     *  @param exp exponent
     *  @param left  number of leading  elements which represent the left  side
     *  @param right number of trailing elements which represent the right side
     *  @return sum of left elements raised to exp minus 
     *  the sum of right elements raised to exp
     */
    public Polynomial powerSum(int exp, int left, int right) {
        Polynomial leftSum  = new Polynomial();
        Polynomial rightSum = new Polynomial();
        if (left + right == vecLen) { 
            int isum = 0;
            while (isum < left) {
                leftSum = leftSum  .add(vector[isum].pow(exp));
                isum ++;
            } // while < left
            while (isum < vecLen) {
                rightSum = rightSum.add(vector[isum].pow(exp));
                isum ++;
            } // while < vecLen
        } else {
            throw new IllegalArgumentException("cannot test a vector with the wrong size " + vecLen);
        }
        return leftSum.subtract(rightSum);
    } // powerSum

    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        PolyVector vect1 = new PolyVector();
        PolyVector vect2 = new PolyVector();
        if (false) {
        } else { // arguments
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.startsWith("-read")) {
                vect1 = new PolyVector(args.length - iarg, iarg, args);
                System.out.println("read Polyvector: " + vect1.toString(","));
                System.out.println("inner product:   " + vect1.multiply(vect1).toString());
                System.out.println("convolve(\"u^2+v^2-w^2\"): "
                        + vect1.convolve(new Polynomial("u^2+v^2-w^2")).toString());
                // -read
            } // if opt
        } // more than 1 argument
    } // main

} // PolyVector
