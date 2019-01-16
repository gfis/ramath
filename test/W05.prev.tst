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
    form1="(a%2Bb%2Bc)^6"
    form2="a⁶ + 2¹3a⁵*b + 3¹5a⁴*b² + 2²5a³*b³ + 3¹5a²*b⁴ + 2¹3a*b⁵ + b⁶ + 2¹3a⁵*c + 2¹3¹5a⁴*b*c + 2²3¹5a³*b²*c + 2²3¹5a²*b³*c + 2¹3¹5a*b⁴*c + 2¹3b⁵*c + 3¹5a⁴*c² + 2²3¹5a³*b*c² + 2¹3²5a²*b²*c² + 2²3¹5a*b³*c² + 3¹5b⁴*c² + 2²5a³*c³ + 2²3¹5a²*b*c³ + 2²3¹5a*b²*c³ + 2²5b³*c³ + 3¹5a²*c⁴ + 2¹3¹5a*b*c⁴ + 3¹5b²*c⁴ + 2¹3a*c⁵ + 2¹3b*c⁵ + c⁶"
    rmap="{a=>a,b=>b,c=>c}"
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
<tr><td><input name="key0" type="hidden" value="a" />a-&gt;</td><td><input name="val0" size="20" maxsize="160" value="a" /></td></tr>
<tr><td><input name="key1" type="hidden" value="b" />b-&gt;</td><td><input name="val1" size="20" maxsize="160" value="b" /></td></tr>
<tr><td><input name="key2" type="hidden" value="c" />c-&gt;</td><td><input name="val2" size="20" maxsize="160" value="c" /></td></tr>
                </table>
            </td>
        </tr>
        <tr valign="top">
            <td align="left" colspan="2"><strong>RelationSet:</strong><br />
                <textarea name="form1" wrap="virtual" cols="100" rows="2">(a%2Bb%2Bc)^6</textarea>
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
    <input type = "hidden" name="form2" value="a⁶ + 2¹3a⁵*b + 3¹5a⁴*b² + 2²5a³*b³ + 3¹5a²*b⁴ + 2¹3a*b⁵ + b⁶ + 2¹3a⁵*c + 2¹3¹5a⁴*b*c + 2²3¹5a³*b²*c + 2²3¹5a²*b³*c + 2¹3¹5a*b⁴*c + 2¹3b⁵*c + 3¹5a⁴*c² + 2²3¹5a³*b*c² + 2¹3²5a²*b²*c² + 2²3¹5a*b³*c² + 3¹5b⁴*c² + 2²5a³*c³ + 2²3¹5a²*b*c³ + 2²3¹5a*b²*c³ + 2²5b³*c³ + 3¹5a²*c⁴ + 2¹3¹5a*b*c⁴ + 3¹5b²*c⁴ + 2¹3a*c⁵ + 2¹3b*c⁵ + c⁶" />
    <table cellpadding="0" border="0">
        <tr valign="top">
            <td><span class="p1">1</span>a⁶ + <span class="p2">2</span>¹<span class="p3">3</span>a⁵*b + <span class="p3">3</span>¹<span class="p5">5</span>a⁴*b² + <span class="p2">2²</span><span class="p5">5</span>a³*b³ + <span class="p3">3</span>¹<span class="p5">5</span>a²*b⁴ + <span class="p2">2</span>¹<span class="p3">3</span>a*b⁵ + <span class="p1">1</span>b⁶ + <span class="p2">2</span>¹<span class="p3">3</span>a⁵*c + <span class="p2">2</span>¹<span class="p3">3</span>¹<span class="p5">5</span>a⁴*b*c + <span class="p2">2²</span><span class="p3">3</span>¹<span class="p5">5</span>a³*b²*c + <span class="p2">2²</span><span class="p3">3</span>¹<span class="p5">5</span>a²*b³*c + <span class="p2">2</span>¹<span class="p3">3</span>¹<span class="p5">5</span>a*b⁴*c + <span class="p2">2</span>¹<span class="p3">3</span>b⁵*c + <span class="p3">3</span>¹<span class="p5">5</span>a⁴*c² + <span class="p2">2²</span><span class="p3">3</span>¹<span class="p5">5</span>a³*b*c² + <span class="p2">2</span>¹<span class="p3">3²</span><span class="p5">5</span>a²*b²*c² + <span class="p2">2²</span><span class="p3">3</span>¹<span class="p5">5</span>a*b³*c² + <span class="p3">3</span>¹<span class="p5">5</span>b⁴*c² + <span class="p2">2²</span><span class="p5">5</span>a³*c³ + <span class="p2">2²</span><span class="p3">3</span>¹<span class="p5">5</span>a²*b*c³ + <span class="p2">2²</span><span class="p3">3</span>¹<span class="p5">5</span>a*b²*c³ + <span class="p2">2²</span><span class="p5">5</span>b³*c³ + <span class="p3">3</span>¹<span class="p5">5</span>a²*c⁴ + <span class="p2">2</span>¹<span class="p3">3</span>¹<span class="p5">5</span>a*b*c⁴ + <span class="p3">3</span>¹<span class="p5">5</span>b²*c⁴ + <span class="p2">2</span>¹<span class="p3">3</span>a*c⁵ + <span class="p2">2</span>¹<span class="p3">3</span>b*c⁵ + <span class="p1">1</span>c⁶<br />a⁶+6a⁵*b+15a⁴*b²+20a³*b³+15a²*b⁴+6a*b⁵+b⁶+6a⁵*c+30a⁴*b*c+60a³*b²*c+60a²*b³*c+30a*b⁴*c+6b⁵*c+15a⁴*c²+60a³*b*c²+90a²*b²*c²+60a*b³*c²+15b⁴*c²+20a³*c³+60a²*b*c³+60a*b²*c³+20b³*c³+15a²*c⁴+30a*b*c⁴+15b²*c⁴+6a*c⁵+6b*c⁵+c⁶</td>
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
