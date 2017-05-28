/*  Exhaustive generator for power identities
 *  @(#) $Id: ProgramGenerator.java 808 2011-09-20 16:56:14Z gfis $
 *  2017-05-28: javadoc 1.8
 *  2016-06-24: pident
 *  2016-04-22: Georg Fischer: copied from MatrixExhauster
 */
/*
 * Copyright 2016 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.PolyMatrix;
import  org.teherba.ramath.symbolic.PolyVector;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.util.ExpressionReader;
import  java.io.PrintStream;
import  java.text.SimpleDateFormat;
import  java.util.Date;
import  java.util.Iterator;

/** Generates program code for exhaustion of matrices and formulas
 *  at a high speed.
 *  The generated programs have minimal indenting or commenting
 *  and they are meant to be compiled and executed
 *  at once without further editing or parametrization.
 *  The generator itself may be complicated and inefficient.
 *  Currently code for the following programming languages can
 *  be generated:
 *  <ul>
 *  <li>C - as developed by Dennis Ritchie between 1969 and 1973 at Bell Labs<li>
 +  </ul>
 *
 *  @author Dr. Georg Fischer
 */
public class ProgramGenerator {
    public final static String CVSID = "@(#) $Id: ProgramGenerator.java 808 2011-09-20 16:56:14Z gfis $";

    /** first digit used */
    public int minDigit;
    /** first digit not used for exhaustion by the expander: - minDigit + 1 */
    public int maxDigit;
    /** whether to generate non-zero entries only*/
    public boolean nonZero;
    /** code for programming language to be generated: C, Java, Perl */
    public String lang;
    /** Generated program is written to this file */
    private PrintStream o;
    /** closing brackets for all opened <em>for</em> and <em>if</em> statements */
    private String brackets;
    /** copy of the commandline arguments */
    private StringBuffer argsLog;
    /** size of the generated matrix */
    private int width;
    /** number of rows of the generated matrix */
    private int nrows;
    /** number of columns of the generated matrix */
    private int ncols;
    /** maximum exponent in formulae */
    private int exp;
    /** up to 3 {@link PolyVector}s */
    private PolyVector[] vects;
    /** up to 3 {@link Polynomial}s */
    private Polynomial[] polys;
    /** some {@link RelationSet} */
    private RelationSet rset1;
    /** name of the method to be activated */
    private String method;
    /** leading letter for variables to be generated */
    private String letter1;
    /** System-dependant newline string */
    protected static String newline = System.getProperty("line.separator");
    /** String which identifies the start of a result line which contains significant information */
    public static final String LEADER = "#---> ";

    //===========================
    // Construction
    //===========================
    /** No-args Constructor
     */
    public ProgramGenerator() {
        this("test/progen.c");
    } // Constructor()

    /** Constructor with output file name
     *  @param outfile name of output file
     */
    public ProgramGenerator(String outfile) {
        argsLog = new StringBuffer(128);
        try {
            o        = new PrintStream(outfile, "UTF-8");
            lang     = "C";
            nonZero  = false;
            brackets = "";
            nrows    = 3;
            ncols    = 3;
            exp      = 2;
            method   = "m2comp";
            polys    = new Polynomial[3];
            vects    = new PolyVector[3];
            letter1  = "A";
        } catch (Exception exc) {
        }
    } // Constructor()

    /** Initializes common variables
     */
    private void initialize() {
    } // initialize

    /** Closes the output file
     */
    private void close() {
        o.close();
    } // initialize

    //===========================
    // Common Utility Methods
    //===========================

