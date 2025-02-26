/*  Options: methods for the access to command line arguments
 *  @(#) $Id: Options.java 744 2011-07-26 06:29:20Z gfis $
 *  2024-12-27: deprecations
 *  2017-05-28: javadoc 1.8
 *  2015-04-05: Georg Fischer: copied from Matrix
 */
/*
 * Copyright 2015 Dr. Georg Fischer <dr dot georg dot fischer at gmail dot kom>
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
package org.teherba.ramath.util;
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.linear.Vector;
import  java.io.BufferedReader;
import  java.io.File;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.regex.Matcher;
import  java.util.regex.Pattern;
import  org.apache.logging.log4j.Logger;
import  org.apache.logging.log4j.LogManager;

/** Class Options stores the command line arguments,
 *  and implements utility method to access the arguments.
 *  @author Dr. Georg Fischer
 */
public class Options {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Options.java 744 2011-07-26 06:29:20Z gfis $";
    /** Local logger for exceptions */
    private static Logger log;

    /*-------------- class properties -----------------------------*/

    /** a copy of the pointer to the command line arguments */
    protected String[] args;
    /** index of current argument */
    protected int iarg;

    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public Options() {
        this(null, 0); // will not be accessible
    } // no-args Constructor

    /** Constructor with array
     *  @param args array of command line String arguments
     */
    public Options(String[] args) {
        this(args, 0);
    } // Constructor(args)

    /** Constructor with array and index
     *  @param args array of command line String arguments
     *  @param iarg index of current argument
     */
    public Options(String[] args, int iarg) {
        this.args = args;
        this.iarg = iarg;
        log = LogManager.getLogger(Options.class.getName());
    } // Constructor(args, iarg)

    /*-------------- simple access methods -----------------------------*/

    /** Gets the next String commandline argument
     *  @return a String argument, or null if the array is exhausted
     */
    public String get() {
        String result = null;
        if (iarg < args.length) {
            result = args[iarg ++];
        }
        return result;
    } // get

    /** Gets the next integer commandline argument
     *  @return an int argument, or null if the array is exhausted
     */
    public int getInt() {
        int result = -2906;
        if (iarg < args.length) {
            try {
                result= Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
                // ignore any errors
            }
        }
        return result;
    } // getInt

    /** Restores the last argument
     */
    public void unshift() {
        iarg --;
    } // unshift

    //------------- specific access methods --------------------------

    /** Start of a {@link Matrix} literal */
    private static final String MAT_OPEN  = "[[";
    /** End   of a {@link Matrix} literal */
    private static final String MAT_CLOSE = "]]";
    /** Start of a {@link Vector} literal */
    private static final String VECT_OPEN  = "[";
    /** End   of a {@link Vector} literal */
    private static final String VECT_CLOSE = "]";


    /** Gets matrices either from the command line arguments, or from file(s) specified therein.
     *  Any argument starting with "[[" is taken as a {@link Matrix} literal
     *  (it cannot contain spaces).
     *  For any argument "-f" or "-mf", the next argument is taken as a filename,
     *  and the matrices are read from the first literal starting with "[[" on each line.
     *  @return an array of matrices
     */
    public Matrix[] getMatrices() {
        return getMatrices("");
    } // getMatrices

    /** Gets matrices either from the command line arguments, or from file(s) specified therein.
     *  Any argument starting with "[[" is taken as a {@link Matrix} literal
     *  (it cannot contain spaces).
     *  For any argument "-f" or "-mf", the next argument is taken as a filename,
     *  and the matrices are read from the first literal starting with "[[" on each line.
     *  @param options a string with comma-separated options:
     *  <ul>
     *  <li>multiple  - try to read as many matrices from one line as possible</li>
     *  <li>nocomment - ignore all behind the first "#" on a line</li>
     *  </ul>
     *  @return an array of matrices
     */
    public Matrix[] getMatrices(String options) {
        ArrayList<Matrix> result = new ArrayList<Matrix>(32);
        boolean multiple  = options.indexOf("multiple" ) >= 0;
        boolean nocomment = options.indexOf("nocomment") >= 0;
        boolean busy = true;
        while (busy) {
            String arg = this.get();
            if (arg == null) {
                busy = false;
            } else if (arg.startsWith(MAT_OPEN)) {
                result.add(new Matrix(arg));
            } else if (arg.equals("-f") || arg.equals("-mf")) {
                String fileName = this.get();
                try {
                    BufferedReader linearReader = null;
                    if(fileName.equals("-")) { // STDIN
                        linearReader = new BufferedReader(new InputStreamReader(System.in, "UTF-8"));
                    } else {
                        linearReader = new BufferedReader(new FileReader(new File(fileName)));
                    } // not STDIN
                    String line = null;
                    while ((line = linearReader.readLine()) != null) { // read and process lines
                        if (nocomment) {
                            int sharpPos = line.indexOf("#");
                            if (sharpPos >= 0) {
                                line = line.substring(0, sharpPos);
                            }
                        }
                        int start = 0;
                        int openPos = line.indexOf(MAT_OPEN, start);
                        while (openPos >= start) {
                            int closePos = line.indexOf(MAT_CLOSE, openPos);
                            if (start > 0 && ! multiple) { // 2nd attempt - break loop
                                start = line.length();
                            } else if (closePos > openPos) {
                                Matrix amat  = new Matrix(line.substring(openPos, closePos + MAT_CLOSE.length()));
                                result.add(amat);
                                start = closePos + MAT_CLOSE.length();
                                openPos = line.indexOf(MAT_OPEN, start);
                            } else {
                                start = line.length(); // break loop if not found
                            }
                        } // while openPos
                    } // while line
                    linearReader.close();
                } catch (Exception exc) {
                    log.error(exc.getMessage(), exc);
                }
            } else {
                busy = false;
                unshift();
            }
        } // while busy
        return result.toArray(new Matrix[0]);
    } // getMatrices

