/*  VariableMap: maps a set of variables to their values or substitution formulas
 *  @(#) $Id: VariableMap.java 538 2010-09-08 15:08:36Z gfis $
 *  2017-05-28: javadoc 1.8
 *  2016-04-25: addTo
 *  2016-01-04: getFirstName
 *  2015-09-08: substitute with divisor b = constant
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
 * Copyright 2009 Dr. Georg Fischer <dr.georg.fischer at gmail.com>
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
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.linear.Vector;
import  java.io.Serializable;
import  java.lang.IllegalArgumentException;
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

    /** Constructor from an array of variable names
     *  @param names array of variable names
     *  @param value value to be assigned to all variables
     */
    public VariableMap(String[] names, String value) {
        super();
        int iname = 0;
        while (iname < names.length) {
            this.put(names[iname], value);
            iname ++;
        } // while iname
    } // Constructor(String[])

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
     *  @param dispenser a {@link Dispenser} whose current values are put into the map.
     *  The width and the elements of the Dispenser must correspond
     *  to the ordered list of variable names in <em>this</em> VariableMap.
     */
    public void setValues(Dispenser dispenser) {
        Iterator<String> viter = this.keySet().iterator();
        int imet = 0;
        while (viter.hasNext()) {
            String name  = viter.next();
            String value = String.valueOf(dispenser.get(imet ++));
            this.put(name, value);
        } // while viter
    } // setValues

    /** Add the variables from another Map to <em>this</em> VariableMap.
     *  @param map map containing the keys and values to be added
     *  @return <em>this</em> VariableMap
     */
    public VariableMap addTo(Map<String, String> map) {
        Iterator<String> iter = map.keySet().iterator();
        while (iter.hasNext()) {
            String name  = iter.next();
            this.put(name, map.get(name));
        } // while iter
        return this;
    } // addTo

    /** Returns a {@link VariableMap} constructed from a String representation,
     *  @param input the input String, with whitespace, maybe
     *  enclosed in square or curly brackets,
     *  for example "{a=&gt;-a-1,b=&gt;-b-1,c=&gt;-c-1,d=&gt;-d-1}"
     *  The left sides are mapped to the right side by "=&gt;" or "-&gt;".
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

    /** Returns a string representation of the variable map,
     *  enclosed in curly brackets, separated by ",",
     *  and with "=&gt;" for the mapping operator.
     *  @return "{a=&gt;3,b=&gt;4,c=&gt;5}", for example
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
     *  as a comma separated list of values enclosed in square brackets.
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

    /** Gets the first variable name
     *  @return "a", for example, or null if the map is empty
     */
    public String getFirstName() {
        String result = null;
        int ind = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext() && ind < 1) {
            result = iter.next();
            ind ++;
        } // while iter
        return result;
    } // getFirstName

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

    /*----------------
        Set Operations
    */
    /** Removes from <em>this</em> VariableMap all variables
     *  occurring in a 2nd map, and returns <em>this</em> modified map
     *  @param map2 defines the keys tp be removed
     *  @return reference to <em>this</em> VariableMap which was modified
     */
    public VariableMap remove(Map<String, String> map2) {
        Iterator<String> miter = map2.keySet().iterator();
        while (miter.hasNext()) {
            String name2 = miter.next();
            this.remove(name2);
        } // while miter
        return this;
    } // remove

    /*----------------
        Arithmetics
    */
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

    /** Multiplies the variable vector of <em>this</em> {@link VariableMap}
     *  with a {@link Matrix}.
     *  @param amat a Matrix of integers with the same dimension
     *  @return reference to <em>this</em> VariableMap with the
     *  values replaced by the innerproduct of some matrix row times the variable vector.
     */
    public VariableMap multiplyBy(Matrix amat) {
        int len = this.size();
        if (amat.size() != len) {
            throw new IllegalArgumentException("VariableMap of size " + len
                    +  " cannot be multiplied by Matrix of size " + amat.size());
        } else {
            String[] names = this.getNameArray();
            int irow = 0;
            while (irow < len) {
                StringBuffer value = new StringBuffer("0");
                int icol = 0;
                while (icol < len) {
                    value.append("+(");
                    value.append(String.valueOf(amat.get(irow, icol)));
                    value.append(")*");
                    value.append(names[icol]);
                    icol ++;
                } // while icol
                this.put(names[irow], value.toString());
                irow ++;
            } // while irow
        } // != 1
        return this;
    } // multiplyBy(Matrix)

    /*----------------
        Dispensing and Permutation
    */
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
     *  @param values find in this array of Strings
     *  @param val1 find this value
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

    /** Gets a map which has the keys and values of <em>this</em> {@link VariableMap} interchanged
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
     *  @param source replace variable names in this String,
     *  which must be derived from {@link RelationSet#toString toString(1)},
     *  that is a full representation with "^1"
     *  @return the new String with variable names replaced
     */
    public String substitute(String source) {
        return substitute(source, true);
    } // substitute(String)

    /** Substitutes variable names with the expressions from <em>this</em> Map (if they are not null),
     *  and returns the replaced String.
     *  @param source replace variable names in this String,
     *  which must be derived from {@link RelationSet#toString toString(1)},
     *  that is a full representation with "^1"
     *  @param upperSubst whether to substitute uppercase variables (default: true)
     *  @return the new String with variable names replaced
     */
    public String substitute(String source, boolean upperSubst) {
        String result = source; // full representation contains "*var^" for all variables
        String name = null;
        String expr = null;
        Iterator <String>
        viter = this.keySet().iterator();
        int
        index = 0;
        while (viter.hasNext()) { // over all variables to be substituted
            name = viter.next();
            if (upperSubst || name.charAt(0) >= 'a') {
                result = result.replaceAll("\\*" + name + "\\^", "*#" + index + "#^");
            } // if upperSubst
            index ++;
        } // while viter 1

        viter = this.keySet().iterator();
        index = 0;
        while (viter.hasNext()) { // over all variables to be substituted
            name = viter.next();
            if (upperSubst || name.charAt(0) >= 'a') {
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
                } // expr != null
            } // if upperSubst
            index ++;
        } // while viter 2
        return result;
    } // substitute

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
            vmap.multiplyBy(new Matrix("[[1, -2, 2], [2, -1, 2], [2, -2, 3]]")); // Barning A
            System.out.println("multiplied: " + vmap.toString());
            vmap.put("d2", "0");
            System.out.println("vmap = " + vmap.toString());
        } else if (iarg + 1 == args.length){
            vmap = VariableMap.parse(args[iarg ++]);
            System.out.println(vmap.toString());
        }
    } // main

} // VariableMap
