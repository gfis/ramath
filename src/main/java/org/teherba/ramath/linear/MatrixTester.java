/*  MatrixTester: commandline interface to various Matrix methods
 *  @(#) $Id: Matrix.java 744 2011-07-26 06:29:20Z gfis $
 *  2017-05-28: javadoc 1.8
 *  2016-10-04: -negate
 *  2015-04-17, Georg Fischer: extracted from Matrix
 */
/*
 * Copyright 2015 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath.linear;
import  org.teherba.ramath.linear.Matrix;
import  org.teherba.ramath.linear.Vector;
import  org.teherba.ramath.linear.VectorArray;
import  org.teherba.ramath.util.ModoMeter;
import  org.teherba.ramath.util.Options;
import  org.teherba.ramath.util.Permutator;
import  org.teherba.ramath.EulersExtendedConjecture;
import  java.io.BufferedReader;
import  java.io.File;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.io.Serializable;
import  java.util.ArrayList;
import  java.util.HashMap;
import  org.apache.log4j.Logger;

/** Class MatrixTester implements a series of test methods
 *  for {@link Matrix} which can be called from the command line.
 *  It is used to solve diophantine problems.
 *  @author Dr. Georg Fischer
 */
public class MatrixTester implements Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: MatrixTester.java 744 2011-07-26 06:29:20Z gfis $";

    /** Local logger for exceptions */
    private static Logger log = Logger.getLogger(MatrixTester.class.getName());

    /** Debugging switch: 0 = no, 1 = moderate, 2 = more, 3 = extreme verbosity */
    public static int debug = 0;
    /** System dependant newline character sequence */
    protected static String newline = System.getProperty("line.separator");

    /*-------------- construction -----------------------------*/

    /** No-args Constructor
     */
    public MatrixTester() {
    } // no-args Constructor

    /*  ==============================================
        Abstract matrix * Pythagorean generator
         (a11*(m^2-n^2) + 2*a12*m*n + a13*(m^2+n^2))^2
        +(a21*(m^2-n^2) + 2*a22*m*n + a23*(m^2+n^2))^2
        -(a31*(m^2-n^2) + 2*a32*m*n + a33*(m^2+n^2))^2
        ==
         + a*b^3 * ( - 4*a11*a12 + 4*a12*a13 - 4*a21*a22 + 4*a22*a23 + 4*a31*a32 - 4*a32*a33)
         + a^2*b^2 * ( - 2*a11^2 + 4*a12^2 + 2*a13^2 - 2*a21^2 + 4*a22^2 + 2*a23^2 + 2*a31^2 - 4*a32^2 - 2*a33^2)
         + a^3*b * (4*a11*a12 + 4*a12*a13 + 4*a21*a22 + 4*a22*a23 - 4*a31*a32 - 4*a32*a33)
         + a^4 * (a11^2 + a13^2 + a21^2 + a23^2 - a31^2 - a33^2 + 2*a11*a13 + 2*a21*a23 - 2*a31*a33)
         + b^4 * (a11^2 + a13^2 + a21^2 + a23^2 - a31^2 - a33^2 - 2*a11*a13 - 2*a21*a23 + 2*a31*a33)
        ------------------
        Abstract * (a b c) = a^2 + b^2 - c^2
         (a11*a + a12*b + a13*c)^2
        +(a21*a + a22*b + a23*c)^2
        -(a31*a + a32*b + a33*c)^2
        ==
         + a*b * (2*a11*a12 + 2*a21*a22 - 2*a31*a32)
         + a*c * (2*a11*a13 + 2*a21*a23 - 2*a31*a33)
         + a^2 * ( - 1 + a11^2 + a21^2 - a31^2)
         + b*c * (2*a12*a13 + 2*a22*a23 - 2*a32*a33)
         + b^2 * ( - 1 + a12^2 + a22^2 - a32^2)
         + c^2 * (1 + a13^2 + a23^2 - a33^2)
    */
    /** Compute the determinants of <em>this</em> Matrix
     *  for the minors of the first row, with alternating signs,
     *  as a {@link Vector}.
     *  The innerproduct of the resulting
     *  Vector with row 0 is the determinant of the whole matrix.
     *  @param amat source Matrix
     *  @return Vector of determinant values of the minors with alternating signs
     */
    public static Vector getSubDeterminants(Matrix amat) {
        Vector result = new Vector(amat.size());
        switch (amat.size()) {
            case 0:
                break;
            case 1:
                result.vector[0] =    1;
                break;
            case 2:
                result.vector[0] =    (amat.matrix[1][1]);
                result.vector[1] =  - (amat.matrix[1][0]);
                break;
            case 3:
                result.vector[0] =    (amat.matrix[1][1] * amat.matrix[2][2] - amat.matrix[2][1] * amat.matrix[1][2]);
                result.vector[1] =  - (amat.matrix[1][0] * amat.matrix[2][2] - amat.matrix[2][0] * amat.matrix[1][2]);
                result.vector[2] =    (amat.matrix[1][0] * amat.matrix[2][1] - amat.matrix[1][1] * amat.matrix[2][0]);
                break;
            default: // recursive Laplace expansion over minors of the first row
                Matrix minor = new Matrix(amat.size() - 1);
                int irow, icol;
                // populate minor for 1st column
                for (irow = 1; irow < amat.size(); irow ++) { // omit row 0
                    for (icol = 1; icol < amat.colLen; icol ++) { // omit column 0
                        minor.matrix[irow - 1][icol - 1] = amat.matrix[irow][icol];
                    } // for icol
                } // for irow
                // now expand minors over row 0
                for (icol = 0; icol < amat.size(); icol ++) {
                    if (icol > 0) { // repair 1st column of minor
                        for (int irow2 = 1; irow2 < amat.size(); irow2 ++) {
                            minor.matrix[irow2 - 1][icol - 1] = amat.matrix[irow2][icol - 1];
                        } // for irow2
                    }
                    if (debug > 0) {
                        System.out.print("multiply minor with column " + icol + " = "
                                + (amat.matrix[0][icol] * ((icol & 1) == 0 ? -1 : 1))
                                + "\n" + minor.toString());
                    }
                    if ((icol & 1) == 0) {
                        result.vector[icol] =   minor.determinant();
                    } else {
                        result.vector[icol] = - minor.determinant();
                    }
                } // for icol
                break;
        } // switch amat.size()
        return result;
    } // getSubDeterminants

    /** Appends to the ArrayList all matrices A with elements &gt;= 0 such that
     *  for positive {@link Vector}s <em>vect1, vect2: A * vect1 = vect2</em>
     *  @param result append to this list of matrices
     *  @param vect1 multiply this vector with the resulting matrices
     *  @param vect2 result of all multiplications
     *  @param minElem minimum element in the result matrices
     */
    public static void addMultiplicators(ArrayList<Matrix> result, Vector vect1, Vector vect2, int minElem) {
        // ArrayList<Matrix> result = new ArrayList<Matrix>(16);
        int alen = vect1.size();
        VectorArray[] cands = new VectorArray[alen];
        int[] candSizes     = new         int[alen];
        int
        icand = alen - 1;
        boolean noZero = true;
        while (icand >= 0) {
            cands[icand] = new VectorArray(vect1.divide(vect2.vector[icand], minElem));
            candSizes[icand] = cands[icand].varr.length;
            noZero = noZero && candSizes[icand] > 0;
            icand --;
        } // while icand
        candSizes[0] = 1; // ModoMeter should not iterate over row 0
        ModoMeter meter = new ModoMeter(candSizes);
        Matrix amat = new Matrix(alen);
        while (meter.hasNext() && noZero) {
            int[] indexes = meter.next();
            icand = alen - 1;
            while (icand >= 1) { // row 0 is not yet set
                amat.setRow(icand, cands[icand].get(indexes[icand]));
                icand --;
            } // while icand
        /*
            Vector subDets = amat.getSubDeterminants();
            int bitSum = subDets.lastBitSum();
            if (bitSum > 0) { // not only even subdeterminants
        */
                // now try for all possible rows 0
                Vector[] cand0 = cands[0].varr; // vect1.divide(vect2.vector[0]);
                int icand0 = cand0.length - 1;
                while (icand0 >= 0) {
                    if (true) { // no longer:unimodular
                        amat.setRow(0, cand0[icand0]);
                        ArrayList<Vector> chain = amat.preservedPowerSums(alen - 1, alen - 1, 1, vect2);
                        if (chain.size() > 1) {
                            int det = amat.determinant();
                            System.out.println("# addMult: "
                                    + vect1.toString("(,)")
                                    + ", " + vect2.toString("(,)")
                                    + ", det=" + det
                                    );
                            for (int ichain = 0; ichain < chain.size() - 2; ichain ++) {
                                System.out.println("# next[" + ichain + "]: " + chain.get(ichain).toString("(,)"));
                            } // for ichain
                            System.out.println(amat.toString());
                            result.add(amat.clone());
                        } // preserved > 1
                    } // unimodular
                    icand0 --;
                } // while icand
        /*
            } // bitSum > 0
        */
        } // while meter.hasNext()
        // return result.toArray(new Matrix[0]);
    } // addMultiplicators

    /** Show <em>this</em> {@link Matrix} , and how it preserves the power sum property
     *  @param amat  print the chain for this {@link Matrix}
     *  @param vect0 initial {@link Vector} to be used in the preservation chain
     *  @param left  number of variables on the left  of the equation
     *  @param right number of variables on the right of the equation
     *  @param fact  factor of the chained polynomial
     */
    public static void printPreservedChain(Matrix amat, Vector vect0, int fact, int left, int right) {
        int maxIter = 8;
        int alen    = vect0.size();
        ArrayList<Vector> chain = amat.preservedPowerSums(alen - 1, left, right, vect0, maxIter);
        if (chain.size() >= 2) { // == maxIter) {
            System.out.print(""
                    + String.format("%-32s ", amat.toString("(,)") + ",det=" + amat.determinant())
                    + vect0.toString("(,)")
                    + ", chain " + chain.size()
                    );
            int maxShow = maxIter - (alen - 1 == 2 ? 5 : 0);
            if (maxShow > chain.size()) {
                maxShow = chain.size();
            }
            for (int ichain = 0; ichain < maxShow; ichain ++) {
                System.out.print(" => " + chain.get(ichain).toString("(,)"));
            } // for ichain
            if (chain.size() < maxIter) { // premature end
                System.out.print(" ?? " + amat.multiply(chain.get(chain.size() - 1)).toString("(,)"));
            } // premature end
            System.out.println();
        } // preserved > 1
    } // printPreservedChain

    /** Starts with a powersum {@link Vector} <em> base</em>, multiplies it
     *  with all elements of the array of matrices, and checks
     *  whether the power sum property is maintained.
     *  @param base initial powersum
     *  @param marr array of matrices
     *  which may maintain the power sum property for some vectors
     */
    public static void processQueue(Vector base, Matrix[] marr) {
        int alen =  base.size();
        int MAX_QUEUE = 8192;
        ArrayList<Vector> queue = new ArrayList<Vector>(MAX_QUEUE);
        HashMap<String, Integer> map = new HashMap<String, Integer>(MAX_QUEUE);
        base = new Vector(new int[] { 3,4,5,6 });
        queue.add(base);
        map.put(base.toString(","), new Integer(-1));
        System.out.println("process queue, base=" + base.toString("(,)")
                + ", " + marr.length + " matrices, \n[0]=" + marr[0].toString("(,)")
                );
        int ique = 0;
        while (ique < queue.size() && queue.size() < MAX_QUEUE) {
            Vector vect0 = queue.get(ique);
            int last0 = vect0.vector[alen - 1];
            for (int imarr = 0; imarr < marr.length; imarr ++) {
                Vector vect1 = marr[imarr].multiply(vect0);
                int last1 = vect1.vector[alen - 1];
                if (last0 < last1
                        && vect1.isPowerSum(alen - 1, alen - 1, 1)) {
                    if (map.get(vect1.toString(",")) == null) {
                        System.out.print("# queue "     + vect0.toString("(,)")
                                + " =" + imarr + "==> " + vect1.toString("(,)")
                                );
                        queue.add(vect1);
                        map.put(vect1.toString(","), new Integer(imarr));
                        System.out.println(" >>>");
                    } else {
                        // System.out.println(".");
                    }
                    // if powerSum
                } else { // no powerSum
                /*
                    System.out.println("# queue "   + vect0.toString("(,)")
                            + " =" + imarr + "??? " + vect1.toString("(,)")
                            + " ??");
                */
                }
            } // imarr
            ique ++;
        } // while ique
    } // processQueue

    /** Computes a set of primary solutions and checks
     *  by which matrices in <em>matList</em> they can be continued.
     *  @param dim sizes of the vectors and matrices
     *  @param matList list of matrices
     *  which may maintain the power sum property for some vectors
     */
    public static void testPrimaries(int dim, ArrayList<Matrix> matList) {
        ArrayList<Vector> primTuples = (new EulersExtendedConjecture(dim - 1, 512))
        //      .run_3_3_1();
        //      .evalDutch1  (32);
                .evalDutch2  (32);
        //      .evalKorneck3(4);
        //      .evalVieta3(4);
        for (int iprim = 0; iprim < primTuples.size(); iprim ++) {
            Vector prim0 = primTuples.get(iprim);
            Vector prim1 = new Vector(dim);
            System.out.print(prim0.toString("(,)") + ": ");
            int found = 0;
            Permutator permutations = new Permutator(dim - 1);
            while (permutations.hasNext()) {
                int[] perms = permutations.next();
                int iperm = 0;
                while (iperm < dim - 1) {
                    int val = perms[iperm];
                    prim1.vector[iperm] = prim0.vector[val];
                    iperm ++;
                } // while iperm
                prim1.vector[iperm] = prim0.vector[iperm]; // last is not permuted
                int imat = 0;
                while (imat < matList.size()) {
                    Vector prim2 = matList.get(imat).multiply(prim1);
                    if (prim2.isPowerSum(dim - 1, dim - 1, 1)) { // candidate
                        found ++;
                    /*
                        String result = "\t" + prim1.toString("(,)") + "  --" + imat + "->";
                        int factor = prim2.gcd();
                        if (factor > 1) {
                            prim2.divideBy(factor);
                            result += prim2.toString("(,)") + "/" + factor;
                        } else {
                            result += prim2.toString("(,)");
                        } // factor
                        System.out.println(result);
                    */
                    } // candidate
                    imat ++;
                } // while imat
            } // while permutations
            if (found == 0) {
                System.out.println("none found");
            } else {
                System.out.println(found + " continuations");
            }
        } // for iprim
    } // testPrimaries
    /*-------------------- Test Driver --------------------*/

    /** Test method, shows some fixed matrices with no arguments, or the
     *  matrix resulting from the input formula.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        Options options = new Options(args);
        int iarg = 0; // this collides with Options
        int alen = 0; // size of amat
        Matrix amat = null; // matrix to be tested
        Matrix[] matArray  = null;
        Vector[] vectArray = null;
        Vector vect1 = null;
        Vector vect2 = null;
        try {
            if (args.length == 0) {
                System.out.println("new Matrix(\"[[3, 4], [5, 6]]\") = "
                        + (new Matrix          ("[[3, 4], [5, 6]]")).toString("(,)"));

            } else if (args.length == 1) {
                alen = options.getInt();
                for (int seqNo = 2 * alen * (alen - 1); seqNo >= 0; seqNo --) {
                    System.out.println("Elementary Matrix # " + seqNo);
                    amat = new Matrix(alen);
                    amat.setElementary(seqNo);
                    System.out.print(amat);
                } // for seqNo

            } else if (args.length >= 2) { // syntax is: -opt filename
                String opt = options.get();
                iarg ++;

                if (false) {
                } else if (opt.equals("-f"    )
                        || opt.equals("-queue")
                        || opt.equals("-prim" )
                        ) {
                    // read a list of matrices, and perform some operation with them
                    ArrayList<Matrix> matList = new ArrayList<Matrix>(32);
                    String fileName = options.get();
                    BufferedReader testReader = null;
                    if(fileName.equals("-")) { // STDIN
                        testReader = new BufferedReader(new InputStreamReader(System.in, "UTF-8"));
                    } else {
                        File testCases = new File(fileName);
                        testReader = new BufferedReader(new FileReader(testCases));
                    } // not STDIN
                    // System.err.println("fileName=" + fileName + ", directory=" + directory);
                    int state = 0; // runs from alen down to 0 for subsequent matrix lines
                    String line = null;
                    String[] parts = null;
                    int ip = 0;
                    Vector base = null; // the 1st tuple in the header line
                    Vector next = null; // the 2nd tuple in the header line
                    while ((line = testReader.readLine()) != null) { // read and process lines
                        System.out.println(line);
                        int colonPos = line.indexOf(":");
                        if (false) {
                        } else if (colonPos >= 0) {
                            // e.g. # twice: 1 8 6 9 => 3 10 18 19, determinant -20?
                            parts = line.replaceAll("\\)", " => ").replaceAll("[\\(,]", " ").split("\\s+");
                            ip = 0;
                            while (ip < parts.length && ! Character.isDigit(parts[ip].charAt(0))) {
                                ip ++;
                            } // up to 1st number
                            int start = ip;
                            while (ip < parts.length &&   Character.isDigit(parts[ip].charAt(0))) {
                                ip ++;
                            } // behind last number
                            int end   = ip;
                            alen = end - start; // number of rows/column/elements
                            base = new Vector(alen);
                            int ivect = 0;
                            for (ip = start; ip < end; ip ++) { // parse the 1st tuple
                                base.vector[ivect] = (/*Type*/int) 0;
                                try {
                                    base.vector[ivect] = (/*Type*/int) Integer.parseInt(parts[ip]);
                                } catch (Exception exc) {
                                }
                                ivect ++;
                            } // for ip 1st
                            if (debug > 1) {
                                System.out.println("state = " + state + ", base=" + base.toString());
                            }
                            start = end + 1;
                            end = start + base.size();
                            next = new Vector(end - start);
                            ivect = 0;
                            for (ip = start; ip < end; ip ++) { // parse the 2nd tuple
                                next.vector[ivect] = 0;
                                try {
                                    next.vector[ivect] = (/*Type*/int) Integer.parseInt(parts[ip]);
                                } catch (Exception exc) {
                                }
                                ivect ++;
                            } // for ip 2nd
                            if (debug > 1) {
                                System.out.println("state = " + state + ", next=" + next.toString());
                            }
                            amat = new Matrix(alen);
                            state = alen;
                        } else { // no ":"
                            // e.g. -3 -3 2 2
                            if (debug > 1) {
                                System.out.print("state " + state + ": ");
                                System.out.println(line);
                            }
                            int irow = alen - state;
                            parts = line.trim().split("\\s+");
                            for (ip = 0; ip < alen; ip ++) { // parse the tuple
                                amat.matrix[irow][ip] = (/*Type*/int) 0;
                                try {
                                    amat.matrix[irow][ip] = (/*Type*/int) Integer.parseInt(parts[ip]);
                                } catch (Exception exc) {
                                }
                            } // for ip
                            state --;
                            if (state == 0) { // now 1 matrix is ready; process the header line and the matrix
                                if (false) {
                                } else if (opt.equals("-queue")) {
                                    System.out.println("\nmatList[" + matList.size() + "]=" + amat.toString("(,)"));
                                    matList.add(amat);
                                } else if (opt.equals("-prim")) {
                                    matList.add(amat);
                                } else { // other keyword
                                    Vector next2 = amat.multiply(base);
                                    if (debug > 0) {
                                        System.out.print("multiplied = " + next2.toString() + ", Matrix=\n" + amat.toString());
                                    }
                                    // System.out.println("parts[1]=/" + parts[1] + "/" + parts[2]);
                                    System.out.println("next" + (next2.equals(next) ? "==" : "!="));
                                    int det = amat.determinant();
                                    System.out.println("det=" + det);
                                    Vector minDet = MatrixTester.getSubDeterminants(amat);
                                    int det2 = minDet.multiply(amat.getRow(0));
                                    System.out.println("minDet=" + minDet.toString("(,)")
                                            + ", det2=" + det2);
                                } // other keyword
                            } // if state == 0
                        } // state > 0
                    } // while line
                    // at the end, when all matrices are read in
                    if (false) {
                    } else if (opt.equals("-queue")) { // process addMult output
                        processQueue(base, matList.toArray(new Matrix[0]));
                        // addMult output
                    } else if (opt.equals("-prim"))  { // multiply all matrices with a list of primitives
                        int dim = 4;
                        testPrimaries(dim, matList);
                        // multiply with a list of primitives
                    }
                    // opt -f, -queue, -prim

                } else if (opt.equals("-chain")) {
                    amat  = new Matrix(args[iarg ++]); // may not contain spaces
                    vect1 = new Vector(args[iarg ++]); // may not contain spaces
                    int maxIter = 8;
                    int vlen  = vect1.size();
                    int left  = vlen - 1;
                    if (iarg < args.length) {
                        try {
                            left  = Integer.parseInt(args[iarg ++]);
                        } catch (Exception exc) {
                        }
                    }
                    int right = vlen - left;
                    if (iarg < args.length) {
                        try {
                            right = Integer.parseInt(args[iarg ++]);
                        } catch (Exception exc) {
                        }
                    }
                    System.out.println("-chain " + amat.toString(",") + " " 
                    		+ vect1.toString(",") + " " + left + " " + right); 
                    printPreservedChain(amat, vect1, 0, left, right);
                    // opt -chain

                } else if (opt.startsWith("-div")) {
                    int dim = 4;
                    try {
                        dim = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    vect1 = new Vector(dim, iarg, args); iarg += dim;
                    vect2 = new Vector(dim, iarg, args); iarg += dim;
                    ArrayList<Matrix> cands = new ArrayList<Matrix>(16);
                    Vector vect3 = vect2.clone();
                    if (false) {
                        addMultiplicators(cands, vect1, vect3, 0);
                    } else { // with permutations
                        Permutator permutations = new Permutator(dim - 1);
                        while (permutations.hasNext()) {
                            int[] perms = permutations.next();
                            int iperm = 0;
                            while (iperm < dim - 1) {
                                int val = perms[iperm];
                                vect3.vector[iperm] = vect2.vector[val];
                                iperm ++;
                            } // while iperm
                            vect3.vector[iperm] = vect2.vector[iperm]; // last is not permuted
                            addMultiplicators(cands, vect1, vect3, 0);
                            if (debug >= 1) {
                                System.out.println("# vect3=" + vect3.toString("(,)")
                                        + ", cands.size()=" + cands.size());
                            }
                        } // while permutations
                    } // with permutations
                    // -div

                } else if (opt.equals("-eec2")) {
                    int maxIter = 4;
                    try {
                        maxIter = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    Vector next0 = new Vector(new int[]
                            { 3, 4, 5 });
                    int nlen = next0.size();
                    ModoMeter meter = new ModoMeter(nlen * nlen, maxIter);
                    while (meter.hasNext()) {
                        int[] values = meter.next();
                        amat = new Matrix(nlen, values);
                        int preserved = amat.preservedPowerSums(nlen - 1, nlen - 1, 1, next0).size();
                        if  (Math.abs(amat.determinant()) == 1 && preserved > 0) {
                            System.out.print("preserved " + preserved
                                    + " power sums, det=" + amat.determinant()
                                    + " first=" + amat.multiply(next0).toString()
                                    + "\n" + amat.toString()
                                    );
                        } // if amat
                    } // while hasNext
                    // opt -eec2

                } else if (opt.equals("-eec3")) {
                    int maxIter = 4;
                    try {
                        maxIter = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    Vector next0 = new Vector(new int[]
                            { 3, 4, 5, 6 });
                    int nlen = next0.size();
                    amat = new Matrix(4, new int[]
                            { 2, 2, 1, 0
                            , 1, 1, 1, 1
                            , 1, 2, 2, 0
                            , 2, 3, 2, 0
                            });
                    System.out.print("determinant=" + amat.determinant()
                            + "\n" + amat.toString());
                    if (false) { // old code
                        int iter = 0;
                        while (iter <= maxIter) {
                            System.out.println(next0.toString()
                                    + (next0.isPowerSum(3, 3, 1) ? " !" : " ?"));
                            next0 = amat.multiply(next0);
                            iter ++;
                        } // while iter
                    } else { // new code
                        System.out.println("preserved power sums "
                                + amat.preservedPowerSums(3, 3, 1, next0).size() + " times");
                    }
                    next0 = new Vector(new int[]
                            { 3, 4, 5, 6 });
                    ModoMeter meter = new ModoMeter(nlen * nlen); // binary
                    while (meter.hasNext()) {
                        int[] values = meter.next();
                        Matrix bmat = amat.conditionallyNegate(values);
                        if (bmat.preservedPowerSums(3, 3, 1, next0).size() > 0) {
                            Vector vals = new Vector(values);
                            System.out.print("this too, det=" + bmat.determinant()
                                    + " first=" + bmat.multiply(next0).toString()
                                    + "\n" + vals.toString()
                                    + "\n" + bmat.toString()
                                    );
                        } // if bmat
                    } // while hasNext
                    // opt -eec3

                } else if (opt.equals("-eec4")) {
                    int maxIter = 4;
                    try {
                        maxIter = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    Vector next0 = new Vector(new int[]
                            { 3, 4, 5, 6 });
                    int nlen = next0.size();
                    ModoMeter meter = new ModoMeter(nlen * nlen, maxIter);
                    while (meter.hasNext()) {
                        int[] values = meter.next();
                        amat = new Matrix(nlen, values);
                        int preserved = amat.preservedPowerSums(nlen - 1, nlen - 1, 1, next0).size();
                        if  (Math.abs(amat.determinant()) == 1 && preserved > 0) {
                            System.out.print("preserved " + preserved
                                    + " power sums, det=" + amat.determinant()
                                    + " first=" + amat.multiply(next0).toString()
                                    + "\n" + amat.toString()
                                    );
                        } // if amat
                    } // while hasNext
                    // opt -eec4

                } else if (opt.equals("-elem")) {
                    alen = 4;
                    try {
                        alen = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    amat = new Matrix(alen);
                    amat.setIdentity();
                    int maxIter = alen * (alen + 1);
                    int iter = 0;
                    while (iter <= maxIter) {
                        Matrix elem = new Matrix(alen);
                        elem.setElementary(iter);
                        amat = amat.multiply(elem);
                        iter ++;
                    } // while iter
                    System.out.print("Product of elementary matrices with seqNo = 0.." + maxIter
                            + ", determinant = " + amat.determinant()
                            + "\n" + amat.toString());
                    // opt -elem

                } else if (opt.equals("-follow" )) { // copied from -gen
                    // read a list of matrices
                    // and a second file with known tuples
                    // generate all possible chains up to some limit
                    matArray  = options.getMatrices();
                    vectArray = options.getVectors();
                    int count  = 0;
                    int failed = 0;
                    int ivect  = 0;
                    while (ivect < vectArray.length) {
                        count ++;
                        vect1 = vectArray[ivect];
                        alen = vect1.size();
                        System.out.print(vect1.toString(","));
                        int imat = 0;
                        boolean busy = true;
                        while (busy && imat < matArray.length) {
                            amat = matArray[imat];
                            Permutator vperm = new Permutator(alen);
                            while (busy && vperm.hasNext()) {
                                int[] meter = vperm.next();
                                Vector vecta = vect1.permute(meter);
                                vect2 = amat.multiply(vecta);
                                if (vect2.isNonTrivialPowerSum(alen - 1, alen, 0)) {
                                    busy = false;
                                    int gcd = vect2.gcd();
                                    if (gcd > 1) {
                                        vect2.divideBy(gcd);
                                    }
                                    Vector vect3 = vect2.nice();
                                    String key = vect3.toString(",");
                                    System.out.println("\t" + vecta.toString(",") + " => " + key + " by " + amat.toString(","));
                                } // if isPowerSum
                            } // while vperm
                            imat ++;
                        } // while imat
                        if (busy) {
                            System.out.println("\tno follower");
                            failed ++;
                        }
                        ivect ++;
                    } // while ivect
                    System.out.println(failed + " of " + count + " failed, "
                            + String.format("%d%%", (int) (failed * 100 / count)));
                    // opt -follow

                } else if (opt.equals("-gen" )) { // copied from -perms
                    // read an initial powersum preserving tuple, and a list of matrices
                    // generate all possible tuples up to some limit
                    matArray  = options.getMatrices();
                    vectArray = options.getVectors();
                    int ivect = 0;
                    vect1 = vectArray[ivect];
                    alen = vect1.size();
                    System.out.println("start with " + vect1.toString(","));
                    int maxHash = 1024;
                    HashMap<String, Vector> hash = new HashMap<String, Vector>(maxHash);
                    ArrayList<Vector>      queue = new ArrayList<Vector>(maxHash);
                    String key = vect1.toString(",");
                    hash.put(key, vect1);
                    queue.add(vect1);
                    int iqueue = 0;
                    while (iqueue < queue.size() && queue.size() < maxHash) {
                        vect1 = queue.get(iqueue ++);
                        int imat = 0;
                        boolean busy = true;
                        while (busy && imat < matArray.length) {
                            amat = matArray[imat];
                            Permutator vperm = new Permutator(alen);
                            while (busy && vperm.hasNext()) {
                                int[] meter = vperm.next();
                                Vector vecta = vect1.permute(meter);
                                vect2 = amat.multiply(vecta);
                                if (vect2.isNonTrivialPowerSum(alen - 1, alen, 0)) {
                                    int gcd = vect2.gcd();
                                    if (gcd > 1) {
                                        vect2.divideBy(gcd);
                                    }
                                    Vector vect3 = vect2.nice();
                                    key = vect3.toString(",");
                                    if (hash.get(key) == null) { // new tuple
                                        hash.put(key, vect3);
                                        queue.add(vect3);
                                        System.out.println(key
                                                + " <= " + vecta.toString(",")
                                                + " by " + amat.toString(",") + ",det=" + amat.determinant());
                                    } // if new tuple
                                } // if isPowerSum
                            } // while permutator
                            imat ++;
                        } // while imat
                    } // while iqueue
                    // opt -gen

                } else if (opt.startsWith("-many")) {
                    int dim = 4;
                    int minElem = -2;
                    try {
                        minElem = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    ArrayList<Vector> test = new ArrayList<Vector>(64);

                    test.add(new Vector(new int[]{  3,  4,  5,  6 }));
                    test.add(new Vector(new int[]{  3,  4,  5,  6 }));
                    test.add(new Vector(new int[]{  1,  6,  8,  9 }));
                    test.add(new Vector(new int[]{  3, 10, 18, 19 }));
                    test.add(new Vector(new int[]{  7, 14, 17, 20 }));
                    test.add(new Vector(new int[]{  4, 17, 22, 25 }));

                    test.add(new Vector(new int[]{ 18, 19, 21, 28 }));

                    test.add(new Vector(new int[]{ 11, 15, 27, 29 }));
                    test.add(new Vector(new int[]{  2, 17, 40, 41 }));
                    test.add(new Vector(new int[]{  6, 32, 33, 41 }));
                    test.add(new Vector(new int[]{ 16, 23, 41, 44 }));
                    test.add(new Vector(new int[]{  3, 36, 37, 46 }));
                    test.add(new Vector(new int[]{ 27, 30, 37, 46 }));
                    test.add(new Vector(new int[]{ 12, 19, 53, 54 }));
/*
                    test.add(new Vector(new int[]{4,17,22,25}));
                    test.add(new Vector(new int[]{2,17,40,41}));
                    test.add(new Vector(new int[]{6,32,33,41}));
*/
/*
                    test.add(new Vector(new int[]{29,34,44,53}));
                    test.add(new Vector(new int[]{22,51,54,67}));
                    test.add(new Vector(new int[]{14,23,70,71}));
                    test.add(new Vector(new int[]{38,43,66,75}));
                    test.add(new Vector(new int[]{31,33,72,76}));
                    test.add(new Vector(new int[]{28,53,75,84}));
                    test.add(new Vector(new int[]{26,55,78,87}));
                    test.add(new Vector(new int[]{21,43,84,88}));
                    test.add(new Vector(new int[]{17,40,86,89}));
                    test.add(new Vector(new int[]{25,38,87,90}));
                    test.add(new Vector(new int[]{19,53,90,96}));
                    test.add(new Vector(new int[]{12,31,102,103}));
                    test.add(new Vector(new int[]{33,70,92,105}));
                    test.add(new Vector(new int[]{13,51,104,108}));
                    test.add(new Vector(new int[]{29,75,96,110}));
                    test.add(new Vector(new int[]{16,47,108,111}));
                    test.add(new Vector(new int[]{3,34,114,115}));
                    test.add(new Vector(new int[]{9,55,116,120}));
                    test.add(new Vector(new int[]{49,84,102,121}));
                    test.add(new Vector(new int[]{44,51,118,123}));
                    test.add(new Vector(new int[]{13,65,121,127}));
                    test.add(new Vector(new int[]{38,57,124,129}));
                    test.add(new Vector(new int[]{5,76,123,132}));
                    test.add(new Vector(new int[]{44,73,128,137}));
*/
/*
                    test.add(new Vector(new int[]{4,17,22,25}));
                    test.add(new Vector(new int[]{2,17,40,41}));
                    test.add(new Vector(new int[]{6,32,33,41}));
                    test.add(new Vector(new int[]{29,34,44,53}));
                    test.add(new Vector(new int[]{22,51,54,67}));
                    test.add(new Vector(new int[]{14,23,70,71}));
                    test.add(new Vector(new int[]{38,43,66,75}));
                    test.add(new Vector(new int[]{31,33,72,76}));
                    test.add(new Vector(new int[]{28,53,75,84}));
                    test.add(new Vector(new int[]{26,55,78,87}));
                    test.add(new Vector(new int[]{21,43,84,88}));
                    test.add(new Vector(new int[]{17,40,86,89}));
                    test.add(new Vector(new int[]{25,38,87,90}));
                    test.add(new Vector(new int[]{19,53,90,96}));
                    test.add(new Vector(new int[]{12,31,102,103}));
                    test.add(new Vector(new int[]{33,70,92,105}));
*/
/*
                    test.add(new Vector(new int[]{  3,  4,  5,  6 }));
                    test.add(new Vector(new int[]{  1,  6,  8,  9 }));
                    test.add(new Vector(new int[]{  3, 10, 18, 19 }));
                    test.add(new Vector(new int[]{  7, 14, 17, 20 }));
                    test.add(new Vector(new int[]{  4, 17, 22, 25 }));

                    test.add(new Vector(new int[]{ 18, 19, 21, 28 }));

                    test.add(new Vector(new int[]{ 11, 15, 27, 29 }));
                    test.add(new Vector(new int[]{  2, 17, 40, 41 }));
                    test.add(new Vector(new int[]{  6, 32, 33, 41 }));
                    test.add(new Vector(new int[]{ 16, 23, 41, 44 }));
                    test.add(new Vector(new int[]{  3, 36, 37, 46 }));
                    test.add(new Vector(new int[]{ 27, 30, 37, 46 }));
                    test.add(new Vector(new int[]{ 12, 19, 53, 54 }));
/*
*/
                    for (int iv0 =       0; iv0 < test.size(); iv0 ++) {
                        for (int iv1 = 0; iv1 < test.size(); iv1 ++) {
                            if (iv0 != iv1) {
                            // System.out.println("iv0=" + iv0 + ", iv1=" + iv1);
                            vect1 = test.get(iv0);
                            vect2 = test.get(iv1);
                            ArrayList<Matrix> cands = new ArrayList<Matrix>(16);
                            Vector vect3 = vect2.clone();
                            System.out.println("# vector[" + iv0 + "]=" + vect1.toString("(,)")
                                             + ", vector[" + iv1 + "]=" + vect3.toString("(,)")
                                             );
                            if (false) {
                                addMultiplicators(cands, vect1, vect3, minElem);
                            } else { // with permutations
                                int iloop = dim * dim;
                                Permutator permutations = new Permutator(dim - 1);
                                while (permutations.hasNext() && iloop >= 0) {
                                    int[] perms = permutations.next();
                                    int iperm = 0;
                                    while (iperm < dim - 1) {
                                        int val = perms[iperm];
                                        vect3.vector[iperm] = vect2.vector[val];
                                        iperm ++;
                                    } // while iperm
                                    vect3.vector[iperm] = vect2.vector[iperm]; // last is not permuted
                                    addMultiplicators(cands, vect1, vect3, minElem);
                                    if (debug >= 1) {
                                        System.out.println("# vect3=" + vect3.toString("(,)")
                                                + ", cands.size()=" + cands.size());
                                    }
                                    iloop --;
                                } // while permutations
                            } // with permutations
                        } // if iv0 != iv1
                        } // for iv1
                    } // for iv0
                    // -many

                } else if (opt.startsWith("-inv")) {
                    matArray = options.getMatrices();
                    for (int imat = 0; imat < matArray.length; imat ++) {
                        amat = matArray[imat];
                        Matrix rmat = amat.inverse();
                        System.out.println(rmat.toString("(,)")
                                + ",fraction="      + rmat.getFraction()
                                + ",det="           + rmat.determinant()
                                + " is inverse of " + amat.toString("(,)")
                                + ",det="           + amat.determinant()
                                + ",identity = "    + amat.multiply(rmat).isIdentity()
                                );
                    } // for imat
                    // -inv

                } else if (opt.startsWith("-mult")) {
                    System.out.println(amat.toString("(,)") + " * "
                            + vect1.toString("(,)") + " = "
                            + amat.multiply(vect1).toString("(,)"));
                    // -mult

                } else if (opt.startsWith("-negate")) {
                    amat = new Matrix(4, new int[]
                            { 2, 2, 1, 0
                            , 1, 1, 1, 1
                            , 1, 2, 2, 0
                            , 2, 3, 2, 0
                            });
                    System.out.println(amat.toString("(,)"));
                    amat.exchangeRows(1, 2);
                    System.out.println(amat.toString("(,)"));
                    amat.exchangeRows(0, 3);
                    System.out.println(amat.toString("(,)"));
                    amat.negateRows(0x3);
                    System.out.println(amat.toString("(,)"));
                    amat.negateRows(0xc);
                    System.out.println(amat.toString("(,)"));
                    amat.negateRows(0xf);
                    System.out.println(amat.toString("(,)"));
                    // -negate

                } else if (opt.equals("-permul")) {
                    amat  = new Matrix(args[iarg ++]); // may not contain spaces
                    alen  = amat.size();
                    Permutator permutator = new Permutator(alen);
                    while (permutator.hasNext()) {
                        int[] meter = permutator.next();
                        System.out.println("*" + (new Vector(meter)).toString(",") + ": "
                                + amat.multiply(Matrix.permutation(meter)).toString(","));
                    } // while permutator
                    // opt -permul

                } else if (opt.equals("-perms" )) {
                    // read a list of matrices, and perform some operation with them
                    ArrayList<Matrix> matList = new ArrayList<Matrix>(32);
                    String fileName = args[iarg ++];
                    BufferedReader testReader = null;
                    if(fileName.equals("-")) { // STDIN
                        testReader = new BufferedReader(new InputStreamReader(System.in, "UTF-8"));
                    } else {
                        File testCases = new File(fileName);
                        testReader = new BufferedReader(new FileReader(testCases));
                    } // not STDIN
                    // System.err.println("fileName=" + fileName + ", directory=" + directory);
                    String line = null;
                    while ((line = testReader.readLine()) != null) { // read and process lines
                        // System.out.println(line);
                        int sqpos = line.indexOf("[[");
                        if (sqpos >= 0) {
                            amat = new Matrix(line.substring(sqpos, line.indexOf("]]") + 2));
                            int imat = 0;
                            Vector perm = null;
                            while (perm == null && imat < matList.size()) {
                                perm = amat.isPermutation(matList.get(imat));
                                imat ++;
                            } // while imat
                            if (perm == null) {
                                System.out.println("matList[" + matList.size() + "] = " + amat.toString(","));
                                matList.add(amat);
                            } else {
                                System.out.println("permuted from " + String.valueOf(imat - 1) + " by " + perm.toString(",")
                                        + ": " + amat.toString(","));
                            }
                        } // if sqpos
                    } // while line
                    // opt -perms

                } else if (opt.equals("-unimod")) {
                    alen = 3;
                    try {
                        alen = Integer.parseInt(args[iarg ++]);
                    } catch (Exception exc) {
                    }
                    ArrayList<Matrix> alist = new ArrayList<Matrix>(32);
                    ModoMeter meter = new ModoMeter(alen*alen); // binary
                    while (meter.hasNext()) {
                        int[] met = meter.next();
                        int count = 0;
                        for (int imet = met.length - 1; imet >= 0; imet --) {
                            if (met[imet] != 0) {
                                count ++;
                            }
                        } // for imet
                        if (count <= alen + 1) {
                            amat = new Matrix(alen, met);
                            int det = amat.determinant();
                            if (Math.abs(det) == 1) { // is unimodular
                                System.out.print("Unimodular matrix E" + alist.size()
                                        + ", determinant = " + det
                                        + ", rank = " + count
                                        + "\n" + amat.toString());
                                alist.add(amat);
                            } // unimodular
                        } // if count
                    } // while meter
                    int asize = alist.size();
                    System.out.println(asize + " elementary matrices");
                    // opt -unimod
                    for (int irow = 0; irow < asize; irow ++) {
                        for (int icol = 0; icol < asize; icol ++) {
                            amat = alist.get(irow).multiply(alist.get(icol));
                            for (int ikey = 0; ikey < asize; ikey ++) {
                                if (amat.equals(alist.get(ikey))) {
                                    System.out.println("E" + ikey + " = E" + irow + " * E" + icol);
                                } // if ==
                            } // for ikey
                        } // for icol
                    } // for irow
                    // opt -unimod

                } // options
            } // 2 args
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    } // main

} // MatrixTester
