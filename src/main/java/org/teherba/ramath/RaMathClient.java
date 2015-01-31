/*  SOAP Client which calls RaMathService
    @(#) $Id: RaMathClient.java 74 2009-01-09 06:55:45Z gfis $
	2008-12-10: use service.properties
    2005-08-26, Dr. Georg Fischer
*/
/*
 * Copyright 2001-2004 The Apache Software Foundation.
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
import  org.apache.axis.client.Call;
import  org.apache.axis.client.Service;
import  java.io.File;
import  java.io.FileInputStream;
import  java.util.Properties;
import  javax.xml.namespace.QName;

/** SOAP client sample program.
 *
 */
public class RaMathClient {
    public final static String CVSID = "@(#) $Id: RaMathClient.java 74 2009-01-09 06:55:45Z gfis $";

    /** Activates the <em>DbatService</em>
     *  @param args arguments on the commandline:
     *  <ul>
     *  <li>language, ISO 639 code, for example "de"</li>
     *  <li>function to be activated: month, weekday, season, parse ...</li>
     *  <li>digits (optional): sequence of digits, or number word for function <em>parse</em></li>
     *  </ul>
     */
    public static void main(String [] args) {
        try {
	        Properties props = new Properties();
    	    String propsName = "service.properties";
    	    props.load(RaMathClient.class.getClassLoader().getResourceAsStream(propsName)); // (1) load from classpath (jar)
    	    File propsFile = new File(propsName);
    	    if (propsFile.exists()) {
    	        props.load(new FileInputStream(propsFile)); // (2) add any properties from a file in the current directory
    	    }
        	String axisURL = props.getProperty("axis_url", "http://localhost:8180/axis");

            String   endpoint = axisURL + "/services/RaMathService";
            Service  service  = new Service();
            Call     call     = (Call) service.createCall();
            call.setTargetEndpointAddress(new java.net.URL(endpoint));
            call.setOperationName(new QName(axisURL, "getResponse"));
            call.setOperationName(new QName(axisURL, "getResponse") );
            call.addParameter("language", org.apache.axis.Constants.XSD_STRING, javax.xml.rpc.ParameterMode.IN);
            call.addParameter("function", org.apache.axis.Constants.XSD_STRING, javax.xml.rpc.ParameterMode.IN);
            call.addParameter("digits"  , org.apache.axis.Constants.XSD_STRING, javax.xml.rpc.ParameterMode.IN);
            call.setReturnType(           org.apache.axis.Constants.XSD_STRING);
            
            String language = "de";
            String function = "spell";
            String digits   = "";
            int iargs = 0;
            if (iargs < args.length) {
                language = args[iargs ++];
                if (iargs < args.length) {
                    function = args[iargs ++];
                    while (iargs < args.length) {
                        digits += args[iargs ++] + " ";
                    }
                }
            }
            String ret = (String) call.invoke( new Object[] { language, function, digits } );
            System.out.println(ret);
        } catch (Exception exc) {
            System.err.println(exc.getMessage());
            exc.printStackTrace();
        }
    } // main
    
} // RaMathCLient
