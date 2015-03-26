/*  Exhaustive generator for power identities
 *  @(#) $Id: MatrixExhauster.java 808 2011-09-20 16:56:14Z gfis $
 *  2015-03-23: v2
 *  2013-07-28: with linear.Matrix
 *  2013-07-06, Georg Fischer: copied from ParameterGenerator
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
package org.teherba.ramath;
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.PolyMatrix;
import  org.teherba.ramath.symbolic.PolyVector;
import  org.teherba.ramath.util.ModoMeter;
import  java.lang.Math; // abs(int)
import  java.util.ArrayList;
import  java.util.Date;
import  java.util.Iterator;

/** Takes an Equal Sum of Like Powers and tries to generate
 *  matrices which yield other sums of the same form.
 *  (see "http://en.wikipedia.org/wiki/Tree_of_Pythagorean_triples"} for the
 *  <em>Tree of primitive Pythagorean triples</em> and the 3 matrices which generates it
 *  according to Barning and Price.
 *  @author Dr. Georg Fischer
 */
public class MatrixExhauster {
    public final static String CVSID = "@(#) $Id: MatrixExhauster.java 808 2011-09-20 16:56:14Z gfis $";

    /** array for powers of natural numbers */
    private int[] squares;
    /** array for powers of natural numbers */
    private int[] cubes;
    /** first digit not used for exhaustion by the expander */
    public int maxDigit;
    /** first digit used, = -maxDigit + 1 */
    public int minDigit;

    /** starting time */
    private long startTime;

    //===========================
    // Construction
    //===========================
    /** No-args Constructor
     */
    public MatrixExhauster() {
        this(6);
    } // Constructor()

    /** can compute square roots up to this number */
    private static final int MAXPOW = 8;

    /** Constructor with limit
     *  @param limit minimum digit not yet used for expansion
     */
    public MatrixExhauster(int limit) {
        maxDigit = limit;
        minDigit = - maxDigit + 1;
        squares = new int[MAXPOW]; 
        cubes   = new int[MAXPOW];
        int isq = 0;
        while (isq < squares.length) {
            squares[isq] = isq*isq;
            cubes  [isq] = squares[isq]*isq;
            isq ++;
        } // while 1
        startTime = (new java.util.Date()).getTime();
    } // no-args Constructor

    //===========================
    // Generating Methods
    //===========================

