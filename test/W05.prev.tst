<?xml version="1.0" encoding="UTF-8"?>







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

<body>
    <!--
    view= "upper", area="rset", opt=""
    form1="(a%2Bb%2Bc)^6"
    form2="a⁶ + 23a⁵*b + 35a⁴*b² + 2²5a³*b³ + 35a²*b⁴ + 23a*b⁵ + b⁶ + 23a⁵*c + 235a⁴*b*c + 2²35a³*b²*c + 2²35a²*b³*c + 235a*b⁴*c + 23b⁵*c + 35a⁴*c² + 2²35a³*b*c² + 23²5a²*b²*c² + 2²35a*b³*c² + 35b⁴*c² + 2²5a³*c³ + 2²35a²*b*c³ + 2²35a*b²*c³ + 2²5b³*c³ + 35a²*c⁴ + 235a*b*c⁴ + 35b²*c⁴ + 23a*c⁵ + 23b*c⁵ + c⁶"
    valmap="{a=>a,b=>b,c=>c}"
    -->

    <h2>ramath - Rational and Symbolic Mathematics</h2>
    <form action="servlet" method="get">
        <input type = "hidden" name="view" value="upper" />
        <table cellpadding="0" border="0">
            <tr valign="top">
                <td>Area<br />
                    <select name="area" size="3">
                    <option value="rset" selected>Symbolic Polynomial</option>
<option value="cfra">Continued Fraction</option>
<option value="eecj">Euler's Extended Conjecture</option>

                    </select>
                    <br />
                    <br />
                    Options<br />
                    <input name="opt" maxsize="60" size="25" value="" /> (norm)
                </td>
                <td>
                Variable Substitutions<br />
                    <table cellpadding="0" border="0">
                <tr><td><input name="key0" type="hidden" s            value="a" />a-&gt;</td><td><input name="val0" size="20" maxsize="160" value="a" /></td></tr><tr><td><input name="key1" type="hidden" s            value="b" />b-&gt;</td><td><input name="val1" size="20" maxsize="160" value="b" /></td></tr><tr><td><input name="key2" type="hidden" s            value="c" />c-&gt;</td><td><input name="val2" size="20" maxsize="160" value="c" /></td></tr>
                    </table>
                </td>
            </tr>
        </table>
        <table cellpadding="0" border="0">
           <tr>
                <td colspan="2">
                    <textarea name="form1" cols="100" rows="4">(a%2Bb%2Bc)^6
                    </textarea>
                </td>
            </tr>
            <tr valign="top">
                <td align="left">
                    <input type="submit" value="Compute" /> with substitutions
                </td>
                <td align="right">
                    <img src="img/up.svg" alt="up arrow" width="80" />
                </td>
            </tr>
         </table>
    </form><!-- upper -->

    <form action="servlet" method="get">
        <input type = "hidden" name="view" value="lower" />
        <input type = "hidden" name="area" value="rset" />
        <input type = "hidden" name="opt"  value="" />
        <table cellpadding="0" border="0">
            <tr valign="top">
                <td align="left">
                    <img src="img/down.svg" alt="down arrow"  width="80" />
                </td>
                <td align="right">
                    <input type="submit" value="Compute" />
                </td>
            </tr>
            <tr valign="top">
                <td colspan="2">
                    <textarea name="form2" cols="100" rows="4">a⁶ + 23a⁵*b + 35a⁴*b² + 2²5a³*b³ + 35a²*b⁴ + 23a*b⁵ + b⁶ + 23a⁵*c + 235a⁴*b*c + 2²35a³*b²*c + 2²35a²*b³*c + 235a*b⁴*c + 23b⁵*c + 35a⁴*c² + 2²35a³*b*c² + 23²5a²*b²*c² + 2²35a*b³*c² + 35b⁴*c² + 2²5a³*c³ + 2²35a²*b*c³ + 2²35a*b²*c³ + 2²5b³*c³ + 35a²*c⁴ + 235a*b*c⁴ + 35b²*c⁴ + 23a*c⁵ + 23b*c⁵ + c⁶
                    </textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    
                    


	See also:
    <ul>

    	<li><strong><a href="docs/api/index.html">API</a></strong> javadocs</li>

		<li><a href="docs/documentation.jsp">Overview of Packages and Classes</a></li>

		<li>
			<a href="./metaInf.jsp?view=manifest">Manifest</a>, 
			<a href="./metaInf.jsp?view=license" >License</a>, 
			<a href="./metaInf.jsp?view=notice"  >References</a>
		</li>
    </ul>
	Questions, remarks to: <a href="mailto:punctum@punctum.com">Dr. Georg Fischer</a>


                </td>
            </tr>
        </table>
    </form><!-- lower -->

</body>
</html>
