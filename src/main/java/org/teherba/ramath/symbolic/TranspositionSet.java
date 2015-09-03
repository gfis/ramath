/*  TranspositionSet: a set of mappings between transposable variable names
 *  @(#) $Id: TranspositionSet.java 538 2010-09-08 15:08:36Z gfis $
 *  2015-09-03, Georg Fischer: copied from RefinedMap
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
package org.teherba.ramath.symbolic;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.Permutator;
import  java.io.Serializable;
import  java.util.ArrayList;

/** Stores a list of mappings between transposable variable names of a {@link RelationSet}.
 *  The mappings are defined by {@link Vector}s containing the natural indexes of
 *  the variable names.
 *  @author Dr. Georg Fischer
 */
public class TranspositionSet extends ArrayList<Vector> implements Cloneable , Serializable {
    private static final long serialVersionUID = 2L;
    public final static String CVSID = "@(#) $Id: TranspositionSet.java 538 2010-09-08 15:08:36Z gfis $";

    /*----------------- construction ----- -----------------*/

    /** No-args Constructor
     */
    public TranspositionSet() {
    } // no-args Constructor

    /** Constructor from an ordered map, which stores a list of mappings
     *  between transposable variable names of a {@link RelationSet}.
     *  The variables in the corresponding {@link VariableMap}
     *  are lexicographically numbered 0, 1, 2 and so on.
     *  These indexes are permuted, and the resulting {@link Vector} is stored in
     *  <em>this</em> list whenever the RelationSet which is derived
     *  by substituting the permuted variable names {@link RelationSet#isEqualTo}
     *  the original RelationSet.
     *  The identical mapping [0,1,2...] is not stored.
     *  @param rset1 store mappings of transposable variable names for this {@link RelationSet}
     */
    public TranspositionSet(RelationSet rset1) {
        VariableMap vmap1 = rset1.getVariableMap();
        int vlen  = vmap1.size();
        
        Permutator permutator = new Permutator(vlen);
        permutator.next(); // ignore identical mapping
        while (permutator.hasNext()) { // over all permutations of variable names
            int[] perms = permutator.next();
            VariableMap pmap2 = vmap1.permuteVariables(perms);
            RelationSet rset2 = rset1.substitute(pmap2);
            // System.out.println(pmap2.toString() +  ": " + rset2.toString());
            if (rset1.isEqualTo(rset2)) {
                this.add(new Vector(perms));
            } // if isEqualTo
        } // while permutator
    } // Constructor(rset)

    /** Returns a String representation of <em>this</em> {@link TranspositionSet}
     *  @return "{[1,0,2,3],[0,1,3,2],[1,0,3,2]}", for example
     *  when a is interchangeable with b and c is interchangeable with d
     */
    public String toString() {
        StringBuffer buffer = new StringBuffer(256);
        char sep = '{';
        int ilist = 0;
        while (ilist < this.size()) {
            buffer.append(sep);
            sep = ',';
            buffer.append(this.get(ilist).toString(","));
            ilist ++;
        } // while iter
        if (buffer.length() == 0) {
            buffer.append(sep);
        }
        buffer.append('}');
        return buffer.toString();
    } // toString

    /** Gets a sorted array of the variable names
     *  @return {"0/1+4*b","0/3+4*a","2/0+4*c"}, for example
     */
    public String[] getExpressions() {
        String[] result = new String[this.size()];
        int ind = 0;
        while (ind < this.size()) {
            ind ++;
        } // while iter
        return result;
    } // getExpressions

    /** Compares two {@link TranspositionSet}s and determines whether
     *  one can be thought of as being transformed into the other
     *  by a transposition of the variable names.
     *  @param rmap2 TranspositionSet to be compared with <em>this</em>
     *  @return the empty string if no transposition can be applied,
     *  or a non-empty string indicating the variable positions
     *  involved in the transposition
     */
    public String getTransposition(TranspositionSet rmap2) {
        StringBuffer result = new StringBuffer(64);
        return result.toString();
    } // getTransposition

    /*----------------- test driver ----------------------*/
    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        RelationSet rset1 = new RelationSet(args[iarg ++]);
        TranspositionSet tset1 = new TranspositionSet(rset1);
        System.out.println(rset1.toString() + " can be transposed in " + tset1.size() + " ways:");
        System.out.println(tset1.toString());
    } // main

} // TranspositionSet
