/*  PlayField - for some Java experiments
 *  @(#) $Id$
 *  2021-07-12: Georg Fischer: copied from JoeisExpressionBuilder.java
 */
/*
 * Copyright 2021 Dr. Georg Fischer
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

/** This class does nothing important.
 *  @author Dr. Georg Fischer
 */
public class PlayGround{
    public static void main(String[] args) {
        int iarg = 0;
        int debug = 0;
        String fileName = "-"; // assume STDIN
        while (iarg < args.length) { // consume all arguments
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.equals    ("-d")     ) {
                debug = 1;
                try {
                    debug = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) { // take default
                }
            } else if (opt.equals    ("-p")     ) {
                fileName = args[iarg ++];
            } else {
            }
        } // while args
        // -(1 + f^(1/3)/2^(2/3) + 131/(2*f)^(1/3))/3, where f=3307-387*sqrt(43)
        // System.out.println((int)((int f) -> {f = 17*2; return f + 17; }));
    } // main

} // PlayGround

