/*  ModoMeter: an odometer which rolls digits modulo some base
 *  @(#) $Id: ModoMeter.java 970 2012-10-25 16:49:32Z gfis $
 *  2018-01-24: offsets for ranges, may even start with negative values
 *  2014-04-06: incorporate MultiModoMeter
 *  2013-09-10: parameters base and width interchanged
 *  2011-07-23: extends Dispenser
 *  2009-07-12: isZeroes
 *  2009-07-09, Georg Fischer: copied from BigRational
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
package org.teherba.ramath.util;
import  org.teherba.ramath.util.Dispenser;

/** Odometer which rolls digits modulo some base(s).
 *  The bases are normally the same, but can be different for each digit position.
 *  The ModoMeter represents a number with digits in some base (binary, 3, 4, ... 10, 16 ... etc.)
 *  which is incremented. The digits may be integers between 0 and 2**31-1, they are
 *  stored in an array where index [0] holds the least significant digit.
 *  For example, <code>new ModoMeter(6, 10)</code> creates an ordinary odometer of 6 decimal digits,
 *  as it is used in almost every car.
 *  <p>
 *  The odometer starts with an array of zeroes.
 *  Each call to {@link #next} returns the current reading, and then increments
 *  the lowest (righmost, least significant) digit, and properly handles rollovers by
 *  resetting and incrementing the next more significant digit.
 *  <p>
 *  This Dispenser yields {@link #base} ** {@link #width} different tuples
 *  (if it is unsigned) until {@link #hasNext} becomes false.
 *  For width = 3 and base = 2, the follwing 8 different result tuples are delivered:
<pre>
[0] [1] [2]
 0   0   0
 1   0   0
 0   1   0
 1   1   0
 0   0   1
 1   0   1
 0   1   1
 1   1   1
</pre>
 *  The previous description applies to a unique base, but it is easily expanded
 *  for the case of different bases.
 *  @author Dr. Georg Fischer
 */
public class ModoMeter extends Dispenser {
    public final static String CVSID = "@(#) $Id: ModoMeter.java 970 2012-10-25 16:49:32Z gfis $";

    /** No-args Constructor, creates a binary ModoMeter of width 8
     */
    public ModoMeter() {
        this(4, 2);
    } // no-args Constructor

    /** Constructor with base 2
     *  @param width number of binary digits to be rolled
     */
    public ModoMeter(int width) {
        this(width, 2);
    } // binary Constructor

    /** Constructor with 3 parameters
     *  @param width number of parallel {@link #base} digits to be rolled
     *  @param base  digits are incremented modulo this base
     */
    public ModoMeter(int width, int base) {
        super(width, base, 0);
        this.offsets = new int[width];
        this.bases   = new int[width];
        for (int ibase = 0; ibase < width; ibase ++) {
            this.offsets[ibase] = 0;
            this.bases  [ibase] = base;
        } // for ibase
    } // Constructor(3)

    /** Constructor from an array of bases
     *  @param bases digits roll and remain less than these numbers
     */
    public ModoMeter(int[] bases) {
        super(bases.length);
        this.bases = new int[width];
        for (int ibase = 0; ibase < width; ibase ++) {
            this.offsets[ibase] = 0;
            this.bases  [ibase] = bases[ibase];
        } // for ibase
    } // Constructor(1)

    /** Constructor from an array of bases and an array of offsets
     *  @param offsets digits start rolling at          these numbers
     *  @param bases   digits roll and remain less than these numbers
     */
    public ModoMeter(int[] offsets, int[] bases) {
        super(bases.length);
        this.offsets = new int[width];
        this.bases   = new int[width];
        for (int ibase = 0; ibase < width; ibase ++) {
            this.offsets[ibase] = offsets[ibase];
            this.bases  [ibase] = bases  [ibase];
        } // for ibase
    } // Constructor(1)

    /** Sets the base (all bases) to a unique value.
     *  @param base base of digits which roll
     */
    @Override
    public void setBase(int base) {
        this.bases = new int[width];
        for (int ibase = 0; ibase < width; ibase ++) {
            this.bases[ibase] = base;
        } // for ibase
    } // setBase

    /** Gets the specific base of some digit
     *  @param im index of the digit
     *  @return individual base
     */
    @Override
    public int getBase(int im) {
        return this.bases[im];
    } // getBase(int)

    /** Sets the specific base of some digit
     *  @param im index of the digit
     *  @param base base of digits which roll
     */
    public void setBase(int im, int base) {
        this.bases[im] = base;
    } // setBase(int, int)

    /** Sets the specific base of some digit
     *  @param im index of the digit
     *  @param offset starting value of digits which roll
     */
    public void setOffset(int im, int offset) {
        this.offsets[im] = offset;
    } // setOffset(int, int)

