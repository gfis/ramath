/*  RelationSet: a set of polynomials which relate to zero
 *  @(#) $Id: RelationSet.java 970 2012-10-25 16:49:32Z  $
 *  2017-01-01: getRefiningMap - setMeter
 *  2016-07-24: toList(5) 
 *  2016-01-04: PairAttributes
 *  2015-12-06: toString(boolean) -> toString(1)
 *  2015-09-10: message -> siblingIndex; s|getRelationSet
 *  2015-08-25: getExponentGCDs
 *  2015-06-15: RelationSet.parse was not static
 *  2015-02-19: extends Polynomial; inherit a number of methods from there
 *  2015-02-17: getTransposition; Durbach.2
 *  2014-04-04: getIndivisibleParts
 *  2013-09-17: isLike forwarded to Polynomial.isLike
 *  2013-09-13: normalize
 *  2013-09-01: formerly a TreeMap was used
 *  2013-08-23: Serializable, toArray
 *  2011-07-06, Georg Fischer: copied from EquationSet.java
 *  2010-08-30: isLike
 *  2009-09-25, Georg Fischer: copied from Polynomial.java
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.symbolic.PairAttributes;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.PolyVector;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.symbolic.reason.BaseReason;
import  org.teherba.ramath.symbolic.reason.TranspositionReason;
import  org.teherba.ramath.symbolic.reason.ReasonFactory;
import  org.teherba.ramath.BigIntegerUtil;
import  org.teherba.ramath.Coefficient;
import  org.teherba.ramath.PrimeFactorization;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.util.ExpressionReader;
import  org.teherba.ramath.util.Permutator;
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.Iterator;
import  java.util.ArrayList;
import  java.util.TreeMap;

/** A RelationSet is a set of inequalities, it compares one or more {@link Polynomial}s to zero.
 *  It represents a set of diophantine relations (mostly equations) with variables
 *  which may (or may not) have integer solutions.
 *  <p>
 *  The individual relations are accessed in an array which should
 *  (for better performance) increase with increasing cost of evaluation.
 *  Comparision operators are "=", "&gt;=", "&gt;" and "!=" only, as defined in {@link Polynomial},
 *  and the variables can only have values &gt;= 0.
 *  @author Dr. Georg Fischer
 */