    /** Generate a program header with the declartion of matrix elements
     *  @param features list of code words for various features in the header:
     *  <ul>
     *  <li>gcd    - with <em>gcdi</em> functions</li>
     *  <li>square - with <em>squares</em> constant array</li>
     *  <li>cube   - with <em>cubes</em>   constant array</li>
     *  </ul>
     */
    private void programHeader(String features) {
        String sep = "";
        if (false) {
        } else if (lang.equals("C"   )) {
            o.println("/*  Generated at "
                    + (new SimpleDateFormat("yyyy-MM-dd' 'HH:mm")).format(new java.util.Date()) + " by");
            o.println("    java -cp dist/ramath.jar org.teherba.ramath.ProgramGenerator " + argsLog.toString());
            o.println("    Do   N O T   edit this file, but ProgramGenerator.java instead!");
            o.println("*/");
            o.println("#include <stdio.h>");
            o.println("#include <stdlib.h>");
            o.println("int main(int argc, char *argv[]) {");

            if (features.indexOf("gcd") >= 0) {
                o.println("int gcd2(int a, int b) {                              ");
                o.println("        int result = abs(a);                          ");
                o.println("        if (result > 1) {                             ");
                o.println("            int p = result; int q = abs(b);           ");
                o.println("            while (q != 0) {                          ");
                o.println("                int temp = q; q = p % q; p = temp;    ");
                o.println("            } /* while */                             ");
                o.println("            result = p;                               ");
                o.println("        } /* > 1 */                                   ");
                o.println("        if (result == 0) result = 1;                  ");
                o.println("        return abs(result);                           ");
                o.println("    } /* gcd2 */                                      ");
                o.println("int gcd3(int a, int b, int c) {                       ");
                o.println("        return gcd2(a, gcd2(b, c));                   ");
                o.println("    } /* gcd3 */                                      ");
                o.println("int gcd4(int a, int b, int c, int d) {                ");
                o.println("        return gcd2(a, gcd3(b, c, d));                ");
                o.println("    } /* gcd4 */                                      ");
                o.println("int gcd5(int a, int b, int c, int d, int e) {         ");
                o.println("        return gcd2(a, gcd4(b, c, d, e));             ");
                o.println("    } /* gcd5 */                                      ");
            } // feature gcd

            if (features.indexOf("square") >= 0) {
                int maxRoot2  = 8;
                int range2    = maxRoot2 * maxRoot2; // 64
                int maxPow2   = range2 * 2 + 1; // [-64 .. 0 .. +64]
                o.println("#define MAX_POW2 " + String.valueOf(maxPow2));
                o.println("#define RANGE2   " + String.valueOf(range2)); // offset of [0]
                sep = " = { ";
                o.print  ("int pow2[]");
                for (int isq = 0; isq <  maxPow2; isq ++) {
                    o.print(sep + "0");
                    sep = ",";
                    if (isq % 32 == 0) {
                        o.println(" /* " + String.valueOf(isq) + " */");
                    }
                } // for isq 1
                o.println("};");
                for (int isq = 0; isq <= maxRoot2; isq ++) {
                    int isq2 = isq * isq;
                    o.println("pow2[" + String.valueOf(range2) + "+" + String.valueOf(isq2) + "] = " + String.valueOf(  isq) + ";");
                //  o.println("pow2[" + String.valueOf(range2) + "-" + String.valueOf(isq2) + "] = " + String.valueOf(    0) + ";");
                } // for isq 2
            } // feature square

            if (features.indexOf("cube") >= 0) {
                int maxRoot3  = 4;
                int range3    = maxRoot3 * maxRoot3 * maxRoot3; // 64
                int maxPow3   = range3 * 2 + 1; // [-64 .. 0 .. +64]
                o.println("#define MAX_POW3 " + String.valueOf(maxPow3));
                o.println("#define RANGE3   " + String.valueOf(range3)); // offset of [0]
                sep = " = { ";
                o.print  ("int pow3[]");
                for (int isq = 0; isq <  maxPow3; isq ++) {
                    o.print(sep + "0");
                    sep = ",";
                    if (isq % 32 == 0) {
                        o.println(" /* " + String.valueOf(isq) + " */");
                    }
                } // for isq 1
                o.println("};");
                for (int isq = 0; isq <= maxRoot3; isq ++) {
                    int isq3 = isq * isq * isq;
                    o.println("pow3[" + String.valueOf(range3) + "+" + String.valueOf(isq3) + "] = " + String.valueOf(  isq) + ";");
                    o.println("pow3[" + String.valueOf(range3) + "-" + String.valueOf(isq3) + "] = " + String.valueOf(- isq) + ";");
                } // for isq 2
            } // feature cube
            o.println("int reslines = 0;");
            o.println("printf(\"" + LEADER + "start of results ----\\n\");");
            // C
        }
    } // programHeader

    /** Print the declarations for the matrix elements
     */
    private void declareMatrix() {
        // now print the variable declarations for the matrix elements
        String sep = "int ";
        for (int irow = 1; irow <= nrows; irow ++) {
            for (int icol = 1; icol <= ncols; icol ++) {
                o.print(sep + "m" + String.valueOf(irow) + String.valueOf(icol));
                sep = ",";
            } // for icol
            o.println();
        } // for irow
        o.println(";");
    } // declareMatrix

    /** Generate a program trailer
     */
    private void programTrailer() {
        if (false) {
        } else if (lang.equals("C"   )) {
            o.println(brackets); // all closing brackets opened by oc()
            o.println("printf(\"" + LEADER + "reslines=%d\\n\", reslines);");
            o.println("} /* main */");
            // C
        }
    } // programTrailer

    /** Open and push 1 closing bracket
     */
    private void oc() {
        o.println(" {");
        brackets += "}";
    } // oc()

    /** Print <em>for</em> loops for 1 row
     *  @param irow row number
     */
    private void forRow(int irow) {
        for (int jcol = 1; jcol <= ncols; jcol ++) {
            String mij = letter1 + String.valueOf(irow) + String.valueOf(jcol);
            o.print("for (" + mij + " = " + String.valueOf(minDigit) + "; "
                    + mij + " < " + String.valueOf(maxDigit) + "; "
                    + mij + "++) /* row " + String.valueOf(irow) + " */ "); oc();
            if (nonZero) {
                o.print("if (" + mij + " != 0)"); oc();
            } // nonZero
        } // for jcol
    } // forRow

    /** Print <em>for</em> loops for 1 column
     *  @param jcol column number
     */
    private void forCol(int jcol) {
        for (int irow = 1; irow <= nrows; irow ++) {
            String mij = letter1 + String.valueOf(irow) + String.valueOf(jcol);
            o.print("for (" + mij + " = " + String.valueOf(minDigit) + "; "
                    + mij + " < " + String.valueOf(maxDigit) + "; "
                    + mij + "++) /* col " + String.valueOf(jcol) + " */ "); oc();
            if (nonZero) {
                o.print("if (" + mij + " != 0)"); oc();
            } // nonZero
        } // for irow
    } // forCol

