/*  Collection of several experimental methods
 *  @(#) $Id: SandBox.java 808 2011-09-20 16:56:14Z gfis $
 *  2015-08-31, Georg Fischer: copied from MatrixGenerator
 */
/*
 * Copyright 2015 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.PrimeFactorization;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.symbolic.PolyVector;
import  java.io.BufferedReader;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.math.BigInteger;
import  org.apache.log4j.Logger;

/** Collection of several experimental methods:
 *  <ul>
 *  <li>{@link #process422} - {@link PrimeFactorization} of EEC(4,2,2) data</li>
 *  </ul>
 *  @author Dr. Georg Fischer
 */
public class SandBox {
    public final static String CVSID = "@(#) $Id: SandBox.java 808 2011-09-20 16:56:14Z gfis $";

    /** log4j logger (category) */
    private Logger log;

    /** No-args Constructor
     */
    public SandBox() {
        log = Logger.getLogger(SandBox.class.getName());
    } // no-args Constructor

    //===========================
    // Utility Methods
    //===========================

    //===========================
    // Experimental methods
    //===========================

    /** Reads lines with numbers a, b, c, d such that a^4 + b^4 = c^4 + d^4.
     *  Checks these tuples whether they are primitive,
     *  whether they fulfill the powersum property,
     *  and show the prime factorizations of the sum a^4 + b^4
     *  @param fileName name of file containing line with tuples of 4 numbers
     */
    public void process422(String fileName) {
        String line = null; // current line from text file
        try {
            BufferedReader lineReader = new BufferedReader
                    ( (fileName.equals("-"))
                    ? new InputStreamReader(System.in)
                    : new FileReader(fileName)
                    );
            int limit = 128;
            while (limit > 0 && (line = lineReader.readLine()) != null) { // read and process lines
                Vector vect = new Vector(line.trim());
                System.out.print(vect.toString());
                int gcdv = vect.gcd();
                if (gcdv > 1) {
                    System.out.print(" gcd=" + gcdv);
                }
                if (! vect.isPowerSum(4, 2, 2)) {
                    System.out.print(", no powerSum(4)");
                }
                BigInteger sum = BigInteger.valueOf(vect.get(0)).pow(4)
                        .add    (BigInteger.valueOf(vect.get(1)).pow(4));
                PrimeFactorization pmfz = new PrimeFactorization(sum);
                System.out.print(",\tsum=" + sum.toString());
                System.out.print("\t=" + pmfz.toString());
                System.out.print("\t, mod(4)=" + pmfz.modulus(4).toString(","));
                System.out.println();
                limit --;
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
    } // process422

    //==========================
    // Main
    //==========================
    /** Test method.
     *  @param args command line arguments:
     *  <ul>
     *  <li>-eec422 filename</li>
     *  </ul>
     */
    /*-------------------- Test Driver --------------------*/
    public static void main(String[] args) {
        SandBox sandBox = new SandBox();
        int iarg = 0;
        if (false) {
        } else if (args.length == 0) {

        } else { // some option
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.startsWith("-eec422")) {
                String fileName = args[iarg ++];
                sandBox.process422(fileName);
            } else {
                System.err.println("invalid option " + opt);
            } // some option
        } // at least 1 argument
    } // main

} // SandBox
