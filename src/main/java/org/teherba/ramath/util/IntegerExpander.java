/*  IntegerExpander: similiar to ModoMeter, but with different ordering
 *  @(#) $Id: IntegerExpander.java 744 2011-07-26 06:29:20Z  $
 *  2018-01-21: reduce constructors
 *  2013-09-10: parameters base and width interchanged, signed dispenser
 *  2013-09-05: new sequence
 *  2013-07-05, Georg Fischer: copied from Expander
 *
 *  Timing:
 *   9 |digits| < 3:  36 s
 *  10 |digits| < 3: 178 s = 3 m
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
import  org.teherba.ramath.util.Expander;

/** Like the {@link Expander}, this dispenser delivers tuples with all combinations of digits
 *  below some (limiting) base, but negative digits are also delivered.
 *  This Dispenser yields (2 * {@link #base} - 1) ** {@link #width} different tuples until
 *  {@link #hasNext} becomes false. For example in test U08, 125 tuples are generated with
 *  the digits -2, -1, 0, 1, 2.
 *  @author Dr. Georg Fischer
 */
public class IntegerExpander extends Expander {
    public final static String CVSID = "@(#) $Id: IntegerExpander.java 744 2011-07-26 06:29:20Z  $";

    /** No-args Constructor, creates a defaultIntegerExpander of width 4 for -1,0,+1
     */
    public IntegerExpander() {
        this(4);
    } // no-args Constructor

    /** Constructor with default base 2
     *  @param width number of digits to be rolled
     */
    public IntegerExpander(int width) {
        this(width, 2);
    } // Constructor

    /** Constructor with 2 parameters
     *  @param width number of parallel digits to be rolled
     *  @param base  digits are incremented up to this base
     */
    public IntegerExpander(int width, int base) {
        super(width, base, -1);
    } // Constructor(2)

    /** Test method, rolls through all combinations and prints them.
     *  @param args command line arguments: base width
     */
    public static void main(String[] args) {
        IntegerExpander dispenser = new IntegerExpander(4);
        dispenser.configure(args);
        dispenser.reset();
        while (dispenser.hasNext()) {
            System.out.println(dispenser.toString());
            dispenser.next();
        } // while
    } // main

} // IntegerExpander
