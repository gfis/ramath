/*  Test Euler's Extended Conjecture by brute force;
 *  compute tuples of the form a^3 + b^3 + c^3 = d^3
 *  @(#) $Id: EulersExtendedConjecture.java 182 2009-07-02 04:29:14Z gfis $
 *  2017-05-28: javadoc 1.8
 *  2015-09-27: Choudhry
 *  2014-04-08: use BigInteger.valueOf(long)
 *  2013-08-08: methods renamed and parameters aligned, Vector.gcd
 *  2008-10-07, Georg Fischer
 *
 *  call it with
 *  2 1 2
 *  3 1 3
 *  4 1 4
 *  5 1 5 (no results up to 192)
 */
/*
 * Copyright 2008 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.linear.Vector;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.Date;

/** Test Euler's Extended Conjecture by brute force;
 *  compute tuples of the form a^3 + b^3 + c^3 = d^3, for example
 *  @author Dr. Georg Fischer
 */
public class EulersExtendedConjecture {
    public final static String CVSID = "@(#) $Id: EulersExtendedConjecture.java 182 2009-07-02 04:29:14Z gfis $";

    /** exponent */
    private int k;
    /** maximum for loops */
    private int maxA;
    /** Result list of vectors */
    private ArrayList<Vector> list;
    /** Whether to print Vectors while they are found */
    public boolean show;

    /** array for powers of natural numbers */
    private BigInteger[] a;

    /** some low constants */
    private BigInteger TWO;
    private BigInteger THREE;
    private BigInteger FOUR;
    private BigInteger FIVE;
    private BigInteger SIX;
    private BigInteger SEVEN;
    private BigInteger EIGHT;

    /** starting time */
    private long startTime;

    /** No-args Constructor
     */
    public EulersExtendedConjecture() {
        this(3, 256);
    } // no-args Constructor

    /** Constructor with maximum array size
     *  @param k exponent for power tuples
     *  @param maxA maximum value of kth base number
     */
    public EulersExtendedConjecture(int k, int maxA) {
        show = false;
        this.k  = k;
        this.maxA = maxA;
        this.list = new ArrayList<Vector>(256);
        a       = new BigInteger[maxA];
        TWO     = new BigInteger("2");
        THREE   = new BigInteger("3");
        FOUR    = new BigInteger("4");
        FIVE    = new BigInteger("5");
        SIX     = new BigInteger("6");
        SEVEN   = new BigInteger("7");
        EIGHT   = new BigInteger("8");
        for (int i = 0; i < 32; i ++) {
            set(i, k);
        } // for i
        startTime = (new java.util.Date()).getTime();
    } // Constructor with maximum array size

    /** Get the elapsed time in milliseconds
     *  @return elapsed time in ms
     */
    public long getElapsedTime() {
        return (new java.util.Date()).getTime() - startTime;
    } // elapsedTime

    /** Sets an array element to the kth power of it's index
     *  @param i index of the element to be set
     *  @param k exponent for power tuples
     */
    public void set(int i, int k)  {
        a[i] = BigInteger.valueOf(i).pow(k);
    } // set

    /** Computes some power of an integer
     *  @param exp exponent
     *  @param base number to be raised to the 'exp'th power
     *  @return base**exp
     */
    public int pow(int base, int exp) {
        int result = 1;
        while (exp > 0) {
            result *= base;
            exp --;
        } // while exp
        return result;
    } // pow

    /** Print the tuple if it does not have a GCD &gt; 1
     *  @param k exponent
     *  @param m number of summands on the left side
     *  @param n number of summands on the right side
     *  @param tuple array of bases for summands
     */
    public void evaluateTuple(int k, int m, int n, int[] tuple) {
        int itup = 1;
        Vector vect1 = new Vector(tuple);
        int factor = vect1.extractGcd();
        if (! vect1.isPowerSum(k, m, n)) {
            System.out.println(vect1.toString("(,)") + " no power sum");
        } else if (show) {
            System.out.println(vect1.toString("(,)"));
        } else {
            list.add(vect1);
        }
    } // evaluateTuple

