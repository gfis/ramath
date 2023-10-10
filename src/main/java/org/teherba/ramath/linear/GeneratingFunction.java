/*  GeneratingFunction: "guess" (compute) linear or triangle o.g.f.s from sequence data
 *  @(#) $Id$
 *  2023-10-10, Georg Fischer
 */
/*
 * Copyright 2023 Dr. Georg Fischer <dr dot georg dot fischer at gmail dot kom>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.Name of the variable, or value of integer constant
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
package org.teherba.ramath.linear;
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.BigVector;
import  org.teherba.ramath.linear.BigVectorArray;
import  org.teherba.ramath.Coefficient;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.Iterator;

/** Compute generating functions by polynomial division with a general "Ansatz".
 *  @author Dr. Georg Fischer
 */
public class GeneratingFunction extends BigVectorArray {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Monomial.java 522 2010-07-26 07:14:48Z gfis $";

    /** Debugging switch */
    public static int debug = 0;
    
    /** Maximum length of triangle sequence. */
    private static int MAX_TRI = 15;

    /** No-args Constructor
     */
    public GeneratingFunction() {
        super("[[1],[1,-1]]"); // 1/(1-x)
    } // no-args Constructor

    /** Constructor with Strings for numerator and denominator
     *  @param num number list for the numerator   coefficients, for example "[1]"
     *  @param den number list for the denominator coefficients, for example "[1,-1,-1]"
     */
    public GeneratingFunction(String num, String den) {
        super("[" + num + "],[" + den + "]");
    } // Constructor(String, String)

    /** Compute the coefficients of the denominator polynomial in x, y
     *  for a triangle. The nominator is 1.
     *  @param len number of denominator coefficents to be computed
     *  @param terms array of the terms of the resulting triangle, by rows
     *  @return nominator and denominator coefficients
     */
    public static GeneratingFunction ordinaryTriangle(int len, BigVector terms) {
        len = Math.min(Math.min(len, MAX_TRI), terms.size());
        ArrayList<BigInteger> den = new ArrayList<>();
        Polynomial rest   = new Polynomial("a0_0"); //q0, q2, q3 ...
        Polynomial ansatz = Polynomial.getTriangleAnsatz(len); // q1
/*
A036565 Triangle of numbers in which i-th row is {2^(i-j)*7^j, 0<=j<=i}; i >= 0.
[1, 2, 7, 4, 14, 49, 8, 28, 98, 343, 16, 56, 196, 686, 2401]
   1
   2   7
   4  14  49
   8  28  98 343
   ...
Known o.g.f: 1 / ((1 - 2*x)*(1 - 7*x*y)) = 1 / (1 - 2*x - 7*x*y + 0*x^2 + 14*x^2*y + 0*x^2*y^2)
   1
  -2  -7
   0  14   0
   0   0   0   0
   0 ...

q0:=1;
q1:=a + b*x + c*x*y + d*x^2 + e*x^2*y + f*x^2*y^2;
# q1 := f*x^2*y^2+e*x^2*y+c*x*y+d*x^2+b*x+a:  (a - 1)*x^0 = 0
a:=1;
q2:=expand(q0+q1*((-1)*x^0));
# q2 := -f*x^2*y^2-e*x^2*y-c*x*y-d*x^2  -b*x  :  (-b -2)*x = 0
b:=-2;
q3:=expand(q2+q1*((-2)*x));
# q3 := -2*f*x^3*y^2-2*e*x^3*y-f*x^2*y^2-2*c*x^2*y-\
# 2*d*x^3-e*x^2*y  -c*x*y  -d*x^2+4*x^2: (-c -7)*x*y = 0
c:=-7;
q4:=expand(q3+q1*((-7)*x*y));
# q4 := -7*f*x^3*y^3-7*e*x^3*y^2-2*f*x^3*y^2-7*d*x^3*y-2*e*x^3*y-f*x^2*y^2\
# -2*d*x^3-e*x^2*y+49*x^2*y^2  -d*x^2  +28*x^2*y  +4*x^2  : (-d + 4 -4)*x^2 = 0
d:=0;
q5:=expand(q4+q1*((-4)*x^2));
# q5 := -4*f*x^4*y^2-7*f*x^3*y^3-4*e*x^4*y-7*e*x^3*y^2-2*f*x^3*y^2-2*e*x^3*y\
# -f*x^2*y^2  -e*x^2*y  +28*x^3*y+49*x^2*y^2+8*x^3  +28*x^2*y  : (-e + 28 -14)*x^2*y = 0
*/
        if (debug >= 1) {
            System.out.println("# rest=" + rest);
            System.out.println("# ansatz=" + ansatz);
        }
        int row = 0;
        int col = 0;
        String varList = "x,y";
        for (int it = 0; it < len; it ++) { // run through columns row by row
            Polynomial nterm = new Polynomial(terms.getBig(it).negate().toString());
            Polynomial extr = rest.extractTuple(varList, row, col);
            if (debug >= 1) {
                System.out.println("#----------------\n# it=" + it + ", row=" + row + ", col=" + col);
                System.out.println("# nterm="   + nterm + ", extr1=" + extr);
            }
            Polynomial extr2 = new Polynomial(extr + "+(" + nterm + ")");
            VariableMap vmap = extr2.getVariableAssignment();
            if (debug >= 1) {
                System.out.println("# extr2="   + extr2);
                System.out.println("# vmap="    + vmap);
                System.out.println("# rest1="   + rest);
            }
            rest   = rest  .substitute(vmap);
            ansatz = ansatz.substitute(vmap);
            Polynomial mult = nterm.multiply(new Polynomial("x^" + row + "*y^" + col));
            rest   = rest.add(ansatz.multiply(mult));
            if (debug >= 1) {
                System.out.println("# ansatz="  + ansatz);
                System.out.println("# mult="    + mult);
                System.out.println("# rest2="   + rest);
            }
            col ++;
            if (col > row) {
                row ++;
                col = 0;
            }
        } // for it
        GeneratingFunction result = new GeneratingFunction();
        return result;
    } // ordinaryTriangle

    /** Test method, shows a monomial after several operations.
     *  @param args command line arguments - none
     */
    public static void main(String[] args) {
        if (args.length == 0) {
            debug = 1;
            BigVector bv = new BigVector("[1,2,7,4,14,49,8,28,98,343,16,56,196,686,2401]"); // A036565
            System.out.println("gft=" + ordinaryTriangle(MAX_TRI, bv));
        } else {
            int iarg = 0;
            int len = MAX_TRI; // default
            try {
                len = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
            BigVector bv = new BigVector(args[iarg ++]);
            System.out.println(ordinaryTriangle(len, bv));
        }
    } // main

} // GeneratingFunction
