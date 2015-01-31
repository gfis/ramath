/*  Permutator: an odometer which enumerates all permutations of digits modulo some base.
 *  @(#) $Id: Permutator.java 744 2011-07-26 06:29:20Z gfis $
 *  2013-08-04: bad error when base was not initialized to width
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
import  org.teherba.ramath.util.ModoMeter;

/** A {@link Dispenser} which yields a subset of the tuples dispensed by
 *  a {@link ModoMeter}, namely all permutations of the digits modulo some {@link #base},
 *  which must be the same as the {@link #width}.
 *  That is, the digits in the result tuple are always all different.
 *  <p>
 *  This Dispenser yields factorial({@link #width}) different tuples until
 *  {@link #hasNext} becomes false.
 *  For width = 3, the following 6 result tuples are delivered:
<pre>
0 1 2 3
2 1 0 3
1 2 0 3
2 0 1 3
0 2 1 3
1 0 2 3
</pre>
 *
 *  @author Dr. Georg Fischer
 */
public class Permutator extends Dispenser {
    public final static String CVSID = "@(#) $Id: Permutator.java 744 2011-07-26 06:29:20Z gfis $";

    /** Debugging switch */
    private int debug = 0;

    /** No-args Constructor
     */
    public Permutator() {
        this(4);
    } // no-args Constructor

    /** Constructor with width
     *  @param width number of digits to be rolled
     */
    public Permutator(int width) {
        setWidth(width);
        setBase(width);
        reset();
    } // Constructor(width)

    /** Resets the dispenser to (0,1,2, -- width-1).
     *  In contrast to other {@link Dispenser}s, the tuple is
     *  not reset to zeroes, but to the first permutation.
     */
    public void reset() {
        int im = 0;
        while (im < width) {
            meter[im] = im; // caution, not: meter[im] = 0; !
            signs[im] = 0; // no sign
            im ++;
        } // for im
        rollOver = false;
    } // reset

    /** Sets the base - for compatibility only;
     *  to set it different from the {@link #width} makes no sense for a permutation.
     *  @param base base of digits which roll
     */
    public void setBase(int base) {
        this.base = getWidth();
    } // setBase

    /** Takes the next fitting combination from an ordinary
     *  {@link ModoMeter#next} algorithm - rather unpleasant and inefficient.
     *  @return an array with the <em>original</em> digits tuple <em>before</em> rolling
     */
    public int[] next() {
        int[] result = toArray(); // first copy current tuple to the result
        int im = 0;
        boolean busy = true;
        boolean iterating = true;
        while (iterating) { // as long as tuples are "bad"
            if (debug >= 2) {
                System.out.println("#perm.next.1 ");
            }
            im = 0;
            busy = true;
            while (busy && im < width) { // then roll
                if (debug >= 2) {
                    System.out.println("#perm.next.2 " + im);
                }
                meter[im] ++;
                busy = meter[im] >= base;
                if (busy) {
                    meter[im] = 0;
                }
                im ++;
            } // while busy

            iterating = false; // assume that it is a "good" tuple
            boolean[] occurs = new boolean[width];
            im = 0;
            while (im < width) {
                if (debug >= 2) {
                    System.out.println("#perm.next.3 " + im);
                }
                int digit = meter[im];
                if (occurs[digit]) { // same digit => "bad tuple"
                    iterating = true;
                    im = width; // break loop
                } else {
                    occurs[digit] = true;
                }
                im ++;
            } // while im
        } // while iterating

        im = 1;
        rollOver = true;
        while (im < width) { // check for ascending
            if (debug >= 2) {
                System.out.println("#perm.next.4 " + im);
            }
            if (meter[im - 1] >= meter[im]) {
                rollOver = false;
            }
            im ++;
        } // while im
        // now rollOver when strictly ascending digits, implies hasNext = false
        return result;
    } // next

    /** Test method, rolls through all combinations and prints them.
     *  @param args command line arguments: width
     */
    public static void main(String[] args) {
        Permutator dispenser = new Permutator(4);
        dispenser.configure(args);
        dispenser.reset();
        int loop = 32;
        while (loop > 0) {
            System.out.println(dispenser.hasNext() +  "\t" + dispenser.toString());
            dispenser.next();
            loop --;
        } // while loop
    } // main

} // Permutator
