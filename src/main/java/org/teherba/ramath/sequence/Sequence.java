/*  General methods and properties of OEIS sequences
 *  @(#) $Id: Sequence.java 231 2009-08-25 08:47:16Z gfis $
 *  2019-08-25: Georg Fischer
 */
/*
 * Copyright 2019 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath.sequence;
import  org.teherba.ramath.linear.BigVector;
import  java.io.Serializable;
import  java.math.BigInteger;

/** General methods and properties of OEIS sequences.
 *  @author Dr. Georg Fischer
 */
public class Sequence extends BigVector
        implements Cloneable, Serializable
        {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Sequence.java 231 2009-08-25 08:47:16Z gfis $";

    /** Array of the terms */
    protected BigInteger terms[];
    /** OEIS A-number of the sequence */
    protected String aNumber;
    /** OEIS Offset1: natural index of first term */
    protected long offset;
    /** index of last term */
    protected long bfimax;

    /** No-args constructor.
     */
    public Sequence() {
        super();
    } // no-args constructor

    /** Construct for a known nummber of terms
     *  @param termNo number of terms
     */
    public Sequence(int termNo) {
        super(termNo);
    } // Constructor(int)

    /** Construct from a BigInteger array
     *  @param terms array of BigInteger
     */
    public Sequence(BigInteger[] terms) {
        super(terms);
    } // Constructor(BigInteger[])

    /** Sets the OEIS A-number.
     *  @param aNumber OEIS sequential id of the sequence: "A" and 6 digits
     */
    public void setANumber(String aNumber) {
        this.aNumber = aNumber;
    } // setANumber

    /** Gets the OEIS A-number.
     *  @return aNumber OEIS sequential id of the sequence: "A" and 6 digits
     */
    public String getANumber() {
        return this.aNumber;
    } // getANumber

    /** Sets the highest term index
     *  @param bfimax index of last term
     */
    public void setBfimax(long bfimax) {
        this.bfimax = bfimax;
    } // setBfimax

    /** Gets the highest term index
     *  @return bfimax index of last term
     */
    public long getBfimax() {
        return bfimax;
    } // getBfimax

    /** Sets the OEIS offset1
     *  @param offset OEIS natural index of first term
     */
    public void setOffset(long offset) {
        this.offset = offset;
    } // setOffset

    /** Gets the OEIS offset1
     *  @return the OEIS natural index of first term
     */
    public long getOffset() {
        return offset;
    } // getOffset

} // Sequence
