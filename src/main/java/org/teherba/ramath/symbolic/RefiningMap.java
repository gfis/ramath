/*  RefiningMap: maps a set of variables to refined expressions
 *  @(#) $Id: RefiningMap.java 538 2010-09-08 15:08:36Z gfis $
 *  2015-09-04, Georg Fischer
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
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.Dispenser;
import  org.teherba.ramath.util.ModoMeter; // for test only
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.Iterator;

/** Maps a set of variables <em>xi</em> to refined expressions of the form 
 *  <em>ai+mi*xi</em>, where <em>ai, mi</em> are constants,
 *  and defines methods for such expression maps.
 *  @author Dr. Georg Fischer
 */
public class RefiningMap extends VariableMap implements Cloneable , Serializable {
    private static final long serialVersionUID = 2L;
    public final static String CVSID = "@(#) $Id: RefiningMap.java 538 2010-09-08 15:08:36Z gfis $";

    /*----------------- construction ----- -----------------*/

    /** No-args Constructor
     */
    public RefiningMap() {
        super();
    } // no-args Constructor

    /** Clone <em>this</em> map
     */
    public RefiningMap clone() {
        RefiningMap result = new RefiningMap();
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String key = (String) iter.next();
            result.put(key, this.get(key));
        } // while iter
        return result;
    } // clone

    /** Returns a {@link RefiningMap} constructed from a String representation,
     *  @param input the input String, with whitespace, maybe Vector or set brackets,
     *  for example "{a=>-a-1,b=>-b-1,c=>-c-1,d=>-d-1}"
     *  @return a reference to a new {@link VariableMap}
     */
    public static RefiningMap parse(String input) {
        VariableMap vmap = VariableMap.parse(input);
        RefiningMap result = new RefiningMap();
        Iterator<String> iter = vmap.keySet().iterator();
        while (iter.hasNext()) {
            String key = (String) iter.next();
            String value = (new Polynomial(vmap.get(key))).toString(1) // with "1*x^1"
                    .replaceAll("\\s" , "")
                    .replaceAll("\\^1", "")
                    .replaceAll("\\=0", "")
                    ; 
            if (! value.matches("\\A\\d+[\\+\\-].+")) {
                value = "0+" + value;
            }
            result.put(key, value);
        } // while iter
        return result;
    } // parse

    //----------------
    /** Gets a solution, that
     *  are the constants of the expressions for refined variables.
     *  @return "[3,4,5]", for example
     */
    public String getConstants() {
        StringBuffer result = new StringBuffer(256);
        result.append("[");
        int count = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String name  = iter.next();
            count ++;
            if (count > 1) {
                result.append(",");
            }
            String value = this.get(name);
            int plusPos = value.indexOf("+");
            if (plusPos < 0) {
                plusPos = value.length();
            }
            result.append(value.substring(0, plusPos)); // REFINED_FORM
        } // while iter
        result.append("]");
        return result.toString();
    } // getConstants

    /** Gets a {@link PolyVector}
     *  of the constant expressions when refined variables are substituted from a
     *  binary {@link Dispenser}.
     *  @return for example: [3,4] for this={x->3+2*x, y->0+4*y} and meter=[0,1]
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
     *  The underlying integer array is parallel to the sorted list of variable names.
     *  For a mapping x -> c+f*x and corresponding dispenser value m mod b,
     *  the new expression is c + f*(m+b*x) = (c+f*m) + (f*b)*x.
     *  @return a new {@link RefiningMap} with the variables mapped to the refined expressions
     */
    public RefiningMap getRefinedMap(Dispenser dispenser) {
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
    } // getRefinedMap

    /** Gets a sorted array of the values of refined expressions 
     *  without variables names
     *  @return ["1+8", "1+8", "5+8"], for example
     */
    public String[] getBareRefinedArray() {
        String[] result = new String[this.size()];
        int ind = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String name = iter.next();
            String expr = this.get(name);
            result[ind ++] = expr.substring(0, expr.indexOf('*'));
        } // while iter
        return result;
    } // getBareRefinedArray

    /** Gets a String of the refined expressions separated by commas,
     *  without "*"
     *  @return "[1+8x,1+8y,5+8z]", for example
     */
    public String niceString() {
        StringBuffer result = new StringBuffer(64);
        result.append('[');
        int ind = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            if (ind > 0) {
                result.append(',');
            }
            String name = iter.next();
            String expr = this.get(name);
            result.append(expr.substring(0, expr.indexOf('*')));
            result.append(name); // without "*"
            ind ++;
        } // while iter
        result.append(']');
        return result.toString();
    } // niceString

    /** Extracts the additive factor <em>a</em> and
     *  the multiplicative factor <em>m</em> from a refined expression
     *  @param expr the refined expression of the form <em>a+m*x</em>.
     *  @return BigInteger[] {a,m}
     */
    public static BigInteger[] extractRefinedFactors(String expr) {
        int plusPos  = expr.indexOf("+");
        int timesPos = expr.indexOf("*");
        return new BigInteger[]
                { new BigInteger(expr.substring(0          , plusPos ))
                , new BigInteger(expr.substring(plusPos + 1, timesPos))
                };
    } // extractRefinedFactors

    /** Compares the additive factors <em>a</em> and multiplicative factors <em>m</em> of two
     *  refined expressions
     *  @param expr1 the 1st refined exproession of the form <em>a+m*x</em>.
     *  @param expr2 the 2nd refined exproession of the form <em>a+m*x</em>.
     *  @return 0 if the two expressions are the same, -1 for isNegative_1, +1 otherwise
     */
    public static int compareRefinedFactors(String expr1, String expr2) {
        int result = 0 + 1;
        if (expr1.equals(expr2)) {
            result = 0;
        } else {
            BigInteger[] fam1 = extractRefinedFactors(expr1);
            BigInteger[] fam2 = extractRefinedFactors(expr2);
            if (! fam1[1].equals(fam2[1])) { // some were not involved
                // result = 1; already set
                // System.out.println("??? assertion: multiplicative factors differ in compareRefinedFactors");
            } else { // same m; for example [1,8] ? [7,8]
                if (fam1[0].subtract(fam1[1]).negate().equals(fam2[0])) { // - (1 - 8) == 7
                //  fam2[0].subtract(fam2[1]).negate().equals(fam1[0])   // - (7 - 8) == 1
                    result = -1;
                }
            } // same m
        } // !=
        return result;
    } // compareRefinedFactors

    /** architecture independant list of lowercase letters for new name generation */
    private static final String letters = "abcdefghklmnpqrstuvwxyz"; // i, j, o missing

    /** Create a number of new names not yet occurring in <em>this</em> map.
     *  @param count create so many new names 
     *  @return ["a", "b", "c"], for example
     */
    public String[] getNewNames(int count) {
        String[] result = new String[count];
        String newName = this.lastKey();
        int ires = 0;
        int loopCheck = letters.length();
        while (loopCheck > 0 && ires < count) { // generate and add a new name
            char ch = newName.charAt(0);
            if (ch > 'z' || ch < 'a') {
                ch = 'a';
            } 
            int chPos = (letters.indexOf(ch) + 1) % letters.length(); // wrap around
            newName = letters.substring(chPos, chPos + 1);
            if (this.get(newName) == null) { // not yet stored
                // this.put(newName, "0+1*" + newName);
                result[ires] = newName;
                ires ++;
            } // not yet stored
            loopCheck --;
        } // while not free
        if (loopCheck <= 0) {
            throw new IllegalArgumentException("??? assertion: loopCheck in VariableMap.getNewNames");
        }
        return result;
    } // getNewNames

    /*----------------- test driver ----------------------*/
    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        RefiningMap rmap1 = new RefiningMap();
        rmap1.put("a" , "2+4*a");
        rmap1.put("b" , "3+4*b");
        rmap1.put("c" , "0+2*c");
        rmap1.put("d2", "1+2*d2");
        ModoMeter meter = new ModoMeter(4, 2); // binary
        for (int iloop = 0; iloop < 15; iloop ++) { // turn it several times
            meter.next();
        } // while
        System.out.print(rmap1.toString()); // before refinement
        System.out.println(" refined by [" + meter.toString() + "]: "
                + rmap1.getRefinedMap(meter).toString());
        rmap1.setValues(meter);
        System.out.println("set to [" + meter.toString() + "]: "
                + rmap1.toString());
    } // main
    
} // RefiningMap
