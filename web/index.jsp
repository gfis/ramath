<?xml version="1.0" encoding="UTF-8"?>
<%--
    Main form for application 'ramath'
    @(#) $Id: index.jsp 195 2009-07-09 05:38:17Z gfis $
    2016-01-04: new layout, 1 textarea only, form2c - HTML coloring
    2015-07-17: opt=norm; poly -> rset
    2013-09-21: valueMap -> varMap
    2009-07-07: copied from xtrans
    caution, must be UTF-8 encoded: äöüÄÖÜß
--%>
<%--
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
--%>
<%@page import="org.teherba.ramath.ContinuedFraction"%>
<%@page import="org.teherba.ramath.symbolic.Polynomial"%>
<%@page import="org.teherba.ramath.symbolic.VariableMap"%>
<%@page import="java.util.Iterator"%>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
    <title>ramath</title>
    <script type="text/javascript">
    </script>
</head>
<%
    String CVSID = "@(#) $Id: index.jsp 195 2009-07-09 05:38:17Z gfis $";
    int width  = 80;
    int height = 4;
    String[] optArea    = new String []
            { "rset"    // 0
            , "cfra"    // 1
            , "eecj"    // 2
            } ;
    String[] enArea     = new String []
            { "Symbolic Polynomial"         // 0
            , "Continued Fraction"          // 1
            , "Euler's Extended Conjecture" // 2
            } ;
    Object
    field = session.getAttribute("view"     );  String view  = (field != null) ? (String) field : "upper";
    field = session.getAttribute("area"     );  String area  = (field != null) ? (String) field : "rset";
    field = session.getAttribute("opt"      );  String opt   = (field != null) ? (String) field : "norm";
    field = session.getAttribute("form1"    );  String form1 = (field != null) ? (String) field : "(a-b)^4";
    field = session.getAttribute("form2"    );  String form2 = (field != null) ? (String) field : "";
    field = session.getAttribute("form2c"    ); String form2c= (field != null) ? (String) field : "";
    field = session.getAttribute("varmap"   );
    VariableMap varMap = (field != null) ? (VariableMap) field : new VariableMap();
    int index = 0;
    String border = "0";
%>
<body>
    <!--
    view= "<%= view  %>", area="<%= area %>", opt="<%= opt %>"
    form1="<%= form1 %>"
    form2="<%= form2 %>"
    valmap="<%= varMap.toString() %>"
    -->

    <h2>ramath - Rational and Symbolic Mathematics</h2>
    <form action="servlet" method="get">
        <input type = "hidden" name="view" value="upper" />
        <table cellpadding="0" border="<%= border %>">
            <tr valign="top">
                <td>Area<br />
                    <select name="area" size="3">
                    <%
                        index = 0;
                        while (index < optArea.length) {
                            out.write("<option value=\""
                                    + optArea[index] + "\""
                                    + (optArea[index].equals(area) ? " selected" : "")
                                    + ">"
                                    + enArea[index] + "</option>\n");
                            index ++;
                        } // while index
                    %>
                    </select>
                    <br />
                    <br />
                    Options<br />
                    <input name="opt" maxsize="60" size="<%= width / 4 %>" value="<%= opt %>" /> (norm)
                </td>
                <td>
                Variable Substitutions<br />
                    <table cellpadding="0" border="<%= border %>">
                <%
                    Iterator<String> viter = varMap.keySet().iterator();
                    index = 0;
                    while (index < varMap.size()) {
                        String key   = viter.next();
                        String value = varMap.get(key);
                        out.write("<tr><td><input name=\"key" + String.valueOf(index) + "\"");
                        out.write(    " type=\"hidden\" s            value=\"" + key   + "\" />");
                        out.write(key + "-&gt;</td>");
                        out.write("<td><input name=\"val" + String.valueOf(index) + "\"");
                        out.write(    " size=\"20\" maxsize=\"160\" value=\"" + value + "\" /></td></tr>");
                        index ++;
                    } // while index
                %>
                    </table>
                </td>
            </tr>
        </table>
        <table cellpadding="0" border="<%= border %>">
           <tr>
                <td colspan="2">
                    <textarea name="form1" wrap="virtual" cols="<%= width %>" rows="<%= height %>"><%= form1 %>
                    </textarea>
                </td>
            </tr>
            <tr valign="top">
                <td align="left">
                    <input type="submit" value="Compute" /> with substitutions
                </td>
            </tr>
         </table>
    </form><!-- upper -->

    <form action="servlet" method="get">
        <input type = "hidden" name="view"   value="lower" />
        <input type = "hidden" name="area"   value="<%= area   %>" />
        <input type = "hidden" name="opt"    value="<%= opt    %>" />
        <input type = "hidden" name="form2"  value="<%= form2  %>" />
        <table cellpadding="0" border="<%= border %>" width="640px">
            <tr valign="top">
                <td colspan="2">
                    <%= form2c %>
                </td>
            </tr>
            <tr valign="top">
                <td align="left">
                    <input type="submit" value="Replace" /> input field
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <% String callingPage = "index"; %>
                    <%@include file="seeAlso.inc" %>
                </td>
            </tr>
        </table>
    </form><!-- lower -->

</body>
</html>
