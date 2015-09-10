/*  VariableMap: maps a set of variables to their values or substitution formulas
 *  @(#) $Id: VariableMap.java 538 2010-09-08 15:08:36Z gfis $
 *  2015-09-08: substitute with division b constant
 *  2015-08-30: deflateIt
 *  2015-08-19: multiplyBy, substitute
 *  2015-04-26: old_triviality returns String
 *  2015-03-02: refineExpressions(, skippable)
 *  2015-02-08: Dispenser instead of ModoMeter
 *  2014-06-02: SAME
 *  2014-04-04: old_triviality, refineExpressions
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
import  org.teherba.ramath.symbolic.PolyVector;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.util.Dispenser;
import  org.teherba.ramath.linear.Vector;
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.HashSet; // for old_triviality
import  java.util.Map;
import  java.util.TreeMap;

/** Maps a set of variables to their values (constants) or
 *  expressions/substitution formulas, still with variables.
 *  The keys (names of the variables) of the mapping are sorted.
 *  Normally, the values are string representations of BigIntegers.
 *  @author Dr. Georg Fischer
 */
public class VariableMap extends TreeMap<String, String> implements Cloneable, Serializable {
    private static final long serialVersionUID = 2L;
    public final static String CVSID = "@(#) $Id: VariableMap.java 538 2010-09-08 15:08:36Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = maximum verbosity */
    public static int debug = 0;
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
            String name  = iter.next();
            this.put(name, map.get(name));
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
            String name = iter.next();
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

    /** Sets the values of <em>this</em> VariableMap.
     *  @param meter a {@link Dispenser} whose current values are put into the map.
     *  The width and the elements of the Dispenser must correspond
     *  to the ordered list of variable names in <em>this</em> VariableMap.
     */
    public void setValues(Dispenser meter) {
        Iterator<String> viter = this.keySet().iterator();
        int imet = 0;
        while (viter.hasNext()) {
            String name  = viter.next();
            String value = String.valueOf(meter.get(imet ++));
            this.put(name, value);
        } // while viter
    } // setValues

    /** Returns a {@link VariableMap} constructed from a String representation,
     *  @param input the input String, with whitespace, maybe Vector or set brackets,
     *  for example "{a=>-a-1,b=>-b-1,c=>-c-1,d=>-d-1}"
     *  @return a reference to a new {@link VariableMap}
     */
    public static VariableMap parse(String input) {
        VariableMap result = new VariableMap();
        String[] elems = input.replaceAll("[\\s\\[\\]\\{\\}\\(\\)]", "") // remove whitespace and brackets [] {} ()
                .split("[\\,\\;]"); // "," or ";"
        int ielem = 0;
        while (ielem < elems.length) {
            String[] pair = elems[ielem].split("[\\=\\-]\\>"); // "=>" or "->"
            if (debug > 0) {
                System.out.println("elems[" + ielem + "]=" + elems[ielem]);
            }
            if (pair.length == 1) { // key/variable is missing, derive it from (the refined) value/expression
                String temp = pair[0].replaceAll("\\A[\\W\\d]+", ""); // remove leading non-letters
                temp = temp.replaceAll("\\W.+", ""); // remove all behind 1st non-word character
                pair = new String[] { temp, pair[0] };
            }
            if (debug > 0) {
                System.out.println("pair[0]=" + pair[0] + ", pair[1]=" + pair[1]);
            }
            result.put(pair[0], pair[1]);
            ielem ++;
        } // while ielem
        return result;
    } // parse

    /*-------------- state codes -----------------------------*/
    /** Result message for cases which are definitely non-solvable */
    public static final String FAILURE   = "failure";
    /** Result message for cases which have a known solution */
    public static final String SUCCESS   = "success";
    /** Result message for cases which cannot (yet) be decided */
    public static final String UNKNOWN   = "unknown";
    /** Result message for a recursion to a similiar {@link RelationSet} */
    public static final String SIMILIAR  = "similiar";
    /** Result message for a recursion to the same   {@link RelationSet} */
    public static final String SAME      = "same";

    /*-------------- lightweight methods -----------------------------*/

