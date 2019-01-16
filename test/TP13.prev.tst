TranspositionSet={[1,0,3,2],[0,1,3,2],[1,0,2,3]}
considerNonPrimitive
Expanding for base=2, level=4, reasons+features=base,transpose,primitive,same,similiar,evenexp igtriv,invall,norm,showfail
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a²+b²-3c²-3d²
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2,2]: a²+b²-3c²-3d²
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
[1+2a,0+2b,0+2c,0+2d]:	failure constant=1, vgcd=4 [1,0,0,0] 4a+4a²+4b²-12c²-12d²+1
[0+2a,1+2b,0+2c,0+2d]:	failure constant=1, vgcd=4 [0,1,0,0] 4a²+4b+4b²-12c²-12d²+1
[1+2a,1+2b,0+2c,0+2d]:	failure constant=1, vgcd=2 [1,1,0,0] 2a+2a²+2b+2b²-6c²-6d²+1
[0+2a,0+2b,1+2c,0+2d]:	failure constant=-3, vgcd=4 [0,0,1,0] 4a²+4b²-12c-12c²-12d²-3
[1+2a,0+2b,1+2c,0+2d]:	failure constant=-1, vgcd=2 [1,0,1,0] 2a+2a²+2b²-6c-6c²-6d²-1
[0+2a,1+2b,1+2c,0+2d]:	failure constant=-1, vgcd=2 [0,1,1,0] 2a²+2b+2b²-6c-6c²-6d²-1
[1+2a,1+2b,1+2c,0+2d]:	failure constant=-1, vgcd=4 [1,1,1,0] 4a+4a²+4b+4b²-12c-12c²-12d²-1
[0+2a,0+2b,0+2c,1+2d]:	failure constant=-3, vgcd=4 [0,0,0,1] 4a²+4b²-12c²-12d-12d²-3
[1+2a,0+2b,0+2c,1+2d]:	failure constant=-1, vgcd=2 [1,0,0,1] 2a+2a²+2b²-6c²-6d-6d²-1
[0+2a,1+2b,0+2c,1+2d]:	failure constant=-1, vgcd=2 [0,1,0,1] 2a²+2b+2b²-6c²-6d-6d²-1
[1+2a,1+2b,0+2c,1+2d]:	failure constant=-1, vgcd=4 [1,1,0,1] 4a+4a²+4b+4b²-12c²-12d-12d²-1
[0+2a,0+2b,1+2c,1+2d]:	failure constant=-3, vgcd=2 [0,0,1,1] 2a²+2b²-6c-6c²-6d-6d²-3
[1+2a,0+2b,1+2c,1+2d]:	failure constant=-5, vgcd=4 [1,0,1,1] 4a+4a²+4b²-12c-12c²-12d-12d²-5
[0+2a,1+2b,1+2c,1+2d]:	failure constant=-5, vgcd=4 [0,1,1,1] 4a²+4b+4b²-12c-12c²-12d-12d²-5
[1+2a,1+2b,1+2c,1+2d]:	unknown -> [1] [1,1,1,1] a+a²+b+b²-3c-3c²-3d-3d²-1
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2,2]: a+a²+b+b²-3c-3c²-3d-3d²-1
[1+4a,1+4b,1+4c,1+4d]:	failure constant=-1, vgcd=2 [0,0,0,0] 2a+4a²+2b+4b²-6c-12c²-6d-12d²-1
[3+4a,1+4b,1+4c,1+4d]:	failure constant=1, vgcd=2 [1,0,0,0] 6a+4a²+2b+4b²-6c-12c²-6d-12d²+1
[1+4a,3+4b,1+4c,1+4d]:	failure constant=1, vgcd=2 [0,1,0,0] 2a+4a²+6b+4b²-6c-12c²-6d-12d²+1
[3+4a,3+4b,1+4c,1+4d]:	failure constant=3, vgcd=2 [1,1,0,0] 6a+4a²+6b+4b²-6c-12c²-6d-12d²+3
[1+4a,1+4b,3+4c,1+4d]:	failure constant=-7, vgcd=2 [0,0,1,0] 2a+4a²+2b+4b²-18c-12c²-6d-12d²-7
[3+4a,1+4b,3+4c,1+4d]:	failure constant=-5, vgcd=2 [1,0,1,0] 6a+4a²+2b+4b²-18c-12c²-6d-12d²-5
[1+4a,3+4b,3+4c,1+4d]:	failure constant=-5, vgcd=2 [0,1,1,0] 2a+4a²+6b+4b²-18c-12c²-6d-12d²-5
[3+4a,3+4b,3+4c,1+4d]:	failure constant=-3, vgcd=2 [1,1,1,0] 6a+4a²+6b+4b²-18c-12c²-6d-12d²-3
[1+4a,1+4b,1+4c,3+4d]:	failure constant=-7, vgcd=2 [0,0,0,1] 2a+4a²+2b+4b²-6c-12c²-18d-12d²-7
[3+4a,1+4b,1+4c,3+4d]:	failure constant=-5, vgcd=2 [1,0,0,1] 6a+4a²+2b+4b²-6c-12c²-18d-12d²-5
[1+4a,3+4b,1+4c,3+4d]:	failure constant=-5, vgcd=2 [0,1,0,1] 2a+4a²+6b+4b²-6c-12c²-18d-12d²-5
[3+4a,3+4b,1+4c,3+4d]:	failure constant=-3, vgcd=2 [1,1,0,1] 6a+4a²+6b+4b²-6c-12c²-18d-12d²-3
[1+4a,1+4b,3+4c,3+4d]:	failure constant=-13, vgcd=2 [0,0,1,1] 2a+4a²+2b+4b²-18c-12c²-18d-12d²-13
[3+4a,1+4b,3+4c,3+4d]:	failure constant=-11, vgcd=2 [1,0,1,1] 6a+4a²+2b+4b²-18c-12c²-18d-12d²-11
[1+4a,3+4b,3+4c,3+4d]:	failure constant=-11, vgcd=2 [0,1,1,1] 2a+4a²+6b+4b²-18c-12c²-18d-12d²-11
[3+4a,3+4b,3+4c,3+4d]:	failure constant=-9, vgcd=2 [1,1,1,1] 6a+4a²+6b+4b²-18c-12c²-18d-12d²-9
endexp[1]
Proof [2] mod 2: a²+b²-3c²-3d²
