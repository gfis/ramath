/*  Linear recurrence with constant coefficients
 *  @(#) $Id: LinearRecurrence.java 194 2009-07-07 21:10:32Z gfis $
 *  2019-08-27: find with Berlekamp-Massey's algorithm
 *  2019-08-25, Georg Fischer: Lunnon's algorithm - failed
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
import  org.teherba.ramath.linear.RationalMatrix;
import  org.teherba.ramath.sequence.Sequence;
import  org.teherba.ramath.symbolic.Monomial;
import  java.math.BigInteger;
import  java.util.ArrayList;

/** Linear recurrence with constant coefficients.
 *  The interface is close to Mathematica's, for example
 *  LinearRecurrence[{1,0,0,9,-9},{1,9,3,15,6},20].
 *  @author Dr. Georg Fischer
 */
public class LinearRecurrence extends Recurrence {
    public final static String CVSID = "@(#) $Id: LinearRecurrence.java 194 2009-07-07 21:10:32Z gfis $";

    /** Debugging level: 0 = none, 1 = some, 2 = more */
    public static int debug = 1;
    /** List of constant coefficients.*/
    protected BigVector signature;

    /** No-args Constructor
     */
    public LinearRecurrence() {
    } // no-args Constructor

    /** Constructor with signature and initial terms.
     *  @param signature list of constant coefficients
     *  @param initTerms list of inital terms
     */
    public LinearRecurrence(BigVector signature, BigVector initTerms) {
        this.signature = signature;
        super.initTerms = initTerms;
    } // Constructor(,)

    /** Compute one term a(n+1) from the existing terms.
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

    /** Find a signature of constant coefficients from a sequence.
     *  @param seq {@link Sequence} with existing terms
     *  @param termNo include so many terms in the derivation
     */
    public static BigVector findLunnon(Sequence seq, int termNo) {
        BigVector result = null;
        ArrayList<BigVector> stab = new ArrayList<BigVector>(16);
        stab.add(new BigVector(termNo, BigInteger.ONE));
        BigVector vect1 = new BigVector(termNo);
        BigVector vect2 = null;
        System.arraycopy(seq.getBigValues(), 0, vect1.getBigValues(), 0, termNo);
        stab.add(vect1);
        int irow = 1;
        boolean busy = true;
        int maxRow = 64;
        if (termNo < maxRow) {
            maxRow = termNo;
        }
        boolean allZero = false;
        while (busy && irow < maxRow) {
            int ioff = irow;
            int icol = 0;
            allZero = true;
            vect1 = vect2;
            vect2 = new BigVector(termNo);
            while (icol < termNo) { // now use X^2 = N*S + E*W, or S = (X^2 - E*W) / N
                if (icol < ioff || icol >= termNo - ioff) { // outside
                    vect2.setBig(icol, BigInteger.ZERO);
                } else {
                    BigInteger north = stab.get(irow - 1).getBig(icol);
                    if (! north.equals(BigInteger.ZERO)) {
                        BigInteger south =
                                stab.get(irow).getBig(icol    ).pow(2).subtract(
                                stab.get(irow).getBig(icol - 1).multiply(
                                stab.get(irow).getBig(icol + 1)         )
                                ).divide(north);
                        vect2.setBig(icol, south);
                        if (! south.equals(BigInteger.ZERO)) {
                            allZero = false;
                        }
                    } else {
                        System.out.println("Zero in LinearRecurrence.find in row=" + (irow - 1) + ", col=" + icol);
                        busy = false;
                    }
                } // inside
                icol ++;
            } // while itab
            stab.add(vect2);
            busy = ! allZero;
            irow ++;
        } // while busy

/* stab for LinearRecurrence[{2,3}, {1,2}]:

         col 0      col 1      col 2      col 3      col 4
       +----------+----------+----------+----------+----------+---------+
 row 0 | s00=  1  | s01=  1  | s02=  1  | s03=  1  | s04=  1  | s05=  1
       +----------+----------+----------+----------+----------+---------+
 row 1 | s10=  1  | s11=  2  | s12=  7  | s13= 20  | s14= 61  | s15=182
       +----------+----------+----------+----------+----------+---------+
 row 2   s20      | s21= -3  | s22=  9  | s23=-27  | s24= 81  | s25=-243
                  +----------+----------+----------+----------+---------+
 row 3   s30        s31      | s32=  0  | s33=  0  | s34=  0    s35=  0
                             +----------+----------+

 s12 = c1*s11 + c2*s10
 s13 = c1*s12 + c2*s11
     = c1^2*s11 + c1*c2*s10 + c2*s11
     = (c1^2 + c2)*s11 + c1*c2*s10
 s14 = c1*s13 + c2*s12
 s15 = c1*s14 + c2*s13

 X^2 = N*S + E*W
 S   = (X^2 - E*W) / N
 s21 = (s11^2 - s10*s12) / s01
     =      (s11^2 - c1*s10*s11 - c2*s10^2) / s01
 s22 = (s12^2 - s11*s13) / s02 = (c1^2*s11^2 + 2*c1*c2*s11*s10 + c2^2*s10^2 - s11*((c1^2 + c2)*s11 + c1*c2*s10)) / s02
     = (c1^2*s11^2 + 2*c1*c2*s11*s10 + c2^2*s10^2 - (c1^2 + c2)*s11^2 - c1*c2*s10*s11) / s02
     = (c1*c2*s11*s10 + c2^2*s10^2 - c2*s11^2) / s02
     = (-c2*(s11^2 - c1*s11*s10 - c2*s10^2)) / s02
 =>  c2 = (- s[k,k] / s[k,k-1]) * s[k-2,k]        = 3
 =>  c1 = (s[k-1,k] - c2*s[k-1,k-2]) / s[k1-,k-1] = (7 - 3*1) / 2 = 2
*/
        if (allZero) {
            if (debug >= 1) {
                System.out.println("col=\t0\t1\t2\t3\t4\t5\t6\t7\t8");
                for (int itab = 0; itab <= irow; itab ++) {
                    System.out.println("stab[" + itab + "]: " + stab.get(itab).toString("\t"));
                } // for
                irow --;
                BigInteger cr   = stab.get(irow).getBig(irow)
                                . divide(stab.get(irow).getBig(irow - 1))
                                . negate();
                BigInteger cr_1 = stab.get(irow - 1).getBig(irow    )
                                . subtract(cr.multiply(stab.get(irow - 1).getBig(irow - 2)))
                                . divide(stab.get(irow - 1).getBig(irow - 1));
                System.out.println("row=" + irow + ", c1=" + cr.toString() + ", c2=" + cr_1.toString());
            } // if debug
            result = vect1;
        }
        return result;
    } // findLunnon

