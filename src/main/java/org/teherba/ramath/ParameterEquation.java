/*  Evaluate parameterized Diophantine equations
 *  @(#) $Id: ParameterEquation.java 808 2011-09-20 16:56:14Z gfis $
 *  2014-04-08: use BigInteger.valueOf(long)
 *  2013-05-26: negative limit => offset
 *  2011-07-24: read some parameterized formula and evaluate it
 *  2009-06-01, Georg Fischer
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
package org.teherba.ramath;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.util.Dispenser;
import  org.teherba.ramath.util.Expander;
import  org.teherba.ramath.util.ExpressionReader;
import  java.math.BigInteger;
import  java.util.Date;
import  java.util.Iterator;
import  java.util.TreeMap;

/** Evaluate parameterized Diophantine equations.
 *  @author Dr. Georg Fischer
 */
public class ParameterEquation {
    public final static String CVSID = "@(#) $Id: ParameterEquation.java 808 2011-09-20 16:56:14Z gfis $";

    /** array for powers of natural numbers */
    private BigInteger[] powers;
    /** last array element which was set */
    int iset;
    /** last possible array element */
    int maxPowers;
    /** exponent of Fermat's formula */
    private int k;

    /** starting time */
    private long startTime;

    // Ramanujan (Berndt 1994, p. 56)
    // (3*x^2+5*x*y-5*y^2)^3+(4*x^2-4*x*y+6*y^2)^3+(5*x^2-5*x*y-3*y^2)^3=(6*x^2-4*x*y+4*y^2)^3

    //===========================
    // Construction
    //===========================
    /** No-args Constructor
     */
    public ParameterEquation() {
        this(3, 4096);
    } // no-args Constructor

    /** Constructor with maximum array size
     *  @param k exponent for power tuples
     *  @param maxPowers maximum value of kth base number
     */
    public ParameterEquation(int k, int maxPowers) {
        powers = new BigInteger[maxPowers];
        this.k = k;
        this.maxPowers = maxPowers;
        iset = 0;
        powers[iset ++] = BigInteger.ZERO;
        powers[iset   ] = BigInteger.ONE;
        startTime = (new java.util.Date()).getTime();
    } // Constructor with maximum array size

    //===========================
    // Utility Methods
    //===========================
    /** Gets the element with the kth power of it's index,
     *  eventually computing this element and the ones before it.
     *  @param i index of the element to be returned
     */
    public BigInteger get(int i)  {
        BigInteger result;
        if (i <= iset) {
            result = powers[i];
        } else {
            while (iset < i) {
                iset ++;
                powers[iset] = BigInteger.valueOf(iset).pow(k);
            }
            result = powers[iset];
        }
        return result;
    } // get

    /** Computes some power of an integer
     *  @param exp exponent
     *  @param base number to be raised to the 'exp'th power
     *  @return base**exp
     */
    public int pow(int base, int exp) {
        int result = 1;
        while (exp > 0) {
            result *= base;
            exp --;
        } // while exp
        return result;
    } // pow

    /** Computes some power of a long integer
     *  @param exp exponent
     *  @param base number to be raised to the 'exp'th power
     *  @return base**exp
     */
    public long power(long base, int exp) {
        long result = 1;
        while (exp > 0) {
            result *= base;
            exp --;
        } // while exp
        return result;
    } // power

    /** Computes the factorial of an integer
     *  @param base number for which the product of all natural numbers &gt; 0 and &lt;= base should be computed
     *  @return base!
     */
    public int factorial(int base) {
        int result = 1;
        int num = 1;
        while (num <= base) {
            result *= num;
            num ++;
        } // while num
        return result;
    } // factorial

    //===========================
    // Test Methods
    //===========================

    /** a set of variable names */
    private static final String letters = "abcdefghijklmnopqrstuvwxyz";

