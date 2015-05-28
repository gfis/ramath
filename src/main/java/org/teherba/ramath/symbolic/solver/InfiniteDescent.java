/*  InfiniteDescent: prover for Diophantine equations
 *  @(#) $Id: InfiniteDescent.java 532 2010-08-28 17:15:36Z gfis $
 *  2009-07-12, Georg Fischer: copied from Polynomial
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
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.util.ModoMeter;
import  java.io.PrintWriter;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.Stack; // essentially a Queue
import  java.util.Vector; // essentially a Queue
import  java.util.TreeMap;

/** Solve Diophantine equations by the infinite descent proof procedure.
 *  <p>c.f. http://en.wikipedia.org/wiki/InfiniteDescent.
 *  A Diophantine equation is represented by a {@link Polynomial} which should evaluate to zero.
 *  The procedure tries systematic substitutions of all variables in the polynomial
 *  with modulo replacements by the aid of a {@link ModoMeter}.
 *  The resulting polynomials are developped in a tree, and are checked for several cases:
 *  <ol>
 *  <li>There remains a constant that is not divisible by the gcd &gt; 1 of all variables - impossible, prune.</li>
 *  <li>The resulting polynomial is equivalent to some intermediate polynomial - contradiction by infinite descent, stop.</li>
 *  <li>None of the above - unsure.</li>
 *  </ol>
 *  @author Dr. Georg Fischer
 */
public class InfiniteDescent {
    public final static String CVSID = "@(#) $Id: InfiniteDescent.java 532 2010-08-28 17:15:36Z gfis $";

    /** Debugging switch */
    private int debug = 0;

    /** Whether to evaluate subsets of the {@link Polynomial}'s variables */
    private boolean subsetting = false;

    /*  Writer for proof trace */
    private PrintWriter out;

    /** System dependant line separator, 0x0a (Unix) or 0x0d0a (Windows) */
    private String newline;

    /** many spaces for indenting */
    private static final String SPACES = "                                                                                      ";

    /** Queue for unresolved proof states -
     *  could have been a stack, but we want to walk it width first.
     */
    private Vector<ProofStep> queue;

    /** Stack for unresolved proof states -
     */
    private Stack<ProofStep> descent;

    /** Maximum base to be tested with all modulo increments */
    private int maxBase;
    /** Maximum stack level */
    private int maxLevel;

    /** No-args Constructor - prints on {@link java.lang.System#out}
     */
    public InfiniteDescent() {
        this(new PrintWriter(System.out));
    } // no-args Constructor

    /** Constructor with writer
     *  @param printer where to write the proof trace
     */
    public InfiniteDescent(PrintWriter printer) {
        queue   = new Vector<ProofStep>(16, 16);
        descent = new Stack <ProofStep>();
        out = printer;
        newline = System.getProperty("line.separator");
        maxBase  = 4;
        maxLevel = 2;
    } // Constructor(printer)

    /** Returns the indenting space corresponding to the current stack level
     *  @return a multiple of 2 spaces
     */
    private String indenting() {
        return SPACES.substring(0, 2 * (descent.size() - 1));
    } // indenting

    /** Sets the maximum modulo base
     *  @param maxBase a small integer &gt;= 2, for example 5 or 7
     */
    public void setMaxBase(int maxBase) {
        this.maxBase = maxBase;
    } // setMaxLevel

    /** Sets the maximum level of nesting
     *  @param maxLevel number of nested proof steps
     */
    public void setMaxLevel(int maxLevel) {
        this.maxLevel = maxLevel;
    } // setMaxLevel

    /** Returns a subset of a sorted map
     *  @param varMap sorted map of variables to expressions
     *  @param bits indicates whether the corresponding variable should be selected
     *  @return new sorted map with selected variables
     */
    private TreeMap<String, String> selectSubset(TreeMap<String, String> varMap, int[] bits) {
        TreeMap<String, String> resultMap = new  TreeMap<String, String>();
        Iterator<String> viter = varMap.keySet().iterator();
        int bitNo = 0;
        while (viter.hasNext()) {
            String varName = viter.next();
            if (bits[bitNo] > 0) {
                resultMap.put(varName, "");
            }
            bitNo ++;
        } // while viter
        return resultMap;
    } // selectSubset

