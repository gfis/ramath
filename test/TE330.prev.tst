TranspositionSet={[2,1,0,3],[1,2,0,3],[2,0,1,3],[0,2,1,3],[1,0,2,3]}
isHomogeneous
Expanding for base=3, level=0, reasons+features=base,transpose,primitive,same,similiar 
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a³+b³+c³-d³
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[3,3,3,3]: a³+b³+c³-d³
[0+3a,0+3b,0+3c,0+3d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [3,0,0,3],trivial(3) [0,3,0,3],trivial(3) [0,0,3,3],trivial(3)
[2+3a,1+3b,0+3c,0+3d]:	unknown -> [1] [2,1,0,0] 36a+54a²+27a³+9b+27b²+27b³+27c³-27d³+9
[1+3a,2+3b,0+3c,0+3d]:	transposed [1] by [1,0,2,3]
[2+3a,0+3b,1+3c,0+3d]:	transposed [1] by [0,2,1,3]
[0+3a,2+3b,1+3c,0+3d]:	transposed [1] by [2,0,1,3]
[1+3a,0+3b,2+3c,0+3d]:	transposed [1] by [1,2,0,3]
[0+3a,1+3b,2+3c,0+3d]:	transposed [1] by [2,1,0,3]
[1+3a,0+3b,0+3c,1+3d]:	unknown -> [2] [1,0,0,1] 9a+27a²+27a³+27b³+27c³-9d-27d²-27d³
-> solution [1,0,0,1],trivial(3) [4,0,0,4],trivial(3)
[0+3a,1+3b,0+3c,1+3d]:	transposed [2] by [1,0,2,3]
[0+3a,0+3b,1+3c,1+3d]:	transposed [2] by [1,2,0,3]
[2+3a,1+3b,1+3c,1+3d]:	unknown -> [3] [2,1,1,1] 36a+54a²+27a³+9b+27b²+27b³+9c+27c²+27c³-9d-27d²-27d³+9
[1+3a,2+3b,1+3c,1+3d]:	transposed [3] by [1,0,2,3]
[1+3a,1+3b,2+3c,1+3d]:	transposed [3] by [1,2,0,3]
[2+3a,0+3b,0+3c,2+3d]:	unknown -> [4] [2,0,0,2] 36a+54a²+27a³+27b³+27c³-36d-54d²-27d³
-> solution [2,0,0,2],trivial(3) [5,0,0,5],trivial(3)
[0+3a,2+3b,0+3c,2+3d]:	transposed [4] by [1,0,2,3]
[2+3a,2+3b,1+3c,2+3d]:	unknown -> [5] [2,2,1,2] 36a+54a²+27a³+36b+54b²+27b³+9c+27c²+27c³-36d-54d²-27d³+9
[0+3a,0+3b,2+3c,2+3d]:	transposed [4] by [1,2,0,3]
[2+3a,1+3b,2+3c,2+3d]:	transposed [5] by [0,2,1,3]
[1+3a,2+3b,2+3c,2+3d]:	transposed [5] by [2,0,1,3]
Maximum level 0 [6] mod 3: a³+b³+c³-d³
