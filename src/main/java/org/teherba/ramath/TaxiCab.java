/*  Collection of experimental methods for TaxiCab numbera
 *  @(#) $Id: TaxiCab.java 808 2011-09-20 16:56:14Z gfis $
 *  2017-08-17, Georg Fischer: copied from SandBox
 */
/*
 * Copyright 2017 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.util.BigIntegerUtil;
import  org.teherba.ramath.util.PrimeFactorization;
import  java.io.BufferedReader;
import  java.io.FileReader;
import  java.io.InputStreamReader;
import  java.math.BigInteger;
import  org.apache.log4j.Logger;

/** Collection of several experimental methods, see {@link #main}.
 *  C.f.  OEIS A011541:
 *  Taxicab, taxi-cab or Hardy-Ramanujan numbers: 
 *  the smallest number that is the sum of 2 positive integral cubes in n ways.     
 *  <pre>
 *  1  2     3         4              5                  6th Taxicab number
 *  2, 1729, 87539319, 6963472309248, 48988659276962496, 24153319581254312065344
 *  </pre>
 *  see also: http://euler.free.fr/taxicab.htm
 *  @author Dr. Georg Fischer
 */
public class TaxiCab {
    public final static String CVSID = "@(#) $Id: TaxiCab.java 808 2011-09-20 16:56:14Z gfis $";

    /** log4j logger (category) */
    private Logger log;

    /** No-args Constructor
     */
    public TaxiCab() {
        log = Logger.getLogger(TaxiCab.class.getName());
    } // no-args Constructor

    //===========================
    // Experimental methods
    //===========================

    private static final String spaces  = "                                "; // 32 blanks for formatting of BigIntegers
    private static final String letters = "abcdn"; // letters denoting Polynomials

