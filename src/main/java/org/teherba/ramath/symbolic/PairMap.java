/*  PairMap: maps ordered pairs of variable names to some attribute: coprime, smaller ...
 *  @(#) $Id: PairMap.java 538 2010-09-08 15:08:36Z gfis $
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

/** Maps a set of ordered pairs of variable names to:
 *  <ul>
 *  <li>1              if the 2 variables are coprime, that is they have a GCD of 1</li>
 *  <li>null           if it is not (yet) known whether the 2 variables are coprime</li>
 *  <li>factor &gt;= 2 if the 2 variables have a common factor</li>
 *  </ul>
 *  Internally, the variable names are ordered and concatenated, separated by "/".
 *  @author Dr. Georg Fischer
 */
public class PairMap extends TreeMap<String, String> implements Cloneable, Serializable {
    private static final long serialVersionUID = 2L;
    public final static String CVSID = "@(#) $Id: PairMap.java 538 2016-01-04 15:08:36Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = maximum verbosity */
    public static int debug = 0;
    /*----------------- construction ----------------------*/

    /** the separator for variable name pairs */
    private String sep = "/";

    /** No-args Constructor
     */
    public PairMap() {
        super();
    } // no-args Constructor

    /** Constructor from a map which is cloned.
     *  @param map map containing the keys for the new map
     */
    public PairMap(Map<String, String> map) {
        super();
        Iterator<String> iter = map.keySet().iterator();
        while (iter.hasNext()) {
            String name  = iter.next();
            this.put(name, map.get(name));
        } // while iter
    } // Constructor(TreeMap)

    /** Clone <em>this</em> map
     */
    public PairMap clone() {
        return new PairMap(this);
    } // clone

    /*-------------- state codes -----------------------------*/
    /** Attribute for coprime variables */
    public static final String COPRIME   = "copr";
    /** Attribute for var1 &lt; var2 */
    public static final String LESS      = "less";

    /*-------------- bean methods for pairs -----------------------------*/

    /** Puts a value for an ordered pair of variable names.
     *  @param var1 first  variable name
     *  @param var2 second variable name
     *  @param value value to be set
     */
    public void put(String var1, String var2, String value) {
        if (var1.compareTo(var2) < 0) {
            this.put(var1 + sep + var2, value);
        } else {
            this.put(var2 + sep + var1, value);
        }
    } // put

    /** Determines the value for an ordered pair of variables
     *  @param var1 first  variable name
     *  @param var2 second variable name
     *  @return value stored for the pair, or the empty String if no value is stored
     */
    public String get(String var1, String var2) {
        String result = null;
        if (var1.compareTo(var2) < 0) {
            result = this.get(var1 + sep + var2);
        } else {
            result = this.get(var2 + sep + var1);
        }
        return result != null ? result : "";
    } // get

    /*-------------- lightweight methods -----------------------------*/

    /** Returns a string representation of <em>this</em> {@link PairMap}.
     *  @return "{a/b=>1,b/c=>4}", for example
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
            result.append(this.get(name).toString());
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
        PairMap pairMap = new PairMap();
        if (iarg == args.length) {
            pairMap.put("a" , "b", PairMap.COPRIME);
            pairMap.put("b" , "c", PairMap.COPRIME);
            System.out.println("pairMap = " + pairMap.toString());
        }
    } // main

} // PairMap