    //==========================================================
    /** Try to find unimodular matrices which preserve a power sum
     *  with a right side of length 1.
     *  @param exp   exponent for the tuple values
     *  @param width how many elementary matrices should be multiplied together
     */
    public void elem1(int exp, int width) {
        Vector next0 = null;
        switch (exp) {
            default:
            case 2:
                next0 = new Vector(new int[]{3, 4, 5});
                break;
            case 3:
                next0 = new Vector(new int[]{3, 4, 5, 6});
            //  next0 = new Vector(new int[]{3, 10, 18, 19});
                break;
        } // switch exp
        int alen = exp + 1;
        maxDigit = alen * (alen - 1); // 6 different elementary matrices of size 3, 12 of size 4
    //    maxDigit = 2 * alen * (alen - 1) + 0; // 12 different elementary matrices of size 3; +1: with identity
        Matrix amat = new Matrix(alen);
        ModoMeter meter = new ModoMeter(width, maxDigit);
        while (meter.hasNext()) {
            int[] values = meter.next();
            amat.setIdentity();
            int iter = 0;
            while (iter < width) {
                Matrix elem = new Matrix(alen);
                elem.setElementary(values[iter]);
                amat = amat.multiply(elem);
                iter ++;
            } // while iter
            Vector     next1 = amat.multiply(next0);
            if (next0.lessLast(next1) && next1.isPowerSum(exp, exp, 1)) {
                Vector next2 = amat.multiply(next1);
                if (next2.isPowerSum(exp, exp, 1)) {
                    Vector next3 = amat.multiply(next2);
                    if (next3.isPowerSum(exp, exp, 1)) {
                        int det = amat.determinant();
                        if (Math.abs(det) == 1) {
                            Vector elem = new Vector(values);
                            System.out.print("# elem1: " + next1.toString());
                            System.out.print(" => "  + next2.toString());
                    //        System.out.print(" => "  + next3.toString());
                            System.out.print(" # det=" + amat.determinant()
                                    + " ; meter=" + elem.toString()
                                    + "\n" + amat.toString());
                        } // det = +-1
                    } // next3 PS
                } // next2 PS
            } // next is PowerSum
        } // while meter
    } // elem1
    //==========================================================
    /** Try to find unimodular matrices which preserve a power sum
     *  with a right side of length 1. Like {@link #elem1},
     *  but the first product of elementary matrices
     *  is saved in an array for efficiency.
     *  @param exp   exponent for the tuple values
     *  @param width how many elementary matrices should be multiplied together,
     *  must be a multiple of 2 (or 3), see dimension of <em>elems</em>
     */
    public void elem2(int exp, int width) {
        Vector next0 = null;
        switch (exp) {
            default:
            case 2:
                next0 = new Vector(new int[]{3, 4, 5});
                break;
            case 3:
                next0 = new Vector(new int[]{3, 4, 5, 6});
                break;
        } // switch exp
        int alen = exp + 1;
        maxDigit = alen * (alen - 1); // 6 different elementary matrices of size 3, 12 of size 4
        int edim = 4; // dimension of 'elems' below
        Matrix  []
                []
                []
                []
                elems = new Matrix
                [maxDigit]
                [maxDigit]
                [maxDigit]
                [maxDigit]
                ;
        for (int ind0 = 0; ind0 < maxDigit; ind0 ++) {
        for (int ind1 = 0; ind1 < maxDigit; ind1 ++) {
        for (int ind2 = 0; ind2 < maxDigit; ind2 ++) {
        for (int ind3 = 0; ind2 < maxDigit; ind3 ++) {
                elems   [ind0]
                        [ind1]
                        [ind2]
                        [ind3]
                                = Matrix.elementary(alen, ind0)
                        .multiply(Matrix.elementary(alen, ind1))
                        .multiply(Matrix.elementary(alen, ind2))
                        .multiply(Matrix.elementary(alen, ind3))
                        ;
        } // for ind3
        } // for ind2
        } // for ind1
        } // for ind0
        System.out.print("Filled elems");
        int idim = 0;
        while (idim < width) {
            System.out.print("[" + maxDigit + "]");
            idim += edim;
        } // while idim
        System.out.println(", exp=" + exp + ", width=" + width);
        ModoMeter meter = new ModoMeter(width, maxDigit);
        while (meter.hasNext()) {
            int[] values = meter.next();
            idim = 0;
            Matrix amat = elems
                        [values[idim    ]]
                        [values[idim + 1]]
                        [values[idim + 2]]
                        [values[idim + 3]]
                    ;
            idim += edim;
            while (idim < width) {
                amat = amat.multiply(elems
                        [values[idim    ]]
                        [values[idim + 1]]
                        [values[idim + 2]]
                        [values[idim + 3]]
                        );
                idim += edim;
            } // while idim
            Vector     next1 = amat.multiply(next0);
            if (next0.lessLast(next1) && next1.isPowerSum(exp, exp, 1)) {
                // int det = amat.determinant();
                int preserved = amat.preservedPowerSums(exp, exp, 1, next1).size();
                System.out.print("# candidate matrix"
                        + ", " + next1.toString()
                        + ", preserved=" + preserved
                        + "\n" + amat.toString());
                if (preserved > 0) {
                    Vector elem = new Vector(values);
                    System.out.print("# elem2: " + next1.toString());
                    System.out.print(" # det=" + amat.determinant()
                           + " ; meter=" + elem.toString()
                           + "\n" + amat.toString());
                } // preserved
            } // next0 is PowerSum
        } // while meter
    } // elem2
    //==========================================================
    /** Show the generated matrix, and how it preserves the power sum property
     *  @param amat the {@link Matrix} to be shown
     *  @param vect1 initial {@link Vector} to be used in the preservation chain
     *  @param fact factor of the chained polynomial
     */
    private void showMatrix(Matrix amat, Vector vect1, int fact, int left, int right) {
        int maxIter = 8;
        int alen    = vect1.size();
        ArrayList<Vector> chain = amat.preservedPowerSums(alen - 1, left, right, vect1, maxIter);
        if (chain.size() >= 2) { // == maxIter) {
            System.out.print(""
                    + "chain " + chain.size()
                    + ", fact " + fact + " "
                    + String.format("%-32s ", amat.toString("(,)")) 
            /*
                    + String.format(" %-24s", (new PolyMatrix(amat)).multiply(new PolyVector(alen, "a"))
                            .powerSum(alen - 1, alen - 1, 1).toString().replaceAll("\\s", ""))
            */
                    + vect1.toString("(,)")
                    );
            int maxShow = maxIter - (alen - 1 == 2 ? 5 : 0);
            if (maxShow > chain.size()) {
                maxShow = chain.size();
            }
            for (int ichain = 0; ichain < maxShow; ichain ++) {
                System.out.print(" => " + chain.get(ichain).toString("(,)"));
            } // for ichain
            if (chain.size() < maxIter) { // premature end
                System.out.print(" ?? " + amat.multiply(chain.get(chain.size() - 1)).toString("(,)"));
            } // premature end
            System.out.println();
        } // preserved > 1
    } // showMatrix