    /** Expands the parameters of a set of polynomials,
     *  and prints the resulting constants.
     *  @param expressions a set of polynomial formulas
     *  @param maxDigit expand the variables' values up to but below this limit
     *  @param numVars number of variables
     *  @param exp exponent for the final equal sum of like powers
     *  @param formulaName name for the generating formula
     */
    public void expand(String[] expressions, int maxDigit, int numVars, int exp, String formulaName) {
        int nexpr = expressions.length;
        StringBuffer sumExpr  = new StringBuffer(512);
        int iexpr = 0;
        // String formulaName = expressions[iexpr ++];
        Polynomial[] polys = new Polynomial[nexpr - iexpr];
        int ipoly = 0;
        while (iexpr < nexpr) {
            sumExpr.append(expressions[iexpr]);
            polys[ipoly] = new Polynomial(expressions[iexpr]
                    .replaceAll("\\A[\\+\\-]"   , "")   // remove leading sign
                    .replaceAll("\\^\\d+\\s*\\Z", "")   // remove trailing exponentiation
                    );
            System.out.println("# orig\t" + formulaName + "\t" + expressions[iexpr]);
            System.out.println("# flat\t" + formulaName + "\t" + polys[ipoly].toString().replaceAll(" = 0", ""));
            System.out.println("# merg\t" + formulaName + "\t" + polys[ipoly].mergeVariables().toString().replaceAll(" = 0", ""));
            iexpr ++;
            ipoly ++;
        } // while filling polys
        Polynomial sumPoly = (new Polynomial(sumExpr .toString()));
        System.out.println("# poly\t" + formulaName + "\t" + sumPoly.toString());

        // now substitute many variable values drawn from the Dispenser
        TreeMap<String, String> varMap = polys[0].getVariableMap(); // the first Polynomial must contain all variables
        int ceil = Math.abs(maxDigit);
        int npoly = polys.length;
        Dispenser dispenser = new Expander(numVars, ceil, (maxDigit == ceil ? 0 : -1)); // may generate negative values
        while (dispenser.hasNext()) {
            int[] values = dispenser.next();
            StringBuffer normExpr  = new StringBuffer(128);
            ipoly = 0;
            TreeMap<String, String> sumMap = new TreeMap<String, String>();
            while (ipoly < npoly) { // set variables and evaluate
                int ival = 0;
                Iterator <String> viter = varMap.keySet().iterator();
                while (viter.hasNext()) { // over all variables to be substituted
                    String name = viter.next();
                    varMap.put(name, String.valueOf(values[ival]));
                    if (ipoly == 0) { // ???
                      sumMap.put(name, String.valueOf(values[ival]));
                    }
                    ival ++;
                } // while viter
                Polynomial poly = polys[ipoly].substitute(varMap);
                String constant = poly.getConstant().toString();
                if (ipoly > 0) { // last Polynomial is on the right side of the equation
                    normExpr.append(ipoly < npoly - 1 ? " + " : " - ");
                }
                normExpr.append("(");
                normExpr.append(constant);
                normExpr.append(")*");
                normExpr.append(letters.charAt(ipoly));
                    // multiply the artificial Monomial by some increasing letter (variable)
                    // such that the constants do not sum up
                // System.out.print(constant + " ");
                ipoly ++;
            } // while filling polys
            sumPoly = sumPoly.substitute(sumMap);
            String tuple = (new Polynomial(normExpr.toString())).toString(true)
                    .replaceAll("\\*\\w\\^1",",")
                    .replaceAll(" = 0", "");
            Vector vect = Vector.read(tuple);
            if (! vect.isTrivial()) {
                int factor = vect.extractGcd();
                System.out.print(String.format("%06d", vect.absSum()));
                System.out.print("\t" + vect.sort().toString(","));
                System.out.print("\t" + formulaName);
                System.out.print("\tfactor=" + factor);
            //  System.out.print("\tsum= "  + sumPoly.toString());
                System.out.print("\tparm= " + (new Vector(values)).toString(","));
                System.out.println();
            } // not trivial
        } // while dispenser
    } // expand

