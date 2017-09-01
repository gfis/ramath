/*  ContinuedFraction: a continued fraction in an array list of BigIntegers
 *  @(#) $Id: ContinuedFraction.java 738 2011-07-12 15:14:44Z gfis $
 *  2017-08-18: -cube
 *  2017-05-28: javadoc 1.8
 *  2015-06-17: BigRational extends BigInteger
 *  2014-04-08: use BigInteger.valueOf(long)
 *  2013-08-21: denom -&gt; numerator, nomin -&gt; denominator
 *  2009-09-01: solvePellEquation
 *  2008-10-30, Georg Fischer: copied from BigRational
 */
/*
 * Copyright 2008 Dr. Georg Fischer <punctum at punctum dot kom>
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
/*
 <p>
 http://www.khagolmandal.com/index.php?option=com_content&task=view&id=45&Itemid=45&limit=1&limitstart=1
 Chakrawaal is the "indeterminate equation of second order" in western mathematics.
 This type of equation is also called Pell's equation. Though the equation is recognized
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
        x 40094690950920881030683735292761468389214899724061

http://en.wikipedia.org/wiki/Fermat%27s_factorization_method : N=2345678917

http://en.wikipedia.org/wiki/Dixon%27s_factorization_method
84923 = 521 * 163

http://en.wikipedia.org/wiki/Quadratic_sieve
200155891842677636749755823736295331715285902949251303870245403115673596651717093
 */
package org.teherba.ramath;
import  org.teherba.ramath.BigRational;
import  org.teherba.ramath.BigRationalGenerator;
import  org.teherba.ramath.Series; // only for testing cf(e)
import  org.teherba.ramath.util.BFileReader;
import  org.teherba.ramath.util.ExpressionReader;
import  java.math.BigDecimal;
import  java.math.BigInteger;
import  java.math.MathContext;
import  java.util.ArrayList;
import  java.util.Arrays;

/** Continued fraction in an array list of {@link BigInteger}s.
 *  Element [0] stores the integral part, [1] is constant 1,
 *  [2] is the first partial numerator, [3] the first partial denominator, etc.
 *  Continued fractions are constructed from {@link org.teherba.ramath.BigRational}s,
 *  and the expansion is similiar to the algorithm for the computation of the greatest common divisor of
 *  the numerator and the denominator. It stops when the denominator becomes zero (since
 *  the previous partial denominator divided evenly into the partial numerator).
 *  Per convention, the <em>set</em> method appends a final partial fraction with numerator 0 and
 *  the last divisor as denominator. This enables the <em>get</em> method to reconstruct
 *  exactly the fraction which was input to <em>set</em>.
 *  @author Dr. Georg Fischer
 */
public class ContinuedFraction extends ArrayList/*1.5*/<BigRational>/*1.5*/  {
    public final static String CVSID = "@(#) $Id: ContinuedFraction.java 738 2011-07-12 15:14:44Z gfis $";

    /** debugging switch: 0 = none, 1 = little, 2 = more printout */
    private int debug;

    /** anchor, fixed value for all a or b coefficients */
    private BigInteger anchor;

    /** values for <em>mode</em> */
    public static final int MODE_REGULAR     = 0; // positive quotient and positive rest
    public static final int MODE_FLOOR       = MODE_REGULAR; // FLOOR: positive quotient and positive rest
    public static final int MODE_CEILING     = 1; // quotient one too high, rest negative
    // the following 2 codes must be even and odd !
    public static final int MODE_ALTERNATE_0 = 2; // alternating too high and too low
    public static final int MODE_ALTERNATE_1 = 3; // alternating too low  and too high
    public static final int MODE_NEAREST     = 4; // either higher or lower
    public static final int MODE_ANCHOR_A    = 5; // set a coefficients to a fixed value
    public static final int MODE_ANCHOR_B    = 6; // set b coefficients to a fixed value

    /** No-args Constructor
     */
    public ContinuedFraction() {
        super(256);
        anchor = BigInteger.ONE;
        debug  = 0;
    } // no-args Constructor

    /** Construct from BigDecimal
     *  @param bdec BigDecimal to be converted to a continued fraction
     */
    public ContinuedFraction(BigDecimal bdec) {
        this();
        this.set(bdec);
    } // Constructor(BigDecimal)

