/*  JoeisDialog.java - translations for jOEIS
 *  @(#) $Id$
 *  2023-08-03: Dr. Georg Fischer: copied from IndexPage
 */
/*
 * Copyright 2023 Dr. Georg Fischer <dr dot georg dot fischer at gmail dot kom>
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
package org.teherba.ramath.web;
import  org.teherba.ramath.sequence.JoeisPreparer;
import  org.teherba.common.web.BasePage;
import  java.io.IOException;
import  java.io.PrintWriter;
import  java.io.Serializable;
import  java.util.Iterator;
import  javax.servlet.http.HttpServletRequest;
import  javax.servlet.http.HttpServletResponse;
import  javax.servlet.http.HttpSession;
import  org.apache.logging.log4j.Logger;
import  org.apache.logging.log4j.LogManager;

/** RaMath translations for jOEIS
 *  @author Dr. Georg Fischer
 */
public class JoeisDialog implements Serializable {
    public final static String CVSID = "@(#) $Id: 57d01d0860aef0c2f2783647be70c3c381710c86 $";
    public final static long serialVersionUID = 19470629;

    /** log4j logger (category) */
    private Logger log;

    /** Instance for the mappings */
    private JoeisPreparer joeisPrep;

    /** No-args Constructor
     */
    public JoeisDialog() {
        log = LogManager.getLogger(JoeisDialog.class.getName());
        joeisPrep = new JoeisPreparer(true); // is called from a servlet
    } // Constructor

    /** Output the main dialog page for RaMath
     *  @param request request with header fields
     *  @param response response with writer
     *  @param basePage refrence to common methods and error messages
     *  @param language 2-letter code en, de etc.
     *  @param aseqno OEIS A-number
     *  @param callCode type of operation
     *  @param offset1 first index of the sequence <code>aseqno</code>
     *  @param parmsIn input parameters
     *  @throws IOException for IO errors
     */
    public void dialog(HttpServletRequest request, HttpServletResponse response
            , BasePage basePage
            , String language
            , String[] parmsIn
            ) throws IOException {
    /*
        try {
    */
            int parmLen = parmsIn.length;
            PrintWriter out = basePage.writeHeader(request, response, language);
            out.write("<title>" + basePage.getAppName() + " jOEIS parameter mappings</title>\n");
            out.write("</head>\n<body>\n");
            String border = "0";
            int width  = 100;
            int height = 2;
            String[] optCC    = new String []
                    { "bva"      // 0
                    , "fract"    // 1
                    , "vect"     // 2
                    } ;
            String[] enCC     = new String []
                    { "HolonomicRecurrence"         // 0
                    , "GeneratingFunction"          // 1
                    , "Vector of coefficients"      // 2
                    } ;
            int iparm = 0;
            String aseqno   = parmsIn[iparm ++];
            String callCode = parmsIn[iparm ++];
            String offset1  = parmsIn[iparm ++];
            int istart = iparm; // 3
            out.write("<h2>ramath - jOEIS parameter mappings</h2>\n");
            out.write("<form action=\"servlet\" method=\"get\">\n");
            out.write("  <input type = \"hidden\" name=\"view\" value=\"joeis\" />\n");
            out.write("  <table cellpadding=\"0\" border=\"" + border + "\">\n");

            out.write("    <tr valign=\"top\">\n");
            out.write("      <td><strong>A-Number: </strong>");
            out.write("        <input name=\"aseqno\"  maxsize=\"10\" size=\"7\" value=\"" + aseqno  + "\" />");
            out.write("        <strong>Offset: </strong>");
            out.write("        <input name=\"offset1\" maxsize=\"10\" size=\"1\" value=\"" + offset1 + "\" />\n");
            out.write("      </td>\n");
            out.write("      <td><strong>Callcode:</strong><br />\n");
            out.write("        <select name=\"callcode\" size=\"3\">\n");
            int iopt = 0;
            while                (iopt < optCC.length) {
            out.write("          <option value=\"" + optCC[iopt] + "\""+ (optCC[iopt].equals(callCode) ? " selected=\"true\"" : "")+ ">" + enCC[iopt] + "</option>\n");
            iopt ++;
            }
            out.write("        </select>\n");
            out.write("      </td>\n");
            out.write("    </tr>\n");

            out.write("    <tr valign=\"top\">\n");
            out.write("      <td align=\"left\" colspan=\"2\"><strong>Input parameters:</strong>\n");
            out.write("      </td>\n");
            out.write("    </tr>\n");
            while (        iparm < parmLen) {
            out.write("    <tr valign=\"top\">\n");
            out.write("      <td align=\"left\" colspan=\"2\">\n");
            out.write("        <textarea name=\"parm" + String.valueOf(iparm - istart + 1) + "\" wrap=\"virtual\" cols=\"" + width + "\" rows=\"" + height + "\">"
                                    + parmsIn[iparm] + "</textarea>\n");
            out.write("      </td>\n");
            out.write("    </tr>\n");
            iparm ++;
            } 

            out.write("    <tr valign=\"top\">\n");
            out.write("      <td align=\"left\" colspan=\"2\">\n");
            out.write("        <input type=\"submit\" value=\"Submit\" />\n");
            out.write("      </td>\n");
            out.write("  </tr>\n");
            out.write("  </table>\n");
            out.write("</form><!-- joeis -->\n");
            
            // Processing
            iparm = 3;
            joeisPrep.processRecord(callCode, iparm, parmsIn);
            
            out.write("<div>\n"); // output parameters
            out.write("  <table cellpadding=\"0\" border=\"" + border + "\">\n");

            out.write("    <tr valign=\"top\">\n");
            out.write("      <td align=\"left\" colspan=\"2\"><strong>Output parameters:</strong>\n");
            out.write("      </td>\n");
            out.write("    </tr>\n");
            out.write("    <tr valign=\"top\">\n");
            out.write("      <td align=\"left\" colspan=\"2\">\n");
            out.write("        <textarea name=\"result\" wrap=\"virtual\" cols=\"" + width + "\" rows=\"" + height + "\">");
            String             sep = "";
            iparm = 0;
            while (            iparm < parmLen) {
            out.write(         sep + parmsIn[iparm]);
            sep = "\t";
            iparm ++;
            }
            out.write("\n");
            out.write("        </textarea>\n");
            out.write("      </td>\n");
            out.write("    </tr>\n");


            out.write("  </table>\n");
            out.write("</div\n");
            out.write("<br />\n");
            out.write("See also: ");
            basePage.writeAuxiliaryLinks(language, "main");
            basePage.writeTrailer(language, "quest");
    /*
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    */
    } // dialog

} // JoeisDialog
