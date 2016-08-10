/*  Evaluate the results of "ProgramGenerator pident"
 *  @(#) $Id: IdentityEvaluator.java 808 2011-09-20 16:56:14Z gfis $
 *  2016-07-25: Georg Fischer: copied from ProgramGenerator
 */
/*
 * Copyright 2016 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.ProgramGenerator;
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.PolyMatrix;
import  org.teherba.ramath.symbolic.PolyVector;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.util.ExpressionReader;
import  org.teherba.ramath.util.IntegerExpander;
import  org.teherba.ramath.util.MonotoneExpander;
import  java.io.BufferedReader;
import  java.io.File;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.io.PrintStream;
import  java.text.SimpleDateFormat;
import  java.util.Date;
import  java.util.Iterator;
import  org.apache.log4j.Logger;

/** Reads the output lines of <em>progen.c</em> which was generated by, for example,
 *  <pre>
 java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator  -l 2 -f test/PG23.data.tmp pident
 *  </pre>
 *  Lines starting with {@link ProgramGeneraator#LEADER} contain information
 *  about the {@link RelationSet} which defines the parametrization of
 *  th powersum, and the corresponding identity.
 *  @author Dr. Georg Fischer
 */
public class IdentityEvaluator {
    public final static String CVSID = "@(#) $Id: IdentityEvaluator.java 808 2011-09-20 16:56:14Z gfis $";

    /** Local logger for exceptions */
    private static Logger log = Logger.getLogger(IdentityEvaluator.class.getName());

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    public static int debug = 0;
    /** System dependant newline character sequence */
    protected static String newline = System.getProperty("line.separator");

    /** expand parameter variables up to and below this value */
    public int limit;
    /** number of rows of the generated matrix */
    public int nrows;
    /** number of columns of the generated matrix */
    public int ncols;
    /** {@link PolyMatrix} for names of coefficients */
    public PolyMatrix pmat;
    /** original {@link RelationSet} with isolated variables, parameters and coefficients */
    public RelationSet rset0;
    /** {@link VariableMap} for isolated variables in {@link #rset0} */
    public VariableMap vmiso;
    /** {@link VariableMap} for parameter variables in {@link #rset0} */
    public VariableMap vmpar;
    /** Generated program is written to this file */
    private PrintStream o;

    //===========================
    // Construction
    //===========================
    /** No-args Constructor
     */
    public IdentityEvaluator() {
        o        = System.out;
        nrows    = 3;
        ncols    = 3;
        limit    = 3;
    } // Constructor()
    
    /** Initializes common variables 
     */
    private void initialize() {
    } // initialize     

    /** Closes the output file
     */
    private void close() {
        o.close();
    } // initialize     

    //===========================
    // Evaluate a result
    //===========================
    /** Evaluates one result line in the output of <em>progen.c</em>
     *  @param amat {@link Matrix} with coefficient values
     */
    public void evaluate(PolyMatrix amat) {
        StringBuffer tuples = new StringBuffer(256);
        RelationSet rset1 = rset0.substitute(pmat.getVariableMap(amat)); // replace coefficients
        MonotoneExpander dispenser = new MonotoneExpander(vmpar.size(), limit);
        while (dispenser.hasNext()) {
            Vector vdisp = dispenser.getVector();
            if (vdisp.isMonotone() && vdisp.isCoprime()) {
                vmpar.setValues(dispenser);
                RelationSet rset2 = rset1.substitute(vmpar);
                Vector vpsum = rset2.getPowerSumVector();
                if (vpsum.get(0) > 0 && vpsum.isMonotone()) {
                    tuples.append(/* dispenser.toString() + */ vpsum.toString(",") + " ");
                }
            } // hasNoZero
            dispenser.next();
        } // while dispenser
        if (tuples.length() > 0) {
	        System.out.println(amat.toString() + "\t" + tuples.toString());
	    }
    } // evaluate
        
    //==========================
    // Main
    //==========================
    /** Test method.
     */
    public static void main(String[] args) {
        int iarg = 0;
        IdentityEvaluator ideval = new IdentityEvaluator();
        try {
            while (iarg < args.length) {
                String opt = args[iarg ++];
                if (false) {
                } else if (opt.equals("-l")) {
                    ideval.limit = Integer.parseInt(args[iarg ++]);
                } else if (opt.equals("-f")) {
                    // read parameters and a list of generated matrices
                    String fileName = args[iarg ++];
                    BufferedReader testReader = null;
                    if (fileName.equals("-")) { // STDIN
                        testReader = new BufferedReader(new InputStreamReader(System.in, "UTF-8"));
                    } else {
                        File testCases = new File(fileName);
                        testReader = new BufferedReader(new FileReader(testCases));
                    } // not STDIN
                    String line = null;
                    while ((line = testReader.readLine()) != null) { // read and process lines
                        if (false) {
                        } else if (line.startsWith(ProgramGenerator.LEADER)) {
                            String rest = line.substring(ProgramGenerator.LEADER.length());
                            int eqPos = rest.indexOf('=');
                            if (eqPos >= 0) { // contains a parameter
                                String name  = rest.substring(0, eqPos).trim();
                                String value = rest.substring(eqPos + 1);
                                // System.out.println("name=\"" + name + "\", value=\"" + value + "\"");
                                if (false) {
                                } else if (name.startsWith("isol")) {
                                    ideval.vmiso = new VariableMap(value.split(","), "0");
                                } else if (name.startsWith("param")) {
                                    ideval.vmpar = new VariableMap(value.split(","), "0");
                                } else if (name.startsWith("nrows")) {
                                    ideval.nrows = Integer.parseInt(value);
                                } else if (name.startsWith("ncols")) {
                                    ideval.ncols = Integer.parseInt(value);
                                } else if (name.startsWith("pmat")) {
                                    ideval.pmat  = new PolyMatrix(value);
                                } else if (name.startsWith("rset")) {
                                    ideval.rset0 = RelationSet.parse(value);
                                }
                            } // contains '='
                        } else if (line.startsWith("[[")) {
                            // System.out.println("evaluate " + line);
                            int ccPos = line.indexOf("]]");
                            PolyMatrix amat = new PolyMatrix(line.substring(0, ccPos + 2));
                            ideval.evaluate(amat);
                        } // [[
                    } // while line
                    // opt -f
                } // if options
            } // while iarg
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }

        ideval.close();
    } // main

} // IdentityEvaluator
