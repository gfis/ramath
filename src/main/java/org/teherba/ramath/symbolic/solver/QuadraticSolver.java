/*  QuadraticSolver: tries to solve a quadratic Diophantine equation
 *  @(#) $Id: QuadraticSolver.java 298 2009-11-16 21:54:54Z gfis $
 *  2015-05-28: subdirectory solver
 *  2014-04-05: no more extending Solver
 *  2009-08-28, Georg Fischer: copied from BinarySolver
 *
 <p>
 http://www.khagolmandal.com/index.php?option=com_content&task=view&id=45&Itemid=45&limit=1&limitstart=1
 Chakrawaal is the “indeterminate equation of second order” in western mathematics.
 This type of equation is also called Pell’s equation. Though the equation is recognized
 by his name Pell had never solved the equation. Much before Pell, the equation was solved
 by an ancient and eminent Indian mathematician, Brahmagupta (628 AD).
 The solution is given in his Brahmasphutasiddhanta. Bhaskara modified the method
 and gave a general solution of this equation.
 For example, consider the equation 61x2 + 1 = y2.
 Bhaskara gives the values of x = 22615398 and y = 1766319049
<p>
Pell solver: http://www.bioinfo.rpi.edu/zukerm/cgi-bin/dq.html
<p>
http://www.alpertron.com.ar/ENGLISH.HTM

http://de.wikipedia.org/wiki/RSA-129 :
RSA-129 = 11438162575788886766923577997614661201021829672124236256256184293
          5706935245733897830597123563958705058989075147599290026879543541

RSA-129 = 3490529510847650949147849619903898133417764638493387843990820577
        * 32769132993266709549961988190834461413177642967992942539798288533

http://en.wikipedia.org/wiki/RSA_numbers :
RSA-100 = 15226050279225333605356183781326374297180681149613
          80688657908494580122963258952897654000350692006139

RSA-100 = 37975227936943673922808872755445627854565536638199
        × 40094690950920881030683735292761468389214899724061

http://en.wikipedia.org/wiki/Fermat%27s_factorization_method : N=2345678917

http://en.wikipedia.org/wiki/Dixon%27s_factorization_method
84923 = 521 * 163

http://en.wikipedia.org/wiki/Quadratic_sieve
200155891842677636749755823736295331715285902949251303870245403115673596651717093
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.symbolic.solver.ProofStep;
import  org.teherba.ramath.ContinuedFraction;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.util.ExpressionReader;
import  java.util.Iterator;

/** Tries to solve a Diophantine equation with exponents not greater than 2.
 *  For example:
 *  <ul>
 *  <li>Pell equations of the form x^2 + n*y^2 = 1 </li>
 *  <li>Equations from factorization, of the form x^2 - y^2 = n</li>
 *  </ul>
 *  The Diophantine equation is represented by a {@link Polynomial} that should evaluate to zero.
 *  @author Dr. Georg Fischer
 */
public class QuadraticSolver {
    public final static String CVSID = "@(#) $Id: QuadraticSolver.java 298 2009-11-16 21:54:54Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 1;

    /** No-args Constructor - prints on {@link java.lang.System#out}     */
    public QuadraticSolver() {
        super();
    } // no-args Constructor

    /** Tries to solve a Pell equation of the form n*x^2 + 1 = y^2.
     *  @param proofStep0 original polynomial which is to be solved
     *  @return number of solutions which were found
     */
    public int solvePell(ProofStep proofStep0) {
        boolean solved = false;
        int numberOfSolutions = 0;
        return numberOfSolutions;
    } // solvePell

    /** Test method.
     *  @param args command line arguments
     *  <ul>
     *  <li>-b modulo base (default 2)</li>
     *  <li>-e polynomial (enclosed in quotes)</li>
     *  <li>-f fileName (for a file containing the polynomial)</li>
     *  <li>-m maximum number of solutions (default 1)</li>
     *  <li>-s substitute subsets of variables (default: all variables)</li>
     *  </ul>
     */
    public static void main(String[] args) {
        QuadraticSolver qsolver = new QuadraticSolver();
        Polynomial      poly    = new Polynomial("(x+7)*(x-7)");
        int iargs = 0;
        while (iargs < args.length) {
            String arg = args[iargs ++];
            if (arg.startsWith("-")) { // option
                if (false) {
                } else if (arg.startsWith("-e") && iargs < args.length) {
                    poly = poly.parse              (args[iargs ++]);
                } else if (arg.startsWith("-f") && iargs < args.length) {
                    poly = poly.parse              ((new ExpressionReader()).read(args[iargs ++]));
                } else {
                    System.err.println("invalid option \"" + arg + "\"");
                }
            } else { // no option - direct expression (my not start with "-")
                poly = poly.parse(arg);
            }
        } // while iargs
        qsolver.solvePell(new ProofStep(poly));
    } // main

} // QuadraticSolver
