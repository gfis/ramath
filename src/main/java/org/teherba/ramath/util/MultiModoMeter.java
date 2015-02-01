/*  MultiModoMeter: a MultiModoMeter with varying bases
 *  @(#) $Id: MultiModoMeter.java 970 2012-10-25 16:49:32Z gfis $
 *  2013-08-04, Georg Fischer: copied from MultiModoMeter
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
package org.teherba.ramath.util;
import  org.teherba.ramath.util.Dispenser;

/** Modometer which rolls digits modulo some varying base.
 *  <p>
 *  The odometer starts with an array of zeroes.
 *  Each call to {@link #next} returns the current reading, and then increments
 *  the lowest (righmost, least significant) digit, and properly handles rollovers by
 *  resetting and incrementing the next more significant digit.
 *  <p>
 *  @author Dr. Georg Fischer
 */
public class MultiModoMeter extends Dispenser {
    public final static String CVSID = "@(#) $Id: MultiModoMeter.java 970 2012-10-25 16:49:32Z gfis $";

    /** The varying bases */
    private int[] bases;

    /** No-args Constructor, creates a binary MultiModoMeter of width 8
     */
    public MultiModoMeter() {
        this(new int[]{ 8 });
    } // no-args Constructor

    /** Constructor from an array of bases
     *  @param bases digits roll and remain less than these numbers
     */
    public MultiModoMeter(int[] bases) {
        super(bases.length);
        this.bases = new int[width];
        for (int ibase = 0; ibase < width; ibase ++) {
            this.bases[ibase] = bases[ibase];
        } // for ibase
    } // Constructor(1)

    /** Rolls the least significant digit up by one, and
     *  eventually rolls carries into higher positions.
     *  @return an array with the <em>original</em> digits tuple <em>before</em> rolling
     */
    public int[] next() {
         // first copy current tuple to the result
        int[] result = toArray();
        int im = 0;
        boolean busy = true;
        boolean invalid = true;
        while (invalid) { // as long as tuples are "bad"
            im = 0;
            busy = true;
            while (busy && im < width) { // then roll
                meter[im] ++;
                busy = meter[im] >= bases[im];
                if (busy) { // switch to next position
                    meter[im] = 0;
                }
                im ++;
            } // while busy
            rollOver = busy; // true iff the highest digit rolled over

            invalid = false; // always assume that it is a "good" tuple
        } // while invalid
        return result;
    } // next

    /** Sets all digits to the maximum value.
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

    /** Test method, rolls through all combinations and prints them.
     *  @param args command line arguments: base width
     */
    public static void main(String[] args) {
        int[] bases = new int[]{ 2, 3, 4 };
        MultiModoMeter dispenser = new MultiModoMeter(bases);
        dispenser.reset();
        while (dispenser.hasNext()) {
            System.out.println(dispenser.toString());
            dispenser.next();
        } // while
    } // main

} // MultiModoMeter
