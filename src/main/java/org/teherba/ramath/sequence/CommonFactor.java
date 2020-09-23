/*  Determine a possible common factor from the end of the term list.
 *  @(#) $Id: CommonFactor.java $
 *  2020-09-23, Georg Fischer: proposed by Hugo Pfoertner
*/
/*
 * Copyright 2020 Dr. Georg Fischer <dr.georg.fischer@gmail.com>
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
 *  CommonFactor[{1,0,0,9,-9},{1,9,3,15,6},20] gives
 *  OEIS A309791 Expansion of (1 + 8*x - 6*x^2 + 12*x^3 - 18*x^4)/(1 - x - 9*x^4 + 9*x^5).
 *  @author Dr. Georg Fischer
 */
public class CommonFactor {
    public final static String CVSID = "@(#) $Id$";
    /** Debugging level: 0 = none, 1 = some, 2 = more */
    public static int debug = 0;

    /** No-args Constructor
     */
    public CommonFactor() {
    } // no-args Constructor

    /** Compute one term <em>a(n+1)</em> from the existing terms <em>a(n), a(n-1), a(n-k)</em>.
     *  @param seq {@link Sequence} with existing terms
     *  @param np1 index of a(n+1), the new term to be computed
     */
    public static void process(Sequence seq) {
        int ilast = seq.size() - 1;
        BigInteger term = seq.getBig(ilast --);
        BigInteger oldGCD = term.abs();
        BigInteger newGCD = null;
        long bfimax = seq.getBfimax();
        boolean busy = true;
        while (ilast >= 0 && busy) {
            term = seq.getBig(ilast --);
            newGCD = term.gcd(oldGCD);
            if (newGCD.equals(BigInteger.ONE)) {
                busy = false;
                if (ilast < 8 && bfimax - ilast >= 16) {
                    System.out.println(seq.getANumber() + "\t" + oldGCD.toString() + "\t" + ilast + "\t" + seq.getBfimax());
                }
            } else {
                oldGCD = newGCD;
            }
        } // while isig
        if (busy && bfimax - ilast >= 16) {
                    System.out.println(seq.getANumber() + "\t" + oldGCD.toString() + "\t" + ilast + "\t" + seq.getBfimax());
        }
    } // process

    /** Test method.
     *  @param args command line arguments:
     *  -d mode, and the arguments of {@link SequenceReader}
     */
    public static void main(String[] args) {
        CommonFactor.debug = 0;
        SequenceReader reader = new SequenceReader();
        Sequence seq = null;
        try {
            int iarg = 0;
            while (iarg < args.length) {
                String oper = args[iarg ++];
                if (false) {
                } else if (oper.equals    ("-d")) {
                    CommonFactor.debug = Integer.parseInt(args[iarg ++]);
                } else {
                    reader = SequenceReader.configure(-- iarg, args);
                    while (reader.hasNext()) {
                        seq = reader.next();
                        CommonFactor.process(seq);
                    } // while hasNext
                    iarg = args.length; // break loop
                }
            } // while iarg
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
        }
    } // main

} // CommonFactor
