/*  Linear recurrence with constant coefficients
 *  @(#) $Id: TriangleRecurrence.java $
 *  2019-10-12, Georg Fischer: copied from LinearRecurrence.java
 *
 *  Derived from the SageMath code of William Stein <wstein@gmail.com> (2005):
 *      https://sage.math.leidenuniv.nl/src/matrix/berlekamp_massey.py
 */
/*
 * Copyright 2019 Dr. Georg Fischer <dr.georg.fischer@gmail.com>
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
package org.teherba.ramath.sequence;
import  org.teherba.ramath.BigRational;
import  org.teherba.ramath.linear.BigVector;
import  org.teherba.ramath.linear.RationalVector;
import  org.teherba.ramath.linear.RationalTriangle;
import  org.teherba.ramath.sequence.Sequence;
import  java.math.BigInteger;
import  java.util.ArrayList;

/** Triangular recurrence with constant coefficients.
 *  The interface is close to Mathematica's, for example
 *  TriangleRecurrence[{1,0,0,9,-9},{1,9,3,15,6},20].
 *  @author Dr. Georg Fischer
 */
public class TriangleRecurrence extends Recurrence {
    public final static String CVSID = "@(#) $Id: TriangleRecurrence.java 194 2009-07-07 21:10:32Z gfis $";
    /** Debugging level: 0 = none, 1 = some, 2 = more */
    public static int debug = 0;

    /** List of constant coefficients.*/
    protected BigVector signature;

    /** No-args Constructor
     */
    public TriangleRecurrence() {
    } // no-args Constructor

    /** Constructor with signature and initial terms.
     *  @param signature list of constant coefficients
     *  @param initTerms list of inital terms
     */
    public TriangleRecurrence(BigVector signature, BigVector initTerms) {
        this.signature  = signature;
        super.initTerms = initTerms;
    } // Constructor(,)

    /** Compute one term <em>a(n+1)</em> from the existing terms <em>a(n), a(n-1) ...</em>.
     *  @param seq {@link Sequence} with existing terms
     *  @param np1 index of the new term to be computed
     */
    @Override
    public void compute(Sequence seq, int np1) {
        BigInteger anp1 = BigInteger.ZERO;
        int ncur = np1 - 1; // n
        int isig = 0;
        while (isig < signature.size()) {
            anp1 = anp1.add(signature.getBig(isig).multiply(seq.getBig(ncur)));
            isig ++;
            ncur --;
        } // while isig
        seq.setBig(np1, anp1);
    } // compute

