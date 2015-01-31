/*  Root: Computes the nth root of a number a.
 *  @(#) $Id: Root.java 538 2010-09-08 15:08:36Z gfis $
 *  2013-09-18, Georg Fischer
 *  see:
 *  http://pastebin.com/3UbgNMHG referenced by
 *  http://stackoverflow.com/questions/8826822/calculate-nth-root-with-integer-arithmetic
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
import  org.teherba.ramath.BigIntegerUtil; // root
import  java.math.BigInteger;

/** Computes the n'th root of some BigInteger by Newton-Raphson iteration
 *  @author Dr. Georg Fischer
 */
public class Root {
    public final static String CVSID = "@(#) $Id: Root.java 538 2010-09-08 15:08:36Z gfis $";

    /** No-args Constructor
     */
    public Root() {
    } // no-args Constructor

    /*----------------- test driver ----------------------*/

    /** Test method.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        int iarg = 0;
        BigInteger a = new BigInteger(args[iarg ++]);
        int n = 1;
        try {
            n = Integer.parseInt(args[iarg ++]);
        } catch (Exception exc) {
        }
        System.out.println(n + "th root of " + a.toString() +  " = " + BigIntegerUtil.root(a, n));
    } // main

} // Root