    /** Check InnerProduct of 2 columns
     *  @param jcol column number 1
     *  @param kcol column number 2
     */
    private void checkProdCol(int jcol, int kcol) {
        o.print("if (0");
        for (int irow = 1; irow <= nrows; irow ++) {
            String mij = letter1 + String.valueOf(irow) + String.valueOf(jcol);
            String mik = letter1 + String.valueOf(irow) + String.valueOf(kcol);
            o.print((irow < nrows ? " + " : " - ") + mij + "*" + mik);
        } // for irow
        o.print(" == 0)"); oc();
    } // checkProdCol

    /** Check the innermosted nested sum: A12^2 + 2*A11*A13 + A22^2 + 2*A21*A23 - A32^2 - 2*A31*A33
     *  @param jcol column number 1
     *  @param kcol column number 2
     *  @param lcol column number 3
     */
    private void checkNestCol(int jcol, int kcol, int lcol) {
        o.print("if (0");
        for (int irow = 1; irow <= nrows; irow ++) {
            String mij = letter1 + String.valueOf(irow) + String.valueOf(jcol);
            String mik = letter1 + String.valueOf(irow) + String.valueOf(kcol);
            String mil = letter1 + String.valueOf(irow) + String.valueOf(lcol);
            o.print((irow < nrows ? " + " : " - ") + mij + "*" + mil + "*2");
            o.print((irow < nrows ? " + " : " - ") + mik + "*" + mik);
        } // for irow
        o.print(" == 0)"); oc();
    } // checkNestCol

    /** Print conditions which check whether 2 matrix rows are identical
     *  @param irow 1st row number
     *  @param jrow 2nd row number
     */
    private void checkSameRow(int irow, int jrow) {
        o.print("if ");
        String sep = "(";
        for (int kcol = 1; kcol <= ncols; kcol ++) {
            String mik = letter1 + String.valueOf(irow) + String.valueOf(kcol);
            String mjk = letter1 + String.valueOf(jrow) + String.valueOf(kcol);
            o.print(sep + mik + " != " + mjk);
            sep = " || ";
        } // for kcol
        o.print(") /* row " + String.valueOf(irow) + " != row " + String.valueOf(jrow) + " */ "); oc();
    } // checkSameRow

    /** Print conditions which check whether a matrix row has at least
     *  one element &gt; 0
     *  @param irow 1st row number
     */
    private void checkPlusRow(int irow) {
        o.print("if ");
        String sep = "(";
        for (int kcol = 1; kcol <= ncols; kcol ++) {
            String mik = letter1 + String.valueOf(irow) + String.valueOf(kcol);
            o.print(sep + mik + " > 0");
            sep = " || ";
        } // for kcol
        o.print(") /* row " + String.valueOf(irow) + " != 0 */ "); oc();
    } // checkZeroRow

    /** Print conditions which check whether a matrix row is all zero
     *  @param irow 1st row number
     */
    private void checkZeroRow(int irow) {
        o.print("if ");
        String sep = "(";
        for (int kcol = 1; kcol <= ncols; kcol ++) {
            String mik = letter1 + String.valueOf(irow) + String.valueOf(kcol);
            o.print(sep + mik + " != 0");
            sep = " || ";
        } // for kcol
        o.print(") /* row " + String.valueOf(irow) + " != 0 */ "); oc();
    } // checkZeroRow

    /** Print conditions which check whether 2 matrix columns are identical
     *  @param icol 1st column number
     *  @param jcol 2nd column number
     */
    private void checkSameCol(int icol, int jcol) {
        o.print("if ");
        String sep = "(";
        for (int krow = 1; krow <= nrows; krow ++) {
            String mik = letter1 + String.valueOf(krow) + String.valueOf(icol);
            String mjk = letter1 + String.valueOf(krow) + String.valueOf(jcol);
            o.print(sep + mik + " != " + mjk);
            sep = " || ";
        } // for krow
        o.print(") /* col " + String.valueOf(icol) + " != col " + String.valueOf(jcol) + " */ "); oc();
    } // checkSameCol

    /** Print a row of the matrix in Vector form [m11,m12,m13]
     *  @param irow row number
     *  @param ncols number of columns (1-ncols)
     */
    private void printRow(int irow, int ncols) {
        o.print("printf(\"");
        String sep = "[";
        for (int kcol = 1; kcol <= ncols; kcol ++) {
            o.print(sep + "%d");
            sep = ",";
        } // for kcol
        o.print("]\"");
        for (int kcol = 1; kcol <= ncols; kcol ++) {
            o.print(sep + letter1 + String.valueOf(irow) + String.valueOf(kcol));
            sep = ",";
        } // for kcol
        o.println(");");
    } // printRow

    /** Print a matrix in vectorized form [[m11,m12],[m21,m22]]
     *  @param nrows number of rows    (1-nrows)
     *  @param ncols number of columns (1-ncols)
     */
    private void printMatrix(int nrows, int ncols) {
        String sep = "[";
        for (int irow = 1; irow <= nrows; irow ++) {
            o.println("printf(\"" + sep + "\");");
            printRow(irow, ncols);
            sep = ",";
        } // for kcol
        o.println("printf(\"]\");");
        o.println("reslines ++;");
    } // printMatrix

