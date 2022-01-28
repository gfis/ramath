/*  RaMath.java - Mathematics with Rational Numbers
 *  @(#) $Id: RaMath.java 233 2009-09-01 15:05:11Z gfis $
 *  2015-06-17: BigRational extends BigInteger
 *  2008-10-07, Georg Fischer
 */
/*
 * Copyright 2008 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.Ferm3;
import  org.teherba.ramath.ContinuedFraction;
import  org.teherba.ramath.BigRational;
import  org.teherba.ramath.util.ExpressionReader;
import  java.io.Serializable;
import  java.util.regex.Pattern;
import  org.apache.logging.log4j.Logger;
import  org.apache.logging.log4j.LogManager;

/** Mathematics with Rational Numbers - commandline interface
 *  @author Dr. Georg Fischer
 */
public class RaMath implements Serializable {
    public final static String CVSID = "@(#) $Id: RaMath.java 233 2009-09-01 15:05:11Z gfis $";

    /** log4j logger (category) */
    private Logger log;

    /** No-args Constructor
     */
    public RaMath() {
        log = LogManager.getLogger(RaMath.class.getName());
    } // Constructor

    /** Initializes the class for a 2nd call of <em>process</em>
     */
    public void initialize() {
    } // initialize

    /** Executes a {@link RaMath} command line as if it were passed by the shell,
     *  and returns the resulting lines as one string concatenated by newlines
     *  @param commandLine command line with options, SQL, file- and/or tablenames
     *  @return all lines resulting from the query, concatenated by newlines
     */
    public String process(String commandLine) {
        return process(Pattern.compile("\\s+").split(commandLine)); // split on whitespace
    } // process

    /* function codes */
    private static final int FUNC_NONE = 0;
    private static final int FUNC_CF   = 1;
    
    /** Processes all command line arguments, and returns
     *  the resulting lines in one string.
     *  @param args command line arguments: options, numbers, filenames
     *  @return all lines of the result, concatenated by newlines
     */
    public String process(String[] args) {
        StringBuffer result = new StringBuffer(256);
        ContinuedFraction cf = new ContinuedFraction();
        int function = FUNC_NONE;
        int mode = ContinuedFraction.MODE_REGULAR;
        String amode = "reg";
        String fileName = "";
        String number = "";
        int debug  = 0;
        int anchor = 1;
        int pos = -1;
        try {
            int iarg = 0; // argument index
            if (iarg >= args.length) { // show help if no arguments
            } else {
                while (iarg < args.length) {
                    String opt = args[iarg ++]; // main operation letters and modifiers
                    if (opt.startsWith("-")) { // it is an option string
                        opt = opt.substring(1).toLowerCase();
                        if (false) {
                        } else if (opt.equals("m")) { // mode
                            if (iarg < args.length) {
                                amode = args[iarg ++];
                                if (false) {
                                } else if (amode.startsWith("reg")) {
                                    mode = ContinuedFraction.MODE_REGULAR;
                                } else if (amode.startsWith("floor")) {
                                    mode = ContinuedFraction.MODE_FLOOR;
                                } else if (amode.startsWith("ceil")) {
                                    mode = ContinuedFraction.MODE_CEILING;
                                } else if (amode.startsWith("alt") && amode.contains("0")) {
                                    mode = ContinuedFraction.MODE_ALTERNATE_0;
                                } else if (amode.startsWith("alt") && amode.contains("1")) {
                                    mode = ContinuedFraction.MODE_ALTERNATE_1;
                                } else if (amode.startsWith("near")) {
                                    mode = ContinuedFraction.MODE_NEAREST;
                                } else { 
                                    System.err.println("invalid mode " + amode);
                                }   
                            } else {
                                log.error("Option -m and no following mode");
                            }
                        } else if (opt.equals("a") || opt.equals("b")) { // anchor
                            if (iarg < args.length) {
                                try {
                                    anchor = Integer.parseInt(args[iarg ++]);
                                } catch (Exception exc) {
                                }
                            } else {
                                log.error("Option -a or -b and no following anchor value");
                            }
                            mode = opt.equals("a") ? ContinuedFraction.MODE_ANCHOR_A : ContinuedFraction.MODE_ANCHOR_B;
                        } else if (opt.equals("d")) { // debugging level
                            if (iarg < args.length) {
                                try {
                                    debug = Integer.parseInt(args[iarg ++]);
                                } catch (Exception exc) {
                                }
                            } else {
                                log.error("Option -d and no following debugging level");
                            }
                        } else if (opt.equals("f")) { // mode
                            if (iarg < args.length) {
                                fileName = args[iarg ++];
                                number = (new ExpressionReader()).read(fileName);
                            } else {
                                log.error("Option -f and no following filename");
                            }
                        } else if (opt.equals("cf")) { // generate a continued fraction
                            function = FUNC_CF;
                        } else {
                            if (opt.length() >= 1 && Character.isDigit(opt.charAt(0))) {
                                number = "-" + opt;
                            }
                        }
                    } else { // assume a number without option
                            if (opt.length() >= 1 && Character.isDigit(opt.charAt(0))) {
                                number = opt;
                            }
                    } // end of case for arguments
                } // while args[]
                switch (function) {
                    default:
                    case FUNC_NONE:
                        result.append("? no function specified");
                        break;
                    case FUNC_CF:
                        cf.setDebuggingLevel(debug);
                        cf.setAnchor(anchor);
                        cf.set(new BigRational(number), mode);
                        result.append(cf.toString());
                        result.append("\n");
                        result.append(cf.getRational().toString());
                        break;
                } // switch function
            } // at least 1 argument
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
        return result.toString();
    } // process

    /** Mathematics with rational numbers - main program.
     *  The result is printed to STDOUT.
     *  @param args command line arguments: options, numbers or filenames
     */
    public static void main(String[] args) {
        Logger log = LogManager.getLogger(RaMath.class.getName());
        try {
            RaMath ram = new RaMath();
            ram.initialize();
            System.out.println(ram.process(args));
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    } // main

} // RaMath
