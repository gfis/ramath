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
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.Dispenser;
import  org.teherba.ramath.util.ModoMeter; // for test only
import  java.io.Serializable;
import  java.util.Iterator;

/** Maps a set of variables <em>x</em> to refined expressions <em>a+m*x</em>,
 *  and defines methods for such an expression map.
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

    /** Gets a sorted array of the values of refined expressions 
     *  without variables names
     *  @return ["1+8", "1+8", "5+8"], for example
     */
    public String[] getRefinedArray() {
        String[] result = new String[this.size()];
        int ind = 0;
        Iterator<String> iter = this.keySet().iterator();
        while (iter.hasNext()) {
            String name = iter.next();
            String expr = this.get(name);
            result[ind ++] = expr.substring(0, expr.indexOf('*'));
        } // while iter
        return result;
    } // getRefinedArray

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
                + rmap1.getRefiningMap(meter).toString());
        rmap1.setValues(meter);
        System.out.println("set to [" + meter.toString() + "]: "
                + rmap1.toString());
    } // main
    
} // RefiningMap