    //===========================
    // Generating Methods
    //===========================

    /** Generate 3x3 matrixes for composition triples
     */
    public void barning() {
        letter1 = "m";
        int width = 3;
        nrows = width;
        ncols = width;
        programHeader("");
        declareMatrix();
        o.println("int a=3; int b=4; int c=5;");
        for (int irow = 1; irow <= nrows; irow ++) {
            o.println(getRowLoop(irow));
            for (int jrow = irow - 1; jrow >= 1; jrow --) {
                checkSameRow(irow, jrow);
            } // for jrow
        } // irow
        for (int icol = 1; icol <= ncols; icol ++) {
            for (int jcol = icol + 1; jcol <= ncols; jcol ++) {
                checkSameCol(icol, jcol);
            } // for jcol
        } // icol

        // from PO1.this.tst:
        o.print("if (   m11^2 + 2*m11*m13 + m13^2 + m21^2 + 2*m21*m23 + m23^2 - m31^2 - 2*m31*m33 - m33^2 == 0)"); oc();
        o.print("if ( - m11^2 + 2*m12^2 + m13^2 - m21^2 + 2*m22^2 + m23^2 + m31^2 - 2*m32^2 - m33^2       == 0)"); oc();
        o.print("if (   m11*m12 + m12*m13 + m21*m22 + m22*m23 - m31*m32 - m32*m33                         == 0)"); oc();
        o.print("if ( - m11*m12 + m12*m13 - m21*m22 + m22*m23 + m31*m32 - m32*m33                         == 0)"); oc();
        o.print("int v1=m11*a+m12*b+m13*c; "); o.print("if (v1 > a           )"); oc();
        o.print("int v2=m21*a+m22*b+m23*c; "); o.print("if (v2 > b && v2 > v1)"); oc();
        o.print("int v3=m31*a+m32*b+m33*c; "); o.print("if (v3 > c && v3 > v2)"); oc();
        o.print("if (v1*v1 + v2*v2 - v3*v3 == 0)"); oc();
        printMatrix(nrows, ncols);
        o.println("printf(\"\\t\\tpreserves: [%d,%d,%d] -> [%d,%d,%d]\\n\",a,b,c, v1,v2,v3);");
        programTrailer();
    } // barning

/*
 + m^4*(A11^2 + A21^2 - A31^2)                                          c1^2
 + n^4*(A13^2 + A23^2 - A33^2)                                          c3^2
 + 1*(A16^2 + A26^2 - A36^2)                                            c6^2
 + 2*m^3*n*(A11*A12 + A21*A22 - A31*A32)                                c1.c2
 + 2*m*n^3*(A12*A13 + A22*A23 - A32*A33)                                c2.c3

 + 2*m^3*(A11*A14 + A21*A24 - A31*A34)                                  c1.c4
 + 2*n^3*(A13*A15 + A23*A25 - A33*A35)                                  c3.c5

 + m^2*n^2*(A12^2 + A22^2 - A32^2 + 2*A11*A13 + 2*A21*A23 - 2*A31*A33)  c2^2  + 2*c1.c3

 + 2*m*(A14*A16 + A24*A26 - A34*A36)                                    c4.c6
 + 2*n*(A15*A16 + A25*A26 - A35*A36)                                    c5.c6

 + m^2*(A14^2 + A24^2 - A34^2 + 2*A11*A16 + 2*A21*A26 - 2*A31*A36)      c4^2  + 2*c1.c6
 + 2*m*n*(A14*A15 + A12*A16 + A24*A25 + A22*A26 - A34*A35 - A32*A36)    c4.c5 + c2.c6

 + n^2*(A15^2 + 2*A13*A16 + A25^2 + 2*A23*A26 - A35^2 - 2*A33*A36)      c5^2  + 2*c3.c6
 + 2*m*n^2*(A13*A14 + A12*A15 + A23*A24 + A22*A25 - A33*A34 - A32*A35)  c3.c4 + c2.c5
*/
    /** Test case SIA: Generate 3 x 6 matrixes for sum of 3 squares with Polynomials of degree 2
     *  <pre>
 a^2 + b^2 = c^2;
 a = A11*m^2 + A12*m*n + A13*n^2 + A14*m + A15*n + A16;
 b = A21*m^2 + A22*m*n + A23*n^2 + A24*m + A25*n + A26;
 c = A31*m^2 + A32*m*n + A33*n^2 + A34*m + A35*n + A36;
     *  </pre>
     */
    public void m2SIA() {
    } // m2SIA