    /** Construct from {@link org.teherba.ramath.BigRational}
     *  @param brat BigRational to be converted to a continued fraction
     */
    public ContinuedFraction(BigRational brat) {
        this();
        this.set(brat, MODE_REGULAR);
    } // Constructor(BigRational)

    /** Construct from {@link org.teherba.ramath.BigRational} and mode
     *  @param brat BigRational to be converted to a continued fraction
     *  @param mode mode of sign for this instance
     */
    public ContinuedFraction(BigRational brat, int mode) {
        this();
        this.set(brat, mode);
    } // Constructor(BigRational)

    /** Sets the debugging level, default: 0
     *  @param level 0 = no output, 1 = some, 2 = more, 3 = even more debugging output
     */
    public void setDebuggingLevel(int level) {
        debug = level;
    } // setDebuggingLevel

    /** Sets the anchor value
     *  @param value fixed value for all a or b coefficients, depending on mode
     */
    public void setAnchor(int value) {
        anchor = BigInteger.valueOf(value);
    } // setAnchor

    /** Generates a regular continued fraction (with denominators = +1) from a
     *  {@link org.teherba.ramath.BigRational},
     *  and stores it in the object
     *  @param brat rational number to be expanded to a continued fraction
     */
    public void set           (BigRational brat) {
        set(brat, MODE_REGULAR);
    } // set BigRational

    /** Generates a continued fraction with the "ceiling" rule from a
     *  {@link org.teherba.ramath.BigRational},
     *  and stores it in the object
     *  @param brat rational number to be expanded to a continued fraction
     */
    public void setCeiling    (BigRational brat) {
        set(brat, MODE_CEILING);
    } // setAlternating

    /** Generates a continued fraction with the "alternating" rule from a
     *  {@link org.teherba.ramath.BigRational},
     *  and stores it in the object
     *  @param brat rational number to be expanded to a continued fraction
     */
    public void setAlternate0(BigRational brat) {
        set(brat, MODE_ALTERNATE_0);
    } // setAlternate0

    /** Generates a continued fraction with the "alternating" rule from a
     *  {@link org.teherba.ramath.BigRational},
     *  and stores it in the object
     *  @param brat rational number to be expanded to a continued fraction
     */
    public void setAlternate1(BigRational brat) {
        set(brat, MODE_ALTERNATE_1);
    } // setAlternate0

    /** Generates a continued fraction with the "alternating" rule from a
     *  {@link org.teherba.ramath.BigRational},
     *  and stores it in the object
     *  @param brat rational number to be expanded to a continued fraction
     */
    public void setNearest    (BigRational brat) {
        set(brat, MODE_NEAREST);
    } // setAlternating

