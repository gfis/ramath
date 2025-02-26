/*  JoeisPreparer: prepare *.gen files for joeis-lite
 *  @(#) $Id$
 *  2024-12-27, -h/--help, -ci -co logic
 *  2023-11-07: -polint
 *  2023-10-13: -trigf
 *  2021-11-30: -cc trans, like infix, but with op1, op2 placeholders
 *  2021-08-22: -cc post: "~~" is optional
 *  2021-07-29: -cc callcode
 *  2021-07-07: JoeisExpressionBuilder
 *  2021-04-01: -circdiff
 *  2020-09-23: header was garbled
 *  2020-04-01: ShuntingYard for dex
 *  2020-02-11: -bva
 *  2019-12-08: reproduce; offset1 is always read
 *  2019-12-04: Georg Fischer: copied from PolyFraction.java
 */
/*
 * Copyright 2019 Dr. Georg Fischer <dr dot georg dot fischer at gmail dot kom>.
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
import  org.teherba.ramath.sequence.PolynomialIntegrator;
import  org.teherba.ramath.linear.BigVector;
import  org.teherba.ramath.linear.BigVectorArray;
import  org.teherba.ramath.linear.GeneratingFunction;
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.linear.Vector;
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
import  java.util.regex.Pattern;
import  org.apache.logging.log4j.Logger;
import  org.apache.logging.log4j.LogManager;

/** This class implements several filters for *.gen files to be
 *  prepared for project joeis-lite.
 *  A typical record has the fields
 *  aseqno, callCode, offset1, parm1, parm2 ...
 *  @author Dr. Georg Fischer
 */
public class JoeisPreparer implements Cloneable, Serializable {
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

    /** Code for a specific generation process in joeis-lite, given behind commandline option -cc or -ci */
    protected String argsCode;
    /** Code for a specific generation process in joeis-lite, given behind commandline option -co */
    private   String coutCode;
    /** Code for a specific generation process in joeis-lite, taken from 2nd column of the input file */
    private   String callCode;

    /** Whether the class is intantiated from a servlet */
    private boolean webCall;

    /** Current index for {@link #parms} */
    private int iparm;

    /** Optional expression builder */
    private JoeisExpressionBuilder builder;

    /** Polynomial integrator */
    protected PolynomialIntegrator polint;

    /** number of terms to be generated */
    private int numTerms;

    /** Offset1 of the sequence */
    private int offset1;

    //==================
    // Construction
    //==================

    /** No-args constructor for an empty JoeisPreparer.
     */
    public JoeisPreparer() {
        log = LogManager.getLogger(JoeisPreparer.class.getName());
        builder = null;
        argsCode = "";
        webCall = false;
    } // Constructor()

    /**
     * Constructor with call type parameter
     * @param webCall whether the class is intantiated from a servlet
     */
    public JoeisPreparer(boolean webCall) {
        log = LogManager.getLogger(JoeisPreparer.class.getName());
        builder = null;
        argsCode = "";
        this.webCall = webCall;
    } // Constructor()

    /**
     * Reproduce the record with the (maybe modified) parameters.
     * @param parms array of parameter Strings: aseqno, callcode, offset1, parm1, parm2
     */
    protected void reproduce(String[] parms) {
        reproduce(parms.length, parms);
    } // reproduce

    /**
     * Reproduce part of the the record with the (maybe modified) parameters.
     * @param num print only so many parameters.
     * @param parms array of parameter Strings: aseqno, callcode, offset1, parm1, parm2
     */
    protected void reproduce(int num, String[] parms) {
        if (! webCall) {
            parms[0] = aseqno;
            if (parms[1].equals(argsCode)) {
                parms[1] = coutCode;
            } else {
                parms[1] = callCode;
            }
            int j = 0;
            while (j < num && j < parms.length) {
                if (j > 0) {
                    System.out.print("\t");
                }
                System.out.print(parms[j]);
                j ++;
            } // for j
            System.out.println();
        }
    } // reproduce(int)

