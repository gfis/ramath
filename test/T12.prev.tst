Expanding for base=2, reasons+features=base,evenexp,similiar,transpose norm,invall,showfail
exponentGCDs=[2,2,2], transposables={{x,y},{z}}
----------------
expanding queue[0]^-1: x^2 + y^2 - 3*z^2 meter=[2,2,2] *2
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+2*z]:	similiar to [0], same  x^2+y^2-3*z^2
[1+2*x,0+2*y,0+2*z]:	failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]:	failure constant=1, vgcd=4
[1+2*x,1+2*y,0+2*z]:	failure constant=1, vgcd=2
[0+2*x,0+2*y,1+2*z]:	failure constant=-3, vgcd=4
[1+2*x,0+2*y,1+2*z]:	failure constant=-1, vgcd=2
[0+2*x,1+2*y,1+2*z]:	failure constant=-1, vgcd=2
[1+2*x,1+2*y,1+2*z]:	failure constant=-1, vgcd=4
Proof - queue exhausted at [1]: x^2 + y^2 - 3*z^2
