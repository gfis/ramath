/*  Reader for text file, returns a string without any whitespace
 *  @(#) $Id: SequenceReader.java 744 2011-07-26 06:29:20Z gfis $
 *  2019-08-25, Georg Fischer: copied from BigRational
 */
/*
 * Copyright 2019 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.sequence.Sequence;
import  java.io.BufferedReader;
import  java.io.FileInputStream;
import  java.io.InputStreamReader;
import  java.math.BigInteger;
import  java.nio.channels.Channels;
import  java.nio.channels.ReadableByteChannel;
import  java.util.ArrayList;
import  org.apache.log4j.Logger;

/** Reads the terms of a {@link Sequence} from the parameters or a file containing either
 *  <ol>
 *  <li>an OEIS data section, or<li>
 *  <li>an OEIS b-file</li>
 *  </ol>
 *  The file's encoding must always be UTF-8.
 *  @author Dr. Georg Fischer
 */
public class SequenceReader {
    public final static String CVSID = "@(#) $Id: SequenceReader.java 744 2011-07-26 06:29:20Z gfis $";

    /** log4j logger (category) */
    private Logger log;

    /** Encoding of the input file */
    private String srcEncoding;

    /** Reader for the input file */
    private BufferedReader lineReader;

    /** No-args Constructor
     */
    public SequenceReader() {
        srcEncoding = "UTF-8";
    } // no-args Constructor

    /** Constructor with a list of terms.
     *  @param termList list of numbers, maybe negative, separated by non-digits,
     *  and possibly prepended by the A-number and a space
     */
    public Sequence parse(String termList) {
        int startPos = 0;
        String aNumber = "Annnnnn";
        if (termList.startsWith("A")) {
            startPos = termList.indexOf(' ');
            if (startPos >= 6) {
                aNumber = termList.substring(0, startPos);
            } else {
                startPos = 0;
            }
            // System.out.println("termList=\"" + termList + "\",  startPos=" +  startPos + ", aNumber=\"" + aNumber + "\"");
        }
        int endPos = termList.length() - 1;
        while (endPos >= 0 && ! Character.isDigit(termList.charAt(endPos))) {
            endPos --;
        }
        while (startPos <= endPos && termList.substring(startPos, startPos + 1).matches("[^\\-0-9]+")) {
            startPos ++;
        }
        String[] terms = termList.substring(startPos, endPos + 1).split("[^\\-0-9]+");
        Sequence result = new Sequence(terms.length);
        result.setANumber(aNumber);
        int iterm = 0;
        result.setOffset(iterm);
        while (iterm < terms.length) {
            // System.out.println("terms[" + iterm + "] = \"" + terms[iterm] + "\"");
            if (terms[iterm].length() > 0) {
                result.setBig(iterm, new BigInteger(terms[iterm]));
            }
            iterm ++;
        } // while iterm
        result.setBfimax(iterm - 1);
        return result;
    } // Constructor(String)

    /** Reads a sequence from an OEIS b-file.
     *  @param fileName name of the file to be read
     *  @return a {@link Sequence} with several properties set.
     */
    public Sequence readBFile(String fileName) {
        ArrayList<BigInteger> buffer = new ArrayList<BigInteger>(256);
        long offset = 0;
        int termNo = 0;
        String aNumber = "Annnnnn";
        try {
            ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
            BufferedReader lineReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
            String line = null;
            int lineCount = 0;
            boolean busy = true;
            while (busy && (line = lineReader.readLine()) != null) { // read and process lines
                lineCount ++;
                int hashPos = line.indexOf('#');
                if (hashPos >= 0) { // hash found
                    line = line.substring(0, hashPos); // remove comment
                }
                line = line.replaceAll("\\s+", " "); // a single space; beware of \t, \r whitespace
                line = line.trim(); // remove any surrounding space
                if (line.length() > 0) { // line not empty
                    int spacePos = line.indexOf(' ');
                    if (spacePos >= 0) {
                        termNo ++;
                        if (termNo == 1) {
                            offset = Long.parseLong(line.substring(0, spacePos));
                        }
                        buffer.add(new BigInteger(line.substring(spacePos + 1)));
                    } else { // wrong format
                        log.error("wrong b-file format in line " + lineCount);
                        busy = false;
                    }
                } // line not empty
            } // while ! eof
            lineReader.close();
        } catch (Throwable exc) {
            log.error("failed to read \"" + fileName + "\"");
        } // try
        Sequence result = new Sequence(buffer.size());
        result.setOffset(offset);
        result.setBfimax(offset + termNo - 1);
        if (fileName.matches(".*b\\d{6}\\.txt")) {
            //                 098765  4321 
            int fnLen = fileName.length();
            aNumber = "A" + fileName.substring(fnLen - 10, fnLen - 4);
        }
        result.setANumber(aNumber);
        int iterm = 0;
        while (iterm < buffer.size()) {
            result.setBig(iterm, buffer.get(iterm));
            iterm ++;
        } // while iterm
        return result;
    } // readBFile

    /** Test method: evaluates arguments and prints the terms in b-file format.
     *  @param args command line arguments:
     *  <ol>
     *  <li>[A-number] term-list or</li>
     *  <li>-f filename</li>
     *  </ol>
     */
    public static void main(String[] args) {
        Sequence seq = null;
        String aNumber = "";
        SequenceReader reader = new SequenceReader();
        int iarg = 0;
        if (false) {
        } else if (args.length == 0) {
            System.out.println("usage: java -cp ramath.jar org.teherba.ramath.sequence.SequenceReader"
                    + " [-f b-filename | [A-number] term-list]");
        } else if (args[iarg].equals("-f")) {
            iarg ++;
            seq = reader.readBFile(args[iarg ++]);
        } else if (args.length == 1) {
            seq = reader.parse(args[iarg ++]);
        } else { // more than one argment
            String terms = args[iarg ++];
            String sep = ",";
            if (terms.startsWith("A")) {
                sep = " ";
            }
            while (iarg < args.length) {
                terms = terms + sep + args[iarg ++];
                sep = ",";
            } // while iarg
            seq = reader.parse(terms);
        }
       int iterm = 0;
        long n = seq.getOffset();
        System.out.println("# " + seq.getANumber() + " generated by SequenceReader");
        System.out.println("# Table of n, a(n) for n = " + seq.getOffset() + ".." + seq.getBfimax());
        while (iterm < seq.size()) {
            System.out.println(n + " " + seq.getBig(iterm));
            iterm ++;
            n ++;
        } // while iterm
    } // main

} // SequenceReader
