/*  Solver: base class for solvers of Diophantine relation sets, with bean properties
 *  @(#) $Id: BaseSolver.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-07-23: printSolutions
 *  2015-07-09: feature igtriv
 *  2015-05-28: subdirectory solver, renamed from Solver.java
 *  2015-02-21: extends Vector<RelationSet>
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
package org.teherba.ramath.symbolic.solver;
import  org.teherba.ramath.symbolic.reason.ReasonFactory;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.ExpressionReader;
import  org.teherba.ramath.util.ModoMeter;
import  java.io.PrintWriter;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.Stack; // was java.util.Vector;  essentially a java.util.Queue (Java 1.6)
import  java.util.regex.Matcher;
import  java.util.regex.Pattern;

/** Superclass for solvers for Diophantine {@link RelationSet}s,
 *  with bean properties and commandline arguments processing.
 *  The solvers maintain a queue (resp. flattened tree) of unresolved,
 *  derived {@link RelationSet}s which is used during an iterative search for solutions.
 *  The queue could have been a stack, but we want to walk the tree width-first.
 *  @author Dr. Georg Fischer
 */
public class BaseSolver extends Stack<RelationSet> {
    public final static String CVSID = "@(#) $Id: Solver.java 970 2012-10-25 16:49:32Z gfis $";
    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = maximum verbosity */
    public int debug = 1;

    /** index into queue for unresolved {@link RelationSet}s */
    public int queueHead;

    /** level of queue element which was previously expanded */
    protected int prevLevel;

    /** Writer for proof trace */
    public PrintWriter trace;

    /** Factory for reasons to truncate the expansion tree */
    protected ReasonFactory reasons;

    //--------------
    //  Features which can be set from outside
    //--------------
    /** Whether to ignore trivial solutions */
    public boolean igtriv;
    /** Whether to involve all variables in the expansion */
    public boolean invall;
    /** Whether to normalize expanded {@link RelationSet}s */
    public boolean norm;

    //--------------
    // Construction
    //--------------

    /** No-args Constructor - prints on {@link java.lang.System#out}f
     */
    public BaseSolver() {
        this(new PrintWriter(System.out));
    } // no-args Constructor

    /** Constructor with writer
     *  @param writer where to write the proof trace
    */
    public BaseSolver(PrintWriter writer) {
        super(); // 256, 256); // increase capacity in bigger chunks
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
        setFindMode         (FIND_IN_PREVIOUS);
        setMaxLevel         (4);
        setModBase          (2); // for n-adic modulo expansion (here: binary)
        setSubsetting       (false);
        setUpperSubst       (true);
        queueHead           = 0;
        reasons = new ReasonFactory("transpose,similiar");
    } // initialize

    //-----------------------------
    // Bean properties and methods
    //-----------------------------

    /** How to search for a previous equivalent {@link RelationSet}:
     *  in all members queued so far (1),
     *  or in parents only (0)
     */
    private int findMode;
    public static final int FIND_IN_PARENTS  = 1;
    public static final int FIND_IN_PREVIOUS = 0;
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

    /** Maximum nesting (tree height) level */
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
     *  @return whether to substitute subsets
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

    /** Variable name equivalence classes  */
    private Vector vtransp;
    /** Gets the vtransp
     *  @return a Vector of variable name equivalence classes
     */
    public Vector getTransposables() {
        return this.vtransp;
    } // getTransposables
    /** Sets the transposables
     *  @param vtransp a Vector of variable name equivalence classes
     */
    public void   setTransposables(Vector vtransp) {
        this.vtransp = vtransp;
    } // setTransposables
    
    /** Gets a readable list of transposable variables
     *  @param rset1 {@link RelationSet} with variable names
     *  @return a set of sets of variables in equivalence classes, for example for
     *  a^2+b^2-c^2 the result is "{{a,b},{c}}"
     */
    public String getTransposableString(RelationSet rset1) {
        StringBuffer result = new StringBuffer(16);
        String [] names = rset1.getVariableMap().getNameArray();
        int tclass = 0; // one of the transposable classes in 'vtransp'
        int len = vtransp.size();
        String sep = "";
        boolean first = true;
        result.append("{");
        while (tclass < len) {
            int itran = 0;
            while (itran < len) {
                if (vtransp.get(itran) == tclass) {
                    if (sep.equals("")) { // start for class 'tclass'
                        result.append(first ? "{" : ",{");
                    }
                    first = false;
                    result.append(sep);
                    sep = ",";
                    result.append(names[itran]);
                }
                itran ++;
            } // while itran
            if (! sep.equals("")) { // end for class 'tclass'
                result.append("}");
            }
            sep = "";
            tclass ++;
        } // while tclass
        result.append("}");
        return result.toString();
    } // getTransposableString

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

    /** Gets the print writer for traces
     *  @return print writer
     */
    public PrintWriter getWriter() {
        return trace;
    } // getWriter