    /** Generates a continued fraction (with denominators = +-1) from a
     *  {@link org.teherba.ramath.BigRational},
     *  and stores it in the object.
     *  Per convention, the <em>set</em> method appends a final partial fraction with numerator 0 and
     *  the last divisor as denominator. This enables the <em>get</em> method to reconstruct
     *  exactly the fraction which was input to <em>set</em>.
     *  @param brat rational number to be expanded to a continued fraction
     *  @param mode mode of sign for this instance
     */
    public void set(BigRational brat, int mode) {
        BigRational elem = BigRational.valueOf(0);
        final BigInteger MINUS_ONE = BigInteger.ZERO.subtract(BigInteger.ONE);
        BigInteger[] quotRem = new BigInteger[] { brat.getNum(), brat.getDen() };
        BigInteger divisor = null;
        int toggle = mode & 1; // starting with odd or even (c.f. below)
        int loopCheck = 32767;
        boolean busy = true; // while rational fraction not exhausted
        while (busy && loopCheck >= 0) {
            loopCheck --;
            BigInteger partB = BigInteger.ONE;
            divisor = quotRem[1];
            if (divisor.compareTo(BigInteger.ZERO) < 0) {
                divisor = divisor.abs(); // make absolute
                partB = MINUS_ONE;
            }
            if (debug >= 2) {
                System.out.print("divide: " + quotRem[0].toString() + " / "  + divisor.toString());
            }
            quotRem = quotRem[0].divideAndRemainder(divisor);
            // now quotRem[0] = quotient, quotRem[1] = rest
            busy = quotRem[1].compareTo(BigInteger.ZERO) != 0;
            boolean increase = false; // the mode determines whether the quotient should be increased by 1
            switch (mode) {
                default:
                case MODE_REGULAR:
                    // never increase
                    break;
                case MODE_CEILING:
                    increase = true; // always
                    break;
                case MODE_ALTERNATE_0:
                case MODE_ALTERNATE_1: // c.f. initial value of 'toggle'
                    toggle = 1 - toggle;
                    increase = toggle == 0; // increase every 2nd
                    break;
                case MODE_NEAREST:
                    int comparision = divisor.compareTo(quotRem[1].add(quotRem[1]));
                    if (comparision == 0) { // equal : loop will end in next cycle
                        increase = false;
                    } else if (comparision > 0) {
                        increase = false;
                    } else { // <
                        increase = true;
                    }
                    break;
                case MODE_ANCHOR_A:
                    break;
                case MODE_ANCHOR_B:
                    break;
            } // switch mode
            if (increase && busy) {
                quotRem[0] = quotRem[0].add(BigInteger.ONE);
                quotRem[1] = quotRem[1].abs().subtract(divisor.abs());
            }
            if (debug >= 1) {
                if (debug >= 2) {
                    System.out.print(" = " + quotRem[0].toString() + "," + partB.toString() + " rest "  + quotRem[1].toString());
                }
                if (debug >= 3) {
                    BigDecimal dec = brat.getDecimal().subtract(this.getDecimal());
                    System.out.print(", diff=" + dec.round(new MathContext(128)).toString());
                }
                System.out.println();
            } // debug
            elem = BigRational.valueOf(0);
            elem.setNum(quotRem[0]);
            elem.setDen(partB);
            this.add(elem);
            // this.add(BigRational.valueOf(quotRem[0], partB)); // partial quotient
            quotRem[0] = divisor;
        } // while rational not exhausted
        // append a dummy element which reproduces the original BigRational (without shortening)
        elem = BigRational.valueOf(0);
        elem.setNum(divisor);
        elem.setDen(BigInteger.ZERO);
        this.add(elem);
        // this.add(BigRational.valueOf(divisor, BigInteger.ZERO));
    } // set(BigRational, mode)

    /** Generates a continued fraction (with denominators = +-1) from a
     *  list of {@link BigInteger}s containing the numerators,
     *  and stores it in the object.
     *  @param list list of {@link BigInteger}s for the
     *  numerators of the continued fraction
     */
    public void set(ArrayList<BigInteger>list) {
        int index = 0;
        while (index < list.size()) {
            BigRational result = BigRational.valueOf(0);
            result.setDen(1);
            result.setNum(list.get(index));
            this.add(result);
            index ++;
        } // while index
    } // set(1)

    /** Generates a continued fraction (with numerators = +-1) from a
     *  class generating the elements as {@link org.teherba.ramath.BigRational}s,
     *  and stores it in the object.
     *  @param generator object which contains a <em>get</em> method
     *  generating the {@link org.teherba.ramath.BigRational}s for the
     *  elements of the continued fraction
     *  @param maxElements number of elements to be generated
     */
    public void set(BigRationalGenerator generator, int maxElements) {
        int index = 0;
        while (index < maxElements) {
            this.add(generator.get(index));
            index ++;
        } // while index
    } // set class, max

    /** Generates a continued fraction (with partial numerators = +-1) from a decimal fraction,
     *  and stores it in the object
     *  @param bdec decimal number to be expanded to a continued fraction
     */
    public void set(BigDecimal bdec) {
        this.set(BigRational.valueOf(bdec), MODE_REGULAR);
    } // set(BigDecimal)

    /** Generates a continued fraction (with partial numerators = +-1) from a decimal fraction,
     *  and stores it in the object
     *  @param bdec decimal number to be expanded to a continued fraction
     *  @param mode mode of sign for this instance
     */
    public void set(BigDecimal bdec, int mode) {
        this.set(BigRational.valueOf(bdec), mode);
    } // set(BigDecimal, mode)