    /** Shifts the variables in the {@link Polynomial}s by some (negative or positive) offset,
     *  and prints the flattened polynomials.
     *  @param expressions a set of polynomial formulas
     *  @param maxDigit expand the variables' values up to but below this limit
     *  @param numVars number of variables
     *  @param exp exponent for the final equal sum of like powers
     *  @param formulaName name for the generating formula
     */
    public void shift(String[] expressions, int maxDigit, int numVars, int exp, String formulaName) {
        int nexpr = expressions.length;
        int iexpr = 0;
        Polynomial[] polys = new Polynomial[nexpr - iexpr];
        int ipoly = 0;
        while (iexpr < nexpr) {
            polys[ipoly] = new Polynomial(expressions[iexpr]
                    .replaceAll("\\A[\\+\\-]"   , "")   // remove leading sign
                    .replaceAll("\\^\\d+\\s*\\Z", "")   // remove trailing exponentiation
                    );
            System.out.println("# start\t" + formulaName + "\t" + polys[ipoly].toString().replaceAll(" = 0", ""));
            iexpr ++;
            ipoly ++;
        } // while filling polys

        TreeMap<String, String> varMap = polys[0].getVariableMap(); // the first Polynomial must contain all variables
        int ceil = Math.abs(maxDigit);
        int npoly = polys.length;
        Dispenser dispenser = new Expander(numVars, ceil, (maxDigit == ceil ? 0 : -1)); // may generate negative values
        while (dispenser.hasNext()) {
            int[] values = dispenser.next();
            ipoly = 0;
            while (ipoly < npoly) { // redefine variables and flatten
                int ival = 0;
                String tempo = polys[ipoly].toString();
                Iterator <String> viter = varMap.keySet().iterator();
                while (viter.hasNext()) { // over all variables to be substituted
                    String name = viter.next();
                    tempo = tempo.replaceAll(name, "(" + name.toUpperCase() + "+(" + String.valueOf(values[ival]) + "))");
                    ival ++;
                } // while viter
                Polynomial poly = new Polynomial(tempo);
                System.out.print(formulaName);
                System.out.print("\t" + (new Vector(values)).toString(","));
                System.out.print("\t" + String.format("%2d", ipoly));
                System.out.println("\t" + poly.toString());
                ipoly ++;
            } // while filling polys
            System.out.println();
        } // while dispenser
    } // shift

    /** Determines the maximum number which can be raised to the exponent with <em>long</em> arithmetic
     *  @param exp exponent
     *  @return maximum value of base
     */
    public long maxBase(int exp) {
        long result = 1;
        long base = 1;
        while (result > 0) {
            System.out.println(base + "\t" + result);
            base ++;
            result = power(base, exp);
        } // while exp
        return base - 1;
    } // maxBase

    /** Evaluates Vieta's formula (1591) for cubic diophantine equations
     *  up to some limit of the parameter values,
     *  and print (z, y, x, w, m, n) separated by tabs.
     *  <pre>
     *  w^3 + x^3 + y^3 = z^3
     *  w = m^4 - 2*n^3*m
     *  x = 2*n*m^3 - n^4
     *  y =   n*m^3 + n^4
     *  z = m^4 +   n^3*m
     *  @param limit abs(max(m, n))
     */
    public void evalVieta3(int limit) {
        int n, m, w, x, y, z;
        for (m = -limit; m <= limit; m ++) {
            for (n = -limit; n <= limit; n ++) {
                w = pow(m, 4) - 2 * pow(n, 3) * m;
                x = 2 * n * pow(m, 3) - pow(n, 4);
                y =     n * pow(m, 3) + pow(n, 4);
                z = pow(m, 4) + m * pow(n, 3);
                if (z != y && z != x && z != w && y != x && y != w && x != w) {
                    System.out.println(z + "\t" + y + "\t" + x + "\t" + w + "\t"+ m + "\t" + n);
                }
            } // for n
        } // for m
    } // evalVieta3

