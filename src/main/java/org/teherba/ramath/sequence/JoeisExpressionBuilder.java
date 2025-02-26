/*  JoeisExpressionBuilder: build jOEIS expressions (with Z, CR) from a postfix list
 *  @(#) $Id$
 *  2023-11-08: buildLambda
 *  2023-08-30: allow unknown names
 *  2021-11-30: translate(), like getInfix, but with op1, op2 placeholders
 *  2021-07-07: Georg Fischer: copied from JoeisPreparer.java
 */
/*
 * Copyright 2021 Dr. Georg Fischer <dr dot georg dot fischer at gmail>.
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
import  java.io.BufferedReader;
import  java.io.FileInputStream;
import  java.io.InputStreamReader;
import  java.io.Serializable;
import  java.nio.channels.Channels;
import  java.nio.channels.ReadableByteChannel;
import  java.util.HashMap;
import  java.util.Stack;
import  org.apache.logging.log4j.Logger;
import  org.apache.logging.log4j.LogManager;

/** This class implements a general converter from postfix to infix notation.
 *  The algorithm is driven by a table that handles:
 *  <ul>
 *  <li>various operands: numbers, variables</li>
 *  <li>operators and their precedence</li>
 *  <li>function calls</li>
 *  </ul>
 *  @author Dr. Georg Fischer
 */
