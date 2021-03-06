/*  Linear recurrence with constant coefficients
 *  @(#) $Id: LinearRecurrence.java $
 *  2020-07-23: zeroes before initial terms when there are too few; getGeneratingFunction()
 *  2019-12-10: -o offset -find
 *  2019-08-29: parameter skip
 *  2019-08-27: find(seq,n) with Berlekamp-Massey's algorithm
 *  2019-08-25, Georg Fischer: Lunnon's algorithm - failed
 *
 *  Derived from the SageMath code of William Stein <wstein@gmail.com> (2005):
 *      https://github.com/sagemath/sagelib/blob/master/sage/matrix/berlekamp_massey.py
 *  See also:
 *      https://codeforces.com/blog/entry/61306
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
import  org.teherba.ramath.sequence.Sequence;
import  org.teherba.ramath.sequence.SequenceReader;
import  java.math.BigInteger;
import  java.util.ArrayList;

/** Linear recurrence with constant coefficients.
 *  The interface is close to Mathematica's, for example
 *  LinearRecurrence[{1,0,0,9,-9},{1,9,3,15,6},20] gives
 *  OEIS A309791 Expansion of (1 + 8*x - 6*x^2 + 12*x^3 - 18*x^4)/(1 - x - 9*x^4 + 9*x^5).
 *  @author Dr. Georg Fischer
 */
public class LinearRecurrence extends Recurrence {
    public final static String CVSID = "@(#) $Id: LinearRecurrence.java 194 2009-07-07 21:10:32Z gfis $";
    /** Debugging level: 0 = none, 1 = some, 2 = more */
    public static int debug = 0;

    /** List of constant coefficients [c1, c2, ck] of <code>a(n) = c1*a(n-1) + c2*a(n-2) + ck*a(n-k)</code>.
     *
     */
    protected BigVector signature;

    /** No-args Constructor
     */
    public LinearRecurrence() {
    } // no-args Constructor

    /** Constructor with signature and initial terms.
     *  The parameters are the same as in the call <code>LinearRecurrence</code> of Mathematica.
     *  @param signature of constant coefficients [c1, c2, ck] of <code>a(n) = c1*a(n-1) + c2*a(n-2) + ck*a(n-k)</code>.
     *  @param initTerms list of inital terms
     */
    public LinearRecurrence(BigVector signature, BigVector initTerms) {
        this.signature = signature;
        super.initTerms = initTerms;
    } // Constructor(,)

    /** Compute one term <em>a(n+1)</em> from the existing terms <em>a(n), a(n-1), a(n-k)</em>.
     *  @param seq {@link Sequence} with existing terms
     *  @param np1 index of a(n+1), the new term to be computed
     */
    @Override
    public void compute(Sequence seq, int np1) {
        BigInteger aNp1 = BigInteger.ZERO; // a(n+1)
        int ncur = np1 - 1; // n
        int isig = 0;
        while (isig < signature.size()) {
            aNp1 = aNp1.add(signature.getBig(isig).multiply(ncur >= 0 ? seq.getBig(ncur) : BigInteger.ZERO));
            isig ++;
            ncur --;
        } // while isig
        seq.setBig(np1, aNp1);
    } // compute

    /** Find a signature of constant coefficients from a sequence
     *  with the Berlekamp-Massey algorithm.
     *  @param seq {@link Sequence} with existing terms
     *  @param termNo include so many terms in the derivation
     *  @return a signature, if possible
     *  Derived from the SageMath code of William Stein &lt;wstein@gmail.com&gt; (2005):
     *      https://sage.math.leidenuniv.nl/src/matrix/berlekamp_massey.py
     */
    public static RationalVector find(Sequence seq, int termNo) {
        return find(seq, 0, termNo);
    } // find(Sequence, int)

