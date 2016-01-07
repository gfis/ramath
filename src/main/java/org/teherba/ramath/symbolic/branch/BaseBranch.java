/*  BaseBranch: base class for classes which branch from a node during the tree expansion
 *  @(#) $Id: BaseBranch.java 970 2012-10-25 16:49:32Z gfis $
 *  2016-01-06, Georg Fischer: copied from BaseReason.java
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
package org.teherba.ramath.symbolic.branch;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.reason.ReasonFactory;
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.util.Dispenser;
import  org.teherba.ramath.util.ModoMeter;
import  java.math.BigInteger;
import  org.apache.log4j.Logger;

/** For a node which cannot be decided, a branch class determines and queues one or
 *  more following node(s) which subsequently need(s) to be investigated.
 *  There may be several optional branching strategies which are all tried in sequence,
 *  and the first applicable branch stops this sequence, but
 *  the last branch, which does a symmetrical modular expansion,
 *  is always applicable.
 +  <p>
 *  BaseBranch is the base class from which all other branchs inherit.
 *  It is the last, always applicable strategy mentioned above.
 *  @author Dr. Georg Fischer
 */
public class BaseBranch {
    public final static String CVSID = "@(#) $Id: BaseBranch.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity.
     *  <em>debug</em> is 0 when branchs are called from the ReasonFactory.
     *  For the stand-alone tests with {@link BaseBranch#main},
     *  <em>debug</em> defaults to 1 and may be set by option <em>-d</em>.
     *  <em>debug</em> is inherited by all branch subclasses.
     */
    protected static int debug = 0;

    //--------------
    // Construction
    //--------------

    /** No-args Constructor
     */
    public BaseBranch() {
        setDebug(0); // when called from ReasonFactory
    } // no-args Constructor

    /** Initializes any data structures for <em>this</em> branch.
     *  This method is called by {@link ReasonFactory};
     *  it may be  used to gather and store data which are
     *  needed for the specific check.
     *  Pseudo-abstract.
     *  @param solver the {@link BaseSolver solver} which uses <em>this</em> branch for iteration control
     *  during tree expansion
     *  @param startNode the root node of the expansion (sub-)tree
     */
    public void initialize(BaseSolver solver, RelationSet startNode) {
        setSolver(solver);
    } // initialize

    //----------------
    /** Sets the debugging switch
     *  @param deb 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity.
     */
    public void setDebug(int deb) {
        debug = deb;
    } // setDebug
    //----------------
    /** External code which identifies <em>this</em> branch */
    protected String code;
    /** Gets the external code
     *  @return a string which identifies <em>this</em> branch
     */
    public String getCode() {
        return code;
    } // getCode
    /** Sets the external code, called by {@link ReasonFactory}
     *  @param code a short String which identifies <em>this</em> branch
     */
    public void setCode(String code) {
        this.code = code;
    } // setCode
    //----------------
    /** the {@link BaseSolver} which uses the branchs of <em>this</em> {@link ReasonFactory}
     *  for tree expansion control
     */
    protected BaseSolver solver;
    /** Gets the solver
     *  @return a {@link BaseSolver}
     */
    public BaseSolver getSolver() {
        return solver;
    } // getSolver
    /** Sets the solver
     *  @param solver a {@link BaseSolver}
     */
    public void setSolver(BaseSolver solver) {
        this.solver = solver;
    } // setSolver

    //-----------------------------------------
    // Check for and apply the specific branch
    //-----------------------------------------

    /** Whether <em>this</em> branch can be apploed for the
     *  current {@link RelationSet}.
     *  This method is tested for all coded branches, and the
     *  first with result <em>true</em> stops the testing sequence.
     *  The last entry ({@link BaseBranch}) is always true.
     *  Pseudo-abstract.
     *  @return <em>true</em> if the <em>this</em> brnach can be applied,
     *  or <em>false</em> otherwise.
     */
    public boolean isApplicable() {
        return true;
    } // isApplicable

    /*---------------------------------------
        Properties which rema1in constant
        over iterated activations of 'createChildNode
    */
    /** Level of the node to be created */
    private int nestingLevel;
    /** Sets the nesting level
     *  @param nestingLevel the nesting level to be set
     */
    public void setNestingLevel(int nestingLevel) {
        this.nestingLevel = nestingLevel;
    } // setNestingLevel
    //----
    /** Index of the previous sibling of a node */
    private int oldSiblingIndex;
    /** Sets the index of the previous sibling of a node
     *  @param oldSiblingIndex the index of the previous sibling to be set
     */
    public void setOldSiblingIndex(int oldSiblingIndex) {
        this.oldSiblingIndex = oldSiblingIndex;
    } // setOldSiblingIndex
    //----
    /** Index of the parent node to be expanded */
    private int parentIndex;
    /** Sets the index of the parent node to be expanded
     *  @param parentIndex the index of the parent node to be expanded
     */
    public void setParentIndex(int parentIndex) {
        this.parentIndex = parentIndex;
    } // setParentIndex
    //----
    /** a {@link RefiningMap} for the node to be expanded */
    private RefiningMap refMap;
    /** Sets the {@link RefiningMap} for the node to be expanded
     *  @param refMap {@link RefiningMap} for the node to be expanded
     */
    public void setRefiningMap(RefiningMap refMap) {
        this.refMap = refMap;
    } // setRefiningMap
    /** Gets the {@link RefiningMap} for the node to be expanded
     *  @return {@link RefiningMap} for the node to be expanded
     */
    public RefiningMap getRefiningMap() {
        return this.refMap;
    } // getRefiningMap
    //----
    /** a {@link Dispenser} to be used for expansion */
    private Dispenser meter;
    /** Sets the {@link Dispenser} to be used for expansion
     *  @param meter {@link Dispenser} to be used for expansion
     */
    public void setDispenser(Dispenser meter) {
        this.meter = meter;
    } // setDispenser
    /** Gets the {@link Dispenser} to be used for expansion
     *  @return {@link Dispenser} to be used for expansion
     */
    public Dispenser getDispenser() {
        return this.meter;
    } // getDispenser
    //--------------------------
    /** Prepares more data structures for <em>this</em> branch.
     *  This method is called by {@link BaseSolver#expand}.
     *  Pseudo-abstract.
     *  @param solver the {@link BaseSolver solver} which uses <em>this</em> branch for iteration control
     *  during tree expansion
     *  @param rset1 the node to be expanded
     */
    public void prepare(BaseSolver solver, RelationSet rset1) {
        this.setSolver(solver);
        this.setParentIndex    (rset1.getIndex());
        int curLevel           = rset1.getNestingLevel() + 1;
        this.setNestingLevel   (curLevel);
        this.setOldSiblingIndex(-1);
        RefiningMap vmap1      = rset1.getMapping();
        this.setRefiningMap    (vmap1);
        BigInteger factor      = BigInteger.valueOf(solver.getModBase()).pow(curLevel);
        ModoMeter meter        = solver.getPreparedMeter(rset1, vmap1, factor);
        this.setDispenser      (meter);
    } // prepare

    //----------------
    /** Creates a child node, and append it to the queue.
     *  @param solver the {@link BaseSolver} which uses the reasons and branches
     *  @param factory1 {@link ReasonFactory} for tree pruning
     */
    public void addChildNode(BaseSolver solver, ReasonFactory factory1) {
        RefiningMap vmap1   = this.getRefiningMap();
        RefiningMap vmap2   = vmap1.getRefinedMap(this.getDispenser());
        if (vmap2.size() > 0) {
            RelationSet rset2 = factory1.getStartNode().substitute(vmap2, solver.getUpperSubst());
            if (solver.norm) {
                rset2.normalizeIt();
            }
            rset2.setIndex          (solver.size()); // next free queue entry
            rset2.setReasonFactory  (factory1);
            rset2.setMapping        (vmap2);
            rset2.setNestingLevel   (this.nestingLevel);
            rset2.setParentIndex    (this.parentIndex);
            rset2.setSiblingIndex   (this.oldSiblingIndex);
            // a reason could have modified the complete structure of rset2: a new subtree could be started
            if (rset2.getReasonFactory() != null) {
                this.oldSiblingIndex = rset2.getIndex();
            } else {
                // a reason inserted a copy and turned it into a pseudo node:
                // leave oldSiblingIndex as before
            }
            solver.add(rset2);
        } // vmap2.size() > 0
    } // addChildNode

    /** Check the current - otherwise undecidable - node ({@link RelationSet})
     *  <em>rset1</em>, and if possible, expand it in a specific way
     *  for all possible combinations of values.
     *  Pseudo-abstract.
     *  @param iqueue index of the {@link RelationSet} <em>rset1</em>
     *  @param rset1 RelationSet to be expanded
     *  @return true if the branch was applied, or
     *  false if it could not be applied .
     */
    public boolean apply(int iqueue, RelationSet rset1) {
        boolean result = true; // the BaseBranch is the last, and always applies (if it is reached at all)
        return result;
    } // apply

    /*---- General Test Driver for all branchs --------------------*/

    /** Local logger for exceptions */
    private static Logger log;

    /** Test method
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        log = Logger.getLogger(BaseBranch.class.getName());
        try {
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
            exc.printStackTrace();
        }
    } // main

} // BaseBranch
