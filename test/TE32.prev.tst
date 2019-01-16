considerNonPrimitive
Expanding for base=2, level=2, reasons+features=base,primitive,same,similiar,accel igtriv,norm
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a³+2b³+4c³-9d³
---------------- level 0
expanding queue[0]^-1,meter=[2,1,1,2]: a³+2b³+4c³-9d³
[0+2a,0+2b,0+2c,0+2d]:	unknown accelerated by b*2 c*2 -> [1] [0,0,0,0] 4a³+b³+2c³-36d³
[1+2a,0+1b,0+1c,1+2d]:	unknown -> [2] [1,0,0,1] 3a+6a²+4a³+b³+2c³-27d-54d²-36d³-4
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[1,2,1,1]: 4a³+b³+2c³-36d³
[0+2a,0+4b,0+2c,0+2d]:	non-primitive
[0+2a,2+4b,0+2c,0+2d]:	non-primitive
endexp[1]
expanding queue[2]^0,meter=[2,2,1,2]: 3a+6a²+4a³+b³+2c³-27d-54d²-36d³-4
[1+4a,0+2b,0+1c,1+4d]:	unknown -> [3] [0,0,0,0] 3a+12a²+16a³+4b³+c³-27d-108d²-144d³-2
[3+4a,1+2b,0+1c,1+4d]:	unknown -> [4] [1,1,0,0] 27a+36a²+16a³+3b+6b²+4b³+c³-27d-108d²-144d³+5
[3+4a,0+2b,0+1c,3+4d]:	unknown -> [5] [1,0,0,1] 27a+36a²+16a³+4b³+c³-243d-324d²-144d³-54
[1+4a,1+2b,0+1c,3+4d]:	unknown -> [6] [0,1,0,1] 3a+12a²+16a³+3b+6b²+4b³+c³-243d-324d²-144d³-60
endexp[2]
---------------- level 2
Maximum level 2 [7] mod 2: a³+2b³+4c³-9d³