    /** Process one input line, and determine whether it should be written to the output.
     *  @param callCode indicator for the action to be taken
     *  The following <code>callCode</code>s are processed:
     *  <ul>
     *  <li><code>bva     </code></li>
     *  <li><code>circdiff</code></li>
     *  <li><code>coxf    </code></li>
     *  <li><code>dhd     </code></li>
     *  <li><code>fract1  </code></li>
     *  <li><code>fract2  </code></li>
     *  <li><code>fract   </code></li>
     *  <li><code>holo    </code></li>
     *  <li><code>homgf   </code></li>
     *  <li><code>infix   </code></li>
     *  <li><code>lingf   </code></li>
     *  <li><code>postf   </code></li>
     *  <li><code>rioarr  </code></li>
     *  <li><code>sage    </code></li>
     *  <li><code>trigft  </code></li>
     *  <li><code>trans   </code></li>
     *  </ul>
     *  @param iparm first parameter string to be consumed
     *  @param parms array of string parameters;
     *  the following parameters are already consumed:
     *  <code>aseqno=parms[0], callCode=parms[1], offset1=parms[2]</code>; start with <code>iparm=3</code>.
     *  @return new value of <code>iparm</code>
     *
     */
    public int processRecord(String callCode, int iparm, String[] parms) {
        PolyFraction pfr1 = null;
        if (false) {

        } else if (callCode.startsWith("bva")
                || argsCode.startsWith("bva")) { // OEIS-mat/linrec/makefile.rectab
            callCode = "holost";
            BigVectorArray bva = BigVectorArray.parseRecurrence(parms[iparm]);
            parms[iparm++] = "\"" + bva.toString() + "\"";
            parms[iparm++] = String.valueOf(bva.size());
            reproduce(parms);

        } else if (callCode.startsWith("coxf")
                || argsCode.startsWith("coxf")) {
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

        } else if (callCode.startsWith("circdiff")
                || argsCode.startsWith("circdiff")) {
            String matrix = "";
            int dim  = 4;
            int diff = 1;
            try {
                dim  = Integer.parseInt(parms[iparm ++]);
                diff = Integer.parseInt(parms[iparm ++]);
            } catch (Exception exc) {
            }
            Vector band = new Vector(2 * diff + 1);
            for (int k = 0; k <= diff; k ++) {
                band.set(diff - k, (k & 1) == 0 ? 1 : -1);
                band.set(diff + k, (k & 1) == 0 ? 1 : -1);
            }
            int istart = iparm; // overwrite starts here
            iparm ++; // skip "matrix"
            String[] initTerms = parms[iparm ++].split("\\,");
            if (initTerms.length > dim) {
                callCode = "circdiff";
                parms[istart ++] = "[0," + Matrix.band(dim, band.getValues()).characteristicPolynomial().toString(",").substring(1);
                StringBuilder stb = new StringBuilder(256);
                for (int i = 0; i <= dim; i ++) {
                    stb.append(',');
                    stb.append(initTerms[i]);
                }
                parms[istart ++] = "[" + stb.substring(1) + "]";
                parms[istart ++] = "0";
            } else {
                callCode = "tooshort";
            }
            parms[1] = callCode;
            reproduce(parms);

        } else if (callCode.startsWith("dex")
                || argsCode.startsWith("dex")) {
            String postfix = parms[iparm + 0];
            String keep0   = parms[iparm + 1];
            String base    = parms[iparm + 2];
            String formula = parms[iparm + 3];
            ShuntingYard parser = new ShuntingYard("\\w+");
            parser.setDebug(debug);
            postfix = parser.getPostfixString(";", formula);
            // possibly modify operators here
            parms[iparm + 0] = postfix;
            reproduce(parms);

        } else if (callCode.startsWith("dhd")
                || argsCode.startsWith("dhd")) {
            pfr1 = PolyFraction.parse(parms[iparm]).normalize();
            String[] vars = pfr1.getVariables();
            parms[iparm + 0] = pfr1.getNum().toTriangleList(vars);
            parms[iparm + 1] = pfr1.getDen().toTriangleList(vars);
            reproduce(parms);

        } else if (callCode.startsWith("fract1")
                || argsCode.startsWith("fract1")) {
            pfr1 = PolyFraction.parse(parms[iparm]);
            if (pfr1 != null) { // parse ok
                pfr1 = pfr1.normalize();
                String vects = pfr1.toVectorString();
                if (vects != null) { // is not multivariate
                    // parms[1] = "orgf";
                    parms[iparm] = vects.replaceAll("\\],\\[", "\t").replaceAll("[\\[\\]]", "");
                    reproduce(parms);
                    System.out.println(aseqno + "\t" + "coef"
                            + "\t" + pfr1.getSeriesCoefficients(numTerms)
                                    .toString().replaceAll("[\\[\\]]", "")
                            );
                } // not multivariate
            } else { // parse not ok
                aseqno = "# " + aseqno;
                reproduce(parms);
            }

        } else if (callCode.startsWith("fract2")
                || argsCode.startsWith("fract2")) {
            pfr1 = PolyFraction.parse(parms[iparm]);
            if (pfr1 != null) {
                pfr1 = pfr1.normalize();
                String[] vars = pfr1.getVariables();
                parms[iparm + 0] = pfr1.getNum().toTriangleList(vars);
                parms[iparm + 1] = pfr1.getDen().toTriangleList(vars);
                parms[1] = "fract21"; // with lexicographically ordered variables

                reproduce(parms);
                String temp = vars[0]; vars[0] = vars[1]; vars[1] = temp;
                parms[iparm + 0] = pfr1.getNum().toTriangleList(vars);
                parms[iparm + 1] = pfr1.getDen().toTriangleList(vars);
                parms[1] = "fract22"; // with exchanged variables
                reproduce(parms);
            }

        } else if (callCode.startsWith("fract")
                || argsCode.startsWith("fract")) {
            System.out.println(aseqno
                        + "\t" + offset1
                        + "\t??" + parms[iparm ++]
                        );

        } else if (callCode.startsWith("holo")
                || argsCode.startsWith("holo")) { // OEIS-mat/holrec/makefile.rectab
            // callCode = "holos";
            String parm = parms[iparm];
            try {
                PolyVector pvect = new PolyVector(parms[iparm]);
                parms[iparm] = pvect.getBigVectorArray().toString();
                reproduce(parms);
            } catch (Exception exc) {
                System.err.println("# " + aseqno + " JoeisPreparer.holo(\"" + parm + "\") failed: " + exc.getMessage());
            }

        } else if (callCode.startsWith("homgf")
                || argsCode.startsWith("homgf")) {
            String gf        = parms[iparm + 0];
            String gftype    = parms[iparm + 1];
            ShuntingYard parser = new ShuntingYard("[a-zA-Z]\\w+");
            parser.setDebug(debug);
            String postfix   = parser.getPostfixString(";", gf); // not needed
            parms[iparm + 0] = parser.buildInfixExpression();
            parms[iparm + 1] = gftype;
            reproduce(parms);

        } else if (callCode.startsWith("trans")
                || argsCode.startsWith("trans"))    { // translate from postfix to target expression with a *.ttab table
            String[] postfix = parms[iparm + 0].split("\\;");
            parms[iparm + 0] = builder.translate(postfix, 0, postfix.length);
            reproduce(parms);

        } else if (callCode.startsWith("postrans")
                || argsCode.startsWith("postrans")) { // translate infix to postfix to target expression with a *.ttab table
            ShuntingYard parser = new ShuntingYard("\\w+");
            parser.setDebug(debug);
            String result = parser.getPostfixString(";", parms[iparm + 0]);
            String[] postfix = result.split("\\;");
            parms[iparm + 0] = builder.translate(postfix, 0, postfix.length);
            reproduce(parms);

        } else if (callCode.startsWith("infix")
                || argsCode.startsWith("infix"))    { // translate from infix to postfix to target expression with a *.xpat table
            String[] postfix = parms[iparm + 0].split("\\;");
            parms[iparm + 0] = builder.getInfix(postfix, 0, postfix.length);
            reproduce(parms);

        } else if (callCode.startsWith("lingf") || callCode.startsWith("ogf")
                || argsCode.startsWith("lingf") || argsCode.startsWith("ogf")) {
            callCode = "lingf";
            pfr1 = PolyFraction.parse(parms[iparm]);
            if (pfr1 != null) { // parse ok
                pfr1 = pfr1.normalize();
                String vects = pfr1.toVectorString();
                if (vects != null) { // is not multivariate
                    parms[iparm + 2] = parms[iparm];
                    parms[iparm + 0] = vects.replaceAll("\\],\\[", "\t").replaceAll("[\\[\\]]", "");
                    reproduce(parms);
                } else { // parse not ok
                    aseqno = "#2vars " + aseqno;
                    reproduce(parms);
                } // not multivariate
            } else { // parse not ok
                aseqno = "#1parse " + aseqno;
                reproduce(parms);
            }

        } else if (callCode.startsWith("polint")
                || argsCode.startsWith("polint")) { // derive a polynomial from terms
            BigVector vect= new BigVector(parms[iparm]);
            BigVectorArray bva = polint.getDiffLeads(vect);
            if (bva.getBigVector(1).size() > 0) {
                PolyFraction polyf = polint.integrate(offset1, bva);
                BigVector[] vect2 = polyf.toVectors();
                String num = vect2[0].toString();
                String den = vect2[1].toString().replaceAll("[\\[\\]]", "");
                parms[iparm + 0] = polint.toLambda(offset1, bva.getBigVector(0), polyf);
                parms[iparm + 1] = bva.getBigVector(0).toString(); // initTerms
                parms[iparm + 2] = num + (den.equals("1") ? "" : "/" + den);
                reproduce(parms);
            } else {
                System.out.println("# " + aseqno + ": no deep step found");
            }

        } else if (callCode.startsWith("post1")
                || argsCode.startsWith("post1")) { // translate a single infix expression to postfix
            ShuntingYard parser = new ShuntingYard("\\w+");
            parser.setDebug(debug);
            String result = parser.getPostfixString(";", parms[iparm + 0]);
            parms[iparm + 0] = result;
            reproduce(parms);

        } else if (callCode.startsWith("post")
                || argsCode.startsWith("post")) { // general parsing into postfix notation
            String exprList = parms[iparm + 0]; // $(PARM1) = list of expressions, starting with a String of identical separator characters
            int ind = 0;
            char ch = exprList.charAt(ind ++);
            while (ind < exprList.length() && exprList.charAt(ind) == ch) {
                ind ++;
            } // while
            String sep = exprList.substring(0, ind);
            String [] exprs = exprList.substring(ind).split(Pattern.quote(sep));
            StringBuffer result = new StringBuffer(1024);
            for (int iexpr = 0; iexpr < exprs.length; iexpr ++) {
                ShuntingYard parser = new ShuntingYard("\\w+");
                parser.setDebug(debug);
                result.append(sep);
                result.append(parser.getPostfixString(";", exprs[iexpr]));
            } // for iexpr
            parms[iparm + 0] = result.toString();
            reproduce(parms);

        } else if (callCode.startsWith("rioarr")
                || argsCode.startsWith("rioarr")) {
            System.out.print(aseqno + "\t");
            pfr1 = PolyFraction.parse(parms[iparm ++]).normalize();
            System.out.println(pfr1.getCoefficientTriangle(numTerms
                    , new String[] { "x", "y" })
                    .toString().replaceAll("[\\[\\]]", ""));

        } else if (callCode.startsWith("sage")
                || argsCode.startsWith("sage")) {
            iparm --; // no offset1
            Polynomial num = Polynomial.parse(parms[iparm ++]);
            Polynomial den = Polynomial.parse(parms[iparm ++]);
            pfr1 = new PolyFraction(num, den);
            System.out.println(aseqno + "\t" + callCode
                    + "\t" + pfr1.getNum().toString() + "\t" + pfr1.getDen().toString()
                    );
            System.out.println(aseqno + "\t" + "vect"
                    + "\t" + pfr1.toVectorString()
                    );
            System.out.println(aseqno + "\t" + "coef"
                    + "\t" + pfr1.getSeriesCoefficients(numTerms)
                    );

        } else if (callCode.startsWith("trigf")
                || argsCode.startsWith("trigf")) {
            String lens     = parms[iparm + 0];
            int len = 10;
            try {
                len = Integer.parseInt(lens);
            } catch (Exception exc) {
            }
            String num      = parms[iparm + 1];
            String termList = parms[iparm + 2];
            GeneratingFunction.maxTri = len;
            BigVector den   = GeneratingFunction.ordinaryTriangle(len, new BigVector(num), new BigVector(termList));
            parms[iparm + 0] = num;
            parms[iparm + 1] = den.toString();
            parms[iparm + 2] = ""; // termList;
            reproduce(parms);

        } else if (callCode.startsWith("vect")
                || argsCode.startsWith("vect")) {
            Polynomial poly = Polynomial.parse(parms[iparm]);
            if (poly != null) {
                parms[iparm] = poly.getBigVector().toString();
                reproduce(parms);
            } else {
                System.err.println("# " + aseqno + " error in JoeisPreparer.vect: " + parms[iparm]);
            }

        } else {
            reproduce(parms);

        } // switch callCode
        return iparm;
    } // processRecord