    /** Find a signature of constant coefficients from a sequence
     *  with the Berlekamp-Massey algorithm.
     *  @param seq {@link Sequence} with existing terms
     *  @param offset start the terms of <em>seq</em> at some index &gt;= 0.
     *  @param termNo include so many terms in the derivation
     *  @return a signature, if possible
     *  Derived from the SageMath code of William Stein &lt;wstein@gmail.com&gt; (2005):
     *      https://sage.math.leidenuniv.nl/src/matrix/berlekamp_massey.py
     */
    public static RationalVector find(Sequence seq, int offset, int termNo) {
        RationalVector result = null;
        if (termNo % 2 != 0) {
            termNo --; // must be even
        }
        int m = termNo / 2;
        ArrayList<RationalVector> f = new ArrayList<RationalVector>(16);
        f.add(new RationalVector(new BigVector(seq.getBigValues(offset))));
        RationalVector xpow = new RationalVector(2*m + 1, BigInteger.ZERO);
        xpow.set(2*m, BigRational.ONE);
        f.add(xpow);
        ArrayList<RationalVector> q = new ArrayList<RationalVector>(16);
        q.add(new RationalVector(1, BigInteger.ZERO));
        q.add(new RationalVector(1, BigInteger.ZERO));
        ArrayList<RationalVector> s = new ArrayList<RationalVector>(16);
        s.add(new RationalVector(1, BigInteger.ONE ));
        s.add(new RationalVector(1, BigInteger.ZERO));
        int j = 1;
        while (f.get(j).size() > m) {
            j ++;
            if (debug >= 1) {
                System.out.println("---- j = " + String.valueOf(j)
                        + "\nf = " + f.toString()
                        + "\nq = " + q.toString()
                        + "\ns = " + s.toString()
                        );
            } // if debug
            RationalVector quotRemd[] = f.get(j - 2).divideAndRemainder(f.get(j - 1));
            q.add(quotRemd[0]);
            f.add(quotRemd[1]);
            if (true) { // assertion
                // assert q[j]*f[j-1] + f[j] == f[j-2], "poly divide failed."
                RationalVector orig = q.get(j).multiply(f.get(j - 1)).add(f.get(j));
                if (! orig.equals(f.get(j - 2))) {
                    if (debug >= 1) {
                        System.out.println(f.get(j - 2) + " / " + f.get(j - 1) + " =\n"
                                + quotRemd[0] + " rest " + quotRemd[1]);
                        System.out.println("** assertion poly divide failed:\norig   = "
                                + orig + "\nf[j-2] = " + f.get(j - 2));
                    } // if debug
                    result = new RationalVector("[1/65536]"); // strange fraction
                    return result;
                }
            }
            s.add(s.get(j - 2).subtract(q.get(j).multiply(s.get(j - 1))));
            if (debug >= 1) {
                System.out.println(""
                        + "\nf = " + f.toString()
                        + "\nq = " + q.toString()
                        + "\ns = " + s.toString()
                        + "\n-----------------------------"
                        );
            } // if debug
        } // while
        BigRational factor = s.get(j).getRat(0).inverse();
        result = s.get(j).multiply(factor);
        return result.reverse();
    } // find

    /** Negates the coefficients from the signature such that they form an annihilator equation
     *  <code>1*a(n) + c1*a(n-1) + c2*a(n-2) + ck*a(n-k) = 0</code>.
     *  @return a {@link BigVector} [c0=1, c1, c2, ck].
     */
    public BigVector getDenominator() {
        final int order = signature.size();
        BigVector result = new BigVector(order + 1);
        int isig = 0;
        result.set(isig ++, BigInteger.ONE);
        while (isig <= order) {
            result.set(isig, signature.getBig(isig - 1).negate());
            isig ++;
        } // while isig
        return result;
    } // getDenominator

    /** Gets an ordinary generating function from <em>this</em> LinearRecurrence, that is a fraction of
     *  two polynomials with constant coefficients of the form
     *  <code>(c0 + c1*x + c2*x^2 + cn*x^n)/(1 + d1*x + d2*x2 + dn*x^n)</code>.
     *  @return [c0,c1,c2,ck], [1,d1,d2,dn]
     *  where the dk correspond with the signature of <em>this</em> LinearRecurrence
     */
    public BigVector[] getGeneratingFunction() {
        BigVector numerator   = new BigVector(initTerms.size(), BigInteger.ZERO);
        BigVector denominator = getDenominator();
        int irow = 0;
        while (irow < numerator.size()) { // for all initTerms
            int icol = irow;
            BigInteger pivot = denominator.getBig(irow);
            if (! pivot.equals(BigInteger.ZERO)) {
                while (icol < numerator.size()) {
                    if (debug >= 1) {
                        System.out.println("[" + irow + "," + icol + "]: num=" + numerator.getBig(icol)
                                + " + " + initTerms.getBig(icol - irow) + " * " + pivot);
                    }
                    numerator.setBig(icol, numerator.getBig(icol).add(initTerms.getBig(icol - irow).multiply(pivot)));
                    icol  ++;
                } // while icol
            } // pivot != 0
            irow ++;
        } // while irow
        return new BigVector[] {numerator, denominator };
    } // getGeneratingFunction