    /** Generate 3 x 3 matrixes for coefficients of Euclids identity
     *  <pre>
         a^2 + b^2 - c^2 = 0;
         a = A11*m^2 + A12*m*n + A13*n^2;
         b = A21*m^2 + A22*m*n + A23*n^2;
         c = A31*m^2 + A32*m*n + A33*n^2
     *  </pre>
     */
    public void m2euclid() {
        letter1 = "m";
        nrows   = 3;
        ncols   = 3;
        programHeader("");
        declareMatrix();
        o.println("m12 = 77; m22 = 77; m32 = 77;");
        forCol      (1);
        checkProdCol(1, 1); // m^4
        forCol      (3);
        checkProdCol(3, 3); // n^4
        forCol      (2);
        checkPlusRow(1);
        checkPlusRow(2);
        checkPlusRow(3);
        checkSameRow(1, 2);
        checkSameRow(1, 3);
        checkSameRow(2, 3);
        checkProdCol(1, 2); // 2*m^3*n
        checkProdCol(2, 3); // 2*m*n^3
        checkNestCol(1, 2, 3); // m^2*n^2
        /* SI8.prev.tst:
            simplified and grouped:
             + m^4*(A11^2 + A21^2 - A31^2)
             + 2*m^3*n*(A11*A12 + A21*A22 - A31*A32)
             + m^2*n^2*(A12^2 + 2*A11*A13 + A22^2 + 2*A21*A23 - A32^2 - 2*A31*A33)
             + 2*m*n^3*(A12*A13 + A22*A23 - A32*A33)
             + n^4*(A13^2 + A23^2 - A33^2)
        */
        o.println("int m, n, cr1, cr2, cr3;");
        o.println("n = 1; m = 2;");
        printMatrix(nrows, ncols);
        o.println("printf(\"\\t\");");
        o.println("int countneg = 0;");
        o.println("for (m = 1; m <= 8 && countneg < 7; m ++) {");
        o.println("    cr1 = m*m; cr2 = m*n; cr3 = n*n;");
        String sep = " [";
        for (int irow = 1; irow <= nrows; irow ++) {
            String vai = "va" + String.valueOf(irow);
            String sep2 = " = ";
            o.print("    int " + vai);
            for (int jcol = 1; jcol <= ncols; jcol ++) {
                String mij = letter1 + String.valueOf(irow) + String.valueOf(jcol);
                String crj = "cr"                           + String.valueOf(jcol);
                o.print(sep2 + mij + "*" + crj);
                sep2 = " + ";
            } // for jcol
            o.println(";");
            o.println("    printf(\"" + sep + "%d\", " + vai + ");");
            o.println("    if (m >= 1 && " + vai + " < 0) { countneg ++; }");
            sep = ",";
        } // for irow
        o.println("    printf(\"]\");");
        o.println("} /* for m */");
        o.println("printf(countneg > 0 ? \" ????\" : \" !!!!\");");
        o.println("printf(\"\\n\");");
        programTrailer();
    } // m2euclid

