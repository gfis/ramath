TranspositionSet={[2,1,0,3],[1,2,0,3],[2,0,1,3],[0,2,1,3],[1,0,2,3]}
ReasonFactory: transp, code="transp"
vmap=[0+1*a=0,0+1*b=0,0+1*c=0,0+1*d=0], index(a)=0, index(c)=2
areTransposable(a^3+b^3+c^3-d^3, a, c) = true
TranspositionReason.consider(
	"a^3+b^3+c^3-d^3", 
	"a^3+b^3+c^3-d^3") = 
	transposed [0] by [1,0,2,3]
