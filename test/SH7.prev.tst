expression:	-hypergeom(a,b,c,d)^(-1/2) + hypergeom(a,b,c)/(-1/2)
postfix1:	;hypergeom(;a;b;,;c;,;d;,;hypergeom);-.;1;-.;2;/;^;hypergeom(;a;b;,;c;,;hypergeom);1;-.;2;/;/;+
rebuilt1:	-hypergeom(a,b,c,d)^(-1/2)+hypergeom(a,b,c)/-1/2
postfix2:	;hypergeom(;a;b;,;c;,;d;,;hypergeom);-.;1;-.;2;/;^;hypergeom(;a;b;,;c;,;hypergeom);1;-.;/;2;/;+
rebuilt2:	-hypergeom(a,b,c,d)^(-1/2)+hypergeom(a,b,c)/(-1)/2
** differ
