/*  ProofStep: an assembly of information about a specific state in the proof
 *  and exponentiation
 *  @(#) $Id: ProofStep.java 274 2009-09-23 20:03:33Z gfis $
 *  2015-05-28: subdirectory solver
 *  2013-09-01: Serializable
 *  2009-07-16, Georg Fischer: copied from PolynomialParser
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
package org.teherba.ramath.symbolic.solver;
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  java.util.TreeMap;
import  java.io.Serializable;

/** A ProofStep has the following properties:
 *  <ul>
 *  <li>a {@link Polynomial}</li>
 *  <li>the nesting level</li>
 *  <li>the queue index of the parent node in the proof tree</li>
 *  <li>the replacement map from variables to expressions
 *  which was used to derive this polynomial from it's parent</li>
 *  <li>whether this step was proved (completed)</li>
 *  </ul>
 *  @author Dr. Georg Fischer
 */
public class ProofStep extends Polynomial implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id: ProofStep.java 274 2009-09-23 20:03:33Z gfis $";

    /** Debugging switch */
    private int debug = 0;

    //==============
    // Construction
    //==============

    /** No-args Constructor
     */
    public ProofStep() {
        super();
        initialize();
    } // no-args Constructor

    /** Construct from a {@link Polynomial}
     *  @param poly construct from this object
     */
    public ProofStep(Polynomial poly) {
        super(poly);
        initialize();
    } // Constructor(expr)

    /** Construct from an arithmetic expression as input string
     *  @param expr a sum of signed monomials
     */
    public ProofStep(String expr) {
        super(expr);
        initialize();
    } // Constructor(expr)

    /** Initializes all simple properties of the object
     */
    private void initialize() {
        nestingLevel = 0;
        parentIndex = -1; // no parent
        setParentMap(new TreeMap<String,String>());
        proved = false;
    } // initialize

    /** Deep copy of the polynomial with all {@link Monomial}s.
     *  @return independant copy of the polynomial
     */
    public ProofStep clone() {
        ProofStep result = new ProofStep(this.getPolynomial());
        result.setNestingLevel  (this.getNestingLevel());
        result.setParentIndex   (this.getParentIndex());
        result.setParentMap     (this.getParentMap());
        if (this.isProved()) {
            result.setProved();
        }
        return result;
    } // clone

    //====================================
    // Bean methods, setters and getters
    //====================================

    /** Gets the underlying {@link Polynomial}
     *  @return polynomial
     */
    public Polynomial getPolynomial() {
        Polynomial result = new Polynomial();
        result.setMonomials(super.getMonomials());
        return result;
    } // getPolynomial

    /** Nesting level: 0, 1 ff. */
    private int nestingLevel;
    /** Gets the nesting level
     *  @return level 0, 1 ff.
     */
    public int getNestingLevel() {
        return nestingLevel;
    } // getNestingLevel
    /** Sets the nesting level
     *  @param nestingLevel level 0, 1 ff.
     */
    public void setNestingLevel(int nestingLevel) {
        this.nestingLevel = nestingLevel;
    } // setNestingLevel

    /** Index of parent node in width first tree = queue */
    private int parentIndex;
    /** Gets the parent index
     *  @return index of the parent node
     */
    public int getParentIndex() {
        return parentIndex;
    } // getParentIndex
    /** Sets the parent index.
     *  @param parentIndex index of the parent node
     */
    public void setParentIndex(int parentIndex) {
        this.parentIndex = parentIndex;
    } // setParentIndex

    /** Map which was was used to substitute the parent polynomial to this one */
    private TreeMap<String, String> parentMap;
    /** Gets the parent map (uncloned).
     *  @return parentMap which was used to substitute the parent polynomial to this one
     */
    public TreeMap<String, String> getParentMap() {
        return parentMap;
    } // getParentMap
    /** Sets the parent map.
     *  @param parentMap the map which was used to substitute the parent polynomial to this one
     */
    public void setParentMap(TreeMap<String, String> parentMap) {
        this.parentMap = parentMap;
    } // setParentMap

    /** Whether this step was proved */
    private boolean proved;
    /** Determines the proof state
     *  @return whether the (partial) proof was completed
     */
    public boolean isProved() {
        return proved;
    } // isProved
    /** Sets the (partial) proof state to completed
     */
    public void setProved() {
        this.proved = true;
    } // setProved

    //======================
    // Test
    //======================
    /** Test method, shows some fixed polynomials with no arguments, or the
     *  polynomials resulting from the two input formula.
     *  @param args command line arguments: 2 strings expressions
     */
    public static void main(String[] args) {
        ProofStep step1 = null;
        ProofStep step2 = null;
        int iarg = 0;
        if (args.length == 0) {
            step1 = new ProofStep("a *b ^2*c *d +b +c +d ^2*e ^2");
            step2 = new ProofStep("zz*yy^2*xx*ww+yy+xx+ww^2*vv^2");
        } else { // with arguments
            step1 = new ProofStep(args[iarg ++]);
            step2 = new ProofStep(args[iarg ++]);
        } // with args
        System.out.println(step1.toString() + " <" + (step1.isEquivalent(step2) ? "equiv" : "notequiv") + "> " + step2);
    } // main

} // ProofStep
