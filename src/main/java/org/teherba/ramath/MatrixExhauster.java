/*  Exhaustive generator for power identities
 *  @(#) $Id: MatrixExhauster.java 808 2011-09-20 16:56:14Z gfis $
 *  2015-03-23: v2
 *  2013-07-28: with linear.Matrix
 *  2013-07-06, Georg Fischer: copied from ParameterGenerator
 *
 *  c.f.
 *  http://www.math.uconn.edu/~kconrad/blurbs/linmultialg/descentPythag.pdf
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
    /** limit for determination of 'fact' */
    private static final int LIMFACT = 5;

    /** Constructor with limit
     *  @param limit minimum digit not yet used for expansion
     */
    public MatrixExhauster(int limit) {
        maxDigit = (int) (limit + 1);
        minDigit = (int) (- limit  );
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
        maxDigit = (int) (alen * (alen - 1)); // 6 different elementary matrices of size 3, 12 of size 4
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
        maxDigit = (int) (alen * (alen - 1)); // 6 different elementary matrices of size 3, 12 of size 4
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
                    amat.printPreservedChain(vect1, 0, 2, 1);
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
        while (busy && ipow < LIMFACT) {
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
            amat.printPreservedChain(vect1, fact, 2, 1);
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

    /** ec221: Generate matrices which preserve tuples for Euler's conjecture
     *  @param vect0 initial vector which represents a sum of like powers
     */
    public void ec221(Vector vect0) {
        int MAXPOW = 16; // matrix elements must be smaller
        int powers[] = new int[MAXPOW];
        int ipow = 0;
        while (ipow < MAXPOW) {
        powers[ipow] = ipow*ipow;
            ipow ++;
        } // while 1
        int alen = vect0.size();
        // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int m11, m12, m13;
        int m21, m22, m23;
        int m31, m32, m33;
        int t1 = vect0.get(0);
        int t2 = vect0.get(1);
        int t3 = vect0.get(2);
        int r1, r2, r3; // resulting vector of multiplication m*t
        int r1p, r2p, r3p; // (2nd, 3rd ...) powers thereof
        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        int m13p2 =          m13*m13;
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        int m23p2 =          m23*m23;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        int m33p2 =          m33*m33;
        if (true) { // column 3
        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        int m12p2 =          m12*m12;
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        int m22p2 =          m22*m22;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        int m32p2 =          m32*m32;
        int c2r1 = m12 + m13;
        int c2r2 = m22 + m23;
        int c2r3 = m32 + m33;
        if (c2r1*c2r1 + c2r2*c2r2 - c2r3*c2r3 == 0) { // column 2
        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        int m11p2 =          m11*m11;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        int m21p2 =          m21*m21;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        int m31p2 =          m31*m31;
        int c1r1 = m11 + m13;
        int c1r2 = m21 + m23;
        int c1r3 = m31 + m33;
        if (c1r1*c1r1 + c1r2*c1r2 - c1r3*c1r3 == 0) { // column 1
        r1 = m11*t1 + m12*t2 + m13*t3;
        if (r1 > 0) {
        r2 = m21*t1 + m22*t2 + m23*t3;
        if (r2 > 0 && r2 != r1) {
        r3 = m31*t1 + m32*t2 + m33*t3;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        r1p = r1*r1;
        r2p = r2*r2;
        r3p = r3*r3;
        if (Vector.gcd(r1, r2) == 1) {
        if (r1p + r2p - r3p == 0) { // preserves once
            Matrix amat = new Matrix(alen, new int[]
                    { m11, m12, m13
                    , m21, m22, m23
                    , m31, m32, m33
                    } );
            amat.printPreservedChain(vect0, 1, 2, 1);
        } // preserves once
        } // Vector.gcd
        } // if r3 > 0
        } // if r2 > 0
        } // if r1 > 0
        } // column 3
        }}} // for mi3
        } // column 2
        }}} // for mi2
        } // column 1
        }}} // for mi1
    } // ec221

    /** pEC221: Pythagorean triples - like v2,
     *  but ensure *[0,1,1] = 0, *[1,0,1] = 0, and later [3,4,5] = 0
     */
    public void pEC221(Vector vect0) {
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
        Vector vect1 = vect0 != null ? vect0 : new Vector(new int[] { 3, 4, 5 } );
        if (! vect1.isPowerSum(2, 2, 1)) {
            System.err.println(vect1.toString(",") + " not isPowerSum(2, 2, 1)");
            return;
        }
        int t1 = vect1.get(0);
        int t2 = vect1.get(1);
        int t3 = vect1.get(2);
        // int t4 = vect1.get(3);
        int alen = vect1.size();
        int r1,  r2,  r3,  r4;  // resulting vector of multiplication m*t
        int r1p, r2p, r3p, r4p; // (2nd, 3rd) powers thereof
        int fact = 1;

        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        int m13p2 =          m13*m13;
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        int m23p2 =          m23*m23;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        int m33p2 =          m33*m33;
        if (true) { // 3rd column

        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        int m12p2 =          m12*m12;
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        int m22p2 =          m22*m22;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        int m32p2 =          m32*m32;
        // try [0,1,1]
        int v1 = m12 + m13;
        int v2 = m22 + m23;
        int v3 = m32 + m33;
        if (v1*v1 + v2*v2 - v3*v3 == 0) { // 2nd column

        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        int m11p2 =          m11*m11;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        int m21p2 =          m21*m21;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        int m31p2 =          m31*m31;
        // try [1,0,1]
        int u1 = m11 + m13;
        int u2 = m21 + m23;
        int u3 = m31 + m33;
        if (u1*u1 + u2*u2 - u3*u3 == 0) { // 1st column

        r1 = m11*t1 + m12*t2 + m13*t3;
        if (r1 > 0) {
        r2 = m21*t1 + m22*t2 + m23*t3;
        if (r2 > 0 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        r3 = m31*t1 + m32*t2 + m33*t3;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        r1p = r1*r1;
        r2p = r2*r2;
        r3p = r3*r3;

        if (r1p + r2p - r3p == 0) { // preserves once
            Matrix amat = new Matrix(alen, new int[]
                    { m11, m12, m13
                    , m21, m22, m23
                    , m31, m32, m33
                    } );
            amat.printPreservedChain(vect1, fact, 2, 1);
        } // preserves once

        } // if r3 > 0
        } // if r2 > 0
        } // if r1 > 0
        } // 1st column
        }}} // for mi1
        } // 2nd column
        }}} // for mi2
        } // 3rd column
        }}} // for mi3
    } // pEC221

    /** ec331: Generate matrices which preserve tuples for Euler's conjecture
     *  @param vect0 initial vector which represents a sum of like powers
     */
    public void ec331(Vector vect0) {
        int MAXPOW = 16; // matrix elements must be smaller
        int powers[] = new int[MAXPOW];
        int ipow = 0;
        while (ipow < MAXPOW) {
            powers[ipow] = ipow*ipow*ipow;
            ipow ++;
        } // while 1
        int alen = vect0.size();
        // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int m11, m12, m13, m14;
        int m21, m22, m23, m24;
        int m31, m32, m33, m34;
        int m41, m42, m43, m44;
        int t1 = vect0.get(0);
        int t2 = vect0.get(1);
        int t3 = vect0.get(2);
        int t4 = vect0.get(3);
        int r1, r2, r3, r4; // resulting vector of multiplication m*t
        int r1p, r2p, r3p, r4p; // (2nd, 3rd ...) powers thereof
        for (m14 = minDigit; m14 < maxDigit; m14 ++) {
        int m14p3 =          m14*m14*m14;
        for (m24 = minDigit; m24 < maxDigit; m24 ++) {
        int m24p3 =          m24*m24*m24;
        for (m34 = minDigit; m34 < maxDigit; m34 ++) {
        int m34p3 =          m34*m34*m34;
        for (m44 = minDigit; m44 < maxDigit; m44 ++) {
        int m44p3 =          m44*m44*m44;
        if (true) { // column 4
        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        int m13p3 =          m13*m13*m13;
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        int m23p3 =          m23*m23*m23;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        int m33p3 =          m33*m33*m33;
        for (m43 = minDigit; m43 < maxDigit; m43 ++) {
        int m43p3 =          m43*m43*m43;
        int c3r1 = m13 + m14;
        int c3r2 = m23 + m24;
        int c3r3 = m33 + m34;
        int c3r4 = m43 + m44;
        if (0 == 0) { // column 3
        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        int m12p3 =          m12*m12*m12;
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        int m22p3 =          m22*m22*m22;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        int m32p3 =          m32*m32*m32;
        for (m42 = minDigit; m42 < maxDigit; m42 ++) {
        int m42p3 =          m42*m42*m42;
        int c2r1 = m12 + m14;
        int c2r2 = m22 + m24;
        int c2r3 = m32 + m34;
        int c2r4 = m42 + m44;
        if (0 == 0) { // column 2
        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        int m11p3 =          m11*m11*m11;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        int m21p3 =          m21*m21*m21;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        int m31p3 =          m31*m31*m31;
        for (m41 = minDigit; m41 < maxDigit; m41 ++) {
        int m41p3 =          m41*m41*m41;
        int c1r1 = m11 + m14;
        int c1r2 = m21 + m24;
        int c1r3 = m31 + m34;
        int c1r4 = m41 + m44;
        if (0 == 0) { // column 1
        r1 = m11*t1 + m12*t2 + m13*t3 + m14*t4;
        if (r1 > 0) {
        r2 = m21*t1 + m22*t2 + m23*t3 + m24*t4;
        if (r2 > 0 && r2 != r1) {
        r3 = m31*t1 + m32*t2 + m33*t3 + m34*t4;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        r4 = m41*t1 + m42*t2 + m43*t3 + m44*t4;
        if (r4 > 0 && r4 != r3 && r4 != r2 && r4 != r1) {
        r1p = r1*r1*r1;
        r2p = r2*r2*r2;
        r3p = r3*r3*r3;
        r4p = r4*r4*r4;
        if (Vector.gcd(r1, r2) == 1) {
        if (r1p + r2p + r3p - r4p == 0) { // preserves once
            Matrix amat = new Matrix(alen, new int[]
                    { m11, m12, m13, m14
                    , m21, m22, m23, m24
                    , m31, m32, m33, m34
                    , m41, m42, m43, m44
                    } );
            amat.printPreservedChain(vect0, 1, 3, 1);
        } // preserves once
        } // Vector.gcd
        } // if r4 > 0
        } // if r3 > 0
        } // if r2 > 0
        } // if r1 > 0
        } // column 4
        }}}} // for mi4
        } // column 3
        }}}} // for mi3
        } // column 2
        }}}} // for mi2
        } // column 1
        }}}} // for mi1
    } // ec331

    /** Gets the (first) position of an element in an <em>int</em> array
     *  @param arr search in this array
     *  @param elem search for this element
     *  @return index >= 0 of <em>elem</em> in <em>arr</em>, or -1 if not found
     */
    public static int indexOf(int[] arr, int elem) {
        int result = -1;
        int arrlen = arr.length;
        int ielem = 0;
        while (result < 0 && ielem < arrlen) {
            if (elem == arr[ielem]) {
                result = ielem;
            } else {
                ielem ++;
            }
        } // while ielem
        return result;
    } // indexOf

    /** ec340: Generate matrices which preserve tuples for Euler's conjecture
     *  @param vect0 initial vector which represents a sum of like powers
     *  Caution: This Java method was generated on 2015-03-31 23:59:48 by ramath/data/genpEC.pl.
     *  Do   N O T   E D I T   here!
     */
    public void ec340(Vector vect0) {
        int MAXPOW = 16; // matrix elements must be smaller
        int powers[] = new int[MAXPOW];
        int ipow = 0;
        while (ipow < MAXPOW) {
            powers[ipow] = ipow*ipow*ipow;
            ipow ++;
        } // while 1
        int alen = vect0.size();

/*
EC33.this.tst:
elapsed time: nn s
chain 8, fact 1 [[0,-2,1,-2],[-2,0,-2,1],[2,1,2,0]   ,[1,2,0,2]]    [6,-3,-4,-5] => [12,-9,1,-10] => [39,-36,17,-26] => [141,-138,76,-85] => [522,-519,296,-305] => [1944,-1941,1117,-1126] => [7251,-7248,4181,-4190] => [27057,-27054,15616,-15625] => [100974,-100971,58292,-58301]
chain 8, fact 1 [[0,-2,1,-2],[-2,0,-2,1],[2,1,2,0]   ,[-2,-1,-1,1]] [6,-3,-4,-5] => [12,-9,1,-10] => [39,-36,17,-26] => [141,-138,76,-85] => [522,-519,296,-305] => [1944,-1941,1117,-1126] => [7251,-7248,4181,-4190] => [27057,-27054,15616,-15625] => [100974,-100971,58292,-58301]
chain 8, fact 1 [[0,-2,1,-2],[-2,0,-2,1],[-1,-2,1,-1],[1,2,0,2]]    [6,-3,-4,-5] => [12,-9,1,-10] => [39,-36,17,-26] => [141,-138,76,-85] => [522,-519,296,-305] => [1944,-1941,1117,-1126] => [7251,-7248,4181,-4190] => [27057,-27054,15616,-15625] => [100974,-100971,58292,-58301]
chain 8, fact 1 [[0,-2,1,-2],[-2,0,-2,1],[-1,-2,1,-1],[-2,-1,-1,1]] [6,-3,-4,-5] => [12,-9,1,-10] => [39,-36,17,-26] => [141,-138,76,-85] => [522,-519,296,-305] => [1944,-1941,1117,-1126] => [7251,-7248,4181,-4190] => [27057,-27054,15616,-15625] => [100974,-100971,58292,-58301]

chain 8, fact 1 [[0,-2,-2,1],[-2,0,1,-2],[1,2,2,0]   ,[2,1,0,2]]    [6,-3,-4,-5] => [9,-6,-8,-1] => [27,-24,-19,10] => [96,-93,-59,50] => [354,-351,-208,199] => [1317,-1314,-764,755] => [4911,-4908,-2839,2830] => [18324,-18321,-10583,10574] => [68382,-68379,-39484,39475]
chain 8, fact 1 [[0,-2,-2,1],[-2,0,1,-2],[1,2,2,0]   ,[-1,-2,-1,1]] [6,-3,-4,-5] => [9,-6,-8,-1] => [27,-24,-19,10] => [96,-93,-59,50] => [354,-351,-208,199] => [1317,-1314,-764,755] => [4911,-4908,-2839,2830] => [18324,-18321,-10583,10574] => [68382,-68379,-39484,39475]
chain 8, fact 1 [[0,-2,-2,1],[-2,0,1,-2],[-2,-1,1,-1],[2,1,0,2]]    [6,-3,-4,-5] => [9,-6,-8,-1] => [27,-24,-19,10] => [96,-93,-59,50] => [354,-351,-208,199] => [1317,-1314,-764,755] => [4911,-4908,-2839,2830] => [18324,-18321,-10583,10574] => [68382,-68379,-39484,39475]
chain 8, fact 1 [[0,-2,-2,1],[-2,0,1,-2],[-2,-1,1,-1],[-1,-2,-1,1]] [6,-3,-4,-5] => [9,-6,-8,-1] => [27,-24,-19,10] => [96,-93,-59,50] => [354,-351,-208,199] => [1317,-1314,-764,755] => [4911,-4908,-2839,2830] => [18324,-18321,-10583,10574] => [68382,-68379,-39484,39475]

C:\Users\gfis\work\gits\ramath\test\eec>perl powmod.pl 3 63
   0:   24
   1:   74
   8:   74
  27:   74
  28:   25
  35:   24
  36:   72
  55:   72
  62:   73
gain: 54
*/
        int TMOD = 63;
        boolean tmodset[] = new boolean[TMOD];
        for (int itmod = 0; itmod < TMOD; itmod ++) {
            tmodset[itmod] = false;
        }
        tmodset[ 0] = true;
        tmodset[ 1] = true;
        tmodset[ 8] = true;
        tmodset[27] = true;
        tmodset[28] = true;
        tmodset[35] = true;
        tmodset[36] = true;
        tmodset[55] = true;
        tmodset[62] = true;
        
        int MAXLIST = 256;
        Object[] vlist = new Object[MAXLIST];
        for (int ilist = 0; ilist < MAXLIST; ilist ++) {
            vlist[ilist] = null;
        } // for ilist
        
        vlist[  0] = new int[] { };
        vlist[  6] = new int[] { -3,-4,-5 };
        vlist[  9] = new int[] { -1,-6,-8 };
        vlist[ 12] = new int[] { 1,-9,-10 };
        vlist[ 16] = new int[] { 2,-9,-15 };
        vlist[ 19] = new int[] { -3,-10,-18 };
        vlist[ 20] = new int[] { -7,-14,-17 };
        vlist[ 25] = new int[] { -4,-17,-22 };
        vlist[ 27] = new int[] { 10,-19,-24 };
        vlist[ 28] = new int[] { -18,-19,-21 };
        vlist[ 29] = new int[] { -11,-15,-27 };
        vlist[ 34] = new int[] { 2,-15,-33
                               , 9,-16,-33 };
        vlist[ 39] = new int[] { 17,-26,-36 };
        vlist[ 40] = new int[] { 12,-31,-33 };
        vlist[ 41] = new int[] { -2,-17,-40
                               , -6,-32,-33 };
        vlist[ 44] = new int[] { -16,-23,-41 };
        vlist[ 46] = new int[] { -27,-30,-37
                               , -3,-36,-37 };
        vlist[ 51] = new int[] { 12,-38,-43 };
        vlist[ 53] = new int[] { -29,-34,-44
                               , 8,-29,-50 };
        vlist[ 54] = new int[] { -12,-19,-53 };
        vlist[ 55] = new int[] { 17,-24,-54 };
        vlist[ 58] = new int[] { -15,-42,-49
                               , 9,-22,-57 };
        vlist[ 60] = new int[] { 3,-22,-59 };
        vlist[ 67] = new int[] { -22,-51,-54
                               , 30,-51,-58 };
        vlist[ 69] = new int[] { -36,-38,-61
                               , 42,-56,-61 };
        vlist[ 70] = new int[] { -7,-54,-57 };
        vlist[ 71] = new int[] { -14,-23,-70 };
        vlist[ 72] = new int[] { -34,-39,-65 };
        vlist[ 75] = new int[] { -38,-43,-66 };
        vlist[ 76] = new int[] { -31,-33,-72
                               , 17,-38,-73
                               , 5,-48,-69 };
        vlist[ 80] = new int[] { 15,-54,-71 };
        vlist[ 81] = new int[] { -25,-48,-74 };
        vlist[ 82] = new int[] { -19,-60,-69
                               , 51,-64,-75 };
        vlist[ 84] = new int[] { -28,-53,-75 };
        vlist[ 85] = new int[] { -50,-61,-64 };
        vlist[ 87] = new int[] { -20,-54,-79
                               , -26,-55,-78
                               , -38,-48,-79 };
        vlist[ 88] = new int[] { -21,-43,-84
                               , -25,-31,-86 };
        vlist[ 89] = new int[] { -17,-40,-86
                               , 2,-41,-86 };
        vlist[ 90] = new int[] { -25,-38,-87
                               , -58,-59,-69 };
        vlist[ 93] = new int[] { -32,-54,-85
                               , 11,-30,-92 };
        vlist[ 94] = new int[] { 23,-63,-84 };
        vlist[ 96] = new int[] { -19,-53,-90
                               , 50,-59,-93 };
        vlist[ 97] = new int[] { -45,-69,-79
                               , 20,-33,-96
                               , 47,-66,-90 };
        vlist[ 98] = new int[] { 24,-63,-89
                               , 35,-59,-92 };
        vlist[ 99] = new int[] { 29,-60,-92 };
        vlist[102] = new int[] { 23,-60,-95 };
        vlist[103] = new int[] { -12,-31,-102
                               , 1,-64,-94 };
        vlist[105] = new int[] { -33,-70,-92 };
        vlist[108] = new int[] { -13,-51,-104
                               , -15,-82,-89 };
        vlist[109] = new int[] { 62,-90,-93 };
        vlist[110] = new int[] { -29,-75,-96
                               , 4,-67,-101 };
        vlist[111] = new int[] { -16,-47,-108 };
        vlist[113] = new int[] { -50,-74,-97
                               , 55,-92,-94 };
        vlist[115] = new int[] { -3,-34,-114 };
        vlist[116] = new int[] { -23,-86,-97 };
        vlist[120] = new int[] { -9,-55,-116 };
        vlist[121] = new int[] { -49,-84,-102
                               , 42,-49,-120 };
        vlist[122] = new int[] { -19,-92,-101 };
        vlist[123] = new int[] { -44,-51,-118 };
        vlist[126] = new int[] { -23,-94,-105 };
        vlist[127] = new int[] { -13,-65,-121
                               , 2,-95,-106 };
        vlist[129] = new int[] { -38,-57,-124 };
        vlist[132] = new int[] { -5,-76,-123 };
        vlist[134] = new int[] { -86,-95,-97
                               , 23,-95,-116 };
        vlist[137] = new int[] { -44,-73,-128 };
        vlist[139] = new int[] { -94,-96,-99
                               , 18,-94,-123 };
        vlist[141] = new int[] { -72,-85,-122
                               , 76,-85,-138 };
        vlist[142] = new int[] { -31,-64,-137
                               , 10,-103,-121 };
        vlist[144] = new int[] { -1,-71,-138 };
        vlist[145] = new int[] { -12,-81,-136 };
        vlist[147] = new int[] { -22,-75,-140 };
        vlist[150] = new int[] { -71,-73,-138
                               , 1,-73,-144
                               , 2,-83,-141 };
        vlist[151] = new int[] { -46,-47,-148 };
        vlist[152] = new int[] { 4,-41,-151 };
        vlist[153] = new int[] { 18,-121,-122 };
        vlist[156] = new int[] { -65,-87,-142
                               , 26,-123,-125 };
        vlist[159] = new int[] { -3,-121,-131 };
        vlist[160] = new int[] { -69,-123,-124 };
        vlist[161] = new int[] { 10,-84,-153 };
        vlist[162] = new int[] { -59,-93,-148 };
        vlist[163] = new int[] { 23,-121,-137 };
        vlist[164] = new int[] { -69,-99,-146 };
        vlist[165] = new int[] { 24,-86,-157
                               , 27,-100,-152
                               , 76,-102,-157 };
        vlist[166] = new int[] { 32,-129,-135 };
        vlist[167] = new int[] { -12,-86,-159
                               , 25,-64,-164 };
        vlist[170] = new int[] { -96,-107,-141 };
        vlist[171] = new int[] { -107,-108,-136
                               , -54,-80,-163 };
        vlist[172] = new int[] { -1,-135,-138
                               , 36,-93,-163
                               , 71,-135,-144
                               , 99,-120,-163 };
        vlist[174] = new int[] { -47,-97,-162
                               , 37,-136,-141 };
        vlist[176] = new int[] { -25,-92,-167 };
        vlist[177] = new int[] { -48,-137,-142 };
        vlist[178] = new int[] { -48,-133,-147
                               , 51,-115,-162
                               , 72,-115,-165 };
        vlist[179] = new int[] { -17,-57,-177
                               , 40,-107,-166 };
        vlist[180] = new int[] { 57,-113,-166 };
        vlist[181] = new int[] { -108,-109,-150 };
        vlist[184] = new int[] { 10,-67,-181
                               , 66,-105,-175 };
        vlist[185] = new int[] { -57,-68,-180
                               , -68,-113,-166 };
        vlist[186] = new int[] { -18,-121,-167
                               , 3,-59,-184 };
        vlist[187] = new int[] { -58,-131,-160 };
        vlist[188] = new int[] { -115,-122,-149 };
        vlist[189] = new int[] { -21,-46,-188 };
        vlist[190] = new int[] { -56,-133,-163 };
        vlist[191] = new int[] { -39,-146,-156 };
        vlist[192] = new int[] { -34,-123,-173
                               , 93,-149,-166 };
        vlist[193] = new int[] { -25,-68,-190 };
        vlist[196] = new int[] { 45,-133,-174 };
        vlist[197] = new int[] { -53,-58,-194 };
        vlist[198] = new int[] { -27,-46,-197
                               , -73,-135,-170 };
        vlist[199] = new int[] { -6,-127,-180 };
        vlist[201] = new int[] { -45,-53,-199 };
        vlist[202] = new int[] { -76,-141,-171
                               , -85,-138,-171
                               , 135,-166,-183
                               , 32,-129,-183 };
        vlist[203] = new int[] { -81,-147,-167 };
        vlist[204] = new int[] { 15,-79,-200 };
        vlist[205] = new int[] { -108,-142,-165 };
        vlist[206] = new int[] { -35,-77,-202
                               , -5,-163,-164 };
        vlist[207] = new int[] { 14,-140,-183 };
        vlist[209] = new int[] { -113,-146,-166
                               , -57,-146,-180
                               , 68,-146,-185 };
        vlist[210] = new int[] { -42,-83,-205
                               , 116,-147,-197
                               , 9,-161,-172 };
        vlist[213] = new int[] { -56,-61,-210
                               , 72,-109,-206 };
        vlist[214] = new int[] { -16,-51,-213
                               , -58,-157,-179 };
        vlist[215] = new int[] { 81,-120,-206 };
        vlist[216] = new int[] { 50,-167,-177 };
        vlist[217] = new int[] { -46,-126,-201
                               , 84,-145,-198 };
        vlist[218] = new int[] { -140,-151,-161
                               , -93,-155,-180
                               , 40,-101,-211 };
        vlist[219] = new int[] { -108,-163,-170
                               , -50,-67,-216
                               , -51,-152,-190
                               , -67,-167,-177
                               , 64,-163,-186 };
        vlist[223] = new int[] { 20,-159,-192
                               , 73,-94,-220 };
        vlist[225] = new int[] { -31,-95,-219
                               , 156,-169,-218 };
        vlist[226] = new int[] { 17,-54,-225
                               , 24,-55,-225 };
        vlist[228] = new int[] { -18,-167,-193
                               , 121,-186,-193 };
        vlist[229] = new int[] { -102,-157,-192
                               , -76,-165,-192 };
        vlist[231] = new int[] { -103,-140,-204
                               , -56,-102,-223
                               , -98,-136,-207 };
        vlist[232] = new int[] { -85,-107,-220 };
        vlist[233] = new int[] { 10,-108,-225
                               , 47,-176,-194 };
        vlist[234] = new int[] { -123,-125,-208 };
        vlist[235] = new int[] { -54,-163,-204
                               , -78,-172,-195
                               , -96,-163,-198
                               , 80,-171,-204 };
        vlist[238] = new int[] { -147,-157,-186
                               , 21,-114,-229 };
        vlist[239] = new int[] { -15,-114,-230
                               , -23,-178,-200 };
        vlist[240] = new int[] { 87,-94,-239 };
        vlist[241] = new int[] { -113,-124,-220
                               , 119,-168,-222 };
        vlist[244] = new int[] { -73,-174,-207 };
        vlist[246] = new int[] { -113,-166,-207
                               , 146,-207,-209
                               , 31,-103,-240
                               , 45,-173,-214
                               , 68,-185,-207
                               , 80,-179,-213 };
        vlist[249] = new int[] { -4,-57,-248
                               , 1,-135,-235 };
        vlist[251] = new int[] { -6,-179,-216 };
        vlist[254] = new int[] { -163,-164,-197
                               , 5,-197,-206
                               , 87,-191,-216 };
        vlist[255] = new int[] { 18,-151,-236
                               , 58,-183,-220 };

        // mi = desired matrix, exhausted for all values minDigit <= v < maxDigit
        /*
        int           m11, m12, m13, m14
                    , m21, m22, m23, m24
                    , m31, m32, m33, m34
                    , m41, m42, m43, m44
                    ;
        */
        int q1 = vect0.get(0);
        int q2 = vect0.get(1);
        int q3 = vect0.get(2);
        int q4 = vect0.get(3);
        int q1a = Math.abs(q1);
        int q2a = Math.abs(q2);
        int q3a = Math.abs(q3);
        int q4a = Math.abs(q4);
        int qu1a = q1a;
        int qu2a = qu1a + q2a;
        int qu3a = qu2a + q3a;
        int qu4a = qu3a + q4a;
        int r1 , r2 , r3 , r4 ; // resulting 1st vector of multiplication m*t
        int r1p, r2p, r3p, r4p; // (2nd, 3rd ...) powers thereof
        int r1a, r2a, r3a, r4a; // absolute values
        int ru1a, ru2a, ru3a, ru4a;
        int ru1p, ru2p, ru3p, ru4p;
        int s1 , s2 , s3 , s4 ; // resulting 2nd vector of multiplication m*r
        int s1p, s2p, s3p, s4p; // (2nd, 3rd ...) powers thereof
        int s1a, s2a, s3a, s4a; // absolute values
        int su1a, su2a, su3a, su4a;
        int su1p, su2p, su3p, su4p;
        int t1 , t2 , t3 , t4 ; // resulting 3rd vector of multiplication m*r
        int t1p, t2p, t3p, t4p; // (2nd, 3rd ...) powers thereof
        int t1a, t2a, t3a, t4a; // absolute values
        int tu1a, tu2a, tu3a, tu4a;
        int tu1p, tu2p, tu3p, tu4p;
        int[] vect = null;
        int sum3, mod3;
        for (int m11 = minDigit; m11 < maxDigit; m11 ++) {
        for (int m12 = minDigit; m12 < maxDigit; m12 ++) {
        for (int m13 = minDigit; m13 < maxDigit; m13 ++) {
        for (int m14 = minDigit; m14 < maxDigit; m14 ++) {
        r1 = m11*q1 + m12*q2 + m13*q3 + m14*q4;
        if (q1 < r1 && r1 < MAXLIST && vlist[r1] != null) {
        vect = (int []) vlist[r1];
        r1a  =        Math.abs(r1);
        ru1a =        r1a;
        ru1p =        r1*r1*r1;
        for (int m21 = minDigit; m21 < maxDigit; m21 ++) {
        for (int m22 = minDigit; m22 < maxDigit; m22 ++) {
        for (int m23 = minDigit; m23 < maxDigit; m23 ++) {
        for (int m24 = minDigit; m24 < maxDigit; m24 ++) {
        r2   = m21*q1 + m22*q2 + m23*q3 + m24*q4;
        if (indexOf(vect, r2) >= 0) {
        if (r2 != 0 && r2 != r1) {
        r2a  =        Math.abs(r2);
        ru2a = ru1a + r2a;
        ru2p = ru1p + r2*r2*r2;
        for (int m31 = minDigit; m31 < maxDigit; m31 ++) {
        for (int m32 = minDigit; m32 < maxDigit; m32 ++) {
        for (int m33 = minDigit; m33 < maxDigit; m33 ++) {
        for (int m34 = minDigit; m34 < maxDigit; m34 ++) {
        r3   = m31*q1 + m32*q2 + m33*q3 + m34*q4;
        if (indexOf(vect, r3) >= 0) {
        if (r3 != 0 && r3 != r2 && r3 != r1) {
        r3a  =        Math.abs(r3);
        ru3a = ru2a + r3a;
        ru3p = ru2p + r3*r3*r3;
        if (tmodset[Math.abs(ru3p) % TMOD]) {
        for (int m41 = minDigit; m41 < maxDigit; m41 ++) {
        for (int m42 = minDigit; m42 < maxDigit; m42 ++) {
        for (int m43 = minDigit; m43 < maxDigit; m43 ++) {
        for (int m44 = minDigit; m44 < maxDigit; m44 ++) {
        r4   = m41*q1 + m42*q2 + m43*q3 + m44*q4;
        if (r4 != 0 && r4 != r3 && r4 != r2 && r4 != r1) {
        r4a  =        Math.abs(r4);
        ru4a = ru3a + r4a;
        ru4p = ru3p + r4*r4*r4;
        if (ru4p == 0) { // r preserves once
            s1 = m11*r1 + m12*r2 + m13*r3 + m14*r4;
            if (s1 > 0 && s1 < MAXLIST && vlist[s1] != null ) {
            s1a  =        Math.abs(s1);
            su1a =        s1a;
            su1p =        s1*s1*s1;
            s2 = m21*r1 + m22*r2 + m23*r3 + m24*r4;
            s2a  =        Math.abs(s2);
            if (s2a != s1a) {
            su2a = su1a + s2a;
            su2p = su1p + s2*s2*s2;
            s3 = m31*r1 + m32*r2 + m33*r3 + m34*r4;
            s3a  =        Math.abs(s3);
            if (s3a != s2a && s3a != s1a) {
            su3a = su2a + s3a;
            su3p = su2p + s3*s3*s3;
            // if (tmodset[Math.abs(su3p) % TMOD]) {
            s4 = m41*r1 + m42*r2 + m43*r3 + m44*r4;
            s4a  =        Math.abs(s4);
            if (s4a != s3a && s4a != s2a && s4a != s1a) {
            su4a = su3a + s4a;
            if (ru4a < su4a) {
            su4p = su3p + s4*s4*s4;
            if (su4p == 0) { // s preserves twice
        /*    	
            t1 = m11*s1 + m12*s2 + m13*s3 + m14*s4;
            if (t1 > 0) { //  && t1 < MAXLIST && vlist[t1] != null ) {
            t1a  =        Math.abs(t1);
            tu1a =        t1a;
            tu1p =        t1*t1*t1;
            t2 = m21*s1 + m22*s2 + m23*s3 + m24*s4;
            t2a  =        Math.abs(t2);
            if (t2a != t1a) {
            tu2a = tu1a + t2a;
            tu2p = tu1p + t2*t2*t2;
            t3 = m31*s1 + m32*s2 + m33*s3 + m34*s4;
            t3a  =        Math.abs(t3);
            if (t3a != t2a && t3a != t1a) {
            tu3a = tu2a + t3a;
            tu3p = tu2p + t3*t3*t3;
            // if (tmodset[Math.abs(tu3p) % TMOD]) {
            t4 = m41*s1 + m42*s2 + m43*s3 + m44*s4;
            t4a  =        Math.abs(t4);
            if (t4a != t3a && t4a != t2a && t4a != t1a) {
            tu4a = tu3a + t4a;
            if (su4a < tu4a) {
            tu4p = tu3p + t4*t4*t4;
            if (tu4p == 0) { // t preserves 3 times
		*/
            Matrix amat = new Matrix(alen, new int[]
                    { m11, m12, m13, m14
                    , m21, m22, m23, m24
                    , m31, m32, m33, m34
                    , m41, m42, m43, m44
                    } );
            amat.printPreservedChain(vect0, 1, 4, 0);
        /*
            } // t preserves 3 times
            } // su4a < tu4a
            } // t4a
            // } // if tmodset
            } // t3a
            } // t2a
            } // s1 < t1
		*/

            } // s preserves twice
            } // ru4a < su4a
            } // s4a
            // } // if tmodset
            } // s3a
            } // s2a
            } // r1 < s1
        } // r preserves once
        } // if qu4a < ru4a
        // } // if ! nf4
        } // if tmodset
        } // if ! nf3
        } // if r3 > 0
        } // if ! nf2
        } // if r2 > 0
        } // if r1 > 0
        }}}} // for mi4
        }}}} // for mi3
        }}}} // for mi2
        }}}} // for mi1
    } // ec340

    /** Euler's Conjecture, primitive tuples for exponent 3: <em>a^3 + b^3 + c^3 - d^3 = 0</em>.
     *  Assume that the columns represent powersums.
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
        if (! vect1.isPowerSum(3, 3, 1)) {
            System.err.println(vect1.toString(",") + " not isPowerSum(3,4,0)");
            return;
        }
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
        while (busy && ipow < LIMFACT) {
            if (col14 - powers[ipow] == 0) {
                fact = powers[ipow];
                busy = false;
            }
            ipow ++;
        } // while busy
        if (fact > 0)      { // 1st column is powersum "-"
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
            amat.printPreservedChain(vect1, fact, 3, 1);
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
        if (! vect1.isPowerSum(3, 2, 2)) {
            System.err.println(vect1.toString(",") + " not isPowerSum(3,4,0)");
            return;
        }
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
        while (busy && ipow < LIMFACT) {
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
        if (r1 > t1) {
        for (m24 = minDigit; m24 < maxDigit; m24 ++) {
        int col42 = col41 +  m24*m24*m24;
        r2 = m21*t1 + m22*t2 + m23*t3 + m24*t4;
        if (r2 > t2 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        for (m34 = minDigit; m34 < maxDigit; m34 ++) {
        int col43 = col42 -  m34*m34*m34;
        r3 = m31*t1 + m32*t2 + m33*t3 + m34*t4;
        if (r3 > t3 && r3 != r2 && r3 != r1) {
        for (m44 = minDigit; m44 < maxDigit; m44 ++) {
        int col44 = col43 -  m44*m44*m44;
        if (col44 + fact == 0) { // 4th column is powersum "+"
        r4 = m41*t1 + m42*t2 + m43*t3 + m44*t4;
        if (r4 > t4 && r4 != r3 && r4 != r2 && r4 != r1) {
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
            amat.printPreservedChain(vect1, fact, 2, 2);
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

/*====================================================================================
Following are the 1st 64 tuples in "Wroblewski" order.
They yield a sum of zero if raised to the 3rd power.
6,-3,-5,-4
9,-1,-8,-6
12,1,-10,-9
16,2,-15,-9
19,-3,-18,-10
20,-7,-17,-14
25,-4,-22,-17
27,10,-24,-19
28,-18,-21,-19
29,-11,-27,-15
34,2,-33,-15
34,9,-33,-16
39,17,-36,-26
40,12,-33,-31
41,-2,-40,-17
41,-6,-33,-32
44,-16,-41,-23
46,-27,-37,-30
46,-3,-37,-36
51,12,-43,-38
53,-29,-44,-34
53,8,-50,-29
54,-12,-53,-19
55,17,-54,-24
58,-15,-49,-42
58,9,-57,-22
60,3,-59,-22
67,-22,-54,-51
67,30,-58,-51
69,-36,-61,-38
69,42,-61,-56
70,-7,-57,-54
71,-14,-70,-23
72,-34,-65,-39
75,-38,-66,-43
76,-31,-72,-33
76,17,-73,-38
76,5,-69,-48
80,15,-71,-54
81,-25,-74,-48
82,-19,-69,-60
82,51,-75,-64
84,-28,-75,-53
85,-50,-64,-61
87,-20,-79,-54
87,-26,-78,-55
87,-38,-79,-48
88,-21,-84,-43
88,-25,-86,-31
89,-17,-86,-40
89,2,-86,-41
90,-25,-87,-38
90,-58,-69,-59
93,-32,-85,-54
93,11,-92,-30
94,23,-84,-63
96,-19,-90,-53
96,50,-93,-59
97,-45,-79,-69
97,20,-96,-33
97,47,-90,-66
98,24,-89,-63
98,35,-92,-59
99,29,-92,-60
*/
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
        if (! vect1.isPowerSum(3, 4, 0)) {
            System.err.println(vect1.toString(",") + " not isPowerSum(3,4,0)");
            return;
        }
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
        while (busy && ipow < LIMFACT) {
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
        if (r1 > 0 && r1 > t1) {
        for (m24 = minDigit; m24 < maxDigit; m24 ++) {
        int col42 = col41 +  m24*m24*m24;
        r2 = m21*t1 + m22*t2 + m23*t3 + m24*t4;
        if (true && r2 != r1) {
        for (m34 = minDigit; m34 < maxDigit; m34 ++) {
        int col43 = col42 +  m34*m34*m34;
        r3 = m31*t1 + m32*t2 + m33*t3 + m34*t4;
        if (true && r3 != r2 && r3 != r1) {
        for (m44 = minDigit; m44 < maxDigit; m44 ++) {
        int col44 = col43 +  m44*m44*m44;
        if (col44 - fact == 0) { // 4th column is powersum "-"
        r4 = m41*t1 + m42*t2 + m43*t3 + m44*t4;
        if (true && r4 != r3 && r4 != r2 && r4 != r1) {
        r1p = r1*r1*r1;
        r2p = r2*r2*r2;
        r3p = r3*r3*r3;
        r4p = r4*r4*r4;

        if (r1p + r2p + r3p + r4p == 0) { // preserves once
            // System.out.println(vect1.toString() + " > [" + r1 + "," + r2 + "," + r3 + "," + r4 + "]");
            Matrix amat = new Matrix(alen, new int[]
                    { m11, m12, m13, m14
                    , m21, m22, m23, m24
                    , m31, m32, m33, m34
                    , m41, m42, m43, m44
                    } );
            amat.printPreservedChain(vect1, fact, 4, 0);
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
    /** m331: Cubic quadruples
     *  @param vect0 start vector, or default if null
     */
    public void m331(Vector vect0) {
        int m11, m12, m13, m14
          , m21, m22, m23, m24
          , m31, m32, m33, m34
          , m41, m42, m43, m44; // desired matrix, exhausted for all values minDigit <= v < maxDigit
        Vector vect1 = vect0 != null ? vect0 : new Vector(new int[] { 3, 4, 5, -6 } );
        if (! vect1.isPowerSum(3, 3, 1)) {
            System.err.println(vect1.toString(",") + " not isPowerSum(3,3,1)");
            return;
        }
        int t1 = vect1.get(0);
        int t2 = vect1.get(1);
        int t3 = vect1.get(2);
        int t4 = vect1.get(3);
        int alen = vect1.size();
        int r1,  r2,  r3,  r4;  // resulting vector of multiplication m*t
        int r1p, r2p, r3p, r4p; // (2nd, 3rd) powers thereof

        int s1, s2, s3, s4; // resulting vector of multiplication (m*t)*r
        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        for (m14 = minDigit; m14 < maxDigit; m14 ++) {
        r1 = m11*t1 + m12*t2 + m13*t3 + m14*t4;
        if (r1 > 0) {
        r1p = r1*r1*r1;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        for (m24 = minDigit; m24 < maxDigit; m24 ++) {
        r2 = m21*t1 + m22*t2 + m23*t3 + m24*t4;
        if (r2 > 0 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        r2p = r2*r2*r2;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        int r31 =       m31*t1;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        int r32 = r31 + m32*t2;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        int r33 = r32 + m33*t3;
        for (m34 = minDigit; m34 < maxDigit; m34 ++) {
        r3 =      r33 + m34*t4;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        r3p = r3*r3*r3;
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
        r4p = r4*r4*r4;

            if (r1p + r2p + r3p - r4p == 0) {
            /*
                s1 = m11*r1 + m12*r2 + m13*r3 + m14*r4;
                s2 = m21*r1 + m22*r2 + m23*r3 + m24*r4;
                s3 = m31*r1 + m32*r2 + m33*r3 + m34*r4;
                s4 = m41*r1 + m42*r2 + m43*r3 + m44*r4;
                if (s1 >  0 && s2 >  0 && s3 >  0 && s4 >  0 &&
                    s1 + s2 + s3 + s4 != t1 + t2 + t3 + t4 &&
                    s1 + s2 + s3 + s4 != r1 + r2 + r3 + r4 &&
                    s1*s1*s1 + s2*s2*s2 + s3*s3*s3 == s4*s4*s4 && Vector.gcd(s1, s2) == 1
                    ) {
            */
                    Matrix amat = new Matrix(alen, new int[]
                            { m11, m12, m13, m14
                            , m21, m22, m23, m24
                            , m31, m32, m33, m34
                            , m41, m42, m43, m44
                            } );
                    amat.printPreservedChain(vect1, 0, 3, 1);
            /*
                } // if == s4*s4*s4
            */
            } // if == r4p3

        } // if r4 > 0
        }}}} // for m4i
        } // if r3 > 0
        }}}} // for m3i
        } // if r2 > 0
        }}}} // for m2i
        } // if r1 > 0
        }}}} // for m1i
    } // m331

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
        } else if (oper.equals("ec221" )) {
            exhauster          .ec221(vect0);
        } else if (oper.equals("ec331" )) {
            exhauster          .ec331(vect0);
        } else if (oper.equals("ec322" )) {
        //    exhauster          .ec322(vect0);
        } else if (oper.equals("ec340" )) {
            exhauster          .ec340(vect0);
        } else if (oper.equals("pEC221" )) {
            exhauster          .pEC221(vect0);
        } else if (oper.equals("m331" )) {
            exhauster          .m331  (vect0);
        } else if (oper.equals("pEC331" )) {
            exhauster          .pEC331(vect0);
        } else if (oper.equals("pEC322" )) {
            exhauster          .pEC322(vect0);
        } else if (oper.equals("pEC340" )) {
            exhauster          .pEC340(vect0);
        } else if (oper.equals("pps4" )) {
            exhauster.pps4();
        } else {
            System.err.println("unknown operation \"" + oper + "\"");
        }
        System.err.println("elapsed time: "
                + (System.currentTimeMillis() - startMillis + 500) / 1000 + " s");
    } // main

} // MatrixExhauster
