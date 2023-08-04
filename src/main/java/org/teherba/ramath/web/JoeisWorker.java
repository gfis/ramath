/*  JoeisWorker.java - parameter mapping for jOEIS
 *  @(#) $Id$
 *  2023-08-04: Georg Fischer: copied from IndexPage
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

/** Parameter mapping for jOEIS
 *  @author Dr. Georg Fischer
 */
public class JoeisWorker implements Serializable {
    public final static String CVSID = "@(#) $Id: 57d01d0860aef0c2f2783647be70c3c381710c86 $";
    public final static long serialVersionUID = 19470629;

    /** log4j logger (category) */
    private Logger log;

    /** Instance for the mappings */
    private JoeisPreparer joeisPrep;

    /** No-args Constructor
     */
    public JoeisWorker() {
        log = LogManager.getLogger(JoeisWorker.class.getName());
        joeisPrep = new JoeisPreparer(true); // is called from a servlet
    } // Constructor

    /** Output the main dialog page for RaMath
     *  @param request request with header fields
     *  @param response response with writer
     *  @param parmsIn input parameters
     *  @throws IOException for IO errors
     */
    public void dialog(HttpServletRequest request, HttpServletResponse response
            , String[] parmsIn
            ) throws IOException {
    /*
        try {
    */
            String encoding = "UTF-8";
            PrintWriter out = response.getWriter();
            int parmLen = parmsIn.length;
            int iparm = 0;
            String aseqno   = parmsIn[iparm ++];
            String callCode = parmsIn[iparm ++];
            String offset1  = parmsIn[iparm ++];
            int istart = iparm; // 3
            response.setContentType("text/plain" + ";charset=" + encoding);
            response.setHeader("Content-Disposition", "inline;filename=\"" + callCode + ".seq4\""); // attachment would store immediately
            response.setCharacterEncoding(encoding);

            // Processing
            iparm = 3;
            joeisPrep.processRecord(callCode, iparm, parmsIn);

            iparm = 0;
            String sep = "";
            while (iparm < parmLen) {
                out.write(sep + parmsIn[iparm]);
                sep = "\t";
                iparm ++;
            }
            out.write("\n");
    /*
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    */
    } // dialog

} // JoeisWorker
