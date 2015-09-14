Expanding for base=2, reasons+features=pythagoras
Refined variables=x,y,z
ReasonFactory: pythagoras, code="pythagoras"
consider(0, , x^4+y^4-z^2), rmap1=[1+2*x,0+2*y,1+2*z]
expand poly1=x^4+y^4-z^2, emap1=[4,4,-2]
expand poly1=-a^2+b^2+x^2, emap1=[-2,2,2]
fork subtree [0], 4 new variables: x^4+y^4-z^2; -a^2+b^2+x^2; -2a*b+y^2; a^2+b^2-z; b-2c*d; -c^2+d^2+x; -a+c^2+d^2 [0+1*a,0+2*b,0+1*c,0+1*d,1+2*x,0+2*y,1+2*z]
PythagoreanFork.consider(
	"0", 
	"x^4+y^4-z^2") = 
	 subtree [0], 4 new variables: x^4+y^4-z^2; -a^2+b^2+x^2; -2a*b+y^2; a^2+b^2-z; b-2c*d; -c^2+d^2+x; -a+c^2+d^2 [0+1*a,0+2*b,0+1*c,0+1*d,1+2*x,0+2*y,1+2*z]
