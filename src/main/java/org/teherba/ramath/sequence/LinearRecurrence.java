/*  Linear recurrence with constant coefficients
 *  @(#) $Id: LinearRecurrence.java 194 2009-07-07 21:10:32Z gfis $
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
import  org.teherba.ramath.linear.BigVector;
import  org.teherba.ramath.sequence.Sequence;
import  java.math.BigInteger;
import  java.util.ArrayList;

/** Linear recurrence with constant coefficients. 
 *  The interface is close to Mathematica's, for example
 *  LinearRecurrence[{1,0,0,9,-9},{1,9,3,15,6},20].
 *  @author Dr. Georg Fischer
 */
public class LinearRecurrence extends Recurrence {
    public final static String CVSID = "@(#) $Id: LinearRecurrence.java 194 2009-07-07 21:10:32Z gfis $";

    /** List of constant coefficients.*/
    BigVector signature;
    
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
    public static BigVector find(Sequence seq, int termNo) {
        BigVector result = null;
        ArrayList<BigVector> table = new ArrayList<BigVector>(16);
        table.add(new BigVector(termNo, BigInteger.ONE));
        BigVector vect1 = new BigVector(termNo);
        BigVector vect2 = null;
        System.arraycopy(seq.getBigValues(), 0, vect1.getBigValues(), 0, termNo);
        table.add(vect1);
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
            	if (icol <= ioff || icol >= termNo - ioff) { // outside
            		vect2.setBig(icol, BigInteger.ZERO);
            	} else {
                	BigInteger tabN = table.get(irow - 1).getBig(icol);
                	if (! tabN.equals(BigInteger.ZERO)) {
                	    BigInteger tabS = 
                	            table.get(irow).getBig(icol    ).pow(2).subtract(
                	            table.get(irow).getBig(icol - 1).multiply(
                	            table.get(irow).getBig(icol + 1)         )
                	            ).divide(tabN);
                	    vect2.setBig(icol, tabS);
                	    if (! tabS.equals(BigInteger.ZERO)) {
                	        allZero = false;
                	    }
                	} else {
                	    System.out.println("Zero in LinearRecurrence.find in row=" + (irow - 1) + ", col=" + icol);
                	    busy = false;
                	}
                } // inside
                icol ++;
            } // while itab
            table.add(vect2);
            busy = ! allZero;
            irow ++;
        } // while busy
        if (allZero) { 
        	for (int itab = 0; itab <= irow; itab ++) {
        		System.out.println(table.get(itab).toString());
        	} // for
        	result = vect1;
        }
        return result;
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
                    Sequence seq = linRec.generate(termNo);
                    seq.printBFile();
                } else if (oper.startsWith("-find")) {
                    String fileName = args[iarg ++];
                    termNo = Integer.parseInt(args[iarg ++]);
                    Sequence seq = (new SequenceReader()).readBFile(fileName, termNo);
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
