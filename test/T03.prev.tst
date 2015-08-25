Expanding for base=2, transposables={{a,b},{c,d}}, reasons+features=base,evenexp,similiar,transpose igtriv,norm,invall,showfail, exponentParities=[0,0,0,0]
----------------
expanding queue[0]^-1: a^2 + b^2 - 3*c^2 - 3*d^2 meter=[2,2,2,2] *2
[0+2*a,0+2*b,0+2*c,0+2*d]: similiar to [0], same  a^2+b^2-3*c^2-3*d^2
[1+2*a,0+2*b,0+2*c,0+2*d]: failure constant=1, vgcd=4
[0+2*a,1+2*b,0+2*c,0+2*d]: failure constant=1, vgcd=4
[1+2*a,1+2*b,0+2*c,0+2*d]: failure constant=1, vgcd=2
[0+2*a,0+2*b,1+2*c,0+2*d]: failure constant=-3, vgcd=4
[1+2*a,0+2*b,1+2*c,0+2*d]: failure constant=-1, vgcd=2
[0+2*a,1+2*b,1+2*c,0+2*d]: failure constant=-1, vgcd=2
[1+2*a,1+2*b,1+2*c,0+2*d]: failure constant=-1, vgcd=4
[0+2*a,0+2*b,0+2*c,1+2*d]: failure constant=-3, vgcd=4
[1+2*a,0+2*b,0+2*c,1+2*d]: failure constant=-1, vgcd=2
[0+2*a,1+2*b,0+2*c,1+2*d]: failure constant=-1, vgcd=2
[1+2*a,1+2*b,0+2*c,1+2*d]: failure constant=-1, vgcd=4
[0+2*a,0+2*b,1+2*c,1+2*d]: failure constant=-3, vgcd=2
[1+2*a,0+2*b,1+2*c,1+2*d]: failure constant=-5, vgcd=4
[0+2*a,1+2*b,1+2*c,1+2*d]: failure constant=-5, vgcd=4
[1+2*a,1+2*b,1+2*c,1+2*d]: unknown -1+a+a^2+b+b^2-3*c-3*c^2-3*d-3*d^2 -> [1]
----------------
expanding queue[1]^0:  - 1 + a + a^2 + b + b^2 - 3*c - 3*c^2 - 3*d - 3*d^2 meter=[2,2,2,2] *4
[1+4*a,1+4*b,1+4*c,1+4*d]: failure constant=-1, vgcd=2
[3+4*a,1+4*b,1+4*c,1+4*d]: failure constant=1, vgcd=2
[1+4*a,3+4*b,1+4*c,1+4*d]: failure constant=1, vgcd=2
[3+4*a,3+4*b,1+4*c,1+4*d]: failure constant=3, vgcd=2
[1+4*a,1+4*b,3+4*c,1+4*d]: failure constant=-7, vgcd=2
[3+4*a,1+4*b,3+4*c,1+4*d]: failure constant=-5, vgcd=2
[1+4*a,3+4*b,3+4*c,1+4*d]: failure constant=-5, vgcd=2
[3+4*a,3+4*b,3+4*c,1+4*d]: failure constant=-3, vgcd=2
[1+4*a,1+4*b,1+4*c,3+4*d]: failure constant=-7, vgcd=2
[3+4*a,1+4*b,1+4*c,3+4*d]: failure constant=-5, vgcd=2
[1+4*a,3+4*b,1+4*c,3+4*d]: failure constant=-5, vgcd=2
[3+4*a,3+4*b,1+4*c,3+4*d]: failure constant=-3, vgcd=2
[1+4*a,1+4*b,3+4*c,3+4*d]: failure constant=-13, vgcd=2
[3+4*a,1+4*b,3+4*c,3+4*d]: failure constant=-11, vgcd=2
[1+4*a,3+4*b,3+4*c,3+4*d]: failure constant=-11, vgcd=2
[3+4*a,3+4*b,3+4*c,3+4*d]: failure constant=-9, vgcd=2
Proof - queue exhausted, queue size = 2