    /** Evaluates a continued fraction and returns the corresponding rational number,
     *  or (0/1) if the fraction has not yet been set.
     *  @return fraction consisting of two BigIntegers,
     *  or (0/1) if the continued fraction has not yet been set.
     */
    public BigRational getRational() {
        return true
                ? getRationalDsc(this.size())[this.size() - 1]
                : getRationalAsc()[0]
                ;
    } // getRational

    /** Evaluates a continued fraction and returns the corresponding rational number,
     *  or (0/1) if the fraction has not yet been set.
     *  @param numElem number of elements to evaluate = number of partial fractions;
     *  if this exceeds the number of array elements, the continued fraction is
     *  assumed to be periodic.
     *  @return fraction consisting of two BigIntegers,
     *  or (0/1) if the continued fraction has not yet been set.
     */
    public BigRational getRational(int numElem) {
        return true
                ? getRationalDsc(numElem)[numElem - 1]
                : getRationalAsc()[0]
                ;
    } // getRational

    /** Evaluates a continued fraction and returns the corresponding rational number,
     *  or (0/1) if the fraction has not yet been set.
     *  Ascending variant: the evaluation starts from the innermost partial fraction up to the integral part.
     *  @return array of partial fractions consisting of two BigIntegers, or (0/1) if the continued fraction
     *  has not yet been set.
     */
    public BigRational[] getRationalAsc() {
        BigRational result[] = new BigRational[this.size()];
        BigInteger a2 = BigInteger.ONE ;
        BigInteger b2 = BigInteger.ZERO;
        int index = this.size();
        while (index > 0) {
            index --;
            BigRational partial = this.get(index);
            /*     bp             bp * a2         b1
                ----------  =>  ------------   = -----
                ap + b2/a2      ap * a2 + b2      a1
            */
            BigInteger a1 = partial.getNum().multiply(a2).add(b2);
            BigInteger b1 = partial.getDen().multiply(a2);
            a2 = a1;
            b2 = b1;
            result[index] = BigRational.valueOf(0);
            result[index].setNum(a2);
            result[index].setDen(b2);
            if (debug >= 2) {
                System.out.print(result[index].toString() + " ");
            }
        } // while index >= 0
        if (debug >= 2) {
            System.out.println();
        }
        return result;
    } // getRationalAsc

    /** Evaluates a continued fraction and returns the corresponding rational number,
     *  or (0/1) if the fraction has not yet been set.
     *  Descending variant: the evaluation starts from the integral part down to the innermost partial fraction.
     *  @return array of partial fractions consisting of two BigIntegers, or (0/1) if the continued fraction
     *  has not yet been set.
     */
    public BigRational[] getRationalDsc() {
        return getRationalDsc(this.size());
    } // getRationalDsc()

    /** Evaluates a continued fraction and returns the corresponding rational number,
     *  or (0/1) if the fraction has not yet been set.
     *  Descending variant: the evaluation starts from the integral part down to the innermost partial fraction.
     *  @param numElem number of elements to evaluate = number of partial fractions;
     *  if this exceeds the number of array elements, the continued fraction is
     *  assumed to be periodic.
     *  @return array of partial fractions as {@link BigRational}s,
     *  or (0/1) if the continued fraction has not yet been set.
     */
    public BigRational[] getRationalDsc(int numElem) {
        BigRational result[] = new BigRational[numElem];
        BigInteger akm2 = null;
        BigInteger bkm2 = null;
        BigInteger akm1 = null;
        BigInteger bkm1 = null;
        BigInteger akm0 = BigInteger.ONE;
        BigInteger bkm0 = BigInteger.ZERO;
        int srcIndex = 0;
        int tarIndex = 0;
        while (tarIndex < numElem) {
            if (srcIndex >= this.size()) {
                srcIndex = 1;
            }
            akm2 = akm1;
            bkm2 = bkm1;
            akm1 = akm0;
            bkm1 = bkm0;
            BigRational partial = this.get(srcIndex);
            if (debug >= 2) {
                System.out.println("partial[" + srcIndex + "]: " + partial.toString());
            }
        /*
            Z-1 = 1
            N-1 = 0
            Z0  = a0
            N0  = 1
            Zk  = ak * Zk-1 + bk * Zk-2
            Nk  = ak * Nk-1 + bk * Nk-2
        */
            if (srcIndex == 0) {
                akm0 = partial.getNum();
                bkm0 = BigInteger.ONE; // partial.getDen();
            } else {
                akm0 = partial.getNum().multiply(akm1).add(partial.getDen().multiply(akm2));
                bkm0 = partial.getNum().multiply(bkm1).add(partial.getDen().multiply(bkm2));
            }
            result[tarIndex] = BigRational.valueOf(0);
            result[tarIndex].setNum(akm0);
            result[tarIndex].setDen(bkm0);
            if (debug >= 2) {
                System.out.print(result[tarIndex].toString() + " ");
            }
            srcIndex ++;
            tarIndex ++;
        } // while index >= 0
        if (debug >= 2) {
            System.out.println();
        }
        return result;
     } // getRationalDsc

