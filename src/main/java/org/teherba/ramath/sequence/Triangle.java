/*  General methods and properties of OEIS triangular sequences
 *  @(#) $Id: Triangle.java $
 *  2020-03-17, Georg Fischer: copied from Sequence
 */
/*
 * Copyright 2020 Dr. Georg Fischer <dr.georg.fischer(at)gmail.com>
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
package org.teherba.ramath.sequence;
import  org.teherba.ramath.sequence.Sequence;
import  org.teherba.ramath.sequence.SequenceReader;
import  org.teherba.ramath.linear.BigVector;
import  java.io.Serializable;
import  java.math.BigInteger;

/** General methods and properties of triangular OEIS sequences with keyword "tabl".
 *  The triangles are represented in a linearized form. 
 *  For a bivariate generating function in x and y the triangle gives the coefficients of:
 *  <pre>
 *  1;
 *  x,    x*y;
 *  x^2,  x^2*y,  x^2*y^2;
 *  x^3,  x^3*y,  x^3*y^2,  x^3*y^3;
 *  ...
 *  </pre>
 *  Rows and columns are counted starting at 0.
 *  @author Dr. Georg Fischer
 */
public class Triangle extends Sequence
        {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Sequence.java 231 2009-08-25 08:47:16Z gfis $";
    /** Debugging level: 0 = none, 1 = some, 2 = more */
    public static int debug = 0;

    //------------------------------
    /** No-args constructor.
     */
    public Triangle() {
        super();
    } // no-args constructor

    /** Construct for a known number of terms
     *  @param termNo number of terms
     */
    public Triangle(int termNo) {
        super(termNo);
    } // Constructor(int)

    /** Construct from a BigInteger array
     *  @param terms array of BigInteger
     */
    public Triangle(BigInteger[] terms) {
        super(terms);
    } // Constructor(BigInteger[])

    /** Construct from a [@link Sequence}
     *  @param seq Sequence with filled terms.
     */
    public Triangle(Sequence seq) {
        super(seq.getBigValues());
        setANumber(seq.getANumber());
        setOffset (seq.getOffset());
        setBfimax (seq.getBfimax());
    } // Constructor(Sequence)

    //--------------------------------------

    /** Gets a triangular array of lines with comma-separated terms.
     *  @return several lines
     */
    public String toTriangle() {
        return toTriangle(29061949);
    } // toTriangle()
    
    /** Gets a triangular array of lines with comma-separated terms.
     *  @rowNo number of rows to be appended
     *  @return several lines
     */
    public String toTriangle(int rowNo) {
        StringBuffer result = new StringBuffer(256);
        int iterm = 0;
        int irow = 0;
        while (irow < rowNo && iterm < size()) {
            int icol = 0;
            while (icol <= irow && iterm < size()) {
                if (icol > 0) {
                    result.append(", ");
                } else {
                	result.append("  "); // leading 2 spaces, suitable for OEIS example section
                }
                result.append(getBig(iterm ++));
                icol ++;
            } // while icol
            result.append(";\n");
            irow ++;
        } // while rows
        return result.toString();
    } // toTriangle

    /** Test method.
     *  @param args command line arguments. 
     *  See printout with 0 arguments, and arguments for {@link SequenceReader.configure}.
     */
    public static void main(String[] args) {
        String aNumber = "A000000";
        SequenceReader reader = new SequenceReader(64);
        Triangle tra = null;
        try {
            if (args.length == 0) {
                System.out.print("usage:\n"
                        + "    java org.teherba.ramath.sequence.Triangle [-d n] -eval -f -b -m ...\n"
                        );
            } else { // some arguments
                int termNo = 0;
                int iarg = 0;
                while (iarg < args.length) {
                    String oper = args[iarg ++];
                    if (false) {

                    } else if (oper.equals    ("-d")) {
                        debug = Integer.parseInt(args[iarg ++]);

                    } else if (oper.startsWith("-eval")) {
                        reader = SequenceReader.configure(iarg, args);
                        termNo = reader.getMaxTermNo();
                        while (reader.hasNext()) {
                            tra = new Triangle(reader.next());
                            System.out.print("eval: " + tra.getANumber() + " " 
                            		+ tra.toList() + "\n" + tra.toTriangle());
                        } // while hasNext
                        iarg = args.length;

                    } else {
                        System.out.println("invalid operation \"" + oper + "\"");
                    }
                } // while iarg
            } // some arguments
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
        }
    } // main
} // Triangle
