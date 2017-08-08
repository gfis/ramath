TranspositionSet={[1,0,2]}
isHomogeneous
Expanding for base=2, level=3, reasons+features=base,transpose,primitive,same,similiar,evenexp igtriv,norm
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] [0,0,0] a²+b²-c²
----------------
expanding queue[0]^-1,meter=[2,2,2]: a²+b²-c²
[0+2a,0+2b,0+2c]:	non-primitive
[1+2a,0+2b,1+2c]:	unknown -> [1] [1,0,1] a+a²+b²-c-c²
[0+2a,1+2b,1+2c]:	transposed [1] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]: a+a²+b²-c-c²
[1+4a,0+4b,1+4c]:	unknown -> [2] [0,0,0] a+2a²+2b²-c-2c²
[3+4a,0+4b,1+4c]:	negative-1 [2] by {a=>-a-1}
-> solution [3,4,5],NONTRIVIAL
[1+4a,0+4b,3+4c]:	negative-1 [2] by {c=>-c-1}
[3+4a,0+4b,3+4c]:	negative-1 [2] by {a=>-a-1,c=>-c-1}
----------------
expanding queue[2]^1,meter=[2,1,2]: a+2a²+2b²-c-2c²
[1+8a,0+4b,1+8c]:	unknown -> [3] [0,0,0] a+4a²+b²-c-4c²
[5+8a,0+4b,5+8c]:	unknown -> [4] [1,0,1] 5a+4a²+b²-5c-4c²
----------------
expanding queue[3]^2,meter=[2,2,2]: a+4a²+b²-c-4c²
[1+16a,0+8b,1+16c]:	unknown -> [5] [0,0,0] a+8a²+2b²-c-8c²
[9+16a,4+8b,1+16c]:	unknown -> [6] [1,1,0] 9a+8a²+2b+2b²-c-8c²+3
[9+16a,0+8b,9+16c]:	unknown -> [7] [1,0,1] 9a+8a²+2b²-9c-8c²
[1+16a,4+8b,9+16c]:	unknown -> [8] [0,1,1] a+8a²+2b+2b²-9c-8c²-2
expanding queue[4]^2,meter=[2,2,2]: 5a+4a²+b²-5c-4c²
[5+16a,0+8b,5+16c]:	unknown -> [9] [0,0,0] 5a+8a²+2b²-5c-8c²
[13+16a,4+8b,5+16c]:	unknown -> [10] [1,1,0] 13a+8a²+2b+2b²-5c-8c²+5
[13+16a,0+8b,13+16c]:	unknown -> [11] [1,0,1] 13a+8a²+2b²-13c-8c²
[5+16a,4+8b,13+16c]:	unknown -> [12] [0,1,1] 5a+8a²+2b+2b²-13c-8c²-4
-> solution [5,12,13],NONTRIVIAL
Maximum level 3 [13] mod 2: a²+b²-c²
