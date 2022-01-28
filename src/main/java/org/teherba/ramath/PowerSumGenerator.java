/*  Take the coefficients of a power sum generating formula and generate tuples
 *  @(#) $Id: PowerSumGenerator.java 808 2011-09-20 16:56:14Z gfis $
 *  2013-07-16, Georg Fischer: copied from ParameterEquation
 */
/*
 * Copyright 2013 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.util.IntegerExpander;
import  java.io.BufferedReader;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.util.Arrays;
import  org.apache.logging.log4j.Logger;
import  org.apache.logging.log4j.LogManager;

/** Take the coefficients of a power sum generating formula and generate tuples
 *  by inserting increasing variable values obtained from an {@link IntegerExpander}.
 *
 *  @author Dr. Georg Fischer
 */
public class PowerSumGenerator {
    public final static String CVSID = "@(#) $Id: PowerSumGenerator.java 808 2011-09-20 16:56:14Z gfis $";

    /** log4j logger (category) */
    private Logger log;

    /** No-args Constructor
     */
    public PowerSumGenerator() {
        log = LogManager.getLogger(PowerSumGenerator.class.getName());
    } // no-args Constructor

    //===========================
    // Utility Methods
    //===========================
    /** Computes some power of an integer
     *  @param exp exponent
     *  @param base number to be raised to the 'exp'th power
     *  @return base**exp
     */
    public int pow(int base, int exp) {
        int result = 1;
        while (exp > 0) {
            result *= base;
            exp --;
        } // while exp
        return result;
    } // pow

    /** Computes some power of a long integer
     *  @param exp exponent
     *  @param base number to be raised to the 'exp'th power
     *  @return base**exp
     */
    public long power(long base, int exp) {
        long result = 1;
        while (exp > 0) {
            result *= base;
            exp --;
        } // while exp
        return result;
    } // power

    /** Computes the greatest common divisor (GCD) of 2 integers
     *  @param a first integer
     *  @param b second integer
     *  @return gcd(a,b)
     */
    public int gcd(int a, int b) {
        int result = 1;
        if (Math.abs(b) > Math.abs(a)) { // exchange
        	int temp = b; b = a; a = temp;
        }
        if (b == 0) {
            result = a;
        } else {
            int rest = a % b;
            while (rest != 0) {
                a = b;
                b = rest;
                rest = a % b;
            } // while
            result = b;
        } // b != 0
        return Math.abs(result);
    } // gcd(a, b)

    /** Computes the greatest common divisor (GCD) of an array of integers (
     *  (containing at least 2 elements),
     *  and divides the array by the GCD
     *  @param nums an array of integers, is divided by the GCD
     *  @return greatest common divisor
     */
    public int gcd(int[] nums) {
        int result = nums[0];
        int
        inum = 1;
        while (inum < nums.length) {
            result = gcd(result, nums[inum ++]);
        } // while
        inum = 0;
        if (result != 1 && result != 0) {
            while (inum < nums.length) {
                nums[inum ++] /= result;
            } // while
        } // != 0, 1
        return result;
    } // gcd(int[])

    //===========================
    // Generating Methods
    //===========================

    /** Generates tuples for power sums and prints them.
     *  @param maxDigit expand the variables' values up to this limit
     *  @param numVars number of variables to be expanded
     *  @param exp exponent for the final equal sum of like powers = length of a tuple - 1
     *  @param karg index of first coefficients to be processed
     *  @param args array of coefficients:
     *  for example 3 univariate Pythagorean tuples:
     <pre>
     (c2*x^2 + c1*x + c0)^2 - (a2*x^2 + a1*x + a0)^2 - (b2*x^2 + b1*x + b0)^2
      c2       c1     c0       a2       a1     a0       b2       b1     b0
     </pre>
     */
    public void generate(int maxDigit, int numVars, int exp, int karg, String[] args) {
        IntegerExpander dispenser = new IntegerExpander(numVars, maxDigit);
        StringBuffer coefficients = new StringBuffer(128);
        int[] coeffs = new int[args.length - karg];
        int ntuple = coeffs.length / (exp + 1);
        int icoeff = 0;
        int iarg = karg;
        while (icoeff < coeffs.length) { // copy them into an integer array
            coefficients.append(" ");
            if (icoeff % ntuple == 0) {
                coefficients.append("  ");
            }
            coefficients.append(args[iarg]);
            coeffs[icoeff] = 0;
            try {
                coeffs[icoeff] = Integer.parseInt(args[iarg]);
            } catch (Exception exc) {
            }
            // System.out.println("# [" + icoeff + "] " + args[iarg] + "=>" + coeffs[icoeff]);
            iarg ++;
            icoeff ++;
        } // while icoeff

        switch (numVars) {
            case 1: // univariate: (h3*x^3 + h2*x^2 + h1*x + h0)^3 - (a3*x^3 + a2*x^2 + a1*x + a0)^3 - ...
                while (dispenser.hasNext()) {
                    int[] values = dispenser.next();
                    int x = values[0];
                    long powerSum  = 0L;
                    int[] sums = new int[ntuple];
                    icoeff = 0;
                    int
                    ituple = 0;
                    while (ituple < ntuple) {
                        int sum = 0;
                        int iexp = exp;
                        while (iexp >= 0) {
                            sum += coeffs[icoeff ++];
                            if (iexp > 0) {
                                sum *= x;
                            }
                            iexp --;
                        } // while iexp

                        if (ituple == 0) {
                            powerSum += power((long) sum, exp);
                        } else {
                            powerSum -= power((long) sum, exp);
                        }
                        sums[ituple] = sum;
                        ituple ++;
                    } // while ituple 1
                    // preprocess: divide by GCD
                    int temp = 0;
                    int factor = gcd(sums);
                    int imax = 0;
                    int smax = Math.abs(sums[imax]);
                    ituple = 1;
                    while (ituple < ntuple) {
                        int vsum = Math.abs(sums[ituple]);
                        if (vsum > smax) {
                            imax = ituple;
                            smax = vsum;
                        }
                        ituple ++;
                    } // while ituple 2
                    if (imax != 0) { // put maximum on the left side
                        temp       = - sums[imax];
                        sums[imax] = - sums[0];
                        sums[0]    = temp;
                    }
                    if (sums[0] < 0) { // make positive
                        ituple = 0;
                        while (ituple < ntuple) {
                            sums[ituple] = - sums[ituple];
                            ituple ++;
                        } // while ituple 3
                    } // make positive
                    Arrays.sort(sums, 1, sums.length); // right side ascending
                    ituple = 0;
                    while (ituple < ntuple) {
                        System.out.print(" " + sums[ituple]);
                        ituple ++;
                    } // while ituple 2
                    if (powerSum != 0L) { // tuple is invalid
                        System.out.print(" # invalid tuple");
                    } // invalid tuple
                    System.out.println(" # exp=" + exp + " x=" + x + "\tgen=" + coefficients + (factor != 1 ? " factor=" + factor : ""));
                } // while hasNext
                break;

            default:
            case 2: // bivariate: not yet implemented
                System.err.println("multivariate not yet implemented");
                break;
        } // switch(width)
        System.out.println("#----------------");
    } // generate