    /** Returns a string representation of the variable map
     *  @return "{a=3,b=4,c=5}", for example
     */
    public String toString() {
        StringBuffer result = new StringBuffer(256);
        result.append("{");
        int count = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String name = iter.next();
            count ++;
            if (count > 1) {
                result.append(",");
            }
            result.append(name);
            result.append("=>");
            result.append(this.get(name).toString()
                    .replaceAll("\\+1\\*", "+")
                    .replaceAll("\\A0\\+", "")
                    );
        } // while iter
        result.append("}");
        return result.toString();
    } // toString

    /** Returns a short string representation of the values in the variable map
     *  @return "[3,4,5]", for example
     */
    public String toVector() {
        StringBuffer result = new StringBuffer(256);
        result.append("[");
        int count = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String name = iter.next();
            count ++;
            if (count > 1) {
                result.append(",");
            }
            result.append(this.get(name).toString());
        } // while iter
        result.append("]");
        return result.toString();
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

    /** Gets a concatenated String of the names/keys separated by commas
     *  @return "a,b,c" for example
     */
    public String getNameString() {
        StringBuffer result = new StringBuffer(64);
        int ind = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String name = iter.next();
            if (ind > 0) {
                result.append(',');
            }
            result.append(name);
            ind ++;
        } // while iter
        return result.toString();
    } // getNameString

    /** Gets a sorted array of the values
     *  @return ["1+8*a", "1+8*b", "5+8*c"], for example
     */
    public String[] getValueArray() {
        String[] result = new String[this.size()];
        int ind = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String name = iter.next();
            result[ind ++] = this.get(name);
        } // while iter
        return result;
    } // getValueArray

    /** Multiplies all values of <em>this</em> {@link VariableMap}
     *  with a {@link BigInteger}.
     *  The values must be valid {@link Polynomial} expressions.
     *  @param number multiply with this BigInteger
     *  @return reference to <em>this</em> VariableMap which was modified
     */
    public VariableMap multiplyBy(BigInteger number) {
        if (! number.equals(BigInteger.ONE)) {
            Iterator<String> iter = this.keySet().iterator();
            while (iter.hasNext()) {
                String varName = iter.next();
                this.put(varName, (new Polynomial(get(varName)).multiplyBy(number).toString()));
            } // while iter
        } // != 1
        return this;
    } // multiplyBy(number)

    /** Multiplies all values of <em>this</em> {@link VariableMap}
     *  by -1.
     *  The values must be valid {@link Polynomial} expressions.
     *  @return reference to <em>this</em> VariableMap which was modified
     */
    public VariableMap negativeOf() {
            Iterator<String> iter = this.keySet().iterator();
            while (iter.hasNext()) {
                String varName = iter.next();
                String expr    = this.get(varName);
                if (expr.startsWith("-(")) {
                    this.put(varName, (new Polynomial(this.get(varName)).negativeOf().toString()));
                } else {
                    this.put(varName, "-(" + expr + ")");
                }
            } // while iter
        return this;
    } // negativeOf

    /** Refines the expressions in <em>this</em> VariableMap
     *  by one level of modulus expansion.
     *  @param dispenser current state of a {@link Dispenser} containing the
     *  factors (the bases) and the constants (the values) for the modification
     *  of the mapped expressions.
     *  If dispenser.base = 1 then factor = 1, constant = 0, i.e. the variable is unchanged.
     *  The underlying integer array is parallel to the sorted list of variable names.
     *  For a mapping x -> c+f*x and corresponding dispenser value m mod b,
     *  the new expression is c + f*(m+b*x) = (c+f*m) + (f*b)*x.
     *  @return a new {@link RefiningMap} with the variables mapped to the refined expressions
     */
    public RefiningMap getRefiningMap(Dispenser dispenser) {
        RefiningMap result = new RefiningMap();
        Iterator<String> iter = this.keySet().iterator();
        int idisp = 0;
        while (iter.hasNext()) {
            int b = dispenser.getBase(idisp);
            int m = dispenser.get    (idisp);
            String key   = iter.next();
            BigInteger base     = BigInteger.valueOf(b);
            BigInteger module   = BigInteger.valueOf(m);
            String value = this.get(key); // REFINED_FORM - this has the form "c+f*x"
            int starPos  = value.indexOf('*');
            int plusPos  = value.indexOf('+');
            BigInteger factor   = (new BigInteger(value.substring(plusPos + 1, starPos)));
            BigInteger constant = (new BigInteger(value.substring(0, plusPos))).add(factor.multiply(module));
            result.put(key, constant.toString() + "+" + (factor.multiply(base).toString()) + "*" + key);
            idisp ++;
        } // while iter
        return result;
    } // getRefiningMap

    /** Gets a map to permuted variable names
     *  @param perms indexes for permutation of variable names
     *  of the keys = variable names.
     *  @return a new {@link VariableMap} with the variables mapped to some permutation
     */
    public VariableMap permuteVariables(int[] perms) {
        VariableMap result = new VariableMap();
        String[] names = this.getNameArray();
        Iterator<String> iter = this.keySet().iterator();
        int idisp = 0;
        while (iter.hasNext()) {
            String key = iter.next();
            int index  = perms[idisp];
            result.put(key, names[index]);
            idisp ++;
        } // while iter
        return result;
    } // permuteVariables


    /** Determines the index position of a value in a String array
     *  @param value find this value
     *  @return -1 if the value was not found, or the array index
     */
    public static int indexOf(String[] values, String val1) {
        int result = -1; // not yet found
        int ielem = 0;
        while (result < 0 && ielem < values.length) {
            if (values[ielem].equals(val1)) {
                result = ielem;
            }
            ielem ++;
        } // while ielem
        return result;
    } // indexOf

    /** Gets a numeric representation of a permutation mapping between variables.
     *  This is the inverse method of {@link #permuteVariables}.
     *  @return a {@link Vector} with natural indexes of the permuted value set
     */
    public Vector getPermutationVector() {
        Vector result = new Vector(this.size());
        String[] names = this.getNameArray();
        Iterator<String> iter = this.keySet().iterator();
        int iold = 0;
        while (iter.hasNext()) {
            String oldName = iter.next();
            String newName = this.get(oldName);
            int inew = indexOf(names, newName);
            if (inew < 0) {
                System.err.println("??? assertion in getPermutationVector: " +  newName
                        + " not found; vmap=" + this.toString()
                        + ", iold="    + iold    + ", inew="    + inew
                        + ", oldName=" + oldName + ", newName=" + newName);
                inew = iold;
            }
            result.set(iold, inew);
            iold ++;
        } // while iter
        return result;
    } // getPermutationVector

    /** Gets a map which has the keys and values of <em>this</em> {@link VeriableMap} interchanged
     *  @return a new {@link VariableMap} with the keys as values and vice versa
     */
    public VariableMap inverse() {
        VariableMap result = new VariableMap();
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String key = iter.next();
            result.put(this.get(key), key);
        } // while iter
        return result;
    } // inverse

    /** Substitutes variable names with the expressions from <em>this</em> Map (if they are not null),
     *  and returns the replaced String.
     *  Whether uppercase variables should be replaced must already be defined in this map.
     *  @param source replace variable names in this String, 
     *  which must be derived from {@link RelationSet#toString toString(true)},
     *  that is a full representation with "^1" 
     *  @return the new String with variable names replaced
     */
    public String substitute(String source) {
        String result = source; // full representation contains "*var^" for all variables
        String name = null;
        String expr = null;
        Iterator <String>
        viter = this.keySet().iterator();
        int
        index = 0;
        while (viter.hasNext()) { // over all variables to be substituted
            name = viter.next();
            result = result.replaceAll("\\*" + name + "\\^", "*#" + index + "#^");
            index ++;
        } // while viter 1

        viter = this.keySet().iterator();
        index = 0;
        while (viter.hasNext()) { // over all variables to be substituted
            name = viter.next();
            expr = this.get(name);
            if (expr != null) {
                int dpos = expr.indexOf("/"); // assume that only a single number follows
                if (dpos < 0) { // no division
                    result = result.replaceAll("\\*\\#" + index + "\\#\\^"      , "*(" + expr + ")^");
                } else { // with division: separate any exponentiation
                    String dividend = expr.substring(0, dpos);
                    String divisor  = expr.substring(dpos + 1);
                    result = result.replaceAll("\\*\\#" + index + "\\#\\^(\\d+)", "*(" + dividend + ")^$1/" + divisor + "^$1");
                } // with division
            }
            index ++;
        } // while viter 2
        return result;
    } // substitute

    /*
                    Matcher verbMatcher = verbPattern.matcher(testLine);
                    if (verbMatcher.matches()) {
                        String verb     = verbMatcher.group(1).toUpperCase();
                        String rest     = verbMatcher.group(2).trim();
    */

    /*----------------- test driver ----------------------*/
    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        int width = 3;
        VariableMap vmap = new VariableMap();
        if (iarg == args.length) {
            vmap.put("a" , "3");
            vmap.put("b" , "4");
            vmap.put("c" , "5");
            System.out.println("vmap = " + vmap.toString());
            vmap.put("b" , "5");
            System.out.println("vmap = " + vmap.toString());
            vmap.put("d2", "0");
            System.out.println("vmap = " + vmap.toString());
        } else if (iarg + 1 == args.length){
            vmap = VariableMap.parse(args[iarg ++]);
            System.out.println(vmap.toString());
        }
    } // main

} // VariableMap