    /** Evaluate (1,2) tuples up to some maximum index of the kth base number
     *  @return array of Vectors
     */
    public ArrayList<Vector> run_2_2_1() {
        int        i1, i2, i3;
        BigInteger a3;
        BigInteger sum;
        BigInteger a3_2;
        i3 = 3;
        while (i3 < maxA) {
            set(i3, k);
            a3 = a[i3];
            i2 = i3 - 1;
            a3_2 = a[i3].divide(TWO);
            while (i2 > 0 && a[i2].compareTo(a3_2) >= 0) {
                i1 = i2 - 1;
                sum = a[i2];
                while (i1 > 0 && sum.add(a[i1]).compareTo(a3) > 0) {
                    i1 --;
                } // while i1;
                if (sum.add(a[i1]).compareTo(a3) == 0) {
                    evaluateTuple(2, 2, 1, new int[]{ i1, i2, i3 });
                }
                i2 --;
            } // while i2
            i3 ++;
         } // while i3
         return list;
    } // run_2_2_1

/*
    a  b  c
^2: 3, 4, 5         d8  d4
^2: 5, 12, 13       d12 d4
^2: 7, 24, 25       d16 d4
^2: 9, 40, 41       d20 d4
^2: 11, 60, 61      d24 d4
^2: 13, 84, 85
^2: 15, 112, 113
^2: 17, 144, 145
^2: 19, 180, 181
^2: 21, 220, 221
b = (a + 1) * (a - 1) / 2 = (a^2 - 1) / 2
c = b + 1
a^2 + b^2 = c^2
a^2 +
*/
    /** Evaluate (3,1) cubic tuples
     *  @return array of Vectors
     */
    public ArrayList<Vector> run_3_3_1() {
        int        i1, i2, i3, i4;
        BigInteger a4;
        BigInteger sum;
        i4 = 4;
        while (i4 < maxA) {
            set(i4, k);
            a4 = a[i4];
            i3 = i4 - 1;
            while (i3 > 0) {
                i2 = i3 - 1;
                while (i2 > 0) {
                    i1 = i2 - 1;
                    sum = a[i2].add(a[i3]);
                    while (i1 > 0 && sum.add(a[i1]).compareTo(a4) > 0) {
                        i1 --;
                    } // while i1;
                    if (i1 > 0 && sum.add(a[i1]).compareTo(a4) == 0) {
                        evaluateTuple(3, 3, 1, new int[]{ i1, i2, i3, i4 });
                    }
                    i2 --;
                } // while i2
                i3 --;
            } // while i3
            i4 ++;
        } // while i4
        return list;
    } // run_3_3_1

    /** Evaluate (2,2) cubic tuples
     *  (not yet called)
     *  @return array of Vectors
     */
    public ArrayList<Vector> run_3_2_2() {
        BigInteger a1, a2, a3, a4, sum, a4_3, a3_2;
        int  i1, i2, i3, i4;
        i4 = 4;
        while (i4 < maxA) {
            set(i4, k);
            a4 = a[i4]; // increasing
            i3 = i4 - 1;
            a4_3 = a4.divide(THREE);
            while (i3 > 0 && a[i3].compareTo(a4_3) >= 0) {
                a3 = a[i3];
                i2 = i3 - 1;
                a3_2 = a3.divide(TWO);
                while (i2 > 0 && a[i2].compareTo(a3_2) >= 0) {
                    a2 = a[i2];
                    i1 = i2 - 1;
                    sum = a[i1].add(a2).subtract(a3);
                    while (i1 > 0 && sum.compareTo(a4) > 0) {
                        i1 --;
                        sum = a[i1].add(a2).subtract(a3);
                    } // while i1;
                    if (sum.compareTo(a4) == 0) {
                        evaluateTuple(3, 2, 2, new int[]{ i1, i2, i3, i4 });
                    }
                    i2 --;
                } // while i2
                i3 --;
            } // while i3
            i4 ++;
        } // while i4
        return list;
    } // run_3_2_2

