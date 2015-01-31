/*  Fermat's last theorem: compute the number ranges limiting any solution
 *  @(#) $Id: Corridor.java 194 2009-07-07 21:10:32Z gfis $
 *  2014-04-08: use BigInteger.valueOf(long)
 *  2009-06-01, Georg Fischer
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.Date;

/** Fermat's last theorem: compute the number ranges limiting any solution.
 *  <br />Assume (p+r)^k = p^k + (p-q)^k; r > 0, q > 0, p > q.
 *  <br />For r=1 and p compute q1, q2 such that
 *  <br />(p+1)^k >= p^k + (p-q1)^k
 *  <br />(p+1)^k <= p^k + (p-q2)^k
 *  <br />For q=1 and p compute r1, r2 such that
 *  <br />(p+r1)^k >= p^k + (p-1)^k
 *  <br />(p+r2)^k <= p^k + (p-1)^k
 *  @author Dr. Georg Fischer
 */
public class Corridor {
    public final static String CVSID = "@(#) $Id: Corridor.java 194 2009-07-07 21:10:32Z gfis $";

    /** array for powers of natural numbers */
    private BigInteger[] powers;
    /** last array element which was set */
    int iset;
    /** last possible array element */
    int maxPowers;
    /** exponent of Fermat's formula */
    private int k;

    /** starting time */
    private long startTime;

    /** No-args Constructor
     */
    public Corridor() {
        this(3, 4096);
    } // no-args Constructor

    /** Constructor with maximum array size
     *  @param k exponent for power tuples
     *  @param maxPowers maximum value of kth base number
     */
    public Corridor(int k, int maxPowers) {
        powers = new BigInteger[maxPowers];
        this.k = k;
        this.maxPowers = maxPowers;
        iset = 0;
        powers[iset ++] = BigInteger.ZERO;
        powers[iset   ] = BigInteger.ONE;
        startTime = (new java.util.Date()).getTime();
    } // Constructor with maximum array size

    /** Gets the element with the kth power of it's index,
     *  eventually computing this element and the ones before it.
     *  @param i index of the element to be returned
     */
    public BigInteger get(int i)  {
        BigInteger result;
        if (i <= iset) {
            result = powers[i];
        } else {
            while (iset < i) {
                iset ++;
                powers[iset] = (BigInteger.valueOf(iset)).pow(k);
            }
            result = powers[iset];
        }
        return result;
    } // get

    /** Evaluate (2,2) tuples up to some maximum index of the kth base number
     */
    public void run() {
        BigInteger pr1, pr2, p, pq1, pq2, sumr, sumq;
        int         r1,  r2, i,  q1,  q2;
        i = 2;
        q2 = i - 1;
        q1 = q2;
        System.out.println(""
                + "\tk"
                + "\tr1"
                + "\tpr1-sq"
                + "\tr2"
                + "\tsq-pr2"
                + "\ti"
                + "\tq2"
                + "\tq1"
                );
        int limit = maxPowers / 2;
        while (i < limit) {
            // (p+r1)^k >  p^k + (p-1)^k
            // (p+r2)^k <= p^k + (p-1)^k
            p = get(i);
            sumq = p.add(get(i - 1));
            r1 = i + 1;
            r2 = r1;
            pr1 = get(r1);
            pr2 = pr1;
            while (pr1.compareTo(sumq) <= 0) {
                r2 = r1;
                pr2 = pr1;
                r1 ++;
                pr1 = get(r1);
            } // while r1
            System.out.println(""
                    + "\t" + k
                    + "\t" + r1
                    + "\t" + pr1.subtract(sumq).toString()
                    + "\t" + r2
                    + "\t" + sumq.subtract(pr2).toString()
                    + "\t" + i
                    + "\t" + q2
                    + "\t" + q1
                    );
            // now pr1 > sumq, pr2 <= sumq
            i ++;
        } // while i
    } // run

    /** Test method.
     *  @param args command line arguments: none
     */
    public static void main(String[] args) {
        try {
            int k = Integer.parseInt(args[0]);
            int maxPowers = 4096;
            if (args.length > 1) {
                maxPowers = Integer.parseInt(args[1]);
            }
            Corridor corr = new Corridor(k, maxPowers);
            corr.run();
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
            System.err.println("usage: java org.teherba.ramath.Corridor k [maxPowers]");
        }
    } // main

} // Corridor
