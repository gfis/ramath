TranspositionSet={[1,0,2]}
ExponentGCDs=[2,2,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp norm,invall,showfail
Refined variables=x,y,z
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^2+y^2-3z^2
solution [0,0,0],trivial(3)
[0+2x,0+2y,0+2z]:	same form as x^2+y^2-3z^2
[1+2x,0+2y,0+2z]:	failure constant=1, vgcd=4
[0+2x,1+2y,0+2z]:	failure constant=1, vgcd=4
[1+2x,1+2y,0+2z]:	failure constant=1, vgcd=2
[0+2x,0+2y,1+2z]:	failure constant=-3, vgcd=4
[1+2x,0+2y,1+2z]:	failure constant=-1, vgcd=2
[0+2x,1+2y,1+2z]:	failure constant=-1, vgcd=2
[1+2x,1+2y,1+2z]:	failure constant=-1, vgcd=4
Proof - queue exhausted at [1]: x^2 + y^2 - 3*z^2
