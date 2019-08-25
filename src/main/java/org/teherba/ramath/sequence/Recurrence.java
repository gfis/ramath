/*  Superclass for recurrences
 *  @(#) $Id: Recurrence.java 194 2009-07-07 21:10:32Z gfis $
 *  2019-08-25, Georg Fischer
 */
/*
 * Copyright 2019 Dr. Georg Fischer <dr.georg.fischer@gmail.com>
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
import  java.math.BigInteger;

/** General methods for recurrences
 *  @author Dr. Georg Fischer
 */
public class Recurrence {
    public final static String CVSID = "@(#) $Id: Recurrence.java 194 2009-07-07 21:10:32Z gfis $";

    /** No-args Constructor
     */
    public Recurrence() {
    } // no-args Constructor

    /** Test method.
     *  @param args command line arguments: none
     */
    public static void main(String[] args) {
        try {
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
            System.err.println("usage: java org.teherba.ramath.sequence.Recurrence");
        }
    } // main

} // Recurrence
