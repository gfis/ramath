/*  MonotoneExpander: similiar to Expander, but val[i+1] < val[i] for all i
 *  @(#) $Id: MonotoneExpander.java 744 2011-07-26 06:29:20Z  $
 *  2017-05-28: javadoc 1.8
 *  2013-07-05: renamed from BinomialExpander
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
import  org.teherba.ramath.util.Expander;

/** Like the {@link Expander}, this {@link Dispenser} delivers tuples of digits
 *  up to some (limiting) base, but the values in the tuples are strictly increasing, with the
 *  general assertion that <code>meter[im + 1] &gt; meter[im], im = 0 to width-2</code>
 *  <p>
 *  This dispenser yields ({@link #base} over {@link #width}) different tuples until
 *  {@link #hasNext} becomes false.
 *  The results represent all different possibilites
 *  to select <em>width</em> elements out of a set of <em>base</em> elements.
 *  For example, for width = 3 and base = 5 the following result tuples are delivered:
<pre>
0 1 2
0 1 3
0 2 3
1 2 3
0 1 4
0 2 4
1 2 4
0 3 4
1 3 4
2 3 4
</pre>
 *
 *  @author Dr. Georg Fischer
 */
public class MonotoneExpander extends Expander {
    public final static String CVSID = "@(#) $Id: MonotoneExpander.java 744 2011-07-26 06:29:20Z  $";

    /** No-args Constructor, creates a binary MonotoneExpander of width 8
     */
    public MonotoneExpander() {
        this(4, 2);
    } // no-args Constructor

    /** Constructor with base 2
     *  @param width number of binary digits to be rolled
     */
    public MonotoneExpander(int width) {
        this(width, 2);
    } // binary Constructor

    /** Constructor with 2 parameters
     *  @param width number of parallel digits to be rolled
     *  @param base  digits are incremented modulo this base
     */
    public MonotoneExpander(int width, int base) {
        setBase(base);
        setWidth(width);
        reset();
    } // Constructor(base,width)

    /** Resets the dispenser and establishes the first ascending tuple
     */
    public void reset() {
        int im = 0;
        while (im < width - 1) { // build a ramp
            meter[im] = im;
            im ++;
        } // while ramp
        meter[im ++] = width - 1;
        rollOver = false;
        ceil = meter[width - 1];
    } // reset

    /** Takes the next fitting combination from an ordinary
     *  {@link Expander} algorithm - rather unpleasant and inefficient.
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
                busy = meter[im] > ceil;
                if (busy) {
                    meter[im] = im;
                }
                im ++;
            } // while busy
            if (busy) { // true iff the highest digit rolled over
                ceil ++;
                im = 0;
                while (im < width - 1) { // build a ramp
                    meter[im] = im; // im;
                    im ++;
                } // while ramp
                meter[im ++] = ceil;
                rollOver = ceil >= base;
                invalid = ! rollOver;
            }
            if (invalid) {
                invalid = false; // assume that it is a "good" tuple
                im = 0;
                while (im + 1 < width) {
                    if (meter[im] >= meter[im + 1]) { // not ascending => this is a "bad" tuple
                        invalid = true;
                        im = width; // break loop
                    }
                    im ++;
                } // while im
                // System.out.println("invalid: " + invalid + ", busy: " + busy + ", ceil: " + ceil);
            }
        } // while invalid
        return result;
    } // next

    /** Takes the next fitting combination from an ordinary
     *  {@link Expander} algorithm - rather unpleasant and inefficient.
     *  @return true if there was yet another combination, false
     *  if the method was called the maximum number of times.
     */
    public int[] next_ok() {
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
                busy = meter[im] > ceil;
                if (busy) {
                    meter[im] = 0;
                }
                im ++;
            } // while busy
            if (busy) { // true iff the highest digit rolled over
                ceil ++;
                im = 0;
                while (im < width - 1) { // build a ramp
                    meter[im] = 0; // im;
                    im ++;
                } // while ramp
                meter[im ++] = ceil;
                rollOver = ceil >= base;
                invalid = ! rollOver;
            }
            if (invalid) {
                invalid = false; // assume that it is a "good" tuple
                im = 0;
                while (im + 1 < width) {
                    if (meter[im] >= meter[im + 1]) { // not ascending => this is a "bad" tuple
                        invalid = true;
                        im = width; // break loop
                    }
                    im ++;
                } // while im
                // System.out.println("invalid: " + invalid + ", busy: " + busy + ", ceil: " + ceil);
            }
        } // while invalid
        return result;
    } // next_ok

    /** Test method, rolls through all combinations and prints them.
     *  @param args command line arguments: base width
     */
    public static void main(String[] args) {
        MonotoneExpander dispenser = new MonotoneExpander(4, 3);
        dispenser.configure(args);
        dispenser.reset();
        while (dispenser.hasNext()) {
            System.out.println(dispenser.toString());
            dispenser.next();
        } // while
    } // main

} // MonotoneExpander
