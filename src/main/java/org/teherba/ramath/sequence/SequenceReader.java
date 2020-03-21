/*  Reader for text file, returns a string without any whitespace
 *  @(#) $Id: SequenceReader.java gfis $
 *  2020-02-10: private static parse
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

    /** debug mode: 0=none, 1=some, 2=more */
    private int debug = 1;

    /** Encoding of the input file */
    private String srcEncoding;

    /** Reader for the list input file */
    private BufferedReader listReader;

    //---- -a
    /** OEIS A-number */
    private String aNumber;
    /** Gets the OEIS A-number.
     *  @return aNumber "A" and 6 digits
     */
    public String getANumber() {
        return aNumber;
    } // getANumber
    /** Sets the OEIS A-number.
     *  @param aNumber "A" and 6 digits
     */
    public void setANumber(String aNumber) {
        this.aNumber = aNumber;
    } // setANumber

    //---- -b
    /** Path to the b-file directory */
    private String bFilePath;
    /** Gets the path where to find all b-files.
     *  @return absolute or relative directory name
     */
    public String getBFilePath() {
        return bFilePath;
    } // getBFilePath
    /** Sets the path where to find all b-files.
     *  @param bFilePath absolute or relative directory name
     */
    public void setBFilePath(String bFilePath) {
        this.bFilePath = bFilePath;
    } // setBFilePath

    /** Gets the name of the b-file
     *  @return absolute or relative path and filename
     */
    public String getBFileName() {
        return bFilePath + "/b" + getANumber().substring(1) + ".txt";
    } // getBFileName

    /** Whether to read terms from the list (stripped extract), or from b-files */
    private boolean readFromBFile;
    /** Sets whether to read from b-files.
     *  @param readFromBFile true when b-files should be read
     */
    public void setReadFromBFile(boolean readFromBFile) {
        this.readFromBFile = readFromBFile;
    } // setReadFromBFile

    //---- -d
    /** Comma-separated list of terms */
    private String dataList;
    /** Gets the data list.
     *  @return comma-separated list of terms
     */
    public String getDataList() {
        return dataList;
    } // getDataList
    /** Sets the data list.
     *  @param dataList comma-separated list of terms
     */
    public void setDataList(String dataList) {
        this.dataList = dataList;
    } // setDataList

    //---- -f
    /** Name of a list file icontaining A-numbers and term lists*/
    private String listFile;
    /** Gets the list file name.
     *  @return name of list file
     */
    public String getListFile() {
        return listFile;
    } // getListFile
    /** Sets the list file name.
     *  @param listFile name of list file
     */
    public void setListFile(String listFile) {
        this.listFile = listFile;
    } // setListFile

    /** Determines whether a list file is read, or a single sequence.
     *  @return whether a list file is read
     */
    public boolean hasListFile() {
        return this.listFile != null;
    } // hasListFile

    //---- -m
    /** Maximum number of terms to be read */
    private int maxTermNo;
    /** Gets the maximum number of terms to be read.
     *  @return number of terms, irrespective of offset
     */
    public int getMaxTermNo() {
        return this.maxTermNo;
    } // getMaxTermNo
    /** Sets the maximum number of terms to be read.
     *  @param maxTermNo number of terms, irrespective of offset
     */
    public void setMaxTermNo(int maxTermNo) {
        this.maxTermNo = maxTermNo;
    } // setMaxTermNo

    /** Line containing next sequence to be returned from the iterator */
    private String oldLine;
    /** Determines whether there is a next sequence to be returned from the iterator,
     *  @return true if there is still a sequence, false otherwise
     */
    public boolean hasNext() {
        return this.oldLine != null;
    } // hasListFile
    //----------------------------------

    /** No-args Constructor
     */
    public SequenceReader() {
        log = Logger.getLogger(SequenceReader.class.getName());
        oldLine        = null;
        srcEncoding    = "UTF-8";
        setANumber      ("A000000");
        setReadFromBFile(false);
        setBFilePath    (null);
        setDataList     ("1,2,3,4");
        setListFile     (null);
        setMaxTermNo    (29061947); // for one b-file, very high
    } // no-args Constructor

    /** Constructor with maximum number of terms
     *  @param maxTermNo number of terms
     */
    public SequenceReader(int maxTermNo) {
        this();
        setMaxTermNo(maxTermNo);
    } // Constructor(int)

    /** Create an iterator over a list of lines which start with A-numbers, possibly followed
     *  by a comma-separated term list. 
     *  Comment lines starting with whitespace and "#" are ignored.
     */
    private void initialize() {
        if (hasListFile()) {
            String fileName = getListFile();
            try {
                if (fileName == null || fileName.length() <= 0 || fileName.equals("-")) {
                    listReader = new BufferedReader(new InputStreamReader(System.in, srcEncoding));
                } else {
                    ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
                    listReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
                }
                oldLine = listReader.readLine();
                while (oldLine != null && oldLine.matches("\\A\\s*\\#.*")) { // skip comments
                    oldLine = listReader.readLine();
                } // while skipping comments
            } catch (Throwable exc) {
                log.error("SequenceReader.initialize: failed to read \"" + fileName + "\"");
            } // try
        } else {
            oldLine = getANumber() + " " + getDataList();
        }
    } // initialize()

    /** Read next sequence from the iterator.
     *  @return the sequence which was read, or <em>null</em> at the end of the list file
     */
    public Sequence next() {
        Sequence result = parse(oldLine, readFromBFile);
        if (hasListFile()) { // with -f
            try {
                oldLine = listReader.readLine();
                while (oldLine != null && oldLine.matches("\\A\\s*\\#.*")) { // skip comments
                    oldLine = listReader.readLine();
                } // while skipping comments
                if (oldLine == null) {
                    listReader.close();
                }
            } catch (Throwable exc) {
                log.error(exc.getMessage());
            } // try
        } else { // only one data line from -a and -d
            oldLine = null;
        }
        return result;
    } // next()

    /** Parse a list of terms and return them as a {@link Sequence}..
     *  @param dataLine list of numbers, maybe negative, separated by non-digits,
     *  and possibly prepended by the A-number and a space.
     *  No b-file is read by this method.
     */
    private Sequence parse(String dataLine) {
        return parse(dataLine, false); // do not read from b-file
    } // parse(String)

    /** Parse a list of terms and return them as a {@link Sequence}..
     *  @param dataLine list of numbers, maybe negative, separated by non-digits,
     *  and possibly prepended by the A-number and a space.
     *  @param fromBfile true if the terms are to be read from the b-file,
     *  false for reading from the <em>dataLine</em>.
     */
    private Sequence parse(String dataLine, boolean fromBfile) {
        Sequence result = null;
        int startPos = 0;
        if (dataLine.startsWith("A")) {
            startPos = dataLine.indexOf(' ');
            if (startPos < 0) {
                startPos = dataLine.length();
            }
            setANumber(dataLine.substring(0, startPos));
            // System.out.println("dataLine=\"" + dataLine + "\",  startPos=" +  startPos + ", aNumber=\"" + aNumber + "\"");
            // .startsWith("A")
        } else { 
            startPos = 0;
        }

        if (fromBfile) {
            result = readBFile(getBFileName(), maxTermNo, 0);
        } else { // not from b-file
            int endPos = dataLine.length() - 1;
            while (endPos >= 0 && ! Character.isDigit(dataLine.charAt(endPos))) { // remove trailing non-digits
                endPos --;
            } // while trailing
            while (startPos <= endPos && dataLine.substring(startPos, startPos + 1).matches("[^\\-0-9]+")) {
                // remove leading non-digits
                startPos ++;
            } // while leading
            String[] terms = dataLine.substring(startPos, endPos + 1).split("[^\\-0-9]+"); // split on non-digits
            int minTerms = terms.length < maxTermNo ? terms.length : maxTermNo;
            result = new Sequence(minTerms);
            int iterm = 0;
            result.setOffset(iterm);
            while (iterm < minTerms) {
                // System.out.println("terms[" + iterm + "] = \"" + terms[iterm] + "\"");
                if (terms[iterm].length() > 0) {
                    result.setBig(iterm, new BigInteger(terms[iterm]));
                }
                iterm ++;
            } // while iterm
            result.setBfimax(iterm - 1);
        } // not from b-file
        result.setANumber(getANumber());
        return result;
    } // parse(String,boolean)

    /** Reads a sequence from an OEIS b-file.
     *  All terms are read.
     *  @param fileName name of b-file
     *  @return a {@link Sequence} with several properties set.
     */
    public Sequence readBFile(String fileName) {
        return readBFile(fileName, 29061947, 0); // 29 MB, more than in any real b-file
    } // readBFile(String)

    /** Reads a sequence from an OEIS b-file.
     *  @param bFilePath path to directory with b-files
     *  @param aNumber OEIS A-number of the sequence which implies the name of the b-file
     *  @param maxTerms maximum number of terms to be read
     *  @return a {@link Sequence} with several properties set.
     */
    public Sequence readBFile(String bFilePath, String aNumber, int maxTerms) {
        String fileName = bFilePath + "/b" + aNumber.substring(1) + ".txt";
        return readBFile(fileName, maxTerms, 0); // start at first term
    } // readBFile(String,int)

    /** Reads a sequence from an OEIS b-file.
     *  @param fileName name of b-file
     *  @param maxTerms maximum number of terms to be read
     *  @param skip number of leading terms to be skipped, or 0 if none
     *  @return a {@link Sequence} with several properties set.
     */
    public Sequence readBFile(String fileName, int maxTerms, int skip) {
        ArrayList<BigInteger> buffer = new ArrayList<BigInteger>(256);
        long offset = 0;
        int termNo = 0;
        try {
            ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
            BufferedReader lineReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
            String line = null;
            int lineCount = 0;
            boolean busy = true;
            while (busy && termNo < maxTerms && (line = lineReader.readLine()) != null) { // read and process lines
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

    /** Create and configure a new {@link SequenceReader}-
     *  @param iarg starting index in <em>args</em>
     *  @param args command line arguments:
     *  <ol>
     *  <li>-a A-number</li>
     *  <li>-b dir, when b-files should be read</li>
     *  <li>-d term list, comma separated</li>
     *  <li>-f name of list file</li>
     *  <li>-m maximum number of terms (default: 8)</li>
     *  </ol>
     */
    public static SequenceReader configure(int iarg, String[] args) {
        SequenceReader reader = new SequenceReader();
        while (iarg < args.length) { // evaluate args
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.equals("-a")) {
                reader.setANumber   (args[iarg ++]);
            } else if (opt.equals("-b")) {
                reader.setBFilePath (args[iarg ++]);
                reader.setReadFromBFile(true);
            } else if (opt.equals("-d")) {
                reader.setDataList  (args[iarg ++]);
            } else if (opt.equals("-f")) {
                reader.setListFile  (args[iarg ++]);
            } else if (opt.equals("-m")) {
                try {
                    reader.setMaxTermNo(Integer.parseInt(args[iarg ++]));
                } catch (Exception exc) {
                }
            } else {
                System.err.println("invalid option \"" + opt + "\"");
            }
        } // while args
        reader.initialize();
        return reader;
    } // Configure()

    //=========================================================================
    /** Test method: evaluates arguments and prints the terms in b-file format.
     *  @param args command line arguments:
     *  <ol>
     *  <li>-a A-number</li>
     *  <li>-b dir, when b-files should be read</li>
     *  <li>-d term list, comma separated</li>
     *  <li>-f name of list file</li>
     *  <li>-m maximum number of terms (default: 8)</li>
     *  </ol>
     */
    public static void main(String[] args) {
        Sequence seq = null;
        String aNumber  = "A123456";
        String bfPath   = "";
        String dataList = "1,2,3,4";
        String fileName = "";
        int maxTerms    = 8; // default
        int iarg = 0;
        if (false) {
        } else if (args.length == 0) {
            System.out.println("usage: java -cp ramath.jar org.teherba.ramath.sequence.SequenceReader"
                    + "\n    -a A-number"
                    + "\n    -b path path to the directory with b-files"
                    + "\n    -d term list, comma separated"
                    + "\n    -f name of list file"
                    + "\n    -m maximim number of terms to be read per sequence"
                     );
        } else { // more than one argment
            SequenceReader reader = SequenceReader.configure(iarg, args);
            while (reader.hasNext()) {
                seq = reader.next();
                System.out.println(seq.getANumber() + " " + seq.toList());
            } // while hasNext
        } // several arguments
    } // main

} // SequenceReader