    /** Evaluate (4,1) biquadratic tuples
     *  @return array of Vectors
     */
/*
# elapsed 3044 ms
30^4 + 120^4 + 272^4 + 315^4 = 353^4
# elapsed 40488 ms
240^4 + 340^4 + 430^4 + 599^4 = 651^4
# elapsed 58658 ms
60^4 + 240^4 + 544^4 + 630^4 = 706^4
*/
    public ArrayList<Vector> run_4_4_1() {
        int        i1, i2, i3, i4, i5;
        int cmp; // result of 'compareTo()'
        BigInteger a5, diff;
        int p = 5; // some prime (or power thereof) which minimizes the number of different values of a[i] mod p
        int odd; // sum of (ij % p == 0 ? 0 : 1), j=1..4
        BigInteger s4, s43, s432, s4321;
        i5 = 5;
        while (i5 < maxA) {
            set(i5, k);
            if (i5 % p != 0) {
            odd = 0;
            a5 = a[i5];
            i4 = i5 - 1;
            while (i4 >= 0 && a[i4].multiply(FOUR).compareTo(a5) >= 0) {
                if (odd > 0 && i4 % p != 0) {
                } else {
                if (i4 % p != 0) {
                    odd |= 0x8;
                }
                i3 = i4;
                s4 = a[i4];
                while (i3 >= 0 && a[i3].multiply(THREE).add(s4).compareTo(a5) >= 0) {
                    if (odd > 0 && i3 % p != 0) {
                    } else {
                    if (i3 % p != 0) {
                        odd |= 0x4;
                    }
                    s43 = s4.add(a[i3]);
                    if (s43.compareTo(a5) <= 0) {
                        i2 = i3;
                        while (i2 >= 0 && a[i2].add(a[i2]).add(s43).compareTo(a5) >= 0) {
                            if (odd > 0 && i2 % p != 0) {
                            } else {
                            if (i2 % p != 0) {
                                odd |= 0x2;
                            }
                            s432 = s43.add(a[i2]);
                            if (s432.compareTo(a5) <= 0) {
                                i1 = i2;
                                cmp = s432.add(a[i1]).compareTo(a5);
                                while (i1 >= 1 && cmp > 0) {
                                    i1 --;
                                    if (odd > 0 && i1 % p != 0) {
                                    } else {
                                        cmp = s432.add(a[i1]).compareTo(a5);
                                    }
                                } // while i1;
                                if (cmp == 0) { // found
                                    evaluateTuple(4, 4, 1, new int[]{ i1, i2, i3, i4, i5 });
                                } // if found
                            } else {
                                // i2 = 0;
                            }
                            } // mod test
                            odd &= 0xffd;
                            i2 --;
                        } // while i2
                    } else {
                        // i3 = 0;
                    }
                    } // mod test
                    odd &= 0xffb;
                    i3 --;
                } // while i3
                } // mod test
                odd &= 0xff7;
                i4 --;
            } // while i4
            } // i5 % 5
            i5 ++;
        } // while i5
        return list;
    } // run_4_4_1

    /** Evaluate (5,1) quintic tuples
     *  @return array of Vectors
     */
    public ArrayList<Vector> run_5_5_1() {
        int        i1, i2, i3, i4, i5, i6;
        BigInteger a1, a2, a3, a4, a5, a6;
        BigInteger sum;
        BigInteger a6_5, a5_4, a4_3, a3_2;
        i6 = 6;
        while (i6 < maxA) {
            set(i6, k);
            a6 = a[i6]; // increasing
            i5 = i6 - 1;
            a6_5 = a6.divide(FIVE);
            while (i5 > 0 && a[i5].compareTo(a6_5) >= 0) {
                a5 = a[i5];
                i4 = i5 - 1;
                a5_4 = a5.divide(FOUR);
                while (i4 > 0 && a[i4].compareTo(a5_4) >= 0) {
                    a4 = a[i4];
                    i3 = i4 - 1;
                    a4_3 = a4.divide(THREE);
                    while (i3 > 0 && a[i3].compareTo(a4_3) >= 0) {
                        a3 = a[i3];
                        i2 = i3 - 1;
                        a3_2 = a3.divide(TWO);
                        while (i2 > 0 && a[i2].compareTo(a3_2) >= 0) {
                            a2 = a[i2];
                            i1 = i2 - 1;
                            sum = a[i1].add(a2).add(a3).add(a4).add(a5);
                            while (i1 > 0 && sum.compareTo(a6) > 0) {
                                i1 --;
                                sum = a[i1].add(a2).add(a3).add(a4).add(a5);
                            } // while i1;
                            if (sum.compareTo(a6) == 0) {
                                evaluateTuple(4, 4, 1, new int[]{ i1, i2, i3, i4, i5, i6 });
                            }
                            i2 --;
                        } // while i2
                        i3 --;
                    } // while i3
                    i4 --;
                } // while i4
                i5 --;
            } // while i5
            i6 ++;
        } // while i6
        return list;
    } // run_5_5_1

