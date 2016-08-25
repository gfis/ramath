/*  PairAttributes: maps ordered pairs of variable names to some attribute: coprime, smaller ...
 *  @(#) $Id: PairAttributes.java 538 2010-09-08 15:08:36Z gfis $
 *  2016-08-25: isolated variables can have attributes, too
 *  2016-07-10: had extended HashMap - now TreeMap for reproducible tests
 *  2016-01-04, Georg Fischer: copied from VariableMap.java
 */
/*
 * Copyright 2016 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  java.io.Serializable;
import  java.util.Iterator;
import  java.util.TreeMap;
import  java.util.Map;

/** Maps a set of ordered pairs of variable names to String attributes
 *  Internally, the variable names in the pairs, and the pair keys in the map
 *  are lexicographically ordered.
 *  In the String representation, they are concatenated (separated) by "/".
 *  A variable is stored twice if an attribute applies to that isolated variable.
 *  @author Dr. Georg Fischer
 */
public class PairAttributes extends TreeMap<String, String> implements Cloneable, Serializable {
    private static final long serialVersionUID = 2L;
    public final static String CVSID = "@(#) $Id: PairAttributes.java 538 2016-01-04 15:08:36Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = maximum verbosity */
    public static int debug = 0;
    /*----------------- construction ----------------------*/

    /** the separator for variable name pairs */
    private String sep = "/";

    /*-------------- known attributes -----------------------------*/
    /** Attribute for coprime variables */
    public static final String COPRIME   = "copr";
    /** Attribute for var1 &lt; var2 */
    public static final String LESS      = "less";
    /** Attribute for var1 mod 2 == 0 */
    public static final String EVEN      = "even";

    /** No-args Constructor
     */
    public PairAttributes() {
        super();
    } // no-args Constructor

    /** Constructor from a map which is cloned.
     *  @param map map containing the keys for the new map
     */
    public PairAttributes(Map<String, String> map) {
        super();
        Iterator<String> iter = map.keySet().iterator();
        while (iter.hasNext()) {
            String name  = iter.next();
            this.put(name, map.get(name));
        } // while iter
    } // Constructor(TreeMap)

    /** Clone <em>this</em> map
     */
    public PairAttributes clone() {
        return new PairAttributes(this);
    } // clone


    /*-------------- bean methods for pairs -----------------------------*/

    /** Puts an attribute for an ordered pair of variable names.
     *  @param var1 first  variable name
     *  @param var2 second variable name
     *  @param attr attribute to be set
     */
    public String put(String var1, String var2, String attr) {
        String key = null;
        if (var1.compareTo(var2) < 0) {
            key = var1 + sep + var2;
        } else {
            key = var2 + sep + var1;
        }
        return super.put(key, attr);
    } // put(3)

    /** Puts an attribute for an isolated variable
     *  @param var1 variable name
     *  @param attr attribute to be set
     */
    public String put(String var1, String attr) {
        String key = var1 + sep + var1;
        return super.put(key, attr);
    } // put(2)

    /** Determines the attribute for an ordered pair of variables
     *  @param var1 first  variable name
     *  @param var2 second variable name
     *  @return attribute stored for the pair of variables, or null if no attribute is stored
     */
    public String get(String var1, String var2) {
        String key = null;
        if (var1.compareTo(var2) < 0) {
            key = var1 + sep + var2;
        } else {
            key = var2 + sep + var1;
        }
        return super.get(key);
    } // get(2)

    /** Determines the attribute for an isolated variable
     *  @param var1 variable name
     *  @return attribute stored for the variable, or null if no attribute is stored
     */
    public String get(String var1) {
        String key = var1 + sep + var1;
        return super.get(key);
    } // get(1)

    /*-------------- lightweight methods -----------------------------*/

    /** Return s String representation of <em>this</em> {@link PairAttributes}.
     *  @return "{a/b=>1,b/c=>4}", for example
     */
    public String toString() {
        StringBuffer result = new StringBuffer(256);
        result.append("{");
        int count = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String key = iter.next();
            count ++;
            if (count > 1) {
                result.append(",");
            }
            result.append(key);
            result.append("=>");
            result.append(super.get(key).toString());
        } // while iter
        result.append("}");
        return result.toString();
    } // toString

    /*----------------- test driver ----------------------*/
    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        PairAttributes pairAttributes = new PairAttributes();
        if (iarg == args.length) {
            pairAttributes.put("a" , "b", PairAttributes.COPRIME);
            pairAttributes.put("b" , "c", PairAttributes.COPRIME);
            pairAttributes.put("d" ,      PairAttributes.EVEN   );
            System.out.println("pairAttributes = " + pairAttributes.toString());
        }
    } // main

} // PairMap
