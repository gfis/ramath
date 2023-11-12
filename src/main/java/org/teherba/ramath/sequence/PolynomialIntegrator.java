/*  Derive the formula of a polynomial from a list of terms
 *  @(#) $Id: PolynomialIntegrator.java $
 *  2023-11-07, Georg Fischer: copied form LinearRecurrence
 */
/*
 * Copyright 2023 Dr. Georg Fischer <dr dot georg dot fischer at gmail>
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
import  org.teherba.ramath.linear.BigVectorArray;
import  org.teherba.ramath.symbolic.PolyFraction;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.sequence.Sequence;
import  org.teherba.ramath.sequence.SequenceReader;
import  java.math.BigInteger;
import  java.util.ArrayList;

/** Take successive differences of a list of terms, and  -if the difference
 *  finally become zero - integrate the leading terms to obtain a polynomial formula.
 *  @author Dr. Georg Fischer
 */
public class PolynomialIntegrator {
    public final static String CVSID = "@(#) $Id: PolynomialIntegrator.java 194 2009-07-07 21:10:32Z gfis $";
    /** Debugging level: 0 = none, 1 = some, 2 = more */
    public static int debug = 0;

    /** Highest exponent in the polynomial */
    private int order;

    /** First index */
    protected int offset;

    /** A-number of the sequence */
    protected String aseqno;

    /** No-args Constructor
     */
    public PolynomialIntegrator() {
        aseqno = "";
        offset = 0;
    } // Constructor()

    /** A deep step has at least this size. */
    private static final int DEEP_STEP = 4;

    /** Compute the leading terms of successive differences.
     *  An array of successive differences is built until there is a sudden 
     *  decrease in the length of the non-zero elements (a "deep step").
     *  @param vect {@link BigVector} with existing terms
     *  @return a {@link BigVectorArray} with the initial ([0]) and the leading ([1]) terms
     */
    public BigVectorArray getDiffLeads(BigVector vect) {
        int len = vect.size();
        BigVectorArray diffs = new BigVectorArray(len);
        BigVector vnew = null; // = diffs[irow]
        diffs.set(0, vect);
        int trimIndexOld = vect.getTrimIndex();
        int trimIndexNew = trimIndexOld;
        int irow = 1; 
        boolean busy = true; // while no deep step was found
        while (busy && irow <= len) { 
            vnew = new BigVector(len - irow);
            for (int icol = 0; icol < len - irow - 1; icol ++) { // build the differences
                BigInteger diff = diffs.getBig(irow - 1, icol + 1).subtract(diffs.getBig(irow - 1, icol));
                vnew.set(icol, diff);
            } // for icol
            diffs.setBigVector(irow, vnew);
            trimIndexNew = vnew.getTrimIndex();
            if (debug >= 1) {
                System.out.println("irow=" + irow + ", trimIndexNew=" + trimIndexNew + ", vect=" + vnew.toString());
            }
            if (trimIndexOld - trimIndexNew >= DEEP_STEP) {
                busy = false;
            } else {
                trimIndexOld = trimIndexNew;
                irow ++;
            }
        } // while irow
        int deepRow = irow;
        BigVectorArray result = new BigVectorArray(2); // initTerms, diffLeads
        BigVector initTerms = null;
        if (trimIndexNew < 0) {
            initTerms = new BigVector(new int[0]); // BigVector(0) returns 1 element 0!
        } else {
            initTerms = new BigVector(trimIndexNew + 1);
            for (int icol = 0; icol <= trimIndexNew; icol ++) {
                initTerms.set(icol, vect.getBig(icol));
            } // for icol
        }
        result.setBigVector(0, initTerms);
        if (! busy) { // deep step was found
            BigVector leads = new BigVector(deepRow + 1);
            for (irow = 0; irow <= deepRow; irow ++) {
                leads.setBig(irow, diffs.getBig(irow, trimIndexNew + 1));
            } // for irow
            result.setBigVector(1, leads);
            // deep step was found
        } else {
            result.setBigVector(1, new BigVector(new int[0]));
        }
        if (debug >= 1) {
            System.out.println("getDiffLeads=" + result.toString());
        }
        return result;
    } // getDiffLeads

