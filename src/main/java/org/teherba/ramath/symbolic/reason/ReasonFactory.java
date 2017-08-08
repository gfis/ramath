/*  ReasonFactory: list of reasons to decide that the tree expansion can be truncated
 *  @(#) $Id: ReasonFactory.java 970 2012-10-25 16:49:32Z gfis $
 *  2017-08-08: explainReasons for QueueSolver removed 
 *  2016-12-20: feature upsubst
 *  2016-04-24: features were HashMap
 *  2015-08-30: DownsizedMapReason
 *  2015-08-25: EvenExponentReason, isConsiderable
 *  2015-07-23: *Grow* removed
 *  2015-06-01: DoGrowReason
 *  2015-02-27: GrowingReason
 *  2015-02-21, Georg Fischer
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
package org.teherba.ramath.symbolic.reason;
import  org.teherba.ramath.symbolic.reason.BaseReason;
import  org.teherba.ramath.symbolic.branch.BaseBranch;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.linear.Vector;
import  java.io.PrintWriter;
import  java.util.ArrayList;
import  java.util.Iterator;
import  java.util.TreeMap;

/** Factory and store for a list of reason classes
 *  which decide whether to cut the tree expansion at some point.
 *  The reasons are processed ("{@link BaseReason#consider considered}"
 *  in the order in which they were added to
 *  the internal {@link ArrayList}.
 *  <p>
 *  The basic operation is to consider the various reasons why a
 *  new {@link RelationSet} can be decided and therefore needs not
 *  to be stored in the tree for further expansion.
 *  Often, a second RelationSet is examined in comparision to the
 *  new RelationSet in question.
 *  <p>
 *  The class contains methods which {@link BaseReason#walkMode walk}
 *  through the expansion tree in different ways in order to examine
 *  the second RelationSet.
 *  @author Dr. Georg Fischer
 */
public class ReasonFactory extends ArrayList<BaseReason> {
    public final static String CVSID = "@(#) $Id: ReasonFactory.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

    /** List of branch class instances, similiar to <em>this</em> ArrayList of reasons */
    protected ArrayList<BaseBranch>   branches;

    /** List of various minor solver features.
     *  This could have been a HashMap, but we want reproducible test output for feature lists.
     */
    protected TreeMap<String, String> features;

    /** Feature: show FAILUREs */
    private boolean showFail = false;

    //--------------
    // Construction
    //--------------

    /** No-args Constructor - prints on {@link java.lang.System#out}
     */
    public ReasonFactory() {
        super(16);
        features = new TreeMap<String, String>();
        branches = new ArrayList<BaseBranch>  (8);
    } // no-args Constructor

    /** Constructor with solver, code list and start set
     *  @param solver the {@link BaseSolver} which uses the reasons from
     *  <em>this</em> {@link ReasonFactory} for iteration control
     *  @param codeList a list of codes for reasons, surrounded by non-word characters
     *  @param startNode the root node of the expansion (sub-)tree
     */
    public ReasonFactory(BaseSolver solver, String codeList, RelationSet startNode) {
        this();
        this.setSolver(solver);
        this.setStartNode(startNode);

        // the standard reasons are defined by the codeList from BaseSolver
        String[] codes = codeList.split("\\W"); // leading ","; non-word characters, e.g. ","
        int icode = 0;
        while (icode < codes.length) {
            this.addInstance(codes[icode]); // a reason or a feature
            icode ++;
        } // while icode
        this.addBranch("branch", "BaseBranch"); // always the last branch class

        if (debug > 0) {
            solver.getWriter().println("ReasonFactory created");
        }
    } // Constructor(String)

    //----------------
    /** the {@link BaseSolver} which uses the reasons of <em>this</em> {@link ReasonFactory}
     *  for tree expansion control
     */
    private BaseSolver solver;
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
    //----------------
    /** the {@link RelationSet} at the root of the (sub-)tree
     */
    private RelationSet startNode;
    /** Gets the start node
     *  @return a {@link RelationSet}
     */
    public RelationSet getStartNode() {
        return startNode;
    } // getStartNode
    /** Sets the start node
     *  @param startNode a {@link RelationSet}
     */
    public void setStartNode(RelationSet startNode) {
        this.startNode = startNode;
    } // setStartNode
    //----------------

