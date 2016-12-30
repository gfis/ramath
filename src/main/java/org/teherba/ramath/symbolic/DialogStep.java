/*  DialogStep: a single element in a DialogTree; äöüÄÖÜß
 *  @(#) $Id: DialogStep.java 970 2012-10-25 16:49:32Z  $
 *  2016-12-29: comments
 *  2016-08-25, Georg Fischer: copied from RelationSet.java
 */
/*
 * Copyright 2016 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.VariableMap;
import  java.io.Serializable;
import  java.util.Iterator;

/** A DialogStep is a set of inequalities, it compares one or more {@link Polynomial}s to zero.
 *  It represents a set of diophantine relations (mostly equations) with variables
 *  which may (or may not) have integer solutions.
 *  <p>
 *  The individual relations are accessed in an array which should
 *  (for better performance) increase with increasing cost of evaluation.
 *  Comparision operators are "=", "&gt;=", "&gt;" and "!=" only, as defined in {@link Polynomial},
 *  and the variables can only have values &gt;= 0.
 *  @author Dr. Georg Fischer
 */
public class DialogStep
        implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id: DialogStep.java 970 2012-10-25 16:49:32Z  $";

    /** Debugging switch */
    public int debug = 0;

    //==================
    // Construction
    //==================

    /** No-args constructor for an empty DialogStep.
     *  The <em>tuple</em> property is undefined.
     */
    public DialogStep() {
        setIndex         (0);
        setParentIndex   (-1); // no parent - [0] is the first real queue element
        setNestingLevel  (0);
        setMapping       (new VariableMap());
        setRelationSet   (new RelationSet());
        setComment       ("");
    } // Constructor()

    /** Construct from a single {@link RelationSet}.
     *  @param rset source RelationSet
     */
    public DialogStep(RelationSet rset) {
        this();
        setRelationSet   (new RelationSet());
    } // Constructor(RelationSet)

    /** Construct from a line with String representations of the member properties.
     *  @param line String of the form
     *  <ul>
     *  <li>index (starting at 0) - plain integer</li>
     *  <li>parent index - plain integer</li>
     *  <li>{@link VariableMap} - enclosed in curly brackets</li>
     *  <li>{@link RelationSet}</li>
     *  <li>message or comment (optional, starting with "#")</li>
     *   </ul>
     */
    public DialogStep(String line) {
        this();
        int startCurl = line.indexOf("{");
        int endCurl   = line.indexOf("}");
        int sharpPos  = line.indexOf("#");
        if (sharpPos < 0) {
            sharpPos = line.length();
        } else {
            this.setComment(line.substring(sharpPos + 1).trim());
        }
        String[] nums = line.substring(0, startCurl).trim().split("\\s+");
        try {
            this.setIndex      (Integer.parseInt(nums[0]));
            this.setParentIndex(Integer.parseInt(nums[1]));
        } catch (Exception exc) {
            // ignore
        }
        this.setMapping    (VariableMap.parse(line.substring(startCurl  , endCurl + 1)));
        this.setRelationSet(new RelationSet  (line.substring(endCurl + 1, sharpPos   )));
    } // Constructor(String)

    /** Deep copy of this {@link DialogStep} with all members.
     *  @return independant copy of the DialogStep
     */
    public DialogStep clone() {
        DialogStep result       = new DialogStep();
        result.setIndex         (this.getIndex          ());
        result.setParentIndex   (this.getParentIndex    ());
        result.setNestingLevel  (this.getNestingLevel   ());
        result.setMapping       (this.getMapping        ().clone());
        result.setRelationSet   (this.getRelationSet    ().clone());
        result.setComment       (this.getComment        ());
        return result;
    } // clone

    //===================================
    // Bean methods, setters and getters
    //===================================

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
    /** Map between expressions */
    private VariableMap mapping;
    /** Gets the {@link VariableMap}.
     *  @return the map which was used to map the variables from the parent to this {@link DialogStep}
     */
    public VariableMap getMapping() {
        return mapping;
    } // getMapping
    /** Sets the {@link VariableMap}.
     *  @param mapping map which was used to map the variables from the parent to this {@link DialogStep}
     */
    public void setMapping(VariableMap mapping) {
        this.mapping = mapping;
    } // setMapping
    //----------------
    /** The {@link RelationSet} of <em>this</em> {@link DialogStep}
     */
    private RelationSet relationSet;
    /** Gets the {@link RelationSet}
     *  @return a RelationSet
     */
    public RelationSet getRelationSet() {
        return relationSet;
    } // getRelationSet
    /** Sets the {@link RelationSet}
     *  @param relationSet new RelationSet to be used
     */
    public void setRelationSet(RelationSet relationSet) {
        this.relationSet = relationSet;
    } // setRelationSet
    //----------------
    /** Message or comment for this {@link DialogStep} */
    private String comment;
    /** Gets the comment
     *  @return message or comment
     */
    public String getComment() {
        return comment;
    } // getCpomment
    /** Sets the comment.
     *  @param comment message or comment
     */
    public void setComment(String comment) {
        this.comment = comment;
    } // setComment

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a String representation of all {@link DialogStep}s
     *  @param mode see {@link RelationSet#toString}
     *  @return one line of the form:
     *  <pre>
     *  index parentIndex { VariableMap } RelationSet # comment
     *  </pre>
     */
    public String toString(int mode) {
        StringBuffer buffer = new StringBuffer(2048);
        buffer.append(String.format("%4d ", this.getIndex()));
        buffer.append(String.format("%4d ", this.getParentIndex()));
        buffer.append(this.getMapping().toString());
        buffer.append(' ');
        buffer.append(this.getRelationSet().toString());
        if (this.getComment().length() > 0) {
            buffer.append(" # ");
            buffer.append(this.getComment());
        }
        return buffer.toString();
    } // toString(int)

    /** Returns a String representation of all {@link DialogStep}s.
     *  @return one line of the form:
     *  <pre>
     *  index parentIndex VariableMap RelationSet comment
     *  </pre>
     */
    public String toString() {
        return toString(0);
    } // toString()

    /*--------------- Test driver --------------------*/

    /** Test method, shows some fixed {@link DialogStep} with no arguments, or the
     *  DialogSteps resulting from the commandline argument strings.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        DialogStep step1 = null;
        int debug = 0;

        if (false) {
        } else if (args.length == 0) {
                step1 = new DialogStep("0 -1 {a=>x,b=>y,c=>z} a^2 + b^2 = c^2 # Pythagoras");
                System.out.println(step1.toString());

        } else if (args.length >= 1) {
            while (iarg < args.length) { // consume all arguments
                step1 = new DialogStep(args[iarg ++]);
                System.out.println(step1.toString());
            } // while args
        } // with >= 2 args
    } // main

} // DialogStep
