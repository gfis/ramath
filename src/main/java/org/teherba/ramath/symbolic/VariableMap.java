/*  VariableMap: maps a set of variables to their values or substitution formulas
 *  @(#) $Id: VariableMap.java 538 2010-09-08 15:08:36Z gfis $
 *  2015-02-08: Dispenser instead of ModoMeter
 *  2014-06-02: SAME
 *  2014-04-04: triviality, refineExpressions
 *  2013-09-23: renamed from ValueMap
 *  2013-08-23: Serializable
 *  2010-09-06: accumulate
 *  2009-10-13, Georg Fischer: copied from Polynomial
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.util.Dispenser;
import  org.teherba.ramath.util.ModoMeter; // for test only
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.HashSet; // for triviality
import  java.util.Map;
import  java.util.TreeMap;

/** Maps a set of variables to their values (constants) or
 *  expressions/substitution formulas, still with variables.
 *  The keys (names of the variables) of the mapping are sorted.
 *  Normally, the values are string representations of BigIntegers.
 *  @author Dr. Georg Fischer
 */
public class VariableMap extends TreeMap<String, String> implements Cloneable , Serializable {
    private static final long serialVersionUID = 2L;
    public final static String CVSID = "@(#) $Id: VariableMap.java 538 2010-09-08 15:08:36Z gfis $";

    /*----------------- construction ----- -----------------*/

    /** No-args Constructor
     */
    public VariableMap() {
        super();
    } // no-args Constructor

    /** Constructor from map which is cloned, with the variable names as values.
     *  @param map map containing the keys for the new map;
     *  the values of <em>map</em> are ignored.
     */
    public VariableMap(Map<String, String> map) {
        super();
        Iterator<String> iter = map.keySet().iterator();
        while (iter.hasNext()) {
            String name = (String) iter.next();
            this.put(name, (String) map.get(name));
        } // while iter
    } // Constructor(TreeMap)

    /** Constructor with map and single value
     *  @param map map containing the keys for the new map;
     *  the values of <em>map</em> are ignored.
     *  @param value all names in the new map are mapped to this same value
     */
    public VariableMap(Map<String, String> map, String value) {
        this(map, value, true);
    } // Constructor(TreeMap, String)

    /** Construct a copy from a Map and set the values to some constant.
     *  @param map map containing the keys for the new map;
     *  the values of <em>map</em> are ignored.
     *  @param value all names in the new map are mapped to this same value
     *  @param upperSubst whether uppercase variables should be returned in the map
     */
    public VariableMap(Map<String, String> map, String value, boolean upperSubst) {
        super();
        Iterator<String> iter = map.keySet().iterator();
        while (iter.hasNext()) {
            String name = (String) iter.next();
            if (upperSubst || name.compareTo("a") >= 0) {
                this.put(name, value);
            } // if upperSubst
        } // while iter
    } // Constructor(TreeMap, String, boolean)

    /** Clone <em>this</em> map
     */
    public VariableMap clone() {
        return new VariableMap(this);
    } // clone

    /*-------------- state codes -----------------------------*/
    /** state of the variable mapping during the search for solutions */
    private String solutionState;
    /** Result message for cases which are definitely non-solvable */
    public static final String FAILURE   = "failure";
    /** Result message for cases which definitely have a known solution */
    public static final String SUCCESS   = "success";
    /** Result message for cases which cannot (yet) be decided */
    public static final String UNKNOWN   = "unknown";
    /** Result message for a recursion to a similiar RelationSet */
    public static final String SIMILIAR  = "similiar";
    /** Result message for a recursion to the same   RelationSet */
    public static final String SAME      = "same";

    /** Gets the solution state
     *  @return one of the codes for failure, success or unknown
     */
    public String getState() {
        return solutionState;
    } // getState
    /** Sets the solution state
     *  @param state one of the codes for failure, success or unknown
     */
    public void setState(String state) {
        solutionState = state;
    } // setState

    /*-------------- lightweight methods -----------------------------*/