    /** Evaluates Dutch's 1st formula for cubic diophantine equations
     *  up to some limit of the parameter values.
     *  <pre>
     *  a^3 + b^3 + c^3 = d^3
     *  </pre>
     *  @param limit abs(max(m, n))
     *  @return array of Vectors
     */
    public ArrayList<Vector> evalDutch1  (int limit) {
        int m, t, f, a, b, c, d;
        for (m = -limit; m <= limit; m ++) {
                    a =      m*m + 16 * m - 21;
                    b =    - m*m + 16 * m + 21;
                    c =  2 * m*m -  4 * m + 42;
                    d =  2 * m*m +  4 * m + 42;
                    if (a != b && a != c && a != d && b != c && b != d && c != d) {
                    //  System.out.println(a + "\t" + b + "\t" + c + "\t" + d + "\t"+ m + "\t" + t + "\t" + f);
                        evaluateTuple(3, 3, 1, new int[]{ a, b, c, d });
                    }
        } // for m
        return list;
    } // evalDutch1

    /** Evaluates Dutch's 2nd formula for cubic diophantine equations
     *  up to some limit of the parameter values.
     *  <pre>
DATA ((2*m - 1)*(2*m^3 -  6*m^2 + 0*m - 1))^3
   + ((1*m + 1)*(5*m^3 -  9*m^2 + 3*m - 1))^3
   + ((1*m + 1)*(3*m^3 -  3*m^2 + 3*m    ))^3
   - ((2*m - 1)*(3*m^3 -  3*m^2 + 3*m    ))^3
     *  a^3 + b^3 + c^3 = d^3
     *  </pre>
     *  @param limit abs(max(m, n))
     *  @return array of Vectors
     */
    public ArrayList<Vector> evalDutch2  (int limit) {
        int m, t, f, a, b, c, d;
        for (m = -limit; m <= limit; m ++) {
                    a = (2*m - 1)*(2*m*m*m -  6*m*m       - 1);
                    b = (  m + 1)*(5*m*m*m -  9*m*m + 3*m - 1);
                    c = (  m + 1)*(3*m*m*m -  3*m*m + 3*m    );
                    d = (2*m - 1)*(3*m*m*m -  3*m*m + 3*m    );
                    if (a != b && a != c && a != d && b != c && b != d && c != d) {
                    //  System.out.println(a + "\t" + b + "\t" + c + "\t" + d + "\t"+ m + "\t" + t + "\t" + f);
                        evaluateTuple(3, 3, 1, new int[]{ a, b, c, d });
                    }
        } // for m
        return list;
    } // evalDutch2

    /** Evaluates Korneck's formula (1873) for cubic diophantine equations
     *  up to some limit of the parameter values.
     *  <pre>
     *  a^3 + b^3 = c^3 + d^3
     *  </pre>
     *  @param limit abs(max(m, n))
     *  @return array of Vectors
     */
    public ArrayList<Vector> evalKorneck3(int limit) {
        int m, t, f, a, b, c, d;
        for (m = -limit; m <= limit; m ++) {
            for (t = -limit; t <= limit; t ++) {
                for (f = -limit; f <= limit; f ++) {
                    a =  6 * pow(m, 3) * t * f + t * (t + m) * (pow(m, 4) + pow(m, 2) * pow(t, 2) + pow(t, 4)) + 3 * t * (t - m) * pow(f, 2);
                    b =  6 * pow(m, 3) * t * f - t * (t + m) * (pow(m, 4) + pow(m, 2) * pow(t, 2) + pow(t, 4)) - 3 * t * (t - m) * pow(f, 2);
                    c = -6 * pow(t, 3) * m * f + m * (m + t) * (pow(m, 4) + pow(m, 2) * pow(t, 2) + pow(t, 4)) + 3 * m * (m - t) * pow(f, 2);
                    d =  6 * pow(t, 3) * m * f + m * (m + t) * (pow(m, 4) + pow(m, 2) * pow(t, 2) + pow(t, 4)) + 3 * m * (m - t) * pow(f, 2);
                    if (a != b && a != c && a != d && b != c && b != d && c != d) {
                    //  System.out.println(a + "\t" + b + "\t" + c + "\t" + d + "\t"+ m + "\t" + t + "\t" + f);
                        evaluateTuple(3, 3, 1, new int[]{ a, b, c, d });
                    }
                } // for f
            } // for t
        } // for m
        return list;
    } // evalKorneck3

