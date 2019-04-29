/*  Reader for text file, returns a string without any whitespace
 *  @(#) $Id: ExpressionReader.java 744 2011-07-26 06:29:20Z gfis $
 *  2016-08-25: inline comments; Porto Valtravaglia
 *  2014-03-31: encoding, channels
 *  2013-08-25: trimLine, getArguments
 *  2011-07-24: no lowerCasing, and optional newline separators
 *  2011-07-12: ignore comment lines starting with "\s+#"
 *  2009-07-12: isZeroes
 *  2009-07-09, Georg Fischer: copied from BigRational
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  java.io.BufferedReader;
import  java.io.FileInputStream;
import  java.io.InputStreamReader;
import  java.nio.channels.Channels;
import  java.nio.channels.ReadableByteChannel;
import  java.util.ArrayList;
import  org.apache.log4j.Logger;

/** Reads an expression from a text file (maybe with several lines) and returns a string
 *  of digits, operators and variable names.
 *  @author Dr. Georg Fischer
 */
public class ExpressionReader {
    public final static String CVSID = "@(#) $Id: ExpressionReader.java 744 2011-07-26 06:29:20Z gfis $";

    /** log4j logger (category) */
    private Logger log;

    /** Whether to keep line ends as "\n" */
    private boolean withLineEnd;

    /** Encoding of the input file */
    private String srcEncoding;
    
    /** Reader for the input file */
    private BufferedReader lineReader;

    /** No-args Constructor
     */
    public ExpressionReader() {
        this("UTF-8", false);
    } // no-args Constructor

    /** Constructor with line ending
     *  @param withLineEnd Whether to keep line ends as "\n"
     */
    public ExpressionReader(boolean withLineEnd) {
        this("UTF-8", withLineEnd);
    } // Constructor(boolean)

    /** Constructor with encoding
     *  @param srcEncoding encoding of the input file
     */
    public ExpressionReader(String srcEncoding) {
        this(srcEncoding, false);
    } // Constructor(String)

    /** Constructor with encoding and line ending
     *  @param srcEncoding encoding of the input file
     *  @param withLineEnd Whether to keep line ends as "\n"
     */
    public ExpressionReader(String srcEncoding, boolean withLineEnd) {
        log = Logger.getLogger(ExpressionReader.class.getName());
        this.srcEncoding = srcEncoding;
        this.withLineEnd = withLineEnd;
        lineReader = null;
    } // Constructor(String, boolean)

    /** Processes one line with a polynomial expression:
     *  <ul>
     *  <li>"#" and all following characters on a line are ignored    </li>
     *  <li>Whitespace is removed.                                    </li>
     *  <li>Empty lines are suppressed.                               </li>
     *  <li>&lt;sup&gt; is replaced by "^".                           </li>
     *  <li>All other HTML tags are removed.                          </li>
     *  </ul>
     *  Caution: The exponentiation is not exact and works for single digits and variables only.
     *  @param line the input string
     *  @return the output string, or null if the input was empty or a comment
     */
    public String trimLine(String line) {
        String result = null;
        line = line.replaceAll("#.*", ""); // remove comments
        if (! line.matches("\\s*")) { // line not empty or whitespace only
            result = line
                    .replaceAll("\\s","") // remove whitespace
                    .replaceAll("<sup>", "^") // exponentiation
                    .replaceAll("</?\\w+>", "") // remove all other HTML tags
                    ;
        }
        return result;
    } // trimLine

    /** Reads a text file, and returns all lines concatenated into
     *  one long string, with whitespace removed.
     *  "#" starts a comment - the rest of the line is ignored.
     *  HTML tags are removed, except for &lt;sup&gt; which is
     *  converted to the exponentiation operator "^".
     *  If {@link #withLineEnd} was set on construction, the lines in
     *  the resulting string are separated by single newline characters.
     *  @param fileName name of the file to be parsed.
     *  The method reads from STDIN if <em>fileName</em> is <em>null</em>, empty or "-"
     *  @return one line with the concatenated string for the resulting expression
     */
    public String read(String fileName) {
        String line = null; // current line from text file
        StringBuffer result = new StringBuffer(1024);
        try {
            if (fileName == null || fileName.length() <= 0 || fileName.equals("-")) {
                lineReader = new BufferedReader(new InputStreamReader(System.in, srcEncoding));
            } else {
                ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
                lineReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
            }
            while ((line = lineReader.readLine()) != null) { // read and process lines
                line = trimLine(line);
                if (line != null) {
                    if (result.length() > 0 && withLineEnd) {
                        result.append("\n");
                    }
                    result.append(line);
                } // line != null
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
        return result.toString();
    } // read

    /** Evaluates commandline arguments and returns strings of expressions.
     *  The strings are either taken from the remaining elements of <em>args</em>,
     *  or, if such a string is "-f", the following string is interpreted as a filename.
     *  This file is opened, all lines are returned as single strings, and
     *  the processing of arguments is continued at the end of the file.
     *  "#" starts a comment - the rest of the line is ignored.
     *  HTML tags are removed, except for &lt;sup&gt; which is
     *  converted to the exponentiation operator "^".
     *  @param iarg index of first element in <em>args</em> to be processed
     *  @param args commandline arguments, strings or "-f filename"
     *  @return an array of all expressions
     */
    public String[] getArguments(int iarg, String[] args) {
        ArrayList<String> result = new ArrayList<String>(16);
        while (iarg < args.length) {
            String line = args[iarg ++]; // next expression
            if (line.equals("-f")) {
                if (iarg < args.length) {
                    String fileName = args[iarg ++];
                    try {
                        if (fileName == null || fileName.length() <= 0 || fileName.equals("-")) {
                            lineReader = new BufferedReader(new InputStreamReader(System.in, srcEncoding));
                        } else {
                            ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
                            lineReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
                        }
                        while ((line = lineReader.readLine()) != null) { // read and process lines
                            line = trimLine(line);
                            if (line != null) {
                                result.add(line);
                            } // line != null
                        } // while ! eof
                        lineReader.close();
                    } catch (Exception exc) {
                        log.error(exc.getMessage(), exc);
                    } // try
                } else {
                    log.error("-f and no following filename");
                }
            } else { // not "-f"
                line = trimLine(line);
                if (line != null) {
                    result.add(line);
                }
            } // not "-f"
        } // while iarg
        return result.toArray(new String[0]);
    } // getArguments

    /** Test method, evaluates arguments and prints the expressions on single lines
     *  @param args command line arguments: expressions and/or -f filename
     */
    public static void main(String[] args) {
        String[] exprs = (new ExpressionReader()).getArguments(0, args);
        int iexpr = 0;
        while (iexpr < exprs.length) {
            System.out.println(exprs[iexpr ++]);
        } // while iexpr
    } // main

} // ExpressionReader
