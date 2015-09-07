/*  RaMathServlet.java - Rational and Symbolic Mathematics
 *  @(#) $Id: RaMathServlet.java 199 2009-07-13 20:16:23Z gfis $
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
package org.teherba.ramath;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.RefiningMap;
import  java.io.IOException;
import  javax.servlet.RequestDispatcher;
import  javax.servlet.ServletConfig;
import  javax.servlet.ServletContext;
import  javax.servlet.ServletException;
import  javax.servlet.http.HttpServlet;
import  javax.servlet.http.HttpServletRequest;
import  javax.servlet.http.HttpServletResponse;
import  javax.servlet.http.HttpSession;
import  org.apache.log4j.Logger;

/** Rational and Symbolic Mathematics
 *  <ul>
 *  <li>Symbolic evaluation of polynomials</li>
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

    /** Called by the servlet container to indicate to a servlet
     *  that the servlet is being placed into service.
     *  @param config object containing the servlet's configuration and initialization parameters
     *  @throws ServletException
     */
    public void init(ServletConfig config) throws ServletException {
        super.init(config); // ???
        log = Logger.getLogger(RaMathServlet.class.getName());
        applPath = config.getServletContext().getRealPath("/");
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

    /** Gets the value of an HTML input field, maybe as empty string
     *  @param request request for the HTML form
     *  @param name name of the input field
     *  @param initValue initial value if the parameter was not set
     *  @return non-null (but possibly empty) string value of the input field
     */
    private String getInputField(HttpServletRequest request, String name, String initValue) {
        String value = request.getParameter(name);
        if (value == null) {
            value = "";
        }
        return value;
    } // getInputField

    /** Generates the response (HTML page) for an http request
     *  @param request request with header fields
     *  @param response response with writer
     *  @throws IOException
     */
    public void generateResponse(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
        	RelationSet rset = null;
        	RefiningMap rmap = null;
        	int index = 0;
        	boolean found = false;
            HttpSession session = request.getSession();
            String view     = getInputField(request, "view"	, "");
            String area     = getInputField(request, "area"	, "rset");
            String opt      = getInputField(request, "opt"	, "norm");
            String form1    = getInputField(request, "form1", "(a-b)^3");
            String form2    = getInputField(request, "form2", "");
            session.setAttribute("view"  , view);
            session.setAttribute("area"  , area);
            session.setAttribute("opt"   , opt);
            session.setAttribute("form1" , form1);
            session.setAttribute("form2" , form2);

            String newPage = "index";
            if (false) {
            } else if (view.equals("upper")) {
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
                            if (! value.startsWith("(") || ! value.endsWith(")")) {
                                value = "(" + value + ")";
                            }
                            if (rmap.get(key) != null) { // only those which occur in form1
                            	rmap.put(key, value);
                            }
                        }
                        index ++;
                    } // while found
                    session.setAttribute("varmap", rmap);
                    rset = rset.substitute(rmap);
                    if (opt.indexOf("norm") >= 0) {
                    	rset.deflateIt();
                    }
                    form2 = rset.niceString();
                    session.setAttribute("form2", form2);
                } else if (area.equals("cfra")) {
                } else if (area.equals("eecj")) {
                } else { // invalid area
                    newPage = "message";
                    session.setAttribute("messno"  , "001");
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
                            if (! value.startsWith("(") || ! value.endsWith(")")) {
                                value = "(" + value + ")";
                            }
                            if (rmap.get(key) != null) { // only those which occur in form1
                            	rmap.put(key, value);
                            }
                        }
                        index ++;
                    } // while found
                    session.setAttribute("varmap", rmap);
                    rset = rset.substitute(rmap);
                    if (opt.indexOf("norm") >= 0) {
                    	rset.deflateIt();
                    }
                    form1 = rset.niceString();
                    session.setAttribute("form1", form1);
                } else if (area.equals("cfra")) {
                } else if (area.equals("eecj")) {
                } else { // invalid area
                    newPage = "message";
                    session.setAttribute("messno"  , "001");
                }
            } else {
                    newPage = "message";
                    session.setAttribute("messno"  , "002");
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/" + newPage + ".jsp");
            dispatcher.forward(request, response);
        } catch (Exception exc) {
            System.out.println(exc.getMessage());
            exc.printStackTrace();
            response.getWriter().write(exc.getMessage());
            throw new IOException(exc.getMessage());
        }
    } // generateResponse

} // RaMathServlet
