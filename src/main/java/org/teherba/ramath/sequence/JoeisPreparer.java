/*  JoeisPreparer: prepare *.gen files for joeis-lite
 *  @(#) $Id$
 *  2020-04-01: ShuntingYard for dex
 *  2020-02-11: -bva
 *  2019-12-08: reproduce^; offset1 is always read
 *  2019-12-04: Georg Fischer: copied from PolyFraction.java
 */
/*
 * Copyright 2019 Dr. Georg Fischer <dr.georg.fischer at gmail.com>
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
import  org.teherba.ramath.linear.BigVectorArray;
import  org.teherba.ramath.symbolic.PolyFraction;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.PolyVector;
import  org.teherba.ramath.symbolic.ShuntingYard;
import  java.io.BufferedReader;
import  java.io.FileInputStream;
import  java.io.InputStreamReader;
import  java.io.Serializable;
import  java.nio.channels.Channels;
import  java.nio.channels.ReadableByteChannel;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  org.apache.log4j.Logger;

/** This class implements several filters for *.gen files to be
 *  prepared for project joeis-lite.
 *  A typical record has the fields
 *  aseqno, callCode, offset1, parm1, parm2 ...
 *  @author Dr. Georg Fischer
 */
public class JoeisPreparer
        implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id: JoeisPreparer.java 970 2012-10-25 16:49:32Z  $";

    /** Debugging switch */
    public static int debug = 0;

    /** log4j logger (category) */
    private Logger log;

    /** Fields of the input line */
    private String[] parms;

    /** A-number of the OEIS sequence */
    private String aseqno;

    /** Code for a specific generation process in joeis-lite */
    private String callCode;

    /** number of terms to be generated */
    private int numTerms;

    /** Offset1 of the sequence */
    private int offset1;

    /** Current index for {@link #parms} */
    private int iparm;

    //==================
    // Construction
    //==================

    /** No-args constructor for an empty JoeisPreparer.
     */
    public JoeisPreparer() {
        log = Logger.getLogger(JoeisPreparer.class.getName());
    } // Constructor()

    /**
     * Reproduces the record with the (maybe modified) parameters.
     */
    protected void reproduce() {
        reproduce(parms.length);
    } // reproduce

    /**
     * Reproduces part of the the record with the (maybe modified) parameters.
     * @param num print only so many parameters.
     */
    protected void reproduce(int num) {
        parms[1] = callCode;
        int j = 0;
        while (j < num && j < parms.length) {
            System.out.print(j == 0 ? "" : "\t");
            System.out.print(parms[j]);
            j ++;
        } // for j
        System.out.println();
    } // reproduce(int)

    /** Process one input line, and determine
     *  whether it should be written to the output.
     *  The following <code>callCode</code>s are processed:
     *  <ul>
     *  <li><code>bva   </code></li>
     *  <li><code>coxf  </code></li>
     *  <li><code>dhd   </code></li>
     *  <li><code>fract1</code></li>
     *  <li><code>fract2</code></li>
     *  <li><code>fract </code></li>
     *  <li><code>holo  </code></li>
     *  <li><code>rioarr</code></li>
     *  <li><code>sage  </code></li>
     *  </ul>
     *  The following parameters are already consumed:
     *  aseqno=parms[0], callCode=parms[1], offset1=parms[2]; iparm=3..
     *
     */
    private void processRecord() {
        PolyFraction pfr1 = null;
        if (false) {

        } else if (callCode.equals("bva")) { // OEIS-mat/linrec/makefile.rectab
            parms[1] = "holos";
            BigVectorArray bva = BigVectorArray.parseRecurrence(parms[iparm]);
            parms[iparm] = bva.toString();
            reproduce();

        } else if (callCode.equals("coxf")) {
            try {
                int pwr  = Integer.parseInt(parms[iparm ++]);
                int ngen = Integer.parseInt(parms[iparm ++]);
                pfr1 = PolyFraction.getCoxeterFraction(pwr, ngen);
            } catch (Exception exc) {
            }
            System.out.println(aseqno
                    + "\t" + pfr1.getSeriesCoefficients(numTerms)
                    .toString().replaceAll("[\\[\\]]", "")
                    );

        } else if (callCode.startsWith("dex")) {
            String postfix = parms[iparm + 0];
            String keep0   = parms[iparm + 1];
            String base    = parms[iparm + 2];
            String formula = parms[iparm + 3];
            ShuntingYard parser = new ShuntingYard("\\w+");
            parser.setDebug(debug);
            postfix = parser.getPostfixString(";", formula);
            // possibly modify operators here
            parms[iparm + 0] = postfix;
            reproduce();

        } else if (callCode.equals("dhd")) { // pfract,
            pfr1 = PolyFraction.parse(parms[iparm]).normalize();
            String[] vars = pfr1.getVariables();
            parms[iparm + 0] = pfr1.getNum().toTriangleList(vars);
            parms[iparm + 1] = pfr1.getDen().toTriangleList(vars);
            reproduce();

        } else if (callCode.startsWith("fract1")) {
            pfr1 = PolyFraction.parse(parms[iparm]);
            if (pfr1 != null) { // parse ok
                pfr1 = pfr1.normalize();
                String vects = pfr1.toVectors();
                if (vects != null) { // is not multivariate
                    // parms[1] = "orgf";
                    parms[iparm] = vects.replaceAll("\\],\\[", "\t").replaceAll("[\\[\\]]", "");
                    reproduce();
                    System.out.println(aseqno + "\t" + "coef"
                            + "\t" + pfr1.getSeriesCoefficients(numTerms)
                                    .toString().replaceAll("[\\[\\]]", "")
                            );
                } // not multivariate
            } else { // parse not ok
                aseqno = "# " + aseqno;
                reproduce();
            }

        } else if (callCode.startsWith("lingf")) {
            pfr1 = PolyFraction.parse(parms[iparm]);
            if (pfr1 != null) { // parse ok
                pfr1 = pfr1.normalize();
                String vects = pfr1.toVectors();
                if (vects != null) { // is not multivariate
                    parms[iparm + 2] = parms[iparm];
                    parms[iparm + 0] = vects.replaceAll("\\],\\[", "\t").replaceAll("[\\[\\]]", "");
                    reproduce();
                } else { // parse not ok
                    aseqno = "#2vars " + aseqno;
                    reproduce();
                } // not multivariate
            } else { // parse not ok
                aseqno = "#1parse " + aseqno;
                reproduce();
            }

        } else if (callCode.equals("fract2")) {
            pfr1 = PolyFraction.parse(parms[iparm]);
            if (pfr1 != null) {
                pfr1 = pfr1.normalize();
                String[] vars = pfr1.getVariables();
                parms[iparm + 0] = pfr1.getNum().toTriangleList(vars);
                parms[iparm + 1] = pfr1.getDen().toTriangleList(vars);
                callCode = "fract21"; // with lexicographically ordered variables
                reproduce();
                String temp = vars[0]; vars[0] = vars[1]; vars[1] = temp;
                parms[iparm + 0] = pfr1.getNum().toTriangleList(vars);
                parms[iparm + 1] = pfr1.getDen().toTriangleList(vars);
                callCode = "fract22"; // with exchanged variables
                reproduce();
            }

        } else if (callCode.startsWith("fract")) {
            System.out.println(aseqno
                        + "\t" + offset1
                        + "\t??" + parms[iparm ++]
                        );

        } else if (callCode.startsWith("holo")) { // OEIS-mat/holrec/makefile.rectab
            // callCode = "holos";
            String parm = parms[iparm];
            try {
                PolyVector pvect = new PolyVector(parms[iparm]);
                parms[iparm] = pvect.getBigVectorArray().toString();
                reproduce();
            } catch (Exception exc) {
                System.err.println("# " + aseqno + " JoeisPreparer.holo(\"" + parm + "\") failed: " + exc.getMessage());
            }

        } else if (callCode.startsWith("homgf")) {
            String gf        = parms[iparm + 0];
            String gftype    = parms[iparm + 1];
            ShuntingYard parser = new ShuntingYard("[a-zA-Z]\\w+");
            parser.setDebug(debug);
            String postfix   = parser.getPostfixString(";", gf); // not needed
            parms[iparm + 0] = parser.buildInfixExpression();
            parms[iparm + 1] = gftype;
            reproduce();

        } else if (callCode.equals("rioarr")) {
            System.out.print(aseqno + "\t");
            pfr1 = PolyFraction.parse(parms[iparm ++]).normalize();
            System.out.println(pfr1.getCoefficientTriangle(numTerms
                    , new String[] { "x", "y" })
                    .toString().replaceAll("[\\[\\]]", ""));

        } else if (callCode.equals("sage")) {
            iparm --; // no offset1
            Polynomial num = Polynomial.parse(parms[iparm ++]);
            Polynomial den = Polynomial.parse(parms[iparm ++]);
            pfr1 = new PolyFraction(num, den);
            System.out.println(aseqno + "\t" + callCode
                    + "\t" + pfr1.getNum().toString() + "\t" + pfr1.getDen().toString()
                    );
            System.out.println(aseqno + "\t" + "vect"
                    + "\t" + pfr1.toVectors()
                    );
            System.out.println(aseqno + "\t" + "coef"
                    + "\t" + pfr1.getSeriesCoefficients(numTerms)
                    );

        } // switch callCode
    } // processRecord

    /** Filters a file and writes the modified output lines.
     *  @param fileName name of the input file, or "-" for STDIN
     */
    private void processFile(String fileName) {
        BufferedReader lineReader; // Reader for the input file
        String srcEncoding = "UTF-8"; // Encoding of the input file
        String line = null; // current line from text file
        try {
            if (fileName == null || fileName.length() <= 0 || fileName.equals("-")) {
                lineReader = new BufferedReader(new InputStreamReader(System.in, srcEncoding));
            } else {
                ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
                lineReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
            }
            while ((line = lineReader.readLine()) != null) { // read and process lines
                if (! line.matches("\\s*#.*")) { // is not a comment
                    parms = (line + "\t0").split("\\t");
                    if (debug >= 1) {
                        System.out.println(line); // repeat it unchanged
                    }
                    iparm = 0;
                    aseqno   = parms[iparm ++];
                    callCode = parms[iparm ++];
                    try {
                        offset1 = 0;
                        offset1 = Integer.parseInt(parms[iparm ++]);
                    } catch (Exception exc) {
                    }
                    processRecord();
                } // is not a comment
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
    } // processFile

    /** Main method, filters a file and writes the copy to STDOUT.
     *  @param args command line arguments: filename, or "-" or none for STDIN
     */
    public static void main(String[] args) {
        int iarg = 0;
        JoeisPreparer prep = new JoeisPreparer();
        prep.numTerms = 16;
        prep.offset1  = 0;
        String fileName = "-"; // assume STDIN
        while (iarg < args.length) { // consume all arguments
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.equals    ("-d")     ) {
                debug = 1;
                try {
                    debug = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) { // take default
                }
            } else if (opt.equals    ("-f")     ) {
                fileName = args[iarg ++];
            } else if (opt.equals    ("-n")     ) {
                try {
                    prep.numTerms = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) { // take default
                }
            } else {
                System.err.println("??? invalid option: \"" + opt + "\"");
            }
        } // while args
        prep.processFile(fileName);
    } // main

} // JoeisPreparer