    /** Attempts to instantiate some branch class
     *  @param code external code for the branch
     *  @param className name of the class for the branch
     */
    private void addBranch(String code, String className) {
        BaseBranch result = null; // assume that class is not found
        try {
            result = (BaseBranch) Class.forName("org.teherba.ramath.symbolic.branch." + className).newInstance();
            if (result != null) { // known branch
                result.initialize(getSolver());
                result.setCode(code);
                branches.add(result);
            } // known branch
        } catch (Exception exc) {
            // ignore any error almost silently - this branch will not be known
            result = null;
        }
    } // addBranch

    /** Attempts to instantiate some reason class
     *  @param code external code for the reason
     *  @param className name of the class for the reason
     */
    private void addReason(String code, String className) {
        BaseReason result = null; // assume that class is not found
        try {
            result = (BaseReason) Class.forName("org.teherba.ramath.symbolic.reason." + className).newInstance();
            if (result != null) { // known reason
                result.initialize(getSolver(), getStartNode());
                if (result.isConsiderable()) {
                    result.setCode(code);
                    this.add(result);
                } // considerable
            } // known reason
        } catch (Exception exc) {
            // ignore any error almost silently - this reason will not be known
            result = null;
        }
        if (debug > 1) {
            solver.getWriter().println("addInstance, code=" + code + " => " + (result == null ? "failed" : "ok"));
        }
    } // addReason

    /** Determine a reason or branch class from its code
     *  and add an instance thereof to the list.
     *  This is the factory method which appends the applicable reasons or branches
     *  to <em>this</em> list respectively to {@link #branches}.
     *  Additional codes are stored in TreeMap {@link #features}.
     *  @param code external code for the reason or branch class
     */
    public void addInstance(String code) {
        if (false) {
        } else if (code.startsWith("accel"      )) { addReason(code, "ModAccelerator"      );
        } else if (code.startsWith("base"       )) { addReason(code, "BaseReason"          );
        } else if (code.startsWith("even"       )) { addReason(code, "EvenExponentReason"  );
        } else if (code.startsWith("prim"       )) { addReason(code, "PrimitiveReason"     );
        } else if (code.startsWith("pyth"       )) { addReason(code, "PythagoreanFork"     );
        } else if (code.startsWith("same"       )) { addReason(code, "SameReason"          );
        } else if (code.startsWith("simil"      )) { addReason(code, "SimiliarReason"      );
        } else if (code.startsWith("trans"      )) { addReason(code, "TranspositionReason" );

        } else if (code.startsWith("showf"      )) {
            showFail = true;
            features.put(code, code);
        } else {
        /*  Unknown reasons are silently ignored.
            Assume a feature instead. Feature codes are also not checked.
            BaseSolver currently understands the following features:
            igtriv     = reasons.hasFeature("igtriv" );
            invall     = reasons.hasFeature("invall" );
            norm       = reasons.hasFeature("norm"   );
        //  upperSubst = reasons.hasFeature("upsubst");
        */
            features.put(code, code);
        }
    } // addInstance(String)

    /** Gets the applicable {@link BaseBranch branch} for the specified code
     *  @param code a short String identifying the branch
     *  @return instance of the applicable branch class, or null
     */
    public BaseBranch getBranch(String code) {
        BaseBranch result = null;
        int ilist = 0;
        while (ilist < branches.size()) {
            BaseBranch branch = branches.get(ilist);
            if (branch.getCode().startsWith(code)) {
                result = branch;
                ilist = branches.size(); // break loop
            }
            ilist ++;
        } // while ilist
        return result;
    } // getBranch

    /** Determines the branch to be applied by checking all available
     *  branches in sequence. The last one (the {@link BaseBranch}) is always applicable.
     *  @param rset1 {@link RelationSet} to be expanded
     *  @return a subclass of {@link BaseBranch}
     */
    public BaseBranch getApplicableBranch(RelationSet rset1) {
        BaseBranch result = null;
        int ilist = 0;
        while (ilist < branches.size()) {
            result = branches.get(ilist);
            if (result.isApplicable(rset1)) {
                // result.prepare(rset1);
                ilist = branches.size(); // break loop
            }
            ilist ++;
        } // while ilist
        return result;
    } // getApplicableBranch

    /** Gets the applicable {@link BaseReason reason} for the specified code
     *  @param code a short String identifying the reason
     *  @return instance of the applicable reason class, or null
     */
    public BaseReason getReason(String code) {
        BaseReason result = null;
        int ilist = 0;
        while (ilist < this.size()) {
            BaseReason reason = this.get(ilist);
            if (reason.getCode().startsWith(code)) {
                result = reason;
                ilist = this.size(); // break loop
            }
            ilist ++;
        } // while ilist
        return result;
    } // getReason