    /** Returns a string representation of the variable map
     *  @return "{a=3,b=4,c=5}", for example
     */
    public String toString() {
        StringBuffer buffer = new StringBuffer(256);
        buffer.append("{");
        int count = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String name = iter.next();
            count ++;
            if (count > 1) {
                buffer.append(",");
            }
            buffer.append(name);
            buffer.append("=");
            buffer.append(this.get(name).toString());
        } // while iter
        buffer.append("}");
        return buffer.toString();
    } // toString

    /** Returns a short string representation of the values in the variable map
     *  @return "[3,4,5]", for example
     */
    public String toVector() {
        StringBuffer buffer = new StringBuffer(256);
        buffer.append("[");
        int count = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String name = iter.next();
            count ++;
            if (count > 1) {
                buffer.append(",");
            }
            buffer.append(this.get(name).toString());
        } // while iter
        buffer.append("]");
        return buffer.toString();
    } // toVector

    /** Gets a sorted array of the variable names
     *  @return ["a", "b", "c"], for example
     */
    public String[] getNameArray() {
        String[] result = new String[this.size()];
        int ind = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String name = iter.next();
            result[ind ++] = name;
        } // while iter
        return result;
    } // getNameArray

    /** Determines a code for the triviality of the mapping:
     *  <ul>
     *  <li>1: one of the variables maps to zero</li>
     *  <li>2: there are 2 variables which map to the same value</li>
     *  <li>3: both of the conditions above</li>
     *  <li>0: none of the conditions above</li>
     *  </ul>
     *  @return a code for the triviality of a solution
     */
    public int triviality() {
        int result = 0;
        HashSet<String> valSet = new HashSet<String>(16);
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String key = iter.next();
            String value = this.get(key);
            int plus1 = value.indexOf('+') + 1; // =0 if not found
            value = value.substring(plus1);
            if (value.equals("0")) { // ||
                result |= 0x01;
            }
            if (valSet.contains(value)) {
                result |= 0x02;
            } else {
                valSet.add(value);
            }
        } // while iter
        return result;
    } // triviality

    /** Refines the expressions in <em>this</em> VariableMap
     *  by one level of modulus expansion.
     *  @param dispenser current state of a {@link Dispenser} containing the
     *  factors (the bases) and the constants (the values) for the modification
     *  of the mapped expressions. 
     *  The underlying integer array is parallel to the sorted list of variable names.
     *  For a mapping x -> c+f*x and corresponding dispenser value m mod b,
     *  the new expression is c + f*(m+b*x) = (c+f*m) + (f*b)*x 
     *  Caution: this form of the expression is initiated by {@link Polynomial#getExpressionMap}().
     *  @return a new VariableMap with the variables mapped to the refined expressions
     */
    public VariableMap refineExpressions(Dispenser dispenser) {
        VariableMap result = new VariableMap();
        // System.out.println(this.toString() + ".refineExpressions(dispenser)");
        Iterator<String> iter = this.keySet().iterator();
        int idisp = 0;
        while (iter.hasNext()) {
            String key   = iter.next();
            String value = this.get(key); // this has the form "c+f*x"
            int starPos  = value.indexOf('*');
            int plusPos  = value.indexOf('+');
            BigInteger base     = BigInteger.valueOf(dispenser.getBase(idisp));
            BigInteger modulus  = BigInteger.valueOf(dispenser.get    (idisp));
            BigInteger factor   = (new BigInteger(value.substring(plusPos + 1, starPos)));
            BigInteger constant = (new BigInteger(value.substring(0, plusPos))).add(factor.multiply(modulus));
            result.put(key, constant.toString() + "+" + (factor.multiply(base).toString()) + "*" + key);
            idisp ++;
        } // while iter
        return result;
    } // refineExpressions

    /*----------------- test driver ----------------------*/
    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int width = 3;
        VariableMap vmap = new VariableMap();
        vmap.put("a" , "3");
        vmap.put("b" , "4");
        vmap.put("c" , "5");
        System.out.println("vmap = " + vmap.toString() + "; vmap.triviality() = " + vmap.triviality());
        vmap.put("b" , "5");
        System.out.println("vmap = " + vmap.toString() + "; vmap.triviality() = " + vmap.triviality());
        vmap.put("d2", "0");
        System.out.println("vmap = " + vmap.toString() + "; vmap.triviality() = " + vmap.triviality());

        vmap.put("a" , "2+4*a");
        vmap.put("b" , "3+4*b");
        vmap.put("c" , "0+2*c");
        vmap.put("d2", "1+2*d2");
        ModoMeter meter = new ModoMeter(4); // binary
        for (int iloop = 0; iloop < 15; iloop ++) { // turn it several times
            meter.next();
        } // while
        System.out.print(vmap.toString()); // before refinement
        System.out.println(" refined by [" + meter.toString() + "]: "
                + vmap.refineExpressions(meter).toString());
    } // main

} // VariableMap
