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
import  org.teherba.ramath.linear.BigVector;
import  org.teherba.ramath.linear.BigVectorArray;
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

    /** No-args Constructor
     */
    public PolynomialIntegrator() {
    } // Constructor()

    /** Compute the leading terms of successive differences.
     *  @param order length of the sequence
     *  @param vect {@link BigVector} with existing terms
     *  @return a {@link BigVector} with the leading terms
     */
    public BigVector getDiffLeads(int order, BigVector vect) {
        BigVector result = new BigVector(order + 1);
        BigVector vold = vect;
        result.setBig(0, vold.getBig(0)); // first term of the sequence
        for (int iord = 1; iord <= order; iord ++) { // build successive differences
            BigVector vnew = new BigVector(order);
            boolean isZero = true;
            for (int iv = 0; iv < order - iord - 1; iv ++) {
                BigInteger diff = vold.getBig(iv + 1).subtract(vold.getBig(iv));
                if (! diff.equals(BigInteger.ZERO)) {
                    isZero = false;
                }
                vnew.setBig(iv, diff);
            } // for iv
            result.setBig(iord, vnew.getBig(0));
            vold = vnew;
        } // for iord
        if (debug >= 1) {
            System.out.println("getDiffLeads(" + order + ", " + vect.toString() + ") = " + result.toString());
        }
        return result;
    } // getDiffLeads

    /** Build the {@link Polynomial} in <code>n</code>.
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
    public Polynomial integrate(BigVector diffs) {
        int diffLen = diffs.size();
        int idif = diffLen - 1;
        while (diffs.getBig(idif).equals(BigInteger.ZERO) && idif >= 0) {
            idif --;
        } // while
        // now diffs[idif] != 0
        BigVector coeffs = new BigVector(idif + 1);
        int icef = idif;
        while (icef >= 0) { // backwards
            coeffs.setBig(icef, diffs.getBig(icef));
            for (int jcef = icef + 2; jcef <= idif; jcef ++) { // extract exponents
                int nexp = jcef - icef; // new exponent
            /*
                if (debug >= 2) {
                    System.out.println("icef=" + icef + ", jcef=" + jcef + ", nexp=" + nexp + ", coeffs = " + coeffs.toString());
                }
            */
                BigInteger[] quot = coeffs.getBig(jcef).divideAndRemainder(BigInteger.valueOf(nexp));
                coeffs.setBig(jcef, quot[0]);
                if (! quot[1].equals(BigInteger.ZERO)) { // remainder != 0
                    System.out.println("no even division in integrate: " + coeffs.getBig(jcef).toString() + " / " + jcef);
                }
            } // for jcef
            icef --;
        } // while iord
        if (debug >= 1) {
            System.out.println("coeffs = " + coeffs.toString());
        }
        StringBuilder polys = new StringBuilder();
        for (int ipol = 0; ipol <= idif; ipol ++) {
            polys.append("+");
            polys.append(coeffs.getBig(ipol).toString());
            for (int jpol = 1; jpol <= ipol; jpol ++) {
                polys.append("*(n-");
                polys.append(String.valueOf(jpol - 1));
                polys.append(")");
            } // for jpol
        } // for ipol
        return new Polynomial(polys.toString());
    } // integrate

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
        PolynomialIntegrator.debug = 0;
        String aNumber = "A000000";
        SequenceReader reader = new SequenceReader(15);
        Sequence seq = null;
        PolynomialIntegrator polint = new PolynomialIntegrator();
        int offset = 0;
        try {
            if (args.length == 0) {
                System.out.print("Usage: java org.teherba.ramath.sequence.PolynomialIntegrator [options]\n"
                        + "    -d debug level (0=none, 1=some, 2=more)\n"
                        + "    -comp terms\n"
                        + "    -find filename [noterms [start]]\n"
                        );
            } else { // some arguments
                int termNo = 0;
                int iarg = 0;
                while (iarg < args.length) {
                    String oper = args[iarg ++];
                    if (false) {

                    } else if (oper.equals    ("-d")) {
                        polint.debug = Integer.parseInt(args[iarg ++]);

                    } else if (oper.startsWith("-comp")) {
                        BigVector terms = new BigVector(args[iarg ++]);
                        int order = terms.size();
                        BigVector diffs = polint.getDiffLeads(order, terms);
                        System.out.println("diffs=" + diffs.toString());
                        Polynomial protoPoly = polint.integrate(diffs);
                        System.out.println("protoPoly=" + protoPoly.toString());

                    } else if (oper.startsWith("-find")) {
                        String fileName = args[iarg ++];
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

} // PolynomialIntegrator