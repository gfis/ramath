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
import  org.teherba.ramath.symbolic.reason.TransposeReason;
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
    private int debug = 1;

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

    /** Constructor with code list
     *  @param codeList list of codes separated by non-word characters
     *  @param rset0 the starting {@link RelationSet}
     */
    public ReasonFactory(String codeList, RelationSet rset0) {
        this();
        // the standard reasons
        this.addReason("base"       , rset0);
        this.addReason("transpose"  , rset0);
        this.addReason("similiar"   , rset0);
    //  this.addReason("down"       , rset0);
        this.addReason("evenexp"    , rset0);
        String[] reasonCodes = codeList.split("\\W"); // non-word characters, e.g. ","
        int icode = 0;
        while (icode < reasonCodes.length) {
            this.addReason(reasonCodes[icode], rset0); // a reason or a feature
            icode ++;
        } // while icode
    } // Constructor(String)

    /** Attempts to instantiate some reason class
     *  @param code external code for the reason
     *  @param className name of the class for the reason
     *  @param rset0 the starting {@link RelationSet}
     *  @return instance of the reason class, or null if not found
     */
    private BaseReason addReasonClass(String code, RelationSet rset0, String className) {
        BaseReason result = null; // assume that class is not found
        try {
            result = (BaseReason) Class.forName("org.teherba.ramath.symbolic.reason." + className).newInstance();
            if (result != null) { // known reason
            	result.setRootNode(rset0);
                if (result.isConsiderable()) { // needs the rootNode
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
     *  @param rset0 the starting {@link RelationSet}
     *  @return instance of the reason class, or null if not found
     */
    public BaseReason addReason(String code, RelationSet rset0) {
        BaseReason result = null; // assume success
        if (false) {
        } else if (code.startsWith("base"       )) { result = addReasonClass(code, rset0, "BaseReason"        );
        } else if (code.startsWith("down"       )) { result = addReasonClass(code, rset0, "DownsizedMapReason");
        } else if (code.startsWith("evenexp"    )) { result = addReasonClass(code, rset0, "EvenExponentReason");
        } else if (code.startsWith("same"       )) { result = addReasonClass(code, rset0, "SameReason"        );
        } else if (code.startsWith("simil"      )) { result = addReasonClass(code, rset0, "SimiliarReason"    );
        } else if (code.startsWith("transp"     )) { result = addReasonClass(code, rset0, "TransposeReason"   );
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
    public String toList() {
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
    } // toList

    /** Remove an unnecessary reason from the list
     *  @param code code of the reason to be removed
     */
    public void purge(String code) {
        int ireas = size() - 1;
        while (ireas >= 0) {
            if (this.get(ireas).getCode().equals(code)) {
                this.remove(ireas);
                // ireas = 0; // found - break loop / no, may occur several times
            }
            ireas --;
        } // while ireas
    } // purge

    //----------------------------
    // Check all specified reasons
    //----------------------------

    /** Checks a {@link RelationSet}
     *  with all stored reasons and determines whether it
     *  <ul>
     *  <li>can be decided (and be cut from the expansion tree) or</li>
     *  <li>must be further expanded (and therefore will be appended to the queue).</li>
     *  </ul>
     *  @param solver the complete state of the expansion tree
     *  @param rset2 the new {@link RelationSet} to be added to the queue
     *  @return a message string starting with one of
     *  <ul>
     *  <li>{@link VariableMap#FAILURE} - the RelationSet is not possible</li>
     *  <li>{@link VariableMap#SUCCESS} - there is a solution, but the RelationSet must further be expanded</li>
     *  <li>{@link VariableMap#UNKNOWN} - the RelationSet cannot be decided and must be further expanded</li>
     *  </ul>
     */
    private String checkAll(BaseSolver solver, RelationSet rset2) {
        String result = "";
        int ireas = 0;
        boolean busy = true;
        while (busy && ireas < size()) {
            BaseReason reason = this.get(ireas);
            String message = reason.check(solver, rset2);
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
            ireas ++;
        } // while ireas
        return result;
    } // checkAll

    /** Checks a {@link RelationSet}
     *  with all stored reasons and prints the decision
     *  @param solver the complete state of the expansion tree
     *  @param rset2 the new {@link RelationSet} to be checked
     *  @param vmap2 variables with refined expressions
     *  @return whether to queue <em>rset2</em> for further expansion
     */
    public boolean evaluateReasons(BaseSolver solver, RelationSet rset2, VariableMap vmap2) {
        boolean queueAgain = false;
        String decision = this.checkAll(solver, rset2);
        if (false) {
        } else if (decision.startsWith(VariableMap.FAILURE))   { 
                if (showFail && solver.debug >= 1) {
                    solver.trace.print(vmap2.toVector() + ":\t");
                    solver.trace.println(decision);
                }
        } else if (! decision.startsWith(VariableMap.UNKNOWN) &&
                   ! decision.startsWith(VariableMap.SUCCESS)) { // or SAME, transpose, similiar ...
                if (solver.debug >= 1) {
                    solver.trace.print(vmap2.toVector() + ":\t");
                    solver.trace.println(decision);
                }
        } else { // UNKNOWN || SUCCESS
                if (solver.debug >= 1) {
                    solver.trace.print(vmap2.toVector() + ":\t");
                    if (solver.igtriv && decision.indexOf("trivial") >= 0) {
                        decision = VariableMap.UNKNOWN;
                    }
                    solver.trace.print(decision);
                    solver.trace.print(" -> [" + solver.size() + "]");
                    solver.trace.print(" " + solver.polish(rset2));
                    solver.trace.println();
                }
                queueAgain = true;
        } // unknown
        return queueAgain;
    } // evaluateReasons

    //-------------
    // Test driver
    //-------------

    /** Test method.
     *  @param args command line arguments, see {@link BaseSolver#getArguments}.
     */
    public static void main(String[] args) {
        ReasonFactory reasons = new ReasonFactory();
    } // main

} // ReasonFactory