    //------------------------
    // Commandline processing
    //------------------------
    /** Sets the properties from commandline options, and returns the first
     *  non-option string expression, or the contents of a filename argument.
     *  @param iargs index of first commandline argument to be processed
     *  @param args array of commandline arguments: options, filenames, expressions.
     *  The following options are processed:
     *  <ul>
     *  <li>-b modulo base (default 2)</li>
     *  <li>-d debug level: 0 = none, 1 = some, 2 = more, 3 = extreme verbosity</li>
     *  <li>-e equation set (enclosed in quotes)</li>
     *  <li>-f filename (for a file containing the polynomial)</li>
     *  <li>-l maximum nesting level (default 4)</li>
     *  <li>-m maximum size of queue (default 256)</li>
     *  <li>-r list of reason codes separated by commas</li>
     *  <li>-q find mode (default 0)</li>
     *  <li>-u do not substitute uppercase variables (default: all variables)</li>
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
                } else if (arg.startsWith("-d") && iargs < args.length) {
                    try {
                        debug = (Integer.parseInt(args[iargs ++]));
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
                } else if (arg.startsWith("-r") && iargs < args.length) { 
                    reasons = new ReasonFactory(args[iargs ++]); // ignore default reason list
                } else if (arg.startsWith("-q")                       ) {
                    setFindMode(1);
                } else if (arg.startsWith("-u")                       ) {
                    setUpperSubst(false);
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

    //-----------------
    // Utility methods
    //-----------------

    /** Polish the string representation of a {@link RelationSet}.
     *  @param rset polish this RelationSet
     *  @param factor extract this common factor, if possible
     *  @return polished formula
     */
    protected String polish(RelationSet rset, BigInteger factor) {
        return rset.toString()
           //   .replaceAll("_\\d+", "")
                .replaceAll("[_ ]", "") // maybe "*" also
           //   .replaceAll("\\^2", "²")
           //   .replaceAll("\\^3", "³")
                ;
    } // polish(2)

    /** Polish the string representation of a {@link RelationSet}.
     *  @param rset polish this RelationSet
     *  @return polished formula
     */
    public String polish(RelationSet rset) {
        return polish(rset, BigInteger.ONE);
    } // polish(1)

    //-----------------------------------------------
    // Pseudo-abstract methods common to all Solvers
    //-----------------------------------------------

    /** Gets the initial {@link RelationSet} to be solved
     *  @return root element of the queue of RelationSets
     */
    protected RelationSet getRootNode() {
        return this.get(0);
    } // getRootNode

    /** Sets root element of the queue of RelationSets
     *  @param rset0 the initial {@link RelationSet} to be solved
     */
    protected void setRootNode(RelationSet rset0) {
        Vector tpcs = rset0.getTransposableClasses();
        setTransposables(tpcs);
        if (tpcs.isMonotone()) { // no variable names can be transposed
            reasons.purge("transposable"); // TransposeReason is not checked if there are no transposable variables
        } // isMonotone
        if (rset0.getTuple() == null) {
            rset0.setTuple(rset0.getExpressionMap(), getTransposables());
        }
        ModoMeter meter = new ModoMeter(rset0.getTuple().size(), 1); // assume that all variables are not involved
        add(rset0);
    } // setRootNode

    /** Prints the header message
     *  @param rset0 initial {@link RelationSet}
     */
    protected void printHeader(RelationSet rset0) {
        if (debug >= 1) {
            trace.print("Expanding for base=" + getModBase());
            trace.print(", transposables="    + getTransposableString(rset0));
            trace.print(", reasons+features=" + reasons.toList());
            trace.println();
        } // debug
    } // printHeader

    /** Prints the message for a node to be expanded
     *  @param queueIndex expand this queue element
     *  @param rset1 {@link RelationSet} at position <em>queueIndex</em>
     *  @param meter which {@link ModoMeter} will be used for the expansion
     *  @param factor the common shift for all variables (if any)
     */
    protected void printNode(int queueIndex, RelationSet rset1, ModoMeter meter, BigInteger factor) {
        if (debug >= 1) {
            trace.println("expanding queue[" + queueIndex + "]^" 
                    + rset1.getParentIndex()
                    + ": " + rset1.toString()
                    + " meter=" + meter.toBaseList()
                    + " *" + factor.toString()
                    );
        }
    } // printNode

    /** Prints the separator between different nesting levels
     *  @param level current level from next queue element
     */
    protected void printSeparator(int level) {
        if (debug >= 1) {
            if (prevLevel < level) {
                prevLevel = level;
                trace.println("----------------"); // 16 x "-"
            }
        } // debug
    } // printSeparator

