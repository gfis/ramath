/*  DialogTree: a tree (ímplemented by an array) of DialogSteps; äöüäÄÖÜß
 *  @(#) $Id: DialogTree.java 970 2012-10-25 16:49:32Z  $
 *  2016-08-25, Georg Fischer: copied from DialogStep.java
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
import  org.teherba.ramath.symbolic.DialogStep;
import  org.teherba.ramath.symbolic.VariableMap;
import  org.teherba.common.URIReader;
import  java.io.Serializable;
import  java.util.Iterator;
import  java.util.ArrayList;

/** A DialogTree is a tree of {@link DialogStep}s
 *  which is read in or built by the web interface.
 *  @author Dr. Georg Fischer
 */
public class DialogTree
        extends ArrayList
        implements Cloneable, Serializable {
    private static final long serialVersionUID = 3L;
    public final static String CVSID = "@(#) $Id: DialogTree.java 970 2012-10-25 16:49:32Z  $";

    /** Debugging switch */
    public int debug = 0;

    //==================
    // Construction
    //==================

    /** The array for {@link DialogStep}s,
     *  Elements are indexed by 0, 1, 2 and so on.
     *  In files, the line for the root step is first,
     *  as it is in the web interface.
     */
    private ArrayList<DialogStep> steps;

    /** No-args constructor for an empty DialogTree.
     *  The <em>tuple</em> property is undefined.
     */
    public DialogTree() {
        steps = new ArrayList<DialogStep>(4);
    } // Constructor()

    /** Construct from a file (URI).
     *  @param uri URI pointing to file or web ressource.
     */
    public DialogTree(String uri) {
        this();
        try {
            URIReader reader = new URIReader(uri);
            String line = null;
            int istep = 0;
            while ((line = reader.readLine()) != null) {
                this.insert(istep, new DialogStep(line));
                istep ++;
            } // while reading lines
            reader.close();
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
        }
    } // Constructor(uri)

    /** Deep copy of <em>this</em> {@link DialogTree} with all {@link DialogStep}s.
     *  @return independant copy of the DialogTree
     */
    public DialogTree clone() {
        DialogTree result = new DialogTree();
        int istep = 0;
        while (istep < this.steps.size()) {
            result.insert(this.get(istep).clone());
            istep ++;
        } // while istep
        return result;
    } // clone

    //===================================
    // Bean methods, setters and getters
    //===================================

    /** Number of {@link DialogStep}s in the tree
     *  @return size of the ArrayList
     */
    public int size() {
        return steps.size();
    } // size

    /** Gets one of the {@link DialogStep}s in the tree
     *  @param index sequential index of the DialogStep: 0, 1, 2 and so on
     */
    public DialogStep get(int index) {
        return steps.get(index);
    } // get

    /** Appends a {@link DialogStep} to the array
     *  @param step append this DialogStep
     */
    public void insert(DialogStep step) {
        step.setIndex(this.size());
        steps.add(step);
    } // insert

    /** Inserts a {@link DialogStep} at some position in the array.
     *  If the array is smaller, it is filled with empty DialogSteps.
     *  @param index insert at this position and move this and all following elements one up
     *  @param step DialogStep to be inserted
     */
    public void insert(int index, DialogStep step) {
        step.setIndex(index);
        while (this.size() < index) { // filling before
            steps.add(new DialogStep()); // empty
        } // while filling before
        steps.add(index, step);
    } // insert

    /*-------------- lightweight derived methods -----------------------------*/

    /** Returns a String representation of all {@link DialogStep}s
     *  @param mode see {@link RelationSet#toString}
     *  @return a set of lines terminated by "\n" of the form:
     *  <pre>
     *  index parentIndex VariableMap RelationSet comment \n
     *  </pre>
     */
    public String toString(int mode) {
        StringBuffer buffer = new StringBuffer(2048);
        int istep = 0;
        while (istep < this.size()) {
            buffer.append(this.get(istep).toString(mode));
            buffer.append('\n');
            istep ++;
        } // while istep
        return buffer.toString();
    } // toString(int)

    /** Returns a String representation of all {@link DialogStep}s
     *  @return a set of lines terminated by "\n" of the form:
     *  <pre>
     *  index parentIndex VariableMap RelationSet comment \n
     *  </pre>
     */
    public String toString() {
        return toString(0);
    } // toString()

    /*--------------- Test driver --------------------*/

    /** Test method, shows some fixed {@link DialogStep}s with no arguments,
     *  or the {@link DialogTree} resulting from the input file.
     *  @param args command line arguments: [-d n] [-f filename]
     */
    public static void main(String[] args) {
        int iarg = 0;
        DialogTree tree1 = new DialogTree();

        if (false) {
        } else if (args.length == 0) {
            tree1.insert(new DialogStep("0 -1 {a=>2*a,b=>2*b,c=>2*c} a^2 + b^2 = c^2 # Pythagoras"));
            tree1.insert(new DialogStep("1  0 {a=>x,b=>y,c=>z} 4*a^2 + 4*b^2 = 4*c^2"));
            System.out.print(tree1.toString());

        } else if (args.length >= 2) {
            while (iarg < args.length) { // consume all arguments
                String opt = args[iarg ++];
                if (false) {

                } else if (opt.equals    ("-d")     ) {
                    tree1.debug = 1;
                    try {
                        tree1.debug = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    // -d

                } else if (opt.equals    ("-f")     ) {
                    String fileName = args[iarg ++];
                    tree1 = new DialogTree(fileName);
                    System.out.print(tree1.toString());
                    // -f

                } else {
                    System.err.println("??? invalid option: \"" + opt + "\"");
                }
            } // while args
        } // with >= 2 args
    } // main

} // DialogTree
