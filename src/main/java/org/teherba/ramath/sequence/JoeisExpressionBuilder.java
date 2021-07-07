/*  JoeisExpressionBuilder: build jOEIS expressions (with Z, CR) from a postfix list
 *  @(#) $Id$
 *  2021-07-07: Georg Fischer: copied from JoeisPreparer.java
 */
/*
 * Copyright 2021 Dr. Georg Fischer
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
import  org.apache.log4j.Logger;

/** This class implements a general converter from postfix to infix notation.
 *  The algorithm is driven by a table that handles:
 *  <ul>
 *  <li>various operands: numbers, variables</li>
 *  <li>operators and their precedence</li>
 *  <li>function calls</li>
 *  <li>a type of the infix expression built so far (int, Z, CR)</li>
 *  </ul>
 *  @author Dr. Georg Fischer
 */
public class JoeisExpressionBuilder implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id$";

    /** Debugging switch */
    public static int debug = 0;

    /** log4j logger (category) */
    private Logger log;

    /** Mapping table for the build algorithm */
    private HashMap<String, Entry> map;

    /** Class for a row of the table.
     *  The rows are typically read from a file.
     */
    private class Entry {
        String key;    // operand, operator, function
        String group;  // "num", "name", "op", "fun"
        int srcCard;   // how many source stack elements are involved: 0 for operands, 1 for unary -, 2 for +*/ 
        String target; // target expression portion
        int tarCard;   // how many target stack elements are involved: 0 for operands, 1 for unary -, 2 for +*/ 
        int oldType;   // old type
        int newType;   // new type
        
        /** No-args constructor
         */
        public Entry() {
        }
        
        /** String representation of this object
         */
        public String toString() {
            return key 
            + "\t" + group
            + "\t" + srcCard
            + "\t" + target
            + "\t" + tarCard;
        }
    } // class Entry

    /** Reads the pattern table from a file
     *  @param fileName name of the input file, or "-" for STDIN
     */
    private void readTable(String fileName) {
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
                    Entry row = new Entry();
                    String[] parms = (line + "\t0").split("\\t");
                    int iparm = 0;
                    try {
                        row.key     = parms[iparm ++];
                        row.group   = parms[iparm ++];
                        row.srcCard = Integer.parseInt(parms[iparm ++]);
                        row.target  = parms[iparm ++];
                        row.tarCard = Integer.parseInt(parms[iparm ++]);
                    /*
                        row.oldType = Integer.parseInt(parms[iparm ++]);
                        row.newType = Integer.parseInt(parms[iparm ++]);
                    */
                    } catch (Exception exc) {
                    }
                    map.put(row.key, row);
                    if (debug >= 1) {
                        System.out.println("map: " + row.key + " -> " + row);
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
        log = Logger.getLogger(JoeisExpressionBuilder.class.getName());
        map = new HashMap<>();
    } // Constructor()

    /** Constructor with pattern file
     *  @param fileName name of the file
     */
    public JoeisExpressionBuilder(String fileName) {
        this();
        readTable(fileName);
    } // Constructor(String)
    
    private final static String NUM_ESCAPE = "01234567";

    /** Convert a sublist of postfix elements and generate the infix expression.
     *  @param postfix array of Strings for operands and operators
     *  @param fromIndex index of first element to be processed
     *  @param toIndex index of last element + 1
     *  @return generated infix expression
     *  Example:<br />
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
            Entry row = map.get(post); 
            if (row == null) { // no mapping found
               if (false) { // Caution, order of else-if branches matters!
                } else if (post.matches("\\A\\d")) { // unknown number
                    if (post.length() >= 10) {
                        post = post + "L"; // int -> long
                    }
                    row = map.get(NUM_ESCAPE); // must exist
                    row.target = row.target.replaceAll(NUM_ESCAPE, post);
                    stack.push(row.target);
                } else if (post.matches("\\A\\w+\\(\\Z")) { // any function start - nyi
                } else if (post.matches("\\A(A\\d+_?\\d*)\\)")) { // A-number - nyi
                    // ...
                } else if (post.matches("\\A\\w+\\)\\Z")) { // unknown function end
                    post = post.replaceAll("\\)","");
                    elems[0] = stack.pop();
                    stack.push("<?" + post + "(" + elems[0] + ")?>");
                } else if (post.matches("\\A[A-Za-z]")) { // unknown name
                    stack.push(post);
                } else {
                    stack.push("<?post=" + post + "?>");
                }
            } else { // mapping was found
                if (false) { // Caution, order of else-if branches matters!
                } else if (row.group.equals("op") || row.group.equals("fun")) {
                    String open = "(";
                    int ielem = row.srcCard - 1;
                    while (ielem >= 0) {
                        elems[ielem] = stack.pop();
                        ielem --;
                    } // while ielem
                    if (false) {
                    } else if (row.tarCard == 0) { // e.g. unary minus -> el0.negate()
                        stack.push(elems[0] + row.target + open + ")");
                    } else if (row.tarCard == 1) {
                        stack.push(elems[0] + row.target + open + elems[1] + ")"); // el0.add(el1)
                    } else if (row.tarCard == 2) {
                        stack.push(row.target + open + elems[0] + "," + elems[1] +")"); // .mod(el0,el1)
                    }
                    // ope || fun
                } else if (row.group.equals("name")) {
                    stack.push(row.target);
                } else if (row.group.equals("num")) {
                    stack.push(row.target);
                } else {
                    System.err.println("undefined group=\"" + row.group + "\"");
                }
            } // mapping found
        } // while ipost
        if (stack.size() == 1) {
            result.append(stack.pop());
        }
        return result.toString();
    } // getInfix

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
            } else {
                String[] postfix = opt.split("\\;");
                System.out.println("-> " + builder.getInfix(postfix, 0, postfix.length));
            }
        } // while args
    } // main

} // JoeisExpressionBuilder