    //------------------
    /** Determines whether a certain feature is set
     *  @param code name of the feature
     *  @return true if the feature is set, false otherwise
     */
    public boolean hasFeature(String code) {
        return features.get(code) != null;
    } // hasFeature

    /** Returns a list of accepted reason codes, a space,
     *  and a list of stored feature codes
     *  @return for example: base,same,similiar norm,invall
     */
    public String toString() {
        StringBuffer result = new StringBuffer(32);
        String sep = "";
        String code = "";
        int ilist = 0;
        while (ilist < this.size()) {
            code = this.get(ilist).getCode();
            result.append(sep);
            sep = ",";
            result.append(code);
            ilist ++;
        } // while ilist
        sep = " " ;
        Iterator<String> fiter = features.keySet().iterator();
        while (fiter.hasNext()) { // over all feature codes
            code = fiter.next();
            result.append(sep);
            sep = ",";
            result.append(code);
        } // while fiter
        return result.toString();
    } // toString

    //----------------------------
    // Check all specified reasons
    //----------------------------

    /** Checks all previous nodes of a {@link RelationSet}
     *  @param reason the reason to be investigated
     *  @param rset2 the new {@link RelationSet} to be added to the queue.
     *  <em>rset2.getSiblingIndex()</em> must already yield the proper index.
     *  @return a message String
     */
    private String considerAll(BaseReason reason, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        int iqueue = rset2.getSiblingIndex();
        boolean busy = true;
        while (busy && iqueue > solver.ROOT_PARENT) { // down through all nodes in the queue
            RelationSet rset1 = solver.get(iqueue);
            result = reason.consider(iqueue, rset1, rset2);
            if (! result.startsWith(VariableMap.UNKNOWN)) { // reason successful
                busy = false; // break loop
            } // reason successful
            iqueue --;
        } // while iqueue
        return result;
    } // considerAll

    /** Checks all anchestors of a {@link RelationSet}
     *  @param reason the reason to be investigated
     *  @param rset2 the new {@link RelationSet} to be added to the queue
     *  @return a message String
     */
    private String considerAnchestors(BaseReason reason, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        int iqueue = rset2.getParentIndex();
        boolean busy = true;
        while (busy && iqueue > solver.ROOT_PARENT) { // down through all parents
            RelationSet rset1 = solver.get(iqueue);
            result = reason.consider(iqueue, rset1, rset2);
            if (! result.startsWith(VariableMap.UNKNOWN)) { // reason successful
                busy = false; // break loop
            } // reason successful
            iqueue = rset1.getParentIndex();
        } // while iqueue
        return result;
    } // considerAnchestors

    /** Checks all siblings of a {@link RelationSet}
     *  @param reason the reason to be investigated
     *  @param rset2 the new {@link RelationSet} to be added to the queue.
     *  <em>rset2.getSiblingIndex()</em> must already yield the proper index.
     *  @return a message String
     */
    private String considerSiblings(BaseReason reason, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        int iqueue = rset2.getSiblingIndex();
        boolean busy = true;
        while (busy && iqueue > solver.ROOT_PARENT) { // -1 for first child
            RelationSet rset1 = solver.get(iqueue);
            result = reason.consider(iqueue, rset1, rset2);
            if (! result.startsWith(VariableMap.UNKNOWN)) { // reason successful
                busy = false; // break loop
            } // reason successful
            iqueue = rset1.getSiblingIndex();
        } // while iqueue
        return result;
    } // considerSiblings

