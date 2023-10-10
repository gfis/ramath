expression:	(p+2)!*(p+1)
postfix1:	;p;2;+;!;p;1;+;*
rebuilt1:	factorial(p+2)*(p+1)
postfix2:	;factorial(;p;2;+;factorial);p;1;+;*
rebuilt2:	factorial(p+2)*(p+1)
same