public class RelationSet
        extends Polynomial
        implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id: RelationSet.java 970 2012-10-25 16:49:32Z  $";

    /** Debugging switch */
    public int debug = 0;

    //==================
    // Construction
    //==================

    /** The array for {@link Polynomial}s,
     *  preferrably with ascending complexity in order to allow for
     *  more efficient evaluations.
     *  Elements are indexed by 0, 1, 2 and so on.
     */
    private ArrayList<Polynomial> polynomials;

    /** No-args constructor for an empty RelationSet.
     *  The <em>tuple</em> property is undefined.
     */
    public RelationSet() {
        polynomials     = new ArrayList<Polynomial>(4);
        setPairAttributes(new PairAttributes());
        setNestingLevel  (0);
        setParentIndex   (-1); // no parent - [0] is the first real queue element
        setMapping       (new RefiningMap());
    } // Constructor()

    /** Construct from a single polynomial.
     *  The <em>tuple</em> property is not defined.
     *  @param poly polynomial for the first relation
     */
    public RelationSet(Polynomial poly) {
        this();
        polynomials.add(poly);
    } // Constructor(Polynomial)

    /** Construct from an array of Strings which represent {@link Polynomial}s.
     *  Increasing numerical keys are assigned sequentially: 0, 1, 2, and so on.
     *  @param exprs array of String expressions
     */
    public RelationSet(String[] exprs) {
        this();
        int ipoly = 0;
        while (ipoly < exprs.length) {
            polynomials.add(new Polynomial(exprs[ipoly]));
            ipoly ++;
        } // while ipoly
    } // Constructor(String[])

    /** Construct from an array of {@link Polynomial}s.
     *  Increasing numerical keys are assigned sequentially: 0, 1, 2, and so on.
     *  @param polys array of Polynomials
     */
    public RelationSet(Polynomial[] polys) {
        this();
        int ipoly = 0;
        while (ipoly < polys.length) {
            polynomials.add(polys[ipoly]);
            ipoly ++;
        } // while ipoly
    } // Constructor(Polynomial[])

    /** Construct from a string with a list of relational expressions.
     *  Increasing numerical keys are assigned sequentially: 0, 1, 2, and so on.
     *  The cost of evaluation should increase in parallel to the keys' values
     *  for better performance of solvers, since the relations are concatenated
     *  with an AND operation, and the evaluation stops at the first FALSE condition.
     *  @param expressionList relational expressions concatenated by "," or ";".
     */
    public RelationSet(String expressionList) {
        this(expressionList.split("[\\;\\,]"));
    } // Constructor(String)

    /** Deep copy of this RelationSet with all {@link Polynomial}s.
     *  @return independant copy of the relation set
     */
    public RelationSet clone() {
        RelationSet result = new RelationSet();
        int ipoly = 0;
        while (ipoly < this.polynomials.size()) {
            result.insert(this.get(ipoly).clone());
            ipoly ++;
        } // while ipoly
        result.setPairAttributes       (this.getPairAttributes        ().clone());
        result.setIndex         (this.getIndex          ()); // should be adapted
        result.setMapping       (this.getMapping        ());
        result.setNestingLevel  (this.getNestingLevel   ());
        result.setParentIndex   (this.getParentIndex    ());
        result.setReasonFactory (this.getReasonFactory  ());
        result.setSiblingIndex  (this.getSiblingIndex   ());
        return result;
    } // clone

    //===================================
    // Bean methods, setters and getters
    //===================================

    /** Number of {@link Polynomial}s in the relation set
     *  @return size of the ArrayList
     */
    public int size() {
        return polynomials.size();
    } // size

    /** Gets one of the {@link Polynomial}s in the relation set
     *  @param index sequential index of the Polynomial: 0, 1, 2 and so on
     */
    public Polynomial get(int index) {
        return polynomials.get(index);
    } // get

    /** Appends a {@link Polynomial} to the array
     *  @param poly append this Polynomial
     */
    public void insert(Polynomial poly) {
        polynomials.add(poly);
    } // insert

    /** Inserts a {@link Polynomial} at some position in the array.
     *  If the array is smaller, it is filled with empty Polynomials.
     *  @param index insert at this position and move this and all following elements one up
     *  @param poly Polynomial to be inserted
     */
    public void insert(int index, Polynomial poly) {
        while (this.size() < index) { // filling before
            polynomials.add(new Polynomial()); // empty
        } // while filling before
        polynomials.add(index, poly);
    } // insert
    //----------------
    /** Index of this node in the queue */
    private int index;
    /** Gets the index
     *  @return index of the node
     */
    public int getIndex() {
        return this.index;
    } // getIndex
    /** Sets the index.
     *  @param index index of the node
     */
    public void setIndex(int index) {
        this.index = index;
    } // setIndex
    //----------------
    /** Attributes for pairs of variables */
    private PairAttributes pairAttributes;
    /** Gets the {@link PairAttributes}.
     *  @return a map of ordered pairs of variable names to some property code
     */
    public PairAttributes getPairAttributes() {
        return pairAttributes;
    } // getPairAttributes
    /** Sets the {@link PairAttributes}.
     *  @param pairAttributes map of ordered pairs of variable names to some property code
     */
    public void setPairAttributes(PairAttributes pairAttributes) {
        this.pairAttributes = pairAttributes;
    } // setPairAttributes
    //----------------
    /** Maps variable names to the accumulated digits assigned during the expansion */
    private RefiningMap mapping;
    /** Gets the {@link RefiningMap}.
     *  Returns the remembered mapping, whereas {@link #getRefiningMap}
     *  computes a new mapping from the {@link RelationSet}
     *  @return a map of variable names to the accumulated
     *  additive and multiplicative factors during the expansion
     */
    public RefiningMap getMapping() {
        return mapping;
    } // getMapping
    /** Sets the {@link RefiningMap}.
     *  @param mapping map of variable names to the accumulated
     *  additive and multiplicative factors during the expansion
     */
    public void setMapping(RefiningMap mapping) {
        this.mapping = mapping;
    } // setMapping
    //----------------
    /** Nesting level: 0, 1, 2 and so on - number of variable expansions which did already take place */
    private int nestingLevel;
    /** Gets the nesting level
     *  @return level 0, 1, 2 ff.
     */
    public int getNestingLevel() {
        return nestingLevel;
    } // getNestingLevel
    /** Sets the nesting level
     *  @param level level 0, 1, 2 ff.
     */
    public void setNestingLevel(int level) {
        nestingLevel = level;
    } // setNestingLevel
    //----------------
    /** Index of parent node in width first search tree */
    private int parentIndex;
    /** Gets the parent index
     *  @return index of the parent node
     */
    public int getParentIndex() {
        return parentIndex;
    } // getParentIndex
    /** Sets the parent index.
     *  @param index index of the parent node
     */
    public void setParentIndex(int index) {
        parentIndex = index;
    } // setParentIndex
    //----------------
    /** The {@link ReasonFactory} which is used for the examination of
     *  all nodes in this (sub-)tree
     */
    private ReasonFactory reasonFactory;
    /** Gets the {@link ReasonFactory} which is used for the examination of
     *  all nodes in this (sub-)tree
     *  @return a ReasonFactory
     */
    public ReasonFactory getReasonFactory() {
        return reasonFactory;
    } // getReasonFactory
    /** Sets the {@link ReasonFactory} which is used for the examination of
     *  all nodes in this (sub-)tree
     *  @param reasonFactory new ReasonFactory to be used
     */
    public void setReasonFactory(ReasonFactory reasonFactory) {
        this.reasonFactory = reasonFactory;
    } // setReasonFactory
    //----------------
    /** Index of the previous sibling of this node, or -1 for the first child */
    private int siblingIndex;
    /** Gets the previous sibling of this node
     *  @return index of the previous node, or -1 for the first child
     */
    public int getSiblingIndex() {
        return siblingIndex;
    } // getSiblingIndex
    /** Sets the previous sibling of this node
     *  @param siblingIndex index of the previous node, or -1 for the first child
     */
    public void setSiblingIndex(int siblingIndex) {
        this.siblingIndex = siblingIndex;
    } // setSiblingIndex

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns <em>this</em> {@link RelationSet} as an array of {@link Polynomial}s.
     *  @return array of Polynomials
     */
    public Polynomial[] toArray() {
        Polynomial[] result = new Polynomial[this.size()];
        int ipoly = 0;
        while (ipoly < this.size()) {
            result[ipoly] = this.get(ipoly);
            ipoly ++;
        } // while ipoly
        return result;
    } // toArray

    /** Returns a String representation of <em>this</em> {@link RelationSet}
     *  @param mode 0 = normal, 1 = full (for substitution), 2 = nice / human legible,
     *  3 = with prime factors
     *  @return " + 17*a0^2*a1^1 + a2^2*a3^3 = 0; - 4*b4^1 = 0", for example for mode = 1
     */
    public String toString(int mode) {
        StringBuffer buffer = new StringBuffer(2048);
        int ipoly = 0;
        while (ipoly < this.size()) {
            if (ipoly > 0) {
                buffer.append("; ");
            }
            buffer.append(this.get(ipoly).toString(mode));
            ipoly ++;
        } // while ipoly
        return buffer.toString();
    } // toString(int)

    /** Returns a string representation of the {@link Polynomial}s in <em>this</em> {@link RelationSet},
     *  with leading signs, in compressed form.
     *  @return "17*a0^2*a1 + a2^2*a3^3; - 4*b4", for example
     */
    public String toString() { // isoVar found
        return toString(0);
    } // toString()
      
    /** Returns a C-style assignment to an isolated variable 
     *  for one of the member {@link Polynomial}. 
     *  Powers are expanded to multiplications.
     *  @param isoVar the isolated variable
     *  @return for example "a =  A13 + A12*m + A11*m^2;" 
     *           instead of " - A13 + a - A12*m - A11*m^2;"
     */
    public String toAssignment(String isoVar) {
        String result = "/* to Assignment: variable " + isoVar + " not found */";
        int ipoly = 0;
        while (ipoly < this.size()) {
            Polynomial polyi = this.get(ipoly);
            Monomial   monoi = polyi.get(new Monomial(isoVar).signature());
            if (monoi != null) { // isoVar found
                if (monoi.isNegative()) {
                    polyi.addTo(monoi);
                } else { // >= 0
                    polyi.subtractFrom(monoi);
                    polyi.negativeOf();
                }
                result = isoVar + " = " + polyi.toString(5); // exp -> mult
            } 
            ipoly ++;
        } // while ipoly
        return result;
    } // toAssignment

    /** Returns a String representation of <em>this</em> {@link RelationSet},
     *  in compressed representation, without the relations,
     *  and coefficients splitted into powers of prime factors
     *  @return "2^2*3*5*x*y^3 + 2*z^4; x - y" for example
     */
    public String toFactoredString() {
        StringBuffer buffer = new StringBuffer(2048);
        int ipoly = 0;
        while (ipoly < this.size()) {
            if (ipoly > 0) {
                buffer.append("; ");
            }
            buffer.append(this.get(ipoly).toFactoredString());
            ipoly ++;
        } // while ipoly
        return buffer.toString();
    } // toFactoredString

    /** Returns lines with String representations of the {@link Polynomial}s 
     *  in <em>this</em> {@link RelationSet}, either compressed or full
     *  @param mode 
     *  <ul>
     *  <li>0 = normal</li>
     *  <li>1 = full (for substitution), with coefficients 1 and relation " = 0"</li>
     *  <li>2 = nice / human legible, with superscripts for exponents</li>
     *  <li>3 = with prime factors</li>
     *  <li>4 = with colored prime factors</li>
     *  <li>5 = exponentiation as products</li>
     *  </ul>
     *  @return a list of lines separated by newline
     */
    public String toList(int mode) {
        StringBuffer buffer = new StringBuffer(2048);
        int ipoly = 0;
        while (ipoly < this.size()) {
            if (ipoly >= 0) {
                buffer.append("\n");
            }
            if (mode == 1) {
                buffer.append('[');
                buffer.append(String.valueOf(ipoly));
                buffer.append("] ");
            }
            Polynomial rset1 = this.get(ipoly);
            buffer.append(rset1.getFactor().toString());
            buffer.append("*(");
            buffer.append(rset1.toString(mode));
            buffer.append(')');
            ipoly ++;
        } // while ipoly
        return buffer.toString();
    } // toList(mode)

    /** Returns lines with String representations of the {@link Polynomial}s 
     *  in <em>this</em> {@link RelationSet}, in compressed form
     *  @return a list of lines separated by newline
     */
    public String toList() {
        return this.toList(0);
    } // toList()

    //----------------
    /** Determines the degree, that is the sum of exponents in all {@link Monomial}s
     *  if it is the same in all Monomials
     *  @param upperSubst whether the exponents of uppercase variables should be counted
     *  @return degree >= 0, or -1 if the {@link Polynomial}s have Monomials with different degrees
     */
    public int degree(boolean upperSubst) {
        int result = -1;
        int ipoly = this.polynomials.size() - 1;
        if (ipoly >= 0) {
            result = this.get(ipoly --).degree(upperSubst); // the first
        }
        while (ipoly >= 0) {
            int degree1 = this.get(ipoly).degree(upperSubst);
            if (result != degree1) { // != the first
                result = -1;
            }
            ipoly --;
        } // while ipoly
        return result;
    } // degree(boolean)

    /*  Inherited:
    public int degree() {
    public boolean isHomogeneous(boolean upperSubst) {
    public boolean isHomogeneous() {
    */
    //--------
    /** Compute the (partial) nth order derivative of <em>this</em> {@link RelationSet}
     *  with respect to one variable.
     *  @param varx derivate for this variable
     *  @param order order n of derivation: first, second etc.
     *  @return a new RelationSet, the nth order derivative.
     *  For <em>order = 0</em>, a copy of <em>this</em> RelationSet is returned.
     *  For <em>x^3+x^2</em> the 1st order derivative is <em>3x^2+2x</em>,
     *  and the 2nd order derivative is <em>6x</em>.
     */
    public RelationSet derivative(String varx, int order) {
        RelationSet result = new RelationSet(); // 0 = 0
        int ipoly = this.polynomials.size() - 1;
        while (ipoly >= 0) {
            Polynomial rset1 = this.get(ipoly).derivative(varx, order);
            if (! rset1.isZero()) {
                result.insert(rset1);
            }
            ipoly --;
        } // while ipoly
        return result;
    } // derivative

    /** Compute the (partial) 1st order derivative of <em>this</em> {@link RelationSet}
     *  with respect to the first (only) variable.
     *  @return a new RelationSet, the 1st order derivative.
     *  For <em>x^3+x^2</em> the 1st order derivative is <em>3x^2+2x</em>,
     *  and the 2nd order derivative is <em>6x</em>.
     */
    public RelationSet derivative() {
        String varx = this.getVariableMap().getFirstName();
        return this.derivative(varx, 1);
    } // derivative

    /** Compute the (partial) 1st order derivative of <em>this</em> {@link RelationSet}
     *  with respect to one variable.
     *  @param varx derivate for this variable
     *  @return a new RelationSet, the 1st order derivative.
     *  For <em>x^3+x^2</em> the 1st order derivative is <em>3x^2+2x</em>,
     *  and the 2nd order derivative is <em>6x</em>.
     */
    public RelationSet derivative(String varx) {
        return this.derivative(varx, 1);
    } // derivative

    //----------------
    /** Deflates all member {@link Polynomial}s in place
     *  @return <em>this</em> deflated RelationSet
     */
    public RelationSet deflateIt() {
        int ipoly = this.polynomials.size() - 1;
        while (ipoly >= 0) {
            this.get(ipoly).deflateIt();
            ipoly --;
        } // while ipoly
        return this;
    } // deflateIt

    /** Deflates all member {@link Polynomial}s
     *  @return a new deflated RelationSet
     */
    public RelationSet deflate() {
        RelationSet result = this.clone();
        return result.deflateIt();
    } // deflate

    /** Normalizes all member {@link Polynomial}s in place
     *  @return <em>this</em> normalized RelationSet
     */
    public RelationSet normalizeIt() {
        int ipoly = this.polynomials.size() - 1;
        while (ipoly >= 0) {
            this.get(ipoly).normalizeIt();
            ipoly --;
        } // while ipoly
        return this;
    } // normalizeIt

    /** Normalizes all member {@link Polynomial}s
     *  @return a new normalized RelationSet
     */
    public RelationSet normalize() {
        RelationSet result = this.clone();
        return result.normalizeIt();
    } // normalize

    /** Divides all {@link Polynomial}s of <em>this</em> {@link RelationSet}
     *  by a {@link BigInteger}.
     *  @param number divide by this BigInteger
     *  @return reference to <em>this</em> RelationSet which was modified
     */
    protected RelationSet divideBy(BigInteger number) {
        int ipoly = this.polynomials.size() - 1;
        while (ipoly >= 0) {
            this.get(ipoly).divideBy(number);
            ipoly --;
        } // while ipoly
        return this;
    } // divideBy(number)

    /** Multiplies all {@link Polynomial}s of <em>this</em> {@link RelationSet}
     *  with a {@link BigInteger}.
     *  This is the inverse operation to {@link #deflateIt}.
     *  @param number multiply with this BigInteger
     *  @return reference to <em>this</em> RelationSet which was modified
     */
    public RelationSet multiplyBy(BigInteger number) {
        int ipoly = this.polynomials.size() - 1;
        while (ipoly >= 0) {
            this.get(ipoly).multiplyBy(number);
            ipoly --;
        } // while ipoly
        return this;
    } // multiplyBy(number)

    /** Determines whether <em>this</em> {@link RelationSet} can be transformed into <em>rset2</em>
     *  by an affine map from the variables in <em>this</em> RelationSet to the variables in <em>rset2</em>.
     *  @param rset2 target RelationSet
     *  @return String representation of the mapping from <em>this</em> RelationSet to <em>rset2</em>, or <em>null</em>
     *  if no such mapping could be determined
     */
    public String similiarity(RelationSet rset2) {
        String result = "";
        int rsize1 =  this .size();
        if (rsize1 == rset2.size()) {
            int ipoly = 0;
            while (ipoly < rsize1) {
                String message = this.get(ipoly).similiarity(rset2.get(ipoly));
                if (message == null) {
                    result += "null "; // may delete previous similiarity message
                } else {
                    result += message + " ";
                }
                ipoly ++;
            } // while ipoly
            if (result.indexOf("null ") >= 0) {
                result = null;
            }
        } // same size
        return result;
    } // similiarity

    /** Returns a {@link RelationSet} constructed from a String representation, possibly with an
     *  error message inserted at the point where parsing could not proceed.
     *  @param input the input String, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return a reference to a new {@link RelationSet}
     */
    public static RelationSet parse(String input) {
        return new RelationSet(input);
    } // parse

    /** Gets a map from all variable names (key) to some string value.
     *  @param value all variable names are mapped to this constant value, or null
     *  @param upperSubst whether uppercase variables should be returned in the map
     *  @return map of variable names mapped to a string
     */
    public VariableMap getVariableMap(String value, boolean upperSubst) {
        VariableMap result = new VariableMap();
        int ipoly = 0;
        while (ipoly < this.size()) { // over all equations
            Polynomial rset1 = this.get(ipoly);
            result.putAll(rset1.getVariableMap(value, upperSubst));
            ipoly ++;
        } // while ipoly
        return result;
    } // getVariableMap(String, boolean)

    /** Gets a map from all variable names in <em>this</em> RelationSet (the key)
     *  to an expression involving this variable.
     *  @param value expression with "x" as placeholder for the variable name
     *  @param upperSubst whether uppercase variables should be returned in the map
     *  (default: true)
     *  @return map of variable names mapped to an expression string
     */
    public RefiningMap getRefiningMap(String value, boolean upperSubst) {
        RefiningMap result = new RefiningMap();
        int ipoly = 0;
        while (ipoly < this.size()) { // over all equations
            Polynomial rset1 = this.get(ipoly);
            result.putAll(rset1.getRefiningMap(value, upperSubst));
            ipoly ++;
        } // while ipoly
        result.setMeter(new Vector(result.size()));
        return result;
    } // getRefiningMap(String, boolean)

    /** Gets a map from dependant - child - variables to their
     *  - independant - parents.
     *  @return child variable names mapped to their parent variable names
     */
    public VariableMap getDependantMap() {
        return getDependantMap(true);
    } // getDependantMap()

    /** Gets a map from dependant - child - variables to their - independant - parents.
     *  This implementation may be rather inefficient, but it is used only once per proof.
     *  @param upperSubst whether uppercase variables should be investigated
     *  @return child variable names mapped to their parent variable names
     */
    public VariableMap getDependantMap(boolean upperSubst) {
        VariableMap result = new VariableMap();
        String[] indnam = this.getVariableMap(upperSubst).getNameArray();
        int nlen = indnam.length;
        TreeMap<String, Integer> namind = new TreeMap<String, Integer>();
        int iname = 0;
        while (iname < nlen) {
            namind.put(indnam[iname], new Integer(iname));
            iname ++;
        } // while iname

        // now build a Matrix which tells whether two names are related in a sub-Polynomial
        Matrix related = new Matrix(nlen);
        int ipoly = 0;
        while (ipoly < this.size()) { // over all equations
            Polynomial rset1 = this.get(ipoly);
            String[]  pnames = rset1.getVariableMap(upperSubst).getNameArray();
            int ipna = 0;
            while (ipna < pnames.length) {
                int inam = namind.get(pnames[ipna]).intValue();
                int jpna = ipna + 1;
                while (jpna < pnames.length) {
                    int jnam = namind.get(pnames[jpna]).intValue();
                    related.set(inam, jnam, 1);
                    related.set(jnam, inam, 1);
                    jpna ++;
                } // while jpna
                ipna ++;
            } // while ipna
            ipoly ++;
        } // while ipoly
        if (debug >= 1) {
            System.out.println("related = ");
            System.out.println(related.toString());
        }

        // Determine any name which is related to exactly one other name, and map it to the latter
        int icol = 0;
        while (icol < nlen) {
            Vector column = related.getColumn(icol);
            int parent = column.getSingleIndex();
            if (parent >= 0) { // was single
                result.put(indnam[icol], indnam[parent]);
            } // was single
            icol ++;
        } // while icol
        return result;
    } // getDependantMap

    /** Extracts a new {@link RelationSet} consisting of the
     *  indivisible parts of the underlying {@link Polynomial}s.
     *  @param factor the common constant factor
     *  @return relation set derived from <em>this</em> relation set.
     */
    public RelationSet getRest(BigInteger factor) {
        RelationSet result = new RelationSet();
        int ipoly = 0;
        while (ipoly < this.size()) {
            result.insert(this.get(ipoly).getRest(factor));
            ipoly ++;
        } // while ipoly
        return result;
    } // getRest(BigInteger)

    /** Extracts a new {@link RelationSet} consisting of the
     *  indivisible parts of the underlying {@link Polynomial}s.
     *  @param factor the common constant factor
     *  @return relation set derived from <em>this</em> relation set.
     */
    public RelationSet getRest(int factor) {
        return getRest(BigInteger.valueOf(factor));
    } // getRest(int)

    /** Determines whether there exists a non-zero constant {@link Monomial}
     *  in any of the polynomials
     *  @return true if there is a constant monomial, or false otherwise
     */
    public boolean hasConstant() {
        boolean result = false;
        int ipoly = 0;
        while (ipoly < this.size()) { // over all equations
            result = result || this.get(ipoly).hasConstant();
            ipoly ++;
        } // while ipoly
        return result;
    } // hasConstant

    /** Determines whether two {@link RelationSet}s are equivalent, that is whether
     *  there is a permutation of the consituting {@link Polynomial}s
     *  which {@link Polynomial#isEqualTo are equal}.
     *  @param rset2 second comparision operand
     *  @return whether sets of Polynomials are the same
     */
    public boolean isEqualTo(RelationSet rset2) {
        boolean result = false;
        RelationSet rset1 = this;
        int card1  = rset1.size();
        if (card1 != rset2.size()) {
            // result = false;
        } else if (card1 == 1) { // single Polynomial
            result = rset1.get(0).isEqualTo(rset2.get(0));
        } else if (card1 == 2) { // single Polynomial
            result =   (rset1.get(0).isEqualTo(rset2.get(0)) && rset1.get(1).isEqualTo(rset2.get(1)))
                    || (rset1.get(0).isEqualTo(rset2.get(1)) && rset1.get(1).isEqualTo(rset2.get(0))) ;
        } else { // >= 3 Polynomials: try all permutations of tthe array elements
            Permutator permutator = new Permutator(card1);
            while (! result && permutator.hasNext()) { // over all permutations of sub-Polynomials
                int[] perms = permutator.next();
                int iperm = 0;
                boolean same = true; // assume that this combination matches
                while (same && iperm < card1) {
                    same = rset1.get(iperm).isEqualTo(rset2.get(perms[iperm])); // break loop if no sub-match
                    iperm ++;
                } // while same
                result = same; // this combination matched - break loop
            } // while permutator
        } // >= 3
        return result;
    } // isEqualTo

    /** Determines whether two variables in <em>this</em> {@link RelationSet}
     *  are transposable, that is they can be interchanged without loss of structure.
     *  Caution: this method uses and works only with a
     *  stored {@link RefiningMap} and a prepared TransitionReason
     *  obtained from the internal {@link ReasonFactory}.
     *  @param vnam1 name of 1st variable
     *  @param vnam2 name of 2st variable
     *  @return true if the varaibles could be interchanged, false otherwise
     */
    public boolean areTransposable(String vnam1, String vnam2) {
        boolean result = false;
        VariableMap vmap = this.getMapping();
        BaseReason reason = this.getReasonFactory().getReason("transp");
        if (reason != null) { // maybe the whole rset has no transposable variables
            result = ((TranspositionReason) reason).areTransposable(vmap, vnam1, vnam2);
        }
        return result;
    } // areTransposable

    /** Substitutes variable names with the expressions from a {@link VariableMap} (if they are not null),
     *  and returns a new RelationSet.
     *  Uppercase variables will be replaced.
     *  @param vmap map of variable names to (expressions or null)
     *  @return a new RelationSet
     */
    public RelationSet substitute(VariableMap vmap) {
        return this.substitute(vmap, true);
    } // substitute(VariableMap)

    /** Substitutes variable names with the expressions from a {@link VariableMap} (if they are not null),
     *  and returns a new RelationSet.
     *  @param vmap map of variable names to (expressions or null);
     *  @param upperSubst whether uppercase variables should be replaced
     *  @return a new RelationSet
     */
    public RelationSet substitute(VariableMap vmap, boolean upperSubst) {
        return RelationSet.parse(vmap.substitute(this.toString(1), upperSubst));
    } // substitute(VariableMap)

    /** Simplifies <em>this</em> {@link RelationSet} by substituting 
     *  all variables (regardless of their first letter)
     *  which occur isolated in a constituent {@link Polynomial}.
     *  Such Polynomials are removed.
     *  The original RelationSet is modified.
     */
    public void simplify() {
        simplify(true); // upper and lower case first letter
    } // simplify()

    /** Simplifies <em>this</em> {@link RelationSet} by substituting 
     *  variables which occur isolated in a constituent {@link Polynomial}.
     *  Such Polynomials are removed.
     *  The original RelationSet is modified.
     *  @param upperSubst whether variables with uppercase first letter are concerned
     */
    public void simplify(boolean upperSubst) {
        boolean busy = true;
        while (busy) { // there may be still another isolated variable
            Signature isolSig = null;
            int ipoly = this.size();
            Polynomial polyi = null;
            while (isolSig == null && ipoly > 0) { // search for any isolated variable
                ipoly --;
                polyi = this.get(ipoly);
                isolSig = polyi.getIsolatedSignature(upperSubst); // == null if there is none
            } // while ipoly 1
            
            if (isolSig != null) { // an isolated variable was found
                Monomial monoi = polyi.get(isolSig);
                String vname = monoi.firstName();
                Coefficient coefi = monoi.getCoefficient();
                polyi.subtractFrom(monoi);
                if (! coefi.equals(Coefficient.ONE)) { // -1
                    polyi.negativeOf();
                }
                polynomials.remove(ipoly);
                if (debug >= 1) {
                    System.out.println("isolated Signature: " + isolSig);
                    System.out.println("isolated variable: " + vname 
                            + " with Coefficient " + coefi.toString());
                    System.out.println("remaining RelationSet: " + this.toString());
                    System.out.println("substitute by Polynomial: " + polyi.toString());
                } // debug
                VariableMap vmap = new VariableMap();
                vmap.put(vname, "(" + polyi.toString() + ")");
                ipoly = this.size();
                while (ipoly > 0) {
                    ipoly --;
                    polynomials.set(ipoly, this.get(ipoly).substitute(vmap));
                } // while ipoly 2
                // isolated variable was found
            } else { // no isolated variable found
                busy = false;
            }
        } // while busy
    } // simplify

    /** Gets a {@link PolyVector} of values for isolated variables.
     *  <em>this</em> {@link RelationSet} should consist of
     *  a set of equations for isolated variables, and a 
     *  single equation which is an expression of powers of these variables 
     *  which sums to zero.
     *  @return a {@link PolyVector} with the isolated variables 
     *  replaced by their constant values, and - hopefully - 0 
     *  for the powersum.
     */ 
    public PolyVector getIsolatedVector() {
        PolyVector result = new PolyVector(this.size());
        VariableMap vmap = new VariableMap();
        Polynomial polyi = null;
        int ipsum = -1; // index of powersum Polynomial
        int ipoly = 0;
        while (ipoly < this.size()) { // over all equations
            polyi = this.get(ipoly);
            if (polyi.size() <= 2) { // isolatedVariable +- constant
                String expr = polyi.toString().replaceAll("\\s","");
                String[] parts = expr.split("[\\+\\-]");
                if (expr.indexOf('+') >= 0) {
                    parts[1] = "-" + parts[1];
                }
                if (parts.length < 2) {
                    vmap.put(parts[0], "0");
                    result.set(ipoly, new Polynomial("0"));
                } else {
                    vmap.put(parts[0], parts[1]);
                    result.set(ipoly, new Polynomial(parts[1]));
                }
            } else {
                ipsum = ipoly;
            }
            ipoly ++;
        } // while ipoly
        polyi = this.get(ipsum).substitute(vmap);
        result.set(ipsum, polyi);
        return result;
    } // getIsolatedVector
    
    /** Gets a {@link Vector} of values for isolated variables.
     *  <em>this</em> {@link RelationSet} should consist of
     *  a set of equations for isolated variables, and a 
     *  single equation which is an expression of powers of these variables 
     *  which sums to zero.
     *  @return a {@link Vector} similiar to the result of {@link #getIsolatedVector}, 
     *  but the powersum element is omitted since it is required to be zero
     */ 
    public Vector getPowerSumVector() {
        Vector result = new Vector(this.size() - 1);
        VariableMap vmap = new VariableMap();
        Polynomial polyi = null;
        int ipsum = -1; // index of powersum Polynomial
        int ipoly = 0;
        int ivect = 0;
        while (ipoly < this.size()) { // over all equations
            polyi = this.get(ipoly);
            if (polyi.size() <= 2) { // isolatedVariable +- constant
                String expr = polyi.toString().replaceAll("\\s","");
                String[] parts = expr.split("[\\+\\-]");
                if (expr.indexOf('+') >= 0) {
                    parts[1] = "-" + parts[1];
                }
                if (parts.length < 2) {
                    vmap.put(parts[0], "0");
                    result.set(ivect, 0);
                } else {
                    vmap.put(parts[0], parts[1]);
                    result.set(ivect, Integer.parseInt(parts[1]));
                }
                ivect ++;
            } else {
                ipsum = ipoly;
            }
            ipoly ++;
        } // while ipoly
        polyi = this.get(ipsum).substitute(vmap);
        if (! polyi.isZero()) {
            throw new IllegalArgumentException("powersum element is not zero: " + polyi.toString());
        }
        return result;
    } // getPowerSumVector
    
    /* ------------ Solver evaluation --------------- */
    
    /** Evaluates a {@link RelationSet} without any proof history by evaluating
     *  all its member {@link Polynomial}s, and returning the cummulative results, whether
     *  <ul>
     *  <li>all its (in)equalities hold / are true         =&gt; {@link VariableMap#SUCCESS}</li>
     *  <li>there is at least one (in)equality which fails =&gt; {@link VariableMap#FAILURE}</li>
     *  <li>the outcome cannot be decided                  =&gt; {@link VariableMap#UNKNOWN}</li>
     *  </ul>
     *  @param rset1 evaluate this RelationSet
     *  @param varMap the map of the variables how they were recently substituted
     *  in <em>this</em> Polynomial, or <em>null</em>
     *  @return SUCCESS, FAILURE or UNKNOWN
     */
    private static String evaluateMembers(RelationSet rset1, VariableMap varMap) {
        String result = VariableMap.SUCCESS;
        boolean busy = true;
        int ipoly = 0;
        while (busy && ipoly < rset1.size()) { // over all Polynomials
            String partRes1 = rset1.get(ipoly).evaluate(varMap);
            if (false) {
            } else if (partRes1.startsWith(VariableMap.FAILURE)                                            ) {
                result = partRes1;
                busy = false;
            } else if (partRes1.startsWith(VariableMap.UNKNOWN) && ! result.startsWith(VariableMap.FAILURE)) {
                result = partRes1;
            } else if (partRes1.startsWith(VariableMap.SUCCESS)                                            ) {
                result = partRes1;
            } else { // should never be reached
                result = partRes1;
            }
            ipoly ++;
        } // while ipoly
        return result;
    } // evaluateMembers

    /** Evaluates this RelationSet without any proof history by evaluating
     *  all its component {@link Polynomial}s;
     *  returns the cummulative results, whether
     *  <ul>
     *  <li>its inequalities all hold / are true =&gt; 1</li>
     *  <li>there is at least one inequality which fails =&gt; -1</li>
     *  <li>the outcome cannot be decided =&gt; 0</li>
     *  </ul>
     *  A text with the reason for the decision is stored with setMessage.
     *  @param varMap the map of the variables how they where recently substituted
     *  in <em>this</em> Polynomial, or <em>null</em>
     *  @return SUCCESS, FAILURE or UNKNOWN
     */
    public String evaluate(VariableMap varMap) {
        return evaluateMembers(this, varMap);
    } // evaluate

    /*--------------- Test driver --------------------*/

    /** Test method, shows some fixed RelationSets with no arguments, or the
     *  RelationSet resulting from the input formula.
     *  @param args command line arguments
     *  When called without arguments, the output is:
     *  <pre>
a^2 + b^2 - c^2 = 0, - a + b > 0 ;  - b + c > 0
evaluate: unknown
9*a_2^2 + 16*b_2^2 - 25*c_2^2 = 0 ;  - 3*a_2 + 4*b_2 > 0 ;  - 4*b_2 + 5*c_2 > 0
     *  </pre>
     */
    public static void main(String[] args) {
        int iarg = 0;
        RelationSet rset1 = new RelationSet();
        RelationSet rset2 = new RelationSet();
        VariableMap vmap1 = new VariableMap();
        Iterator<String> viter = null;
        ExpressionReader ereader = new ExpressionReader();
        String[] exprs = null;
        int debug = 0;

        if (false) {
        } else if (args.length == 0) {
            rset1 = RelationSet.parse("a²+b^2=c^2, a<b, b<c");
            System.out.println(rset1.toString());
            System.out.println("evaluate: " + rset1.evaluate(null));
            VariableMap varMap = rset1.getVariableMap();
            varMap.put("a", "3*a_2");
            varMap.put("b", "4*b_2");
            varMap.put("c", "5*c_2");
            rset2 = rset1.substitute(varMap);
            System.out.println(rset2.toString(1));

        } else if (args.length == 1 && ! args[0].startsWith("-")) {
            rset1 = RelationSet.parse(args[iarg ++]);
            System.out.println(rset1.toString(1));
            System.out.println("evaluate: " + rset1.evaluate(null));

        } else if (args.length >= 2) {
            while (iarg < args.length) { // consume all arguments
                String opt = args[iarg ++];
                if (false) {

                } else if (opt.equals    ("-d")     ) {
                    debug = 1;
                    try {
                        debug = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    // -d

                } else if (opt.startsWith("-depend")) {
                    rset1 = RelationSet.parse(args[iarg ++]);
                    System.out.println("(\"" + rset1.toString() + "\").getDependantMap() = "
                            + rset1.getDependantMap().toString());
                    // -depend

                } else if (opt.startsWith("-derive")) {
                    rset1 = RelationSet.parse(args[iarg ++]);
                    if (iarg < args.length) {
                        String varx = args[iarg ++];
                        int order = 1;
                        if (iarg < args.length) { // with order
                            try {
                                order = Integer.parseInt(args[iarg ++]);
                            } catch (Exception exc) {
                            }
                        } // with order
                        System.out.println("(" + rset1.toString() + ").derivative(\""
                                + varx + "\", " + order + ") = "
                                + rset1.derivative(varx, order).toString()
                                );
                    } else { // first variable
                        System.out.println("(" + rset1.toString() + ").derivative() = "
                                + rset1.derivative().toString()
                                );
                    }
                    // -derive

                } else if (opt.equals    ("-equals")     ) {
                    rset1 = RelationSet.parse(args[iarg ++]);
                    rset2 = RelationSet.parse(args[iarg ++]);
                    System.out.println(rset1.toString());
                    System.out.println(rset2.toString());
                    System.out.println("equals="       + rset1.equals      (rset2)
                            +        ", isEqualTo="    + rset1.isEqualTo   (rset2)
                            +        ", isEquivalent=" + rset1.isEquivalent(rset2)
                            +        ", similiarity="  + rset1.similiarity (rset2)
                            );
                    // -equals

                } else if (opt.equals    ("-evaluate")   ) {
                    System.out.println(rset1.toString(1));
                    System.out.println("evaluate: " + rset1.evaluate(null));
                    // -evaluate

                } else if (opt.equals    ("-f")     ) {
                    String fileName = args[iarg ++];
                    rset1 = RelationSet.parse((new ExpressionReader()).read(fileName));
                    // -f

                } else if (opt.startsWith("-rest")  ) {
                    String factor = args[iarg ++];
                    rset1 = RelationSet.parse(args[iarg ++]);
                    System.out.println(rset1.toString());
                    System.out.println("rest: " + rset1.getRest(new BigInteger(factor)));
                    // -rest

                } else if (opt.startsWith("-simplify") ) { // expr1, expr2, ... 
                    if (rset1.size() == 0) {
                        exprs = ereader.getArguments(iarg, args);
                        iarg  = args.length; // ereader consumed them all
                        rset1 = new RelationSet(exprs);
                    }
                    System.out.println(rset1.toString());
                    rset1.debug = debug;
                    rset1.simplify(false); // simplify only lowercase variables
                    if (rset1.size() > 1) {                  
                        System.out.println("simplified: " + rset1.toString());
                    } else {
                        System.out.print  ("simplified and grouped: ");
                        Polynomial poly1  = rset1.get(0);
                        vmap1             = poly1.getVariableMap("1", false);
                        Monomial monog    = new Monomial(vmap1.getNameArray());
                        rset2             = poly1.groupBy(monog);
                        System.out.println(rset2.toList(5));
                        
                    }
                    // -simplify

                } else if (opt.startsWith("-subst") ) { // expr1, expr2, ... rset
                    exprs = ereader.getArguments(iarg, args);
                    iarg  = args.length; // ereader consumed them all
                    rset1 = RelationSet.parse(exprs[exprs.length - 1]); // the last
                    vmap1 = rset1.getVariableMap();
                    viter = vmap1.keySet().iterator();
                    int iexpr = 0;
                    while (viter.hasNext()) {
                        String vname = viter.next();
                        vmap1.put(vname, exprs[iexpr]);
                        iexpr ++;
                    } // while iexpr
                    System.out.println("(\"" + rset1.niceString() + "\")"
                            + ".substitute(" + vmap1.toString() + ") = " + rset1.substitute(vmap1).niceString());
                    // -subst

                } else {
                    System.err.println("??? invalid option: \"" + opt + "\"");
                }
            } // while args
        } // with >= 2 args
    } // main

} // RelationSet