    /** Tries to prove the (polynomial) equation over a sequence of modulo bases,
     *  and with all possible subsets of variable in one base.
     *  @param proofStep polynomial which is to be proved
     */
    public boolean prove(ProofStep proofStep) {
        boolean proved = false;
        StringBuffer replacements = new StringBuffer(128);
        proofStep.normalize();
        descent.push(proofStep);
        TreeMap<String, String> varMap = proofStep.getVariableMap();
        int varNo = varMap.size(); // total number of variables
        if (debug > 0) {
            out.println(proofStep);
            out.println(varMap);
        }
        int base = 2; // start with investigation of this modulo base
        boolean busy = true;
        while (busy && base <= maxBase && ! proved) {
            ModoMeter selectMeter = new ModoMeter(varNo); // bit 1 (0) = variable should (not) be selected
            if (subsetting) {
                selectMeter.next(); // do not select for (0,0, ... 0) = empty variable set
            }
            while (! proved && selectMeter.hasNext()) {
                if (debug > 0) {
                    out.println(selectMeter);
                }
                TreeMap<String, String> subsetMap = selectSubset(varMap, subsetting
                        ? selectMeter.next()
                        : selectMeter.last());
                proved = proved || testSimpleSolution(proofStep, 1, subsetMap)
                                || testSimpleSolution(proofStep, 2, subsetMap)
                        //      || testSimpleSolution(proofStep, 0, subsetMap) && descent.size() > 1
                                ;
                if (! proved) {
                    proved = proved || proveSubset(proofStep, base, varNo, subsetMap);
                } else {
                    out.println(indenting() + "SOLUTION!");
                }
                if (proved) {
                    out.println(indenting() + (descent.size() > 1 ? "partial " : "complete ") + "PROOF!");
                }
            } // while selectMeter
            out.println();
            base ++;
        } // while base <= max
        descent.pop();
        if (descent.size() == 0) {
            out.close();
        }
        return proved;
    } // prove

    /** Produces a string representation of the solution trace
     *  for one modulo base and one subset of variables.
     *  @param proofStep polynomial which is to be proved, and proof state
     *  @param varNo total number of variables in that polynomial
     *  @param subsetMap map with subset of variables which were selected
     *  @return whether all replacements led to a definitive decision
     */
    public boolean proveSubset(ProofStep proofStep, int base, int varNo, TreeMap<String, String> subsetMap) {
        boolean result = true;
        StringBuffer replacements = new StringBuffer(128);
        StringBuffer message      = new StringBuffer(256);
        int subsetNo = subsetMap.size();
        ModoMeter meter = new ModoMeter(subsetNo, base);
        int level = 1;
        while (meter.hasNext()) {
            boolean zeroes = meter.isZeroes();
            String tuple = meter.toString();
            int [] mods = meter.next();
            int imod = 0;
            replacements.setLength(0);
            message.setLength(0);
            message.append(indenting());
            message.append(String.valueOf(base));
            Iterator<String> siter = subsetMap.keySet().iterator();
            while (siter.hasNext()) { // over all variables in the subset
                String varName  = siter.next();
                int underPos = varName.indexOf('_'); // >= 0, or -1 if not found
                if (underPos <= 0) {
                    underPos = varName.length();
                }
                StringBuffer expr = new StringBuffer(32);
                expr.append('(');
                expr.append(String.valueOf(base));
                expr.append('*');
                expr.append(varName.substring(0, underPos));
                expr.append('_');
                expr.append(String.valueOf(descent.size()));
                expr.append('+');
                expr.append(String.valueOf(mods[imod]));
                expr.append(')');
                subsetMap.put(varName, expr.toString());
                message.append(';');
                message.append(varName);
                replacements.append(varName);
                replacements.append("=");
                replacements.append(expr);
                replacements.append("; ");
                imod ++;
            } // while siter
            message.append("; ");
            // message.append(replacements);
            message.append(tuple);
            message.append("; ");
            Polynomial poly2 = proofStep.substitute(subsetMap);
            boolean success = true;
            if (varNo == subsetNo && zeroes && ! poly2.hasConstant()) { // all variables have a common factor - not primitive
                success = evalEquation(message, 1, new ProofStep(poly2.normalize()));
            } else {
                success = evalEquation(message, 0, new ProofStep(poly2.normalize()));
            }
            result = result && success;
        } // while hasNext
        return result;
    } // proveSubset

