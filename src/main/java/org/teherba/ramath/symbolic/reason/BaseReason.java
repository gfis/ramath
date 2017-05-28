/*  BaseReason: base class for all reasons to cut the tree expansion
 *  @(#) $Id: BaseReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-09-05: initialize, main
 *  2015-08-25: isConsiderable
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
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.symbolic.reason.ReasonFactory;
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.apache.log4j.Logger;

/** Checks some reason why a node (a {@link RelationSet} <em>rset2</em>) in the tree expansion
 *  of a {@link BaseSolver} needs not to be investigated any further.
 *  There may be several reasons which are all checked in sequence, and the first
 *  valid reason stops this sequence. If the checks in all reasons fail,
 *  the node is queued for further investigation.
 +  <p>
 *  BaseReason is the base class from which all other reasons inherit.
 *  It checks simple zero and modulus properties of the {@link RelationSet} <em>rset2</em>.
 *  @author Dr. Georg Fischer
 */
public class BaseReason {
    public final static String CVSID = "@(#) $Id: BaseReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity.
     *  <em>debug</em> is 0 when reasons are called from the ReasonFactory.
     *  For the stand-alone tests with {@link BaseReason#main},
     *  <em>debug</em> defaults to 1 and may be set by option <em>-d</em>.
     *  <em>debug</em> is inherited by all reason subclasses.
     */
    protected static int debug = 0;

    /** Additonal parameter for testing, only affective if <em>debug &gt;= 1</em>.
     */
    protected static String testParm = "";

    //--------------
    // Construction
    //--------------

    /** No-args Constructor
     */
    public BaseReason() {
        setDebug(0); // when called from ReasonFactory
    } // no-args Constructor

    /** Initializes any data structures for <em>this</em> reason.
     *  This method is called by {@link ReasonFactory};
     *  it may be  used to gather and store data which are
     *  needed for the specific check.
     *  Pseudo-abstract.
     *  @param solver the {@link BaseSolver solver} which uses <em>this</em> reason for iteration control
     *  during tree expansion
     *  @param startNode the root node of the expansion (sub-)tree
     */
    public void initialize(BaseSolver solver, RelationSet startNode) {
        setSolver(solver);
        setWalkMode(WALK_NONE); // -base tests the new source node <em>rset2</em> only
    } // initialize

    /** Whether <em>this</em> reason should be considered for
     *  the starting {@link RelationSet}.
     *  The default is <em>true</em> = always considered.
     *  Only a few reasons overwrite this method and return <em>false</em> for
     *  some types of RelationSets.
     *  Pseudo-abstract.
     *  @return <em>true</em> if the <em>this</em> should be considered (default),
     *  <em>false</em> otherwise.
     */
    public boolean isConsiderable() {
        return true;
    } // isConsiderable

    //----------------
    /** Sets the debugging switch
     *  @param deb 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity.
     */
    public void setDebug(int deb) {
        debug = deb;
    } // setDebug
    //----------------
    /** External code which identifies <em>this</em> reason */
    protected String code;
    /** Gets the external code
     *  @return a string which identifies <em>this</em> reason
     */
    public String getCode() {
        return code;
    } // getCode
    /** Sets the external code, called by {@link ReasonFactory}
     *  @param code a short String which identifies <em>this</em> reason
     */
    public void setCode(String code) {
        this.code = code;
    } // setCode
    //----------------
    /** the {@link BaseSolver} which uses the reasons of <em>this</em> {@link ReasonFactory}
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
    //----------------
    /** How to walk through the expansion tree when considering
     *  the source node <em>rset2</em> and the target node <em>rset1</em>.
     *  Consideration decides whether the source node <em>rset2</em>
     *  must further be expanded, and therefore must be queued.
     *  The target node <em>rset1</em> is one of the nodes previously queued.
     */
    private int walkMode;
    /** Consider all previous nodes */
    public static final int WALK_ALL         = 0;
    /** Consider the parent of the source node, and grandparent, grandgrandparent etc. */
    public static final int WALK_ANCHESTORS  = 1;
    /** Consider a single source node only (default) */
    public static final int WALK_NONE        = 2;
    /** Consider all nodes which have the same parent as the source node */
    public static final int WALK_SIBLINGS    = 3;
    /** Consider the parent of the source node only */
    public static final int WALK_PARENT      = 4;
    /** Consider the root node only */
    public static final int WALK_ROOT        = 5;

    /** Gets the mode of tree walking
     *  @return one of the codes WALK_*
     */
    public int getWalkMode() {
        return walkMode;
    } // getWalkMode
    /** Sets the mode of tree walking
     *  @param walkMode one of the codes WALK_*
     */
    public void setWalkMode(int walkMode) {
        this.walkMode = walkMode;
    } // setWalkMode

    //---------------------------
    // Consider the specific reason
    //---------------------------

    /** Consider the source {@link RelationSet} <em>rset2</em> to be queued together with
     *  another {@link RelationSet} <em>rset1</em> already queued.
     *  If the test is successful, a message is printed and returned,
     *  and <em>rset2</em> is not stored in the following;
     *  otherwise the checking process continues.
     *  Pseudo-abstract.
     *  @param iqueue index of the target RelationSet <em>rset1</em>
     *  @param rset1 the old target {@link RelationSet} already queued
     *  @param rset2 the new source {@link RelationSet} to be added to the queue
     *  @return a message String denoting the reasoning details,
     *  or {@link VariableMap#UNKNOWN} if the comparision is not conclusive.
     */
    public String consider(int iqueue, RelationSet rset1, RelationSet rset2) {
        String result = rset2.evaluate(rset2.getMapping());
        return result;
    } // consider

    /*---- General Test Driver for all reasons --------------------*/

    /** Local logger for exceptions */
    private static Logger log;

    /** Test method, reads a root node, a target <em>rset1</em>
     *  and a source {@link RelationSet} <em>rset2</em>,
     *  {@link #consider}s the latter with thd method
     *  of the specified, derived {@link BaseReason reason} and prints the result
     *  @param args command line arguments:
     *  <pre>
     *  java -cp dist/ramath.jar org.teherba.ramath.symbolic.reason.BaseReason \
     *      [-d n] [-t string] [-rset0 rs] [-rset1 rs] [-rset2 rs] \
     *      [-rmap1 rm] [-rmap2 rm] -code
     *  </pre>
     */
    public static void main(String[] args) {
        log = Logger.getLogger(BaseReason.class.getName());
        try {
            RelationSet rset0 = new RelationSet("0");
            RelationSet rset1 = new RelationSet("0");
            RelationSet rset2 = new RelationSet("0");
            RefiningMap rmap1 = new RefiningMap();
            RefiningMap rmap2 = new RefiningMap();
            String code = "base";
            int localDebug = 1;
            testParm = "";

            int iarg = 0;
            while (iarg < args.length) {
                String opt = args[iarg ++];
                if (false) {
                } else if (opt.equals("-d")     ) {
                    localDebug = 1;
                    try {
                        localDebug = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                } else if (opt.equals("-rset0")) {
                    rset0 = RelationSet.parse(args[iarg ++]);
                } else if (opt.equals("-rset1")) {
                    rset1 = RelationSet.parse(args[iarg ++]);
                } else if (opt.equals("-rset2")) {
                    rset2 = RelationSet.parse(args[iarg ++]);
                } else if (opt.equals("-rmap1")) {
                    rmap1 = RefiningMap.parse(args[iarg ++]);
                } else if (opt.equals("-rmap2")) {
                    rmap2 = RefiningMap.parse(args[iarg ++]);
                } else if (opt.equals("-t")     ) {
                    testParm = args[iarg ++];
                } else {
                    code = opt.replaceAll("\\-", "");
                }
            } // while iarg

            rset1.setMapping(rmap1);
            rset2.setMapping(rmap2);
            BaseSolver solver = new BaseSolver();
            solver.setCodeList("," + code);
            ReasonFactory factory = solver.setRootNode(rset0, code);
            solver.getWriter().println("ReasonFactory: " + factory.toString() +  ", code=\"" + code + "\"");
            BaseReason reason = factory.getReason(code);
            debug = localDebug;
            if (reason != null) {
                String message = reason.consider(0, rset1, rset2);
                solver.getWriter().println(reason.getClass().getSimpleName() + ".consider(\n\t\""
                        + rset1.niceString() + "\", \n\t\""
                        + rset2.niceString() + "\") = \n\t"
                        + message);
            } else {
                solver.getWriter().println("Reason \"" + code + "\" is not considered for " + rset2.niceString());
            }
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
            exc.printStackTrace();
        }
    } // main

} // BaseReason
