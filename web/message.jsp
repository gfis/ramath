<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- output some numbered system message
    @(#) $Id: message.jsp 193 2009-07-07 16:06:20Z gfis $
    2009-07-07, Dr. Georg Fischer 
-->
<%
final String [] msgText = new String [] 
    { /* 000 */ "unspecified system error"
    , /* 001 */ "invalid area"
    , /* 002 */ "invalid view"
    , /* 003 */ "invalid language code"
    , /* 004 */ "invalid hexadecimal digit"
    , /* 005 */ "value must be entered as exactly 2 hexadecimal digits (0-9, a-f)"
    } ;
%>
<head>
    <title>Message</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>

<body>
<%
    String msg  = (String) session.getAttribute("messno");
    String area = (String) session.getAttribute("area");
    int msgNo = 000;
    try {
        msgNo = Integer.parseInt(msg);
        if (msgNo < 1 || msgNo >= msgText.length) {
            msgNo = 002;
        }
    } catch (Exception exc) {
    }
    
%>
<p>
Message No. <%= msg %>
</p>
<h2><%= msgText[msgNo] %></h2>
<h2>area= ?<%= area %>?</h2>
</body>
</html>
