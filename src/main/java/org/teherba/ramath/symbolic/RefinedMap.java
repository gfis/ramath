/*  RefinedMap: maps a set of refined expressions to their position in the variable map
 *  @(#) $Id: RefinedMap.java 538 2010-09-08 15:08:36Z gfis $
 *  2015-02-23, Georg Fischer: copied from VariableMap
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
import  org.teherba.ramath.linear.Vector;
import  java.io.Serializable;
import  java.util.Iterator;
import  java.util.TreeMap;

/** Maps a set of (distinct) linear expressions with variables
 *  to their positions in the original {@link VariableMap} from which
 *  it was derived, for Example
 *  <pre>
 *  VariableMap: {a =  3+4*a, b =  1+4*b, c =  0+4*c}
 *  RefinedMap:  {0/1+4*b => 1, 0/3+4*a => 0, 1947/0+4*c => 1947}
 *  </pre>
 *  The expressions are prefixed by the index of the equivalence class.
 *  @author Dr. Georg Fischer
 */
public class RefinedMap extends TreeMap<String, Integer> implements Cloneable , Serializable {
    private static final long serialVersionUID = 2L;
    public final static String CVSID = "@(#) $Id: RefinedMap.java 538 2010-09-08 15:08:36Z gfis $";

    /*----------------- construction ----- -----------------*/

    /** No-args Constructor
     */
    public RefinedMap() {
        super();
    } // no-args Constructor

    /** Constructor from an ordered map.
     *  The new keys are the values of the parameter map,
     *  and the new values are the sequential positions in the parameter map
     *  @param tmap ordered map containing the values which become keys in the new map;
     *  the keys of <em>tmap</em> are ignored.
     */
    public RefinedMap(TreeMap<String, String> tmap) {
        super();
        int ipos = 0;
        Iterator<String> iter = tmap.keySet().iterator();
        while (iter.hasNext()) {
            String key  = (String) iter.next();
            this.put((String) tmap.get(key), new Integer(ipos));
            ipos ++;
        } // while iter
    } // Constructor(TreeMap)

     /** Constructor from an ordered map.
     *  The new keys are the values of the parameter map,
     *  and the new values are the sequential positions in the parameter map
     *  @param tmap ordered map containing the values which become keys in the new map;
     *  the keys of <em>tmap</em> are ignored.
     *  @param transposables a Vector of variable name equivalence classes
     */
    public RefinedMap(TreeMap<String, String> tmap, Vector transposables) {
        super();
        int ipos = 0;
        Iterator<String> iter = tmap.keySet().iterator();
        while (iter.hasNext()) {
            String key = (String) iter.next();
            this.put(String.valueOf(transposables.get(ipos)) + "/" + ((String) tmap.get(key)), new Integer(ipos));
            ipos ++;
        } // while iter
    } // Constructor(TreeMap)

    /** Clone <em>this</em> map
     */
    public RefinedMap clone() {
        RefinedMap result = new RefinedMap();
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String key = (String) iter.next();
            result.put(key, this.get(key));
        } // while iter
        return result;
    } // clone

    /** Returns a string representation of the variable map
     *  @return "{0/1+4*b=>1,0/3+4*a=>0,2/0+4*c=>2}", for example
     */
    public String toString() {
        StringBuffer buffer = new StringBuffer(256);
        buffer.append("{");
        int count = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String key = iter.next();
            count ++;
            if (count > 1) {
                buffer.append(",");
            }
            buffer.append(key);
            // buffer.append("=>");
            // buffer.append(String.valueOf(this.get(key)));
        } // while iter
        buffer.append("}");
        return buffer.toString();
    } // toString

    /** Gets a sorted array of the variable names
     *  @return {"0/1+4*b","0/3+4*a","2/0+4*c"}, for example
     */
    public String[] getExpressions() {
        String[] result = new String[this.size()];
        int ind = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String key = iter.next();
            result[ind ++] = key;
        } // while iter
        return result;
    } // getExpressions
    
    /** Compares two {@link RefinedMap}s and determines whether 
     *  one can be thought of as being transformed into the other 
     *  by a transposition of the variable names.
     *  @param rmap2 RefinedMap to be compared with <em>this</em>
     *  @return the empty string if no transposition can be applied,
     *  or a non-empty string indicating the variable positions 
     *  involved in the transposition
     */
    public String getTransposition(RefinedMap rmap2) {
        StringBuffer result = new StringBuffer(64);
        Iterator<String> iter1 = this .keySet().iterator();
        Iterator<String> iter2 = rmap2.keySet().iterator(); // must be parallel
        int count = 0;
        boolean parallel = true; // assume success
        while (iter1.hasNext() && parallel) {
            String key1 = iter1.next(); // REFINED_FORM: "0/3+4*a"
            String key2 = iter2.next();
            int multPos1 = key1.indexOf('*');
            int multPos2 = key2.indexOf('*');
            parallel = key1.substring(0, multPos1).equals(key2.substring(0, multPos2)); // same constants and factors
            if (parallel && ! key1.equals(key2)) {
                count ++;
                if (count > 1) { // not first
                    result.append(" ");
                } // not first
                result.append(key1.substring(key1.indexOf("/") + 1));
                result.append('|');
                result.append(key2.substring(key2.indexOf("/") + 1));
            } // parallel
        } // while iter1
        if (! parallel) { // difference found
            result.setLength(0); // truncate all
        } // difference
        return result.toString();
    } // getTransposition

    /*----------------- test driver ----------------------*/
    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        RefinedMap rmap1 = new RefinedMap();
        rmap1.put("3+4*a" , 0); // REFINED_FORM
        rmap1.put("1+4*b" , 1);
        rmap1.put("0+4*c" , 2);
        System.out.println("toString: " + rmap1.toString());
        RefinedMap rmap2 = new RefinedMap();
        rmap2.put("1+4*a" , 0); // REFINED_FORM
        rmap2.put("3+4*b" , 1);
        rmap2.put("0+4*c" , 2);
        Vector transposables = new Vector(new int[]{ 0, 0, 2});
        System.out.println(rmap1.toString() + ".getTransposition(" + rmap2.toString() + ") = " 
                + rmap1.getTransposition(rmap2));
    } // main
    
} // RefinedMap