    /** Gets vectors either from the command line arguments, or from file(s) specified therein.
     *  Any argument starting with "[" is taken as a {@link Vector} literal
     *  (it cannot contain spaces).
     *  For any argument "-f" or "-vf", the next argument is taken as a filename,
     *  and the matrices are read from the first literal starting with "[[" on each line.
     *  @return an array of matrices
     */
    public Vector[] getVectors() {
        return getVectors("");
    } // getVectors

    /** Gets matrices either from the command line arguments, or from file(s) specified therein.
     *  Any argument starting with "[[" is taken as a {@link Matrix} literal
     *  (it cannot contain spaces).
     *  For any argument "-f" or "-mf", the next argument is taken as a filename,
     *  and the vectorss are read from the first literal starting with "[" on each line.
     *  @param options a string with comma-separated options:
     *  <ul>
     *  <li>multiple  - try to read as many vectors from one line as possible</li>
     *  <li>nocomment - ignore all behind the first "#" on a line</li>
     *  </ul>
     *  @return an array of vectors
     */
    public Vector[] getVectors(String options) {
        ArrayList<Vector> result = new ArrayList<Vector>(32);
        boolean multiple  = options.indexOf("multiple" ) >= 0;
        boolean nocomment = options.indexOf("nocomment") >= 0;
        boolean busy = true;
        while (busy) {
            String arg = this.get();
            if (arg == null) {
                busy = false;
            } else if (arg.startsWith(VECT_OPEN)) {
                result.add(new Vector(arg));
            } else if (arg.equals("-f") || arg.equals("-vf")) {
                String fileName = this.get();
                try {
                    BufferedReader linearReader = null;
                    if(fileName.equals("-")) { // STDIN
                        linearReader = new BufferedReader(new InputStreamReader(System.in, "UTF-8"));
                    } else {
                        linearReader = new BufferedReader(new FileReader(new File(fileName)));
                    } // not STDIN
                    String line = null;
                    while ((line = linearReader.readLine()) != null) { // read and process lines
                        if (nocomment) {
                            int sharpPos = line.indexOf("#");
                            if (sharpPos >= 0) {
                                line = line.substring(0, sharpPos);
                            }
                        }
                        int start = 0;
                        int openPos = line.indexOf(VECT_OPEN, start);
                        if (openPos < 0) { // no VECT_OPEN found
                            if (line.matches("\\-?\\d+([\\s\\,]+\\-?\\d+)*")) { // take the whole line
                                result.add(new Vector(VECT_OPEN + line + VECT_CLOSE));
                            }
                        } else { // VECT_OPEN found
                            while (openPos >= start) {
                                int closePos = line.indexOf(VECT_CLOSE, openPos);
                                if (start > 0 && ! multiple) { // 2nd attempt - break loop
                                    start = line.length();
                                } else if (closePos > openPos) {
                                    result.add(new Vector(line.substring(openPos, closePos + VECT_CLOSE.length())));
                                    start = closePos + VECT_CLOSE.length();
                                    openPos = line.indexOf(VECT_OPEN, start);
                                } else {
                                    start = line.length(); // break loop if not found
                                }
                            } // while openPos
                        } // VECT_OPEN found
                    } // while line
                    linearReader.close();
                } catch (Exception exc) {
                    log.error(exc.getMessage(), exc);
                    exc.printStackTrace();
                }
            } else {
                busy = false;
                unshift();
            }
        } // while busy
        return result.toArray(new Vector[0]);
    } // getVectors

    /** Extracts a Vector from a string.
     *  Only sequences of digits (optionally preceeded by a sign)
     *  are recognized, all other characters are ignored.
     *  @param line String to be splitted
     *  @return extracted Vector
     */
    public Vector read(String line) {
        ArrayList<Integer> alist = new ArrayList<Integer>();
        // System.out.println("read args /" + line + "/");
        int temp = 0;
        try {
            Pattern pattern = Pattern.compile("[\\+\\-]?[0-9]+"); // digits with optional sign
            Matcher matcher = pattern.matcher(line);
            while (matcher.find()) {
                String part = line.substring(matcher.start(), matcher.end());
                temp = Integer.parseInt(part);
                alist.add(Integer.valueOf(temp));
            }  // while tokens
        } catch (Exception exc) {
            throw new IllegalArgumentException(exc.getMessage());
        }
        int ires = alist.size();
        Vector result = new Vector(ires --);
        while (ires >= 0) {
            result.set(ires, alist.get(ires));
            ires --;
        }
        return result;
    } // read

} // Options
