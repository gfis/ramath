/*  Reader for text file, returns an ArrayList of BigIntegers
 *  @(#) $Id: BFileReader.java 744 2011-07-26 06:29:20Z gfis $
 *  2013-02-27, Georg Fischer: copied from BFileReader
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
import  java.io.BufferedReader;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  org.apache.logging.log4j.Logger;
import  org.apache.logging.log4j.LogManager;

/** Reads an OEIS "b-file" which has lines with two numbers:
 *  a sequential index and the number of the sequence, for example
 *  b045917.txt, the number of possibilities to represent a number (the index)
 *  as a sum of two primes:
 *<pre>
1 0
2 1
3 1
4 1
5 2
6 1
7 2
8 2
9 2
10 2
11 3
 *</pre>
 *  @author Dr. Georg Fischer
 */
public class BFileReader {
    public final static String CVSID = "@(#) $Id: BFileReader.java 744 2011-07-26 06:29:20Z gfis $";

    /** log4j logger (category) */
    private Logger log;

    /* local copy of the sequence read from the b-file */
    private ArrayList<BigInteger> sequence;

    /** No-args Constructor
     */
    public BFileReader() {
        sequence = new ArrayList<BigInteger>(1024);
        sequence.add(BigInteger.ZERO);
    } // no-args Constructor

    /** Reads a text file, appends the (partial) sequence,
     *  and returns the sequence stored so far.
     *  Lines starting with "#" (possibly preceeded by whitespace)
     *  are treated as comments and are ignored, as are empty lines.
     *  If the line contains 2 numbers, the 1st is the index (which is ignored)
     *  and the 2nd is the number in the sequence.
     *  If the line contains only 1 number, that number is appended to the sequence.
     *  @param fileName name of the file to be parsed,
     *  or read from STDIN if <em>fileName</em> is <em>null</em>, empty or "-"
     *  @return array list with the sequence
     */
    public ArrayList<BigInteger> read(String fileName) {
        String line = null; // current line from text file
        String[] numbers = null;
        try {
            BufferedReader lineReader = new BufferedReader
                    ( (fileName == null || fileName.length() <= 0 || fileName.equals("-"))
                    ? new InputStreamReader(System.in)
                    : new FileReader(fileName)
                    );
            while ((line = lineReader.readLine()) != null) { // read and process lines
                if (! line.matches("\\s*#.*") && ! line.matches("\\s*")) { // no comment line, no empty line
                    numbers = line.trim().split("\\s+");
                    int last = numbers.length - 1;
                /*
                    try {
                        int index = Integer.parseInt(numbers[0]);
                    } catch (Exception exc) {
                    }
                */
                    sequence.add(new BigInteger(numbers[last]));
                } else {
                    // ignore comment line
                }
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
        return sequence;
    } // read

    /** Test method, reads a file and prints the concatenated lines
     *  @param args command line arguments: filename or empty = STDIN
     */
    public static void main(String[] args) {
        String fileName = null;
        if (args.length >= 2) {
            // ignore [0] = "-f"
            fileName = args[1];
        }
        ArrayList<BigInteger> seq = (new BFileReader()).read(fileName);
        int index = 0;
        while (index < seq.size()) {
            System.out.println(index + " " + seq.get(index).toString());
            index ++;
        } // while index
    } // main

} // BFileReader