    /** Find a signature of constant coefficients from a sequence
     *  with the Berlekamp-Massey algorithm.
     *  @param seq {@link Sequence} with existing integer terms in triangular order
     *  @param termNo include so many terms in the derivation
     *  Derived from the SageMath code of William Stein &lt;wstein@gmail.com&gt; (2005):
     *      https://sage.math.leidenuniv.nl/src/matrix/berlekamp_massey.py
     */
    public static RationalTriangle find(Sequence seq, int termNo) {
        if (termNo % 2 != 0) {
            termNo --; // must be even
        }
        int m = termNo / 2;
        ArrayList<RationalTriangle> f = new ArrayList<RationalTriangle>(16);
        f.add(new RationalTriangle(new BigVector(seq.getBigValues())));
        int m2 = f.get(0).getRowSize();
        RationalTriangle xpow = new RationalTriangle(RationalTriangle.linearIndex(m2, m2) + 1, BigInteger.ZERO);
        xpow.setTri(m2, m2, BigRational.ONE);
    /*
        int im2  = 0; 
        while (im2 <= m2) {
            xpow.setTri(im2, im2, BigRational.ONE);
            im2 ++;
        } // while im2
    */
        f.add(xpow);
        ArrayList<RationalTriangle> q = new ArrayList<RationalTriangle>(16);
        q.add(new RationalTriangle(1, BigInteger.ZERO));
        q.add(new RationalTriangle(1, BigInteger.ZERO));
        ArrayList<RationalTriangle> s = new ArrayList<RationalTriangle>(16);
        s.add(new RationalTriangle(1, BigInteger.ONE ));
        s.add(new RationalTriangle(1, BigInteger.ZERO));
        ArrayList<RationalTriangle> t = new ArrayList<RationalTriangle>(16);
        t.add(new RationalTriangle(1, BigInteger.ZERO));
        t.add(new RationalTriangle(1, BigInteger.ONE ));

        int j = 1;
        while (f.get(j).size() > m) {
            j ++;
            if (debug >= 1) {
                System.out.println("---- j = " + String.valueOf(j)
                        + "\nf = " + f.toString()
                        + "\nq = " + q.toString()
                        + "\ns = " + s.toString()
                        + "\nt = " + t.toString()
                        );
            } // if debug
            RationalTriangle quotRemd[] = f.get(j - 2).divideAndRemainder(f.get(j - 1));
            q.add(quotRemd[0]);
            f.add(quotRemd[1]);
            if (true) { // assertion
                // assert q[j]*f[j-1] + f[j] == f[j-2], "poly divide failed."
                RationalTriangle orig = q.get(j).multiply(f.get(j - 1)).add(f.get(j-2));
                if (! orig.equals(f.get(j - 2))) {
                    System.out.println("assertion poly divide failed: orig = "
                            + orig + ", f[j-2] = " + f.get(j - 2));
                }
            }
            s.add(s.get(j - 2).subtract(q.get(j).multiply(s.get(j - 1))));
            t.add(t.get(j - 2).subtract(q.get(j).multiply(t.get(j - 1))));
            if (debug >= 1) {
                System.out.println(""
                        + "\nf = " + f.toString()
                        + "\nq = " + q.toString()
                        + "\ns = " + s.toString()
                        + "\nt = " + t.toString()
                        + "\n-----------------------------"
                        );
            } // if debug
        } // while
        BigRational factor = s.get(j).getRat(0).inverse();
        RationalTriangle result = s.get(j).multiply(factor);
        return result; // .reverse();
    } // find

    /** Test method.
     *  @param args command line arguments: signature init-terms no-of-terms
     *  For example:
     *  <pre>
     *  A001047 a(n) = 3^n - 2^n.
     *  (Formerly M3887 N1596)
     *  0, 1, 5, 19, 65, 211, 665, 2059, 6305, 19171, 58025, 175099, 527345, 1586131, 4766585,
     *  </pre>
     */
    public static void main(String[] args) {
        TriangleRecurrence.debug = 0;
        Sequence seq = null;
        try {
            if (args.length == 0) {
                System.out.print("usage:\n"
                        + "    java org.teherba.ramath.sequence.TriangleRecurrence [-d n] -comp signature initTerms noTerms\n"
                        + "    java org.teherba.ramath.sequence.TriangleRecurrence [-d n] -find filename [noterms [start]]\n"
                        );
            } else { // some arguments
                int termNo = 0;
                int iarg = 0;
                while (iarg < args.length) {
                    String oper = args[iarg ++];
                    if (false) {
                    } else if (oper.equals    ("-d")) {
                        TriangleRecurrence.debug = Integer.parseInt(args[iarg ++]);
                    } else if (oper.startsWith("-comp")) {
                        TriangleRecurrence linRec = new TriangleRecurrence
                                ( new BigVector(args[iarg    ])
                                , new BigVector(args[iarg + 1]));
                        iarg += 2;
                        termNo = Integer.parseInt(args[iarg ++]);
                        seq = linRec.generate(termNo);
                        seq.printBFile();
                    } else if (oper.startsWith("-find")) {
                        String fileName = args[iarg ++];
                        if (iarg < args.length) {
                            termNo = Integer.parseInt(args[iarg ++]);
                            int skip = 0;
                            if (iarg < args.length) {
                                skip = Integer.parseInt(args[iarg ++]);
                            }
                            seq = (new SequenceReader()).readBFile(fileName, termNo, skip);
                        } else {
                            seq = (new SequenceReader()).readBFile(fileName);
                            termNo = seq.size();
                        }
                        System.out.println("found: " + TriangleRecurrence.find(seq, termNo).toString());
                    } else {
                        System.out.println("invalid operation \"" + oper + "\"");
                    }
                } // while iarg
            } // some arguments
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
        }
    } // main

} // TriangleRecurrence