    /** Take remaining arguments and run one generation
     *  @param maxDigit expand the variables' values up to this limit
     *  @param karg index of first argument to be processed
     *  @param args array of arguments:
     <pre>
        -v vars number of variables
        -e exp  exponent
        coeffs list of integer coefficient tuples
     </pre>
     */
    public void process1(int maxDigit, int karg, String[] args) {
        int nvar = 1;
        int exp = 3; // default
        int iarg = karg;
        boolean busy = true;
        while (busy && iarg < args.length) {
            String opt = args[iarg ++];
            if (opt.matches("\\-[a-z].*")) {
                if (false) {
                } else if (opt.startsWith("-v")) {
                    try {
                        nvar = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else if (opt.startsWith("-e")) {
                    try {
                        exp  = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else {
                    System.err.println("**PowerSumGenerator.process1: invalid option \"" + opt + "\"");
                }
            } else {
                busy = false;
            }
        } // while iarg
        generate(maxDigit, nvar, exp, iarg - 1, args);
    } // process1

    /** Take arguments from a file and run one generation per line
     *  @param maxDigit expand the variables' values up to this limit
     *  @param fileName name of file containing argument lines:
     <pre>
        -v vars number of variables
        -e exp  exponent
        coeffs list of integer coefficient tuples
     </pre>
     */
    public void processFile(int maxDigit, String fileName) {
        String line = null; // current line from text file
        try {
            BufferedReader lineReader = new BufferedReader
                    ( (fileName.equals("-"))
                    ? new InputStreamReader(System.in)
                    : new FileReader(fileName)
                    );
            int igen = 0;
            while ((line = lineReader.readLine()) != null) { // read and process lines
                line = line.trim();
                if (line.startsWith("gen")) { // process such lines only
                    igen ++;
                    System.out.println("# formula " + igen);
                    String[] args = line.split("\\s+");
                    // System.out.println("# line with " + args.length + " arguments: " + line);
                    process1(maxDigit, 1, args); // skip over "gen"
                } else {
                    // ignore all other lines
                }
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
    } // processFile

    //==========================
    // Main
    //==========================
    /** Test method.
     *  @param args command line arguments:
     *  <ul>
     *  <li>-l limit</li>
     *  <li>-f filename from where to read the following arguments line by line</li>
     *  <li>-v number of variables<li>
     *  <li>-e exponent</li>
     *  <li>coefficients</li>
     *  </ul>
     */
    public static void main(String[] args) {
        String fileName = null; // default: read from arguments
        int limit = 128;
        int factor = 0;
        PowerSumGenerator generator = new PowerSumGenerator();
        boolean busy = true;
        int iarg = 0;
        while (busy && iarg < args.length) {
            String opt = args[iarg ++];
            if (opt.matches("\\-\\w.*")) {
                if (false) {
                } else if (opt.startsWith("-l")) {
                    try {
                        limit = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else if (opt.startsWith("-g")) {
                    try {
                        factor = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    System.out.println("gcd(" + limit + ", " + factor + ") = " + generator.gcd(limit, factor));
                    System.exit(0);
                } else if (opt.startsWith("-f")) {
                    fileName = args[iarg ++];
                } else {
                    busy = false;
                }
            } else {
                busy = false;
            }
        } // while iarg
        if (! busy) {
            generator.process1(limit, iarg - 1, args);
        } else if (fileName != null) { // read arguments line by line
            generator.processFile(limit, fileName);
        } // fileName != null

    } // main

} // PowerSumGenerator