    /** Prints solutions, if there are any.
     *  Solutions are obtained by replacing the variables by 0 (not implemented: "or by 1").
     *  @param rset1 {@link RelationSet} to be examined
     *  @param vmap1 {@link VariableMap} of <em>rset1</em>
     */
    protected void printSolutions(RelationSet rset1, VariableMap vmap1) {
        if (debug >= 0) {
            boolean first = false;
            VariableMap vmap2 = vmap1 != null ? vmap1.clone() : new VariableMap();
            ModoMeter meter = new ModoMeter(vmap2.size(), 2); // run {0,1} through all variables
            boolean busy = true;
            while (busy && meter.hasNext()) {
                vmap2.setValues(meter);
                RelationSet rset2 = rset1.substitute(vmap2);
                String decision = rset2.evaluate(vmap2);
                if (decision.startsWith(VariableMap.SUCCESS + " =0")) {
                    decision = vmap1.getMeteredValues(meter).describe();
                    if (! igtriv || ! (decision.indexOf("trivial") >= 0)) {
                        if (! first) {
                            trace.print("solution");
                            first = true;
                        }
                        trace.print(" " + decision);
                    }
                } // SUCCESS =0
                meter.next();
                busy = false; // evaluate only once for [0,0,...]
            } // while meter
            if (first) {
                trace.println();
            }
        } // debug
    } // printSolutions

    /** Prints the trailer message
     *  @param exhausted whether a proof was reached and the queue was exhausted
     */
    protected void printTrailer(boolean exhausted) {
        if (debug >= 1) {
            if (exhausted) {
                trace.print("Proof - queue exhausted");
            } else {
                trace.print("Maximum level " + getMaxLevel() + " reached");
            }
            trace.println(", queue size = " + size());
        } // debug
    } // printTrailer

    /** Prepares and returns a {@link ModoMeter} from the set of variables.
     *  Only the necessary variables are involved.
     *  Variables having at least a coefficient of <em>factor*base</em>
     *  are not involved in the modular expansion.
     *  If this feature is not desired, the ModoMeter should be initialized with base.
     *  @param rset1 {@link RelationSet} to be expanded
     *  @param vmap1 {@link VariableMap} containing the variable names
     *  @param factor <em>base^newLevel</em>
     *  @return an appropriate {@link ModoMeter}
     */
    protected ModoMeter getPreparedMeter(RelationSet rset1, VariableMap vmap1, BigInteger factor) {
        int base          = this.getModBase();
        int varNo         = vmap1.size(); // total number of variables to be substituted
        ModoMeter meter   = new ModoMeter(varNo, 1); // assume that all variables are not involved
        BigInteger other  = norm ? BigInteger.valueOf(base) : BigInteger.valueOf(base).multiply(factor);
        VariableMap vmapr = rset1.getRest(other).getExpressionMap(); 
        Iterator<String> iter1 = vmap1.keySet().iterator();
        int involvedCount = 0;
        int im = 0;
        while (iter1.hasNext()) {
            String name = iter1.next();
            if (vmapr.get(name) != null) { // name occurs in rest: this will be involved
                meter.setBase(im, base); // involve it
                involvedCount ++;
            } // name in rest
            im ++;
        } // while iter1
        if (invall || involvedCount <= 0) { // vmapr was empty
            meter = new ModoMeter(varNo, base); // involve all variables / avoid modulo [1,1,1,...]
        } // vmapr empty
        return meter;        
    } // getPreparedMeter

    /** Expands one {@link RelationSet} in the queue,
     *  evaluates the expanded children,
     *  and requeues all children with status UNKNOWN or SUCCESS.
     *  @param queueIndex position in the queue of the element ({@link RelationSet}) to be expanded, >= 0
     */
    protected void expand(int queueIndex) {
    } // expand

    /** Refines and evaluates modulus properties for variables in a {@link RelationSet}.
     *  The maximum queue size breaks the expansion loop in any case.
     *  @param rset0 start expansion with this {@link RelationSet}.
     *  @return whether the iteration did stop because the queue was exhausted
     */
    public boolean solve(RelationSet rset0) {
        // determine all features
        igtriv = reasons.hasFeature("igtriv");
        invall = reasons.hasFeature("invall");
        norm   = reasons.hasFeature("norm"  );

        prevLevel = -1;
        setRootNode(rset0);
        printHeader(rset0);
        boolean exhausted = false;
        boolean busy = true;
        while (busy) {
            if (queueHead >= size()) { // queue exhausted
                busy = false;
                exhausted = true;
            } else {
                RelationSet rset1 = this.get(queueHead);
                int curLevel = rset1.getNestingLevel();
                if (curLevel > getMaxLevel()) { // nesting too deep - give up
                    busy   = false;
                } else { // still expanding
                    printSeparator(curLevel);
                    expand(queueHead);
                    queueHead ++;
                }
            }
        } // while busy
        printTrailer(exhausted);
        close();
        return exhausted;
    } // solve

    //-------------
    // Test driver
    //-------------

    /** Test method.
     *  @param args command line arguments, see {@link #getArguments}.
     */
    public static void main(String[] args) {
        BaseSolver solver = new BaseSolver();
        String expr = solver.getArguments(0, args);
    } // main

} // BaseSolver
