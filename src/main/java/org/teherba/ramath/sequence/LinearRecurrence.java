/*  Linear recurrence with constant coefficients
 *  @(#) $Id: LinearRecurrence.java 194 2009-07-07 21:10:32Z gfis $
 *  2019-08-29: parameter skip
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
import  org.teherba.ramath.linear.BigMatrix;
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
    public static int debug = 0;

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

    /** Find a signature of constant coefficients from a sequence
     *  with the Berlekamp-Massey algorithm.
     *  @param seq {@link Sequence} with existing terms
     *  @param termNo include so many terms in the derivation
     *  Derived from the SageMath code of William Stein &lt;wstein@gmail.com&gt; (2005):
     *      https://sage.math.leidenuniv.nl/src/matrix/berlekamp_massey.py
     */
    public static RationalVector findRational(Sequence seq, int termNo) {
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
    } // findRational

    /** Find a signature of constant coefficients from a sequence
     *  with the Berlekamp-Massey algorithm.
     *  @param seq {@link Sequence} with existing terms
     *  @param termNo include so many terms in the derivation
     *  Derived from the SageMath code of William Stein &lt;wstein@gmail.com&gt; (2005):
     *      https://sage.math.leidenuniv.nl/src/matrix/berlekamp_massey.py
     */
    public static BigVector find(Sequence seq, int termNo) {
        if (termNo % 2 != 0) {
            termNo --; // must be even
        }
        int m = termNo / 2;
        BigMatrix f = new BigMatrix();
        f.set(0, new BigVector(seq.getBigValues()));
        BigVector xpow = new BigVector(2*m + 1, BigInteger.ZERO);
        xpow.set(2*m, BigInteger.ONE);
        f.set(1, xpow);
        BigMatrix q = new BigMatrix();
        BigMatrix s = new BigMatrix();
        s.set(0, new BigVector(1, BigInteger.ONE ));
        s.set(1, new BigVector(1, BigInteger.ZERO));
        BigMatrix t = new BigMatrix();
        t.set(0, new BigVector(1, BigInteger.ZERO));
        t.set(1, new BigVector(1, BigInteger.ONE ));
        BigMatrix a = new BigMatrix();
        a.set(0, new BigVector(1, BigInteger.ONE ));
        a.set(1, new BigVector(1, BigInteger.ONE ));

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
            BigVector quotRemdFact[] = f.get(j - 2).divideAndRemainder(f.get(j - 1));
            q.set(j,  quotRemdFact[0]);
            f.set(j,  quotRemdFact[1]);
            // a.set(j,  quotRemdFact[2]);
            if (false) { // assertion
            }
            s.set(j, s.get(j - 2) /* .multiply(a.get(j - 2).getBig(0)) */ 
            		.subtract(q.get(j).multiply(s.get(j - 1) /* .multiply(a.get(j - 1).getBig(0)) */ )));
            t.set(j, t.get(j - 2) /* .multiply(a.get(j - 2).getBig(0)) */ 
            		.subtract(q.get(j).multiply(t.get(j - 1) /* .multiply(a.get(j - 1).getBig(0)) */ )));
        } // while                
        BigVector  result = s.get(j).normalize();
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
        LinearRecurrence.debug = 1;
        Sequence seq = null;
        try {
            if (args.length == 0) {
                System.out.print("usage:\n"
                        + "    java org.teherba.ramath.sequence.LinearRecurrence [-d n] -comp signature initTerms noTerms\n"
                        + "    java org.teherba.ramath.sequence.LinearRecurrence [-d n] -find filename [noterms [start]]\n"
                        );
            } else { // some arguments
                int termNo = 0;
                int iarg = 0;
                while (iarg < args.length) {
                    String oper = args[iarg ++];
                    if (false) {
                    } else if (oper.equals    ("-d")) {
                        LinearRecurrence.debug = Integer.parseInt(args[iarg ++]);
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
                            int skip = 0;
                            if (iarg < args.length) {
                                skip = Integer.parseInt(args[iarg ++]);
                            }
                            seq = (new SequenceReader()).readBFile(fileName, termNo, skip);
                        } else {
                            seq = (new SequenceReader()).readBFile(fileName);
                            termNo = seq.size();
                        }
                        System.out.println("found: " + LinearRecurrence.find(seq, termNo).toString());
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

} // LinearRecurrence
