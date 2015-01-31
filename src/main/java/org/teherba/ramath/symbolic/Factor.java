/*  Factor: a variable's name with an exponent in a Monomial
 *  @(#) $Id: Factor.java 356 2010-03-07 18:44:14Z gfis $
 *  2013-08-21: implements Comparator
 *  2009-07-01, Georg Fischer: copied from ContinuedFraction
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.Name of the variable, or value of integer constant
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
import  java.util.Comparator;

/** Bean for an unsigned variable of a {@link Monomial}
 *  in a multivariate {@link Polynomial}
 *  with an exponenent &gt;= 1, but without a constant coefficient.
 *  @author Dr. Georg Fischer
 */
public class Factor implements Comparator<Factor>, Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Factor.java 356 2010-03-07 18:44:14Z gfis $";

    //=========================
    // Construction
    //=========================
    /** No-args Constructor
     */
    public Factor() {
        this.name     = "1";
        this.exponent = 1;
    } // no-args Constructor

    /** Constructor with name
     *  @param name variable name or number constant
     */
    public Factor(String name) {
        this.name     = name;
        this.exponent = 1;
    } // Constructor(name)

    /** Constructor with all properties
     *  @param name variable name or number constant
     *  @param exponent raise variable to this power
     */
    public Factor(String name, int exponent) {
        this.name     = name;
        this.exponent = exponent;
    } // Constructor(name, exponent)

    /** Deep copy of the Factor
     *  @return independant copy of the Factor
     */
    public Factor clone() {
        return new Factor(this.name, this.exponent);
    } // clone

    //=============================
    // Bean properties and methods
    //=============================
    /** Positive exponent &gt;= 1 - take the variable to this power */
    private int exponent;
    /** Sets the exponent.
     *  @param exponent take the variable to this power
     */
    public void setExponent(int exponent) {
        this.exponent = exponent;
    } // setExponent
    /** Gets the exponent.
     *  @return exponent take the variable to this power
     */
    public int getExponent() {
        return exponent;
    } // getExponent

    /** Name of the variable, or string value of an integer constant (either prime or composite) */
    private String name;
    /** Sets the name.
     *  @param name Name of the variable, or value of integer constant
     */
    public void setName(String name) {
        this.name = name;
    } // setName
    /** Gets the name.
     *  @return name Name of the variable, or value of integer constant
     */
    public String getName() {
        return name;
    } // getName

    /** Determines whether the factor contains a variable or an integer constant
     *  @return true for variable, false for integer constant
     */
    public boolean isVariable() {
        return this.name.matches("\\d*");
    } // isVariable

    /** Compares 2 Factors.
     *  This method defines the sort order for {@link Monomial}s in
     *  the TreeMap of {@link Polynomial}s, and therefore the monomial ordering for
     *  Buchberger's algorithm.
     *  @param fact1 first  operand
     *  @param fact2 second operand
     *  @return 0 for fact1 = fact2, -1 for fact1 &lt; fact2, +1 for fact1 &gt; fact1
     */
    public int compare(Factor fact1, Factor fact2) {
        int result = 0; // assume equality
        String name1 = fact1.getName();
        String name2 = fact2.getName();
        if (name1.equals(name2)) {
            int exp1 = fact1.getExponent();
            int exp2 = fact2.getExponent();
            if (exp1 < exp2) {
                result = -1;
            } else if (exp1 > exp2) {
                result = 1;
        //  } else exp1 == exp2 : result already set above
            }
        } else {
            result = name1.compareTo(name2);
        }
        return result;
    } // compare

    /** Compares 2 Factors for equality of the values.
     *  @param fact1 first  operand
     *  @param fact2 second operand
     *  @return true for fact1 = fact2, false otherwise
     */
    public boolean equals(Factor fact1, Factor fact2) {
    	return compare(fact1, fact2) == 0;
    } // equals

    /** Compares two Factors
     *  @param fact2 second comparision operand
     *  @return -1, 0 or +1 if <em>this</em> is &lt;, = or &gt; the parameter
     */
    public int compareTo(Factor fact2) {
        return compare(this, fact2);
     } // compareTo

    /** Returns a string representation of the factor
     *  @return "name^exp"
     */
    public String toString() {
        StringBuffer result = new StringBuffer(32);
        result.append(this.name);
        if (exponent > 1) {
            result.append("^");
            result.append(String.valueOf(exponent));
        }
        return result.toString();
    } // toString()

    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        System.out.println("new (x,5): "    + (new Factor("x", 5)).toString());
        System.out.println("x^7 <> x^5: "   + (new Factor("x", 7)).compareTo(new Factor("x", 5)));
        System.out.println("a^7 <> b^7: "   + (new Factor("a" ,7)).compareTo(new Factor("b", 5)));
    } // main

} // Factor