    /** Replaces all variables with a small integer (0 or 1),
     *  and checks whether the result is zero.
     *  @param proofStep polynomial which is to be proved, and proof state
     *  @param repl replace all variables by this number
     *  @param subsetMap map with subset of variables which were selected
     *  @return whether the result is 0
     */
    public boolean testSimpleSolution(ProofStep proofStep, int repl, TreeMap<String, String> subsetMap) {
        Iterator<String> siter = subsetMap.keySet().iterator();
        while (siter.hasNext()) { // over all variables in the subset
            String varName  = siter.next();
            subsetMap.put(varName, String.valueOf(repl));
        } // while siter
        Polynomial poly2 = proofStep.substitute(subsetMap);
        boolean result = poly2.isZero();
        return result;
    } // testSimpleSolution

    /** Searches through all stack elements for an equivalent polynomial
     *  @param poly polynomial to be searched for
     *  @return index (stack level &gt;= 0) of the equivalent polynomial if one was found, or -1 otherwise
     */
    protected int findEquivalent(ProofStep poly) {
        int result = descent.size() - 1;
        boolean busy = true;
        while (busy && result >= 0) {
            if (poly.isEquivalent(descent.get(result))) {
                busy = false;
            } else {
                result --;
            }
        } // while searching
        return result;
    } // findEquivalent

    /** Evaluates a diophantine equation, and tells whether it has definitely no solution
     *  @param message line of text with proof trace
     *  @param decision result of the evaluation if it is known previously, or 0
     *  @param poly polynomial to be evaluated
     *  @return whether the equation was (negatively) decided
     */
    private boolean evalEquation(StringBuffer message, int decision, ProofStep poly) {
        boolean success = true; // assume definitive result
        BigInteger constant = poly.getConstant();
        BigInteger  varGCD   = poly.gcdVariables();
        switch (decision) {
            default:
            case 0:
                if (false) {
                } else if (constant.equals(BigInteger.ZERO)) {
                    message.append("variables only?");
                    success = false;
                } else if (varGCD.equals(BigInteger.ONE)) {
                    message.append("no varGCD?");
                    success = false;
                } else if (varGCD.gcd(constant.abs()).equals(BigInteger.ONE)) {
                    message.append("varGCD=");
                    message.append(varGCD.toString());
                    message.append(" ");
                    message.append("no mod constant!");
                } else {
                    message.append("possible?");
                    success = false;
                }
                break;
            case 1:
                message.append("var. set not primitive!");
                break;
        } // switch decision

        if (! success) {
            int level = findEquivalent(poly);
            if (level >= 0) {
                message.append(" INFINITE DESCENT: " + descent.size()
                        + " -> " + level + " <---------- "
                        + descent.get(level) + " <equiv> ");
                success = true;
            }
        } // ! success

        message.append(" ");
        message.append(poly.toString());
        if (! success && descent.size() >= maxLevel) {
            message.append(" overflow!");
            // success = true;
        }
        out.println(message.toString());

        if (! success && descent.size() < maxLevel) {
            success = prove(new ProofStep(poly));
        }
        return success;
    } // evaluateEquation

    /** Test method.
     *  @param args command line arguments
     *  <pre>
     *  [polynomial [maxBase [maxLevel]]]
     *  </pre>
     */
    public static void main(String[] args) {
        InfiniteDescent desc = new InfiniteDescent();
        Polynomial      poly = new Polynomial();
        int maxBase  = 4;
        int maxLevel = 4;
        if (args.length == 0) {
            poly = poly.parse("a^2+b^2-3*(c^2+d^2)");
        } else { // with arguments
            StringBuffer input = new StringBuffer(256);
            int iargs = 0;
            input.append(args[iargs ++]);
            poly = poly.parse(input.toString());
            if (iargs < args.length) {
                try {
                    maxBase = Integer.parseInt(args[iargs ++]);
                } catch (Exception exc) {
                }
                desc.setMaxBase(maxBase);
                if (iargs < args.length) {
                    try {
                        maxLevel = Integer.parseInt(args[iargs ++]);
                    } catch (Exception exc) {
                    }
                    desc.setMaxLevel(maxLevel);
                } // 2nd optional argument
            } // 1st optional argument
        } // with args
        desc.prove(new ProofStep(poly));
    } // main

} // InfiniteDescent