    /** Gets the signature of the recurrence <code>a(n) = c1*a(n-1) + c2*a(n-2) + ck*a(n-k)</code>.
     *  @return the {@link BigVector} <code>[c1,c2,ck]</code>.
     */
    public BigVector getSignature() {
        return signature;
    } // getSignature

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
        LinearRecurrence.debug = 0;
        String aNumber = "A000000";
        SequenceReader reader = new SequenceReader(15);
        Sequence seq = null;
        LinearRecurrence linRec = null;
        int offset = 0;
        try {
            if (args.length == 0) {
                System.out.print("usage: java org.teherba.ramath.sequence.LinearRecurrence [options]\n"
                        + "    -d debug level (0=none, 1=some, 2=more)\n"
                        + "    -comp signature initterms noterms\n"
                        + "    -find filename [noterms [start]]\n"
                        );
            } else { // some arguments
                int termNo = 0;
                int iarg = 0;
                while (iarg < args.length) {
                    String oper = args[iarg ++];
                    if (false) {

                    } else if (oper.equals    ("-d")) {
                        LinearRecurrence.debug = Integer.parseInt(args[iarg ++]);

                    } else if (oper.equals    ("-o")) {
                        offset = Integer.parseInt(args[iarg ++]);

                    } else if (oper.startsWith("-comp")) {
                        linRec = new LinearRecurrence( new BigVector(args[iarg]), new BigVector(args[iarg + 1]));
                        iarg += 2;
                        termNo = Integer.parseInt(args[iarg ++]);
                        seq = linRec.generate(termNo);
                        seq.setANumber(aNumber);
                        seq.printBFile();

                    } else if (oper.startsWith("-den")) {
                        linRec = new LinearRecurrence( new BigVector(args[iarg ++]), new BigVector("[1]"));
                        System.out.println("getDenominator(" + linRec.getSignature() + ") = "
                                + linRec.getDenominator());

                    } else if (oper.startsWith("-eval")) {
                        reader = SequenceReader.configure(iarg, args);
                        termNo = reader.getMaxTermNo();
                        while (reader.hasNext()) {
                            seq = reader.next();
                            if (seq.size() < termNo) {
                                    System.out.println("# " + seq.getANumber() + "\ttoo short (" + seq.size() + ")");
                            } else if (seq.getLastElement().bitLength() >= 512) {
                                    System.out.println("# " + seq.getANumber() + "\tlast term too long (" + seq.getLastElement().bitLength() + ")");
                            } else {
                                RationalVector result = LinearRecurrence.find(seq, offset, termNo - offset);
                                if (result.isInteger()) {
                                    System.out.println(seq.getANumber() + "\t" + result.toString() + "\t" + seq.toString());
                                } else {
                                    System.out.println("# " + seq.getANumber());
                                }
                            } // not too short
                         } // while hasNext
                        iarg = args.length;

                    } else if (oper.startsWith("-find")) {
                        String fileName = args[iarg ++];
                        if (iarg < args.length) {
                            termNo = Integer.parseInt(args[iarg ++]);
                            int skip = 0;
                            if (iarg < args.length) {
                                skip = Integer.parseInt(args[iarg ++]);
                            }
                            seq = reader.readBFile(fileName, termNo, skip);
                        } else {
                            seq = reader.readBFile(fileName);
                            termNo = seq.size();
                        }
                        System.out.println("found: " + LinearRecurrence.find(seq, offset, termNo - offset).toString());

                    } else if (oper.startsWith("-gf")) {
                        linRec = new LinearRecurrence(new BigVector(args[iarg]), new BigVector(args[iarg + 1]));
                        iarg += 2;
                        BigVector[] gf = linRec.getGeneratingFunction();
                        System.out.println("getGeneratingFunction(" + linRec.getSignature() + ", " + linRec.getInitTerms() + ") = "
                                + gf[0] + "/" + gf[1]);

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
