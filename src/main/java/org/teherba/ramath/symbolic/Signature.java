/*  Signature: the key for a Monomial (term) in a Polynomial
 *  @(#) $Id$
 *  2016-07-09, Georg Fischer: copied from VariableMap
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
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  java.io.Serializable;
import  java.util.Iterator;

/** Type of the Key for a specifc {@link Monomial} in a {@link Polynomial}.
 *  The Signature is a String, resulting from {@link Monomial#signature} or
 *  {@link Monomial#characteristic}.
 *  @author Dr. Georg Fischer
 */
public class Signature implements Cloneable, Serializable {
    private static final long serialVersionUID = 2L;
    public final static String CVSID = "@(#) $Id: VariableMap.java 538 2010-09-08 15:08:36Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = maximum verbosity */
    public static int debug = 0;

    /** The (one and only) internal property */
    private String signat;
    /*----------------- construction ----- -----------------*/

    /** No-args Constructor
     */
    public Signature() {
        signat = null;
    } // no-args Constructor

    /** Constructor from a String
     *  @param signat the value of the Signature
     */
    public Signature(String signat) {
        this.signat = signat;
    } // Constructor(String)

    /** Clone <em>this</em> map
     */
    public Signature clone() {
        return new Signature(this.signat);
    } // clone

    /*-------------- lightweight methods -----------------------------*/

    /** Returns a string representation of the variable map
     *  @return "{a=>3,b=>4,c=>5}", for example
     */
    public String toString() {
        return this.signat;
    } // toString

    /** Compares <em>this</em> Signature with a second
     *  @param sig2 second comparision operand
     *  @return -1, 0 or +1 if <em>this</em> is &lt;, = or &gt; the parameter
     */
    public int compareTo(Signature sig2) {
        return this.signat.compareTo(sig2.toString());
    } // compareTo

    /** Determines whether <em>this</em> Signature is equal to a second
     *  @param sig2 second comparision operand
     *  @return whether the two Signature are equal
     */
    public boolean equals(Signature sig2) {
        return this.compareTo(sig2) == 0;
    } // equals

    /*----------------- test driver ----------------------*/
    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        Polynomial poly1 = Polynomial.parse(args[iarg ++]);
        Iterator<String> iter = poly1.keySet().iterator();
        while (iter.hasNext()) {
            Signature sigi = new Signature(iter.next());
            System.out.println(sigi.toString() + ": " + poly1.get(sigi.toString()).toString());
        } // while iter
    } // main

} // Signature
