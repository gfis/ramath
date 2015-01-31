<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%--
    Shows the manifest, the license and the notices.
    @(#) $Id: metaInf.jsp 74 2009-01-09 06:55:45Z gfis $
    2007-12-08, Georg Fischer: from scratch
--%>
<%--
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
--%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.InputStreamReader"%>

<% response.setContentType("text/html; charset=UTF-8"); %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>File Transformation</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
<%
    String CVSID = "@(#) $Id: metaInf.jsp 74 2009-01-09 06:55:45Z gfis $";
	String line = null;
	String fileName = null;
    String view = request.getParameter("view");
    if (view == null) {
    	view = "manifest";
    }
    if (view.equals("package")) {
    	// Package [] packs = this.getClass().getClassLoader().getPackages();
    	Package [] packs = Package.getPackages();
%>
<tt>
<pre>
<%
    	for (int ipack = 0; ipack < packs.length; ipack ++) {
    		out.println(packs[ipack].getName());
    	} // for ipack
%>
</pre>
</tt>
<%
	} else {
    	if (false) {
    	} else if (view.equals("license")) {
			%>
			<a name="license" />
			<h2>License</h2>
			<%
			fileName = "LICENSE.txt";
    	} else if (view.equals("notice")) {
			%>
			<a name="notice" />
			<h2>Included Software Packages</h2>
			<%
			fileName = "NOTICE.txt";
    	} else if (view.equals("root")) {
			%>
			<a name="Root Directory" />
			<h2>License</h2>
			<%
			fileName = ".";
    	} else { // if (view.equals("manifest")) {
			%>
			<a name="manifest" />
			<h2>JAR Manifest</h2>
			<%
			fileName = "META-INF/MANIFEST.MF";
		}
%>
<tt>
<pre>
<%
    	BufferedReader reader = new BufferedReader(new InputStreamReader
    			(this.getClass().getClassLoader().getResourceAsStream(fileName)));
    	while ((line = reader.readLine()) != null) {
 			out.println(line);
    	} // while
    } // not "package"
%>
</pre>
</tt>

<p />
Back to the <a href="index.jsp">xtool input form</a>
	
<font size="-1">
Questions, remarks to: <a href="mailto:punctum@punctum.com">Dr. Georg Fischer</a>
</font>
</p>
    
</body>
</html>
