/*  PolyVector: a vector Polynomials
 *  @(#) $Id: PolyVector.java 744 2011-07-26 06:29:20Z gfis $
 *  2016-07-09: Signature
 *  2015-07-14: read expression allows for RelationSets with semicolons and "=0"
 *  2015-04-27: triviality(), describe()
 *  2015-03-26: construct from expression
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
import  org.teherba.ramath.symbolic.Signature;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.IntegerExpander;
import  org.teherba.ramath.util.ModoMeter;
import  java.io.BufferedReader;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.HashSet; // for triviality
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
        this.vecLen = 0;
    } // no-args Constructor

    /** Constructor for a PolyVector of some length
     *  @param numElems number of elements
     */
    public PolyVector(int numElems) {
        this.vecLen = numElems;
        this.vector = new /*Type*/Polynomial[vecLen];
    } // Constructor(int)

    /** lowercase letters for variable generation */
    private static final String letters = "abcdefghijklmnopqrstuvwxyz";

    /** Constructor for a PolyVector of some length,
     *  initialized with successive variable names.
     *  @param numElems number of elements
     *  @param varName starting lowercase letter which is lexicographically incremented.
     )
     */
    public PolyVector(int numElems, String varName) {
        this(numElems);
        int ipos = letters.indexOf(varName);
        if (ipos < 0) { // not found
            ipos = 0; // assume "a"
        }
        for (int ivect = 0; ivect < this.vecLen && ipos + ivect < letters.length(); ivect ++) {
            this.vector[ivect] = new /*Type*/Polynomial(letters.substring(ipos + ivect, ipos + ivect + 1));
        } // for ivect
    } // Constructor(int, String)

    /** Constructor for a PolyVector from a tuple of integers
     *  @param tuple array of integers
     */
    public PolyVector(int[] tuple) {
        this(tuple.length);
        for (int itup = 0; itup < this.vecLen; itup ++) {
            this.vector[itup] = new /*Type*/Polynomial(String.valueOf(tuple[itup]));
        } // for itup
    } // Constructor(int[])

    /** Constructor for a PolyVector from a {@link Vector}
     *  @param vect2 a {@link Vector} of small integers
     */
    public PolyVector(Vector vect2) {
        this(vect2.size());
        for (int ivect = 0; ivect < this.vecLen; ivect ++) {
            this.vector[ivect] = new /*Type*/Polynomial(String.valueOf(vect2.get(ivect)));
        } // for ivect
    } // Constructor(Vector)

    /** Constructor for a PolyVector from an array of strings
     *  @param numElems number of elements
     *  @param iarg starting index in <em>args</em>
     *  @param args array of numbers as strings
     */
    public PolyVector(int numElems, int iarg, String[] args) {
        this(numElems);
        int ivect = 0;
        while (ivect < this.vecLen) {
            this.vector[ivect] = new Polynomial(args[iarg ++]);
            ivect ++;
        } // while ivect
    } // Constructor(3)

    /** Constructor for a PolyVector from an array of {@link Polynomial}s
     *  @param numElems number of elements
     *  @param values array of {@link Polynomial}s as strings
     */
    public PolyVector(int numElems, String[] values) {
        this(numElems, 0, values);
    } // Constructor(3)

    /** Constructor for a PolyVector from a vector expression
     *  @param vectExpr an array of comma-(or semicolon) separated elements in square brackets,
     *  maybe with spaces,
     *  for example "[x^2, 4*y, y*z*3]"
     */
    public PolyVector(String vectExpr) {
        String[] values = vectExpr
                .replaceAll("[\\[\\]\\s]+", "")
                .replaceAll("\\=0", "") // from Polynomial.toString(1)
                .split("[\\,\\;]");
        this.vecLen = values.length;
        this.vector = new /*Type*/Polynomial[vecLen];
        int ivect = 0;
        while (ivect < this.vecLen) {
            this.vector[ivect] = new Polynomial(values[ivect]);
            ivect ++;
        } // while ivect
    } // Constructor(String)

    /** Deep copy of the PolyVector and its properties.
     *  @return independant copy of the PolyVector
     */
    public PolyVector clone() {
        PolyVector result = new PolyVector();
        result.vecLen = this.vecLen;
        result.vector = new /*Type*/Polynomial[vecLen];
        for (int ielem = 0; ielem < this.vecLen; ielem ++) {
            result.vector[ielem] = this.vector[ielem];
        } // for ielem
        return result;
    } // clone

    /*-------------- bean methods, setters and getters -----------------------------*/

    /** Returns the number of rows/columns
     *  @return a small number
     */
    public int size() {
        return this.vecLen;
    } // size

    /** Returns an element of the Vector
     *  @param icol number of the element (zero based)
     *  @return a Polynomial
     */
    public Polynomial get(int icol) {
        return this.vector[icol];
    } // get

    /** Sets an element of the Vector
     *  @param icol number of the element (zero based)
     *  @param value a Polynomial
     */
    public void set(int icol, Polynomial value) {
        this.vector[icol] = value;
    } // set

    /*-------------- lightweight derived methods -----------------------------*/

    /** Equality of 2 Vectors
     *  @param vect2 compare <em>this</em> PolyVector with it
     *  @return whether the 2 vectors are equal
     */
    public boolean equals(PolyVector vect2) {
        boolean result = true;
        if (vect2.size() == this.vecLen) {
            int ielem = 0;
            while (ielem < this.vecLen && this.vector[ielem].equals(vect2.vector[ielem])) {
                ielem ++;
            } // while ielem
            result = ielem == this.vecLen; // false if the loop stopped before because of a difference
        } else {
            throw new IllegalArgumentException("cannot compare two vectors of different size " + this.vecLen);
        }
        return result;
    } // equals

    /** Returns a String representation of the PolyVector
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
        String sep = ",";
        StringBuffer result = new StringBuffer(256);
        result.append('[');
        for (int icol = 0; icol < this.vecLen; icol ++) {
            if (icol > 0) {
                result.append(sep);
            }
            result.append(this.vector[icol].toString().replaceAll("\\s" ,""));
        } // for icol
        result.append(']');
        return result.toString();
    } // toString()

    /** Describes the triviality of <em>this</em>PolyVector:
     *  <ul>
     *  <li>1: one of the elements is zero</li>
     *  <li>2: there are 2 elements which are equal</li>
     *  <li>3: both of the conditions above</li>
     *  <li>0: none of the conditions above = "NONTRIVIAL"</li>
     *  </ul>
     *  @return a description for the triviality of a solution
     */
    public String triviality() {
        int code = 0;
        HashSet<String> valSet = new HashSet<String>(16);
        int ielem = 0;
        while (ielem < this.size()) {
            Polynomial poly1 = this.vector[ielem];
            if (poly1.isZero()) {
                code |= 0x01;
            }
            if (valSet.contains(poly1.toString())) {
                code |= 0x02;
            } else {
                valSet.add(poly1.toString());
            }
            ielem ++;
        } // while ielem
        String result = "NONTRIVIAL";
        if (code != 0) {
            result = "trivial(" + String.valueOf(code) + ")";
        }
        return result;
    } // triviality

    /** Returns a readable representation of the vector, with the {@link #triviality} appended
     *  @return a String, for example "[3,4,5],NONTRIVIAL"
     */
    public String describe() {
        return this.toString(",") + "," + this.triviality();
    } // describe()

    /*-------------- heavyweight operations -------------------------*/

    /** Gets the innerproduct of two PolyVectors
     *  @param vect2 multiply by this PolyVector
     *  @return this * vect2,
     *  that is the sum of the products of corresponding elements
     */
    public Polynomial multiply(PolyVector vect2) {
        Polynomial result = new Polynomial();
        if (vect2.size() == this.vecLen) {
            int ielem = 0;
            while (ielem < this.vecLen) {
                Polynomial poly2 = this.vector[ielem].multiply(vect2.vector[ielem]);
                Iterator<Signature> iter2 = poly2.keySet().iterator();
                while (iter2.hasNext()) {
                    Signature sig2 = iter2.next();
                    result.addTo(poly2.getMonomial(sig2));
                } // while iter2
                ielem ++;
            } // while ielem
        } else {
            throw new IllegalArgumentException("cannot multiply two vectors of different size " + this.vecLen);
        }
        return result;
    } // multiply

    /** Gets a {@link VariableMap} from all variable names (key) to <em>null</em> (value).
     *  @return map of variable names mapped to <em>null</em>
     */
    public VariableMap getVariableMap() {
    	VariableMap result = new VariableMap();
        for (int kvec = 0; kvec < this.vecLen; kvec ++) {
            result.addTo(this.vector[kvec].getVariableMap());
        } // for kvec
        return result;
    } // getVariableMap()

    /** Replaces the variables in the parameter {@link Polynomial}
     *  by the elements of <em>this</em> PolyVector.
     *  The lexicographical order of the names of the variables
     *  corresponds to the order of element numbers in the PolyVector.
     *  Only so many variables are replaced as are available in
     *  <em>this</em> PolyVector. The remaining variables are unchanged.
     *  @param pschema replace the variables in this Polynomial
     *  @return a new Polynomial with substituted variables.
     */
    public Polynomial convolve(Polynomial pschema) {
        VariableMap vmap = pschema.getVariableMap();
        Iterator<String> viter = vmap.keySet().iterator();
        int ielem = 0;
        String vname = null;
        while (ielem < this.size() && viter.hasNext()) {
            vname = viter.next();
            vmap.put(vname, this.get(ielem).toString());
            ielem ++;
        } // while viter 1
        while (viter.hasNext()) { // substitute any remaining variables by themselves
            vname = viter.next();
            vmap.put(vname, vname);
        } // while viter 2
        return pschema.substitute(vmap);
    } // convolve

    /** Test whether <em>this</em> {@link PolyVector} contains a sum of like powers.
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
        Polynomial leftSum  = new Polynomial("0");
        Polynomial rightSum = new Polynomial("0");
        if (left + right == this.vecLen) {
            // check for trivial case: 2 elements are equal
            int isum = 0;
            for (isum = left; isum < this.vecLen; isum ++) {
                for (int lsum = 0; lsum < left; lsum ++) {
                    if (this.vector[isum].equals(this.vector[lsum])) {
                        return false;
                    }
                } // for lsum
            } // for isum
            isum = 0;
            while (isum < left) {
                leftSum = leftSum  .add(this.vector[isum].pow(exp));
                isum ++;
            } // while < left
            while (isum < this.vecLen) {
                rightSum = rightSum.add(this.vector[isum].pow(exp));
                isum ++;
            } // while < this.vecLen
        } else {
            throw new IllegalArgumentException("cannot test a vector with the wrong size " + this.vecLen);
        }
        return leftSum.subtract(rightSum).isZero();
    } // isPowerSum

    /** Computes a sum of like powers from <em>this</em> {@link PolyVector}.
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
        Polynomial leftSum  = new Polynomial("0");
        Polynomial rightSum = new Polynomial("0");
        if (left + right == this.vecLen) {
            int isum = 0;
            while (isum < left) {
                leftSum = leftSum  .add(this.vector[isum].pow(exp));
                isum ++;
            } // while < left
            while (isum < this.vecLen) {
                rightSum = rightSum.add(this.vector[isum].pow(exp));
                isum ++;
            } // while < this.vecLen
        } else {
            throw new IllegalArgumentException("cannot test a vector with the wrong size " + this.vecLen);
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
        PolyVector vect1 =      new PolyVector();
        PolyVector vect2 =      new PolyVector (" [ x^2 ,4 * y, y * z * 3 ] ");
        if (args.length == 0) {
            System.out.println("new PolyVector(\" [ x^2 ,4 * y, y * z * 3 ] \") = "
                    + vect2.toString());
        } else { // arguments
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.startsWith("-psum")) {
                vect1 = new PolyVector(args.length - iarg, iarg, args);
                System.out.println(vect1.toString(",") + ".powerSum(2, 2, 1) = " + vect1.powerSum(2,2,1));
                // -psum
            } else if (opt.startsWith("-read")) {
                vect1 = new PolyVector(args.length - iarg, iarg, args);
                System.out.println("read PolyVector: " + vect1.toString(","));
                System.out.println("inner product:   " + vect1.multiply(vect1).toString());
                System.out.println("convolve(\"u^2+v^2-w^2\"): "
                        + vect1.convolve(new Polynomial("u^2+v^2-w^2")).toString());
                // -read
            } // if opt
        } // more than 1 argument
    } // main

} // PolyVector
