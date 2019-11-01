/*  Reader for text file, returns a string without any whitespace
 *  @(#) $Id: SequenceReader.java 744 2011-07-26 06:29:20Z gfis $
 *  2019-11-01: iterate over a list of A-numbers or an extract of file 'stripped'
 *  2019-08-29: parameter skip
 *  2019-08-25, Georg Fischer: copied from BigRational
 */
/*
 * Copyright 2019 Dr. Georg Fischer <dr.georg.fischer(at)gmail.com>
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

/** Reads the terms of a {@link Sequence} from the parameters or
 *  from a file containing either
 *  <ol>
 *  <li>an OEIS data section with comma (and space) separated terms, or<li>
 *  <li>an OEIS b-file</li>
 *  <li>a list of lines with A-numbers and a term list (extract of file 'stripped')</li>
 *  <li>a list of A-numbers, where the terms are to be read from a file in the b-file directory</li>
 *  </ol>
 *  The file encoding must always be UTF-8.
 *  @author Dr. Georg Fischer
 */
public class SequenceReader {
    public final static String CVSID = "@(#) $Id: SequenceReader.java 744 2011-07-26 06:29:20Z gfis $";

    /** log4j logger (category) */
    private Logger log;

    /** Encoding of the input file */
    private String srcEncoding;

    /** Reader for the list input file */
    private BufferedReader listReader;

    /** Path to the b-file directory */
    private String bFilePath;
    /** Sets the path where to find all b-files.
     *  @param bFilePath absolute or relative directory name
     */
    public void setBFilePath(String bFilePath) {
        this.bFilePath = bFilePath;
    } // setBFilePath

    /** Whether to read terms from the list (stripped extract), or from b-files */
    private boolean readFromBFile;
    /** Sets whether to read from b-files.
     *  @param readFromBFile true when b-files should be read
     */
    public void setReadFromBFile(boolean readFromBFile) {
        this.readFromBFile = readFromBFile;
    } // setReadFromBFile
    
    //----------------------------------

    /** No-args Constructor
     */
    public SequenceReader() {
        log           = Logger.getLogger(SequenceReader.class.getName());
        srcEncoding   = "UTF-8";
        readFromBFile = false;
        bFilePath     = ".";
    } // no-args Constructor

    /** Create an iterator over a list of lines which start with A-numbers, possibly followed
     *  by a term list.
     *  @param fileName name of the list file, or "-" for STDIN.
     */
    public void iterator(String fileName) {
        try {
            if (fileName == null || fileName.length() <= 0 || fileName.equals("-")) {
                listReader = new BufferedReader(new InputStreamReader(System.in, srcEncoding));
            } else {
                ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
                listReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
            }
        } catch (Throwable exc) {
            log.error("failed to read \"" + fileName + "\"");
        } // try
    } // iterator(String)

    /** Read next sequence from the iterator.
     *  @return the sequence which was read, or <em>null</em> at the end of the list file
     */
    public Sequence next() {
        Sequence result = null;
        try {
            String line = listReader.readLine();
            if (line != null) {
                result = parse(line, readFromBFile);
            } else {
                listReader.close();
                // return null
            }
        } catch (Throwable exc) {
            log.error(exc.getMessage());
        } // try
        return result;
    } // next()

    /** Parse a list of terms and return them as a {@link Sequence}..
     *  @param dataLine list of numbers, maybe negative, separated by non-digits,
     *  and possibly prepended by the A-number and a space.
     *  No b-file is read by this method.
     */
    public Sequence parse(String dataLine) {
        return parse(dataLine, false); // do not read from b-file
    } // parse(String)

    /** Parse a list of terms and return them as a {@link Sequence}..
     *  @param dataLine list of numbers, maybe negative, separated by non-digits,
     *  and possibly prepended by the A-number and a space.
     *  @param fromBfile whether the terms are to be read from the <em>dataLine</em>,
     *  or from the b-file.
     */
    public Sequence parse(String dataLine, boolean fromBfile) {
        Sequence result = null;
        int startPos = 0;
        String aNumber = "Annnnnn";
        if (dataLine.startsWith("A")) {
            startPos = dataLine.indexOf(' ');
            if (startPos >= 6) {
                aNumber = dataLine.substring(0, startPos);
            } else {
                startPos = 0;
            }
            // System.out.println("dataLine=\"" + dataLine + "\",  startPos=" +  startPos + ", aNumber=\"" + aNumber + "\"");
        } // startsWIth("A")

        if (fromBfile) {
            result = readBFile(bFilePath + "/b" + aNumber.substring(1) + ".txt");
            result.setANumber(aNumber);
        } else { // not from b-file
            int endPos = dataLine.length() - 1;
            while (endPos >= 0 && ! Character.isDigit(dataLine.charAt(endPos))) {
                endPos --;
            }
            while (startPos <= endPos && dataLine.substring(startPos, startPos + 1).matches("[^\\-0-9]+")) {
                startPos ++;
            }
            String[] terms = dataLine.substring(startPos, endPos + 1).split("[^\\-0-9]+");
            result = new Sequence(terms.length);
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
        } // not from b-file
        return result;
    } // parse(String,boolean)

