/*  Solver: base class for solvers of Diophantine realtion sets, with bean properties
 *  @(#) $Id: Solver.java 970 2012-10-25 16:49:32Z gfis $
 *  2013-09-01: polish; Caution: must be UTF-8, äöüÄÖÜß ² ³
 *  2009-08-28, Georg Fischer: copied from BinarySolver.java
 *  References:
 *  http://www.wikihow.com/Solve-a-Linear-Diophantine-Equation
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
package org.teherba.ramath.symbolic;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.util.ExpressionReader;
import  java.io.PrintWriter;
import  java.math.BigInteger;
import  java.util.Vector; // essentially a java.util.Queue (Java 1.6)
import  java.util.regex.Matcher;
import  java.util.regex.Pattern;

/** Superclass for solvers for Diophantine relation sets, with bean properties
 *  and commandline arguments processing.
 *  The solver maintains a queue of derived {@link RelationSet}s which is
 *  used during an iterative search for solutions.
 *  @author Dr. Georg Fischer
 */
public class Solver {
    public final static String CVSID = "@(#) $Id: Solver.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = maximum verbosity */
    private int debug = 0;
    /** Queue for unresolved equation sets (could have been a stack, but we want to walk it width-first). */
    private   Vector<RelationSet> queue;
    /** index into queue for unresolved equation sets */
    protected int queueHead;

    /* ------------------ Construction ------------------- */

    /*  Writer for proof trace.
     *  The printer is still used in {@link MonadicSolver}, but
     *  modern solvers should normally not print any output except for debugging.
     *  @deprecated
     */
    protected PrintWriter trace;

    /** No-args Constructor - prints on {@link java.lang.System#out}f
     */
    public Solver() {
        this(new PrintWriter(System.out));
    } // no-args Constructor

    /** Constructor with writer
     *  @param writer where to write the proof trace
    */
    public Solver(PrintWriter writer) {
        this.trace = writer;
        initialize();
    } // Constructor(writer)

    /** Closes the solver, especially the result print writer.
     */
    public void close() {
        trace.close();
    } // close

    /** Initializes the optional parameters
     */
    protected void initialize() {
        setExpansionMode    (1);
        setFindMode         (FIND_IN_PREVIOUS);
        setMaxLevel         (4);
        setMaxQueue         (256);
        setModBase          (2); // for n-adic modulo expansion (here: binary)
        setSubsetting       (false);
        setUpperSubst       (true);
        queue = new Vector<RelationSet>(getMaxQueue(), getMaxQueue());
        queueHead = 0;
    } // initialize

    /** Adds a {@link RelationSet} to the queue
     *  @param rset equation set to be added
     */
    public void add(RelationSet rset) {
        queue.add(rset);
    } // add

    /** Gets a {@link RelationSet} from the queue
     *  @param index element position (0 based) in the queue
     */
    public RelationSet get(int index) {
        return queue.get(index);
    } // get

    /** Gets the {@link RelationSet} to be solved
     *  @return initial RelationSet to be solved
     */
    public RelationSet getStartSet() {
        return queue.get(0);
    } // getStartSet

    /** Returns the current size  of the queue
     *  @return number of elements in the queue
     */
    public int size() {
        return queue.size();
    } // size

    /* ------------------ Bean methods ------------------- */

    /** How to expand: 0 = no solutions, 1 (default) = non-trivial solutions, 2 = all  */
    private int expansionMode;
    /** Gets the modus of modulo expansion
     *  @return expansionMode : 0 = no solutions, 1 (default) = non-trivial solutions, 2 = all
     */
    public int getExpansionMode() {
        return expansionMode;
    } // getExpansionMode
    /** Sets the modus of modulo expansion
     *  @param expansionMode : 0 = no solutions, 1 (default) = non-trivial solutions, 2 = all
     */
    public void setExpansionMode(int expansionMode) {
        this.expansionMode = expansionMode;
    } // setExpansionMode

    /** How to search for a previous equivalent {@link RelationSet}:
     *  in all members queued so far (1),
     *  or in parents only (0)
     */
    private int findMode;
    protected static final int FIND_IN_PARENTS  = 1;
    protected static final int FIND_IN_PREVIOUS = 0;
    /** Gets the modus of equivalence searching
     *  @return whether to search in whole queue, or in parents only
     */
    public int getFindMode() {
        return findMode;
    } // getFindMode
    /** Sets the modus of equivalence searching
     *  @param findMode whether to search in whole queue, or in parents only
     */
    public void setFindMode(int findMode) {
        this.findMode = findMode;
    } // setFindMode

