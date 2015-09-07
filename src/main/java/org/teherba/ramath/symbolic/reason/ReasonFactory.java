/*  ReasonFactory: list of reasons to decide that the tree expansion can be truncated
 *  @(#) $Id: ReasonFactory.java 970 2012-10-25 16:49:32Z gfis $
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
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.linear.Vector;
import  java.io.PrintWriter;
import  java.util.ArrayList;
import  java.util.HashMap;
import  java.util.Iterator;

/** Factory and store for a list of reason classes
 *  which decide whether to cut the tree expansion at some point.
 *  @author Dr. Georg Fischer
 */
public class ReasonFactory extends ArrayList<BaseReason> {
    public final static String CVSID = "@(#) $Id: ReasonFactory.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

    /** List of various minor solver features */
    protected HashMap<String, String> features;

    /** Feature: show FAILUREs */
    private boolean showFail = false;

    //--------------
    // Construction
    //--------------

    /** No-args Constructor - prints on {@link java.lang.System#out}
     */
    public ReasonFactory() {
        super(16);
        features = new HashMap<String, String>(8);
    } // no-args Constructor

    /** Constructor with solver, code list and start set
     *  @param solver the {@link BaseSolver} which uses the reasons from 
     *  <em>this</em> {@link ReasonFactory} for iteration control
     *  @param codeList a list of codes for reasons, separated by non-word characters
     */
    public ReasonFactory(BaseSolver solver, String codeList) {
        this();
        this.setSolver(solver);
        // the standard reasons
        this.addReason("base"       );
        this.addReason("transpose"  );
        this.addReason("same"       );
        this.addReason("similiar"   );
        this.addReason("evenexp"    );
        String[] reasonCodes = codeList.split("\\W"); // non-word characters, e.g. ","
        int icode = 0;
        while (icode < reasonCodes.length) {
            this.addReason(reasonCodes[icode]); // a reason or a feature
            icode ++;
        } // while icode
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
    /** Attempts to instantiate some reason class
     *  @param code external code for the reason
     *  @param className name of the class for the reason
     *  @return instance of the reason class, or null if not found
     */
    private BaseReason addReasonClass(String code, String className) {
        if (debug > 1) {
            solver.getWriter().println("addReason, code=" + code + ", className=" + className);
        }
        BaseReason result = null; // assume that class is not found
        try {
            result = (BaseReason) Class.forName("org.teherba.ramath.symbolic.reason." + className).newInstance();
            if (result != null) { // known reason
                result.initialize(getSolver());
                if (result.isConsiderable()) { 
                    result.setCode(code);
                    this.add(result);
                } // considerable
            } // known reason
        } catch (Exception exc) {
            // ignore any error almost silently - this reason will not be known
            result = null;
        }
        return result;
    } // addReasonClass

    /** Determine a reason class from its code and add it to the list.
     *  This is the factory method which appends the applicable reasons to the list.
     *  @param code external code for the reason class
     *  @return instance of the reason class, or null if not found
     */
    public BaseReason addReason(String code) {
        BaseReason result = null; // assume success
        if (false) {
        } else if (code.startsWith("base"       )) { result = addReasonClass(code, "BaseReason"          );
    //  } else if (code.startsWith("down"       )) { result = addReasonClass(code, "DownsizedMapReason"  );
        } else if (code.startsWith("evenexp"    )) { result = addReasonClass(code, "EvenExponentReason"  );
        } else if (code.startsWith("same"       )) { result = addReasonClass(code, "SameReason"          );
        } else if (code.startsWith("simil"      )) { result = addReasonClass(code, "SimiliarReason"      );
        } else if (code.startsWith("transp"     )) { result = addReasonClass(code, "TranspositionReason" );
        } else if (code.startsWith("showf"      )) { 
            showFail = true;
            features.put(code, code);
        } else { 
        /*  Unknown reasons are silently ignored.
            Assume a feature instead. Feature codes are also not checked.
            BaseSolver currently understands the following features:
            igtriv = reasons.hasFeature("igtriv");
            invall = reasons.hasFeature("invall");
            norm   = reasons.hasFeature("norm"  );
        */
            features.put(code, code);
        }
        return result;
    } // addReason(String)

    /** Gets the applicable {@link BaseReason reason} for the specified code
     *  @param reasonCode a short String identifying the reason
     *  @return instance of the applicable reason class, or null
     */
    public BaseReason getReason(String reasonCode) {
        BaseReason result = null;
        int ireas = 0;
        while (ireas < this.size()) {
            BaseReason reason = this.get(ireas);
            if (reason.getCode().equals(reasonCode)) {
                result = reason;
                ireas = this.size(); // break loop
            }
            ireas ++;
        } // while ireas
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
        int ireas = 0;
        while (ireas < this.size()) {
            code = this.get(ireas).getCode();
            result.append(sep);
            sep = ",";
            result.append(code);
            ireas ++;
        } // while ireas
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

    /** Checks all siblings of a {@link RelationSet}
     *  @param reason the reason to be investigated
     *  @param rset2 the new {@link RelationSet} to be added to the queue
     *  @return a message String 
     */
    private String checkSiblings(BaseReason reason, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        int level2 = rset2.getNestingLevel();
        int iqueue = solver.size() - 1; // last element
        RelationSet rset1 = solver.get(iqueue);
        while (iqueue > 0 && rset1.getNestingLevel() == level2) { // down in the same level
            result = reason.compare(iqueue, rset1, rset2);
            if (! result.startsWith(VariableMap.UNKNOWN)) { // reason successful
                iqueue = 1; // break loop
            } // reason successful
            iqueue --;
            rset1 = solver.get(iqueue);
        } // while iqueue
        return result;
    } // checkSiblings

    /** Checks all anchestors of a {@link RelationSet}
     *  @param reason the reason to be investigated
     *  @param rset2 the new {@link RelationSet} to be added to the queue
     *  @return a message String 
     */
    private String checkAnchestors(BaseReason reason, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        int level2 = rset2.getNestingLevel();
        int iqueue = rset2.getParentIndex();
        while (iqueue >= 0) { // down thru all parents
            RelationSet rset1 = solver.get(iqueue);
            result = reason.compare(iqueue, rset1, rset2);
            if (! result.startsWith(VariableMap.UNKNOWN)) { // reason successful
                iqueue = 0; // break loop
            } // reason successful
            iqueue = rset1.getParentIndex();
        } // while iqueue
        return result;
    } // checkAnchestors

    /** Checks a {@link RelationSet}
     *  with all stored reasons and determines whether it
     *  <ul>
     *  <li>can be decided (and be cut from the expansion tree) or</li>
     *  <li>must be further expanded (and therefore will be appended to the queue).</li>
     *  </ul>
     *  @param rset2 the new {@link RelationSet} to be added to the queue
     *  @return a message string starting with one of
     *  <ul>
     *  <li>{@link VariableMap#FAILURE} - the RelationSet is not possible</li>
     *  <li>{@link VariableMap#SUCCESS} - there is a solution, but the RelationSet must further be expanded</li>
     *  <li>{@link VariableMap#UNKNOWN} - the RelationSet cannot be decided and must be further expanded</li>
     *  </ul>
     */
    private String checkAll(RelationSet rset2) {
        String result = "";
        int ireas = 0;
        boolean busy = true;
        while (busy && ireas < size()) {
            BaseReason reason = this.get(ireas);
            if (debug > 0) {
                solver.getWriter().println("checking " + reason.getCode() + " for " + rset2.niceString());
            }
            String message = VariableMap.UNKNOWN;
            switch (reason.getWalkMode()) {
                case BaseReason.WALK_NONE:
                    message = reason.compare(0, rset2 /* unused */, rset2);
                    break;
                case BaseReason.WALK_ROOT:
                    message = reason.compare(0, solver.getRootNode(), rset2);
                    break;
                case BaseReason.WALK_SIBLINGS:
                    message = checkSiblings  (reason, rset2);
                    break;
                case BaseReason.WALK_ANCHESTORS:
                    message = checkAnchestors(reason, rset2);
                    break;
                case BaseReason.WALK_PARENT:
                    message = reason.compare(0, solver.get(rset2.getParentIndex()), rset2);
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
                solver.getWriter().println("checked " + ireas + ": " + reason.getCode() + " => " + result);
            }
            ireas ++;
        } // while ireas
        return result;
    } // checkAll

    /** Checks a {@link RelationSet}
     *  with all stored reasons and prints the decision
     *  @param rset2 the new {@link RelationSet} to be checked
     *  @param rmap2 variables with refined expressions
     *  @return whether to queue <em>rset2</em> again for further expansion
     */
    public boolean evaluateReasons(RelationSet rset2, RefiningMap rmap2) {
        boolean queueAgain = false;
        String decision = this.checkAll(rset2);
        if (false) {
        } else if (decision.startsWith(VariableMap.UNKNOWN)) {
            solver.printDecision(decision, rset2, rmap2);
            queueAgain = true;
        } else if (decision.startsWith(VariableMap.SUCCESS)) { 
            solver.printDecision(decision, rset2, rmap2);
            queueAgain = true;
        } else if (decision.startsWith(VariableMap.FAILURE)) { 
            if (showFail) {
                solver.printDecision(decision, rset2, rmap2);
            }
        } else { // or SAME, transpose, similiar ...
            solver.printDecision(decision, rset2, rmap2);
        } // unknown
        return queueAgain;
    } // evaluateReasons

    //-------------
    // Test driver
    //-------------

    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        BaseSolver solver = new BaseSolver();
        RelationSet rset0 = new RelationSet("x^2 + y^2 - z^2");
        solver.setRootNode(rset0);
        ReasonFactory reasons = new ReasonFactory(solver, "norm");
        solver.getWriter().println("ReasonFactory: " + reasons.toString());
    } // main

} // ReasonFactory
