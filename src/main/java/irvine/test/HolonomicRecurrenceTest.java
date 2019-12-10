/* Test class HolonomicRecurrence, determine init terms, run backwards
 * @(#) $Id$
 * 2019-12-08: Georg Fischer
 */
package irvine.test;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.math.BigInteger;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.ArrayList;

import irvine.math.z.Z;
import irvine.math.z.ZUtils;
import irvine.oeis.HolonomicRecurrence;

/**
 * A holonomic sequence is defined by a recurrence equation
 * where the factors <code>P[i], i=0..k</code> of <code>a[n-i], i=0..k</code> are either constant
 * (like in <code>LinearRecurrence.java</code>), or are polynomials in <code>n</code>..
 * The equation is written in the form of an <code>annihilator</code>:
 * <pre>
 * P[0]*1 + P[1]*a[n-k+1] + P[2]*a[n-k+2] + ...+ P[k-1]*a[n-k+k-1] + P[k]*a[n] = 0
 * </pre>
 * <code>k-1</code> is the order of the recurrence,
 * and <code>p[i], i= 0..k</code> are the polynomials (or constants) in <code>n</code>.
 * <code>a[n]</code> is the next term to be computed.
 * The recurrence equation may have a term <code>P[0]</code> which is independent
 * of any sequence term.
 * This class runs {@link HolonomicRecurrence} 
 * <ul>
 * <li>with parameter lists read from a file,</li>
 * <li>for the determination of the necessary initial terms,</li>
 * <li>backwards to get a new sequence.</li>
 * </ul>
 * @author Georg Fischer
 */
public class HolonomicRecurrenceTest {
  protected static int sDebug = 0;

  /** Fields of the input line */
  private String[] parms;

  /** A-number of the OEIS sequence */
  private String aseqno;

  /** Code for a specific generation process in joeis-lite */
  private String callCode;

  /** Number of terms to be generated */
  private int numTerms;

  /** Offset of the sequence, as String */
  private int mOffset;

  /** Distance d > 0 if a(n+d) is the highest and next element to be computed (0 <= d <= k). */
  private int mNDist;

  /** List of vectors for the coefficient polynomials */
  private String mPolyList;

  /** Vectors for the initial terms */
  private String mInitTerms;

  /** Current index for {@link #parms} */
  private int iparm;
  
  /** Instance to be tested. */
  private HolonomicRecurrence mHolRec;

  /**
   * Empty constructor.
   */
  protected HolonomicRecurrenceTest() {
    mHolRec = new HolonomicRecurrence(0, "[0,1,1,-1]" /* Fibonacci */, "[0,1]", 0);
  }

//  /** 
//   * Evaluate the recurrence and gets a list of terms.
//   * @param holRec instance to be reversed
//   * @return a call to RecurrenceTable.
//   */
//  private String getMathematica(HolonomicRecurrence holRec) {
//    StringBuffer result = new StringBuffer(256);
//    int ind = 0;
//    result.append("RecurrenceTable[{");
//    for (ind = 0; ind < mPolyList.size(); ind ++) { // polynomials
//      Z[] poly = mPolyList.get(ind);
//      for (int iexp = 0; iexp < poly.length; iexp ++) {
//        if (iexp > 0) {
//          result.append(',');
//        }
//      } // iexp
//      result.append(",a[");
//      result.append(ind);
//      result.append("]=");
//      result.append(mInitTerms[ind]);
//    } // for ind - polynomials
//    
//    result.append("=0, ");
//    for (ind = 0; ind < mInitTerms.size(); ind ++) { // initial terms
//      result.append(",a[");
//      result.append(ind);
//      result.append("]=");
//      result.append(mInitTerms[ind]);
//    } // for ind - initial
//    result.append("},a,{n,");
//    result.append(mOffset);
//    result.append(",");
//    result.append(mNumTerms);
//    result.append("}]");
//    return result.toString();
//  } // getMathematica

  /** 
   * Reverse <code>this</code> recurrence 
   * @param holRec instance to be reversed
   * @return a new HolonomicRecurrence which will run backwards
   */
  private static HolonomicRecurrence reverse(HolonomicRecurrence holRec) {
    ArrayList<Z[]> polyList = holRec.getPolyList();
    ArrayList<Z[]> rPolyList = new ArrayList<Z[]>(16);
    rPolyList.add(polyList.get(0)); // the constant
    int ind = 0;
    for (ind = polyList.size() - 1;  ind >= 1; ind --) { // polynomials
      rPolyList.add(polyList.get(ind));
    } // for ind - polynomials
    
    Z[] initTerms = holRec.getInitTerms();
    Z[] rInitTerms = new Z[initTerms.length];
    int rind = 0;
    for (ind = initTerms.length - 1; ind >= 0; ind --) { // initial terms
      rInitTerms[rind ++] = initTerms[ind];
    } // for ind - initial terms
    return new HolonomicRecurrence(holRec.getOffset(), rPolyList, rInitTerms, holRec.getDistance());
  } // reverse

