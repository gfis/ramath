/*  Exhaustive generator for power identities
 *  @(#) $Id: ParameterExhauster.java 808 2011-09-20 16:56:14Z gfis $
 *  2017-05-28: javadoc 1.8
 *  2015-06-15: Polynomial.parse was not static
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
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.util.Dispenser;
import  org.teherba.ramath.util.IntegerExpander;
import  java.lang.Math; // abs(int)
import  java.util.Date;
import  java.util.Iterator;

/** Takes a set of polynomial equations with variables which are
 *  the constants in a formula generating power sums for EEC.
 *  The formula should be valid for all x, y ...
 *  An example is the desired generating identity for Pythagorean triples:
 <pre>
   (a20*x^2 + a02*y^2)^2 + (b11*x*y)^2 - (c20*x^2 + c02*y^2)^2 = 0
 </pre>
 * with the well known solution
 <pre>
   a20 = 1          a02 = -1
            b11 = 2
   c20 = 1          c02 = 1
 </pre>
 *  The proposed identity is reordered in order to get factors of specific powers of x, y, x*y etc.
 *  All these factors must individually be zero such that the overall identity is true.
 *  @author Dr. Georg Fischer
 */
public class ParameterExhauster {
    public final static String CVSID = "@(#) $Id: ParameterExhauster.java 808 2011-09-20 16:56:14Z gfis $";

    /** array for powers of natural numbers */
    private int[] squares;
    /** array for powers of natural numbers */
    private int[] cubes;
    /** lowest digit not used for exhaustion by {@link IntegerExpander} */
    public int maxDigit;

    /** starting time */
    private long startTime;

    //===========================
    // Construction
    //===========================
    /** No-args Constructor
     */
    public ParameterExhauster() {
        this(6);
    } // Constructor()

    /** can compute square roots up to this number */
    private static final int MAXQ = 16;
    /** indicates non-integer (invalid) root **/
    private static final int MINQ = - MAXQ - 1;

    /** Constructor with limit
     *  @param limit minimum digit not yet used for expansion
     */
    public ParameterExhauster(int limit) {
        maxDigit = limit;
        squares = new int[MAXQ * MAXQ * MAXQ + 1]; // should be MAXQ^2+1 only
        cubes   = new int[MAXQ * MAXQ * MAXQ + 1];
        int
        isq = 0;
        while (isq < squares.length) {
            squares[isq] = MINQ; // indicates: isq has no square root
            cubes  [isq] = MINQ; // indicates: isq has no cubic  root
            isq ++;
        } // while 1
        isq = 0;
        while (isq < MAXQ) { // set the square roots
            int isq2 = isq * isq;
            squares[isq2      ] = isq;
            cubes  [isq2 * isq] = isq;
            isq ++;
        } // while 2
        startTime = (new java.util.Date()).getTime();
    } // no-args Constructor

    //===========================
    // Generating Methods
    //===========================

