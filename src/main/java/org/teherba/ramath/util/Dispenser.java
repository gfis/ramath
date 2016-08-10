/*  Dispenser: creates an "increasing" sequence of different number tuples in a systematic way
 *  @(#) $Id: Dispenser.java 744 2011-07-26 06:29:20Z  $
 *  2016-07-26: hasNoZero
 *  2015-02-13: getVector, nextVector; post-op +10
 *  2015-02-08: Dispenser instead of ModoMeter in VariableMap
 *  2014-04-06: get(im)
 *  2013-09-10: parameters base and with interchanged
 *  2013-09-09: Serializable
 *  2011-07-23, Dr. Georg Fischer: copied from ModoMeter
 */
/*
 * Copyright 2011 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath.util;
import  org.teherba.ramath.linear.Vector;
import  java.util.Iterator;
import  java.io.Serializable;

/** A Dispenser returns different n-tuples of integer numbers (the "digits") in a systematic,
 *  somehow "increasing" way.
 *  It usually starts with an array of zeroes.
 *  Each call to {@link #next} returns the current reading, and then "increments"
 *  the tuple in some way. The Dispenser can be {@link #reset}, but not modified.
 *  Specialized subclasses of Dispenser are the {@link ModoMeter} and the {@link Permutator}.
 *  <p>
 *  The tuples delivered by the Dispenser are different until the {@link #hasNext}
 *  method returns <em>false</em>, and all possible tuples
 *  which fulfill the restrictions of the particular Dispenser subclass are eventually
 *  delivered.
 *  <p>
 *  The order of the tuple's elements (left to right or right to left)
 *  normally is not important, but {@link #toString} returns element [0] first, and this is
 *  the digit which changes most quickly in {@link ModoMeter}.
 *  <p>
 *  For efficiency, the tuple is limited to a plain array of ordinary integers (Java type <em>int</em>).
 *  Sequences with non-zero-only elements
 *  may be built by adding a constant, or some other postprocessing.
 *  @author Dr. Georg Fischer
 */
