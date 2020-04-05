expression:	a(n) = sqrt(2*a(n-1)) + A123456(n*2)
postfix1:	;a(;n;a);sqrt(;2;a(;n;1;-;a);*;sqrt);A123456(;n;2;*;A123456);+;=
rebuilt1:	(a(n))=((sqrt((2)*(a((n)-(1)))))+(A123456((n)*(2))))
postfix2:	;a(;n;a);sqrt(;2;a(;n;1;-;a);*;sqrt);A123456(;n;2;*;A123456);+;=
rebuilt2:	(a(n))=((sqrt((2)*(a((n)-(1)))))+(A123456((n)*(2))))
same