    /** Evaluates a continued fraction and returns the corresponding decimal fraction
     *  @return BigDecimal from the evaluated continued fraction
     */
    public BigDecimal getDecimal() {
        return this.getRational().getDecimal();
    } // getDecimal

    /** Sets this (regular) continued fraction to the first complete period
     *  (including the trailing doubled integer part) of the square root of the parameter.
     *  The size of the internal {@link ArrayList} is the period length, +1 for the integral part.
     *  If the parameter is a square number, the period length is 0.
     *  @param n integer for which the square root should be computed
     */
    public void sqrtOf(BigInteger n) {
        this.clear();
        // short variable names stem from KEWUN (ALGOL 60) from 1969
        BigInteger g = BigInteger.ZERO;
        while (g.multiply(g).compareTo(n) <= 0) {
            g = g.add(BigInteger.ONE);
        } // while g*g <= n
        g = g.subtract(BigInteger.ONE);
        if (debug >= 2) {
            System.out.print(g + ";");
        }
        this.add(BigRational.valueOf(g));
        if (g.multiply(g).compareTo(n) != 0) { // no square number
            BigInteger p0 = BigInteger.ZERO;
            BigInteger q0 = BigInteger.ONE ;
            BigInteger b0 = g;
            int periodIndex = 0;
            int periodLength = 0;
            int loopCheck = 128;
            while (loopCheck > 0) {
                loopCheck --;
                BigInteger p1 = b0.multiply(q0).subtract(p0);
                BigInteger q1 = n.subtract(p1.multiply(p1)).divide(q0);
                BigInteger b1 = g.add(p1).divide(q1);
                this.add(BigRational.valueOf(b1));
                periodIndex ++;
                if (debug >= 2) {
                    System.out.print(b1 + ",");
                }
                if (false) {
                } else if (periodLength == 0 && q0.compareTo(q1) == 0) {
                    if (debug >= 2) {
                        System.out.print("/...");
                    }
                    periodLength = (periodIndex - 1) * 2;
                    loopCheck = 0;
                } else if (periodLength == 0 && p0.compareTo(p1) == 0) {
                    if (debug >= 2) {
                        System.out.print("*...");
                    }
                    periodLength = (periodIndex - 1) * 2 - 1;
                    loopCheck = 0;
                } else {
                    p0 = p1;
                    q0 = q1;
                    b0 = b1;
                }
            } // while busy
            if (debug >= 2) {
                System.out.print(g.add(g));
            }
            while (periodIndex < periodLength) { // complete period
                this.add(this.get(1 + periodLength - periodIndex - 1));
                periodIndex ++;
            } // while completing
            if (periodLength >= 2) {
                this.add(BigRational.valueOf(g.add(g)));
            }
        } // no square number
        if (debug >= 2) {
            System.out.println();
        }
    } // sqrtOf(n)

