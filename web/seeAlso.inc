<%--
	JSP include with common trailer for documentation pages
	@(#) $Id: seeAlso.inc 193 2009-07-07 16:06:20Z gfis $
	2009-07-07, Dr. Georg Fischer: copied from xtrans
--%>
<%
	String root = "../";
	String docs = "./";
	if (",index,metaInf,xslTrans,".indexOf("," + callingPage + ",") >= 0) {
		root = "./";
		docs = "docs/";
	}
%>

	See also:
    <ul>
<% if (! callingPage.equals("index")) { %>
		<li><a href="<%= root %>index.jsp"><strong>xtrans</strong> main page</a></li>
<% } %>
    	<li><strong><a href="<%= docs %>api/index.html">API</a></strong> javadocs</li>
<% if (! callingPage.equals("documentation")) { %>
		<li><a href="<%= docs %>documentation.jsp">Overview of Packages and Classes</a></li>
<% } %>
		<li>
			<a href="<%= root %>metaInf.jsp?view=manifest">Manifest</a>, 
			<a href="<%= root %>metaInf.jsp?view=license" >License</a>, 
			<a href="<%= root %>metaInf.jsp?view=notice"  >References</a>
		</li>
    </ul>
	Questions, remarks to: <a href="mailto:punctum@punctum.com">Dr. Georg Fischer</a>

