/*  Signature: the key for a Monomial (term) in a Polynomial
 *  @(#) $Id$
 *  2016-07-09, Georg Fischer: copied from VariableMap
 */
/*
 * Copyright 2016 Dr. Georg Fischer <dr dot georg dot fischer at gmail dot kom>
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

/** Type for the key of a specifc {@link Monomial} in a {@link Polynomial}.
 *  The Signature is a String, resulting from {@link Monomial#signature} or
 *  {@link Monomial#characteristic}. It is the concatenation of:
 *  <ul>
 *  <li>a list of elements: "/" variable name "." exponent, 
 *    sorted by the reverse lexicographical order of the names
 *  </li>
 *  </ul>
 *  The signature defines the monomial order in a {@link Polynomial}.
 *  For example "/x4.08/b.02/a.04" is the Signature of the monomial "16384*a^4*b^2*x4^8"
 *  @author Dr. Georg Fischer
 */
public class Signature implements Cloneable, Comparable<Signature>, Serializable {
    private static final long serialVersionUID = 2L;
    public final static String CVSID = "@(#) $Id: VariableMap.java 538 2010-09-08 15:08:36Z gfis $";

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = maximum verbosity */
    public static int debug = 0;

    /** The (one and only) internal property */
    private String signat;

    /** Special signature for constant {@link Monomial}s
     *  (coefficient without variables, the empty String).
     */
    public static final Signature CONSTANT = (new Monomial("1")).signature(); // the empty string: ""

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
     *  @return "{a=&gt;3,b=&gt;4,c=&gt;5}", for example
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
        Iterator<Signature> iter = poly1.keySet().iterator();
        while (iter.hasNext()) {
            Signature sigi = iter.next();
            System.out.println(sigi.toString() + ": " + poly1.get(sigi).toString());
        } // while iter
    } // main

} // Signature
