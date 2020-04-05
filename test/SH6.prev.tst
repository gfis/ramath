expression:	mod(17,5) + 2mod(18,10)
postfix1:	;mod(;17;5;,;mod);2;mod(;18;10;,;mod);*;+
rebuilt1:	(mod(17,5))+((2)*(mod(18,10)))
postfix2:	;mod(;17;5;,;mod);2;mod(;18;10;,;mod);*;+
rebuilt2:	(mod(17,5))+((2)*(mod(18,10)))
same
