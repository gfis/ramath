/*  RaMathServlet.java - Rational and Symbolic Mathematics
 *  @(#) $Id: RaMathServlet.java 199 2009-07-13 20:16:23Z gfis $
 *  2017-01-03: moved to subpackage web
 *  2016-08-28: remove JSPs
 *  2015-09-10: no "(...)" around substitution values
 *  2013-09-21: RefiningMap
 *  2015-07-17: opt=norm; Polynomial -> RelationSet
 *  2015-06-15: Polynomial.parse was not static
 *  2013-10-30: symmetrical form1 and form2
 *  2013-09-21: VariableMap
 *  2009-07-07, Georg Fischer: for symbolic.Polynomial
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.web.IndexPage;
import  org.teherba.ramath.web.Messages;
import  org.teherba.common.web.BasePage;
import  org.teherba.common.web.MetaInfPage;
import  java.io.IOException;
import  javax.servlet.ServletConfig;
import  javax.servlet.ServletContext;
import  javax.servlet.ServletException;
import  javax.servlet.http.HttpServlet;
import  javax.servlet.http.HttpServletRequest;
import  javax.servlet.http.HttpServletResponse;
import  org.apache.log4j.Logger;

/** Rational and Symbolic Mathematics
 *  <ul>
 *  <li>Symbolic evaluation of {@link RelationSet}s</li>
 *  <li>Continued Fractions</li>
 *  <li>Euler's Extended Conjecture: search for solution tuples and parametric equations</li>
 *  </ul>
 *  @author Dr. Georg Fischer
 */
public class RaMathServlet extends HttpServlet {
    public final static String CVSID = "@(#) $Id: RaMathServlet.java 199 2009-07-13 20:16:23Z gfis $";
    public final static long serialVersionUID = 19470629;

    /** URL path to this application */
    private String applPath;
    /** log4j logger (category) */
    private Logger log;
    /** common code and messages for auxiliary web pages */
    private BasePage basePage;
    /** name of this application */
    private static final String APP_NAME = "RaMath";

    /** Called by the servlet container to indicate to a servlet
     *  that the servlet is being placed into service.
     *  @param config object containing the servlet's configuration and initialization parameters
     *  @throws ServletException
     */
    public void init(ServletConfig config) throws ServletException {
        super.init(config); // ???
        log = Logger.getLogger(RaMathServlet.class.getName());
        basePage = new BasePage(APP_NAME);
        Messages.addMessageTexts(basePage);
    } // init

    /** Processes an http GET request
     *  @param request request with header fields
     *  @param response response with writer
     *  @throws IOException
     */
    public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
        // log.debug("doGet");
        generateResponse(request, response);
    } // doGet

    /** Processes an http POST request
     *  @param request request with header fields
     *  @param response response with writer
     *  @throws IOException
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // log.debug("doPost");
        generateResponse(request, response);
    } // doPost

    /** Generates the response (HTML page) for an http request
     *  @param request request with header fields
     *  @param response response with writer
     */
    public void generateResponse(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String view     = BasePage.getInputField(request, "view"  , "");
        String area     = BasePage.getInputField(request, "area"  , "rset");
        String opt      = BasePage.getInputField(request, "opt"   , "norm");
        String form1    = BasePage.getInputField(request, "form1" , "(a-b)^3");
        String form2    = BasePage.getInputField(request, "form2" , "");
        String form2c   = BasePage.getInputField(request, "form2c", ""); // HTML colored
        String language = "en";
        RelationSet rset = null;
        RefiningMap rmap = null;
        int index = 0;
        boolean found = false;
        int mode = 3; // with PrimeFactorization and HTML coloring
        String newPage = null;
        try {
            if (false) {
            } else if (view.equals("upper")
                    || view.equals("index")
                    ) {
                if (false) {
                } else if (area.equals("rset")) {
                    rset = RelationSet.parse(form1);
                    rmap = rset.getRefiningMap("x"); // maps x -> name
                    index = 0;
                    found = true;
                    while (found) {
                        String key   = request.getParameter("key" + String.valueOf(index));
                        String value = request.getParameter("val" + String.valueOf(index));
                        if (key == null || value == null) {
                            found = false;
                        } else {
                            if (rmap.get(key) != null) { // only those which occur in form1
                                rmap.put(key, value);
                            }
                        }
                        index ++;
                    } // while found
                    rset = rset.substitute(rmap);
                    if (opt.indexOf("norm") >= 0) {
                        rset.deflateIt();
                    }
                    form2  =  rset.toString(mode);
                    form2c =  rset.toString(mode + 1) + "<br />" + rset.toString(mode - 1);
                    (new IndexPage    ()).dialog(request, response, basePage, language, area, opt, form1, form2, form2c, rmap);
                } else { // invalid area
                    basePage.writeMessage(request, response, language, new String[] { "401", "area", area });
                }
                
            } else if (view.equals("lower")) {
                if (false) {
                } else if (area.equals("rset")) {
                    rset = RelationSet.parse(form2);
                    rmap = rset.getRefiningMap("x"); // maps x -> name
                    index = 0;
                    found = true;
                    while (found) {
                        String key   = request.getParameter("key" + String.valueOf(index));
                        String value = request.getParameter("val" + String.valueOf(index));
                        if (key == null || value == null) {
                            found = false;
                        } else {
                            if (rmap.get(key) != null) { // only those which occur in form1
                                rmap.put(key, value);
                            }
                        }
                        index ++;
                    } // while found
                    rset = rset.substitute(rmap);
                    if (opt.indexOf("norm") >= 0) {
                        rset.deflateIt();
                    }
                    form1 = rset.toString(mode);
                    (new IndexPage    ()).dialog(request, response, basePage, language, area, opt, form1, form2, form2c, rmap);
                } else { 
                    basePage.writeMessage(request, response, language, new String[] { "401", "area", area });
                }
                
            } else if (view.equals("license")
                    || view.equals("manifest")
                    || view.equals("notice")
                    ) {
                (new MetaInfPage    ()).showMetaInf (request, response, basePage, language, view, this);

            } else {
                basePage.writeMessage(request, response, language, new String[] { "401", "view", view });
            }
        } catch (IOException exc) {
            log.error(exc.getMessage(), exc);
        	throw exc;
        }
    } // generateResponse

} // RaMathServlet