    //==========================================================
    /** x1: Simple linear attempt for Pythagorean triples
 <pre>
   p^2 + q^2 - r^2 = 0
   p = a1*x + a0
   q = b1*x + b0
   r = c1*x + c0

   f2(x^2): a1^2 + b1^2 - c1^2                             = 0
   f1(x^1):                      2*(a1*a0 + b1*b0 - c1*c0) = 0
   f0(x^0): a0^2 + b0^2 - c0^2                             = 0
 </pre>
     */
    public void x1() {
        Dispenser dispenser = new IntegerExpander(4, maxDigit); // for a*, b*
            int[] v;
            int a1;
            int b1;
            int a0;
            int b0;
            int c1;
            int c0;
            int ab10;
            int c10;
        while (dispenser.hasNext()) {
            v = dispenser.next();
            a1 = v[0];
            b1 = v[1];
            a0 = v[2];
            b0 = v[3];
            if (   (0 <= a1 && a1 < b1 || 0 > a1 && a1 > b1)
                && (a0 != b0 || a0 == 0)
                && (a1 != 0  || a0 != 0)
                && (b1 != 0  || b0 != 0)
               ) { // a b restrictions 1
                c1 = squares[a1*a1 + b1*b1];
                if (c1 >= 0) {
                    c0 = squares[a0*a0 + b0*b0];
                    if (c0 >= 0 && (c1 != 0  || c0 != 0)) {
                        ab10 = a1*a0 + b1*b0;
                        c10  = c1*c0;
                        boolean found = false;
                        if (ab10 == - c10) {
                            c0 = - c0;
                            found = true;
                        } else if (ab10 == c10) {
                            found = true;
                        }
                        if (found) {
                            System.out.println
                                ( "(" + a1 + "*x + " + a0 + ")^2 + "
                                + "(" + b1 + "*x + " + b0 + ")^2 - "
                                + "(" + c1 + "*x + " + c0 + ")^2 = 0"
                                );
                        }
                    } // c0
                } // c1
            } // a b restrictions 1
        } // while dispenser
    } // x1

/* Singular generates 99 polynomials:
ring r1=0, (a0,a1,a2,b0,b1,b2,c0,c1,c2), lp;
poly f0 = a0^2 + b0^2 - c0^2 ;
poly f1 =                      2*(a1*a0 + b1*b0 - c1*c0);
poly f2 = a1^2 + b1^2 - c1^2 + 2*(a2*a0 + b2*b0 - c2*c0);
poly f3 =                      2*(a2*a1 + b2*b1 - c2*c1);
poly f4 = a2^2 + b2^2 - c2^2;
ideal I=f0,f1,f2,f3,f4;
ideal G=groebner(I);
G;
*/
    //==========================================================
    /** x2: Quadratic univariate attempt for Pythagorean triples.
     *  Finds 216 solutions below maxDigit=7 in 5 s.
 <pre>
   p^2 + q^2 - r^2 = 0
   p = a2*x^2 + a1*x + a0
   q = b2*x^2 + b1*x + b0
   r = c2*x^2 + c1*x + c0

   f4(x^4): a2^2 + b2^2 - c2^2                             = 0
   f3(x^3):                      2*(a2*a1 + b2*b1 - c2*c1) = 0
   f2(x^2): a1^2 + b1^2 - c1^2 + 2*(a2*a0 + b2*b0 - c2*c0) = 0
   f1(x^1):                      2*(a1*a0 + b1*b0 - c1*c0) = 0
   f0(x^0): a0^2 + b0^2 - c0^2                             = 0
 </pre>
     */
    public void x2() {
        Dispenser dispenser = new IntegerExpander(6, maxDigit); // for a*, b*
            int[] v;
            int a2;
            int b2;
            int a1;
            int b1;
            int a0;
            int b0;
            int c2;
            int c1;
            int c0;
            int f2;
        while (dispenser.hasNext()) {
            v = dispenser.next();
            a2 = v[0];
            b2 = v[1];
            a1 = v[2];
            b1 = v[3];
            a0 = v[4];
            b0 = v[5];
            if (   (0 <= a2 && a2 < b2 || 0 > a2 && a2 > b2)
             // && (a0 != b0 || a0 == 0)
                && (a2 != 0  || a1 != 0  || a0 != 0)
                && (b2 != 0  || b1 != 0  || b0 != 0)
               ) { // a b restrictions 1
                c2 = squares[a2*a2 + b2*b2]; // f4(x^4)
                if (c2 >= 0) {
                    c0 = squares[a0*a0 + b0*b0]; // f0(x^0)
                    if (c0 >= 0) {
                        for (int sc2 = 0; sc2 < 2; sc2 ++) {
                            c2 = - c2;
                            for (int sc0 = 0; sc0 < 2; sc0 ++) {
                                c0 = - c0;
                                f2 = 2*(a2*a0 + b2*b0 - c2*c0) + a1*a1 + b1*b1;
                                if (f2 >= 0) {
                                    c1 = squares[f2]; // f2(x^2)
                                    if (c1 >= 0) {
                                        for (int sc1 = 0; sc1 < 2; sc1 ++) {
                                            c1 = - c1;
                                            if (a2*a1 + b2*b1 == c2*c1 && a1*a0 + b1*b0 == c1*c0) {
                                                String p = ( a2 + "*x^2 + " + a1 + "*x + " + a0 ).replaceAll("\\+ \\-", "-");
                                                String q = ( b2 + "*x^2 + " + b1 + "*x + " + b0 ).replaceAll("\\+ \\-", "-");
                                                String r = ( c2 + "*x^2 + " + c1 + "*x + " + c0 ).replaceAll("\\+ \\-", "-");
                                                p = Polynomial.parse(p).toString().replaceAll(" = 0", "");
                                                q = Polynomial.parse(q).toString().replaceAll(" = 0", "");
                                                r = Polynomial.parse(r).toString().replaceAll(" = 0", "");
                                                System.out.println("norm: "
                                                        + "(" + p + ")^2 + "
                                                        + "(" + q + ")^2 - "
                                                        + "(" + r + ")^2 = 0"
                                                        );
                                            /*
                                                System.out.println("var" + v.length + ": "
                                                        + "(" + a2 + "*x^2 + " + a1 + "*x + " + a0 + ")^2 + "
                                                        + "(" + b2 + "*x^2 + " + b1 + "*x + " + b0 + ")^2 - "
                                                        + "(" + c2 + "*x^2 + " + c1 + "*x + " + c0 + ")^2 = 0"
                                                        );
                                            */
                                                System.out.println("test: "
                                                        + Polynomial.parse
                                                        ( "(" + p + ")^2 + "
                                                        + "(" + q + ")^2 - "
                                                        + "(" + r + ")^2 = 0"
                                                        ).toString()
                                                        );
                                            /*
                                            */
                                            }
                                        } // for sc1
                                    } // c1 >= 0
                                } // f2 >= 0
                            } // for sc0
                        } // for sc2
                    } // c0 >= 0
                } // c2 >= 0
            } // a b restrictions 1
        } // while dispenser
    } // x2
    //==========================================================
    /** xy2: Quadratic bivariate attempt for Pythagorean triples with x^2, xy, y^2 only.
 <pre>
   p^2 + q^2 - r^2 = 0
   p = a20*x^2 + a11*x*y + a02*y^2
   q = b20*x^2 + b11*x*y + b02*y^2
   r = c20*x^2 + c11*x*y + c02*y^2

   f40(x^4,y^0): a20^2 + b20^2 - c20^2                                   = 0
   f31(x^3,y^1):                         2*(a20*a11 + b20*b11 - c20*c11) = 0
   f22(x^2,y^2): a11^2 + b11^2 - c11^2 + 2*(a20*a02 + b20*b02 - c20*c02) = 0
   f13(x^1,y^3):                         2*(a02*a11 + b02*b11 - c02*c11) = 0
   f04(x^0,y^4): a02^2 + b02^2 - c02^2                                   = 0
 </pre>
     */
    public void xy2() {
        Dispenser dispenser = new IntegerExpander(6, maxDigit); // for a*, b*
            int[] v;
            int a20;
            int b20;
            int a11;
            int b11;
            int a02;
            int b02;
            int c20;
            int c11;
            int c02;
            int f22;
        while (dispenser.hasNext()) {
            v = dispenser.next();
            a20 = v[0];
            b20 = v[1];
            a11 = v[2];
            b11 = v[3];
            a02 = v[4];
            b02 = v[5];
            if (   (0 <= a20 && a20 < b20 || 0 > a20 && a20 > b20)
                && (a20 != 0  || a11 != 0  || a02 != 0)
                && (b20 != 0  || b11 != 0  || b02 != 0)
               ) { // a b restrictions 1
                c20 = squares[a20*a20 + b20*b20]; // f40
                if (c20 >= 0) {
                    c02 = squares[a02*a02 + b02*b02]; // f04
                    if (c02 >= 0) {
                        for (int sc20 = 0; sc20 < 2; sc20 ++) {
                            c20 = - c20;
                            for (int sc02 = 0; sc02 < 2; sc02 ++) {
                                c02 = - c02;
                                f22 = 2*(a20*a02 + b20*b02 - c20*c02) + a11*a11 + b11*b11;
                                if (f22 >= 0) {
                                    c11 = squares[f22];
                                    if (c11 >= 0) {
                                        for (int sc11 = 0; sc11 < 2; sc11 ++) {
                                            c11 = - c11;
                                            if (a20*a11 + b20*b11 == c20*c11 && a11*a02 + b11*b02 == c11*c02) {
                                                String p = ( a20 + "*x^2 + " + a11 + "*x*y + " + a02 + "*y^2" ).replaceAll("\\+ \\-", "-");
                                                String q = ( b20 + "*x^2 + " + b11 + "*x*y + " + b02 + "*y^2" ).replaceAll("\\+ \\-", "-");
                                                String r = ( c20 + "*x^2 + " + c11 + "*x*y + " + c02 + "*y^2" ).replaceAll("\\+ \\-", "-");
                                                p = Polynomial.parse(p).toString().replaceAll(" = 0", "");
                                                q = Polynomial.parse(q).toString().replaceAll(" = 0", "");
                                                r = Polynomial.parse(r).toString().replaceAll(" = 0", "");
                                                System.out.println("norm: "
                                                        + "(" + p + ")^2 + "
                                                        + "(" + q + ")^2 - "
                                                        + "(" + r + ")^2 = 0"
                                                        );
                                            /*
                                                System.out.println("var" + v.length + ": "
                                                        + "(" + a2 + "*x^2 + " + a1 + "*x + " + a0 + ")^2 + "
                                                        + "(" + b2 + "*x^2 + " + b1 + "*x + " + b0 + ")^2 - "
                                                        + "(" + c2 + "*x^2 + " + c1 + "*x + " + c0 + ")^2 = 0"
                                                        );
                                            */
                                                System.out.println("test: "
                                                        + Polynomial.parse
                                                        ( "(" + p + ")^2 + "
                                                        + "(" + q + ")^2 - "
                                                        + "(" + r + ")^2 = 0"
                                                        ).toString()
                                                        );
                                            /*
                                            */
                                            }
                                        } // for sc11
                                    } // c11 >= 0
                                } // f22 >= 0
                            } // for sc02
                        } // for sc20
                    } // c02 >= 0
                } // c20 >= 0
            } // a b restrictions 1
        } // while dispenser
    } // xy2
    //==========================================================
    /** x210y210: Quadratic bivariate attempt for Pythagorean triples with
     *  all combinations of x and y up to 2nd power
 <pre>
    p^2 + q^2 - r^2 = 0
    p = a20*x^2 + a11*x*y + a10*x + a02*y^2 + a01*y + a00
    q = b20*x^2 + b11*x*y + b10*x + b02*y^2 + b01*y + b00
    r = c20*x^2 + c11*x*y + c10*x + c02*y^2 + c01*y + c00
    run a nested expansion (6 equations with 12 variables)
                  variate variate result
    f40(x^4,y^0): a20^2 + b20^2 - c20^2                                   = 0
    f04(x^0,y^4): a02^2 + b02^2 - c02^2                                   = 0
    f00(x^0,y^0): a00^2 + b00^2 - c00^2                                   = 0
    f22(x^2,y^2): a11^2 + b11^2 - c11^2 + 2*(a20*a02 + b20*b02 - c20*c02) = 0
    f20(x^2,y^0): a10^2 + b10^2 - c10^2 + 2*(a20*a00 + b20*b00 - c20*c00) = 0
    f02(x^2,y^0): a01^2 + b01^2 - c01^2 + 2*(a02*a00 + b02*b00 - c02*c00) = 0
    then test the following
    f31(x^3,y^1):                         2*(a20*a11 + b20*b11 - c20*c11) = 0
    f13(x^1,y^3):                         2*(a02*a11 + b02*b11 - c02*c11) = 0
    f30(x^3,y^0):                         2*(a20*a10 + b20*b10 - c20*c10) = 0
    f03(x^0,y^3):                         2*(a02*a01 + b02*b01 - c02*c01) = 0
    f10(x^1,y^0):                         2*(a10*a00 + b10*b00 - c10*c00) = 0
    f01(x^0,y^1):                         2*(a00*a01 + b00*b01 - c00*c01) = 0
    f21(x^2,y^1):                         2*(a20*a01 + b20*b01 - c20*c01) + 2*(a10*a11 + b10*b11 - c10*c11) = 0
    f12(x^1,y^2):                         2*(a10*a02 + b10*b02 - c10*c02) + 2*(a11*a01 + b11*b01 - c11*c01) = 0
    f11(x^1,y^1):                         2*(a10*a01 + b10*b01 - c10*c01) + 2*(a00*a11 + b00*b11 - c00*c11) = 0

    furthermore
    for x=y:
    a00^2 + b00^2 - c00^2
    + 2*a00*a01*x + 2*a00*a10*x
    + a01^2*x^2 + a10^2*x^2 + 2*a00*a02*x^2 + 2*a00*a11*x^2 + 2*a00*a20*x^2 + 2*a01*a10*x^2
    + 2*a01*a02*x^3 + 2*a01*a11*x^3 + 2*a01*a20*x^3 + 2*a02*a10*x^3 + 2*a10*a11*x^3 + 2*a10*a20*x^3
    + a02^2*x^4 + a11^2*x^4 + a20^2*x^4 + 2*a02*a11*x^4 + 2*a02*a20*x^4 + 2*a11*a20*x^4
    = 0)
 </pre>
     */
    public void x210y210() {
        int minDigit = - maxDigit + 1;
        // for (int alt20 = 0; alt20 < 2; alt20 ++) {
        for (int run20 =              1; run20 < maxDigit; run20 ++) { // could start at minDigit
        int a20 = 0; int b20 = run20;
        // if (alt20 == 1) { a20 = run20; b20 = 0; }
        int c20 = squares[a20*a20 + b20*b20]; // f40
        if (c20 >= 0) {
        for (int sigc20 = 0; sigc20 < 2; sigc20 ++) { c20 = - c20;

        for (int alt02 = 0; alt02 < 2; alt02 ++) {
        for (int run02 = minDigit; run02 < maxDigit; run02 ++) {
        int a02 = 0; int b02 = run02;
        if (alt02 == 1) { a02 = run02; b02 = 0; }
        int c02 = squares[a02*a02 + b02*b02]; // f04
        if (c02 >= 0) {
        for (int sigc02 = 0; sigc02 < 2; sigc02 ++) { c02 = - c02;

        for (int alt00 = 0; alt00 < 2; alt00 ++) {
        for (int run00 = minDigit; run00 < maxDigit; run00 ++) {
        int a00 = 0; int b00 = run00;
        if (alt00 == 1) { a00 = run00; b00 = 0; }
        int c00 = squares[a00*a00 + b00*b00]; // f00
        if (c00 >= 0) {
        for (int sigc00 = 0; sigc00 < 2; sigc00 ++) { c00 = - c00;

        int f22sum2 = 2*(a20*a02 + b20*b02 - c20*c02);
        for (int a11 = minDigit; a11 < maxDigit; a11 ++) {
        for (int b11 = minDigit; b11 < maxDigit; b11 ++) {
        int f22sum = a11*a11 + b11*b11 + f22sum2;
        if (f22sum >= 0) {
        int c11 = squares[f22sum];
        if (c11 >= 0) {
        for (int sigc11 = 0; sigc11 < 2; sigc11 ++) { c11 = - c11;

        int f20sum2 = 2*(a20*a00 + b20*b00 - c20*c00);
        for (int a10 = minDigit; a10 < maxDigit; a10 ++) {
        for (int b10 = minDigit; b10 < maxDigit; b10 ++) {
        int f20sum = a10*a10 + b10*b10 + f20sum2;
        if (f20sum >= 0) {
        int c10 = squares[f20sum];
        if (c10 >= 0) {
        for (int sigc10 = 0; sigc10 < 2; sigc10 ++) { c10 = - c10;

        int f02sum2 = 2*(a02*a00 + b02*b00 - c02*c00);
        for (int a01 = minDigit; a01 < maxDigit; a01 ++) {
        for (int b01 = minDigit; b01 < maxDigit; b01 ++) {
        int f02sum = f02sum2 + a01*a01 + b01*b01;
        if (f02sum >= 0) {
        int c01 = squares[f02sum];
        if (c01 >= 0) {
        for (int sigc01 = 0; sigc01 < 2; sigc01 ++) { c01 = - c01;
        if (a20 != 0 || a11 != 0 || a10 != 0 || a02 != 0 || a01 != 0 || a00 != 0) {
        if (b20 != 0 || b11 != 0 || b10 != 0 || b02 != 0 || b01 != 0 || b00 != 0) {
        /* f31(x^3,y^1): */ if (  (a20*a11 + b20*b11 - c20*c11)                                     == 0) {
        /* f13(x^1,y^3): */ if (  (a02*a11 + b02*b11 - c02*c11)                                     == 0) {
        /* f30(x^3,y^0): */ if (  (a20*a10 + b20*b10 - c20*c10)                                     == 0) {
        /* f03(x^0,y^3): */ if (  (a02*a01 + b02*b01 - c02*c01)                                     == 0) {
        /* f10(x^1,y^0): */ if (  (a10*a00 + b10*b00 - c10*c00)                                     == 0) {
        /* f01(x^0,y^1): */ if (  (a00*a01 + b00*b01 - c00*c01)                                     == 0) {
        /* f21(x^2,y^1): */ if (  (a20*a01 + b20*b01 - c20*c01) +   (a10*a11 + b10*b11 - c10*c11)   == 0) {
        /* f12(x^1,y^2): */ if (  (a10*a02 + b10*b02 - c10*c02) +   (a11*a01 + b11*b01 - c11*c01)   == 0) {
        /* f11(x^1,y^1): */ if (  (a10*a01 + b10*b01 - c10*c01) +   (a00*a11 + b00*b11 - c00*c11)   == 0) {
            String p = "(" + a20 + ")*x^2 + (" + a11 + ")*x*y + (" + a02 + ")*y^2 + (" + a10 + ")*x   + (" + a01 + ")*y   + (" + a00 + ")";
            String q = "(" + b20 + ")*x^2 + (" + b11 + ")*x*y + (" + b02 + ")*y^2 + (" + b10 + ")*x   + (" + b01 + ")*y   + (" + b00 + ")";
            String r = "(" + c20 + ")*x^2 + (" + c11 + ")*x*y + (" + c02 + ")*y^2 + (" + c10 + ")*x   + (" + c01 + ")*y   + (" + c00 + ")";
            p = Polynomial.parse(p).toString().replaceAll(" = 0", "");
            q = Polynomial.parse(q).toString().replaceAll(" = 0", "");
            r = Polynomial.parse(r).toString().replaceAll(" = 0", "");
            // the following only for even powers (2, 4 ...)
            if (p.startsWith(" -")) { p = Polynomial.parse("-(" + p + ")").toString().replaceAll(" = 0", ""); }
            if (q.startsWith(" -")) { q = Polynomial.parse("-(" + q + ")").toString().replaceAll(" = 0", ""); }
            if (r.startsWith(" -")) { r = Polynomial.parse("-(" + r + ")").toString().replaceAll(" = 0", ""); }
            String norm =
                      "(" + p + ")^2 + "
                    + "(" + q + ")^2 - "
                    + "(" + r + ")^2 = 0"
                    ;
            System.out.println("n" + Integer.toString(norm.length() + 1000).substring(1) + ": " + norm);
            String test = Polynomial.parse
                    ( "(" + p + ")^2 + "
                    + "(" + q + ")^2 - "
                    + "(" + r + ")^2 = 0"
                    ).toString()
                    ;
            if (! test.trim().equals("0 = 0")) {
                System.err.println("test: " + test);
            }
        /*
            System.out.println
                    (    "a " + a20 + " " + a11 + " " + a02 + " " + a10 + " " + a01 + " " + a00
                    + "   b " + b20 + " " + b11 + " " + b02 + " " + b10 + " " + b01 + " " + b00
                    + "   c " + c20 + " " + c11 + " " + c02 + " " + c10 + " " + c01 + " " + c00
                    );
        */
        }}}}}}}}}
        } // if bij != 0
        } // if aij != 0
        } // for sigc01
        } // if c01
        } // if f02sum
        } // for b01
        } // for a01

        } // for sigc10
        } // if c10
        } // if f20sum
        } // for b10
        } // for a10

        } // for sigc11
        } // if c11
        } // if f22sum
        } // for b11
        } // for a11

        } // for sigc00
        } // if c00
        } // for run00
        } // for alt00

        } // for sigc02
        } // if c20
        } // for run02
        } // for alt02

        } // for sigc20
        } // if c20
        } // for run20
        // } // for alt20

    } // x210y210
    //==========================================================
    /** x3: Cubic univariate attempt for cubic quadruples
     *  all combinations of x up to 3rd power
 <pre>
    p^3 + q^3 + r^3 - s^3 = 0
    p = a3*x^3 + a2*x^2 + a1*x + a0
    q = b3*x^3 + b2*x^2 + b1*x + b0
    r = c3*x^3 + c2*x^2 + c1*x + c0
    s = h3*x^3 + h2*x^2 + h1*x + h0
    p^3 = 0
        + 1*a3^3*x^9    + 1*b3^3*x^9    + 1*c3^3*x^9     - 1*h3^3*x^9
        + 3*a2*a3^2*x^8 ...
        + 3*a1*a3^2*x^7 + 3*a2^2*a3*x^7 ...
        + 1*a2^3*x^6    + 3*a0*a3^2*x^6 + 6*a1*a2*a3*x^6 ...
        + 3*a1*a2^2*x^5 + 3*a1^2*a3*x^5 + 6*a0*a2*a3*x^5 ...
        + 3*a0*a2^2*x^4 + 3*a1^2*a2*x^4 + 6*a0*a1*a3*x^4 ...
        + 1*a1^3*x^3    + 3*a0^2*a3*x^3 + 6*a0*a1*a2*x^3 ...
        + 3*a0*a1^2*x^2 + 3*a0^2*a2*x^2 ...
        + 3*a0^2*a1*x   ...
        + 1*a0^3        ...
    f9: var a3,b3,c3 =&gt; h3
    f0: var a0,b0,c0 =&gt; h0
    f8: var a2,b2,c2 =&gt; h2
    f1: var a1,b1,c1 =&gt; h1
 </pre>
     */
    public void x3() {
        int minDigit = - maxDigit + 1;
        /* int a2, b2, c2, h2, sum8, minH2, maxH2, a2p2, b2p2, c2p2; */
        int a3p2, b3p2, c3p2
          , a0p2, b0p2, c0p2
          , a2p2, b2p2, c2p2
          , a1p2, b1p2, c1p2
          ;
        // f9
        for (int a3 =        1; a3 < maxDigit; a3 ++) { /* int */ a3p2 = a3*a3;
        for (int b3 = minDigit; b3 < maxDigit; b3 ++) { /* int */ b3p2 = b3*b3;
        for (int c3 = minDigit; c3 < maxDigit; c3 ++) { /* int */ c3p2 = c3*c3;
        int sum9 = a3p2*a3 + b3p2*b3 + c3p2*c3;
        int h3 = (sum9 >= 0) ? cubes[sum9] : - cubes[- sum9];
        if (h3 != MINQ && h3 != - MINQ) { // valid root
        int h3p2 = h3*h3;
        //  f0
        for (int a0 = minDigit; a0 < maxDigit; a0 ++) { /* int */ a0p2 = a0*a0;
        for (int b0 = minDigit; b0 < maxDigit; b0 ++) { /* int */ b0p2 = b0*b0;
        for (int c0 = minDigit; c0 < maxDigit; c0 ++) { /* int */ c0p2 = c0*c0;
        int sum0 = a0p2*a0 + b0p2*b0 + c0p2*c0;
        int h0 = (sum0 >= 0) ? cubes[sum0] : - cubes[- sum0];
        if (h0 != MINQ && h0 != - MINQ) { // valid root
        int h0p2 = h0*h0;
        // f8
        for (int a2 = minDigit; a2 < maxDigit; a2 ++) { /* int */ a2p2 = a2*a2;
        for (int b2 = minDigit; b2 < maxDigit; b2 ++) { /* int */ b2p2 = b2*b2;
        for (int c2 = minDigit; c2 < maxDigit; c2 ++) { /* int */ c2p2 = c2*c2;
        int sum8 = a2*a3p2 + b2*b3p2 + c2*c3p2; // = h2*h3p2
        int minH2 = minDigit; int maxH2 = maxDigit;
        /* if (h3p2 != 0) { minH2 = sum8 / h3p2; maxH2 = minH2 + (minH2 * h3p2 == sum8 ? 1 : 0); } */
        for (int h2 = minH2   ; h2 < maxH2   ; h2 ++) {
        if (sum8 == h2*h3p2) { int h2p2 = h2*h2;
        // f1
        for (int a1 = minDigit; a1 < maxDigit; a1 ++) { /* int */ a1p2 = a1*a1;
        for (int b1 = minDigit; b1 < maxDigit; b1 ++) { /* int */ b1p2 = b1*b1;
        for (int c1 = minDigit; c1 < maxDigit; c1 ++) { /* int */ c1p2 = c1*c1;
        for (int h1 = minDigit; h1 < maxDigit; h1 ++) {
        if (a0p2*a1 + b0p2*b1 + c0p2*c1 == h0p2*h1) { int h1p2 = h1*h1;

        // Fermat's Last Theorem: not only two cubes
        if (a3 != 0 || a2 != 0 || a1 != 0 || a0 != 0) {
        if (b3 != 0 || b2 != 0 || b1 != 0 || b0 != 0) {
        if (c3 != 0 || c2 != 0 || c1 != 0 || c0 != 0) {
        // s != any of p, q, r
        if (  (h3 != a3 || h2 != a2 || h1 != a1 || h0 != a0)
           && (h3 != b3 || h2 != b2 || h1 != b1 || h0 != b0)
           && (h3 != c3 || h2 != c2 || h1 != c1 || h0 != c0)
            ) {

        /* f7: */ if (  (a1*a3p2 + b1*b3p2 + c1*c3p2 - h1*h3p2) +   (a2p2*a3 + b2p2*b3 + c2p2*c3 - h2p2*h3)                                                 == 0) {
        /* f2: */ if (  (a0*a1p2 + b0*b1p2 + c0*c1p2 - h0*h1p2) +   (a0p2*a2 + b0p2*b2 + c0p2*c2 - h0p2*h2)                                                 == 0) {
        /* f6: */ if (  (a2*a2p2 + b2*b2p2 + c2*c2p2 - h2*h2p2) + 3*(a3p2*a0 + b3p2*b0 + c3p2*c0 - h3p2*h0) + 6*(a1*a2*a3 + b1*b2*b3 + c1*c2*c3 - h1*h2*h3) == 0) {
        /* f3: */ if (  (a1*a1p2 + b1*b1p2 + c1*c1p2 - h1*h1p2) + 3*(a0p2*a3 + b0p2*b3 + c0p2*c3 - h0p2*h3) + 6*(a0*a1*a2 + b0*b1*b2 + c0*c1*c2 - h0*h1*h2) == 0) {
        /* f5: */ if (  (a1*a2p2 + b1*b2p2 + c1*c2p2 - h1*h2p2) +   (a1p2*a3 + b1p2*b3 + c1p2*c3 - h1p2*h3) + 2*(a0*a2*a3 + b0*b2*b3 + c0*c2*c3 - h0*h2*h3) == 0) {
        /* f4: */ if (  (a0*a2p2 + b0*b2p2 + c0*c2p2 - h0*h2p2) +   (a1p2*a2 + b1p2*b2 + c1p2*c2 - h1p2*h2) + 2*(a0*a1*a3 + b0*b1*b3 + c0*c1*c3 - h0*h1*h3) == 0) {
        /*
        */

            boolean inverse = (h0 < 0) || (h0 == 0 && h1 < 0) || (h0 == 0 && h1 == 0 && h2 < 0) || (h0 == 0 && h1 == 0 && h2 == 0 && h3 < 0) ;
            String tups = " " + String.valueOf(inverse ? - h3 : h3) + " " + String.valueOf(inverse ? - h2 : h2) + " " + String.valueOf(inverse ? - h1 : h1) + " " + String.valueOf(inverse ? - h0 : h0);
            String tupp = " " + String.valueOf(inverse ? - a3 : a3) + " " + String.valueOf(inverse ? - a2 : a2) + " " + String.valueOf(inverse ? - a1 : a1) + " " + String.valueOf(inverse ? - a0 : a0);
            String tupq = " " + String.valueOf(inverse ? - b3 : b3) + " " + String.valueOf(inverse ? - b2 : b2) + " " + String.valueOf(inverse ? - b1 : b1) + " " + String.valueOf(inverse ? - b0 : b0);
            String tupr = " " + String.valueOf(inverse ? - c3 : c3) + " " + String.valueOf(inverse ? - c2 : c2) + " " + String.valueOf(inverse ? - c1 : c1) + " " + String.valueOf(inverse ? - c0 : c0);

            String p = "((" + a3  + ")*x^3 + (" + a2  + ")*x^2 + (" + a1  + ")*x   + (" + a0  + "))" + (inverse ? "*(-1)" : "");
            String q = "((" + b3  + ")*x^3 + (" + b2  + ")*x^2 + (" + b1  + ")*x   + (" + b0  + "))" + (inverse ? "*(-1)" : "");
            String r = "((" + c3  + ")*x^3 + (" + c2  + ")*x^2 + (" + c1  + ")*x   + (" + c0  + "))" + (inverse ? "*(-1)" : "");
            String s = "((" + h3  + ")*x^3 + (" + h2  + ")*x^2 + (" + h1  + ")*x   + (" + h0  + "))" + (inverse ? "*(-1)" : "");
            p = Polynomial.parse(p).toString().replaceAll(" = 0", "");
            q = Polynomial.parse(q).toString().replaceAll(" = 0", "");
            r = Polynomial.parse(r).toString().replaceAll(" = 0", "");
            s = Polynomial.parse(s).toString().replaceAll(" = 0", "");
            String temp;
            if (q.compareTo(r) > 0) { temp = r; r = q; q = temp;   temp = tupr; tupr = tupq; tupq = temp; }
            if (p.compareTo(q) > 0) { temp = q; q = p; p = temp;   temp = tupq; tupq = tupp; tupp = temp; }
            if (q.compareTo(r) > 0) { temp = r; r = q; q = temp;   temp = tupr; tupr = tupq; tupq = temp; }
            System.out.println("gen -v 1 -e 3  " + tups + "  " + tupp + "  " + tupq + "  " + tupr);
            String norm =
                      "(" + p + ")^3 + "
                    + "(" + q + ")^3 + "
                    + "(" + r + ")^3 - "
                    + "(" + s + ")^3 = 0"
                    ;
            System.out.println("n" + Integer.toString(norm.length() + 1000).substring(1) + ": " + norm);
            String test = Polynomial.parse
                    ( "(" + p + ")^3 + "
                    + "(" + q + ")^3 + "
                    + "(" + r + ")^3 - "
                    + "(" + s + ")^3 = 0"
                    ).toString()
                    ;
            if (! test.trim().equals("0 = 0")) {
                System.err.println("failed " + test);
            }
        } /* f4    else { System.out.print("/f4 "); } */
        } /* f5    else { System.out.print("/f5 "); } */
        } /* f3    else { System.out.print("/f3 "); } */
        } /* f6    else { System.out.print("/f6 "); } */
        } /* f2    else { System.out.print("/f2 "); } */
        } /* f7    else { System.out.print("/f7 "); } */
        } // hi != any ai, bi, ci
        } // if cij != 0
        } // if bij != 0
        } // if aij != 0

        } // h1 valid
        } // for h1
        }}} // for c1,b1,a1
        } // h2 valid
        } // for h2
        }}} // for c2,b2,a2
        } // h0 valid
        }}} // for c0,b0,a0
        } // h3 valid
        }}} // for c3,b3,a3
    } // x3
    //==========================================================
    //==========================================================
    /** x4: Biquadrate univariate attempt for 5 4th power tuples
     *  all combinations of x up to 3rd power
 <pre>
    p^4 + q^4 + r^4 + s^4 - t^4 = 0
    p = a4*x^4 + a3*x^3 + a2*x^2 + a1*x + a0
    q = b4*x^4 + b3*x^3 + b2*x^2 + b1*x + b0
    r = c4*x^4 + c3*x^3 + c2*x^2 + c1*x + c0
    s = d4*x^4 + d3*x^3 + d2*x^2 + d1*x + d0
    t = h4*x^4 + h3*x^3 + h2*x^2 + h1*x + h0
    p^4 = 0
        + a4^4*x^16
        + 4*a3*a4^3*x^15
        + 6*a3^2*a4^2*x^14
        + 4*a2*a4^3*x^14
        + 4*a1*a4^3*x^13
        + 4*a3^3*a4*x^13
        + 12*a2*a3*a4^2*x^13
        + 6*a2^2*a4^2*x^12
        + 12*a1*a3*a4^2*x^12
        + 12*a2*a3^2*a4*x^12
        + a3^4*x^12
        + 4*a0*a4^3*x^12
        + 4*a2*a3^3*x^11
        + 12*a0*a3*a4^2*x^11
        + 12*a1*a2*a4^2*x^11
        + 12*a1*a3^2*a4*x^11
        + 12*a2^2*a3*a4*x^11
        + 4*a1*a3^3*x^10
        + 4*a2^3*a4*x^10
        + 6*a1^2*a4^2*x^10
        + 6*a2^2*a3^2*x^10
        + 12*a0*a2*a4^2*x^10
        + 12*a0*a3^2*a4*x^10
        + 24*a1*a2*a3*a4*x^10
        + 24*a0*a2*a3*a4*x^9
        + 12*a0*a1*a4^2*x^9
        + 12*a1*a2*a3^2*x^9
        + 12*a1*a2^2*a4*x^9
        + 12*a1^2*a3*a4*x^9
        + 4*a2^3*a3*x^9
        + 4*a0*a3^3*x^9
        + a2^4*x^8
        + 12*a0*a2*a3^2*x^8
        + 12*a0*a2^2*a4*x^8
        + 12*a1*a2^2*a3*x^8
        + 12*a1^2*a2*a4*x^8
        + 24*a0*a1*a3*a4*x^8
        + 6*a0^2*a4^2*x^8
        + 6*a1^2*a3^2*x^8
        + 12*a0*a1*a3^2*x^7
        + 12*a0*a2^2*a3*x^7
        + 12*a1^2*a2*a3*x^7
        + 12*a0^2*a3*a4*x^7
        + 24*a0*a1*a2*a4*x^7
        + 4*a1*a2^3*x^7
        + 4*a1^3*a4*x^7
        + 24*a0*a1*a2*a3*x^6
        + 12*a0*a1^2*a4*x^6
        + 12*a0^2*a2*a4*x^6
        + 4*a0*a2^3*x^6
        + 4*a1^3*a3*x^6
        + 6*a0^2*a3^2*x^6
        + 6*a1^2*a2^2*x^6
        + 4*a1^3*a2*x^5
        + 12*a0*a1*a2^2*x^5
        + 12*a0*a1^2*a3*x^5
        + 12*a0^2*a1*a4*x^5
        + 12*a0^2*a2*a3*x^5
        + a1^4*x^4
        + 4*a0^3*a4*x^4
        + 6*a0^2*a2^2*x^4
        + 12*a0*a1^2*a2*x^4
        + 12*a0^2*a1*a3*x^4
        + 12*a0^2*a1*a2*x^3
        + 4*a0*a1^3*x^3
        + 4*a0^3*a3*x^3
        + 6*a0^2*a1^2*x^2
        + 4*a0^3*a2*x^2
        + 4*a0^3*a1*x
        + a0^4
        = 0)

    f9: var a3,b3,c3 =&gt; h3
    f0: var a0,b0,c0 =&gt; h0
    f8: var a2,b2,c2 =&gt; h2
    f1: var a1,b1,c1 =&gt; h1
 </pre>
     */
    public void x4() {
        int minDigit = - maxDigit + 1;
        /* int a2, b2, c2, h2, sum8, minH2, maxH2, a2p2, b2p2, c2p2; */
        int a3p2, b3p2, c3p2
          , a0p2, b0p2, c0p2
          , a2p2, b2p2, c2p2
          , a1p2, b1p2, c1p2
          ;
        // f9
        for (int a3 =        1; a3 < maxDigit; a3 ++) { /* int */ a3p2 = a3*a3;
        for (int b3 = minDigit; b3 < maxDigit; b3 ++) { /* int */ b3p2 = b3*b3;
        for (int c3 = minDigit; c3 < maxDigit; c3 ++) { /* int */ c3p2 = c3*c3;
        int sum9 = a3p2*a3 + b3p2*b3 + c3p2*c3;
        int h3 = (sum9 >= 0) ? cubes[sum9] : - cubes[- sum9];
        if (h3 != MINQ && h3 != - MINQ) { // valid root
        int h3p2 = h3*h3;
        //  f0
        for (int a0 = minDigit; a0 < maxDigit; a0 ++) { /* int */ a0p2 = a0*a0;
        for (int b0 = minDigit; b0 < maxDigit; b0 ++) { /* int */ b0p2 = b0*b0;
        for (int c0 = minDigit; c0 < maxDigit; c0 ++) { /* int */ c0p2 = c0*c0;
        int sum0 = a0p2*a0 + b0p2*b0 + c0p2*c0;
        int h0 = (sum0 >= 0) ? cubes[sum0] : - cubes[- sum0];
        if (h0 != MINQ && h0 != - MINQ) { // valid root
        int h0p2 = h0*h0;
        // f8
        for (int a2 = minDigit; a2 < maxDigit; a2 ++) { /* int */ a2p2 = a2*a2;
        for (int b2 = minDigit; b2 < maxDigit; b2 ++) { /* int */ b2p2 = b2*b2;
        for (int c2 = minDigit; c2 < maxDigit; c2 ++) { /* int */ c2p2 = c2*c2;
        int sum8 = a2*a3p2 + b2*b3p2 + c2*c3p2; // = h2*h3p2
        int minH2 = minDigit; int maxH2 = maxDigit;
        /* if (h3p2 != 0) { minH2 = sum8 / h3p2; maxH2 = minH2 + (minH2 * h3p2 == sum8 ? 1 : 0); } */
        for (int h2 = minH2   ; h2 < maxH2   ; h2 ++) {
        if (sum8 == h2*h3p2) { int h2p2 = h2*h2;
        // f1
        for (int a1 = minDigit; a1 < maxDigit; a1 ++) { /* int */ a1p2 = a1*a1;
        for (int b1 = minDigit; b1 < maxDigit; b1 ++) { /* int */ b1p2 = b1*b1;
        for (int c1 = minDigit; c1 < maxDigit; c1 ++) { /* int */ c1p2 = c1*c1;
        for (int h1 = minDigit; h1 < maxDigit; h1 ++) {
        if (a0p2*a1 + b0p2*b1 + c0p2*c1 == h0p2*h1) { int h1p2 = h1*h1;

        // Fermat's Last Theorem: not only two cubes
        if (a3 != 0 || a2 != 0 || a1 != 0 || a0 != 0) {
        if (b3 != 0 || b2 != 0 || b1 != 0 || b0 != 0) {
        if (c3 != 0 || c2 != 0 || c1 != 0 || c0 != 0) {
        // s != any of p, q, r
        if (  (h3 != a3 || h2 != a2 || h1 != a1 || h0 != a0)
           && (h3 != b3 || h2 != b2 || h1 != b1 || h0 != b0)
           && (h3 != c3 || h2 != c2 || h1 != c1 || h0 != c0)
            ) {

        /* f7: */ if (  (a1*a3p2 + b1*b3p2 + c1*c3p2 - h1*h3p2) +   (a2p2*a3 + b2p2*b3 + c2p2*c3 - h2p2*h3)                                                 == 0) {
        /* f2: */ if (  (a0*a1p2 + b0*b1p2 + c0*c1p2 - h0*h1p2) +   (a0p2*a2 + b0p2*b2 + c0p2*c2 - h0p2*h2)                                                 == 0) {
        /* f6: */ if (  (a2*a2p2 + b2*b2p2 + c2*c2p2 - h2*h2p2) + 3*(a3p2*a0 + b3p2*b0 + c3p2*c0 - h3p2*h0) + 6*(a1*a2*a3 + b1*b2*b3 + c1*c2*c3 - h1*h2*h3) == 0) {
        /* f3: */ if (  (a1*a1p2 + b1*b1p2 + c1*c1p2 - h1*h1p2) + 3*(a0p2*a3 + b0p2*b3 + c0p2*c3 - h0p2*h3) + 6*(a0*a1*a2 + b0*b1*b2 + c0*c1*c2 - h0*h1*h2) == 0) {
        /* f5: */ if (  (a1*a2p2 + b1*b2p2 + c1*c2p2 - h1*h2p2) +   (a1p2*a3 + b1p2*b3 + c1p2*c3 - h1p2*h3) + 2*(a0*a2*a3 + b0*b2*b3 + c0*c2*c3 - h0*h2*h3) == 0) {
        /* f4: */ if (  (a0*a2p2 + b0*b2p2 + c0*c2p2 - h0*h2p2) +   (a1p2*a2 + b1p2*b2 + c1p2*c2 - h1p2*h2) + 2*(a0*a1*a3 + b0*b1*b3 + c0*c1*c3 - h0*h1*h3) == 0) {
        /*
            System.out.println
                    (    "a " + a0 + " " + a1 + " " + a2 + " " + a3
                    + "   b " + b0 + " " + b1 + " " + b2 + " " + b3
                    + "   c " + c0 + " " + c1 + " " + c2 + " " + c3
                    + "   h " + h0 + " " + h1 + " " + h2 + " " + h3
                    );
        */
            boolean inverse = (h0 < 0) || (h0 == 0 && h1 < 0) || (h0 == 0 && h1 == 0 && h2 < 0) || (h0 == 0 && h1 == 0 && h2 == 0 && h3 < 0) ;
            String p = "((" + a3  + ")*x^3 + (" + a2  + ")*x^2 + (" + a1  + ")*x   + (" + a0  + "))" + (inverse ? "*(-1)" : "");
            String q = "((" + b3  + ")*x^3 + (" + b2  + ")*x^2 + (" + b1  + ")*x   + (" + b0  + "))" + (inverse ? "*(-1)" : "");
            String r = "((" + c3  + ")*x^3 + (" + c2  + ")*x^2 + (" + c1  + ")*x   + (" + c0  + "))" + (inverse ? "*(-1)" : "");
            String s = "((" + h3  + ")*x^3 + (" + h2  + ")*x^2 + (" + h1  + ")*x   + (" + h0  + "))" + (inverse ? "*(-1)" : "");
            s = Polynomial.parse(s).toString().replaceAll(" = 0", "");
            p = Polynomial.parse(p).toString().replaceAll(" = 0", "");
            q = Polynomial.parse(q).toString().replaceAll(" = 0", "");
            r = Polynomial.parse(r).toString().replaceAll(" = 0", "");
            String temp;
            if (q.compareTo(r) > 0) { temp = r; r = q; q = temp; }
            if (p.compareTo(q) > 0) { temp = q; q = p; p = temp; }
            if (q.compareTo(r) > 0) { temp = r; r = q; q = temp; }
            String norm =
                      "(" + s + ")^3 - "
                    + "(" + p + ")^3 - "
                    + "(" + q + ")^3 - "
                    + "(" + r + ")^3 = 0"
                    ;
            System.out.println("n" + Integer.toString(norm.length() + 1000).substring(1) + ": " + norm);
            String test = Polynomial.parse
                    ( "(" + p + ")^3 + "
                    + "(" + q + ")^3 + "
                    + "(" + r + ")^3 - "
                    + "(" + s + ")^3 = 0"
                    ).toString()
                    ;
            if (! test.trim().equals("0 = 0")) {
                System.err.println("test: " + test);
            }
        } /* f4    else { System.out.print("/f4 "); } */
        } /* f5    else { System.out.print("/f5 "); } */
        } /* f3    else { System.out.print("/f3 "); } */
        } /* f6    else { System.out.print("/f6 "); } */
        } /* f2    else { System.out.print("/f2 "); } */
        } /* f7    else { System.out.print("/f7 "); } */
        } // hi != any ai, bi, ci
        } // if cij != 0
        } // if bij != 0
        } // if aij != 0

        } // h1 valid
        } // for h1
        }}} // for c1,b1,a1
        } // h2 valid
        } // for h2
        }}} // for c2,b2,a2
        } // h0 valid
        }}} // for c0,b0,a0
        } // h3 valid
        }}} // for c3,b3,a3
    } // x4