    /** Considers all {@link BaseReason#isConsiderable considerable}
     *  {@link BaseReason reasons} for {@link RelationSet}, possibly in relation
     *  to some other RelationSets already queued,
     *  and determines whether it
     *  <ul>
     *  <li>can be decided (and be cut from the expansion tree) or</li>
     *  <li>must be further expanded (and therefore will be appended to the queue).</li>
     *  </ul>
     *  @param rset2 the new {@link RelationSet} to be considered and maybe added to the queue
     *  @return a message string starting with one of
     *  <ul>
     *  <li>{@link VariableMap#FAILURE} - the RelationSet is not possible</li>
     *  <li>{@link VariableMap#UNKNOWN} - the RelationSet cannot be decided and must be further expanded</li>
     *  <li>some other string different from the above,
     *      denoting the {@link BaseReason reason} why the node was decided
     *  </li>
     *  </ul>
     */
    private String considerNode(RelationSet rset2) {
        String result = "";
        int ilist = 0;
        boolean busy = true;
        while (busy && ilist < size()) {
            BaseReason reason = this.get(ilist);
            if (debug > 0) {
                solver.getWriter().println("checking " + reason.getCode() + " for " + rset2.niceString());
            }
            String message = VariableMap.UNKNOWN;
            switch (reason.getWalkMode()) {
                case BaseReason.WALK_ALL:
                    message = considerAll       (reason, rset2);
                    break;
                case BaseReason.WALK_ANCHESTORS:
                    message = considerAnchestors(reason, rset2);
                    break;
                case BaseReason.WALK_NONE:
                    message = reason.consider(0, rset2 /* unused */, rset2);
                    break;
                case BaseReason.WALK_PARENT:
                    message = reason.consider(0, solver.get(rset2.getParentIndex()), rset2);
                    break;
                case BaseReason.WALK_ROOT:
                    message = reason.consider(0, this.getStartNode(), rset2);
                    break;
                case BaseReason.WALK_SIBLINGS:
                    message = considerSiblings  (reason, rset2);
                    break;
                default:
                    solver.getWriter().println("??? assertion: invalid walkMode=" + reason.getWalkMode());
                    break;
            } // switch walkMode

            if (false) { // message switch
            } else if (message.startsWith(VariableMap.UNKNOWN)) {
                if (result.length() > 0) {
                    result += message.replaceAll("\\A" + VariableMap.UNKNOWN, "");
                } else {
                    result += message;
                }
            } else if (message.startsWith(VariableMap.SUCCESS)) {
                if (result.length() > 0) {
                    result += message.replaceAll("\\A" + VariableMap.SUCCESS, "");
                } else {
                    result += message;
                }
            } else if (message.startsWith(VariableMap.FAILURE) || true) { // all other messages
                busy = false;
                if (result.length() > 0 && ! result.startsWith(VariableMap.UNKNOWN)) {
                    result = message + " " + result;
                } else {
                    result = message;
                }
            } // end message switch
            if (debug > 0) {
                solver.getWriter().println("checked " + ilist + ": " + reason.getCode() + " => " + result);
            }
            ilist ++;
        } // while ilist
        return result;
    } // considerNode

    /** Checks a {@link RelationSet}
     *  with all stored reasons and prints the decision
     *  @param rset2 the new {@link RelationSet} to be checked
     *  @param rmap2 variables with refined expressions
     *  @return whether to queue <em>rset2</em> again for further expansion
     */
    private boolean evaluateReasons(RelationSet rset2, RefiningMap rmap2) {
        boolean queueAgain = false;
        String decision = this.considerNode(rset2);
        if (false) {
        } else if (decision.startsWith(VariableMap.UNKNOWN)) {
            solver.printDecision(decision, rset2, rmap2);
            solver.printSolutions(rset2, rmap2);
            queueAgain = true;
        } else if (decision.startsWith(VariableMap.SUCCESS)) { // will it ever occur?
            solver.printDecision(decision, rset2, rmap2);
            solver.printSolutions(rset2, rmap2);
            queueAgain = true;
        } else if (decision.startsWith(VariableMap.FAILURE)) {
            if (showFail) {
                solver.printDecision(decision, rset2, rmap2);
            }
        } else { // detailed cut-off: SAME, transpose, negative, non-primitive, similiar ...
            solver.printDecision(decision, rset2, rmap2);
            if (false) {
            } else if (decision.startsWith("transp")) {
                // original solution is already printed
            } else {
                solver.printSolutions(rset2, rmap2);
            }
        } // detailed cut-off
        return queueAgain;
    } // evaluateReasons

    /** Checks a {@link RelationSet}
     *  with all stored reasons and prints the decision
     *  @param rset2 the new {@link RelationSet} to be checked
     *  @return whether to queue <em>rset2</em> again for further expansion
     */
    public boolean evaluateReasons(RelationSet rset2) {
        return evaluateReasons(rset2, rset2.getMapping());
    } // evaluateReasons

    //-------------
    // Test driver
    //-------------

    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        BaseSolver solver     = new BaseSolver();
        RelationSet rset0     = new RelationSet("x^2 + y^2 - z^2");
        ReasonFactory reasons = solver.setRootNode(rset0, "base,transpose,same,norm");
        solver.getWriter().println("ReasonFactory: " + reasons.toString());
    } // main

} // ReasonFactory