    /** Generate n x n matrixes which preserve generated tuples
     *  @param vectg generating vector of {@link Polynomial}s,
     *  for example [[a^2-b^2],[2*a*b],[a^2+b^2]] for Pythagoras
     *  @param vectc vector of constants fulfilling the equality of <em>poly0</em>,
     *  for example [3,4,5]
     *  The element order must correspond to that of <em>vectg</em>
     *  @param poly0 Polynomial which represents the generator,
     *  for example p0^2 + q0^2 = r0^2.
     *  The variable names in <em>poly0</em> must not overlap
     *  with those in <em>vectg</em>, and the lexicographical
     *  order of the variable names in <em>poly0</em> should correspond
     *  to the element order of <em>vectg</em>.
     */
    public void m2opts(PolyVector vectg, PolyVector vectc, Polynomial poly0) {
        letter1 = "m";
        int width = vectg.size();
        nrows = width;
        ncols = width;
        programHeader("gcd");
        declareMatrix();
        PolyMatrix  pmat1 = new PolyMatrix(nrows, ncols, letter1);
        PolyVector  vectm = pmat1.multiply(vectg);
        VariableMap vmap0 = poly0.getVariableMap();
        VariableMap vmap1 = new VariableMap(); // p1->0,q1->0,r1->0
        VariableMap vmap3 = new VariableMap(); // p->p1,q->q1,r->r1
        int
        ivect = 0;
        Iterator<String> viter = vmap0.keySet().iterator();
        while (viter.hasNext()) {
            String name  = viter.next();
            String value = vectm.get(ivect).toString();
            String name1 = name + "1";
            vmap0.put(name, value);
            vmap1.put(name1, "0");
            vmap3.put(name, name1);
            o.print("int " + name + " = " + vectc.get(ivect).toString() + "; ");
            ivect ++;
        } // while viter
        o.println();
        Polynomial poly2  = poly0.substitute(vmap0);
        Monomial mono2    = new Monomial(vectg.getVariableMap().getNameArray());
        RelationSet rset1 = poly2.groupBy(mono2);
        o.println("/*  vectg = " + vectg.toString());
        o.println("    vectc = " + vectc.toString());
        o.println("    poly0 = " + poly0.toString());
        o.println("    mono2 = " + mono2.toString());
        o.println("    rset1 = " + rset1.toList());
        o.println("*/");
        /* mono2= + a*b, rset1=
        [0]  + a^4*(m11^2 + 2*m11*m13 + m13^2 + m21^2 + 2*m21*m23 + m23^2 - m31^2 - 2*m31*m33 - m33^2)
        [1]  + 4*a^3*b*(m11*m12 + m12*m13 + m21*m22 + m22*m23 - m31*m32 - m32*m33)
        [2]  + 2*a^2*b^2*( - m11^2 + 2*m12^2 + m13^2 - m21^2 + 2*m22^2 + m23^2 + m31^2 - 2*m32^2 - m33^2)
        [3]  + 4*a*b^3*( - m11*m12 + m12*m13 - m21*m22 + m22*m23 + m31*m32 - m32*m33)
        [4]  + b^4*(m11^2 - 2*m11*m13 + m13^2 + m21^2 - 2*m21*m23 + m23^2 - m31^2 + 2*m31*m33 - m33^2) */

        String[] names0  = vmap0.getNameArray();
        PolyVector vect0 = new PolyVector(width, 0, names0);
        String[] names1  = vmap1.getNameArray();
        PolyVector vect1 = new PolyVector(width, 0, names1);
        for (int irow = 1; irow <= nrows; irow ++) {
            forRow(irow);
            for (int jrow = irow - 1; jrow >= 1; jrow --) { // avoid identical rows
                checkSameRow(irow, jrow);
            } // for jrow
            String v1 = names1[irow - 1];
            o.println("int " + v1 + " = " + pmat1.getRow(irow - 1).multiply(vect0).toString() + "; ");
            o.print("if (" + v1 + " > 0)"); oc();
        } // irow
        for (int icol = 1; icol <= nrows; icol ++) { // 1..3
            int jcol = 0;
            for (jcol = icol + 2; jcol <= ncols; jcol ++) { // 3..3; all except 1st must be ascending
                o.print("if (" + names1[jcol - 2] + " < " + names1[jcol - 1] + ") /* ascending */"); oc();
            } // for jcol
            for (jcol = icol + 1; jcol <= ncols; jcol ++) { // avoid identical colums
                checkSameCol(icol, jcol);
            } // for jcol
        } // icol

        int irset = 0;
        while (irset < rset1.size()) {
            Polynomial polyr = rset1.get(irset);
            // o.print("if (" + polyr.toString() + " == 0) /* " + polyr.getFactor().toString() + " */"); oc();
            irset ++;
        } // while irset

        o.print("if ("); // skip if resulting tuple is the same
        String
        sep = "";
        ivect = 0;
        while (ivect < vmap1.size()) {
            o.print(sep + names1[ivect] + " != " + names0[ivect]);
            ivect ++;
            sep = " || ";
        } // while ivect
        o.print(") /* not same tuple */"); oc();

        Polynomial poly3 = poly0.substitute(vmap3);
        o.print("if (" + poly3.toString(5) + " == 0) /* chain 1 condition */"); oc(); // for vectc; 5: with noPower
        String nstr1 = vmap1.getNameString();
        o.println("int gcdnp = gcd" + width + "(" + nstr1 + ");");
        o.print  ("if (gcdnp == 1)"); oc();
        // o.println("    /* printf(\"\tnon-primitive/%d\", gcdnp); */");
        printMatrix(nrows, ncols);
        o.print("printf(\"\\tpreserves");
        ivect = 0;
        sep = "\\t[";
        while (ivect < vmap1.size()) {
            o.print(sep + "%d");
            ivect ++;
            sep = ",";
        } // while ivect
        o.println("]\"," + nstr1 + ");");

        o.println("int p2 = m11*p1 + m12*q1 + m13*r1;");
        o.println("int q2 = m21*p1 + m22*q1 + m23*r1;");
        o.println("int r2 = m31*p1 + m32*q1 + m33*r1;");
        o.println("if (p2*p2*p2 == q2*q2 + r2*r2) {");
        o.println("    printf(\"\\tchain2\");");
        o.println("}");
        o.println("printf(\"\\n\");");
        programTrailer();
    } // m2opts

    //==========================================================

    /** String for open and push 1 closing bracket
     *  @return " {\n"
     */
    private String br() {
        brackets += "}";
        return(" {" + newline);
    } // br()

    /** Get a String for a <em>for</em> loop over one column
     *  @param jcol column number
     *  @return a <em>for</em> statement iterating over all rows of one column
     */
    private String getColLoop(int jcol) {
        StringBuffer result = new StringBuffer(256);
        int irow = 1;
        while (irow <= nrows) {
            String mij = letter1 + String.valueOf(irow) + String.valueOf(jcol);
            result.append("for (" + mij + " = " + String.valueOf(minDigit) + "; "
                    + mij + " < " + String.valueOf(maxDigit) + "; "
                    + mij + "++) /* col " + String.valueOf(jcol) + " */ ");
            result.append(br());
            if (nonZero) {
                result.append("if (" + mij + " != 0)" + br());
            } // nonZero
            irow ++;
        } // while irow
        return result.toString();
    } // getColLoop

    /** Get a String for a <em>for</em> loop over one row
     *  @param irow row number
     *  @return a <em>for</em> statement iterating over all columns of one row
     */
    private String getRowLoop(int irow) {
        StringBuffer result = new StringBuffer(256);
        int jcol = 1;
        while (jcol <= ncols) {
            String mij = letter1 + String.valueOf(irow) + String.valueOf(jcol);
            result.append("for (" + mij + " = " + String.valueOf(minDigit) + "; "
                    + mij + " < " + String.valueOf(maxDigit) + "; "
                    + mij + "++) /* row " + String.valueOf(irow) + " */ ");
            result.append(br());
            if (nonZero) {
                result.append("if (" + mij + " != 0)" + br());
            } // nonZero
            jcol ++;
        } // while jcol
        return result.toString();
    } // getRowLoop

