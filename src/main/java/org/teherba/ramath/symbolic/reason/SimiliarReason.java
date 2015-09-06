/*  SimiliarReason: checks whether the RelationSet is similiar to any in the queue
 *  @(#) $Id: SimiliarReason.java 970 2012-10-25 16:49:32Z gfis $
 *  2015-02-24, Georg Fischer
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
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.symbolic.solver.BaseSolver;

/** Checks whether {@link RelationSet} 
 *  is similiar to another RelationSet in the tree / queue.
 *  @author Dr. Georg Fischer
 */
public class SimiliarReason extends BaseReason {
    public final static String CVSID = "@(#) $Id: SimiliarReason.java 970 2012-10-25 16:49:32Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    private int debug = 0;

     /** No-args Constructor
     */
    public SimiliarReason() {
    } // no-args Constructor
    
    /** Tries to find a similiar {@link RelationSet} in the solver's history,
     *  either in the parents or in all queue elements (depending on the findMode)
     *  @param solver the complete state of the expansion tree
     *  @param rset2 RelationSet to be looked up
     *  @return index of similiar element in queue, or "[-1]" if none was found
     */
    protected String findSimiliar(BaseSolver solver, RelationSet rset2) {
        int isimil = -1; // assume not found
        int iqueue = solver.size() - 1;
        String message = null;
        if (iqueue >= 0) { // root not similiar to itself
            switch (solver.getFindMode()) {
                default:
                case BaseSolver.FIND_IN_PREVIOUS:
                    while (isimil < 0 && iqueue >= 0) {
                        message = solver.get(iqueue).similiarity(rset2);
                        if (message != null) {
                            isimil = iqueue;
                        }
                        iqueue --;
                    } // while iqueue
                    break;
                case BaseSolver.FIND_IN_PARENTS:
                    iqueue = rset2.getParentIndex();
                    while (isimil < 0 && iqueue >= 0) {
                        message = solver.get(iqueue).similiarity(rset2);
                        if (message != null) {
                            isimil = iqueue;
                        }
                        iqueue = rset2.getParentIndex();
                    } // while iqueue
                    break;
            } // switch findMode
        } // iqueue > 0
        return "[" + String.valueOf(isimil) + "], " + message;
    } // findSimiliar

    /** Checks a {@link RelationSet} and determines whether 
     *  it is simliar to any other in the tree expansion
     *  @param solver the complete state of the expansion tree
     *  @param rset2 the new {@link RelationSet} to be added to the queue 
     *  @return a message string starting with one of 
     *  <ul>
     *  <li>{@link VariableMap#UNKNOWN} - the RelationSet cannot be decided and must be further expanded</li>
     *  <li>{@link VariableMap#FAILURE} - the RelationSet is not possible</li>
     *  <li>{@link VariableMap#SUCCESS} - there is a solution, but the RelationSet must further be expanded</li>
     *  </ul>
     */
    public String check(BaseSolver solver, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        String message = findSimiliar(solver, rset2);
        if (! message.startsWith("[-1]")) { // no index "[-1]" means a similiar RelationSet was found
            result = VariableMap.SIMILIAR + "   " + message + " " + rset2.niceString();
        } // no index "[-1]"
        return result;
    } // check

} // SimiliarReason