    /** Reads a sequence from an OEIS b-file.
     *  All terms are read.
     *  @param fileName name of the file to be read
     *  @return a {@link Sequence} with several properties set.
     */
    public Sequence readBFile(String fileName) {
        return readBFile(fileName, 29061947, 0); // 29 MB, more than in any real b-file
    } // readBFile(String)

    /** Reads a sequence from an OEIS b-file.
     *  @param fileName name of the file to be read
     *  @param maxTermNo maximum number of terms to be read
     *  @return a {@link Sequence} with several properties set.
     */
    public Sequence readBFile(String fileName, int maxTermNo) {
    /** Reads a sequence from an OEIS b-file.
     *  @param fileName name of the file to be read
     *  @param maxTermNo maximum number of terms to be read
     *  @return a {@link Sequence} with several properties set.
     */
        return readBFile(fileName, maxTermNo, 0); // start at first term
    } // readBFile(String,int)

    /** Reads a sequence from an OEIS b-file.
     *  @param fileName name of the file to be read
     *  @param maxTermNo maximum number of terms to be read
     *  @param skip number of leading terms to be skipped, or 0 if none
     *  @return a {@link Sequence} with several properties set.
     */
    public Sequence readBFile(String fileName, int maxTermNo, int skip) {
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
            while (busy && termNo < maxTermNo && (line = lineReader.readLine()) != null) { // read and process lines
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
                        if (skip <= 0) {
                            termNo ++;
                            if (termNo == 1) {
                                offset = Long.parseLong(line.substring(0, spacePos));
                            }
                            buffer.add(new BigInteger(line.substring(spacePos + 1)));
                        } else {
                            skip --;
                        }
                    } else { // wrong format
                        log.error("wrong b-file format in line " + lineCount);
                        busy = false; // break loop
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

    //=========================================================================
    /** Test method: evaluates arguments and prints the terms in b-file format.
     *  @param args command line arguments:
     *  <ol>
     *  <li>-a A-number</li>
     *  <li>-b dir, when b-files should be read</li>
     *  <li>-d term list, comma separated</li>
     *  <li>-f name of list file</li>
     *  </ol>
     */
    public static void main(String[] args) {
        Sequence seq = null;
        String aNumber  = "";
        String bfPath   = "";
        String dataList = "";
        String fileName = "";
        SequenceReader reader = new SequenceReader();
        int iarg = 0;
        if (false) {
        } else if (args.length == 0) {
            System.out.println("usage: java -cp ramath.jar org.teherba.ramath.sequence.SequenceReader"
                    + "\n    -a A-number\n"
                    + "\n    -b path path to the directory with b-files\n"
                    + "\n    -d term list, comma separated<\n"
                    + "\n    -f name of list file");
        } else { // more than one argment
            while (iarg < args.length) { // evaluate args
                String opt = args[iarg ++];
                if (false) {
                } else if (opt.equals("-a")) {
                    aNumber      = args[iarg ++];
                } else if (opt.equals("-b")) {
                    bfPath       = args[iarg ++];
                    reader.setReadFromBFile(true);
                    reader.setBFilePath(bfPath);
                } else if (opt.equals("-d")) {
                    dataList     = args[iarg ++];
                } else if (opt.equals("-f")) {
                    fileName     = args[iarg ++];
                } else {
                    System.err.println("invalid option \"" + opt + "\"");
                }
            } // while args
            
            if (fileName.length() > 0) {
                reader.iterator(fileName);
                boolean busy = true;
                while (busy) {
                    seq = reader.next();
                    if (seq != null) {
                        System.out.println(seq.getANumber() + " " + seq.toList(8));
                    } else {
                        busy = false;
                    }
                } // while busy
            } else {
                seq = reader.parse(aNumber + " "+ dataList);
                System.out.println(seq.getANumber() + " " + seq.toList(8));
            }   
        } // several arguments
    } // main

} // SequenceReader