    /** Get a String for the innerproduct of 2 columns
     *  @param jcol column number 1
     *  @param kcol column number 2
     *  @param negs number of negative terms at the end of the expression
     *  @return an expression consisting of the sum of products
     */
    private String getColProd(int jcol, int kcol, int negs) {
        StringBuffer result = new StringBuffer(256);
        int isig = 0;
        int irow = 1;
        while (irow <= nrows)  {
            String mij = letter1 + String.valueOf(irow) + String.valueOf(jcol);
            String mik = letter1 + String.valueOf(irow) + String.valueOf(kcol);
            result.append(irow <= nrows - negs ? " + " : " - ");
            result.append(mij + "*" + mik);
            irow ++;
        } // while irow
        return result.toString();
    } // getColProd

    /** constant for short or int declarations, plus a space */
    public final static String SHORT_INT = "int ";
    /** 64 open parentheses */
    public final static String PARENS = "((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((";

    /** Generate identities for power sums
     *  Parameters:
     *  <ul>
     *  <li>rset1 RelationSet</li>
     *  </ul>
     */
    public void pident() {
        RelationSet rset0   = rset1.clone(); // original RS
        Polynomial powerSum = rset1.get(rset1.size() - 1); // the last is the powersum formula
        int exponent        = powerSum.degree();
        rset1.simplify(false); // simplify only the lowercase variables
        if (rset1.size() > 1) {
            System.out.println("Still more than 1 Polynomial after simplification: " + rset1.toString());
        } else { // simplification returned a single Polynomial
            programHeader("");
            VariableMap vmiso   = rset0.getVariableMap("1", false); // all lowercase
            VariableMap vmpar   = rset1.getVariableMap("1", false); // remaining lowercase => parameters
            vmiso.remove(vmpar); // those which vanished by simplification
            Polynomial poly1    = rset1.get(0);
            VariableMap vmap1   = poly1.getVariableMap("1", false);
            Monomial monog      = new Monomial(vmap1.getNameArray());
            RelationSet rset2   = poly1.groupBy(monog);
            int npoly           = rset2.size();
            VariableMap[] vmaps = new VariableMap[npoly];
            int[]         nvars = new int[npoly];

            o.println("/* simplified and grouped: ");
            int minSize = 2906; // very high
            int maxSize =    0; // very low
            int ipoly = 0;
            Polynomial polyi = null;
            while (ipoly < npoly) {
                polyi = rset2.get(ipoly);
                vmaps[ipoly] = polyi.getVariableMap();
                nvars[ipoly] = vmaps[ipoly].size();
                if (nvars[ipoly] < minSize) {
                    minSize = nvars[ipoly];
                }
                if (nvars[ipoly] > maxSize) {
                    maxSize = nvars[ipoly];
                }
                o.println("    [" + ipoly + "] " + polyi.getFactor().toString()
                        + "\t(" + polyi.toString(5) + ")"
                        + "\t"  + nvars[ipoly]
                        + "{"  + vmaps[ipoly].getNameString() + "}"
                        );
                ipoly ++;
            } // while ipoly
            o.println("    minSize=" + minSize + ", maxSize=" + maxSize); // minimal/maximal number of variables in a partial Polynomial
            vmap1             = rset1.getVariableMap(true);  // with uppercase variables
            VariableMap vlow  = rset1.getVariableMap(false); // without uppercase
            vmap1.remove(vlow); // now only the uppercase
            String[] names = vmap1.getNameArray(); // ascending order because of TreeMap
            ncols = 0;
            int nsub = (names[0].length() >= 5) ? 3 : 2; // will handle indexing A11, A101 or A0101
            String subs = names[ncols ++].substring(0, nsub); // "A11" -> "A1"
            while (ncols < names.length && names[ncols].substring(0, nsub).equals(subs)) {
                ncols ++;
            } // while ncols
            nrows = names.length / ncols;
            letter1 = subs.substring(0, 1); // always a single letter
            PolyMatrix pmat = new PolyMatrix(nrows, names);
            o.println(LEADER + "nrows="     + nrows);
            o.println(LEADER + "ncols="     + ncols);
            o.println(LEADER + "isolated="  + vmiso.getNameString());
            o.println(LEADER + "parameter=" + vmpar.getNameString());
            o.println(LEADER + "rset0="     + rset0.toString()); // original
            o.println(LEADER + "poly1="     + poly1.toString()); // with isolated variables removed
            o.println(LEADER + "powerSum="  + powerSum.toString()); // powersum polynomial
            o.println(LEADER + "exponent="  + String.valueOf(exponent));
            o.println(LEADER + "pmat="      + pmat .toString());
            o.println("*/");
            o.println(SHORT_INT + vmap1.getNameString() + ";"); // instead of declareMatrix()
            o.println("int sum0 = 0;");

            boolean hasInserted = false;
            while (minSize <= maxSize) { // expand all partial Polynomials
                ipoly = 0;
                while (ipoly < npoly) {
                    polyi = rset2.get(ipoly);
                    if (nvars[ipoly] == minSize) { // next bigger, expand for this
                        nvars[ipoly] = 0; // do not investigate anymore
                        names = vmaps[ipoly].getNameArray();
                        int inam = 0;
                        while (inam < names.length) {
                            String name  = names[inam];
                            String found = vmap1.remove(name);
                            if (found != null) {
                                o.print("for (" + name + " = " + String.valueOf(minDigit) + "; "
                                        + name + " < " + String.valueOf(maxDigit) + "; "
                                        + name + "++) " + br());
                            /*
                                int irow = nrows - vmap1.size();
                                if (irow >= 1 && irow <= nrows) {
                                    String pvi = PARENS.substring(0, ncols - 1)
                                            + pmat.getRow(irow - 1).toString()
                                            .replaceAll("\\,", ")*8+")
                                            .replaceAll("\\[", "(")
                                            .replaceAll("\\]", "); ")
                                            ;
                                    String sumi = "sum" + String.valueOf(irow);
                                    o.print(SHORT_INT + sumi + " = " + pvi);
                                    if (irow - 1 > 0) { // >= would involve sum0
                                        o.print("if (sum" + String.valueOf(irow - 1) + " < " + sumi + ")" + br());
                                    } else {
                                        o.println();
                                    }
                                } // vsize1 < nrows
                            */
                            } // found
                            inam ++;
                        } // while inam
                        o.print("if (" + polyi.toString(5) + " == 0) /* [" + ipoly + "], minSize = " + minSize + " */ " + br());
                    } // == minSize
                    ipoly ++;
                } // while ipoly
                minSize ++; // try higher in next loop
            } // while expanding all partial Polynomials
            for (int irow = 1; irow <= nrows; irow ++) {
                checkZeroRow(irow);
            /*  superfluous because weighted rows must be increasing (above)
                for (int jrow = irow + 1; jrow <= nrows; jrow ++) {
                    checkSameRow(irow, jrow);
                } // for jrow
            */
            } // for irow
            printMatrix(nrows, ncols);
            o.println("printf(\"\\n\");");
            programTrailer();
        } // if size 1 after simplification
    } // pident

