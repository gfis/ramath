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
import  org.teherba.ramath.linear.BigMatrix;
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
import  java.util.Iterator;
import  java.util.TreeMap;
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
    /** Adds a tuple to the list, and remember its elements in a HashMap
     *  @param tuple tuple to be added, must be of length {@link #width}
     */
    public void addTuple(BigVector tuple) {
        int target = tuples.size(); // index of next tuple stored
        tuples.add(tuple);
        for (int itup = 0; itup < width;  itup ++) { // store all elements
            elements.put(tuple.getBig(itup), String.format("%04d\t%d", target, itup));
        } // for itup
    } // addTuple

    /** Reads a list of tuples which represent a powersum, one tuple on one line.
     *  All behind "#" on a line is a comment and is ignored.
     *  Only lines with exactly {@link #width} numbers are processed and stored.
     *  @param fileName name of th einput file, or "-" for STDIN.
     */
    public void read(String fileName) {
        read(fileName, 65535); // very high limit
    } // read(String)

    /** Reads a list of tuples which represent a powersum, one tuple per line.
     *  All text behind "#" on a line is treated as a comment and is ignored.
     *  Only lines with exactly {@link #width} numbers are processed and stored.
     *  @param fileName name of the input file, or "-" for STDIN.
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
                    BigVector tuple = new BigVector(nums.length, 0, nums);
                    if (! tuple.isPowerSum(exponent, left, right)) {
                        System.out.println("no powersum(" + exponent + ", " + left + ", " + right + ") "
                            + tuples.size() + ": " + tuple.toString());
                    } // no powersum
                    this.addTuple(tuple);
                } // nums.length == 4
                limit --;
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
            exc.printStackTrace();
        } // try
    } // read

    /** Expands all tuples and tries to find a matching element.
     */
    public void expand() {
        Dispenser dispenser = null;
        if (true) {
            dispenser = new IntegerExpander(width, maxDigit);
        } else {
            dispenser = new ModoMeter      (width, maxDigit);
        }
        int source = 0;
        try {
            while (source < tuples.size()) {
                String source4 = String.format("%04d", source);
                BigVector sourceTuple = tuples.get(source); // try to find an innerproduct of this tuple in the elements
                BigVector[] prods = new BigVector[maxDigit]; // precomputed factors for optimization
                for (int itup = 0; itup < width; itup ++) { // precompute all possible products
                    for (int idisp = 0; idisp < maxDigit; idisp ++) {
                        prods[idisp] = sourceTuple.multiply(idisp);
                    } // for idisp
                } // for itup, precompute
                TreeMap<String, Vector> sortMap = new TreeMap<String, Vector>(); // maps target to meter

                dispenser.reset();
                while (dispenser.hasNext()) { // iterates through
                    int[] meter = dispenser.next();
                    if (debug >= 2 && source == 0) {
                        System.out.println(dispenser.toString() + "; ");
                    }
                    BigInteger sum = BigInteger.ZERO;
                    int itup = 0;
                    while (itup < width) { // innerproduct sum
                        if        (meter[itup] ==  0) {
                            // ignore
                        } else if (meter[itup] == +1) {
                            sum = sum.add     (         sourceTuple.getBig(itup));
                        } else if (meter[itup] == -1) {
                            sum = sum.subtract(         sourceTuple.getBig(itup));
                        } else if (meter[itup] >   0) {
                            sum = sum.add     (prods[+ meter[itup]].getBig(itup));
                        } else if (meter[itup] <   0) {
                            sum = sum.subtract(prods[- meter[itup]].getBig(itup));
                        }
                        itup ++;
                    } // while itup innerproduct sum
                    // check against all stored elements
                    String targetSpec = elements.get(sum); // 4 digits target, tab, itup
                    if (targetSpec != null && ! targetSpec.startsWith(source4)) { // found a different tuple
                        sortMap.put(targetSpec, new Vector(meter));
                        if (debug >= 2) {
                            int target = Integer.parseInt(targetSpec.substring(0, 4));
                            System.out.print("add\t" + source4);
                            System.out.print("\t" + targetSpec);
                            System.out.print("\t" + sourceTuple.toString());
                            System.out.print("\t" + tuples.get(target).toString());
                            System.out.print("\t" + sortMap.get(targetSpec).toString(","));
                            System.out.println();
                        } // debug 2
                    } // found
                } // while dispensing

                groupTargets(source, sortMap);
                source ++;
            } // while source
        } catch (Exception exc) {
            log.error(exc.getMessage());
            exc.printStackTrace();
        }
    } // expand

    /** Array for the column numbers for elements in the target tuple */
    private int[] colNos;
    /** Array for the dispenser values which led to the target element */
    private Vector[] meters;

    /** Read the sorted map into arrays and extract
     *  chunks with the same target tuple.
     *  @param source numbe rof source tuple
     *  @param sortMap map for all targets which are hit by this source
     */
    private void groupTargets(int source, TreeMap<String, Vector> sortMap) {
        int len = sortMap.size();
        colNos  = new int[len];
        meters  = new Vector[len];
        try {
            if (debug > 0) {
                System.out.println("source " + source + ", len=" + len);
            }
            // read all sorted information into arrays
            Iterator<String> titer = sortMap.keySet().iterator();
            int itar = 0;
            int oldTarget = -1; // always different from a real target
            while (titer.hasNext()) {
                String targetSpec = titer.next();
                int newTarget = Integer.parseInt(targetSpec.substring(0, 4));
                if (oldTarget != newTarget) { // group change
                    if (oldTarget >= 0) {
                        testMatrixChains(source, oldTarget, itar);
                    }
                    oldTarget = newTarget;
                    itar = 0;
                } // group change
                colNos[itar] = Integer.parseInt(targetSpec.substring(5));
                meters[itar] = sortMap.get(targetSpec);
                if (debug > 0) {
                   System.out.println("source=" + source 
                        + "\toldTarget=" + oldTarget 
                        + "\tcolNos[" + itar + "]=" + colNos[itar] 
                        + "\tmeters[" + itar + "]=" + meters[itar].toString(","));
                }
                itar ++;
            } // while titer
            testMatrixChains(source, oldTarget, itar);
        } catch (Exception exc) {
            log.error(exc.getMessage());
            exc.printStackTrace();
        }
    } // groupTargets

    /**
     *  Iterate through all possible combinations of row numbers for
     *  one source and one target,
     *  generate a matrix for each combination, and
     *  test whether that matrix is preserving the powersum property.
     *  @param source index of source tuple
     *  @param target index of target tuple
     *  @param len size of {@link #colNos} and {@link #meters}
     */
    private void testMatrixChains(int source, int target, int len) {
        ModoMeter dispenser = new ModoMeter(width);
        BigMatrix amat = new BigMatrix(width);
        int presentRows = dispenser.setIndexRanges(colNos, len);
        if (presentRows == width) {
            dispenser.reset();
            if (debug >= 2) {
                System.out.println("presentRows = " + presentRows + ", " + dispenser.toString());
            }
            while (dispenser.hasNext()) {
                int[] indexes = dispenser.next();
                for (int im = 0; im < width; im ++) {
                    if (debug >= 2) {
                        System.out.println("im=" + im + ", indexes[" + im + "]=" + indexes[im]
                            + ", meters=" + (new BigVector(meters[indexes[im]])).toString());
                    }
                    amat.setRow(im, new BigVector(meters[indexes[im]]));
                } // for im
                ArrayList<BigVector> chains = amat.preservedPowerSums(exponent, left, right, tuples.get(source));
                if (debug > 0) {
                    System.out.print("test " + source);
                    System.out.print(" " + target);
                    System.out.print("\t" + tuples.get(source).toString());
                    System.out.print("\t" + tuples.get(target).toString());
                    System.out.print("\tidx=" + (new Vector(indexes)).toString());
                    System.out.print("\tamat=" + amat.toString());
                    System.out.print(", chain " + chains.size());
                    System.out.println();
                }
            } // while dispenser.hasNext
        } // if presentRows
    } // testMatrixChains

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