    /** Evaluates Choudhry's formula (1997) for cubic diophantine equations
     *  up to some limit of the parameter values.
     *  <pre>
     *  a^3 + b^3 = c^3 + d^3
     *  </pre>
     *  @param limit abs(max(m, n))
     *  @return array of Vectors
     */
    public ArrayList<Vector> evalChoudry3(int limit) {
        int u, v, w, x, y, z, a, b, c, d;
        for (a = -limit; a <= limit; a++) {
            for (b = -limit; b <= limit; b++) {
                for (c = -limit; c <= limit; c++) {
                    u = pow(a, 4) + 2*pow(a, 3)*b +3*pow(a, 2)*pow(b, 2) + 2*a*pow(b, 3) + pow(b, 4);
                    x =   (u + (2*a + b)*pow(c, 3));
                    y = - (u - (a   - b)*pow(c, 3));
                    z = c*(- pow(a, 3) + pow(b, 3) + pow(c, 3));
                    w = - ((2*pow(a, 3) + 3*pow(a, 2)*b + 3*a*pow(b, 2) + pow(b, 3))*c + pow(c, 4));
                    if (       x !=  y && x !=  z && x !=  w && y !=  z && y !=  w && z !=  w
                            && x != -y && x != -z && x != -w && y != -z && y != -w && z != -w
                            ) {
                        evaluateTuple(3, 4, 0, new int[]{ x, y, z, w });
                    }
                } // for c
            } // for b
        } // for a
        return list;
    } // evalChoudry3

    /** Evaluates Vieta's formula (1591) for cubic diophantine equations
     *  up to some limit of the parameter values,
     *  and print (z, y, x, w, m, n) separated by tabs.
     *  <pre>
     *  w^3 + x^3 + y^3 = z^3
     *  w = m^4 - 2*n^3*m
     *  x = 2*n*m^3 - n^4
     *  y =   n*m^3 + n^4
     *  z = m^4 +   n^3*m
     *  </pre>
     *  @param limit limit for absolute value of parameters w, x, y, z
     *  @return array of Vectors
     */
    public ArrayList<Vector> evalVieta3(int limit) {
        int n, m, w, x, y, z;
        for (m = -limit; m <= limit; m ++) {
            for (n = -limit; n <= limit; n ++) {
                w = pow(m, 4) - 2 * pow(n, 3) * m;
                x = 2 * n * pow(m, 3) - pow(n, 4);
                y =     n * pow(m, 3) + pow(n, 4);
                z = pow(m, 4) + m * pow(n, 3);
                if (z != y && z != x && z != w && y != x && y != w && x != w) {
                    // System.out.println(z + "\t" + y + "\t" + x + "\t" + w + "\t"+ m + "\t" + n);
                    evaluateTuple(3, 3, 1, new int[]{ w, x, y, z });
                } // if z
            } // for n
        } // for m
        return list;
    } // evalVieta3

    /** Test method.
     *  @param args command line arguments:
     *  <ul>
     *  <li>k = exponent</li>
     *  <li>m = number of summands on the left side</li>
     *  <li>n = number of summands on the right side (always 1 in this class)</li>
     *  </ul>
     */
    public static void main(String[] args) {
        try {
            int iarg    = 0;
            String opt  = args[iarg ++];
            int maxA    = Integer.parseInt(args[iarg ++]);
            int k       = Integer.parseInt(args[iarg ++]);
            int m       = Integer.parseInt(args[iarg ++]);
            EulersExtendedConjecture eec = new EulersExtendedConjecture(k, maxA);
            eec.show = true;
            if (false) {
            } else if (opt.startsWith("dutch1"  )) {
                eec.evalDutch1  (m);
            } else if (opt.startsWith("dutch2"  )) {
                eec.evalDutch2  (m);
            } else if (opt.startsWith("euler"   )) {
            } else if (opt.startsWith("choud"   )) {
                eec.evalChoudry3(m);
            } else if (opt.startsWith("korneck" )) {
                eec.evalKorneck3(m);
            } else if (opt.startsWith("vieta"   )) {
                eec.evalVieta3(m);
            } else if (opt.startsWith("run")) {
                int n       = Integer.parseInt(args[iarg ++]);
                System.out.println("EEC run k=" + k);
                switch (k) {
                    case 2:
                        eec.run_2_2_1();
                        break;
                    case 3:
                        eec.run_3_3_1();
                        break;
                    case 4:
                        eec.run_4_4_1();
                        break;
                    case 5:
                        eec.run_5_5_1();
                        break;
                    default:
                        System.out.println("unknown exponent k = " + k);
                } // switch
            } // case opt
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
            System.err.println("usage: java org.teherba.ramath.EulersExtendedConjecture option max k m n");
        }
    } // main

} // EulersExtendedConjecture
