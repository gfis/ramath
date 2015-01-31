/*  ReverseStringComparator: for reverse sorting
 *  @(#) $Id$
 *  2013-08-21: Georg Fischer
 */
/*
 * Copyright 2013 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.common;
import  java.util.Comparator;

/** This class implements the methods for reverse string sorting.
 *  @author Dr. Georg Fischer
 */
public class ReverseStringComparator implements Comparator<String> {
    public final static String CVSID = "@(#) $Id: Monomial.java 522 2010-07-26 07:14:48Z gfis $";

    /** Compares 2 Strings and reverses the sort order
     *  @param left  first  operand
     *  @param right second operand
     *	@return -1 for left > right, 0 for left = right, +1 for left < right
     */
    public int compare(String left, String right) {
    	return right.compareTo(left); // not left <> right
    } // compare

    /** Compares 2 Strings for equality
     *  @param left  first  operand
     *  @param right second operand
     *	@return true for left = right, false otherwise
     */
    public boolean equals(String left, String right) {
    	return left.equals(right);
    } // equals

} // ReverseStringComparator