    /** Find a signature of constant coefficients from a sequence
     *  with the Berlekamp-Massey algorithm.
     *  @param seq {@link Sequence} with existing terms
     *  @param termNo include so many terms in the derivation
     *  Derived from the SageMath code of William Stein &lt;wstein@gmail.com&gt; (2005):
     *      https://sage.math.leidenuniv.nl/src/matrix/berlekamp_massey.py
     */
    public static RationalVector find(Sequence seq, int termNo) {
        if (termNo % 2 != 0) {
            termNo --; // must be even
        }
        int m = termNo / 2;
        RationalMatrix f = new RationalMatrix();
        f.set(0, new RationalVector(new BigVector(seq.getBigValues())));
        RationalVector xpow = new RationalVector(2*m + 1, BigInteger.ZERO);
        xpow.set(2*m, BigRational.ONE);
        f.set(1, xpow);
        RationalMatrix q = new RationalMatrix();
        RationalMatrix s = new RationalMatrix();
        s.set(0, new RationalVector(1, BigInteger.ONE ));
        s.set(1, new RationalVector(1, BigInteger.ZERO));
        RationalMatrix t = new RationalMatrix();
        t.set(0, new RationalVector(1, BigInteger.ZERO));
        t.set(1, new RationalVector(1, BigInteger.ONE ));

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
            RationalVector quotRemd[] = f.get(j - 2).divideAndRemainder(f.get(j-1));
            q.set(j, quotRemd[0]);
            f.set(j, quotRemd[1]);
            if (false) { // assertion
            }
            s.set(j, s.get(j - 2).subtract(q.get(j).multiply(s.get(j - 1))));
            t.set(j, t.get(j - 2).subtract(q.get(j).multiply(t.get(j - 1))));
        } // while
        BigRational factor = s.get(j).getRat(0).inverse();
        RationalVector result = s.get(j).multiply(factor);
        return result.reverse();
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
        Sequence seq = null;
        try {
            if (args.length == 0) {
                System.out.print("usage:\n"
                        + "    java org.teherba.ramath.sequence.LinearRecurrence -comp signature initTerms noTerms\n"
                        + "    java org.teherba.ramath.sequence.LinearRecurrence -find noTerms filename\n"
                        );
            } else {
                int termNo = 0;
                int iarg = 0;
                String oper = args[iarg ++];
                if (false) {
                } else if (oper.startsWith("-comp")) {
                    LinearRecurrence linRec = new LinearRecurrence
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
                        seq = (new SequenceReader()).readBFile(fileName, termNo);
                    } else {
                        seq = (new SequenceReader()).readBFile(fileName);
                        termNo = seq.size();
                    }
                    System.out.println("found: " + LinearRecurrence.find(seq, termNo).toString());
                } else {
                    System.out.println("invalid operation \"" + oper + "\"");
                }
            }
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
        }
    } // main

} // LinearRecurrence