    /** Solves a Pell equation of the form <em>n * x<sup>2</sup> + y<sup>2</sup> = +- 1</em> by searching
     *  for fitting partial fractions <em>y/x</em> in the continued fraction expansion of sqrt(n).
     *  Example (from http://en.wikipedia.org/wiki/Pell%27s_equation)
     *  <blockquote>
     *  ... for n = 7 ... the fundamental solution is formed by the pair (8, 3).
     *  Applying the recurrence formula to this solution generates the infinite sequence of solutions
     *  (8, 3); (127, 48); (2024, 765); (32257, 12192); (514088, 194307); (8193151; 3096720); (130576328, 49353213); ..
     *  </blockquote>
     *  @param n integer for which the square root should be computed;
     *  @param maxSolutions desired number of solutions (partial fractions)
     *  @return array of partial fractions, where the denominator is the desired x, and the numerator is y;
     *  the sign of the partial fraction determines the sign of the constant 1
     *  on the right side of the Pell equation.
     */
    public BigRational[] solvePellEquation(BigInteger n, int maxSolutions) {
        BigRational[] result = new BigRational[maxSolutions];
        BigInteger constant1 = BigInteger.ONE;
        sqrtOf(n);
        if (this.size() <= 1) { // quadratic factor
            return new BigRational[]{ }; // no solutions
        }
        int numElem = this.size() * maxSolutions * 2;
        BigRational[] expansion = getRationalDsc(numElem);
        int ielem = 0;
        int isol  = 0;
        while (isol < maxSolutions && ielem < numElem) {
            BigRational partial = expansion[ielem];
            BigInteger y = expansion[ielem].getNum();
            BigInteger x = expansion[ielem].getDen();
            BigInteger value = x.multiply(x).multiply(n).subtract(y.multiply(y));
            if (value.abs().compareTo(constant1) == 0) {
                if (debug >= 2) {
                    System.out.println("SOLUTION: x = " + x.toString() + ", y = " + y.toString() + ", value = " + value.toString());
                }
                result[isol] = partial.multiply(value);
                isol ++;
            }
            ielem ++;
        } // while isol
        return result;
    } // solvePellEquation(n, maxSolutions)

