Expanding for base=2, reasons+features=base,transpose,similiar,evenexp igtriv,norm,invall,showfail
exponentGCDs=[2,2,2,2], transposables={{a,b},{c,d}}
----------------
expanding queue[0]^-1,meter=[2,2,2,2]*2: a^2 + b^2 - 3*c^2 - 3*d^2
[0,0,0,0]:	similiar   [0], same  a^2+b^2-3*c^2-3*d^2
[1,0,0,0]:	failure constant=1, vgcd=4
[0,1,0,0]:	failure constant=1, vgcd=4
[1,1,0,0]:	failure constant=1, vgcd=2
[0,0,1,0]:	failure constant=-3, vgcd=4
[1,0,1,0]:	failure constant=-1, vgcd=2
[0,1,1,0]:	failure constant=-1, vgcd=2
[1,1,1,0]:	failure constant=-1, vgcd=4
[0,0,0,1]:	failure constant=-3, vgcd=4
[1,0,0,1]:	failure constant=-1, vgcd=2
[0,1,0,1]:	failure constant=-1, vgcd=2
[1,1,0,1]:	failure constant=-1, vgcd=4
[0,0,1,1]:	failure constant=-3, vgcd=2
[1,0,1,1]:	failure constant=-5, vgcd=4
[0,1,1,1]:	failure constant=-5, vgcd=4
[1,1,1,1]:	unknown -> [1] -1+a+a^2+b+b^2-3*c-3*c^2-3*d-3*d^2
----------------
expanding queue[1]^0,meter=[2,2,2,2]*4:  - 1 + a + a^2 + b + b^2 - 3*c - 3*c^2 - 3*d - 3*d^2
[1,1,1,1]:	failure constant=-1, vgcd=2
[3,1,1,1]:	failure constant=1, vgcd=2
[1,3,1,1]:	failure constant=1, vgcd=2
[3,3,1,1]:	failure constant=3, vgcd=2
[1,1,3,1]:	failure constant=-7, vgcd=2
[3,1,3,1]:	failure constant=-5, vgcd=2
[1,3,3,1]:	failure constant=-5, vgcd=2
[3,3,3,1]:	failure constant=-3, vgcd=2
[1,1,1,3]:	failure constant=-7, vgcd=2
[3,1,1,3]:	failure constant=-5, vgcd=2
[1,3,1,3]:	failure constant=-5, vgcd=2
[3,3,1,3]:	failure constant=-3, vgcd=2
[1,1,3,3]:	failure constant=-13, vgcd=2
[3,1,3,3]:	failure constant=-11, vgcd=2
[1,3,3,3]:	failure constant=-11, vgcd=2
[3,3,3,3]:	failure constant=-9, vgcd=2
Proof - queue exhausted at [2]: a^2 + b^2 - 3*c^2 - 3*d^2