    /** Evaluates Korneck's formula (1873) for cubic diophantine equations
     *  up to some limit of the parameter values,
     *  and print (m, n, w, x, y, z) separated by tabs.
     *  <pre>
     *  a^3 + b^3 = c^3 + d^3
     *  @param limit abs(max(m, n))
     */
    public void evalKorneck3(int limit) {
        int m, t, f, a, b, c, d;
        for (m = -limit; m <= limit; m ++) {
            for (t = -limit; t <= limit; t ++) {
                for (f = -limit; f <= limit; f ++) {
                    a =  6 * pow(m, 3) * t * f + t * (t + m) * (pow(m, 4) + pow(m, 2) * pow(t, 2) + pow(t, 4)) + 3 * t * (t - m) * pow(f, 2);
                    b =  6 * pow(m, 3) * t * f - t * (t + m) * (pow(m, 4) + pow(m, 2) * pow(t, 2) + pow(t, 4)) - 3 * t * (t - m) * pow(f, 2);
                    c = -6 * pow(t, 3) * m * f + m * (t + m) * (pow(m, 4) + pow(m, 2) * pow(t, 2) + pow(t, 4)) + 3 * m * (m - t) * pow(f, 2);
                    d =  6 * pow(t, 3) * m * f + m * (t + m) * (pow(m, 4) + pow(m, 2) * pow(t, 2) + pow(t, 4)) + 3 * m * (m - t) * pow(f, 2);
                    if (a != b && a != c && a != d && b != c && b != d && c != d) {
                        System.out.println(a + "\t" + b + "\t" + c + "\t" + d + "\t"+ m + "\t" + t + "\t" + f);
                    }
                } // for f
            } // for t
        } // for m
    } // evalKorneck3

    //==========================
    // Main
    //==========================
    /** Test method.
     *  @param args command line arguments:
     *  <ul>
     *  <li>operation: -expand, -shift -korn, -maxbase, -pow, -vieta</li>
     *  <li>-l limit</li>
     *  <li>-e exp </li>
     *  <li>-b base</li>
     *  <li>-f filename</li>
     *  <li>-t formulaName</li>
     *  <li>-w width (number of variables)</li>
     *  </ul>
     */
    public static void main(String[] args) {
        String oper = "expand";
        String fileName = "-"; // default: read from STDIN
        int limit  = 256;
        int exp    = 4;
        int base   = 4;
        int width  = 4;
        String formulaName = "unknown";

        int iarg  = 0;
        while (iarg < args.length) { // get the arguments
            String op = "";
            if (args[iarg].startsWith("-")) {
                op = args[iarg ++].toLowerCase().substring(1);
            }
            if (false) {
            } else if (op.equals("b")) {
                try {
                    base    = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) {
                }
            } else if (op.equals("e")) {
                try {
                    exp     = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) {
                }
            } else if (op.equals("f")) {
                fileName = args[iarg ++];
            } else if (op.equals("l")) {
                try {
                    limit   = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) {
                }
            } else if (op.equals("t")) {
                formulaName = args[iarg ++];
            } else if (op.equals("w")) {
                try {
                    width   = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) {
                }
            } else {
                oper = op;
            }
        } // while args

        ParameterEquation eqn = new ParameterEquation();
        if (false) {
        } else if (oper.startsWith("expand")) {
            String[] expressions = (new ExpressionReader(true)).read(fileName).split("\n");
            eqn.expand(expressions, limit, width, exp, formulaName);

        } else if (oper.startsWith("shift")) {
            String[] expressions = (new ExpressionReader(true)).read(fileName).split("\n");
            eqn.shift (expressions, limit, width, exp, formulaName);

        } else if (oper.startsWith("korn")) {
            eqn.evalKorneck3(limit);

        } else if (oper.startsWith("maxbase")) {
            eqn.maxBase(limit);

        } else if (oper.startsWith("pow")) {
            System.out.println("pow(6,3) = " + eqn.pow(6, 3));

        } else if (oper.startsWith("vieta")) {
            eqn.evalVieta3(limit);

        } else {
            System.err.println("unknown operation \"" + oper + "\"");
        }
    } // main

} // ParameterEquation
