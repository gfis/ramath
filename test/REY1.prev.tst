consider(0, , x^2+y^2-z^2), rmap2={x=>1+2*x,y=>2*y,z=>1+2*z}
expand poly1=x^2+y^2-z^2, emap1=[2,2,-2]
PythagorasReason.consider(
	"0", 
	"x^2+y^2-z^2") = 
	new subtree [0], 2 new variables: x^2+y^2-z^2; -a^2+b^2+x; -2a*b+y; a^2+b^2-z [0+1*a,0+1*b,1+2*x,0+2*y,1+2*z]
