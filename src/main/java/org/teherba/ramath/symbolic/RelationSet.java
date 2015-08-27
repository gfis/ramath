/*  RelationSet: a set of polynomials which relate to zero
 *  @(#) $Id: RelationSet.java 970 2012-10-25 16:49:32Z  $
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
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RefinedMap;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.ramath.BigIntegerUtil;
import  org.teherba.ramath.PrimeFactorization;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.util.ExpressionReader;
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
public class RelationSet extends Polynomial implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id: RelationSet.java 970 2012-10-25 16:49:32Z  $";

    /** Debugging switch */
    private int debug = 0;

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
        polynomials = new ArrayList<Polynomial>(4);
        setNestingLevel (0);
        setParentIndex  (-1); // no parent - [0] is the first real queue element
        setTuple        (new VariableMap()); // implies setRefMap
        setTupleShift   (BigInteger.ONE);
        setMessage      ("undefined");
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
        result.setNestingLevel  (this.getNestingLevel   ());
        result.setParentIndex   (this.getParentIndex    ());
        result.setTuple         (this.getTuple          ());
        result.setRefMap        (this.getRefMap         ());
        result.setTupleShift    (this.getTupleShift     ());
        result.setMessage       (this.getMessage        ());
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

    /** Message text from the last evaluation */
    private String message;
    /** Gets the message text from the last evaluation
     *  @return string describing the decision
     */
    public String getMessage() {
        return message;
    } // getMessage
    /** Sets the message text from the last evaluation
     *  @param text message text to be stored
     */
    public void setMessage(String text) {
        message = text;
    } // setMessage

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

    /** Maps refined expressions to original positions in the VariableMap */
    private RefinedMap refMap;
    /** Gets the refined map.
     *  @return map of refined expressions to original positions in the VariableMap
     */
    public RefinedMap getRefMap() {
        return refMap;
    } // getRefMap
    /** Sets the refined map.
     *  @param refMap map of refined expressions to original positions in the VariableMap
     */
    public void setRefMap(RefinedMap refMap) {
        this.refMap = refMap;
    } // setRefMap

    /** Maps variable names to the accumulated digits assigned during the expansion */
    private VariableMap tuple;
    /** Gets the tuple (uncloned).
     *  @return map of variable names to the accumulated digits assigned during the expansion
     */
    public VariableMap getTuple() {
        return tuple;
    } // getTuple
    /** Sets the tuple and the {@link RefinedMap}.
     *  @param tuple map of variable names to the accumulated digits assigned during the expansion
     */
    public void setTuple(VariableMap tuple) {
        this.tuple = tuple;
        setRefMap(new RefinedMap(tuple));
    } // setTuple

    /** Sets the tuple and the {@link RefinedMap} with equalized variable names.
     *  @param tuple map of variable names to the accumulated digits assigned during the expansion
     *  @param transposables a {@link Vector} of variable name equivalence classes
     */
    public void setTuple(VariableMap tuple, Vector transposables) {
        this.tuple = tuple;
        setRefMap(new RefinedMap(tuple, transposables));
    } // setTuple

    /** Multiply {@link org.teherba.ramath.util.ModoMeter ModoMeter} digits by this amount
     *  and add them to the previous tuple
     */
    private BigInteger tupleShift;
    /** Gets the tuple shift.
     *  @return multiplicative factor for {@link org.teherba.ramath.util.ModoMeter ModoMeter} digits
     *  to build the new tuple
     */
    public BigInteger getTupleShift() {
        return tupleShift;
    } // getTupleShift
    /** Sets the tuple.
     *  @param shift multiplicative factor for {@link org.teherba.ramath.util.ModoMeter ModoMeter} digits
     *  to build the new tuple
     */
    public void setTupleShift(BigInteger shift) {
        this.tupleShift = shift;
    } // setTupleShift

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns the RelationSet as an array of {@link Polynomial}s.
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

    /** Returns a string representation of the relation set, either compressed or full
     *  @param full whether to return a complete representation suitable for substitution
     *  or a compressed representation which suppresses positive unary sign and
     *  coefficients and exponents of 1
     *  @return " + 17*a0^2*a1^1 + a2^2*a3^3 = 0; - 4*b4^1 = 0", for example
     */
    public String toString(boolean full) {
        StringBuffer buffer = new StringBuffer(2048);
        int ipoly = 0;
        while (ipoly < this.size()) {
            if (ipoly > 0) {
                buffer.append("; ");
            }
            buffer.append(this.get(ipoly).toString(full));
            ipoly ++;
        } // while ipoly
        return buffer.toString();
    } // toString

    /** Returns a string representation of the {@link Polynomial}s in the relation set,
     *  with leading signs, in compressed form.
     *  @return "17*a0^2*a1 + a2^2*a3^3; - 4*b4", for example
     */
    public String toString() {
        return toString(false);
    } // toString()

    /** Returns a string representation of <em>this</em> {@link RelationSet},
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

    /** Returns lines with string representations of the {@link Polynomial}s in the relation set,
     *  either compressed or full
     *  @param full whether to return a complete representation suitable for substitution
     *  or a compressed representation which suppresses positive unary sign and
     *  coefficients and exponents of 1
     *  @return a list of lines separated by newline
     */
    public String toList(boolean full) {
        StringBuffer buffer = new StringBuffer(2048);
        int ipoly = 0;
        while (ipoly < this.size()) {
            if (ipoly >= 0) {
                buffer.append("\n");
            }
            if (full) {
                buffer.append('[');
                buffer.append(String.valueOf(ipoly));
                buffer.append("] ");
            }
            Polynomial poly1 = this.get(ipoly);
            buffer.append(poly1.getFactor().toString());
            buffer.append("*(");
            buffer.append(poly1.toString());
            buffer.append(')');
            ipoly ++;
        } // while ipoly
        return buffer.toString();
    } // toList(full)

    /** Returns lines with string representations of the {@link Polynomial}s in the relation set,
     *  in compressed form
     *  @return a list of lines separated by newline
     */
    public String toList() {
        return this.toList(false);
    } // toList()

    /** Normalizes all member {@link Polynomial}s
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
     *  This is the inverse operation to {@link #normalizeIt}.
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

    /** Determines whether <em>this</em> RelationSet can be transformed into <em>rset2</em>
     *  by multiplying the constants of the monomials in <em>rset2</em> by
     *  some factors &gt;= 1.
     *  @param rset2 target RelationSet
     *  @return a list of numbers separated by "," if such factors exist, null otherwise
     */
    public String getGrowingFactors(RelationSet rset2) {
        String result  = null;
        String factors = ""; // assume success
        int rsize1 =  this .size();
        if (rsize1 == rset2.size()) {
            int ipoly = 0;
            while (factors != null && ipoly < rsize1) {
                factors = this.get(ipoly).getGrowingFactors(rset2.get(ipoly));
                if (factors != null) {
                    result = result == null ? factors : result + factors;
                }
                ipoly ++;
            } // while ipoly
        } // same size
        return result;
    } // getGrowingFactors

    /** Determines whether <em>this</em> RelationSet can be transformed into <em>rset2</em>
     *  by an affine map from the variables in <em>this</em> to the variables in <em>rset2</em>.
     *  @param rset2 target RelationSet
     *  @return string representation of the mapping from <em>this</em> to <em>rset2</em>, or <em>null</em>
     *  if no mapping could be determined
     */
    public String similiarity(RelationSet rset2) {
        String result = "";
        int rsize1 =  this .size();
        if (rsize1 == rset2.size()) {
            int ipoly = 0;
            while (ipoly < rsize1) {
                String message = this.get(ipoly).similiarity(rset2.get(ipoly));
                if (message == null) {
                    result = ""; // may delete previous similiarity message
                } else {
                    result += message + " ";
                }
                ipoly ++;
            } // while ipoly
            if (result.length() == 0) {
                result = null;
            }
        } // same size
        return result;
    } // similiarity

    /** Returns a new relation set constructed from a string representation, possibly with an
     *  error message inserted at the point where parsing could not proceed.
     *  @param input the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return a reference to a new relation set
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
            Polynomial poly1 = this.get(ipoly);
            result.putAll(poly1.getVariableMap(value, upperSubst));
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
    public VariableMap getExpressionMap(String value, boolean upperSubst) {
        VariableMap result = new VariableMap();
        int ipoly = 0;
        while (ipoly < this.size()) { // over all equations
            Polynomial poly1 = this.get(ipoly);
            result.putAll(poly1.getExpressionMap(value, upperSubst));
            ipoly ++;
        } // while ipoly
        return result;
    } // getExpressionMap(String, boolean)

    /** Gets the greatest common divisors of variable exponents,
     *  in the natural order of the variable names in <em>this</em> {@link RelationSet}
     *  @param vmap (not used)
     *  @return a map of variable names to the greatest common divisors of their exponents
     */
    public Vector getExponentGCDs(VariableMap vmap) {
        TreeMap<String, Integer> expGCDs = new TreeMap<String, Integer>();
        int ipoly = 0;
        while (ipoly < this.size()) { // over all relations
	        joinExponentGCDs(expGCDs, this.get(ipoly));
            ipoly ++;
        } // while ipoly
        Vector result = new Vector(expGCDs.size());
        int ivar = 0;
        Iterator<String> viter = expGCDs.keySet().iterator();
        while (viter.hasNext()) {
            String varName = viter.next();
            result.set(ivar, expGCDs.get(varName).intValue());
            ivar ++;
        } // while viter
        return result;
    } // getExponentGCDs

    /** Determine whether two variable names of <em>this</em> {@link RelationSet}
     *  are interchangeable (equivalent).
     *  Caution: primitive, inefficient implementation.
     *  @param name1 name of 1st variable
     *  @param name2 name of 2nd variable
     *  @return true of the two variable names can be interchanged in the RelationSet
     *  without loss of structure
     */
    protected boolean areTransposable(String name1, String name2) {
        boolean result = true; // assume success
        VariableMap varm2 = new VariableMap();
        varm2.put(name1, name2);
        varm2.put(name2, name1);
        RelationSet rset2 = this.substitute(varm2);
        int ipoly = 0;
        while (ipoly < this.size()) { // over all relations
            Polynomial poly1 = this .get(ipoly);
            Polynomial poly2 = rset2.get(ipoly);
            result = result && (poly1.add(poly2).isZero() || poly1.subtract(poly2).isZero());
            ipoly ++;
        } // while ipoly
        return result;
    } // areTransposable

    // public Vector getTransposableClasses() is inherited from Polynomial, but uses local 'areTransposable'

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

    /** Substitutes variable names with the expressions from a {@link VariableMap} (if they are not null),
     *  and returns a new RelationSet.
     *  @param vmap map of variable names to (expressions or null);
     *  whether uppercase variables should be replaced must already have been
     *  defined during the construction of this map.
     *  @return a new RelationSet
     */
    public RelationSet substitute(VariableMap vmap) {
        return RelationSet.parse(vmap.substitute(this.toString(true)));
    } // substitute(VariableMap)

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

    /** Test method, shows some fixed polynomials with no arguments, or the
     *  polynomial resulting from the input formula.
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
            System.out.println(rset2.toString(true));
        } else if (args.length == 1 && ! args[0].startsWith("-")) {
            rset1 = RelationSet.parse(args[iarg ++]);
            System.out.println(rset1.toString(true));
            System.out.println("evaluate: " + rset1.evaluate(null));
        } else if (args.length >= 2) {
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.equals("-f")     ) {
                String fileName = args[1];
                rset1 = RelationSet.parse((new ExpressionReader()).read(fileName));
                System.out.println(rset1.toString(true));
                System.out.println("evaluate: " + rset1.evaluate(null));
            } else if (opt.startsWith("-grow")) {
                rset1 = RelationSet.parse(args[iarg ++]);
                rset2 = RelationSet.parse(args[iarg ++]);
                System.out.println("(\"" + rset1.toString()
                        + "\").getGrowingFactors\n(\""
                        + rset2.toString() + "\") = "
                        + rset1.getGrowingFactors(rset2));
            } else if (opt.equals("-rest")  ) {
                String factor = args[iarg ++];
                rset1 = RelationSet.parse(args[iarg ++]);
                System.out.println(rset1.toString());
                System.out.println("rest: " + rset1.getRest(new BigInteger(factor)));
            } else if (opt.equals("-transp")   ) {
                rset1 = RelationSet.parse(args[iarg ++]);
                System.out.println("getTransposableClasses(\"" + rset1.toString() + "\") = "
                        + rset1.getTransposableClasses().toString());
            }
        } // with args
    } // main

} // RelationSet
