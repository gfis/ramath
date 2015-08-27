/*  BaseReason: base class for all reasons to cut the tree expansion
 *  @(#) $Id: BaseReason.java 970 2012-10-25 16:49:32Z gfis $
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
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.symbolic.solver.BaseSolver;

/** Checks some reason why a node (a {@link RelationSet}) in the tree expansion
 *  of a {@link BaseSolver} needs not to be investigated any further.
 *  There may be several reasons which are all checked in sequence, and the first
 *  valid reason stops this sequence.
 +  <p>
 *  BaseReason is the base class from which all other reasons inherit.
 *  It checks simple zero and modulus properties of the {@link RelationSet} in question.
 *  @author Dr. Georg Fischer
 */
public class BaseReason {
    public final static String CVSID = "@(#) $Id: BaseReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

    //--------------
    // Construction
    //--------------

    /** No-args Constructor
     */
    public BaseReason() {
    } // no-args Constructor
    //----------------
    /** External code which identifies <em>this</em> reason */
    protected String code;
    /** Gets the external code
     *  @return a string which identifies <em>this</em> reason
     */
    public String getCode() {
        return code;
    } // getCode  
    /** Sets the external code
     *  @param code a string which identifies <em>this</em> reason
     */
    public void setCode(String code) {
        this.code = code;
    } // setCode
    //----------------
    /** the initial {@link RelationSet} to be solved */
    protected RelationSet rootNode;
    /** Gets the initial {@link RelationSet} to be solved
     *  @return root element of the queue of RelationSets
     */
    protected RelationSet getRootNode() {
        return this.rootNode;
    } // getRootNode
    /** Sets root element of the queue of {@link RelationSet}s
     *  @param rset0 the initial {@link RelationSet} to be solved
     */
    public void setRootNode(RelationSet rset0) {
    	this.rootNode = rset0;
    } // setRootNode

    //----------------
    /** Whether <em>this</em> reason should be considered for 
     *  the starting {@link RelationSet}.
     *  Only a few reasons overwrite this method and return <em>false</em> for
     *  some types of RelationSets.
     *  @return <em>true</em> if the <em>this</em> should be considered (default), 
     *  <em>false</em> otherwise.
     */
    public boolean isConsiderable() {
        return true;
    } // isConsiderable
    
    //---------------------------
    // Check the specific reason
    //---------------------------

    /** Checks a {@link RelationSet} and determines whether it
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
    public String check(BaseSolver solver, RelationSet rset2) {
        String result = rset2.evaluate(rset2.getTuple());
        return result;
    } // check

    //-------------
    // Test driver
    //-------------

    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        BaseReason reason = new BaseReason();
    } // main

} // BaseReason
