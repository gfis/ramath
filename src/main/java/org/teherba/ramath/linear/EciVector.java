/*  EciVector: a vector for equivalence class indexes
 *  @(#) $Id: Vector.java 744 2011-07-26 06:29:20Z gfis $
 *  2015-02-13, Georg Fischer: copied from Vector
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
package org.teherba.ramath.linear;
import  org.teherba.ramath.linear.Vector;
import  java.io.Serializable;

/** Class EciVector is as subclaSS of {@link Vector}
 *  for equivalence class indexes.
 *  @author Dr. Georg Fischer
 */
public class EciVector extends Vector implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Vector.java 744 2011-07-26 06:29:20Z gfis $";

    /** No-args Constructor
     */
    public EciVector() {
        super();
    } // no-args Constructor

    /** Constructor for a EciVector of some length
     *  @param numElems number of elements
     */
    public EciVector(int numElems) {
        super(numElems);
    } // Constructor(int)

    /** Constructor for a EciVector from a tuple of integers
     *  @param tuple array of integers
     */
    public EciVector(int[] tuple) {
		super(tuple);
    } // Constructor(int[])

    /** Constructor for a EciVector from a array of strings
     *  @param numElems number of elements
     *  @param iarg starting index in <em>args</em>
     *  @param args array of numbers as strings
     */
    public EciVector(int numElems, int iarg, String[] args) {
        super(numElems, iarg, args);
    } // Constructor(3)

    /** Deep copy of the EciVector and its properties.
     *  @return independant copy of the EciVector
     */
    public EciVector clone() {
        EciVector result = new EciVector(vecLen);
        for (int ielem = 0; ielem < vecLen; ielem ++) {
            result.vector[ielem] = vector[ielem];
        } // for ielem
        return result;
    } // clone

} // EciVector
