/*  Ferm3 - compute tuples of the form a^3 + b^3 + c^3 = d^3
 *  @(#) $Id: Ferm3.java 738 2011-07-12 15:14:44Z gfis $
 *  2008-10-07, Georg Fischer
 */
/*
 * Copyright 2008 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath;

/** Ferm3 - compute tuples of the form a^3 + b^3 + c^3 = d^3
 *	@author Dr. Georg Fischer
 */
public class Ferm3 { 
    public final static String CVSID = "@(#) $Id: Ferm3.java 738 2011-07-12 15:14:44Z gfis $";
    
    /** array for 3rd powers of natural numbers */
    private long[] a;

    /** No-args Constructor
     */
    public Ferm3() {
        this(1024);
    } // no-args Constructor

    /** Constructor with maximum array size
     *  @param maxA4 maximum value of 4th base number
     */
    public Ferm3(int maxA4) {
        a = new long[maxA4];
        for (int i = 0; i < 8; i ++) {
            a[i] = i * i * i;
        } // for i
    } // Constructor with maximum array size

    /** Generate tuples up to some maximum value of the 4th base number
     *  @param maxI4 maximum value of 4th base number
     */
    public void run(int maxI4) {
        long a1, a2, a3, a4, a123, a4_3, a3_2;
        int  i1, i2, i3, i4;
        i4 = 4;
        while (i4 < maxI4) {
            a4 = i4 * i4 * i4;
            a[i4] = a4; // increasing
            i3 = i4 - 1;
            a4_3 = a4 / 3;
            while (i3 > 0 && a[i3] >= a4_3) {
                a3 = a[i3];
                i2 = i3 - 1;
                a3_2 = a3 / 2;
                while (i2 > 0 && a[i2] >= a3_2) {
                    a2 = a[i2];
                    i1 = i2 - 1;
                    while (i1 > 0 && a[i1] + a2 + a3 > a4) {
                        i1 --;
                    } // while i1;
                    if (a[i1] + a2 + a3 == a4) {
                        System.out.println(i1 + "^3 + " + i2 + "^3 + " + i3 + "^3 = " + i4 + "^3"); 
                        // System.out.println("****" + a[i1] + "+" + a2 + "+" + a3 + "=" + a4);       
                    }
                    i2 --;
                } // while i2
                i3 --;
            } // while i3
            i4 ++;
        } // while i4            
    } // run

    /** Test method.
     *  @param args command line arguments: none
     */
    public static void main(String[] args) {
        Ferm3 ferm = new Ferm3(1024);
        ferm.run(128);
    } // main
       
} // Ferm3
