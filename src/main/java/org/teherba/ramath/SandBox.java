/*  Collection of several experimental methods
 *  @(#) $Id: SandBox.java 808 2011-09-20 16:56:14Z gfis $
 *  2015-10-05: -bachet
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
import  org.teherba.ramath.BigRational;
import  org.teherba.ramath.ContinuedFraction;
import  org.teherba.ramath.PrimeFactorization;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.symbolic.Polynomial;
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

    /** Evaluateds Bachet's duplication formula for Mordell equations
     *  <pre>
     *  y^2 = x^3 + c
     *  </pre>
     *  If a forth argument n is given, the duplication is iterated n times.
     *  @param args commandline arguments: x, y, c and optionally n.
     */
    public void processBachet(String[] args) {
        int iarg = 1;
        if (args.length - iarg <= 3) {
            // input is x,y,c of a Mordell equation y^2 = x^3 + c
            Polynomial x = Polynomial.parse(args[iarg ++]);
            Polynomial y = Polynomial.parse(args[iarg ++]);
            Polynomial c = Polynomial.parse(args[iarg ++]);
            Polynomial denomX = x.pow(4).subtract((new Polynomial("8")).multiply(c).multiply(x));
            Polynomial nominX = (new Polynomial("4")).multiply(y.pow(2));
            Polynomial denomY =         (new Polynomial("8")).multiply(c.pow(2)
                                ).subtract(
                                        (new Polynomial("20")).multiply(c).multiply(x.pow(3))
                                ).subtract(
                                        x.pow(6)
                                );
            Polynomial nominY = (new Polynomial("8")).multiply(y.pow(3));
            System.out.println("y^2 = x^3 + c with"
                    +  " x = " + x.toString()
                    + ", y = " + y.toString()
                    + ", c = " + c.toString());
            System.out.print  ("x -> (" + denomX.toString() + ") / (" + nominX.toString() + "), ");
            System.out.println("y -> (" + denomY.toString() + ") / (" + nominY.toString() + ")");
            // 3 argumnets
        } else { // 4 arguments
            // input is x,y,c,n of a Mordell equation y^2 = x^3 + c with Bachet's formula repeated n times
            BigRational x = new BigRational(args[iarg ++]);
            BigRational y = new BigRational(args[iarg ++]);
            BigRational c = new BigRational(args[iarg ++]);
            System.out.println("y^2 = x^3 + c with"
                    +  " x = " + x.toString()
                    + ", y = " + y.toString()
                    + ", c = " + c.toString());
            int n = Integer.parseInt(args[iarg ++]);
            while (n > 0) {
                BigRational newX =  x.pow(4).subtract((new BigRational("8")).multiply(c).multiply(x))
                                    .divide((new BigRational("4")).multiply(y.pow(2)));
                BigRational newY =  ((new BigRational("8")).multiply(c.pow(2)
                                    ).subtract(
                                            (new BigRational("20")).multiply(c).multiply(x.pow(3))
                                    ).subtract(
                                            x.pow(6)
                                    ))
                                    .divide((new BigRational("8")).multiply(y.pow(3)));
                x = newX;
                y = newY;
                System.out.println(""
                        + "->  " + (x.getDecimal().toString() + "                ").substring(0, 16)
                        + "    " + (new ContinuedFraction(x)).toString()
                        );
                System.out.println(""
                        + "    " + (y.getDecimal().toString() + "                ").substring(0, 16)
                        + "    " + (new ContinuedFraction(y)).toString()
                        );
                n --;
            } // while n
        } // 4 arguments
    } // processBachet

    /** Reads lines with numbers a, b, c, d such that a^4 + b^4 = c^4 + d^4.
     *  Checks these tuples whether they are primitive,
     *  whether they fulfill the powersum property,
     *  and show the prime factorizations of the sum a^4 + b^4 and of the sum a^2 + b^2
     *  @param fileName name of file containing line with tuples of 4 numbers
     *  The results indicate that there is no prime factor = 3 mod 4.
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
                BigInteger sum4 = BigInteger.valueOf(vect.get(0)).pow(4)
                        .add     (BigInteger.valueOf(vect.get(1)).pow(4));
                PrimeFactorization pmfz4 = new PrimeFactorization(sum4);
                System.out.print(",\tsum^4=" + sum4.toString());
                System.out.print("\t=" + pmfz4.toString());
                System.out.print("\t, mod(4)=" + pmfz4.modulus(4).toString(","));
                BigInteger sum2 = BigInteger.valueOf(vect.get(0)).pow(2)
                        .add     (BigInteger.valueOf(vect.get(1)).pow(2));
                PrimeFactorization pmfz2 = new PrimeFactorization(sum2);
                System.out.print(",\tsum^2=" + sum2.toString());
                System.out.print("\t=" + pmfz2.toString());
                System.out.print("\t, mod(4)=" + pmfz2.modulus(4).toString(","));
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
     *  <li>-bachet x y c [n]</li>
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
            } else if (opt.startsWith("-bachet")) {
                sandBox.processBachet(args);
            } else {
                System.err.println("invalid option " + opt);
            } // some option
        } // at least 1 argument
    } // main

} // SandBox
