/*  Exhaustive generator for power identities
 *  @(#) $Id: CandidateSelectorjava 808 2011-09-20 16:56:14Z gfis $
 *  2018-01-22, Georg Fischer: copied from MatrixExhauster
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
package org.teherba.ramath.eec;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.linear.BigVector;
import  org.teherba.ramath.util.Dispenser;
import  org.teherba.ramath.util.ModoMeter;
import  org.teherba.ramath.util.IntegerExpander;
import  java.io.BufferedReader;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.HashMap;
import  org.apache.log4j.Logger;

/** Finds candidate rows for matrices which
 *  maintain the <em>equal sum of like powers</em> property of tuples.
 *  Takes a set of elements which participate in known
 *  such tuples. Each tuple is multiplied with an {@link IntegerExpander},
 *  and the innerproduct is checked against all stored elements of the set.
 *  Any matches are printed on STDOUT.
 *  @author Dr. Georg Fischer
 */
public class CandidateSelector {
    public final static String CVSID = "@(#) $Id: CandidateSelectorjava 808 2011-09-20 16:56:14Z gfis $";
    /** Debugging switch, 0 = none, 1 = some */
    private int debug = 1;
    /** log4j logger (category) */
    private Logger log;

    /** List of known power sums (rows)*/
    private ArrayList<BigVector> tuples      = new ArrayList<BigVector>(64);
    /** Maps tuple elements to indexes of the form nnnnX,
     *  where nnnn is a row index, and X is one of the {@link #letters}
     *  at the beginning of the alphabet ("a", "b") etc.
     */
    private HashMap<BigInteger/*String*/, String> elements = new HashMap<BigInteger/*String*/, String>(256); //
    /** Letters for variables */
    private static final String letters = "abcdefgh";
    /** Number of elements in one tuple */
    private int width;
    /** expand from -maxDigit+1 to +maxDigit-1 */
    private int maxDigit;

    /** Exponent of the power sum.
     *  EEC(4,1,3) means w^4 = x^4 + y^4 + z^4 : (exp, left, right), where left+right = width
     */
    private int exponent;
    /** Number of elements in the left  part of the power sum */
    private int left;
    /** Number of elements in the right part of the power sum */
    private int right;

    //===========================
    // Construction
    //===========================
    /** No-args Constructor.
     */
    public CandidateSelector() {
        this(4, 8, 4, 3, 1);
    } // Constructor()

    /** Constructor with parameters.
     *  @param exponent exponent of the powersum
     *  @param width number of elements in the powersum or in one tuple
     *  @param maxDigit limit for the expansion
     */
    public CandidateSelector(int width, int maxDigit, int exponent, int left, int right) {
        log = Logger.getLogger(CandidateSelector.class.getName());
        this.width    = width;
        this.maxDigit = maxDigit;
        this.exponent = exponent;
        this.left     = left;
        this.right    = right;
    } // Constructor(,,,,)

    //==========================================================
    /** Adds a tuple to the list
     *  @param tuple tuple to be added, must be of length {@link #width}
     */
    public void add(BigVector tuple) {
        int index = tuples.size();
        tuples.add(tuple);
        int itup = 0;
        while (itup < width) { // store all elements
            elements.put(tuple.get(itup)/*.toString()*/
                    , String.format("%04d.%s", index, letters.substring(itup, itup + 1)));
            itup ++;
        } // while itup
    } // add

    /** Reads a list of tuples which represent a powersum, one tuple on one line.
     *  All behind "#" on a line is a comment and is ignored.
     *  Only lines with exactly {@link #width} numbers are processed and stored.
     *  @param fileName name of th einput file, or "-" for STDIN.
     *  @param limit maximum number of lines to be read
     */
    public void read(String fileName) {
        read(fileName, 65535); // very high
    } // read(String)

