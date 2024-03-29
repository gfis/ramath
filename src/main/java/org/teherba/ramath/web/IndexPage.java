/*  IndexPage.java - main web page for Ramath
 *  @(#) $Id: 57d01d0860aef0c2f2783647be70c3c381710c86 $
 *  2017-05-28: javadoc 1.8
 *  2017-01-03: table cells rearranged
 *  2016-08-28: Dr. Georg Fischer: copied from Dbat
 */
/*
 * Copyright 2016 Dr. Georg Fischer <dr dot georg dot fischer at gmail dot kom>
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
import  org.teherba.ramath.ContinuedFraction;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.VariableMap;
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

/** RaMath main dialog page
 *  @author Dr. Georg Fischer
 */
public class IndexPage implements Serializable {
    public final static String CVSID = "@(#) $Id: 57d01d0860aef0c2f2783647be70c3c381710c86 $";
    public final static long serialVersionUID = 19470629;

    /** log4j logger (category) */
    private Logger log;

    /** No-args Constructor
     */
    public IndexPage() {
        log      = LogManager.getLogger(IndexPage.class.getName());
    } // Constructor

    /** Output the main dialog page for RaMath
     *  @param request request with header fields
     *  @param response response with writer
     *  @param basePage refrence to common methods and error messages
     *  @param language 2-letter code en, de etc.
     *  @param area application area: rset
     *  @param opt options 
     *  @param form1 upper input textarea for RelationSet
     *  @param form2 resulting RelationSet
     *  @param form2c like <em>form2</em> with colored prime factors
     *  @param rmap a {@link VariableMap} defining substitutions
     *  @throws IOException for IO errors
     */
    public void dialog(HttpServletRequest request, HttpServletResponse response
            , BasePage basePage
            , String language
            , String area
            , String opt
            , String form1
            , String form2
            , String form2c
            , VariableMap rmap
            ) throws IOException {
    /*
        try {
    */
            PrintWriter out = basePage.writeHeader(request, response, language);
            out.write("<title>" + basePage.getAppName() + " Main Page</title>\n");
            out.write("</head>\n<body>\n");

            String border = "0";
            int width  = 100;
            int height = 2;
            String[] optArea    = new String []
                    { "rset"    // 0
                    , "cfra"    // 1
                    , "eecj"    // 2
                    } ;
            String[] enArea     = new String []
                    { "Symbolic RelationSet"        // 0
                    , "Continued Fraction"          // 1
                    , "Euler's Extended Conjecture" // 2
                    } ;
            int index = 0;
            out.write("<!-- area=\""  + area + "\", opt=\"" + opt + "\"\n");
            out.write("    form1=\""  + form1 + "\"\n");
            out.write("    form2=\""  + form2 + "\"\n");
            out.write("    rmap=\""   + rmap.toString() + "\"\n");
            out.write("-->\n");
            out.write("<h2>ramath - Rational and Symbolic Mathematics</h2>\n");
            out.write("<form action=\"servlet\" method=\"get\">\n");
            out.write("    <input type = \"hidden\" name=\"view\" value=\"upper\" />\n");
            out.write("    <table cellpadding=\"0\" border=\"" + border + "\">\n");
            out.write("        <tr valign=\"top\">\n");
            out.write("            <td><strong>Area:</strong><br />\n");
            out.write("                <select name=\"area\" size=\"3\">\n");
            index = 0;
            while (index < optArea.length) {
                out.write("<option value=\"" + optArea[index] + "\""
                        + (optArea[index].equals(area) ? " selected" : "")
                        + ">" + enArea[index] + "</option>\n");
                index ++;
            } // while index
            out.write("                </select>\n");
            out.write("                <br />\n");
            out.write("                <br />\n");
            out.write("                <strong>Options:</strong> ");
            out.write("                <input name=\"opt\" maxsize=\"100\" size=\"12\" value=\"" + opt + "\" />\n");
            out.write("                <br /><br />\n");
            out.write("            </td>\n");
            
            out.write("            <td><strong>Variable Substitutions:</strong><br />\n");
            out.write("                <table cellpadding=\"0\" border=\"" + border + "\">\n");
            Iterator<String> viter = rmap.keySet().iterator();
            index = 0;
            while (index < rmap.size()) {
                String key   = viter.next();
                String value = rmap.get(key);
                out.write("<tr><td><input name=\"key" + String.valueOf(index) + "\"");
                out.write(    " type=\"hidden\" value=\"" + key   + "\" />" + key + "-&gt;</td>");
                out.write("<td><input name=\"val" + String.valueOf(index) + "\"");
                out.write(    " size=\"20\" maxsize=\"160\" value=\"" + value + "\" /></td></tr>\n");
                index ++;
            } // while index
            out.write("                </table>\n");
            out.write("            </td>\n");
            
            out.write("        </tr>\n");
            out.write("        <tr valign=\"top\">\n");
            out.write("            <td align=\"left\" colspan=\"2\"><strong>RelationSet:</strong><br />\n");
            out.write("                <textarea name=\"form1\" wrap=\"virtual\" cols=\"" + width + "\" rows=\"" + height + "\">"
                                       + form1 + "</textarea>\n");
            out.write("            </td>\n");
            out.write("        </tr>\n");
            out.write("        <tr valign=\"top\">\n");
            out.write("            <td align=\"left\" colspan=\"2\">\n");
            out.write("                <input type=\"submit\" value=\"Compute\" /> with substitutions\n");
            out.write("            </td>\n");
            out.write("        </tr>\n");
            out.write("    </table>\n");
            out.write("</form><!-- upper -->\n");
            
            out.write("<form action=\"servlet\" method=\"get\">\n"); // lower
            out.write("    <input type = \"hidden\" name=\"view\"  value=\"lower\" />\n");
            out.write("    <input type = \"hidden\" name=\"area\"  value=\"" + area  + "\" />\n");
            out.write("    <input type = \"hidden\" name=\"opt\"   value=\"" + opt   + "\" />\n");
            out.write("    <input type = \"hidden\" name=\"form2\" value=\"" + form2 + "\" />\n");
            out.write("    <table cellpadding=\"0\" border=\"" + border + "\">\n");
            out.write("        <tr valign=\"top\">\n");
            out.write("            <td>" + form2c + "</td>\n");
            out.write("        </tr>\n");
            out.write("        <tr valign=\"top\">\n");
            out.write("            <td align=\"left\">\n");
            out.write("                <input type=\"submit\" value=\"Replace\" /> input field\n");
            out.write("            </td>\n");
            out.write("        </tr>\n");
            out.write("    </table>\n");
            out.write("</form><!-- lower -->\n");
            out.write("                <br />\n");
            out.write("See also: ");
            basePage.writeAuxiliaryLinks(language, "main");

            basePage.writeTrailer(language, "quest");
    /*
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    */
    } // dialog

} // IndexPage