    /** Filter a file and writes the modified output lines.
     *  @param fileName name of the input file, or "-" for STDIN
     */
    private void processFile(String fileName) {
        BufferedReader lineReader; // Reader for the input file
        String srcEncoding = "UTF-8"; // Encoding of the input file
        String line = null; // current line from text file
        String old_line = null;
        try {
            if (fileName == null || fileName.length() <= 0 || fileName.equals("-")) {
                lineReader = new BufferedReader(new InputStreamReader(System.in, srcEncoding));
            } else {
                ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
                lineReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
            }
            while ((line = lineReader.readLine()) != null) { // read and process lines
                if (line.matches("\\AA\\d+\\s.*")) { // begins with A-number
                    parms = (line + "\t\t\t\t\t0").split("\\t");
                    if (debug >= 1) {
                        System.out.println(line); // repeat it unchanged
                    }
                    iparm = 0;
                    aseqno   = parms[iparm ++];
                    callCode = parms[iparm ++];
                    offset1 = 0;
                    try {
                        offset1 = Integer.parseInt(parms[iparm ++]);
                    } catch (Exception exc) {
                    }
                    processRecord(callCode, iparm, parms);
                } // is not a comment
                old_line = line;
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
            System.err.println("# offending line: \"" + line + "\", previous=\"" + old_line + "\"");
        } // try
    } // processFile

    /** Main method, filter a file and writes the copy to STDOUT.
     *  @param args command line arguments: filename, or "-" or none for STDIN
     */
    public static void main(String[] args) {
        int iarg = 0;
        JoeisPreparer jprep = new JoeisPreparer();
        jprep.polint = new PolynomialIntegrator();
        jprep.numTerms = 16;
        jprep.offset1  = 0;
        jprep.argsCode = ""; // take the callcode from the 2nd column of the input file
        jprep.coutCode = ""; // take the callcode from the 2nd column of the input file
        String fileName = "-"; // assume STDIN
        String patternName = null; // default, in current directory
        while (iarg < args.length) { // consume all arguments
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.equals    ("-cc")     ) {
                jprep.argsCode = args[iarg ++];  // select a specific callcode for input and output
                jprep.coutCode = jprep.argsCode; // default: same as -cc
            } else if (opt.equals    ("-ci")     ) {
                jprep.argsCode = args[iarg ++];  // select a specific callcode for input
                jprep.coutCode = jprep.argsCode; // default: same as -ci
            } else if (opt.equals    ("-co")     ) {
                jprep.coutCode = args[iarg ++];  // select a specific callcode for output
            } else if (opt.equals    ("-d")     ) {
                debug = 1;
                try {
                    debug = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) { // take default
                }
            } else if (opt.equals    ("-f")     ) {
                fileName = args[iarg ++];
            } else if (opt.equals    ("-h") || opt.equals("--help")) {
                System.out.println("Prepare jOEIS sequences\n"
                    + "Usage: java -cp ramath/dist/ramath.jar org.teherba.ramath.sequence.JoeisPreparer"
                    + " [-d mode] {{-cc|-ci|-co} callcode}* [-n numterms] [-p pattern] [-f infile]"
                    + " infile.seq4 > outfile.seq4\n"
                    + "    -d  debugging mode\n"
                    + "    -f  input file\n"
                    + "    -n  number of terms to be computed\n"
                    + "    -p  pattern/table file for the translation\n"
                    + "    -ci callcode to be processed in infile\n"
                    + "    -co different resulting callcode in outfile\n"
                    + "    -cc callcode to be processed (unchanged)\n"
                    + "Callcodes:\n"
                    + "    bva      convert $(PARM1=recurrence expression) into $(PARM1=matrix for HolonomicRecurrenceSequence)\n"
                    + "    coxf     \n"
                    + "    circdiff \n"
                    + "    dex      \n"
                    + "    dhd      \n"
                    + "    fract1   \n"
                    + "    fract2   \n"
                    + "    fract    \n"
                    + "    holo     convert $(PARM1=recurrence expression) into $(PARM1=matrix for HolonomicRecurrenceSequence)\n"
                    + "    homgf    \n"
                    + "    trans    translate from postfix to target expression with a *.ttab table\n"
                    + "    postrans translate infix to postfix to target expression with a *.ttab table\n"
                    + "    infix    translate from infix to postfix to target expression with a *.xpat table\n"
                    + "    lingf    \n"
                    + "    ogf      \n"
                    + "    polint   derive a polynomial from terms\n"
                    + "    post1    translate a single infix expression to postfix\n"
                    + "    post     general parsing into postfix notation\n"
                    + "    rioarr   \n"
                    + "    sage     \n"
                    + "    trigf    \n"
                    + "    vect     \n"
                    );
                    System.exit(0);
            } else if (opt.equals    ("-n")     ) {
                try {
                    jprep.numTerms = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) { // take default
                }
            } else if (opt.equals    ("-p")     ) { // table type *.xpat or *.ttab
                patternName = args[iarg ++];
                jprep.builder = new JoeisExpressionBuilder(patternName);
                jprep.builder.setDebug(debug);
            } else {
                System.err.println("??? invalid option: \"" + opt + "\"");
            }
        } // while args

        jprep.processFile(fileName);
    } // main

} // JoeisPreparer
