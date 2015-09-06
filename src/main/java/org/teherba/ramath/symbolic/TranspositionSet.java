/*  TranspositionSet: a set of mappings between transposable variable names
 *  @(#) $Id: TranspositionSet.java 538 2010-09-08 15:08:36Z gfis $
 *  2015-09-03, Georg Fischer
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
import  java.util.Iterator;

/** Stores a list of mappings between transposable variable names of a {@link RelationSet}.
 *  The mappings are defined by {@link Vector}s containing the natural indexes of
 *  the variable names.
 *  @author Dr. Georg Fischer
 */
public class TranspositionSet extends ArrayList<Vector> implements Cloneable , Serializable {
    private static final long serialVersionUID = 2L;
    public final static String CVSID = "@(#) $Id: TranspositionSet.java 538 2010-09-08 15:08:36Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = maximum verbosity */
    public int debug = 0;

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
        VariableMap vmap0 = rset1.getVariableMap();
        VariableMap vmap1 = vmap0.clone();
        VariableMap dmap1 = rset1.getDependantMap(); // child  -> parent, w -> a
        VariableMap dinv1 = dmap1.inverse();         // parent -> child,  a -> w
        boolean hasDependants = false;
        
        Iterator<String> diter = dmap1.keySet().iterator();
        if (! hasDependants && vmap0.size() > 2) { // 2 are always not dependant
            while (diter.hasNext()) {
                String child  = diter.next();
                // String parent = dmap1.get(child);
                vmap1.remove(child); // remove all dependants from vmap1
                hasDependants = true;
            } // while diter
        } // if hasDependants
        if (debug > 0) {
            System.out.println("hasDependants=" + hasDependants
                    + ", dmap1=" + dmap1.toString() + ", dinv1=" + dinv1.toString()
                    + ", vmap1=" + vmap1.toString());
        }
        
        Permutator permutator = new Permutator(vmap1.size());
        permutator.next(); // ignore identical (first) mapping
        while (permutator.hasNext()) { // over all permutations of variable names
            int[] perms = permutator.next();
            VariableMap pmap2 = vmap1.permuteVariables(perms); // maps original to permuted variables
            if (hasDependants) { // add corresponding permutations of children
                Iterator<String> piter = dinv1.keySet().iterator();
                while (piter.hasNext()) {
                    String oldParent = piter.next();          // a
                    String oldChild  = dinv1.get(oldParent);  // w
                    String newParent = pmap2.get(oldParent);  // b
                    String newChild  = dinv1.get(newParent);  // x
                    if (newChild != null) {
                        pmap2.put(oldChild, newChild);        // w -> x
                    } // newChild != null
                    if (debug > 0) {
                        System.out.println("perms=" + (new Vector(perms)).toString(",")
                                + ", oldParent=" + oldParent + ", oldChild=" + oldChild
                                + ", newParent=" + newParent + ", newChild=" + newChild
                                );
                    }
                } // while diter            
            } // hasDependants
            RelationSet rset2 = rset1.substitute(pmap2);
            boolean same = rset1.isEqualTo(rset2);
            if (debug > 0) {
                System.out.println("pmap2=" + pmap2.toString()
                        + ", rset1=" + rset1.toString() + ", rset2=" + rset2.toString() + " => " + same);
            }
            if (same) {
	            Vector vperm = pmap2.getPermutationVector(); 
                this.add(vperm);
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

    /** Compares two value sets (refinement expression)
     *  and tests whether there is a permutation stored in <em>this</em> {@link TranspositionSet}
     *  which transposes the 1st value set into the 2nd.
     *  @return the first permutation {@link Vector} if one was found, or null
     */
    public Vector testPermutation(String[] origExprs, String[] permExprs) {
        Vector result = null;
        int len = origExprs.length;
        // assertion: orig.length == perm.length
        int itset = this.size() - 1;
        while (result == null && itset >= 0) {
            int[] perms = this.get(itset).getValues(); // e.g. [1,0,2,3]
            int iperm = 0;
            boolean same = true; // assume success
            while (same && iperm < len) {
                if (! origExprs[perms[iperm]].equals(permExprs[iperm])) {
                    same = false;
                }
                iperm ++;
            } // while istr
            if (same) {
                result = this.get(itset);
            }
            itset --;
        } // while iter
        return result;
    } // testPermutation

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
        if (tset1.size() > 0) {
            String[] origExprs = args[iarg ++].split("\\,");
            String[] permExprs = args[iarg ++].split("\\,");
            Vector testResult = tset1.testPermutation(origExprs, permExprs);
            System.out.println("tset1.testTransposition(\""
                    + args[iarg - 2] + "\", \"" + args[iarg - 1]
                    + "\") = " + (testResult == null ? "null" : testResult.toString(",")));
        } // size > 0
    } // main

} // TranspositionSet
