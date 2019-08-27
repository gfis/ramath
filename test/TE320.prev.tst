TranspositionSet={[0,2,1,3],[1,0,2,3],[1,2,0,3],[2,1,0,3],[2,0,1,3]}
considerNonPrimitive
Expanding for base=2, level=1, reasons+features=base,transpose,primitive,same,similiar 
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a³+b³+c³-d³
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2,2]: a³+b³+c³-d³
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [2,0,0,2],trivial(3) [0,2,0,2],trivial(3) [0,0,2,2],trivial(3)
[1+2a,1+2b,0+2c,0+2d]:	unknown -> [1] [1,1,0,0] 6a+12a²+8a³+6b+12b²+8b³+8c³-8d³+2
[1+2a,0+2b,1+2c,0+2d]:	transposed [1] by [1,2,0,3]
[0+2a,1+2b,1+2c,0+2d]:	transposed [1] by [2,0,1,3]
[1+2a,0+2b,0+2c,1+2d]:	unknown -> [2] [1,0,0,1] 6a+12a²+8a³+8b³+8c³-6d-12d²-8d³
-> solution [1,0,0,1],trivial(3) [3,0,0,3],trivial(3)
[0+2a,1+2b,0+2c,1+2d]:	transposed [2] by [2,0,1,3]
[0+2a,0+2b,1+2c,1+2d]:	transposed [2] by [2,1,0,3]
[1+2a,1+2b,1+2c,1+2d]:	unknown -> [3] [1,1,1,1] 6a+12a²+8a³+6b+12b²+8b³+6c+12c²+8c³-6d-12d²-8d³+2
endexp[0]
---------------- level 1
Maximum level 1 [4] mod 2: a³+b³+c³-d³
