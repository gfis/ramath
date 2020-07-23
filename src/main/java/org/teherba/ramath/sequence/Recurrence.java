/*  Superclass for recurrences
 *  @(#) $Id: Recurrence.java $
 *  2019-08-25, Georg Fischer
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
import  org.teherba.ramath.sequence.Sequence;
import  org.teherba.ramath.linear.BigVector;
import  java.math.BigInteger;

/** General methods for recurrences
 *  @author Dr. Georg Fischer
 */
public class Recurrence {
    public final static String CVSID = "@(#) $Id: Recurrence.java 194 2009-07-07 21:10:32Z gfis $";

    /** List of initial terms (at least as long as the signature) */
    BigVector initTerms;

    /** No-args Constructor
     */
    public Recurrence() {
    } // no-args Constructor

    /** Compute one term <em>a(n+1)</em> from the existing terms <em>a(n), a(n-1) ...</em>.
     *  This is only a dummy implementation -
     *  the method is typically overwritten by the subclass.
     *  @param seq {@link Sequence} with existing terms
     *  @param np1 index of the new term to be computed
     */
    public void compute(Sequence seq, int np1) {
        seq.setBig(np1, BigInteger.ONE);
    } // compute

    /** Generates a sequence from the recurrence.
     *  @param termNo number of terms to be generated
     *  @return {@link Sequence}
     */
    public Sequence generate(int termNo) {
        Sequence result = new Sequence(termNo);
        int ncur = 0;
        while (ncur < initTerms.size()) {
            result.setBig(ncur, initTerms.getBig(ncur));
            ncur ++;
        } // while init
        while (ncur < termNo) { // compute
            compute(result, ncur); // a(n+1) = 17*a(n) + ...
            ncur ++;
        } // compute
        return result;
    } // generate

    /** Gets the initial terms of the recurrence
     *  @return a {@link BigVector}.
     */
    public BigVector getInitTerms() {
        return initTerms;
    } // getInitTerms

    /** Test method.
     *  @param args command line arguments: none
     */
    public static void main(String[] args) {
        try {
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
            System.err.println("usage: java org.teherba.ramath.sequence.Recurrence");
        }
    } // main

} // Recurrence