    /** Maximum number of elements in queue */
    private int maxQueue;
    /** Gets the maximum number of queue elements
     *  @return number of queue elements
     */
    public int getMaxQueue() {
        return maxQueue;
    } // getMaxQueue
    /** Sets the maximum number of queue elements
     *  @param maxQueue number of queue elements
     */
    public void setMaxQueue(int maxQueue) {
        this.maxQueue = maxQueue;
    } // setMaxQueue

    /** Maximum stack level */
    private int maxLevel;
    /** Gets the maximum level of nesting
     *  @return number of nested proof steps
     */
    public int getMaxLevel() {
        return this.maxLevel;
    } // getMaxLevel
    /** Sets the maximum level of nesting
     *  @param maxLevel number of nested proof steps
     */
    public void setMaxLevel(int maxLevel) {
        this.maxLevel = maxLevel;
    } // setMaxLevel

    /** Modulo base */
    private int modBase;
    /** Gets the modulo base n for n-adic expansion
     *  @return modBase = 2 or some other small (preferrably prime) number
     */
    public int getModBase() {
        return this.modBase;
    } // getModBase

    /** Sets the modulo base n for n-adic expansion
     *  @param modBase = 2 or some other small (preferrably prime) number
     */
    public void setModBase(int modBase) {
        this.modBase = modBase;
    } // setModBase

    /** Whether to substitute subsets of variables */
    private boolean subsetting;
    /** Gets the modus of variable subsetting
     *  @return subsetting whether to substitute subsets
     */
    public boolean getSubsetting() {
        return subsetting;
    } // getSubsetting
    /** Sets the modus of variable subsetting
     *  @param subsetting whether to substitute subsets
     */
    public void setSubsetting(boolean subsetting) {
        this.subsetting = subsetting;
    } // setSubsetting

    /** Whether to substitute uppercase variables */
    private boolean upperSubst;
    /** Gets the modus of variable replacement
     *  @return upperSubst whether to substitute uppercase variables
     */
    public boolean getUpperSubst() {
        return upperSubst;
    } // getUpperSubst
    /** Sets the modus of variable replacement
     *  @param upperSubst whether to substitute uppercase variables
     */
    public void setUpperSubst(boolean upperSubst) {
        this.upperSubst = upperSubst;
    } // setUpperSubst

    //==================
    // Utility methods
    //==================

    /** Try to separate a factor in the constants of a string representation of a {@link Polynomial}.
     *  @param raw raw formula string
     *  @return string with extracted factor, for example "4*4*x^2 + 16*4*y^2" for factor 4
     */
    protected static String toFactoredString(String raw, BigInteger factor) {
        Pattern pattern = Pattern.compile("\\d+");
        Matcher matcher = pattern.matcher("raw");
        StringBuffer result = new StringBuffer(256);
        while (matcher.find()) {
            BigInteger constant = new BigInteger(raw.substring(matcher.start(), matcher.end()));
            BigInteger[] divRest  = constant.divideAndRemainder(factor);
            matcher.appendReplacement(result, divRest[1].equals(BigInteger.ZERO)
                    ? factor.toString() + "*" + divRest[0].toString()
                    : constant.toString()
                    );
        } // while find
        matcher.appendTail(result);
        return result.toString();
    } // toFactoredString

    /** Polish the string representation of a {@link Polynomial}.
     *  @param raw raw formula string
     *  @return polished formula
     */
    protected static String polish(RelationSet rset, BigInteger factor) {
        return rset.toFactoredString(factor)
           //   .replaceAll("_\\d+", "")
                .replaceAll("[_ ]", "") // maybe "*" also
           //   .replaceAll("\\^2", "²")
           //   .replaceAll("\\^3", "³")
                ;
    } // polish

