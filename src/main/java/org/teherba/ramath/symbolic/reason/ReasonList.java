/*  ReasonList: list of reasons to decide that the tree expansion can be truncated
 *  @(#) $Id: ReasonList.java 970 2012-10-25 16:49:32Z gfis $
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
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.Solver;
import  org.teherba.ramath.symbolic.VariableMap;
import  java.util.ArrayList;
import  java.util.Iterator;

/** Factory and store for a list of reason classes
 *  which decide whether to cut the tree expansion at some point.
 *  @author Dr. Georg Fischer
 */
public class ReasonList extends ArrayList<BaseReason> {
    public final static String CVSID = "@(#) $Id: ReasonList.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 1;

    //--------------
    // Construction
    //--------------

    /** No-args Constructor - prints on {@link java.lang.System#out}
     */
    public ReasonList() {
        super(16);
    } // no-args Constructor

    /** Attempts to instantiate some reason class
     *  @param className name of the class for the reason
     *  @result instance of the reason class, or null if not found
     */
    private BaseReason addReasonClass(String className) {
        BaseReason result = null; // assume that class is not found
        try {
            result = (BaseReason) Class.forName("org.teherba.ramath.symbolic.reason." + className).newInstance();
            this.add(result);
        } catch (Exception exc) {
            // ignore any error almost silently - this reason will not be known
            result = null;
        }
        return result;
    } // addReasonClass

    /** Determine a reason class from its code and add it to the list.
     *  This is the factory method which appends the applicable reasons to the list.
     *  @param code external code for the reason class
     *  @result instance of the reason class, or null if not found
     */
    public BaseReason addReason(String code) {
        BaseReason result = null; // assume success
        if (false) {
        } else if (code.equals("base"   )) { result = addReasonClass("BaseReason"       );
        }
        if (result == null) {
            System.err.println("** Reason code " + code + " is not known or class cannot be instantiated");
        }
        return result;
    } // addReason(String)

    //----------------------------
    // Check all specified reasons
    //----------------------------

    /** Checks a specific expansion of the {@link RelationSet}
     *  with al stored reasons and determines whether it
     *  <ul>
     *  <li>can be decided (and be cut from the tree) or</li>
     *  <li>must be further expanded.</li>
     *  </ul>
     *  @param solver the complete state of the expansion tree
     *  @param queueIndex position in the queue of the {@link RelationSet} to be expanded, >= 0
     */
    public String check(Solver solver, int queueIndex) {
        String result = VariableMap.UNKNOWN;
        int ireas = 0;
        boolean busy = true;
        while (busy && ireas < size()) {
            result = this.get(ireas).check(solver, queueIndex);
            busy = 	result.startsWith(VariableMap.UNKNOWN) ||
            		result.startsWith(VariableMap.SUCCESS); // continue if UNKNoWN or SUCCESS
            ireas ++;
        } // while
        return result;
    } // check

    //-------------
    // Test driver
    //-------------

    /** Test method.
     *  @param args command line arguments, see {@link Solver#getArguments}.
     */
    public static void main(String[] args) {
        ReasonList reasons = new ReasonList();
    } // main

} // ReasonList