    /** Returns a string representation of the bases of the meter.
     *  @return string like "[1,2,2,1]"
     */
    public String toBaseList() {
        StringBuffer result = new StringBuffer(64);
        result.append('[');
        int im = 0;
        while (im < meter.length) {
            if (im > 0) { // if not first
                result.append(',');
            }
            result.append(bases[im]);
            im ++;
        } // while im
        result.append(']');
        return result.toString();
    } // toBaseList

    /** Returns a tuple where all digits have the maximum value.
     *  Caution, does not work for signed dispensers!
     *  @return (b-1, b-1 ..., b-1)
     */
    public int[] last() {
        int[] result = new int[width];
        int im = 0;
        while (im < width) { // copy first
            result[im] = bases[im] - 1;
            im ++;
        } // while im
        rollOver = true;
        return result;
    } // last

    /** Resets the dispenser, next tuple is (0,0, -- 0)
     */
    @Override
    public void reset() {
        super.reset();
        int im = 0;
        while (im < width) {
            meter[im] = offsets[im];
            im ++;
        } // while im
        rollOver = false;
    } // reset

    /** Rolls the least significant digit up by one, and
     *  eventually rolls carries into higher positions.
     *  This is the default implementation for a {@link ModoMeter}, but
     *  other Dispensers will implement different methods.
     *  @return an array with the <em>original</em> digits tuple <em>before</em> rolling
     */
    @Override
    public int[] next() {
        int[] result = toArray(); // first copy current tuple to the result
        boolean iterating = true;
        boolean busy = true;
        while (iterating) { // as long as tuples are "bad"
            int im = 0;
            busy = true;
            while (busy && im < width) { // then roll
                meter[im] ++;
                busy = meter[im] >= bases[im];
                if (busy) { // roll over and switch to next position
                    meter[im] = offsets[im];
                }
                // else stop at this position
                im ++;
            } // while busy
            rollOver = busy; // true iff the highest digit rolled over
            iterating = false; // always assume that it is a "good" tuple
        } // while iterating
        return result;
    } // next

    /** Sets {@link #offsets} and {@link #bases} such that <em>this</em>
     *  Dispenser iterates through indexes for all groups of equal values in the
     *  parameter array. 
     *  There should {@link #width} groups (and ranges) in the array. 
     *  [@link #reset} should be called after this method.
     *  @param ranges array with groups of equal values 
     *  @param len number of valid elements in <em>ranges</em>
     *  @return number of groups found, maybe different from {@link #width}
     */
    public int setIndexRanges(int[] ranges, int len) {
        int im = 0;
        int ir = 0;
        offsets[im] = ir; // start first group
        if ( ranges.length > 0) {
            int valir = ranges[ir ++];
            while (ir < len) {
                if (ranges[ir] != valir) { // group change: ranges[ir] is already in new group
                    if (im < ranges.length) { // finish old group
                        bases  [im] = ir; // behind the group
                    }
                    im ++;
                    if (im < ranges.length) { // start new group
                        offsets[im] = ir;
                    }
                    valir = ranges[ir];
                } // group change
                ir ++;
            } // while ir
            if (im < ranges.length) { // finish last group
                bases[im] = ir;
            }
        } else {
            im = -1;  // will return 0;
        }
        return im + 1;
    } // setIndexRanges

    /** Test method, rolls through all combinations and prints them.
     *  @param args command line arguments: base width
     */
    public static void main(String[] args) {
        ModoMeter dispenser = new ModoMeter(4); // binary
        if (args.length == 2) { // width, base
            dispenser.configure(args);
            dispenser.reset();
            while (dispenser.hasNext()) {
                System.out.println(dispenser.toString());
                dispenser.next();
            } // while
    
            dispenser.reset();
            dispenser.setBase(1, 1); // meter[1] constantly remains 0
            dispenser.setBase(dispenser.getWidth() - 1, 1); // highest digit also
            while (dispenser.hasNext()) {
                System.out.println(dispenser.toString());
                dispenser.next();
            } // while
        } else { // an array of grouped values
            int[] groups = new int[args.length];
            int iarg = 0;
            while (iarg < args.length) {
                groups[iarg] = 0;
                try {
                    groups[iarg] = Integer.parseInt(args[iarg]);
                } catch (Exception exc) {
                }
                iarg ++;
            } // while
            System.out.println(dispenser.setIndexRanges(groups, groups.length)
                    + " index ranges");
            dispenser.reset();
            System.out.println("start with " + dispenser.getVector().toString());
            while (dispenser.hasNext()) {
                System.out.println(dispenser.toString());
                dispenser.next();
            } // while
        }
    } // main

} // ModoMeter