    //==========================================================

    /* Get the commandline parameters
     *  @param args command line arguments:
     *  <ul>
     *  <li>operation: m1, ...</li>
     *  <li>-e exponent</li>
     *  <li>-l maxDigit</li>
     *  <li>-n generate non-zero entries only</li>
     *  <li>-p poly: 1st, 2nd, 3rd Polynomial</li>
     *  <li>-r rset: RelationSet</li>
     *  <li>-v startVector</li>
     *  <li>-w width, matrix size</li>
     *  </ul>
     */
    private void getArguments(String[] args) {
        String op = "";
        int ipoly = -1;
        int ivect = -1;
        int iarg  = 0;
        while (iarg < args.length) { // get the arguments
            if (args[iarg].startsWith("-")) {
                argsLog.append(' ');
                argsLog.append(args[iarg]);
                op = args[iarg ++].substring(1).toLowerCase();
                if (false) {
                } else if (op.equals("e")) {
                    argsLog.append(' ');
                    argsLog.append(args[iarg]);
                    try {
                        exp   = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else if (op.equals("f")     ) {
                    argsLog.append(' ');
                    argsLog.append(args[iarg]);
                    String fileName = args[iarg ++];
                    rset1 = RelationSet.parse((new ExpressionReader()).read(fileName));
                } else if (op.equals("l")) {
                    argsLog.append(' ');
                    argsLog.append(args[iarg]);
                    int limit = 6;
                    try {
                        limit = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    minDigit = - limit;
                    maxDigit = limit + 1;
                } else if (op.equals("n")) {
                    nonZero = true;
                } else if (op.equals("p")) {
                    argsLog.append(" \"");
                    argsLog.append(args[iarg]);
                    argsLog.append("\"");
                    ipoly ++;
                    polys[ipoly] = Polynomial.parse(args[iarg ++]);
                } else if (op.equals("r")) {
                    argsLog.append(" \"");
                    argsLog.append(args[iarg]);
                    argsLog.append("\"");
                    rset1 = RelationSet.parse(args[iarg ++]);
                } else if (op.equals("v")) {
                    argsLog.append(" \"");
                    argsLog.append(args[iarg]);
                    argsLog.append("\"");
                    ivect ++;
                    vects[ivect] = new PolyVector(args[iarg ++]);
                } else if (op.equals("w")) {
                    argsLog.append(' ');
                    argsLog.append(args[iarg]);
                    try {
                        width = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    nrows = width;
                    ncols = width;
                } else {
                    System.err.println("unknown option \"-" + op + "\"");
                }
            } else {
                argsLog.append(' ');
                argsLog.append(args[iarg]);
                method = args[iarg ++];
            }
        } // while args
    } // getArguments

    //==========================
    // Main
    //==========================
    /** Test method.
     *  @param args commandline arguments
     */
    public static void main(String[] args) {
        ProgramGenerator gen = new ProgramGenerator();
        gen.getArguments(args);
        //----------------------------------
        if (false) {
        } else if (gen.method.equals("barning"  )) {
            gen.barning();
        } else if (gen.method.equals("m2euclid" )) {
            gen.m2euclid();
        } else if (gen.method.equals("m2opts"   )) {
            gen.m2opts(gen.vects[0], gen.vects[1], gen.polys[0]);
        } else if (gen.method.equals("pident"   )) {
            gen.pident();
        } else {
            System.err.println("unknown operation \"" + gen.method + "\"");
        }
        gen.close();
    } // main

} // ProgramGenerator