    /** Returns a string representation of the continued fraction
     *  @return "a0; b1/a1, b2/a2, b3/a3 ...", where a0 is the integral part.
     */
    public String toString() {
        StringBuffer result = new StringBuffer(2048);
        int index = 0;
        while (index < this.size()) {
            BigRational brat = (BigRational) this.get(index);
            if (index == 0) {
                result.append(brat.getNum().toString());
                // getDen() = 1 is irrelevant for integral part
            } else {
                if (index == 1) {
                    result.append("; ");
                } else {
                    result.append(", ");
                }
                result.append(brat.getDen().toString());
                result.append('/');
                result.append(brat.getNum().toString());
            } // index != 0
            index ++;
        } // while
        return result.toString();
    } // toString

    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
/*
        4/pi = 1;2/7, 1*3/8, 3*5/8, 5*7/8 ...
    (2) pi/2 = 1;2/3, 1*3/4, 3*5/4, 5*7/4 ...; pi = 2;4/3, 1*3/4, ...
        4/pi = 1; 1^2/3, 2^2/5, 3^2/7, 4^2/9, ...
    (1) pi   = 3; 1^2/6, 3^2/6, 5^2/6, 7^2/6, ...

    String[] fileList = f.list(new FilenameFilter() {
        public boolean accept(File f, String s) { return s.endsWith(".java"); }
        });
*/
        BigDecimal e = new BigDecimal
                ( "2.718281828459045235360287471"
                + "35266249775724709369995957496696762772407"
                + "663035354759457138217852516642742746639193200305992181741360027482234"
                + "93348905414085151150263440892702877807403983408368897113419263142110356543"
                );
        BigDecimal sqrt114 = new BigDecimal("10."
                + "677078252031311210811523965595710626282287769"
                + "46058011397810604284900898365140801704064843595778374");
        BigDecimal gamma = new BigDecimal("0."
                + "5772156649015328606065120900824024310421593359399235988057672348"
                + "84867726777664670936947063291746749"
                );
        BigDecimal khintchine100 = new BigDecimal("2."
                + "685452001065306445309714835481795693820382293994462953051152345"
                + "55721885953715200280114117493184769799515"
                );
        BigDecimal khintchine1024 = new BigDecimal
                ( "2." // 1024 digits: Pflouffe, http://www.worldwideschool.org/library/books/sci/math/MiscellaneousMathematicalConstants/chap50.html
                + "685452001065306445309714835481795693820382293994462953051152345"
                + "5572188595371520028011411749318476979951534659052880900828976777"
                + "1641096305179253348325966838185231542133211949962603932852204481"
                + "9409618068664166428930847788062036073705350103367263357728904990"
                + "4270702723451702625237023545810686318501032374655803775026442524"
                + "8528694682341899491573066189872079941372355000579357366989339508"
                + "7902124464207528974145914769301844905060179349938522547040420337"
                + "7985639831015709022233910000220772509651332460444439191691460859"
                + "6823482128324622829271012690697418234847767545734898625420339266"
                + "2351862086778136650969658314699527183744805401219536666604964826"
                + "9890827548115254721177330319675947383719393578106059230401890711"
                + "3496246737068412217946810740608918276695667117166837405904739368"
                + "8095345048999704717639045134323237715103219651503824698888324870"
                + "353994696082647818120566349467125784366645797409778483662049777"  // ???
                + "7486827656970871631929385128993141995186116737926546205635059513"
                + "8571376169712687229980532767327871051376395637190231452890030581"
                );
        BigDecimal pi = new BigDecimal(("3."
                + "1415926535 8979323846 2643383279 5028841971 6939937510"
                + "5820974944 5923078164 0628620899 8628034825 3421170679"
                + "8214808651 3282306647 0938446095 5058223172 5359408128"
                + "4811174502 8410270193 8521105559 6446229489 5493038196"
                + "4428810975 6659334461 2847564823 3786783165 2712019091"
                + "4564856692 3460348610 4543266482 1339360726 0249141273"
                + "7245870066 0631558817 4881520920 9628292540 9171536436"
                + "7892590360 0113305305 4882046652 1384146951 9415116094"
                + "3305727036 5759591953 0921861173 8193261179 3105118548"
                + "0744623799 6274956735 1885752724 8912279381 8301194912"
                + "9833673362 4406566430 8602139494 6395224737 1907021798"
                + "6094370277 0539217176 2931767523 8467481846 7669405132"
                + "0005681271 4526356082 7785771342 7577896091 7363717872"
                + "1468440901 2249534301 4654958537 1050792279 6892589235"
                + "4201995611 2129021960 8640344181 5981362977 4771309960"
                + "5187072113 4999999837 2978049951 0597317328 1609631859"
                + "5024459455 3469083026 425"
                ).replaceAll(" ",""));
    /*
        Series ser = new Series();
        ser.setNatural();
        BigRational
        er = BigRational.valueOf(40902L, 24140L);
        er = BigRational.valueOf(khintchine100);
        er = ser.getRational();
        er = BigRational.valueOf(e);
        er = BigRational.valueOf(gamma);

        ContinuedFraction
        cre = new ContinuedFraction(er, ContinuedFraction.MODE_REGULAR    );
        System.out.println("regular     continued fraction: " + cre.toString());
        System.out.println(cre.getRational());
        cre = new ContinuedFraction(er, ContinuedFraction.MODE_CEILING    );
        System.out.println("ceiling     continued fraction: " + cre.toString());
        System.out.println(cre.getRational());
        cre = new ContinuedFraction(er, ContinuedFraction.MODE_ALTERNATE_0);
        System.out.println("alternate 0 continued fraction: " + cre.toString());
        System.out.println(cre.getRational());
        cre = new ContinuedFraction(er, ContinuedFraction.MODE_ALTERNATE_1);
        System.out.println("alternate 1 continued fraction: " + cre.toString());
        System.out.println(cre.getRational());
        cre = new ContinuedFraction(er, ContinuedFraction.MODE_NEAREST    );
        System.out.println("nearest     continued fraction: " + cre.toString());
        System.out.println(cre.getRational());
    */
        class PiElements1 implements BigRationalGenerator {
            public BigRational get(int index) {
                BigRational result = BigRational.valueOf(0);
                switch (index) {
                    case 0:
                        result.setNum(3);
                        result.setDen(1);
                        break;
                    case 1:
                    default:
                        result.setNum(6);
                        result.setDen(4 * index * index - 4 * index + 1);
                        break;
                } // switch index
                return result;
            } // get
        } // class PiElements1