    /** Generate 3x3 matrixes for Pythagorean triples
     */
    public void m2() {
        int m11, m12, m13
          , m21, m22, m23
          , m31, m32, m33; // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int t1 = 3;
        int t2 = 4;
        int t3 = 5; // initial Pythagorean tuple: (3, 4, 5)
        Vector vect1 = new Vector(new int[] { t1, t2, t3 } );
        int alen = vect1.size();
        int r1, r2, r3, r4; // resulting vector of multiplication m*t
        int r1p2, r2p2, r3p2; // squares thereof
        int s1, s2, s3, s4; // resulting vector of multiplication (m*t)*r
        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        r1 = m11*t1 + m12*t2 + m13*t3;
        if (r1 > 0) {
        r1p2 = r1*r1;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        r2 = m21*t1 + m22*t2 + m23*t3;
        if (r2 > 0 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        r2p2 = r2*r2;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        r3 = m31*t1 + m32*t2 + m33*t3;
        if (r3 > 0 && r3 != r2 && r3 != r1 && r1 + r2 + r3 != t1 + t2 + t3) {
        r3p2 = r3*r3;

            if (r1p2 + r2p2 == r3p2) {
                s1 = m11*r1 + m12*r2 + m13*r3;
                s2 = m21*r1 + m22*r2 + m23*r3;
                s3 = m31*r1 + m32*r2 + m33*r3;
                if (s1 != 0 && s2 != 0 && s1*s1 + s2*s2 == s3*s3 && Vector.gcd(s1, s2) == 1) {
                    Matrix amat = new Matrix(alen, new int[]
                            { m11, m12, m13
                            , m21, m22, m23
                            , m31, m32, m33
                            } );
                    showMatrix(amat, vect1, 0, 2, 1);
                } // if == s3*s3
            } // if == r3p2

        } // if r3 > 0
        }}} // for m3i
        } // if r2 > 0
        }}} // for m2i
        } // if r1 > 0
        }}} // for m1i
    } // m2

    /** v2: Pythagorean triples - like m2,
     *  but ensure power sums -+ factor^2 in columns
     */
    public void v2() {
        int powers[] = new int[MAXPOW]; 
        int ipow = 0;
        while (ipow < MAXPOW) {
            powers[ipow] = ipow*ipow;
            ipow ++;
        } // while 1
        // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int m11, m12, m13, m14
          , m21, m22, m23, m24
          , m31, m32, m33, m34
          , m41, m42, m43, m44
          ;
        int t1 = 3;
        int t2 = 4;
        int t3 = 5; // initial Pythagorean tuple: (3, 4, 5)
        int t4 = 0;
        t1 = 0; t2 = 1; t3 = 1;
        Vector vect1 = new Vector(new int[] { t1, t2, t3 } );
        int alen = vect1.size();
        int r1,  r2,  r3,  r4;  // resulting vector of multiplication m*t
        int r1p, r2p, r3p, r4p; // (2nd, 3rd) powers thereof
        
        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        int col11 =          m11*m11;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        int col12 = col11 +  m21*m21;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        int col13 = col12 -  m31*m31;
        boolean busy = true;
        ipow = 1;
        int fact = 0;
        while (busy && ipow < MAXPOW) {
            if (col13 - powers[ipow] == 0) {
                fact = powers[ipow];
                busy = false;
            }
            ipow ++;
        } // while busy
        if (fact > 0)      { // 1st column is powersum "-"

        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        int col21 =          m12*m12;
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        int col22 = col21 +  m22*m22;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        int col23 = col22 -  m32*m32;
        if (col23 - fact == 0) { // 2nd column is powersum "-"

        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        int col31 =          m13*m13;
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        int col32 = col31 +  m23*m23;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        int col33 = col32 -  m33*m33;
        if (col33 + fact == 0) { // 3rd column is powersum "+"
        
        r1 = m11*t1 + m12*t2 + m13*t3;
        if (r1 > 0) {
        r1p = r1*r1;
        r2 = m21*t1 + m22*t2 + m23*t3;
        if (r2 > 0 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        r2p = r2*r2;
        r3 = m31*t1 + m32*t2 + m33*t3;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        r3p = r3*r3;

        if (r1p + r2p - r3p == 0) { // preserves once
            Matrix amat = new Matrix(alen, new int[]
                    { m11, m12, m13
                    , m21, m22, m23
                    , m31, m32, m33
                    } );
            showMatrix(amat, vect1, fact, 2, 1);
        } // preserves once

        } // if r3 > 0
        } // if r2 > 0
        } // if r1 > 0
        } // 3rd column is powersum
        }}} // for mi3
        } // 2nd column is powersum
        }}} // for mi2
        } // 1st column is powersum
        }}} // for mi1
    } // v2

    /** Euler's Conjecture, primitive tuples for exponent 3: a^3 + b^3 + c^3 - d^3 = 0
     *  @param vect0 start vector, or default if null
     */
    public void pEC331(Vector vect0) {
        int powers[] = new int[MAXPOW]; 
        int ipow = 0;
        while (ipow < MAXPOW) {
            powers[ipow] = ipow*ipow*ipow;
            ipow ++;
        } // while 1
        // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int m11, m12, m13, m14
          , m21, m22, m23, m24
          , m31, m32, m33, m34
          , m41, m42, m43, m44
          ;
        Vector vect1 = vect0 != null ? vect0 : new Vector(new int[] { 3,4,5,6 } );
        int t1 = vect1.get(0);
        int t2 = vect1.get(1);
        int t3 = vect1.get(2); 
        int t4 = vect1.get(3);
        int alen = vect1.size();
        int r1,  r2,  r3,  r4;  // resulting vector of multiplication m*t
        int r1p, r2p, r3p, r4p; // (2nd, 3rd) powers thereof
        
        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        int col11 =          m11*m11*m11;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        int col12 = col11 +  m21*m21*m21;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        int col13 = col12 +  m31*m31*m31;
        for (m41 = minDigit; m41 < maxDigit; m41 ++) {
        int col14 = col13 -  m41*m41*m41;
        boolean busy = true;
        ipow = 1;
        int fact = 0;
        // busy = false; fact = 1;
        while (busy && ipow < 4) {
            if (col14 - powers[ipow] == 0) {
                fact = powers[ipow];
                busy = false;
            }
            ipow ++;
        } // while busy
        if (fact > 0)      { // 1st column is powersum "-"
/*
        System.out.println("# v3.fact=" + fact
                + ",\tcol1=[" + m11 
                + "," + m21
                + "," + m31
                + "," + m41
                + "]");
*/

        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        int col21 =          m12*m12*m12;
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        int col22 = col21 +  m22*m22*m22;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        int col23 = col22 +  m32*m32*m32;
        for (m42 = minDigit; m42 < maxDigit; m42 ++) {
        int col24 = col23 -  m42*m42*m42;
        if (col24 - fact == 0) { // 2nd column is powersum "-"

        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        int col31 =          m13*m13*m13;
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        int col32 = col31 +  m23*m23*m23;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        int col33 = col32 +  m33*m33*m33;
        for (m43 = minDigit; m43 < maxDigit; m43 ++) {
        int col34 = col33 -  m43*m43*m43;
        if (col34 - fact == 0) { // 3rd column is powersum "-"
        
        for (m14 = minDigit; m14 < maxDigit; m14 ++) {
        int col41 =          m14*m14*m14;
        r1 = m11*t1 + m12*t2 + m13*t3 + m14*t4;
        if (r1 > 0) {
        for (m24 = minDigit; m24 < maxDigit; m24 ++) {
        int col42 = col41 +  m24*m24*m24;
        r2 = m21*t1 + m22*t2 + m23*t3 + m24*t4;
        if (r2 > 0 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        for (m34 = minDigit; m34 < maxDigit; m34 ++) {
        int col43 = col42 +  m34*m34*m34;
        r3 = m31*t1 + m32*t2 + m33*t3 + m34*t4;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        for (m44 = minDigit; m44 < maxDigit; m44 ++) {
        int col44 = col43 -  m44*m44*m44;
        if (col44 + fact == 0) { // 4th column is powersum "+"
        r4 = m41*t1 + m42*t2 + m43*t3 + m44*t4;
        if (r4 > 0 && r4 != r3 && r4 != r2 && r4 != r1) {
        r1p = r1*r1*r1;
        r2p = r2*r2*r2;
        r3p = r3*r3*r3;
        r4p = r4*r4*r4;

        if (r1p + r2p + r3p - r4p == 0) { // preserves once
            Matrix amat = new Matrix(alen, new int[]
                    { m11, m12, m13, m14
                    , m21, m22, m23, m24
                    , m31, m32, m33, m34
                    , m41, m42, m43, m44
                    } );
            showMatrix(amat, vect1, fact, 3, 1);
        } // preserves once

        } // if r4 > 0
        } // if r3 > 0
        } // if r2 > 0
        } // if r1 > 0
        } // 4th column is powersum
        }}}} // for mi4
        } // 3rd column is powersum
        }}}} // for mi3
        } // 2nd column is powersum
        }}}} // for mi2
        } // 1st column is powersum
        }}}} // for mi1
    } // pEC331

    /** Euler's Conjecture, primitive tuples for exponent 3: a^3 + b^3 - c^3 - d^3 = 0
     *  @param vect0 start vector, or default if null
     */
    public void pEC322(Vector vect0) {
        int powers[] = new int[MAXPOW]; 
        int ipow = 0;
        while (ipow < MAXPOW) {
            powers[ipow] = ipow*ipow*ipow;
            ipow ++;
        } // while 1
        // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int m11, m12, m13, m14
          , m21, m22, m23, m24
          , m31, m32, m33, m34
          , m41, m42, m43, m44
          ;
        Vector vect1 = vect0 != null ? vect0 : new Vector(new int[] { 9, 10, 1, 12 } );
        int t1 = vect1.get(0);
        int t2 = vect1.get(1);
        int t3 = vect1.get(2); 
        int t4 = vect1.get(3);
        int alen = vect1.size();
        int r1,  r2,  r3,  r4;  // resulting vector of multiplication m*t
        int r1p, r2p, r3p, r4p; // (2nd, 3rd) powers thereof
        
        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        int col11 =          m11*m11*m11;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        int col12 = col11 +  m21*m21*m21;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        int col13 = col12 -  m31*m31*m31;
        for (m41 = minDigit; m41 < maxDigit; m41 ++) {
        int col14 = col13 -  m41*m41*m41;
        boolean busy = true;
        ipow = 1;
        int fact = 0;
        // busy = false; fact = 1;
        while (busy && ipow < 4) {
            if (col14 - powers[ipow] == 0) {
                fact = powers[ipow];
                busy = false;
            }
            ipow ++;
        } // while busy
        if (fact > 0)      { // 1st column is powersum "-"
/*
        System.out.println("# v3.fact=" + fact
                + ",\tcol1=[" + m11 
                + "," + m21
                + "," + m31
                + "," + m41
                + "]");
*/

        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        int col21 =          m12*m12*m12;
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        int col22 = col21 +  m22*m22*m22;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        int col23 = col22 -  m32*m32*m32;
        for (m42 = minDigit; m42 < maxDigit; m42 ++) {
        int col24 = col23 -  m42*m42*m42;
        if (col24 - fact == 0) { // 2nd column is powersum "-"

        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        int col31 =          m13*m13*m13;
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        int col32 = col31 +  m23*m23*m23;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        int col33 = col32 -  m33*m33*m33;
        for (m43 = minDigit; m43 < maxDigit; m43 ++) {
        int col34 = col33 -  m43*m43*m43;
        if (col34 + fact == 0) { // 3rd column is powersum "+"
        
        for (m14 = minDigit; m14 < maxDigit; m14 ++) {
        int col41 =          m14*m14*m14;
        r1 = m11*t1 + m12*t2 + m13*t3 + m14*t4;
        if (r1 > 0) {
        for (m24 = minDigit; m24 < maxDigit; m24 ++) {
        int col42 = col41 +  m24*m24*m24;
        r2 = m21*t1 + m22*t2 + m23*t3 + m24*t4;
        if (r2 > 0 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        for (m34 = minDigit; m34 < maxDigit; m34 ++) {
        int col43 = col42 -  m34*m34*m34;
        r3 = m31*t1 + m32*t2 + m33*t3 + m34*t4;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        for (m44 = minDigit; m44 < maxDigit; m44 ++) {
        int col44 = col43 -  m44*m44*m44;
        if (col44 + fact == 0) { // 4th column is powersum "+"
        r4 = m41*t1 + m42*t2 + m43*t3 + m44*t4;
        if (r4 > 0 && r4 != r3 && r4 != r2 && r4 != r1) {
        r1p = r1*r1*r1;
        r2p = r2*r2*r2;
        r3p = r3*r3*r3;
        r4p = r4*r4*r4;

        if (r1p + r2p - r3p - r4p == 0) { // preserves once
            Matrix amat = new Matrix(alen, new int[]
                    { m11, m12, m13, m14
                    , m21, m22, m23, m24
                    , m31, m32, m33, m34
                    , m41, m42, m43, m44
                    } );
            showMatrix(amat, vect1, fact, 2, 2);
        } // preserves once

        } // if r4 > 0
        } // if r3 > 0
        } // if r2 > 0
        } // if r1 > 0
        } // 4th column is powersum
        }}}} // for mi4
        } // 3rd column is powersum
        }}}} // for mi3
        } // 2nd column is powersum
        }}}} // for mi2
        } // 1st column is powersum
        }}}} // for mi1
    } // pEC322

    /** Euler's Conjecture, primitive tuples for exponent 3: a^3 + b^3 + c^3 + d^3 = 0
     *  @param vect0 start vector, or default if null
     */
    public void pEC340(Vector vect0) {
        int powers[] = new int[MAXPOW]; 
        int ipow = 0;
        while (ipow < MAXPOW) {
            powers[ipow] = ipow*ipow*ipow;
            ipow ++;
        } // while 1
        // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int m11, m12, m13, m14
          , m21, m22, m23, m24
          , m31, m32, m33, m34
          , m41, m42, m43, m44
          ;
        Vector vect1 = vect0 != null ? vect0 : new Vector(new int[] { 3, 4, 5, -6 } );
        int t1 = vect1.get(0);
        int t2 = vect1.get(1);
        int t3 = vect1.get(2); 
        int t4 = vect1.get(3);
        int alen = vect1.size();
        int r1,  r2,  r3,  r4;  // resulting vector of multiplication m*t
        int r1p, r2p, r3p, r4p; // (2nd, 3rd) powers thereof
        
        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        int col11 =          m11*m11*m11;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        int col12 = col11 +  m21*m21*m21;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        int col13 = col12 +  m31*m31*m31;
        for (m41 = minDigit; m41 < maxDigit; m41 ++) {
        int col14 = col13 +  m41*m41*m41;
        boolean busy = true;
        ipow = 1;
        int fact = 0;
        // busy = false; fact = 1;
        while (busy && ipow < 4) {
            if (col14 - powers[ipow] == 0) {
                fact = powers[ipow];
                busy = false;
            }
            ipow ++;
        } // while busy
        if (fact > 0)      { // 1st column is powersum "-"
/*
        System.out.println("# v3.fact=" + fact
                + ",\tcol1=[" + m11 
                + "," + m21
                + "," + m31
                + "," + m41
                + "]");
*/

        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        int col21 =          m12*m12*m12;
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        int col22 = col21 +  m22*m22*m22;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        int col23 = col22 +  m32*m32*m32;
        for (m42 = minDigit; m42 < maxDigit; m42 ++) {
        int col24 = col23 +  m42*m42*m42;
        if (col24 - fact == 0) { // 2nd column is powersum "-"

        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        int col31 =          m13*m13*m13;
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        int col32 = col31 +  m23*m23*m23;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        int col33 = col32 +  m33*m33*m33;
        for (m43 = minDigit; m43 < maxDigit; m43 ++) {
        int col34 = col33 +  m43*m43*m43;
        if (col34 - fact == 0) { // 3rd column is powersum "-"
        
        for (m14 = minDigit; m14 < maxDigit; m14 ++) {
        int col41 =          m14*m14*m14;
        r1 = m11*t1 + m12*t2 + m13*t3 + m14*t4;
        if (r1 > 0) {
        for (m24 = minDigit; m24 < maxDigit; m24 ++) {
        int col42 = col41 +  m24*m24*m24;
        r2 = m21*t1 + m22*t2 + m23*t3 + m24*t4;
        if (r2 > 0 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        for (m34 = minDigit; m34 < maxDigit; m34 ++) {
        int col43 = col42 +  m34*m34*m34;
        r3 = m31*t1 + m32*t2 + m33*t3 + m34*t4;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        for (m44 = minDigit; m44 < maxDigit; m44 ++) {
        int col44 = col43 +  m44*m44*m44;
        if (col44 - fact == 0) { // 4th column is powersum "-"
        r4 = m41*t1 + m42*t2 + m43*t3 + m44*t4;
        if (r4 > 0 && r4 != r3 && r4 != r2 && r4 != r1) {
        r1p = r1*r1*r1;
        r2p = r2*r2*r2;
        r3p = r3*r3*r3;
        r4p = r4*r4*r4;

        if (r1p + r2p + r3p + r4p == 0) { // preserves once
            Matrix amat = new Matrix(alen, new int[]
                    { m11, m12, m13, m14
                    , m21, m22, m23, m24
                    , m31, m32, m33, m34
                    , m41, m42, m43, m44
                    } );
            showMatrix(amat, vect1, fact, 4, 0);
        } // preserves once

        } // if r4 > 0
        } // if r3 > 0
        } // if r2 > 0
        } // if r1 > 0
        } // 4th column is powersum
        }}}} // for mi4
        } // 3rd column is powersum
        }}}} // for mi3
        } // 2nd column is powersum
        }}}} // for mi2
        } // 1st column is powersum
        }}}} // for mi1
    } // pEC340

    //==========================================================
    /** m3: Cubic quadruples
     */
    public void m3() {
        int m11, m12, m13, m14
          , m21, m22, m23, m24
          , m31, m32, m33, m34
          , m41, m42, m43, m44; // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int t1 = 3;
        int t2 = 4;
        int t3 = 5;
        int t4 = 6; // initial cubic tuple
        Vector vect1 = new Vector(new int[] { t1, t2, t3, t4 } );
        int alen = vect1.size();
        int r1, r2, r3, r4; // resulting vector of multiplication m*t
        int r1p3, r2p3, r3p3, r4p3; // cubes thereof
        int s1, s2, s3, s4; // resulting vector of multiplication (m*t)*r
        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        for (m14 = minDigit; m14 < maxDigit; m14 ++) {
        r1 = m11*t1 + m12*t2 + m13*t3 + m14*t4;
        if (r1 > 0) {
        r1p3 = r1*r1*r1;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        for (m24 = minDigit; m24 < maxDigit; m24 ++) {
        r2 = m21*t1 + m22*t2 + m23*t3 + m24*t4;
        if (r2 > 0 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        r2p3 = r2*r2*r2;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        int r31 =       m31*t1;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        int r32 = r31 + m32*t2;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        int r33 = r32 + m33*t3;
        for (m34 = minDigit; m34 < maxDigit; m34 ++) {
        r3 =      r33 + m34*t4;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        r3p3 = r3*r3*r3;
        for (m41 = minDigit; m41 < maxDigit; m41 ++) {
        int r41  =      m41*t1;
        for (m42 = minDigit; m42 < maxDigit; m42 ++) {
        int r42 = r41 + m42*t2;
        for (m43 = minDigit; m43 < maxDigit; m43 ++) {
        int r43 = r42 + m43*t3;
        for (m44 = minDigit; m44 < maxDigit; m44 ++) {
        r4 =      r43 + m44*t4;
        if (r4 > 0 && r4 != r3 && r4 != r2 && r4 != r1 &&
            r1 + r2 + r3 + r4 != t1 + t2 + t3 + t4
            ) {
        r4p3 = r4*r4*r4;

            if (r1p3 + r2p3 + r3p3 == r4p3) {
                s1 = m11*r1 + m12*r2 + m13*r3 + m14*r4;
                s2 = m21*r1 + m22*r2 + m23*r3 + m24*r4;
                s3 = m31*r1 + m32*r2 + m33*r3 + m34*r4;
                s4 = m41*r1 + m42*r2 + m43*r3 + m44*r4;
                if (s1 >  0 && s2 >  0 && s3 >  0 && s4 >  0 &&
                    s1 + s2 + s3 + s4 != t1 + t2 + t3 + t4 &&
                    s1 + s2 + s3 + s4 != r1 + r2 + r3 + r4 &&
                    s1*s1*s1 + s2*s2*s2 + s3*s3*s3 == s4*s4*s4 && Vector.gcd(s1, s2) == 1
                    ) {
                    Matrix amat = new Matrix(alen, new int[]
                            { m11, m12, m13, m14
                            , m21, m22, m23, m24
                            , m31, m32, m33, m34
                            , m41, m42, m43, m44
                            } );
                    showMatrix(amat, vect1, 0, 3, 1);
                } // if == s4*s4*s4
            } // if == r4p3

        } // if r4 > 0
        }}}} // for m4i
        } // if r3 > 0
        }}}} // for m3i
        } // if r2 > 0
        }}}} // for m2i
        } // if r1 > 0
        }}}} // for m1i
    } // m3

    //==========================================================
    /** m3test: 12 loops
     */
    public void m3test() {
        int m11, m12, m13, m14
          , m21, m22, m23, m24
          , m31, m32, m33, m34
          , m41, m42, m43, m44; // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int t1 = 3;
        int t2 = 4;
        int t3 = 5;
        int t4 = 6; // initial cubic tuple
        int r1, r2, r3, r4; // resulting vector of multiplication m*t
        int s1, s2, s3, s4; // resulting vector of multiplication (m*t)*r
        int r1p3, r2p3, r3p3, r4p3; // cubes thereof
        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        for (m14 = minDigit; m14 < maxDigit; m14 ++) {
        r1 = m11*t1 + m12*t2 + m13*t3 + m14*t4;
        if (r1 > 0) {
        // r1p3 = r1*r1*r1;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        for (m24 = minDigit; m24 < maxDigit; m24 ++) {
        r2 = m21*t1 + m22*t2 + m23*t3 + m24*t4;
        if (r2 > 0 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        // r2p3 = r2*r2*r2;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        for (m34 = minDigit; m34 < maxDigit; m34 ++) {
        r3 = m31*t1 + m32*t2 + m33*t3 + m34*t4;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        // r3p3 = r3*r3*r3;
        /*
        for (m41 = minDigit; m41 < maxDigit; m41 ++) {
        int r41  = m41*t1;
        for (m42 = minDigit; m42 < maxDigit; m42 ++) {
        int r42 = r41 + m42*t2;
        for (m43 = minDigit; m43 < maxDigit; m43 ++) {
        int r43 = r42 + m43*t3;
        for (m44 = minDigit; m44 < maxDigit; m44 ++) {
        r4      = r43 + m44*t4;
        if (r4 > 0 && r4 != r3 && r4 != r2 && r4 != r1 &&
            r1 + r2 + r3 + r4 != t1 + t2 + t3 + t4
            ) {
        r4p3 = r4*r4*r4;

            if (r1p3 + r2p3 + r3p3 == r4p3) {
                s1 = m11*r1 + m12*r2 + m13*r3 + m14*r4;
                s2 = m21*r1 + m22*r2 + m23*r3 + m24*r4;
                s3 = m31*r1 + m32*r2 + m33*r3 + m34*r4;
                s4 = m41*r1 + m42*r2 + m43*r3 + m44*r4;
                if (s1 >  0 && s2 >  0 && s3 >  0 && s4 >  0 &&
                    s1 + s2 + s3 + s4 != t1 + t2 + t3 + t4 &&
                    s1 + s2 + s3 + s4 != r1 + r2 + r3 + r4 &&
                    s1*s1*s1 + s2*s2*s2 + s3*s3*s3 == s4*s4*s4 && Vector.gcd(s1, s2) == 1
                    ) {
                    System.out.println("# twice: " +  r1 + " " + r2 + " " + r3 + " " + r4
                                          + " => " +  s1 + " " + s2 + " " + s3 + " " + s4);
                    System.out.println(m11 + " " + m12 + " " + m13 + " " + m14);
                    System.out.println(m21 + " " + m22 + " " + m23 + " " + m24);
                    System.out.println(m31 + " " + m32 + " " + m33 + " " + m34);
                    System.out.println(m41 + " " + m42 + " " + m43 + " " + m44);
                } else {
                    System.out.println("#  once: " +  t1 + " " + t2 + " " + t3 + " " + t4
                                          + " => " +  r1 + " " + r2 + " " + r3 + " " + r4);
                } // if == s4*s4*s4
            } // if == r4p3

        } // if r4 > 0
        }}}} // for m4i
        */
        } // if r3 > 0
        }}}} // for m3i
        } // if r2 > 0
        }}}} // for m2i
        } // if r1 > 0
        }}}} // for m1i
    } // m3test

    //==========================================================
    /** pps4: Power-preserving matrix of dim 4.
     *  Output of P11:
     <pre>
 + a*b*c * (6*a11*a12*a13 + 6*a21*a22*a23 + 6*a31*a32*a33 - 6*a41*a42*a43)
 + a*b*d * (6*a11*a12*a14 + 6*a21*a22*a24 + 6*a31*a32*a34 - 6*a41*a42*a44)
 + a*b^2 * (3*a11*a12^2 + 3*a21*a22^2 + 3*a31*a32^2 - 3*a41*a42^2)
 + a*c*d * (6*a11*a13*a14 + 6*a21*a23*a24 + 6*a31*a33*a34 - 6*a41*a43*a44)
 + a*c^2 * (3*a11*a13^2 + 3*a21*a23^2 + 3*a31*a33^2 - 3*a41*a43^2)
 + a*d^2 * (3*a11*a14^2 + 3*a21*a24^2 + 3*a31*a34^2 - 3*a41*a44^2)
 + a^2*b * (3*a11^2*a12 + 3*a21^2*a22 + 3*a31^2*a32 - 3*a41^2*a42)
 + a^2*c * (3*a11^2*a13 + 3*a21^2*a23 + 3*a31^2*a33 - 3*a41^2*a43)
 + a^2*d * (3*a11^2*a14 + 3*a21^2*a24 + 3*a31^2*a34 - 3*a41^2*a44)
 + a^3 * (a11^3 + a21^3 + a31^3 - a41^3)
 + b*c*d * (6*a12*a13*a14 + 6*a22*a23*a24 + 6*a32*a33*a34 - 6*a42*a43*a44)
 + b*c^2 * (3*a12*a13^2 + 3*a22*a23^2 + 3*a32*a33^2 - 3*a42*a43^2)
 + b*d^2 * (3*a12*a14^2 + 3*a22*a24^2 + 3*a32*a34^2 - 3*a42*a44^2)
 + b^2*c * (3*a12^2*a13 + 3*a22^2*a23 + 3*a32^2*a33 - 3*a42^2*a43)
 + b^2*d * (3*a12^2*a14 + 3*a22^2*a24 + 3*a32^2*a34 - 3*a42^2*a44)
 + b^3 * (a12^3 + a22^3 + a32^3 - a42^3)
 + c*d^2 * (3*a13*a14^2 + 3*a23*a24^2 + 3*a33*a34^2 - 3*a43*a44^2)
 + c^2*d * (3*a13^2*a14 + 3*a23^2*a24 + 3*a33^2*a34 - 3*a43^2*a44)
 + c^3 * (a13^3 + a23^3 + a33^3 - a43^3)
 + d^3 * (a14^3 + a24^3 + a34^3 - a44^3)
     </pre>
     */
    public void pps4() {
        // minDigit = 0;
        int m11, m12, m13, m14
          , m21, m22, m23, m24
          , m31, m32, m33, m34
          , m41, m42, m43, m44; // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int m11p3, m12p3, m13p3, m14p3
          , m21p3, m22p3, m23p3, m24p3
          , m31p3, m32p3, m33p3, m34p3
          , m41p3, m42p3, m43p3, m44p3; // 3rd powers thereof
        for (m11 = minDigit; m11 < maxDigit; m11 ++) { m11p3 = m11*m11*m11;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) { m21p3 = m21*m21*m21;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) { m31p3 = m31*m31*m31;
        for (m41 = minDigit; m41 < maxDigit; m41 ++) { m41p3 = m41*m41*m41;
        int common = -1 + m11p3 + m21p3 + m31p3 - m41p3;
        if (true) {

        for (m12 = minDigit; m12 < maxDigit; m12 ++) { m12p3 = m12*m12*m12;
        for (m22 = minDigit; m22 < maxDigit; m22 ++) { m22p3 = m22*m22*m22;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) { m32p3 = m32*m32*m32;
        for (m42 = minDigit; m42 < maxDigit; m42 ++) { m42p3 = m42*m42*m42;
        if (-1 + m12p3 + m22p3 + m32p3 - m42p3 == common) {

        for (m13 = minDigit; m13 < maxDigit; m13 ++) { m13p3 = m13*m13*m13;
        for (m23 = minDigit; m23 < maxDigit; m23 ++) { m23p3 = m23*m23*m23;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) { m33p3 = m33*m33*m33;
        for (m43 = minDigit; m43 < maxDigit; m43 ++) { m43p3 = m43*m43*m43;
        if (-1 + m13p3 + m23p3 + m33p3 - m43p3 == common) {

        for (m14 = minDigit; m14 < maxDigit; m14 ++) { m14p3 = m14*m14*m14;
        for (m24 = minDigit; m24 < maxDigit; m24 ++) { m24p3 = m24*m24*m24;
        for (m34 = minDigit; m34 < maxDigit; m34 ++) { m34p3 = m34*m34*m34;
        for (m44 = minDigit; m44 < maxDigit; m44 ++) { m44p3 = m44*m44*m44;
        if ( 1 + m14p3 + m24p3 + m34p3 - m44p3 == - common) {
        // check for equal rows
        if (m41 != m11 || m42 != m12 || m43 != m13 || m44 != m14) {
        if (m41 != m21 || m42 != m22 || m43 != m23 || m44 != m24) {
        if (m41 != m31 || m42 != m32 || m43 != m33 || m44 != m34) {

        // the following IFs are the output of data/exp2.pl, with data from test/P11.*.tst
        if (m11*m12*m13 + m21*m22*m23 + m31*m32*m33 == m41*m42*m43) {
        if (m11*m12*m14 + m21*m22*m24 + m31*m32*m34 == m41*m42*m44) {
        if (m11*m13*m14 + m21*m23*m24 + m31*m33*m34 == m41*m43*m44) {
        if (m12*m13*m14 + m22*m23*m24 + m32*m33*m34 == m42*m43*m44) {

        if (m11*m12*m12 + m21*m22*m22 + m31*m32*m32 == m41*m42*m42) {
        if (m11*m13*m13 + m21*m23*m23 + m31*m33*m33 == m41*m43*m43) {
        if (m11*m14*m14 + m21*m24*m24 + m31*m34*m34 == m41*m44*m44) {

        if (m11*m11*m12 + m21*m21*m22 + m31*m31*m32 == m41*m41*m42) {
        if (m11*m11*m13 + m21*m21*m23 + m31*m31*m33 == m41*m41*m43) {
        if (m11*m11*m14 + m21*m21*m24 + m31*m31*m34 == m41*m41*m44) {

        if (m12*m13*m13 + m22*m23*m23 + m32*m33*m33 == m42*m43*m43) {
        if (m12*m14*m14 + m22*m24*m24 + m32*m34*m34 == m42*m44*m44) {
        if (m13*m14*m14 + m23*m24*m24 + m33*m34*m34 == m43*m44*m44) {

        if (m12*m12*m13 + m22*m22*m23 + m32*m32*m33 == m42*m42*m43) {
        if (m12*m12*m14 + m22*m22*m24 + m32*m32*m34 == m42*m42*m44) {
        if (m13*m13*m14 + m23*m23*m24 + m33*m33*m34 == m43*m43*m44) {
        Matrix mat = new Matrix(4, new int[]
                { m11, m12, m13, m14
                , m21, m22, m23, m24
                , m31, m32, m33, m34
                , m41, m42, m43, m44
                });
        System.out.println("# pps4: ["
                +    "[" + m11 + "," + m12 + "," + m13 + "," + m14 + "]"
                + "\t,[" + m21 + "," + m22 + "," + m23 + "," + m24 + "]"
                + "\t,[" + m31 + "," + m32 + "," + m33 + "," + m34 + "]"
                + "\t,[" + m41 + "," + m42 + "," + m43 + "," + m44 + "]]"
                + ", det=" + mat.determinant()
                );
        }}} // 223
        }}} // 133
        }}} // 112
        }}} // 122
        }}}} // 123...

        }}} // equal rows

        } // if mi4p3
        }}}} // for mi4
        } // if mi3p3
        }}}} // for mi3
        } // if mi2p3
        }}}} // for mi2
        } // if mi1p3
        }}}} // for mi1

    } // pps4

    //==========================
    // Main
    //==========================
    /** Test method.
     *  @param args command line arguments:
     *  <ul>
     *  <li>operation: m1, ...</li>
     *  <li>-e exponent</li>
     *  <li>-l maxDigit</li>
     *  <li>-v startVector</li>
     *  <li>-w width</li>
     *  </ul>
     */
    public static void main(String[] args) {
        String oper = "m2"; // Tree of primitive Pythagorean triples
        String op = "";
        int exp   = 2;
        int limit = 6;
        int width = 6;
        Vector vect0 = null;
        int iarg  = 0;
        while (iarg < args.length) { // get the arguments
            if (args[iarg].startsWith("-")) {
                op = args[iarg ++].substring(1).toLowerCase();
                if (false) {
                } else if (op.equals("e")) {
                    try {
                        exp   = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else if (op.equals("l")) {
                    try {
                        limit = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else if (op.equals("v")) {
                	vect0 = new Vector(args[iarg ++]);
                } else if (op.equals("w")) {
                    try {
                        width = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else {
                    System.err.println("unknown option \"-" + op + "\"");
                }
            } else {
                oper = args[iarg ++];
            }
        } // while args

        MatrixExhauster exhauster = new MatrixExhauster(limit);
        long startMillis = System.currentTimeMillis();
        if (false) {
        } else if (oper.equals("elem1" )) {
            exhauster.elem1(exp, width);
        } else if (oper.equals("elem2" )) {
            exhauster.elem2(exp, width);
        } else if (oper.equals("m2" )) {
            exhauster.m2();
        } else if (oper.equals("v2" )) {
            exhauster.v2();
/*
        } else if (oper.equals("m3" )) {
            exhauster.m3();
*/
        } else if (oper.equals("pEC331" )) {
            exhauster          .pEC331(vect0);
        } else if (oper.equals("pEC322" )) {
            exhauster          .pEC322(vect0);
        } else if (oper.equals("pEC340" )) {
            exhauster          .pEC340(vect0);
        } else if (oper.equals("m3test" )) {
            exhauster.m3test();
        } else if (oper.equals("pps4" )) {
            exhauster.pps4();
        } else {
            System.err.println("unknown operation \"" + oper + "\"");
        }
        System.err.println("elapsed time: " 
                + (System.currentTimeMillis() - startMillis + 500) / 1000 + " s");
    } // main

} // MatrixExhauster
