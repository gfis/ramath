<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="application/xhtml+xml;charset=UTF-8" />
<meta name="robots" content="noindex, nofollow" />
<link rel="stylesheet" title="common" type="text/css" href="stylesheet.css" />
<title>RaMath Main Page</title>
</head>
<body>
<!-- area="rset", opt=""
    form1="%28a%2Bb%29%5E6"
    form2="2²7"
    rmap="{}"
-->
<h2>ramath - Rational and Symbolic Mathematics</h2>
<form action="servlet" method="get">
    <input type = "hidden" name="view" value="upper" />
    <table cellpadding="0" border="0">
        <tr valign="top">
            <td><strong>Area:</strong><br />
                <select name="area" size="3">
<option value="rset" selected>Symbolic RelationSet</option>
<option value="cfra">Continued Fraction</option>
<option value="eecj">Euler's Extended Conjecture</option>
                </select>
                <br />
                <br />
                <strong>Options:</strong>                 <input name="opt" maxsize="100" size="12" value="" />
                <br /><br />
            </td>
            <td><strong>Variable Substitutions:</strong><br />
                <table cellpadding="0" border="0">
                </table>
            </td>
        </tr>
        <tr valign="top">
            <td align="left" colspan="2"><strong>RelationSet:</strong><br />
                <textarea name="form1" wrap="virtual" cols="100" rows="2">%28a%2Bb%29%5E6</textarea>
            </td>
        </tr>
        <tr valign="top">
            <td align="left" colspan="2">
                <input type="submit" value="Compute" /> with substitutions
            </td>
        </tr>
    </table>
</form><!-- upper -->
<form action="servlet" method="get">
    <input type = "hidden" name="view"  value="lower" />
    <input type = "hidden" name="area"  value="rset" />
    <input type = "hidden" name="opt"   value="" />
    <input type = "hidden" name="form2" value="2²7" />
    <table cellpadding="0" border="0">
        <tr valign="top">
            <td><span class="p2">2²</span><span class="p7">7</span><br />28</td>
        </tr>
        <tr valign="top">
            <td align="left">
                <input type="submit" value="Replace" /> input field
            </td>
        </tr>
    </table>
</form><!-- lower -->
                <br />
See also: <a href="servlet?view=index">RaMath</a> Home<br />
<a title="wiki"        href="http://www.teherba.org/index.php/RaMath" target="_new">Wiki</a> Documentation<br />
<a title="github"      href="https://github.com/gfis/ramath" target="_new">Git Repository</a><br />
<a title="api"         href="docs/api/index.html">Java API</a> Documentation<br />
<a title="manifest"    href="servlet?view=manifest&lang=en">Manifest</a>, <a title="license"     href="servlet?view=license&lang=en">License</a>, <a title="notice"      href="servlet?view=notice&lang=en">References</a><br />
<!-- language="en", features="quest" -->
<p><span style="font-size:small">
Questions, remarks: email to  <a href="mailto:punctum@punctum.com?&subject=RaMath">Dr. Georg Fischer</a></span></p>
</body></html>
