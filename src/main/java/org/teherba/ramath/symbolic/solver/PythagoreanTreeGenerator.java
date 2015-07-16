/*  PythagoreanTreeGenerator: generate primitive Pythagorean triples
 *  @(#) $Id: PythagoreanTreeGenerator.java 744 2011-07-26 06:29:20Z gfis $
 *  2015-07-14, Georg Fischer: copied from PolyMatrix
 */
/*
 * Copyright 2015 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath.symbolic.solver;
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.symbolic.PolyMatrix;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.PolyVector;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.ModoMeter;
import  java.io.BufferedReader;
import  java.io.File;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.io.PrintWriter;
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.Iterator;
import  org.apache.log4j.Logger;


/** Class PythagoreanTreeGenerator implements the generation of a tree
 *  of Pythagorean triples by the aid of 3 linear 3x3 matrixes, as described in
 *  {@link https://en.wikipedia.org/wiki/Tree_of_primitive_Pythagorean_triples}.
 *  Either the matrixes of Barning or of Price are used.
 *  @author Dr. Georg Fischer
 */
public class PythagoreanTreeGenerator extends BaseSolver implements Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: PythagoreanTreeGenerator.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    public static int debug = 0;
    /** System dependant newline character sequence */
    protected static String newline = System.getProperty("line.separator");

    /*-------------- class properties -----------------------------*/

    /** level of queue element which was previously expanded */
    private int prevLevel;
    
    /** Array of matrixes to be multiplied to the triples */
    private PolyMatrix[] mats = new PolyMatrix[8]; 

    /*-------------- construction -----------------------------*/

    /** No-args Constructor - prints on {@link java.lang.System#out}
     */
    public PythagoreanTreeGenerator() {
        super(new PrintWriter(System.out));
        prevLevel = -1;
    } // no-args Constructor

    /** Constructor with writer
     *  @param writer where to write the proof trace
     */
    public PythagoreanTreeGenerator(PrintWriter writer) {
        super(writer); // this will also initialize the optional parameters
        prevLevel = -1;
    } // Constructor(printer)
    
    /** Initializes the generating matrixes 
     */
    public void setMatrixes() {
        int index = 0;
        while (index < 8) {
            mats[index] = getMatrix(index);
            index ++;
        } // while index
    } // setMatrixes

    /** Gets one of the generating matrixes from either Barning or Price.
     *  @param index sequential number identifying the desired matrix
     *  @return a 3x3 {@link PolyMatrix} depending on <em>index</em>:
     *  <ul>
     *  <li>0,1 = Barnings's matrix A</li>
     *  <li>2   = Barnings's matrix B</li>
     *  <li>3   = Barnings's matrix C</li>
     *  <li>4,5 =    Price's matrix A'</li>
     *  <li>6   =    Price's matrix B'</li>
     *  <li>7   =    Price's matrix C'</li>
     *  </ul>
     */
    public PolyMatrix getMatrix(int index) {
        PolyMatrix result = null;
        switch (index) {
            case 1: // Barning\'s A 
                result = new PolyMatrix(3, new String[]
                        { "1", "-2", "2"
                        , "2", "-1", "2"
                        , "2", "-2", "3"
                        } );
                break;
            case 2: // Barning\'s B
                result = new PolyMatrix(3, new String[]
                        { "1", "2", "2"
                        , "2", "1", "2"
                        , "2", "2", "3"
                        } );
                break;
            case 3: // Barning\'s C 
                result = new PolyMatrix(3, new String[]
                        { "-1", "2", "2"
                        , "-2", "1", "2"
                        , "-2", "2", "3"
                        } );
                break;
            case 5: // Price\'s A\'
                result = new PolyMatrix(3, new String[]
                        { "2",  "1", "-1"
                        , "-2", "2", "2"
                        , "-2", "1", "3"
                        } );
                break;
            case 6: // Price\'s B\' 
                result = new PolyMatrix(3, new String[]
                        { "2",  "1", "1"
                        , "2", "-2", "2"
                        , "2", "-1", "3"
                        } );
                break;
            case 7: // Price\'s C\' 
                result = new PolyMatrix(3, new String[]
                        { "2",  "-1", "1"
                        , "2", "2", "2"
                        , "2", "1", "3"
                        } );
            default: // wrong index, will break later
                break;
        } // switch index
        return result;
    } // getMatrix

    /** Prints the header message
     *  @param rset0 initial {@link RelationSet}
     */
    protected void printHeader(RelationSet rset0) {
    /*
        trace.print("Expanding for base=" + getModBase());
        trace.print(", reasons+features=" + reasons.toList());
        trace.println();
    */
    } // printHeader

    /** Prints the trailer message
     *  @param exhausted whether a proof was reached and the queue was exhausted
     */
    protected void printTrailer(boolean exhausted) {
        // trace.print("Maximum level " + getMaxLevel() + " reached");
    } // printTrailer

    //---------------------
    // Heavyweight Methods
    //---------------------

    /** Expands one triple in the queue,
     *  evaluates the expanded children,
     *  and requeues all children.
     *  @param queueIndex position in the queue of the element ({@link RelationSet}) to be expanded, >= 0
     *  The triples are stored as constants in a {@link RelationSet}.
     *  Barning's (Price's) matrixes are taken for <em>base</em> = 0 (4).
     *  they are obtained from a {@link ModoMeter}.
     *  Output lines consist of a history of the applied matrix indexes, 
     *  and the primitive triple [a, odd b, c = hypothenuse]
     *  Example output:
     *  <pre>
----------------
X1 [5,12,13]
X2 [21,20,29]
X3 [15,8,17]
----------------
X11 [7,24,25]
X12 [55,48,73]
X13 [45,28,53]
X21 [39,80,89]
X22 [119,120,169]
X23 [77,36,85]
X31 [33,56,65]
X32 [65,72,97]
X33 [35,12,37]
----------------
X111 [9,40,41]
X112 [105,88,137]
X113 [91,60,109]
X121 [105,208,233]
X122 [297,304,425]
X123 [187,84,205]
X131 [95,168,193]
X132 [207,224,305]
     *  </pre>
     */
    public void expand(int queueIndex) {
        RelationSet rset1 = get(queueIndex); // expand this element (the "parent")
        int curLevel      = rset1.getNestingLevel();
        String vstr1      = rset1.toString();
        String history    = vstr1.substring(0, vstr1.indexOf(" ")); // up to 1st space
        PolyVector vect1  = new PolyVector(vstr1.substring(vstr1.indexOf(";") + 1)); // rest behind 1st ";"
        if (debug >= 1) {
            if (prevLevel < curLevel) {
                prevLevel = curLevel;
                trace.println("----------------"); // 16 x "-"
            }
        } 
        curLevel ++;
        int base = getModBase();
        int index = 1;
        while (index < 4) { // generate all children
            PolyVector vect2 = mats[base + index].multiply(vect1); // either Barning's 1,2,3 or Price's 5,6,7
            String vstr2 = vect2.toString();
            if (! vect2.isPowerSum(2, 2, 1)) {
                System.err.println("no PowerSum: " + vstr2);
            } // ! isPowerSum
            trace.println(history + index + " " + vstr2);
            RelationSet rset2 = new RelationSet(history + index + "=0;" 
                    + vstr2
                    .replaceAll("[\\[\\]\\s]+", "")
                    .replaceAll("\\,", ";") // a RelationSet of the form "3;4;5"
                    );
            rset2.setNestingLevel   (curLevel);
            rset2.setParentIndex    (queueIndex);
            add(rset2);
            index ++;
        } // while index - generate all children
    } // expand

    /*-------------------- Test Driver --------------------*/

    /** Print the results of some matrix tests
     *  @param title a description of the matrix to be tested
     *  @param amat the matrix to be tested
     */
    private static void printPythagoreanTest(String title, PolyMatrix amat) {
        System.out.println(title + " = "       + amat.toString(","));
    } // printPythagoreanTest

    /** Test method, shows some fixed matrices with no arguments, or 
     *  generate a tree of primitive Pythagorean triples
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        if (args.length == 0) {
            PythagoreanTreeGenerator generator = new PythagoreanTreeGenerator();
            int index = 0; 
            while (index < 8) {
                System.out.println("getMatrix(" + index + ") = " + generator.getMatrix(index).toString(","));
                index ++;
            } // while index
        } else { // with arguments: generate tree
            PythagoreanTreeGenerator solver = new PythagoreanTreeGenerator();
            String expr = solver.getArguments(0, args);
            RelationSet rset0 = new RelationSet("X; 3; 4; 5"); // always start with this triple
            if (expr != null) {
                rset0 = RelationSet.parse(expr);
            }
            solver.setMatrixes();
            solver.solve(rset0);
        } // with arguments
    } // main

} // PythagoreanTreeGenerator