  /** 
   * Evaluate a HolonomicRecurrene and gets a list of terms.
   * @param holRec instance to be evaluated
   * @return a list of terms of the form "0,1,1,2,3,5,8".
   */
  private String getTermList(HolonomicRecurrence holRec) {
    StringBuffer result = new StringBuffer(256);
    int n = 0;
    boolean busy = true;
    while (n < numTerms && busy) {
      Z term = holRec.next();
      if (term != null) {
        result.append(term.toString());
        result.append(',');
      } else {
        result.append("null,");
        busy = false; // break loop
      }
      n ++;
    } // while n
    result.deleteCharAt(result.length() - 1); // remove last comma
    return result.toString();
  } // getTermList

  /** 
   * Process one input line, and determine 
   * whether it should be written to the output.
   */
  private void processRecord() {
    boolean result = false;
    mInitTerms = ""; // initial terms for a(n)
    int n = 0; // index of the next sequence element to be computed
    mPolyList = ""; // polynomials as coefficients of <code>n^i, i=0..m</code>
    // input record is: aseqno callCode mOffset polyList initTerms mNDist data
    iparm = 2;
    try {
      mOffset = Integer.parseInt(parms[iparm ++]);
      mPolyList = parms[iparm ++];
      mInitTerms = parms[iparm ++];
      mNDist = 0;
      mNDist = Integer.parseInt(parms[iparm ++]);
    } catch (Exception exc) {
    }
    mHolRec = new HolonomicRecurrence(mOffset, mPolyList, mInitTerms, mNDist); // instance to be tested
    
    if (false) {
    } else if (callCode.startsWith("holos")) { // getTermList
      parms[6] = ""; // clear name
      reproduce();
      System.out.println(aseqno + "\t" + callCode + "1" + "\t" + mOffset 
          + "\t" + getTermList(mHolRec));
    
    } else if (callCode.startsWith("holor")) { // getTermList(reverse)
      HolonomicRecurrence rHolRec = reverse(mHolRec);
      parms[6] = ""; // clear name
      // parms[3] = rHolRec.getPolyList().toString();
      reproduce();
      System.out.println(aseqno + "\t" + callCode + "1" + "\t" + mOffset 
          + "\t" + getTermList(rHolRec));
    
    } else {
      reproduce();
      System.out.println(aseqno + "\t" + "unknown callcode \"" + callCode + "\"");
    } // switch callCode
  } // processRecord

  /** 
   * Reproduces the record with the (maybe modified) parameters.
   */
  protected void reproduce() {
    System.out.println(String.join("\t", parms));
  } // reproduce

  /** 
   * Filters a file and writes the modified output lines.
   * @param fileName name of the input file, or "-" for STDIN
   */
  private void processFile(String fileName) {
    BufferedReader lineReader; // Reader for the input file
    String srcEncoding = "UTF-8"; // Encoding of the input file
    String line = null; // current line from text file
    try {
      if (fileName == null || fileName.length() <= 0 || fileName.equals("-")) {
        lineReader = new BufferedReader(new InputStreamReader(System.in, srcEncoding));
      } else {
        ReadableByteChannel lineChannel = (new FileInputStream(fileName)).getChannel();
        lineReader = new BufferedReader(Channels.newReader(lineChannel , srcEncoding));
      }
      while ((line = lineReader.readLine()) != null) { // read and process lines
        if (! line.matches("\\s*#.*")) { // is not a comment
          parms = line.split("\\t");
          if (sDebug >= 1) {
            System.out.println(line); // repeat it unchanged
          }
          iparm = 0;
          aseqno   = parms[iparm ++];
          callCode = parms[iparm ++];
          try {
            mOffset = 0;
            mOffset = Integer.parseInt(parms[iparm ++]);
          } catch (Exception exc) {
          }
          processRecord();
        } // is not a comment
      } // while ! eof
      lineReader.close();
    } catch (Exception exc) {
      System.err.println(exc.getMessage());
      exc.printStackTrace();
    } // try
  } // processFile

  /** 
   * Main method, filters a file and writes the copy to STDOUT.
   * @param args command line arguments: 
   * <ul>
   * <li>-d level debugging level (default 0=none, 1=some, 2=more)</li>
   * <li>-f filename input file or "-" or none for STDIN</li>
   * <li>-n numTerms number of terms to be computed (default: 16)</li>
   * </ul>
   */
  public static void main(String[] args) {
    int iarg = 0;
    HolonomicRecurrenceTest holTest = new HolonomicRecurrenceTest();
    holTest.numTerms = 16;
    holTest.mOffset  = 0;
    String fileName = "-"; // assume STDIN
    while (iarg < args.length) { // consume all arguments
      String opt = args[iarg ++];
      if (false) {
      } else if (opt.equals    ("-d")     ) {
        sDebug = 1;
        try {
            sDebug = Integer.parseInt(args[iarg ++]);
        } catch (Exception exc) { // take default
        }
      } else if (opt.equals    ("-f")     ) {
        fileName = args[iarg ++];
      } else if (opt.equals    ("-n")     ) {
        try {
            holTest.numTerms = Integer.parseInt(args[iarg ++]);
        } catch (Exception exc) { // take default
        }
      } else {
        System.err.println("??? invalid option: \"" + opt + "\"");
      }
    } // while args
    holTest.processFile(fileName);
  } // main

} // HolonomicRecurrenceTest
