/*  SOAP Service interface to RaMathphan
    @(#) $Id: RaMathService.java 74 2009-01-09 06:55:45Z gfis $
    2007-04-17: constant (dummy) response
 
    Service to be called via SOAP, offering the functions of GrammarFilter
*/
/*
 * Copyright 2006 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.RaMath;

/** This class is the SOAP service interface to <em>Dbat</em>, 
 *  and ressembles the functionality of the commandline interface
 *  in that class.
 *  @author Dr. Georg Fischer
 */
public class RaMathService { 
    public final static String CVSID = "@(#) $Id: RaMathService.java 74 2009-01-09 06:55:45Z gfis $";

    /** Returns the results of an activation of <em>Dbat</em>
     *  to a SOAP client.
     *  @param language ISO 639 language code, e.g. "de"
     *  @param function a code for the desired function
     *  @return number word or digit sequence 
     */
    public String getResponse(String language, String function, String digits)  {
        String response = "RaMathService is not yet implemented";
        if (false) 
        try {
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
        }
        return response;
    } // getResponse         
     
} // RaMathService
