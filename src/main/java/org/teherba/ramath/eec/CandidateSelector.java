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
import  org.teherba.ramath.util.IntegerExpander;
import  org.teherba.ramath.util.ModoMeter;
import  org.teherba.ramath.util.Permutator;
import  java.io.BufferedReader;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.HashMap;
import  java.util.Iterator;
import  java.util.TreeSet;
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
    public int debug = 2;
    /** log4j logger (category) */
    private Logger log;

    /** List of known power sums (rows)*/
    private ArrayList<BigVector> tuples;
    /** Generating matrix, hopefully preserving the powersum property */
    public BigMatrix bmat;
    
    /** Maps tuple elements to indexes of the form nnnnX,
     *  where nnnn is a row index, and X is one of the {@link #letters}
     *  at the beginning of the alphabet ("a", "b") etc.
     */
    private HashMap<BigInteger/*String*/, String> elements;
    /** Letters for variables */
    private static final String letters = "abcdefgh";
    /** Number of elements in one tuple */
    private int width;
    /** expand from -base+1 to +base-1 */
    private int base;

    /** Exponent of the power sum.
     *  EEC(4,1,3) means w^4 = x^4 + y^4 + z^4 : (exp, left, right), where left+right = width
     */
    private int exponent;
    /** Number of elements in the left  part of the power sum */
    private int left;
    /** Number of elements in the right part of the power sum */
    private int right;
    /** Separator for elements in the TreeSet's values */
    private static final String tsep = "\t";

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
     *  @param base limit for the expansion
     */
    public CandidateSelector(int width, int base, int exponent, int left, int right) {
        log = Logger.getLogger(CandidateSelector.class.getName());
        this.width    = width;
        this.base = base;
        this.exponent = exponent;
        this.left     = left;
        this.right    = right;
        this.tuples   = new ArrayList<BigVector>(64);
        this.elements = new HashMap<BigInteger/*String*/, String>(256); //
    } // Constructor(,,,,)

    //==========================================================
    /** Adds a tuple to the list, and remember its elements in a HashMap
     *  @param tuple tuple to be added, must be of length {@link #width}
     */
    public void addTuple(BigVector tuple) {
        int target = tuples.size(); // index of next tuple stored
        tuples.add(tuple);
        for (int itup = 0; itup < width;  itup ++) { // store all elements
            elements.put(tuple.getBig(itup), String.format("%04d%s%d", target, tsep, itup));
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
            BufferedReader lineReader = new BufferedReader
                    ( (fileName.equals("-"))
                    ? new InputStreamReader(System.in)
                    : new FileReader(fileName)
                    );
            String line = null;
            while (limit > 0 && (line = lineReader.readLine()) != null) { // read and process lines
                String[] nums = line.replaceAll("\\s*\\#.*", "") // remove any comment
                        .replaceAll("\\A[^0-9\\-]+","") // remove leading non-digits, keep minus
                        .split("[^0-9\\-]+"); // separate on non-digits
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
     *  @param start number of starting tuples to be expanded
     */
    public void expand(int start) {
        try {
            if (start <= 0) {
                start = tuples.size();
            }
            Dispenser dispenser = null;
            if (true) {
                dispenser = new IntegerExpander(width, base);
            } else {
                dispenser = new ModoMeter      (width, base);
            }
            int source = 0;
            while (source < start) {
                String source4 = String.format("%04d", source);
                BigVector sourceTuple = tuples.get(source); // try to find an innerproduct of this tuple in the elements
                BigVector[] prods = new BigVector[base]; // precomputed factors for optimization
                for (int itup = 0; itup < width; itup ++) { 
                    // precompute all possible products with this Dispenser's positive values
                    for (int ival = 0; ival < base; ival ++) {
                        prods[ival] = sourceTuple.multiply(ival);
                    } // for ival
                } // for itup, precompute
                TreeSet<String> sortSet = new TreeSet<String>(); // list of targets and meters

                dispenser.reset();
                while (dispenser.hasNext()) { // iterates through
                    int[] meter = dispenser.next();
                    if (debug >= 3 && source == 0) {
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
                        String key = targetSpec + tsep + (new Vector(meter)).toString();
                        sortSet.add(key);
                        if (debug >= 2) {
                            int target = Integer.parseInt(targetSpec.substring(0, 4));
                            System.out.print("add " + source);
                            System.out.print("=" + sourceTuple.toString());
                            System.out.print(" -> " + targetSpec);
                            System.out.print(" " + tuples.get(target).toString());
                            System.out.println();
                        } // debug 2
                    } // found
                } // while dispensing

                groupTargets(source, sortSet);
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
     *  @param sortSet set of all targets which are hit by this source
     */
    private void groupTargets(int source, TreeSet<String> sortSet) {
        try {
            int len = sortSet.size();
            colNos  = new int[len];
            meters  = new Vector[len];
            if (debug >= 2) {
                System.out.println("source " + source + ", len=" + len);
            }
            // read all sorted information into arrays
            Iterator<String> titer = sortSet.iterator();
            int itar = 0;
            int oldTarget = -1; // always different from a real target
            while (titer.hasNext()) {
                String[] tsetElem = titer.next().split(tsep);
                int newTarget = Integer.parseInt(tsetElem[0]);
                if (oldTarget != newTarget) { // group change
                    if (oldTarget >= 0) {
                        testMatrixChains(source, oldTarget, itar);
                    }
                    oldTarget = newTarget;
                    itar = 0;
                } // group change
                colNos[itar] = Integer.parseInt(tsetElem[1]);
                meters[itar] = new Vector(tsetElem[2]);
                if (debug >= 2) {
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
        try {
            ModoMeter dispenser = new ModoMeter(width);
            bmat = new BigMatrix(width);
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
                        bmat.setRow(im, new BigVector(meters[indexes[im]]));
                    } // for im
                    ArrayList<BigVector> chains = 
                            bmat.preservedPowerSums(exponent, left, right, tuples.get(source), 8);
                    int clen = chains.size();
                    if (debug >= 1 || clen >= 1) {
                        System.out.print("chain" + clen);
                    //  System.out.print(" src=" + source);
                    //  System.out.print(" tar=" + target);
                    //  System.out.print("\t" + tuples.get(source).toString());
                    //  System.out.print("\t" + tuples.get(target).toString());
                    //  System.out.print("\tidx=" + (new Vector(indexes)).toString());
                        System.out.print(" " + bmat.toString());
                        System.out.print(" " + tuples.get(source).toString());
                        if (clen >= 1) {
                            for (int ichain = 0; ichain < clen; ichain ++) {
                                System.out.print(" " + chains.get(ichain).toString());
                            } // for ichain
                        }
                        System.out.println();
                    }
                } // while dispenser.hasNext
            } // if presentRows
        } catch (Exception exc) {
            log.error(exc.getMessage());
            exc.printStackTrace();
        }
    } // testMatrixChains

    /** Test which tuples lead to a preserving chain for the parameter matrix.
     */
    private void testVectorChains() {
        try {
            if (debug >= 0) {
                System.out.print("multiply " + tuples.size() + " tuples");
                System.out.println(" with " + bmat.toString());
            }
            int source = 0;
            while (source < tuples.size()) {
                BigVector sourceTuple = tuples.get(source); 
                Permutator vperm = new Permutator(width);
                while (vperm.hasNext()) {
                    int[] meter = vperm.next();
                    BigVector vectb = sourceTuple.permuteBig(meter);
                    ArrayList<BigVector> chains = 
                            bmat.preservedPowerSums(exponent, left, right, vectb, 8);
                    int clen = chains.size();
                    if (debug >= 1 || clen >= 1) {
                        System.out.print("preserve" + clen);
                        System.out.print(" " + vectb.toString());
                        if (clen >= 1) {
                            for (int ichain = 0; ichain < clen; ichain ++) {
                                System.out.print(" " + chains.get(ichain).toString());
                            } // for ichain
                        }
                        System.out.println();
                    }
                } // while vperm
                source ++;
            } // while tuples
        } catch (Exception exc) {
            log.error(exc.getMessage());
            exc.printStackTrace();
        }
    } // testVectorChains

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
        CandidateSelector selector = new CandidateSelector();
        try {
            BigMatrix bmat = new BigMatrix(4);
            int base     = 8;
            int width    = 4;
            int exponent = 4;
            int left     = 3;
            int right    = 1;
            int start    = 0; // number of starting tuples to be expanded
            String fileName = "";
            int iarg  = 0;
            String oper  = args[iarg ++]; // first option 
            while (iarg < args.length) { // get all arguments
                if (args[iarg].startsWith("-")) {
                    String opt = args[iarg ++].substring(1).toLowerCase();
                    if (false) {
                    } else if (opt.equals("b")) {
                        base     = Integer.parseInt(args[iarg ++]);
                    } else if (opt.equals("e")) {
                        exponent = Integer.parseInt(args[iarg ++]);
                    } else if (opt.equals("f")) {
                        fileName = args[iarg ++];
                    } else if (opt.equals("l")) {
                        left     = Integer.parseInt(args[iarg ++]);
                    } else if (opt.equals("m")) {
                        bmat = new BigMatrix(args[iarg ++]);
                        // System.out.println("bmat=" + bmat);
                    } else if (opt.equals("r")) {
                        right    = Integer.parseInt(args[iarg ++]);
                    } else if (opt.equals("s")) {
                        start    = Integer.parseInt(args[iarg ++]);
                    } else if (opt.equals("w")) {
                        width    = Integer.parseInt(args[iarg ++]);
                    } else {
                        System.err.println("unknown option \"-" + opt + "\"");
                    }
                } // startsWith "-"
            } // while args
            
            selector = new CandidateSelector(width, base, exponent, left, right);
            selector.bmat = bmat;
            selector.read(fileName);
            if (selector.debug >= 0) {
                System.out.println("CandidateSelector " + oper
                        + " width=" + width
                        + " base=" + base
                        + " exponent=" + exponent
                        + " left=" + left
                        + " right=" + right
                        + " fileName=" + fileName
                        );
            } // debug
            if (false) {
            } else if (oper.equals("expand")) {
                selector.expand(start);
            } else if (oper.equals("preserve")) {
                selector.testVectorChains();
            } else {
                System.err.println("unknown operation \"" + oper + "\"");
            }
        } catch (Exception exc) {
            selector.log.error(exc.getMessage());
            exc.printStackTrace();
        }
    } // main

} // CandidateSelector
