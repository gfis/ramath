/*  VariableMap: maps a set of variables to their values or substitution formulas
 *  @(#) $Id: VariableMap.java 538 2010-09-08 15:08:36Z gfis $
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
import  org.teherba.ramath.util.Dispenser;
import  org.teherba.ramath.util.ModoMeter; // for test only
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

    /*-------------- state codes -----------------------------*/
    /** state of the variable mapping during the search for solutions */
    private String solutionState;
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

    /** Gets a solution, that
     *  are the constants of the expressions for refined variables.
     *  @return "[3,4,5]", for example
     *  Caution: the form of the expressions must be c+f*x;
     *  this is initiated by {@link Polynomial#getExpressionMap}().
     */
    public String getConstants() {
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
            String value = this.get(name).toString();
            int plusPos = value.indexOf("+");
            if (plusPos < 0) {
                plusPos = value.length();
            }
            result.append(value.substring(0, plusPos)); // REFINED_FORM
        } // while iter
        result.append("]");
        return result.toString();
    } // getConstants

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

    /** Gets a {@link PolyVector} 
     *  of the constant expressions when refined variables are substituted from a 
     *  binary {@link Dispenser}.
     *  @return for example: [3,4] for this={x->3+2*x, y->0+4*y} and meter=[0,1] 
     *  Caution: the form of the expressions must be c+f*x;
     *  this is initiated by {@link Polynomial#getExpressionMap}().
     */
    public PolyVector getMeteredValues(Dispenser meter) {
        PolyVector result = new PolyVector(this.size());
        Iterator<String> iter = this.keySet().iterator();
        int iname = 0;
        while (iter.hasNext()) {
            String name  = iter.next();
            String value = this.get(name);
            String digit = String.valueOf(meter.get(iname));
            int behindTimes = value.indexOf("*") + 1;
            if (behindTimes <= 0) {
                behindTimes = value.length();
            } 
            result.set(iname, new Polynomial(value.substring(0, behindTimes) + String.valueOf(digit)));  // REFINED_FORM
            iname ++;
        } // while iter
        return result;
    } // getMeteredValues

    /** Refines the expressions in <em>this</em> VariableMap
     *  by one level of modulus expansion.
     *  @param dispenser current state of a {@link Dispenser} containing the
     *  factors (the bases) and the constants (the values) for the modification
     *  of the mapped expressions.
     *  If dispenser.base = 1 then factor = 1, constant = 0, i.e. the variable is unchanged.
     *  @param skippable 1 if the highest meter value indicates that the value should not be used, 0 otherwise.
     *  The underlying integer array is parallel to the sorted list of variable names.
     *  For a mapping x -> c+f*x and corresponding dispenser value m mod b,
     *  the new expression is c + f*(m+b*x) = (c+f*m) + (f*b)*x.
     *  Caution: This form of the expression is initiated by {@link Polynomial#getExpressionMap}().
     *  @return a new VariableMap with the variables mapped to the refined expressions
     */
    public VariableMap refineExpressions(Dispenser dispenser, int skippable) {
        VariableMap result = new VariableMap();
        // System.out.println(this.toString() + ".refineExpressions(dispenser)");
        Iterator<String> iter = this.keySet().iterator();
        int idisp = 0;
        while (iter.hasNext()) {
            int b = dispenser.getBase(idisp);
            int m = dispenser.get    (idisp);
            String key   = iter.next();
            if (skippable == 1 && m == b - 1) { // skipped = not refined
                b = 1;
                m = 0;
            } else {
                b = b - skippable;
            }
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
    } // refineExpressions

    /** Substitutes variable names with the expressions from <em>this</em> Map (if they are not null),
     *  and returns the replaced String.
     *  Whether uppercase variables should be replaced must already be defined in this map.
     *  @param source replace variable names in this String
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
            if (name != null) {
                    // result = result.replaceAll("\\*" + name + "\\^", "*(" + expr + ")^");
                    result = result.replaceAll("\\*" + name + "\\^", "*#" + index + "#^");
            } // if valid mapping
            index ++;
        } // while viter 1

        viter = this.keySet().iterator();
        index = 0;
        while (viter.hasNext()) { // over all variables to be substituted
            name = viter.next();
            if (true && name != null) {
                expr = this.get(name);
                if (true && expr != null) {
                    result = result.replaceAll("\\*\\#" + index + "\\#\\^", "*(" + expr + ")^");
                }
            } // if valid mapping
            index ++;
        } // while viter 2
        return result;
    } // substitute

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
        System.out.println("vmap = " + vmap.toString());
        vmap.put("b" , "5");
        System.out.println("vmap = " + vmap.toString());
        vmap.put("d2", "0");
        System.out.println("vmap = " + vmap.toString());

        vmap.put("a" , "2+4*a");
        vmap.put("b" , "3+4*b");
        vmap.put("c" , "0+2*c");
        vmap.put("d2", "1+2*d2");
        ModoMeter meter = new ModoMeter(4, 2); // binary
        for (int iloop = 0; iloop < 15; iloop ++) { // turn it several times
            meter.next();
        } // while
        System.out.print(vmap.toString()); // before refinement
        System.out.println(" refined by [" + meter.toString() + "]: "
                + vmap.refineExpressions(meter, 0).toString());
        vmap.setValues(meter);
        System.out.println(" set to [" + meter.toString() + "]: "
                + vmap.toString());
    } // main

} // VariableMap
