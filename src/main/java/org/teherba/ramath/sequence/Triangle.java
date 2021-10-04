/*  General methods and properties of OEIS triangular sequences
 *  @(#) $Id: Triangle.java $
 *  2021-09-30: PascalTrait; AH=79
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
import  org.teherba.ramath.util.BigIntegerUtil;
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.ArrayList;

/** General methods and properties of triangular OEIS sequences with keyword "tabl".
 *  A set of derived sequences is assembled in a so-called <em>TraitCard</em> of the triangle.
 *  A triangle is represented by a {@link BigVector} in a linearized form.
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
     *  @param rowNo number of rows to be appended
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

    /* Cf. http://luschny.de/julia/triangles/TutorialTrianglesPart1.html
    Lah-Triangle begins:
      1;
      0, 1;
      0, 2, 1;
      0, 6, 6, 1;
      0, 24, 36, 12, 1;
      0, 120, 240, 120, 20, 1;
      0, 720, 1800, 1200, 300, 30, 1;
      0, 5040, 15120, 12600, 4200, 630, 42, 1;
    */

    /** Transform a source {@link Sequence} by <em>this</em> Triangle.
     *  @param source source Sequence
     *  @return target sequence
     */
    protected Sequence transform(Sequence source) {
        int rowNo = getRowSize();
        Sequence target = new Sequence(rowNo);
        target.setOffset(source.getOffset());
        int irow = 0;
        while (irow < rowNo) {
            BigInteger sum = BigInteger.ZERO;
            int icol = 0;
            while (icol < rowNo) {
                sum = sum.add(getBig(linearIndex(irow, icol)).multiply(source.getBig(icol)));
                icol ++;
            } // while icol
            target.setBig(irow, sum);
            irow ++;
        } // while irow
        return target;
    } // transform

    /** This pseudo-abstract class computes some characteristic sequences
     *  from <em>this</em> triangular sequence.
     *  It is the superclass for more specific implementations.
     */
    protected class Trait {
        protected ArrayList<BigInteger> list; // build the characteristic sequence here
        protected String derivedName = "abstract"; // name of the trait
        public int iflat; // runs over all terms of the flattened triangle
        protected Trait() { // No-args constructor
            list = new ArrayList<BigInteger>(16);
            iflat = 0;
            derivedName = this.getClass().getName().replaceAll("Trait", "");
            int dollarPos = derivedName.indexOf('$');
            derivedName = derivedName.substring(dollarPos + 1);
        } // Constructor()

        public void initTrait() { // at the beginning of the triangle
        }
        public void initRow(int irow) { // at the start of a row
        }
        public void termRow(int irow) { // after the end of a row
        }
        public void column (int irow, int icol) { // for a column / term
        }
        public String termTrait() { // at the end of the triangle
            return getANumber() + "\t" + derivedName + "\t" + list.size() + "\t"
                    + (new Sequence(list.toArray(new BigInteger[0]))).toString()
                    .replaceAll("[\\[\\]]",""); // remove square brackets
        }
    } // Trait

    /** The triangular sequence itself, flattened.
     */
    private class SequenceTrait extends Trait {
       public void column(int irow, int icol) {
            list.add(getBig(iflat ++));
        }
    } // SequenceTrait

    /** Alternating row sums: EvenSum - OddSum.
     */
    private class AltSumTrait extends Trait {
        protected BigInteger evenSum;
        protected BigInteger oddSum;
        public void initRow(int irow) { // at the start of a row
            evenSum = BigInteger.ZERO;
            oddSum  = BigInteger.ZERO;
        }
        public void termRow(int irow) { // after the end of a row
            list.add(evenSum.subtract(oddSum));
        }
        public void column(int irow, int icol) { // for a column / term
            if (icol % 2 == 0) {
                evenSum = evenSum.add(getBig(iflat));
            } else {
                oddSum  = oddSum .add(getBig(iflat));
            }
            iflat ++;
        }
    } // AltSumTrait

   /** Row sums
     */
    private class RowSumTrait extends AltSumTrait {
        public void termRow(int irow) { // after the end of a row
            list.add(evenSum.add(oddSum));
        }
    } // RowSumTrait

    /** Even row sums: every second, starting with the first element in a row.
     */
    private class EvenSumTrait extends AltSumTrait {
        public void termRow(int irow) { // after the end of a row
            list.add(evenSum);
        }
    } // EvenSumTrait

    /** Odd row sums: every second, starting with the second element in a row.
     */
    private class OddSumTrait extends AltSumTrait {
        public void termRow(int irow) { // after the end of a row
            list.add(oddSum);
        }
    } // OddSumTrait

    /** Sums of antidiagonals, starting from [n,0] and moving right upwards: [n-k, k] until n-k &lt; k.
     */
    private class DiagSumTrait extends Trait {
        protected BigInteger diagSum;
        public void termRow(int irow) { // after the end of a row
            diagSum = BigInteger.ZERO;
            int icol = 0;
            while (icol <= irow - icol) { // in triangle
                diagSum = diagSum.add(getBig(linearIndex(irow - icol, icol)));
                icol ++;
            } // while in triangle
            list.add(diagSum);
        }
    } // DiagSumTrait

    /** Element in the center (or center - 1) of each row.
     */
    private class CentralTrait extends Trait {
        public void termRow(int irow) { // after the end of a row
            iflat = linearIndex(irow, irow / 2);
            if (irow % 2 == 0 && iflat < size()) {
                list.add(getBig(iflat));
            }
        }
    } // CentralTrait

    /** Left side = first column.
     */
    private class LeftSideTrait extends Trait {
        public void termRow(int irow) { // after the end of a row
            iflat = linearIndex(irow, 0);
            if (iflat < size()) {
                list.add(getBig(iflat));
            }
        }
    } // LeftSideTrait

    /** Right side = (first) diagonal.
     */
    private class RightSideTrait extends Trait {
        public void termRow(int irow) { // after the end of a row
            iflat = linearIndex(irow, irow);
            if (iflat < size()) {
                list.add(getBig(iflat));
            }
        }
    } // RightSideTrait

    /** Polynomials evaluated at +1/2.
     */
    private class PosHalfTrait extends Trait {
        protected BigInteger sum;
        protected BigInteger twoPow;
        public void initRow(int irow) { // at the start of a row
            sum    = BigInteger.ZERO;
            twoPow = BigInteger.ONE.shiftLeft(irow);
        }
        public void column(int irow, int icol) { // for a column / term
            sum = sum.add(getBig(linearIndex(irow, icol))
                    .multiply(twoPow));
            twoPow = twoPow.shiftRight(1);
            iflat ++;
        }
        public void termRow(int irow) { // after the end of a row
            list.add(sum);
        }
    } // PosHalfTrait

    /** Polynomials evaluated at -1/2.
     */
    private class NegHalfTrait extends Trait {
        protected BigInteger sum;
        protected BigInteger twoPow;
        public void initRow(int irow) { // at the start of a row
            sum    = BigInteger.ZERO;
            twoPow = BigInteger.ONE.shiftLeft(irow);
        }
        public void column(int irow, int icol) { // for a column / term
            sum = sum.add(getBig(linearIndex(irow, icol))
                    .multiply(icol % 2 == irow % 2 ? twoPow : twoPow.negate()));
            twoPow = twoPow.shiftRight(1);
            iflat ++;
        }
        public void termRow(int irow) { // after the end of a row
            list.add(sum);
        }
    } // NegHalfTrait

    /** Transform of the natural numbers &gt;= 0
     */
    private class N0TSTrait extends Trait {
        protected BigInteger sum;
        public void initRow(int irow) { // at the start of a row
            sum = BigInteger.ZERO;
        }
        public void termRow(int irow) { // after the end of a row
            list.add(sum);
        }
        public void column (int irow, int icol) { // for a column / term
            sum = sum.add(getBig(linearIndex(irow, icol)).multiply(BigInteger.valueOf(icol + 0)));
            iflat ++;
        }
    } // N0TSTrait

    /** Transform of the natural numbers &gt;= 1
     */
    private class NATSTrait extends Trait {
        protected BigInteger sum;
        public void initRow(int irow) { // at the start of a row
            sum = BigInteger.ZERO;
        }
        public void termRow(int irow) { // after the end of a row
            list.add(sum);
        }
        public void column (int irow, int icol) { // for a column / term
            sum = sum.add(getBig(linearIndex(irow, icol)).multiply(BigInteger.valueOf(icol + 1)));
            iflat ++;
        }
    } // NATSTrait

    /** Check whether the inner (non-border) elements are all the same in a row.
     *  T(n,k) = T(n,k-1) for k=2..n-1.
     */
    private class ConstantTrait extends Trait {
        protected BigInteger diff;
        private final int BORDER = 1;
        private boolean followsRule = true;

        public void initRow(int irow) { // at the start of a row
        }
        public void termRow(int irow) { // after the end of a row
            if (irow >= 2) {
                list.add(diff);
            }
        }
        public void column (int irow, int icol) { // for a column / term
            BigInteger newElem = getBig(linearIndex(irow, icol));
            if (icol <= irow - BORDER) {
                if (false) {
                } else if (icol == BORDER) { // first relevant column: initialize diff
                    diff =            newElem;
                } else if (icol >  BORDER) { // following relevant columns: compare with diff
                    if (! diff.equals(newElem)) {
                        followsRule = false;
                    }
                }
            }
            iflat ++;
        }
        public String termTrait() { // at the end of the triangle
            if (! followsRule) {
                list.clear();
            }
            return super.termTrait();
        }
    } // ConstantTrait

    /** Constants in generalized Pascal's rule.
     *  The elements are (0,0); (1,0),(1,1); (2,0),(2,1),(2,2); (3,0),(3,1)-,(3,2)-,(3,3); (4,0),(4,1),(4,2)+,(4,3);,
     *  and the first trait element is -(3,1) - (3,2) + (4,2).
     */
    private class PascalTrait extends Trait {
        protected BigInteger diff;
        protected BigInteger[] oldRow;
        protected BigInteger[] newRow;
        private final int BORDER = 1;
        private boolean followsRule = true;

        public void initRow(int irow) { // at the start of a row
            newRow = new BigInteger[irow + 1]; 
        }
        public void termRow(int irow) { // after the end of a row
            if (irow >= 2) {
                list.add(diff);
            }
            oldRow = newRow;
        }
        public void column (int irow, int icol) { // for a column / term
            BigInteger newElem = getBig(linearIndex(irow, icol));
            newRow[icol] = newElem;
            if (icol <= irow - BORDER) {
                if (false) {
                } else if (icol == BORDER) { // first relevant column: initialize diff
                    diff =            newElem.subtract(oldRow[icol - 1]).subtract(oldRow[icol]);
                } else if (icol >  BORDER) { // following relevant columns: compare with diff
                    if (! diff.equals(newElem.subtract(oldRow[icol - 1]).subtract(oldRow[icol]) )) {
                        followsRule = false;
                    }
                }
            }
            iflat ++;
        }
        public String termTrait() { // at the end of the triangle
            if (! followsRule) {
                list.clear();
            }
            return super.termTrait();
        }
    } // PascalTrait
    
    //--------------------------------
    /** If the ConstantTrait has a sufficient number of elements, 
     *  print it together with the LeftSideTrait and the RightSideTrait.
     *  @param traitSize maximum number of elements in the trait
     *  @param rowNo number of rows to be appended
     */
    public void printConstantCard (int traitSize, int rowNo) {
        try {
            String constantList =  get1Trait(traitSize, rowNo, new ConstantTrait   ());
            String[] 
            parts = constantList .split("\t");
            int constantSize    = Integer.parseInt(parts[2]);
            String leftSideList =  get1Trait(traitSize, rowNo, new LeftSideTrait   ());
            parts = leftSideList.split("\t");
            int leftSideSize    = Integer.parseInt(parts[2]);
            if (constantSize + 2 >= leftSideSize) {
                System.out.println(leftSideList);
                System.out.println(get1Trait(traitSize, rowNo, new RightSideTrait  ()));
                System.out.println(constantList);
            }
        } catch (Exception exc) {
        }
    } // printTraitCard

    //--------------------------------
    /** If the PascalTrait has a sufficient number of elements, 
     *  print it together with the LeftSideTrait and the RightSideTrait.
     *  @param traitSize maximum number of elements in the trait
     *  @param rowNo number of rows to be appended
     */
    public void printPascalCard (int traitSize, int rowNo) {
        try {
            String pascalList   =  get1Trait(traitSize, rowNo, new PascalTrait     ());
            String[] 
            parts = pascalList .split("\t");
            int pascalSize      = Integer.parseInt(parts[2]);
            String leftSideList =  get1Trait(traitSize, rowNo, new LeftSideTrait   ());
            parts = leftSideList.split("\t");
            int leftSideSize    = Integer.parseInt(parts[2]);
            if (pascalSize + 2 >= leftSideSize) {
                System.out.println(leftSideList);
                System.out.println(get1Trait(traitSize, rowNo, new RightSideTrait  ()));
                System.out.println(pascalList);
            }
        } catch (Exception exc) {
        }
    } // printPascalCard

    /** Print a set of derived, characteristic sequences for a Triangle
     *  @param traitSize maximum number of elements in the trait
     *  @param rowNo number of rows to be appended
     */
    public void printTraitCard (int traitSize, int rowNo) {
        System.out.println(get1Trait(traitSize, rowNo, new SequenceTrait   ()));
        System.out.println(get1Trait(traitSize, rowNo, new RowSumTrait     ()));
        System.out.println(get1Trait(traitSize, rowNo, new EvenSumTrait    ()));
        System.out.println(get1Trait(traitSize, rowNo, new OddSumTrait     ()));
        System.out.println(get1Trait(traitSize, rowNo, new AltSumTrait     ()));
        System.out.println(get1Trait(traitSize, rowNo, new DiagSumTrait    ()));
        System.out.println(get1Trait(traitSize, rowNo, new CentralTrait    ()));
        System.out.println(get1Trait(traitSize, rowNo, new LeftSideTrait   ()));
        System.out.println(get1Trait(traitSize, rowNo, new RightSideTrait  ()));
        System.out.println(get1Trait(traitSize, rowNo, new PosHalfTrait    ()));
        System.out.println(get1Trait(traitSize, rowNo, new NegHalfTrait    ()));
        System.out.println(get1Trait(traitSize, rowNo, new N0TSTrait       ()));
        System.out.println(get1Trait(traitSize, rowNo, new NATSTrait       ()));
        System.out.println(get1Trait(traitSize, rowNo, new PascalTrait     ()));
    } // printTraitCard

     /** Gets a triangular array of lines with comma-separated terms.
     *  @param rowNo number of rows to be appended
     *  @param tr the {@link Trait} class which computes a specific trait
     *  @return several lines
     */
    public String get1Trait(int traitSize, int rowNo, Trait tr) {
        tr.initTrait();
        int irow = 0;
        while (irow < rowNo && tr.iflat < size()) {
            tr.initRow(irow);
            int icol = 0;
            while (icol <= irow && tr.iflat < traitSize && tr.iflat < size()) {
                tr.column(irow, icol);
                icol ++;
            } // while icol
            tr.termRow(irow);
            irow ++;
        } // while rows
        return tr.termTrait();
    } // get1Trait

   //----------------------------------------------------------------
    /** Test method.
     *  @param args command line arguments.
     *  <pre>
     *  -d      debug mode: 0 = none (default), 1 = some, 2 = more
     *  -const  print Constant trait card
     *  -eval   pretty-print the triangle
     *  -pascal print Pascal trait card
     *  -trait  print full trait card
     *  -ts     trait size (default 16)
     *  </pre>
     *  See printout with 0 arguments, and arguments for {@link SequenceReader#configure}.
     */
    public static void main(String[] args) {
        String aNumber = "A000000";
        int traitSize = 16; // default
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

                    } else if (oper.startsWith("-const")) {
                        reader = SequenceReader.configure(iarg, args);
                        termNo = reader.getMaxTermNo();
                        while (reader.hasNext()) {
                            tra = new Triangle(reader.next());
                            tra.printConstantCard(traitSize, tra.getRowSize());
                        } // while hasNext
                        iarg = args.length;

                    } else if (oper.startsWith("-eval")) {
                        reader = SequenceReader.configure(iarg, args);
                        termNo = reader.getMaxTermNo();
                        while (reader.hasNext()) {
                            tra = new Triangle(reader.next());
                            System.out.print("eval: " + tra.getANumber() + " "
                                    + tra.toList() + "\n" + tra.toTriangle());
                        } // while hasNext
                        iarg = args.length;

                    } else if (oper.startsWith("-pascal")) {
                        reader = SequenceReader.configure(iarg, args);
                        termNo = reader.getMaxTermNo();
                        while (reader.hasNext()) {
                            tra = new Triangle(reader.next());
                            tra.printPascalCard(traitSize, tra.getRowSize());
                        } // while hasNext
                        iarg = args.length;

                    } else if (oper.startsWith("-trait")) {
                        reader = SequenceReader.configure(iarg, args);
                        termNo = reader.getMaxTermNo();
                        while (reader.hasNext()) {
                            tra = new Triangle(reader.next());
                            tra.printTraitCard(traitSize, tra.getRowSize());
                        } // while hasNext
                        iarg = args.length;

                    } else if (oper.equals    ("-ts")) {
                        traitSize = Integer.parseInt(args[iarg ++]);

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