public abstract class Dispenser implements Iterator<int[]>, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Dispenser.java 744 2011-07-26 06:29:20Z  $";

    //=====================================
    // Bean properties, setter and getters
    //=====================================
    /** number of elements in the tuple to be returned */
    protected int     width;
    /** some number base (or upper limit) for the digits in the tuple */
    protected int     base;
    /** Array which contains the tuple */
    protected int[]   meter;
    /** Array which contains the signs for all elements of the tuple: positive >= 0, negative < 0 */
    protected int[]   signs;
    /** tells whether the Dispenser yields signed (negative) values */
    protected boolean signed;
    /** Tells whether the dispenser has rolled through all combinations */
    protected boolean rollOver;

    /** Gets the value of some digit
     *  @param im position of the digit
     *  @return the digit at position <em>im</em>
     */
    public int get(int im) {
        return this.meter[im];
    } // get

    /** Gets the base
     *  @return base of digits which roll
     */
    public int getBase() {
        return this.base;
    } // getBase

    /** Gets the base with index - fake method, for compatibility with {@link ModoMeter} only
     *  @param im index of the digit whose bese should be returned.
     *  @return base of digits which roll
     */
    public int getBase(int im) {
        return this.base;
    } // getBase

    /** Sets the base
     *  @param base base of digits which roll
     */
    public void setBase(int base) {
        this.base = base;
    } // setBase

    /** Gets the signed property.
     *  @return -1 if the Dispenser returns signed values, 0 if not
     */
    public int getSign() {
        return this.signed ? -1 : 0;
    } // getSign

    /** Sets the signed property.
     *  @param sign -1 if the Dispenser should return signed values, 0 for non-negative values
     */
    public void setSign(int sign) {
        this.signed = sign < 0;
    } // setSign

    /** Gets the width.
     *  @return number of digits which roll
     */
    public int getWidth() {
        return this.width;
    } // getWidth

    /** Sets the width.
     *  @param width number of digits which roll
     */
    public void setWidth(int width) {
        this.width = width;
        meter = new int[width];
        signs = new int[width];
    } // setWidth

    /** Tells whether the dispenser has not yet rolled over
     *  @return true if there is still another combination of digits
     */
    public boolean hasNext() {
        return ! rollOver;
    } // hasNext

    //=====================
    // Construction
    //=====================

    /** No-args Constructor, creates a binary Dispenser of width 4
     */
    public Dispenser() {
        this(4, 2, 0);
    } // no-args Constructor

    /** Constructor with base 2 (binary values)
     *  @param width number of binary digits to be rolled
     */
    public Dispenser(int width) {
        this(width, 2, 0);
    } // binary Constructor

    /** Constructor with 2 parameters
     *  @param width number of parallel {@link #base} digits to be rolled
     *  @param base  digits are incremented modulo this base
     */
    public Dispenser(int width, int base) {
        this(width, base, 0);
    } // Constructor(base,width)

    /** Constructor with 3 parameters
     *  @param width number of parallel {@link #base} digits to be rolled
     *  @param base  digits are incremented modulo this base
     *  @param sign 0 for natural (non-negative) values, -1 for integer (negative and positive) values
     */
    public Dispenser(int width, int base, int sign) {
        signed = sign < 0;
        setWidth(width);
        setBase(base); // after setWidth, because of bases[]
        reset();
    } // Constructor(3)

    /** Configures the main properties of the class from commandline arguments
     *  @param args array of strings from the commandline:
     *  <ul>
     *  <li>width - number of elements in the result tuples (optional)</li>
     *  <li>base  - number base for the digits in the result tuple (optional)</li>
     *  <li>sign  - 0 for non-negative, -1 for negative and positive values
     *  </ul>
     */
    public void configure(String[] args) {
        int iarg = 0;
        setWidth(4); // default
        if (args.length > iarg) {
            try {
                setWidth(Integer.parseInt(args[iarg ++]));
            } catch (Exception exc) {
            }
        } // 1st arg
        setBase(getWidth()); // default: width = base
        if (args.length > iarg) {
            try {
                setBase(Integer.parseInt(args[iarg ++]));
            } catch (Exception exc) {
            }
        } // 2nd arg
        setSign(0); // default: non-negative values
        if (args.length > iarg) {
            try {
                int sign = Integer.parseInt(args[iarg ++]);
                setSign(sign);
            } catch (Exception exc) {
            }
        } // 3rd arg
    } // configure

    /** Resets the dispenser, next tuple is (0,0, -- 0)
     */
    public void reset() {
        int im = 0;
        while (im < width) {
            meter[im] = 0;
            signs[im] = 0; // no sign
            im ++;
        } // while im
        rollOver = false;
    } // reset

    /** Determines whether all digits are non-zero
     *  @return true if all digits are not 0, false otherwise
     */
    public boolean hasNoZero() {
        boolean result = true;
        int im = 0;
        while (result && im < width) {
            result = meter[im] != 0; // turns false and breaks loop at first == 0
            im ++;
        } // while result
        return result;
    } // hasZero

    /** Determines whether all digits are zero (initial state)
     *  @return true if all digits are 0, false otherwise
     */
    public boolean isZeroes() {
        boolean result = true;
        int im = 0;
        while (result && im < width) {
            result = meter[im] == 0; // turns false and breaks loop at first != 0
            im ++;
        } // while result
        return result;
    } // isZeroes

    /** Toggles into the next combination of signs if the Dispenser yields negative values.
     *  This works like a simple odometer for the values {0, -1},
     *  but positions where the <em>meter</em> is zero are skipped.
     *  The <em>meter</em> tuple is steady during sign toggling.
     *  A typical usage is:
     <pre>
        boolean iterating = signed && toggleSigns();
     </pre>
     *  which relies strongly on the fact that Java lazily evaluates the "&&" operator.
     *  @return <em>false</em> if there was another sign combination, or <em>true</em>
     *  another meter tuple should be generated
     */
    public boolean toggleSigns() {
        boolean busy = true;
        int im = 0;
        while (busy && im < width) { // then roll
            if (meter[im] != 0) {
                signs[im] --;
                busy = signs[im] <= - 2;
                if (busy) { // roll over and switch to next position
                    signs[im] = 0;
                }
                // else stop at this position
            } // meter[im] != 0
            im ++;
        } // while busy
        return busy; // true iff the highest digit rolled over
    } // toggleSigns

    /** Reads the current setting of the Dispenser.
     *  @return an array with the <em>original</em> digits
     */
    public int[] toArray() {
        int[] result = new int[width];
        int im = 0;
        while (im < width) { // copy first
            result[im] = (signs[im] >= 0) ? meter[im] : (- meter[im]);
            im ++;
        } // while im
        return result;
    } // toArray

    /** Reads the current setting of the Dispenser.
     *  @return a {@link Vector} with the <em>original</em> digits
     */
    public Vector getVector() {
        return new Vector(toArray());
    } // getVector

    /** Rolls the least significant digit up by one, and
     *  eventually rolls carries into higher positions.
     *  This is the default implementation for a {@link ModoMeter}, but
     *  other Dispensers will implement different methods.
     *  @return an array with the <em>original</em> digits tuple <em>before</em> rolling
     */
    public int[] next() {
        int[] result = toArray();  // first copy current tuple to the result
        boolean iterating = signed ? toggleSigns() : true;
        boolean busy = true;
        while (iterating) { // as long as tuples are "bad"
            int im = 0;
            busy = true;
            while (busy && im < width) { // then roll
                meter[im] ++;
                busy = meter[im] >= base;
                if (busy) { // roll over and switch to next position
                    meter[im] = 0;
                }
                // else stop at this position
                im ++;
            } // while busy
            rollOver = busy; // true iff the highest digit rolled over
            iterating = false; // always assume that it is a "good" tuple
        } // while iterating
        return result;
    } // next

    /** Rolls the least significant digit up by one, and
     *  eventually rolls carries into higher positions.
     *  This is the default implementation for a {@link ModoMeter}, but
     *  other Dispensers will implement different methods.
     *  @return a {@link Vector} with the <em>original</em> digits tuple <em>before</em> rolling
     */
    public Vector nextVector() {
        return new Vector(next());
    } // nextVector

    /** Needed for Iterator interface, not implemented -
     *  Dispensers do never change the underlying data structure.
     */
    public void remove() throws UnsupportedOperationException, IllegalStateException {
        throw new UnsupportedOperationException();
    } // remove

    /** Returns a string representation of the current meter reading:
     *  all digits separated by spaces, fastest changing digit first.
     *  @return string like "1 9 4 7"
     */
    public String toString() {
        StringBuffer result = new StringBuffer(64);
        int im = 0;
        while (im < meter.length) {
            if (im > 0) { // if not first
                result.append(' ');
            }
            result.append(String.valueOf(signs[im] >= 0 ? meter[im] : - meter[im]));
            im ++;
        } // while im
        return result.toString();
    } // toString

} // Dispenser
