/*  Expander: similiar to ModoMeter, but with different ordering
 *  @(#) $Id: Expander.java 744 2011-07-26 06:29:20Z  $
 *  2013-09-10: parameters base and with interchanged
 *  2011-07-23, Georg Fischer: copied from ModoMeter
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
import  org.teherba.ramath.util.Dispenser;

/** Like the {@link ModoMeter}, this dispenser delivers tuples with all combinations of digits
 *  below some (limiting) base, but the ordering of the sequence is different.
 *  After 0, all combinations of 0 and 1 are delivered, then all combinations
 *  involving at least one 2, then those with at least one 3, and so on
 *  until {@link #base} - 1.
 *  <p>
 *  This Dispenser yields {@link #base} ** {@link #width} different tuples until
 *  {@link #hasNext} becomes false.
 *  For width = 3 and base = 3, the follwing 27 different result tuples are delivered:
<pre>
0 0 0
1 0 0
0 1 0
1 1 0
0 0 1
1 0 1
0 1 1
1 1 1
2 0 0
2 1 0
0 2 0
1 2 0
2 2 0
2 0 1
2 1 1
0 2 1
1 2 1
2 2 1
0 0 2
1 0 2
2 0 2
0 1 2
1 1 2
2 1 2
0 2 2
1 2 2
2 2 2
</pre>
 *
 *  @author Dr. Georg Fischer
 */
public class Expander extends Dispenser {
    public final static String CVSID = "@(#) $Id: Expander.java 744 2011-07-26 06:29:20Z  $";

    /** maximum digit for the current temporary base which increments up to {@link #base}, where it stops */
    protected int ceil;

    /** No-args Constructor, creates a binary Expander of width 8
     */
    public Expander() {
        this(4, 2, 0);
    } // no-args Constructor

    /** Constructor with base 2
     *  @param width number of binary digits to be rolled
     */
    public Expander(int width) {
        this(width, 2, 0);
    } // binary Constructor

    /** Constructor with 2 parameters
     *  @param width number of parallel digits to be rolled
     *  @param base  digits are incremented up to this base
     */
    public Expander(int width, int base) {
        this(width, base, 0);
    } // Constructor(base,width)

    /** Constructor with 3 parameters
     *  @param width number of parallel {@link #base} digits to be rolled
     *  @param base  digits are incremented modulo this base
     *  @param sign 0 for natural (non-negative) values, -1 for integer (negative and positive) values
     */
    public Expander(int width, int base, int sign) {
        signed = sign < 0;
        setBase(base);
        setWidth(width);
        reset();
    } // Constructor(3)

    /** Resets the dispenser, next tuple is (0,0, -- 0)
     */
    public void reset() {
        super.reset();
        ceil = 0; // will increment up to base, where it stops
    } // reset

    /** Takes the next fitting combination from an ordinary
     *  {@link ModoMeter#next} algorithm - rather unpleasant and inefficient.
     *  @return an array with the <em>original</em> digits tuple <em>before</em> rolling
     */
    public int[] next() {
        int[] result = toArray(); // first copy current tuple to the result
        int im = 0;
        boolean iterating = signed ? toggleSigns() : true;
        boolean busy = true;
        while (iterating) { // as long as tuples are "bad"
            im = 0;
            busy = true;
            while (busy && im < width) { // then roll
                meter[im] ++;
                busy = meter[im] > ceil;
                if (busy) {
                    meter[im] = 0;
                }
                im ++;
            } // while busy
            if (busy) { // true iff the highest digit rolled over
                meter[0] = ceil; // will ensure that tuple becomes valid in next call
                ceil ++;
                rollOver = ceil >= base;
            } else {
                iterating = true; // assume that it is a "bad" tuple
                im = 0;
                while (im < width) {
                    if (meter[im] == ceil) { // contains ceil => this is a "good" tuple
                        iterating = false;
                        im = width; // break loop
                    }
                    im ++;
                } // while im
                // System.out.println("iterating: " + iterating + ", busy: " + busy + ", ceil: " + ceil);
            }
        } // while iterating
        return result;
    } // next

    /** Test method, rolls through all combinations and prints them.
     *  @param args command line arguments: base width
     */
    public static void main(String[] args) {
        Expander dispenser = new Expander(4);
        dispenser.configure(args);
        dispenser.reset();
        while (dispenser.hasNext()) {
            System.out.println(dispenser.toString());
            dispenser.next();
        } // while
    } // main

} // Expander
