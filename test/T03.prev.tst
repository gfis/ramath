TranspositionSet={[1,0,3,2],[0,1,3,2],[1,0,2,3]}
isHomogeneous
ExponentGCDs=[2,2,2,2]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar,evenexp igtriv,norm,invall,showfail
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] a^2+b^2-3c^2-3d^2
----------------
expanding queue[0]^-1,meter=[2,2,2,2]*2: a^2+b^2-3c^2-3d^2
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
[1+2a,0+2b,0+2c,0+2d]:	failure constant=1, vgcd=4
[0+2a,1+2b,0+2c,0+2d]:	failure constant=1, vgcd=4
[1+2a,1+2b,0+2c,0+2d]:	failure constant=1, vgcd=2
[0+2a,0+2b,1+2c,0+2d]:	failure constant=-3, vgcd=4
[1+2a,0+2b,1+2c,0+2d]:	failure constant=-1, vgcd=2
[0+2a,1+2b,1+2c,0+2d]:	failure constant=-1, vgcd=2
[1+2a,1+2b,1+2c,0+2d]:	failure constant=-1, vgcd=4
[0+2a,0+2b,0+2c,1+2d]:	failure constant=-3, vgcd=4
[1+2a,0+2b,0+2c,1+2d]:	failure constant=-1, vgcd=2
[0+2a,1+2b,0+2c,1+2d]:	failure constant=-1, vgcd=2
[1+2a,1+2b,0+2c,1+2d]:	failure constant=-1, vgcd=4
[0+2a,0+2b,1+2c,1+2d]:	failure constant=-3, vgcd=2
[1+2a,0+2b,1+2c,1+2d]:	failure constant=-5, vgcd=4
[0+2a,1+2b,1+2c,1+2d]:	failure constant=-5, vgcd=4
[1+2a,1+2b,1+2c,1+2d]:	unknown -> [1] -1+a+a^2+b+b^2-3c-3c^2-3d-3d^2
----------------
expanding queue[1]^0,meter=[2,2,2,2]*4: -1+a+a^2+b+b^2-3c-3c^2-3d-3d^2
[1+4a,1+4b,1+4c,1+4d]:	failure constant=-1, vgcd=2
[3+4a,1+4b,1+4c,1+4d]:	failure constant=1, vgcd=2
[1+4a,3+4b,1+4c,1+4d]:	failure constant=1, vgcd=2
[3+4a,3+4b,1+4c,1+4d]:	failure constant=3, vgcd=2
[1+4a,1+4b,3+4c,1+4d]:	failure constant=-7, vgcd=2
[3+4a,1+4b,3+4c,1+4d]:	failure constant=-5, vgcd=2
[1+4a,3+4b,3+4c,1+4d]:	failure constant=-5, vgcd=2
[3+4a,3+4b,3+4c,1+4d]:	failure constant=-3, vgcd=2
[1+4a,1+4b,1+4c,3+4d]:	failure constant=-7, vgcd=2
[3+4a,1+4b,1+4c,3+4d]:	failure constant=-5, vgcd=2
[1+4a,3+4b,1+4c,3+4d]:	failure constant=-5, vgcd=2
[3+4a,3+4b,1+4c,3+4d]:	failure constant=-3, vgcd=2
[1+4a,1+4b,3+4c,3+4d]:	failure constant=-13, vgcd=2
[3+4a,1+4b,3+4c,3+4d]:	failure constant=-11, vgcd=2
[1+4a,3+4b,3+4c,3+4d]:	failure constant=-11, vgcd=2
[3+4a,3+4b,3+4c,3+4d]:	failure constant=-9, vgcd=2
Proof at [2]: a^2+b^2-3c^2-3d^2