    /** Reads a list of tuples which represent a powersum, one tuple on one line.
     *  All behind "#" on a line is a comment and is ignored.
     *  Only lines with exactly {@link #width} numbers are processed and stored.
     *  @param fileName name of th einput file, or "-" for STDIN.
     *  @param limit maximum number of lines to be read
     */
    public void read(String fileName, int limit) {
        try {
            String line = null;
            BufferedReader lineReader = new BufferedReader
                    ( (fileName.equals("-"))
                    ? new InputStreamReader(System.in)
                    : new FileReader(fileName)
                    );
            while (limit > 0 && (line = lineReader.readLine()) != null) { // read and process lines
                String[] nums = line.replaceAll("\\s*\\#.*", "") // remove any comment
                        .replaceAll("\\A\\D+","") // remove leading non-digits
                        .split("\\D+"); // separate on non-digits
                if (nums.length == this.width) {
                    BigVector vect = new BigVector(nums.length, 0, nums);
                    if (debug > 0) {
                        System.out.print(tuples.size() + ": " + vect.toString());
                        System.out.print(" is "
                                + (vect.isPowerSum(exponent, left, right) ? "" : "NO ")
                                + "powerSum(4)");
                        System.out.println();
                    } // debug
                    this.add(vect);
                } // nums.length == 4
                limit --;
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
    } // read

    /** Gets a tuple from the list
     *  @param index index of the tuple
     *  @return the corresponding tuple in the array/list.
     */
    public BigVector get(int index) {
        return tuples.get(index);
    } // get

    /** Number of stored tuples
     *  @return size of the array/list
     */
    public int size() {
        return tuples.size();
    } // size

    /** Expands all tuples and tries to find a matching element.
     */
    public void expand() {
        Dispenser dispenser = null;
        if (true) {
            dispenser = new IntegerExpander(width, maxDigit);
        } else {
            dispenser = new ModoMeter      (width, maxDigit);
        }
        int index = 0;
        while (index < size()) {
            String index4 = String.format("%04d", index);
            BigVector tuple = tuples.get(index); // try to find an innerproduct of this tuple in the elements
            BigVector[] prods = new BigVector[maxDigit]; // precomputed factors for optimization
            int itup  = 0;
            int idisp = 0;
            while (itup < width) { // precompute all possible products
                while (idisp < maxDigit) {
                    prods[idisp] = tuple.multiply(idisp);
                    idisp ++;
                } // while idisp
                itup ++;
            } // while itup, precompute

            dispenser.reset();
            while (dispenser.hasNext()) {
                int[] values = dispenser.next();
                if (debug >= 2 && index == 0) {
                    System.out.println(dispenser.toString() + "; ");
                }
                BigInteger sum = BigInteger.ZERO;
                itup = 0;
                while (itup < width) { // innerproduct sum
                    if        (values[itup] ==  0) {
                    } else if (values[itup] == +1) {
                        sum = sum.add     (tuple.get(itup));
                    } else if (values[itup] == -1) {
                        sum = sum.subtract(tuple.get(itup));
                    } else if (values[itup] >   0) {
                        sum = sum.add     (prods[+ values[itup]].get(itup));
                    } else if (values[itup] <   0) {
                        sum = sum.subtract(prods[- values[itup]].get(itup));
                    }
                    itup ++;
                } // while itup innerproduct sum
                // check against all stored elements
                String cand = elements.get(sum/*.toString()*/);
                if (cand != null && ! cand.startsWith(index4)) { // found a non-trivial one
                    System.out.print("cand\t" + index4);
                    System.out.print("\t" + cand.replaceAll("\\.", "\t"));
                    System.out.print("\t" + tuple.toString());
                    System.out.print("\t" + (new Vector(values)).toString(","));
                    System.out.println();
                } // found
            } // while dispensing
            index ++;
        } // while index
    } // expand

    //==========================
    // Main
    //==========================
    /** Test method.
     *  @param args command line arguments:
     *  <ul>
     *  <li>-w width, number of elements in a tuple</li>
     *  <li>-m maximum expansion digit</li>
     *  <li>-e powersum exponent</li>
     *  <li>-l left  powersum elements</li>
     *  <li>-r right powersum elements</li>
     *  <li>-f filename</li>
     *  </ul>
     */
    public static void main(String[] args) {
        String op = "";
        int maxDigit = 8;
        int width    = 4;
        int exponent = 4;
        int left     = 3;
        int right    = 1;
        String fileName = "";
        int iarg  = 0;
        while (iarg < args.length) { // get all arguments
            if (args[iarg].startsWith("-")) {
                op = args[iarg ++].substring(1).toLowerCase();
                if (false) {
                } else if (op.equals("e")) {
                    try {
                        exponent = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else if (op.equals("f")) {
                    fileName = args[iarg ++];
                } else if (op.equals("l")) {
                    try {
                        left     = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else if (op.equals("m")) {
                    try {
                        maxDigit = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else if (op.equals("r")) {
                    try {
                        right    = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else if (op.equals("w")) {
                    try {
                        width    = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else {
                    System.err.println("unknown option \"-" + op + "\"");
                }
            } // startsWith "-"
        } // while args

        CandidateSelector selector = new CandidateSelector(width, maxDigit, exponent, left, right);
        selector.read(fileName);
        selector.expand();
    } // main

} // CandidateSelector