    /** Build the {@link Polynomial} in <code>n</code>.
     *  @param offset first index, starting value of <code>n</code>
     *  @param diffs {@link BigVector} with leading terms of successive differences
     *  @return the {@link Polynommial}
     *  <pre>
     *  Example: A346376, a(n) = n^4 +14*n^3 + 63*n^2 + 98*n + 28
     *  = 28, 204, 604, 1348, 2580, 4468, 7204, 11004, 16108, ...
     *  index: [0]   [1]     [2]       [3]       [4]
     *  diffs:  28 , 176,    224,      120,      24,    0, 0 ...; idif=4
     *  icef    coeffs:
     *   4                                       24
     *   3                             120     + 24*n
     *   2                   224     + 120*n   + 12*n^2
     *   1           176   + 224*n   +  60*n^2 +  4*n^3
     *   0      28 + 176*n + 112*n^2 +  20*n^3 +  1*n^4
     *  </pre>
     */
    public PolyFraction integrate(int offset, BigVectorArray bva) {
    	BigVector initTerms = bva.getBigVector(0);
    	BigVector diffs     = bva.getBigVector(1);
    	int initLen = initTerms.size();
        int diffLen = diffs    .size();
        int idif = diffLen - 1;
        while (idif >= 0 && diffs.getBig(idif).equals(BigInteger.ZERO)) {
            idif --;
        } // while
        // now diffs[idif] != 0
        RationalVector coeffs = new RationalVector(idif + 1);
        int icef = idif;
        while (icef >= 0) { // backwards
            coeffs.set(icef, BigRational.valueOf(diffs.getBig(icef)));
            for (int jcef = icef + 2; jcef <= idif; jcef ++) { // extract exponents
                int nexp = jcef - icef; // new exponent
                if (debug >= 2) {
                    System.out.println("icef=" + icef + ", jcef=" + jcef + ", nexp=" + nexp + ", coeffs = " + coeffs.toString());
                }
                BigRational quot = coeffs.getRat(jcef).divide(BigInteger.valueOf(nexp));
                coeffs.set(jcef, quot);
            } // for jcef
            icef --;
        } // while icef
        if (debug >= 1) {
            System.out.println("coeffs = " + coeffs.toString());
        }
        StringBuilder polys = new StringBuilder();
        for (int ipol = 0; ipol <= idif; ipol ++) {
            String coeff = coeffs.getRat(ipol).toString();
            polys.append(coeff.startsWith("-") ? "" : "+");
            polys.append(coeff);
            for (int jpol = 1; jpol <= ipol; jpol ++) {
                polys.append("*(n-");
                polys.append(String.valueOf(jpol - 1));
                if (offset > 0) {
                    polys.append("-");
                    polys.append(String.valueOf(  offset));
                } else if (offset < 0) {
                    polys.append("+");
                    polys.append(String.valueOf(- offset));
                }
                if (initLen > 0) {
                    polys.append("-");
                    polys.append(String.valueOf(  initLen));
                } else if (offset < 0) {
                    polys.append("+");
                    polys.append(String.valueOf(- initLen));
                }
                polys.append(")");
            } // for jpol
        } // for ipol
        if (debug >= 2) {
            System.out.println("polys=" + polys.toString());
        }
        return PolyFraction.parse(polys.toString());
    } // integrate

    /** Return a lambda expression for the polynomial with initial terms.
     *  @param offset first index
     *  @param initTerms {@link BigVector} of initial terms
     *  @param polyf {@link PolynomialFraction} with numerator and common denominator
     *  @param a lambda expression of the form 
     *  "n -> (n - offset < initLen) ? Z.valueOf(new long [] { 1,2,3 }[n - offset]) : Z.valueOf(n).pow(2)"
     */
    public static String toLambda(int offset, BigVector initTerms, PolyFraction polyf) {
        String result = polyf.toLambda();
        String ofs = offset < 0 ? "+" + String.valueOf(-offset) : (offset > 0 ? String.valueOf(-offset) : "");
        if (initTerms.size() > 0) {
            result = result.replace("->"
                , "-> (n" + ofs + " < " + initTerms.size() + ") ? Z.valueOf(new long[] { " 
                + initTerms.toString().replaceAll("[\\[\\]]", "") + " }[n" + ofs + "]) :");
        }
        return result;
    } // toLambda

    /** Test method.
     *  @param args command line arguments: -d debug -o offset -comp terms
     *  For example:
     *  <pre>
     *  A001047 a(n) = 3^n - 2^n.
     *  (Formerly M3887 N1596)
     *  0, 1, 5, 19, 65, 211, 665, 2059, 6305, 19171, 58025, 175099, 527345, 1586131, 4766585,
     *  </pre>
     */
    public static void main(String[] args) {
        PolynomialIntegrator.debug = 0;
        String aNumber = "A346376";
        BigVector terms = new BigVector("28,204,604,1348,2580,4468,7204,11004,16108,22780,31308,42004,55204,71268,90580,113548,140604,172204,208828,250980,299188,354004");
        PolynomialIntegrator polint = new PolynomialIntegrator();
        int offset = 0;
        try {
            if (args.length == 0) {
                System.out.print("Usage: java org.teherba.ramath.sequence.PolynomialIntegrator [options]\n"
                        + "    -d debug level (0=none=default, 1=some, 2=more)\n"
                        + "    -o offset (default 0)\n"
                        + "    -comp terms\n"
                        );
            } else { // some arguments
                int termNo = 0;
                int iarg = 0;
                while (iarg < args.length) {
                    String oper = args[iarg ++];
                    if (false) {

                    } else if (oper.equals    ("-a")) {
                        polint.aseqno = args[iarg ++];

                    } else if (oper.equals    ("-d")) {
                        polint.debug = Integer.parseInt(args[iarg ++]);

                    } else if (oper.startsWith("-comp")) {
                        terms = new BigVector(args[iarg ++]);

                    } else if (oper.equals    ("-o")) {
                        offset       = Integer.parseInt(args[iarg ++]);

                    } else {
                        System.out.println("invalid operation \"" + oper + "\"");
                    }
                } // while iarg
            } // some arguments
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
        }
        BigVectorArray bva = polint.getDiffLeads(terms); // initTerms, diffLeads
        System.out.println("bva="       + bva.toString());
        if (bva.getBigVector(1).size() > 0) {
            PolyFraction polyf = polint.integrate(offset, bva);
            System.out.println("polyf="     + polyf.toString());
            BigVector[] vect2 = polyf.toVectors();
            System.out.println("vectors="   + vect2[0].toString() + "/" + vect2[1].toString() + ", " + bva.getBigVector(0).toString());
            System.out.println("lambda="    + polint.toLambda(offset, bva.getBigVector(0), polyf));
        } else {
            System.out.println("no deep step found");
        }
    } // main

} // PolynomialIntegrator