    //==========================
    // Main
    //==========================
    /** Test method.
     *  @param args command line arguments:
     *  <ul>
     *  <li>operation: x1, ...</li>
     *  <li>-l maxDigit</li>
     *  </ul>
     */
    public static void main(String[] args) {
        String oper = "x1"; // simple linear attempt for Pythagorean triples
        String op = "";
        int limit = 6;
        int iarg  = 0;
        while (iarg < args.length) { // get the arguments
            if (args[iarg].startsWith("-")) {
                op = args[iarg ++].substring(1).toLowerCase();
                if (false) {
                } else if (op.equals("l")) {
                    try {
                        limit = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else {
                    System.err.println("unknown option \"-" + op + "\"");
                }
            } else {
                oper = args[iarg ++];
            }
        } // while args
        ParameterExhauster exhauster = new ParameterExhauster(limit);

        if (false) {
        } else if (oper.equals("x1"         )) {
            exhauster.x1            ();
        } else if (oper.equals("x2"         )) {
            exhauster.x2            ();
        } else if (oper.equals("xy2"        )) {
            exhauster.xy2           ();
        } else if (oper.equals("x210y210"   )) {
            exhauster.x210y210      ();
        } else if (oper.equals("x3"         )) {
            exhauster.x3            ();
        } else {
            System.err.println("unknown operation \"" + oper + "\"");
        }
    } // main

} // ParameterExhauster