    /** Reads lines with numbers a, b, c, d such that a^3 + b^3 = c^3 + d^3.
     *  Assumes that x^3 fits into a long (x &lt;= 1 million).
     *  The lines are from Wroblewski's files:
     *  <pre>
    a      b      c     d  
   12      1     10     9     only for 322-100K.TXT
   16      2     15     9
   27     10     24    19
   34      2     33    15
   34      9     33    16
   39     17     36    26
   40     12     33    31
   51     12     43    38
   ...
     a      c      d      -b
100000  91895  60766   -7391  for 322-n.TXT, n=1..9
100000  95009  78103  -69386
100000  99123  41502  -35675
100002  81109  78678  -27397     
     *  </pre>
     * @param fileName read lines from this file
     */
    public void process322(String fileName) {
        String line = null; // current line from text file
        try {
            BufferedReader lineReader = new BufferedReader
                    ( (fileName.equals("-"))
                    ? new InputStreamReader(System.in)
                    : new FileReader(fileName)
                    );
            int limit = -1;
            while (limit < 0 && (line = lineReader.readLine()) != null) { // read and process lines
                String nums[] = line.trim().split("\\s+");
                long a = Long.parseLong(nums[0]);
                long b = Long.parseLong(nums[1]);
                long c = Long.parseLong(nums[2]);
                long d = Long.parseLong(nums[3]);
                if (d < 0L) { // not 322-100K
                    long temp = b;
                    b = -d;
                    d = c;
                    c = temp;
                } // not 322-100K
                long ab3 = a*a*a + b*b*b;
                long cd3 = c*c*c + d*d*d;
                if (ab3 != cd3) {
                    System.out.println("wrong: " + ab3 + " != " + cd3 
                            + " " + a + " " + b + " " + c +" " + d);
                } else {
                    System.out.println(String.format("%019d", ab3) + ": " 
                            + " " + a + " " + b + " " + c +" " + d);
                }
                limit --;
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
    } // process322

    /** Reads lines with numbers a, b, c, d such that a^4 + b^4 = c^4 + d^4.
     *  Checks these tuples whether they are primitive,
     *  whether they fulfill the powersum property,
     *  and show the prime factorizations of the sum a^4 + b^4 and of the sum a^2 + b^2
     *  @param fileName name of file containing line with tuples of 4 numbers
     *  The results indicate that there is no prime factor = 3 mod 4.
     */
    public void process422(String fileName) {
        String line = null; // current line from text file
        try {
            BufferedReader lineReader = new BufferedReader
                    ( (fileName.equals("-"))
                    ? new InputStreamReader(System.in)
                    : new FileReader(fileName)
                    );
            int limit = 128;
            while (limit > 0 && (line = lineReader.readLine()) != null) { // read and process lines
                limit --;
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
    } // process422

    /** Reads lines from the condensed page at 
     *  <a href="http://euler.free.fr/taxicab.htm">taxicab.htm</a> which starts with either
     *  <ul>
     *  <li>Taxicab(n) &lt;?= num1</li>
     *  <li>Cabtaxi(n) &lt;?= num1</li>
     *  <li>= num1^3 +- num2^3</li>
     *  </ul>
     *  Appends the prime factorization of the number to the line,
     *  and prints the latter.
     *  The input is reproduced as a comment at the and of this source file.
     *  @param fileName name of file containing lines as described above
     */
    public void printFactors(String fileName) {
        String line = null; // current line from text file
        try {
            BufferedReader lineReader = new BufferedReader
                    ( (fileName.equals("-"))
                    ? new InputStreamReader(System.in)
                    : new FileReader(fileName)
                    );
            BigInteger num1 = null;
            BigInteger num2 = null;
            int pos  = 0;
            int pos2 = 0;
            int mode = 0; // 
            while ((line = lineReader.readLine()) != null) { // read and process lines
                line = line.trim();
                if (false) {
                } else if (line.startsWith("Taxicab")
                        || line.startsWith("Cabtaxi")) {
                //  Taxicab(7) <= 24885189317885898975235988544
                    pos  = line.indexOf("= ") + 2;
                    pos2 = line.length();
                    num1 = new BigInteger(line.substring(pos, pos2));
                    line = line + "\t\t" + (new PrimeFactorization(num1)).toString(mode);
                } else if (line.startsWith("= ")) {
                //  = 2648660966^3 + 1847282122^3
                    pos  = line.indexOf("= ") + 2;
                    pos2 = line.indexOf("^");
                    num1 = new BigInteger(line.substring(pos, pos2));
                    pos  = pos2 + 5;
                    pos2 = line.length() - 2;
                    num2 = new BigInteger(line.substring(pos, pos2));
                    line = line 
                            + "\t\t" + (new PrimeFactorization(num1)).toString(mode)
                            + "\t\t" + (new PrimeFactorization(num2)).toString(mode);
                } // else ignore all other lines
                System.out.println(line);
            } // while ! eof
            lineReader.close();
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        } // try
    } // printFactors

    //==========================
    // Main
    //==========================
    /** Test method.
     *  @param args command line arguments:
     *  <ul>
     *  <li>-wrob322 preprocess Wroblewski's evaluate Bachet's duplication formula</li>
     *  </ul>
     */
    /*-------------------- Test Driver --------------------*/
    public static void main(String[] args) {
        TaxiCab taxiCab = new TaxiCab();
        int iarg = 0;
        if (false) {
        } else if (args.length == 0) {

        } else { // some option
            String opt = args[iarg ++];
            if (false) {
            } else if (opt.startsWith("-wrob322"  )) {
                taxiCab.process322          (args[iarg]);
            } else if (opt.startsWith("-euler.fr" )) {
                taxiCab.printFactors        (args[iarg]);
            } else {
                System.err.println("invalid option " + opt);
            } // some option
        } // at least 1 argument
    } // main
/*
c.f. data/taxicab/makefile
lynx -dump euler.fr.taxicab.html | grep "= "\
| grep -v verified | grep -v which\
| sed -e "s/^ * //" | tee taxicab.tmp
Taxicab(1) = 2
= 1^3 + 1^3
Taxicab(2) = 1729
= 1^3 + 12^3
= 9^3 + 10^3
Taxicab(3) = 87539319
= 167^3 + 436^3
= 228^3 + 423^3
= 255^3 + 414^3
Taxicab(4) = 6963472309248
= 2421^3 + 19083^3
= 5436^3 + 18948^3
= 10200^3 + 18072^3
= 13322^3 + 16630^3
Taxicab(5) = 48988659276962496
= 38787^3 + 365757^3
= 107839^3 + 362753^3
= 205292^3 + 342952^3
= 221424^3 + 336588^3
= 231518^3 + 331954^3
Taxicab(6) <= 24153319581254312065344
= 28906206^3 + 582162^3
= 28894803^3 + 3064173^3
= 28657487^3 + 8519281^3
= 27093208^3 + 16218068^3
= 26590452^3 + 17492496^3
= 26224366^3 + 18289922^3
Taxicab(7) <= 24885189317885898975235988544
= 2648660966^3 + 1847282122^3
= 2685635652^3 + 1766742096^3
= 2736414008^3 + 1638024868^3
= 2894406187^3 + 860447381^3
= 2915734948^3 + 459531128^3
= 2918375103^3 + 309481473^3
= 2919526806^3 + 58798362^3
Taxicab(8) <= 50974398750539071400590819921724352
= 299512063576^3 + 288873662876^3
= 336379942682^3 + 234604829494^3
= 341075727804^3 + 224376246192^3
= 347524579016^3 + 208029158236^3
= 367589585749^3 + 109276817387^3
= 370298338396^3 + 58360453256^3
= 370633638081^3 + 39304147071^3
= 370779904362^3 + 7467391974^3
Taxicab(9) <= 136897813798023990395783317207361432493888
= 41632176837064^3 + 40153439139764^3
= 46756812032798^3 + 32610071299666^3
= 47409526164756^3 + 31188298220688^3
= 48305916483224^3 + 28916052994804^3
= 51094952419111^3 + 15189477616793^3
= 51471469037044^3 + 8112103002584^3
= 51518075693259^3 + 5463276442869^3
= 51530042142656^3 + 4076877805588^3
= 51538406706318^3 + 1037967484386^3
Taxicab(10) <= 7335345315241855602572782233444632535674275447104
= 15695330667573128^3 + 15137846555691028^3
= 17627318136364846^3 + 12293996879974082^3
= 17873391364113012^3 + 11757988429199376^3
= 18211330514175448^3 + 10901351979041108^3
= 19262797062004847^3 + 5726433061530961^3
= 19404743826965588^3 + 3058262831974168^3
= 19422314536358643^3 + 2059655218961613^3
= 19426825887781312^3 + 1536982932706676^3
= 19429379778270560^3 + 904069333568884^3
= 19429979328281886^3 + 391313741613522^3
Taxicab(11) <= 2818537360434849382734382145310807703728251895897826621632
= 11410505395325664056^3 + 11005214445987377356^3
= 12815060285137243042^3 + 8937735731741157614^3
= 12993955521710159724^3 + 8548057588027946352^3
= 13239637283805550696^3 + 7925282888762885516^3
= 13600192974314732786^3 + 6716379921779399326^3
= 14004053464077523769^3 + 4163116835733008647^3
= 14107248762203982476^3 + 2223357078845220136^3
= 14120022667932733461^3 + 1497369344185092651^3
= 14123302420417013824^3 + 1117386592077753452^3
= 14125159098802697120^3 + 657258405504578668^3
= 14125594971660931122^3 + 284485090153030494^3
= 33900611529512547910376^3 + 32696492119028498124676^3
= 38073544107142749077782^3 + 26554012859002979271194^3
= 38605041855000884540004^3 + 25396279094031028611792^3
= 39334962370186291117816^3 + 23546015462514532868036^3
= 40406173326689071107206^3 + 19954364747606595397546^3
= 41606042841774323117699^3 + 12368620118962768690237^3
= 41912636072508031936196^3 + 6605593881249149024056^3
= 41950587346428151112631^3 + 4448684321573910266121^3
= 41960331491058948071104^3 + 3319755565063005505892^3
= 41965847682542813143520^3 + 1952714722754103222628^3
= 41965889731136229476526^3 + 1933097542618122241026^3
= 41967142660804626363462^3 + 845205202844653597674^3
Cabtaxi(1) = 0
= 1^3 - 1^3
Cabtaxi(2) = 91
= 3^3 + 4^3
= 6^3 - 5^3
Cabtaxi(3) = 728
= 6^3 + 8^3
= 9^3 - 1^3
= 12^3 - 10^3
Cabtaxi(4) = 2741256
= 108^3 + 114^3
= 140^3 - 14^3
= 168^3 - 126^3
= 207^3 - 183^3
Cabtaxi(5) = 6017193
= 166^3 + 113^3
= 180^3 + 57^3
= 185^3 - 68^3
= 209^3 - 146^3
= 246^3 - 207^3
Cabtaxi(6) = 1412774811
= 963^3 + 804^3
= 1134^3 - 357^3
= 1155^3 - 504^3
= 1246^3 - 805^3
= 2115^3 - 2004^3
= 4746^3 - 4725^3
Cabtaxi(7) = 11302198488
= 1926^3 + 1608^3
= 1939^3 + 1589^3
= 2268^3 - 714^3
= 2310^3 - 1008^3
= 2492^3 - 1610^3
= 4230^3 - 4008^3
= 9492^3 - 9450^3
Cabtaxi(8) = 137513849003496
= 22944^3 + 50058^3
= 36547^3 + 44597^3
= 36984^3 + 44298^3
= 52164^3 - 16422^3
= 53130^3 - 23184^3
= 57316^3 - 37030^3
= 97290^3 - 92184^3
= 218316^3 - 217350^3
Cabtaxi(9) = 424910390480793000
= 645210^3 + 538680^3
= 649565^3 + 532315^3
= 752409^3 - 101409^3
= 759780^3 - 239190^3
= 773850^3 - 337680^3
= 834820^3 - 539350^3
= 1417050^3 - 1342680^3
= 3179820^3 - 3165750^3
= 5960010^3 - 5956020^3
Cabtaxi(10) <= 933528127886302221000
= 8387730^3 + 7002840^3
= 8444345^3 + 6920095^3
= 9773330^3 - 84560^3
= 9781317^3 - 1318317^3
= 9877140^3 - 3109470^3
= 10060050^3 - 4389840^3
= 10852660^3 - 7011550^3
= 18421650^3 - 17454840^3
= 41337660^3 - 41154750^3
= 77480130^3 - 77428260^3
Cabtaxi(11) <= 11358236731992639122907000
Cabtaxi(12) <= 1912223147184127402358643000
Cabtaxi(13) <= 23266019031789278104497609381000
Cabtaxi(14) <= 567434938166308703690592195193209000
Cabtaxi(15) <= 31136289927061691188910174934641764248000
Cabtaxi(16) <= 1577146493675455843791867090964409284453944000
Cabtaxi(17) <= 125394186272654467772359976801307288979079725608000
Cabtaxi(18) <= 768476640447541361234827077147113303513533370352195096000
*/
} // TaxiCab
