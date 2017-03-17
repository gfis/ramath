/*  Collection of several experimental methods
 *  @(#) $Id: SandBox.java 808 2011-09-20 16:56:14Z gfis $
 *  2016-07-09: Signature
 *  2016-03-31: -compose
 *  2016-03-11: -reprs
 *  2016-01-03: -pdiff printDifferences
 *  2015-10-05: -bachet
 *  2015-08-31, Georg Fischer: copied from MatrixGenerator
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
package org.teherba.ramath;
import  org.teherba.ramath.BigRational;
import  org.teherba.ramath.BigIntegerUtil;
import  org.teherba.ramath.ContinuedFraction;
import  org.teherba.ramath.PrimeFactorization;
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.PolyVector;
import  org.teherba.ramath.symbolic.Signature;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.util.IntegerExpander;
import  java.io.BufferedReader;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.math.BigInteger;
import  org.apache.log4j.Logger;

/** Collection of several experimental methods, see {@link #main}.
 *  @author Dr. Georg Fischer
 */
public class SandBox {
    public final static String CVSID = "@(#) $Id: SandBox.java 808 2011-09-20 16:56:14Z gfis $";

    /** log4j logger (category) */
    private Logger log;

    /** No-args Constructor
     */
    public SandBox() {
        log = Logger.getLogger(SandBox.class.getName());
    } // no-args Constructor

    //===========================
    // Experimental methods
    //===========================

    private static final String spaces = "                                "; // 32 blanks for formatting of BigIntegers