    /** Sets the properties from commandline options, and returns the first
     *  non-option string expression, or the contents of a filename argument.
     *  @param iargs index of first commandline argument to be processed
     *  @param args array of commandline arguments: options, filenames, expressions.
     *  The following options are processed:
     *  <ul>
     *  <li>-b modulo base (default 2)</li>
     *  <li>-e equation set (enclosed in quotes)</li>
     *  <li>-f filename (for a file containing the polynomial)</li>
     *  <li>-l maximum nesting level (default 4)</li>
     *  <li>-m maximum size of queue (default 256)</li>
     *  <li>-q find mode (default 0)</li>
     *  <li>-u do not substitute uppercase variables (default: all variables)</li>
     *  <li>-x expansion mode (default 1)</li>
     *  </ul>
     *  @return content of file option or explicit expression string
     */
    public String getArguments(int iargs, String[] args) {
        String result = null;
        boolean busy = true; // while processing options
        while (busy && iargs < args.length) {
            String arg = args[iargs ++];
            if (arg.startsWith("-")) { // option
                if (false) {
                } else if (arg.startsWith("-b") && iargs < args.length) {
                    try {
                        setModBase(Integer.parseInt(args[iargs ++]));
                    } catch (Exception exc) {
                    }
                } else if (arg.startsWith("-e") && iargs < args.length) {
                    result = args[iargs ++];
                } else if (arg.startsWith("-f") && iargs < args.length) {
                    result = (new ExpressionReader()).read(args[iargs ++]);
                } else if (arg.startsWith("-l") && iargs < args.length) {
                    try {
                        setMaxLevel(Integer.parseInt(args[iargs ++]));
                    } catch (Exception exc) {
                    }
                } else if (arg.startsWith("-m") && iargs < args.length) {
                    try {
                        setMaxQueue(Integer.parseInt(args[iargs ++]));
                    } catch (Exception exc) {
                    }
                } else if (arg.startsWith("-q")                       ) {
                    setFindMode(1);
                } else if (arg.startsWith("-u")                       ) {
                    setUpperSubst(false);
                } else if (arg.startsWith("-x") && iargs < args.length) {
                    try {
                        setExpansionMode(Integer.parseInt(args[iargs ++]));
                    } catch (Exception exc) {
                    }
                } else {
                    System.err.println("Solver: invalid option \"" + arg + "\"");
                }
            } else { // first non-option string - stop loop
                result = arg;
                busy = false;
            }
        } // while iargs
        if (getSubsetting()) {
            setModBase(getModBase() + 1); // 2 (for 2-adic) suppresses the substitution
        }
        return result;
    } // getArguments

    /* ------------------ Iteration ------------------- */

    /** Try to find a similiar RelationSet in the solver's history,
     *  either in the parents or in all queue elements (depending on the findMode)
     *  @param rset2 RelationSet to be looked up
     *  @return index of similiar element in queue, or "[-1]" if none was found
     */
    protected String findSimiliar(RelationSet rset2) {
        int isimil = -1; // assume not found
        int iqueue = size() - 1;
        String message = null;
        return "[" + String.valueOf(isimil) + "], " + message;
    } // findSimiliar

    /** Expands one {@link RelationSet} in the queue,
     *  evaluates the expanded children,
     *  and requeues all children with status UNKNOWN or SUCCESS.
     *  @param queueIndex position in the queue of the element ({@link RelationSet}) to be expanded, >= 0
     */
    protected void expand(int queueIndex) {
    } // expand

    /** Refines and evaluates modulus properties for variables in a {@link RelationSet}.
     *  The maximum queue size breaks the expansion loop in any case.
     *  @return whether the iteration did stop because the queue was exhausted
     */
    public boolean solve(RelationSet rset) {
        boolean exhausted = false;
        queueHead = 0;
        if (rset.getTuple() == null) { // MonadicSolver
            rset.setTuple(rset.getVariableMap("0", getUpperSubst())); // tuple is initially (0,0, ... 0)
        }
        add(rset);
        boolean busy = true;
        while (busy) {
            if (queueHead >= size()) { // queue exhausted
                busy = false;
                exhausted = true;
            } else {
                RelationSet rset1 = this.get(queueHead);
                if (rset1.getNestingLevel() > getMaxLevel()) { // nesting too deep - give up
                    busy   = false;
                } else { // still expanding
                    expand(queueHead ++);
                }
            }
        } // while busy
        if (exhausted) {
            trace.println("Proof: queue exhausted");
        } else {
        }
        close();
        return exhausted;
    } // solve

    //==============
    // Test driver
    //==============

    /** Test method.
     *  @param args command line arguments, see {@link Solver#getArguments}.
     *  <ul>
     *  <li>-b modulo base (default 2)</li>
     *  <li>-e equation set (enclosed in quotes)</li>
     *  <li>-f fileName (for a file containing the polynomial)</li>
     *  <li>-l maximum nesting level (default 4)</li>
     *  <li>-m maximum size of queue (default 256)</li>
     *  <li>-s substitute subsets of variables (default: all variables)</li>
     *  <li>-u do not substitute uppercase variables (default: all variables)</li>
     *  </ul>
     */
    public static void main(String[] args) {
        Solver solver = new Solver();
        String expr = solver.getArguments(0, args);
    } // main

} // Solver