public class JoeisExpressionBuilder implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id$";

    /** Debugging switch */
    public static int debug = 0;

    /** Set the debugging mode *
     *  @param debug mode: 0=none, 1=some, 2=more
     */
    public void setDebug(int debug) {
        this.debug = debug;
    }
    
    /** log4j logger (category) */
    private Logger log;

    /** Mapping table for the build algorithm */
    private HashMap<String, TargetRow> table;

    /** Type of the translation table: 1=xpat, 2=ttab (with $1, $2, $3) */
    private int tableType;

    /** Class for a row of the table.
     *  The rows are typically read from a file.
     */
    private class TargetRow {
        String key;    // operand, operator/function/method
        String group;  // "numb", "name", "meth", "func"
        int    card;   // how many source stack elements are involved: 0 for operands; 1 for abs, unary -; 2 for + * / etc.
        String target; // target expression portion
    /*
        int tarType;   // new type
    */
        /** No-args constructor
         */
        public TargetRow() {
        }

        /** String representation of this object
         */
        public String toString() {
            return key
            + "|" + group
            + "|" + card
            + "|" + target
            ;
        }
    } // class TargetRow

    /** Read the pattern table from a file
     *  @param fileName name of the input file, or "-" for STDIN
     */
    private void readTable(String fileName) {   
        BufferedReader lineReader; // Reader for the input file
        String srcEncoding = "UTF-8"; // Encoding of the input file
        String line = null; // current line from text file
        if (false) {
        } else if (fileName.endsWith(".xpat")) {
            tableType = 1;
        } else if (fileName.endsWith(".ttab")) {
            tableType = 2;
        }
        try {
            if (fileName == null || fileName.length() <= 0 || fileName.equals("-")) {
                lineReader = new BufferedReader(new InputStreamReader(System.in, srcEncoding));
            } else {
                ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
                lineReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
            }
            while ((line = lineReader.readLine()) != null) { // read and process lines
                line = line.replaceAll("\\#.*","").trim(); // remove (trailing) comments
                if (line.length() > 0) { // not empty
                    TargetRow row = new TargetRow();
                    String[] parms = (line + "\t0").split("\\t");
                    int iparm = 0;
                    try {
                        row.key     = parms[iparm ++];
                        row.group   = parms[iparm ++];
                        row.card    = Integer.parseInt(parms[iparm ++]);
                        row.target  = parms[iparm ++];
                    /*
                        row.tarType = Integer.parseInt(parms[iparm ++]);
                    */
                    } catch (Exception exc) {
                    }
                    table.put(row.key, row);
                    if (debug >= 2) {
                        System.out.println("table: " + row.key + " -> " + row);
                    }
                } // is not a comment
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
    } // readTable

    //==================
    // Construction
    //==================

    /** No-args constructor for an empty JoeisExpressionBuilder.
     */
    public JoeisExpressionBuilder() {
        log = LogManager.getLogger(JoeisExpressionBuilder.class.getName());
        table = new HashMap<>();
    } // Constructor()

    /** Constructor with pattern file
     *  @param fileName name of the file
     */
    public JoeisExpressionBuilder(String fileName) {
        this();
        readTable(fileName);
    } // Constructor(String)

    /** constant for unknown numbers (must be present in every table */
    private final static String NUM_ESCAPE = "01234567";

    /** Convert a sublist of postfix elements and generate the infix expression.
     *  @param postfix array of Strings for operands and operators
     *  @param fromIndex index of first element to be processed
     *  @param toIndex index of last element + 1
     *  @return generated infix expression
     *  Example:
     *  <code>
     *  A145516 03  12  ((1+n)*(8+6/2))^(1+n)   1;n;+;8;6;2;/;+;*;1;n;+;^
     *  </code>
     */
    public String getInfix(String[] postfix, int fromIndex, int toIndex) {
        StringBuilder result = new StringBuilder(128);
        Stack<String> stack = new Stack<>();
        int ipost = fromIndex;
        String[] elems = new String[16]; // for function elements: elems[0] elems[1] +
        while (ipost < toIndex) {
            String post = postfix[ipost ++];
            TargetRow row = table.get(post);
            if (debug > 0) {
                System.out.println("# post=" + post);
            }
            if (row == null) { // no mapping found
               if (false) { // Caution, order of else-if branches matters here!
                } else if (post.matches("\\d+")) {       // unknown number
                    if (post.length() >= 10) {
                        post = post + "L"; // int -> long constant
                    }
                    row = table.get(NUM_ESCAPE); // must exist in the table
                    stack.push(row.target.replaceAll(NUM_ESCAPE, post));
                } else if (post.matches("[A-Za-z]\\w*\\(")) {   // any function start - ignore
                } else if (post.matches("[Aa]\\d+(_\\d*)?\\(")) { // A-number - nyi
                    stack.push("<?A-number=" + post + "?>");
                } else if (post.matches("\\w+\\)")) {   // unknown function end
                    // post = post.replaceAll("\\)","");
                    elems[0] = stack.empty() ? "" : stack.pop();
                    stack.push("<?func)=" + post + "(" + elems[0] + ")?>");
                } else if (post.matches("([A-Za-z]+)__(\\d+)")) { // function(int), shielded, e.g. zeta(3)
                    stack.push(post.replaceAll("__", "(") + ")"); // unshield
                } else if (post.matches("[A-Za-z]\\w*")) { // unknown name
                    stack.push("<?name=" + post + "?>");
                //  stack.push(post);
                } else if (post.equals(",")) {                // "," = parameter separator - ignore
                } else {
                    stack.push("<?post=" + post + "?>");
                }
            } else { // mapping was found
               if (debug > 0) {
                   System.out.println("# row=" + row.toString());
               }
               if (false) {
                } else if (row.group.startsWith("nam")) {
                    stack.push(row.target);
                } else if (row.group.startsWith("num")) {
                    stack.push(row.target);
                } else if (row.group.startsWith("fun")  // pow(a,b)
                        || row.group.startsWith("met")  // a.add(b)
                        ) {
                    int ielem = row.card - 1; // fill from backwards
                    while (ielem >= 0 && ! stack.empty()) { // pop operands into elems
                        elems[ielem --] = stack.pop();
                    } // while popping operands
                    if (debug > 0) {
                        System.out.print("# elems, #" + row.card + " ");
                        String sep = "=";
                        for (ielem = 0; ielem < row.card; ielem ++) {
                            System.out.print(sep + elems[ielem]);
                            sep = ",";
                        } // for ielem
                        System.out.println();
                    }
                    StringBuilder target = new StringBuilder(64);
                    int start = 1;
                    if (false) {
                    } else if (row.group.startsWith("met")) { // e.g. unary minus -> el0.negate()
                        target.append(elems[0]);
                        target.append(row.target);
                        start = 2;
                    } else if (row.group.startsWith("fun")) { // e.g. unary minus -> el0.negate()
                        target.append(row.target);
                        target.append(elems[0]);
                        start = 1;
                    }
                    ielem = 1;
                    while (ielem < row.card) {
                        if (ielem >= start) {
                            target.append(",");
                        }
                        target.append(elems[ielem]);
                        ielem ++;
                    } // while elems[1] ...
                    target.append(")");
                    stack.push(target.toString());
                    // func || meth
                } else {
                    System.err.println("undefined group=\"" + row.group + "\"");
                }
            } // mapping found
            if (debug > 0) {
                if (stack.empty()) {
                    System.out.println("# stack empty");
                } else {
                    System.out.println("# stack.top=" + stack.peek());
                }
            }
        } // while ipost
        if (stack.size() == 1) {
            result.append(stack.pop());
        }
        return result.toString();
    } // getInfix

    /** Convert a sublist of postfix elements and generate the target expression.
     *  Similar to {@link #getInfix}, but with op1, op2 placeholders
     *  @param postfix array of Strings for operands and operators
     *  @param fromIndex index of first element to be processed
     *  @param toIndex index of last element + 1
     *  @return generated target expression
     */
    public String translate(String[] postfix, int fromIndex, int toIndex) {
        StringBuilder result = new StringBuilder(128);
        Stack<String> stack = new Stack<>();
        int ipost = fromIndex;
        String[] elems = new String[16]; // for function elements: elems[0] elems[1] +
        while (ipost < toIndex) {
            String post = postfix[ipost ++];
            TargetRow row = table.get(post);
            if (debug > 0) {
                System.out.println("# post=" + post);
            }
            if (row == null) { // no mapping found
               if (false) { // Caution, order of else-if branches matters here!
                } else if (post.startsWith(".")) {             // from improvements - remove the dot and pass it unchecked/unchanged
                    stack.push(post.substring(1));
                } else if (post.matches("\\A\\d+\\Z")) {       // unknown number
                    if (post.length() >= 10) {
                        post = post + "L"; // int -> long
                    }
                    row = table.get(NUM_ESCAPE); // must exist in the table
                    stack.push(row.target.replaceAll("op1", post));
                } else if (post.matches("\\A\\w+\\(\\Z")) {   // any function start - ignore
                } else if (post.matches("\\A(A\\d+_?\\d*)\\)\\Z")) { // A-number - nyi
                    // ...
                } else if (post.matches("\\A\\w+\\)\\Z")) {   // unknown function end
                    post = post.replaceAll("\\)","");
                    elems[0] = stack.empty() ? "" : stack.pop();
                    stack.push("<?" + post + "(" + elems[0] + ")?>");
                } else if (post.matches("\\A[A-Za-z]+\\Z")) { // unknown name
                    stack.push("<?name=" + post + "?>");
                } else if (post.equals(",")) {                // "," = parameter separator - ignore
                } else {
                    stack.push("<?post=" + post + "?>");
                }
            } else { // mapping was found
               if (debug > 0) {
                   System.out.println("# row=" + row.toString());
               }
               if (false) {
                } else if (row.group.startsWith("nam")) { // a specific name like "x" - RING.x()
                    stack.push(row.target);
                } else if (row.group.startsWith("num")) { // a specific number like "1" -> Q.ONE
                    stack.push(row.target);
                } else if (row.group.startsWith("fun")  // pow(a,b)
                        || row.group.startsWith("met")  // a.add(b)
                        ) {
                    String part = row.target;
                    int ielem = row.card - 1; // fill from backwards
                    while (ielem >= 0 && ! stack.empty()) { // pop operands into elems
                        String repl = stack.pop();
                        part = part.replaceAll("op" + String.valueOf(ielem + 1), repl);
                        ielem --;
                    } // while popping operands
                    stack.push(part);
                    // func || meth
                } else {
                    System.err.println("undefined group=\"" + row.group + "\"");
                }
            } // mapping found
            if (debug > 0) {
                if (stack.empty()) {
                    System.out.println("# stack empty");
                } else {
                    System.out.println("# stack[" + stack.size() + "]=top=" + stack.peek());
                }
            }
        } // while ipost
    /*
        if (stack.size() == 1) {
            result.append(stack.pop());
        }
        return result.toString();
    */
        return stack.pop();
    } // translate

    //==================
    // Test method
    //==================

    /** Main method, filters a file and writes the copy to STDOUT.
     *  @param args command line arguments: filename, or "-" or none for STDIN
     */
    public static void main(String[] args) {
        int iarg = 0;
        JoeisExpressionBuilder builder = new JoeisExpressionBuilder();
        String fileName = "-"; // assume STDIN
        String[] postfix = null;
        while (iarg < args.length) { // consume all arguments
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.equals    ("-d")     ) {
                debug = 1;
                try {
                    debug = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) { // take default
                }
            } else if (opt.equals    ("-p")     ) {
                fileName = args[iarg ++];
                builder.readTable(fileName);
                postfix = args[iarg ++].split("\\;");
                System.out.println("-> " + builder.getInfix (postfix, 0, postfix.length));
            } else if (opt.equals    ("-t")     ) {
                fileName = args[iarg ++];
                builder.readTable(fileName);
                postfix = args[iarg ++].split("\\;");
                System.out.println("-> " + builder.translate(postfix, 0, postfix.length));
            } else {
                System.err.println("invalid option \"" + opt + "\"");
            }
        } // while args
    } // main

} // JoeisExpressionBuilder