    /** Evaluates a univariate {@link Polynomial} for a
     *  sequence of variable values and, for the resulting values, print the 
     *  representations of the form p^2 + f*q^2.
     *  @param args commandline arguments: -compose [high [f]]
     */
    private void printCompositions(String[] args) {
        int startValue =    2; // start with this value of the (single) variable
        int highValue  =   10; // end one before this value
        int factor     =    1; // default: representation by a sum of 2 squares
        int iarg = 1; // skip over "-compose"
        if (iarg < args.length) {
            try {
                highValue  = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
        }
        if (iarg < args.length) {
            try {
                factor     = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
        }
        BigInteger bfact = BigInteger.valueOf(factor);
        Polynomial u    = Polynomial.parse("a");
        Polynomial v    = Polynomial.parse("b");
        Polynomial s    = u;
        Polynomial t    = v;
        if (true) { 
            int num = startValue;
            while (num < highValue) {
                Polynomial[] sums = Polynomial.brahmagupta(new Polynomial[] { s, t, u, v } );
                if (false) {
                    int isum = 0;
                    while (isum < sums.length) {
                        System.out.print(sums[isum].toString() + "; ");
                        isum ++;
                    } // while isum
                } // false
                s = sums[0];
                t = sums[1];
                System.out.println(String.format("%4d: ", num)
                        + "(a^2 + b^2)^" + String.valueOf(num) + " = ("
                        + sums[0].toString() + ")^2 + (" 
                        + sums[1].toString() + ")^2");
                System.out.println("      "
                        + "(a^2 + b^2)^" + String.valueOf(num) + " = ("
                        + sums[2].toString() + ")^2 + (" 
                        + sums[3].toString() + ")^2");
                num ++;
            } // while num
        } // true
    } // printCompositions

    /** Evaluates a univariate {@link Polynomial} for a
     *  sequence of values and print the 1st, 2nd and higher
     *  order differences of the Polynomial's values.
     *  @param args commandline arguments: polynomial [start [high]]
     */
    private void printDifferences(String[] args) {
        int startValue =  0; // start with this value of the (single) variable
        int highValue  = 32; // end one before this value
        int iarg = 1; // skip over "-pdiff"
        Polynomial poly1 = Polynomial.parse(args[iarg ++]);
        if (iarg < args.length) {
            try {
                startValue = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
        }
        if (iarg < args.length) {
            try {
                highValue  = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
        }
        int maxDeg = poly1.maxDegree() + 2;
        BigInteger[] olds = new BigInteger[maxDeg];
        BigInteger[] news = new BigInteger[maxDeg]; // must be parallel
        int
        ind = 0;
        while (ind < maxDeg) { // preset with zero differences
            olds[ind] = BigInteger.ZERO;
            news[ind] = olds[ind];
            ind ++;
        } // while ind
        VariableMap vmap = poly1.getVariableMap();
        if (vmap.size() > 1) { // not uniVariate
            System.out.println("\"" + poly1.toString() + "\" is not univariate");
        } else { // uniVariate
            String vnam1 = vmap.getNameString(); // comma separated, but there is only one variable
            int num = startValue;
            while (num < highValue) {
                vmap.put(vnam1, String.valueOf(num));
                Polynomial poly2 = poly1.substitute(vmap);
                // System.out.println("substituted poly2: " + poly2.toString());
/*
    my $ind = 0;
    $ndif[$ind] = &form($num);
    while ($ind < scalar(@ndif) - 1 and $odif[$ind] > 0) {
        $ndif[$ind + 1] = $ndif[$ind] - $odif[$ind];
        $ind ++;
    } # while $ind
    print " ", sprintf("%2d %10d %10d %10d %10d %10d %10d\n", $num, @ndif);
    # print "----\n";
    @odif = @ndif;
*/
                ind = 0;
                if (poly2.isZero()) {
                    news[ind]   = BigInteger.ZERO;
                } else {
                    Signature sig2 = poly2.getMonomials().firstKey();
                    news[ind]   = poly2.getMonomials().get(sig2).getCoefficient();
                }
                while (ind < maxDeg - 1 && ind < num) { // compute differences
                    news[ind + 1] = news[ind].subtract(olds[ind]);
                    ind ++;
                } // while ind
                System.out.print(String.format("%4d", num));
                ind = 0;
                while (ind < maxDeg) { // print and copy
                    String bnum = news[ind].toString();
                    int len = 10 - bnum.length();
                    if (len < 0) {
                        len = 0;
                    }
                    System.out.print(spaces.substring(0, len) + bnum);
                    olds[ind] = news[ind];
                    ind ++;
                } // while ind
                System.out.println();
                num ++;
            } // while num
        } // uniVariate
    } // printDifferences

    /** Takes one output line of testcase PG05 and
     *  evaluates it for an increasing sequence of coprime values of u and v.
     *  @param args commandline arguments: matrix [high [f]]
     */
    private void printEuclid(String[] args) {
        int iarg = 1; // skip over "-triple"
        Matrix amat = new Matrix(args[iarg ++]);
        int startValue =    2; // start with this value of the (single) variable
        int highValue  =   32; // end one before this value
        if (iarg < args.length) {
            try {
                highValue  = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
        }
        int primCount = 0;
        IntegerExpander dispenser = new IntegerExpander(2, highValue);
        while (dispenser.hasNext()) {
            int[] values = dispenser.next();
            int v = values[0];
            int u = values[1];
            if (u > v && v > 0) { // u,v convenient
                Vector vect = amat.multiply(new Vector(new int[] { u * u, u * v, v * v }));
                System.out.print(vect.sort().toString(" %5d") + "\t" + vect.toString(","));
                if (false) {
                } else if (vect.hasZero()        ) {
                    System.out.print(" zero"     );
                } else if (vect.hasNegative()    ) {
                    System.out.print(" negative" );
                } else if (vect.gcd() == 1       ) {
                    System.out.print(" primitive");
                    primCount ++;
                }
                System.out.println(" u,v=" + u + "," + v
                        + (Vector.gcd(u, v) == 1 ? " coprime"  : "")
                        + ((u + v) % 2 != 0      ? " opposite" : "")
                        );
            } // if u,v convenient
        } // while dispenser
        System.out.println("# lim=" + highValue + ", " + primCount + " primit.");
    } // printEuclid

    /** Evaluates a univariate {@link Polynomial} for a
     *  sequence of variable values and, for the resulting values, print the 
     *  representations of the form p^2 + f*q^2.
     *  @param args commandline arguments: polynomial [high [f]]
     */
    private void printRepresentations(String[] args) {
        int startValue =    0; // start with this value of the (single) variable
        int highValue  = 4096; // end one before this value
        int factor     =    1; // default: representation by a sum of 2 squares
        int iarg = 1; // skip over "-reprs"
        System.out.print("# " + args[iarg]);
        Polynomial poly1 = Polynomial.parse(args[iarg ++]);
        if (iarg < args.length) {
            try {
                highValue  = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
        }
        if (iarg < args.length) {
            try {
                factor     = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
        }
        System.out.println(" = " + (factor == 1 ? "" : String.valueOf(factor) + " * ") + "m^2 + n^2 ?");
        BigInteger bfact = BigInteger.valueOf(factor);
        VariableMap vmap = poly1.getVariableMap();
        if (vmap.size() > 1) { // not uniVariate
            System.out.println("\"" + poly1.toString() + "\" is not univariate");
        } else { // uniVariate
            String vnam1 = vmap.getNameString(); // comma separated, but there is only one variable
            int num = startValue;
            while (num < highValue) {
                vmap.put(vnam1, String.valueOf(num));
                Polynomial poly2 = poly1.substitute(vmap);
                BigInteger value = BigInteger.ZERO;
                if (! poly2.isZero()) {
                    Signature sig2 = poly2.getMonomials().firstKey();
                    value = poly2.getMonomials().get(sig2).getCoefficient();
                }
                PrimeFactorization pfact = new PrimeFactorization(value);
                System.out.print(String.format("%5d", num));
                String bnum = pfact.toString();
                int len = 20 - bnum.length();
                if (len < 0) {
                    len = 0;
                }
                System.out.print(spaces.substring(0, len) + bnum);

                boolean busy = true;
                BigInteger spe = BigInteger.ONE;
                int ipair = 0;
                while (busy) {
                    BigInteger spe2 = spe.multiply(spe).multiply(bfact);
                    BigInteger squ2 = value.subtract(spe2);
                    busy = (factor == 1 && spe2.compareTo(squ2)  < 0)
                        || (factor >  1 && spe2.compareTo(value) < 0);
                    if (busy) {
                        BigInteger squ = BigIntegerUtil.root2(squ2, 2);
                        if (! squ.equals(BigInteger.ZERO)) {
                            if (ipair > 0) {
                                System.out.println();
                                System.out.print(spaces.substring(0, 5 + 20));
                            }
                            System.out.print(" = "
                                    + (factor == 1 ? "" : String.valueOf(factor) + " * ")
                                    +    "(" + (new PrimeFactorization(spe)).toString() + ")^2" 
                                    + " + (" + (new PrimeFactorization(squ)).toString() + ")^2"
                                    );
                            if (spe.gcd(squ).equals(BigInteger.ONE)) {
                                System.out.print("\tproper representation by " 
                                        + spe.toString() + "^2 + " + squ.toString() + "^2");
                            }
                            ipair ++;
                        }
                    } // if busy
                    spe = spe.add(BigInteger.ONE);
                } // while busy
                if (ipair > 1) {
                    System.out.print("\t\t[" + ipair + "]");
                }
                System.out.println();
                num ++;
            } // while num
        } // uniVariate
    } // printRepresentations

    /** Evaluates a univariate {@link Polynomial} for a
     *  sequence of odd variable values and print the 
     *  prime factorization of the resulting values
     *  together with the modulus with respect to m of the primes.
     *  @param args commandline arguments: polynomial [high [m]]
     */
    private void printSquareSumPrimes(String[] args) {
        int startValue =    1; // start with this value of the (single) variable
        int highValue  = 4096; // end one before this value
        int modulus    =    8; // default: mod 8
        int iarg = 1; // skip over "-pdiff"
        Polynomial poly1 = Polynomial.parse(args[iarg ++]);
        if (iarg < args.length) {
            try {
                highValue  = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
        }
        if (iarg < args.length) {
            try {
                modulus    = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
        }
        VariableMap vmap = poly1.getVariableMap();
        if (vmap.size() > 1) { // not uniVariate
            System.out.println("\"" + poly1.toString() + "\" is not univariate");
        } else { // uniVariate
            String vnam1 = vmap.getNameString(); // comma separated, but there is only one variable
            int num = startValue;
            while (num < highValue) {
                vmap.put(vnam1, String.valueOf(num));
                Polynomial poly2 = poly1.substitute(vmap);
                Signature sig2 = poly2.getMonomials().firstKey();
                BigInteger coef = poly2.getMonomials().get(sig2).getCoefficient();
                PrimeFactorization pfact = new PrimeFactorization(coef);
                System.out.print(String.format("%5d", num));
                String bnum = coef.toString();
                int len = 20 - bnum.length();
                if (len < 0) {
                    len = 0;
                }
                System.out.print(spaces.substring(0, len) + bnum);
                System.out.println(" " + pfact.toModString(modulus));
                num += 2;
            } // while num
        } // uniVariate
    } // printSquareSumPrimes

    /** Takes one output line of {@link #printCompositions} and
     *  evaluates it for an increasing sequence of coprime values of u and v.
     *  @param args commandline arguments: polynomial [high [f]]
     */
    private void printTriples(String[] args) {
        int iarg = 1; // skip over "-triple"
        Polynomial poly1 = Polynomial.parse(args[iarg ++]);
        Polynomial poly2 = Polynomial.parse(args[iarg ++]);
        Polynomial poly3 = Polynomial.parse(args[iarg ++]);
        int startValue =    2; // start with this value of the (single) variable
        int highValue  =   32; // end one before this value
        if (iarg < args.length) {
            try {
                highValue  = Integer.parseInt(args[iarg ++]);
            } catch (Exception exc) {
            }
        }
        VariableMap vmap = poly1.getVariableMap();

        int num = startValue;
        while (num < highValue) {
            int v = num / 2;
            int u = num - v; // always; u >= v
            while (v >= 1) {
                if ((u + v) % 2 != 0 &&  Vector.gcd(u, v) == 1) { // u+v odd and u,v coprime
                    System.out.print(u + "," + v + ":");
                    vmap.put("u", String.valueOf(u));
                    vmap.put("v", String.valueOf(v));   
                    System.out.print(" " + poly1.substitute(vmap).toString()); // the biggest triple element
                    System.out.print(" " + poly2.substitute(vmap).toString().replaceAll(" ", ""));             
                    System.out.print(" " + poly3.substitute(vmap).toString());             
                    System.out.println();           
                } // if u,v coprime
                v --;
                u = num - v;
            } // while u <= v
            // System.out.println("#--------");
            num ++;
        } // while num
    } // printTriples

    /** Reads lines with numbers a, b, c, d such that a^4 + b^4 = c^4 + d^4.
     *  Checks these tuples whether they are primitive,
     *  whether they fulfill the powersum property,
     *  and show the prime factorizations of the sum a^4 + b^4 and of the sum a^2 + b^2
     *  @param fileName name of file containing line with tuples of 4 numbers
     *  The results indicate that there is no prime factor = 3 mod 4.
     */
    public void process422(String fileName) {
        String line = null; // current line from text file
        try {
            BufferedReader lineReader = new BufferedReader
                    ( (fileName.equals("-"))
                    ? new InputStreamReader(System.in)
                    : new FileReader(fileName)
                    );
            int limit = 128;
            while (limit > 0 && (line = lineReader.readLine()) != null) { // read and process lines
                Vector vect = new Vector(line.trim());
                System.out.print(vect.toString());
                int gcdv = vect.gcd();
                if (gcdv > 1) {
                    System.out.print(" gcd=" + gcdv);
                }
                if (! vect.isPowerSum(4, 2, 2)) {
                    System.out.print(", no powerSum(4)");
                }
                BigInteger sum4 = BigInteger.valueOf(vect.get(0)).pow(4)
                        .add     (BigInteger.valueOf(vect.get(1)).pow(4));
                PrimeFactorization pmfz4 = new PrimeFactorization(sum4);
                System.out.print(",\tsum^4=" + sum4.toString());
                System.out.print("\t=" + pmfz4.toString());
                System.out.print("\t, mod(4)=" + pmfz4.modulus(4).toString(","));
                BigInteger sum2 = BigInteger.valueOf(vect.get(0)).pow(2)
                        .add     (BigInteger.valueOf(vect.get(1)).pow(2));
                PrimeFactorization pmfz2 = new PrimeFactorization(sum2);
                System.out.print(",\tsum^2=" + sum2.toString());
                System.out.print("\t=" + pmfz2.toString());
                System.out.print("\t, mod(4)=" + pmfz2.modulus(4).toString(","));
                System.out.println();
                limit --;
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
    } // process422

    /** Evaluateds Bachet's duplication formula for Mordell equations
     *  <pre>
     *  y^2 = x^3 + c
     *  </pre>
     *  If a forth argument n is given, the duplication is iterated n times.
     *  @param args commandline arguments: x, y, c and optionally n.
     */
    public void processBachet(String[] args) {
        int iarg = 1;
        if (args.length - iarg <= 3) {
            // input is x,y,c of a Mordell equation y^2 = x^3 + c
            Polynomial x = Polynomial.parse(args[iarg ++]);
            Polynomial y = Polynomial.parse(args[iarg ++]);
            Polynomial c = Polynomial.parse(args[iarg ++]);
            Polynomial numX = x.pow(4).subtract((new Polynomial("8")).multiply(c).multiply(x));
            Polynomial denX = (new Polynomial("4")).multiply(y.pow(2));
            Polynomial numY = (new Polynomial("8")).multiply(c.pow(2)
                              ).subtract((new Polynomial("20")).multiply(c).multiply(x.pow(3))
                              ).subtract(x.pow(6)
                              );
            Polynomial denY = (new Polynomial("8")).multiply(y.pow(3));
            System.out.println("y^2 = x^3 + c with"
                    +  " x = " + x.toString()
                    + ", y = " + y.toString()
                    + ", c = " + c.toString());
            System.out.println("x -> (" + numX.toString() + ") /");
            System.out.println("     (" + denX.toString() + "), ");
            System.out.println("y -> (" + numY.toString() + ") /");
            System.out.println("     (" + denY.toString() + ")"  );
            // 3 arguments
        } else { // 4 arguments
            // input is x,y,c,n of a Mordell equation y^2 = x^3 + c with Bachet's formula repeated n times
            BigRational x = new BigRational(args[iarg ++]);
            BigRational y = new BigRational(args[iarg ++]);
            BigRational c = new BigRational(args[iarg ++]);
            System.out.println("y^2 = x^3 + c with"
                    +  " x = " + x.toString()
                    + ", y = " + y.toString()
                    + ", c = " + c.toString());
            int n = Integer.parseInt(args[iarg ++]);
            while (n > 0) {
                BigRational newX =  x.pow(4).subtract((new BigRational("8")).multiply(c).multiply(x))
                                    .divide((new BigRational("4")).multiply(y.pow(2)));
                BigRational newY =  ((new BigRational("8")).multiply(c.pow(2)
                                    ).subtract((new BigRational("20")).multiply(c).multiply(x.pow(3))
                                    ).subtract(x.pow(6)
                                    ))
                                    .divide((new BigRational("8")).multiply(y.pow(3)));
                x = newX;
                y = newY;
                System.out.println(""
                        + "->  " + (x.getDecimal().toString() + "                ").substring(0, 16)
                        + "    " + (new ContinuedFraction(x)).toString()
                        );
                System.out.println(""
                        + "    " + (y.getDecimal().toString() + "                ").substring(0, 16)
                        + "    " + (new ContinuedFraction(y)).toString()
                        );
                n --;
            } // while n
        } // 4 arguments
    } // processBachet

    //==========================
    // Main
    //==========================
    /** Test method.
     *  @param args command line arguments:
     *  <ul>
     *  <li>-bachet x y c [n]: evaluate Bachet's duplication formula</li>
     *  <li>-compose [end [f]]: print successive compositions of (u^2 + v^2)
     *  <li>-eec422  filename: evaluate tuples of the form a^4 + b^4 = c^4 + d^4</li>
     *  <li>-euclid  matrix [lim]: generate Pythagorean triples for coprime u, v
     *  <li>-pdiff   polynomial [start [end]]: print successive differences</li>
     *  <li>-repres  polynomial [end [f]]: print representations of values by p^2 + f*q^2</lI>
     *  <li>-sqsprim polynomial [end [m]]: print prime factorizations of values and the modulus m of the primes</lI>
     *  <li>-triple  poly1 poly2 poly3 [end]: evaluate and generate triples for coprime u, v
     *  </ul>
     */
    /*-------------------- Test Driver --------------------*/
    public static void main(String[] args) {
        SandBox sandBox = new SandBox();
        int iarg = 0;
        if (false) {
        } else if (args.length == 0) {

        } else { // some option
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.startsWith("-bachet"  )) {
                sandBox.processBachet       (args);
            } else if (opt.startsWith("-compose" )) {
                sandBox.printCompositions   (args);
            } else if (opt.startsWith("-eec422"  )) {
                String fileName = args[iarg ++];
                sandBox.process422          (fileName);
            } else if (opt.startsWith("-euclid"  )) {
                sandBox.printEuclid         (args);
            } else if (opt.startsWith("-pdiff"   )) {
                sandBox.printDifferences    (args);
            } else if (opt.startsWith("-repres"  )) {
                sandBox.printRepresentations(args);
            } else if (opt.startsWith("-sqsprim" )) {
                sandBox.printSquareSumPrimes(args);
            } else if (opt.startsWith("-triple"  )) {
                sandBox.printTriples        (args);
            } else {
                System.err.println("invalid option " + opt);
            } // some option
        } // at least 1 argument
    } // main

} // SandBox
