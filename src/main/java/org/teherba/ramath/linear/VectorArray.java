/*  VectorArray: a non-square matrix
 *  @(#) $Id: VectorArray.java 744 2011-07-26 06:29:20Z gfis $
 *  2013-08-04, Georg Fischer: copied from Vector
 */
/*
 * Copyright 2013 Dr. Georg Fischer <punctum at punctum dot kom>
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

/** Array of {@link Vector}s in contrast to a square {@link Matrix}
 *  @author Dr. Georg Fischer
 */
public class VectorArray {
    public final static String CVSID = "@(#) $Id: VectorArray.java 744 2011-07-26 06:29:20Z gfis $";

	/** the array of {@link Vector}s */
	public Vector[] varr;

    /** No-args Constructor
     */
    public VectorArray() {
    	varr = null;
    } // no-args Constructor

    /** Constructor for a VectorArray of some length
     *  @param numElems number of elements
     */
    public VectorArray(int numElems) {
        varr = new Vector[numElems];
    } // Constructor(int)

    /** Constructor for a VectorArray from an array
     *  @param varr array of {@link Vector}s
     */
    public VectorArray(Vector[] varr) {
        this.varr = varr;
    } // Constructor(varr)

	/** Gets some element 
	 *  @param elemNo number of the element (zero based)
	 *	@return the corresponding {@link Vector}
	 */
	public Vector get(int elemNo) {
		return varr[elemNo];
	} // get
	
} // VectorArray