        class PiElements2 implements BigRationalGenerator {
            public BigRational get(int index) {
                BigRational result = BigRational.valueOf(0);
                switch (index) {
                    case 0:
                        result.setNum(2);
                        result.setDen(1);
                        break;
                    case 1:
                        result.setNum(3);
                        result.setDen(4);
                        break;
                    default:
                        int term = 2 * index;
                        result.setNum(4);
                        result.setDen((term - 3) * (term - 1));
                        break;
                } // switch index
                return result;
            } // get
        } // class PiElements2

        ContinuedFraction cf = new ContinuedFraction();
        int iargs = 0;
        if (false) {
        } else if (args.length == 0) {
            System.out.println("e = "         + (new ContinuedFraction(e)).toString());
            System.out.println("sqrt(114) = " + (new ContinuedFraction(sqrt114)).toString());
            /* continued fractions */
            cf = new ContinuedFraction(BigRational.valueOf(77708491L,2640858L));
                // Christiaan Huygens (17xx): Saturn gear ratio; c.f. de.wikipedia.org/Kettenbruch
            System.out.println("Huygens\' 77708491/2640858 = " + cf.toString());
            System.out.println(cf.getRational().simplify() +  " = " + cf.getDecimal());
        } else if (args.length == 1) {
            String bdec = args[iargs ++];
            System.out.println((new ContinuedFraction(new BigDecimal(bdec))).toString());
        } else {
            String opt  = args[iargs ++];
            String expr = args[iargs ++];
            int max = 400;
            if (expr.equals("-f")) {
                String fileName = args[iargs ++];
                expr = (new ExpressionReader()).read(fileName);
            } else {
                try {
                    max = Integer.parseInt(expr);
                } catch (Exception exc) {
                }
            }
            if (false) {
            } else if (opt.equals("-cf")) {
                System.out.println((new ContinuedFraction(new BigDecimal(expr))).toString());
            } else if (opt.equals("-const")) {
                BigRational brat = new BigRational((new ExpressionReader()).read(expr));
                cf = new ContinuedFraction();
                cf.setDebuggingLevel(2);
                cf.set(brat);
                System.out.println(cf.toString());
                System.out.println(cf.getDecimal());
            } else if (opt.equals("-cube")) {
                cf = new ContinuedFraction();
                cf.setDebuggingLevel(2);
                int num = 2;
                while (num <= max) {
                    int num3 = num*num*num;
                    System.out.print("sqrt(" + num + "^3): ");
                    cf.sqrtOf(BigInteger.valueOf(num3));
                    num ++;
                } // while num 
            } else if (opt.equals("-e")) {
                cf = new ContinuedFraction(e);
                System.out.println(cf.toString());
                System.out.println(cf.getDecimal().toString());
            } else if (opt.equals("-eval")) {
                cf.set((new BFileReader()).read(expr));
                System.out.println(cf.toString());
                System.out.println(cf.getDecimal()); // .multiply(new BigDecimal(2)));
            } else if (opt.equals("-pell")) {
                // cf.setDebuggingLevel(2);
                System.out.println(Arrays.asList(cf.solvePellEquation(new BigInteger(expr), 4)).toString());
            } else if (opt.equals("-sqrt")) {
                cf.setDebuggingLevel(2);
                cf.sqrtOf(new BigInteger(expr));
                System.out.println(cf.toString());
                System.out.println(cf.getRational(32).getDecimal().toString());
            } else if (opt.equals("-gamma")) {
                System.out.println((new ContinuedFraction(gamma)).toString());
            } else if (opt.equals("-pi1")) {
                cf.set(new PiElements1(), max);
                System.out.println(cf.toString());
                System.out.println(cf.getDecimal ().toString());
            } else if (opt.equals("-pi2")) {
                cf.set(new PiElements2(), max);
                System.out.println(cf.toString());
                System.out.println(cf.getDecimal ().toString());
            } else {
                System.err.println("invalid option \"" + opt + "\"");
            }
        }
    } // main

} // ContinuedFraction
