TranspositionSet={[1,0,2]}
isHomogeneous
Expanding for base=2, level=3, reasons+features=base,transpose,primitive,same,similiar,evenexp igtriv,norm
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] [0,0,0] a²+b²-c²
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: a²+b²-c²
[0+2a,0+2b,0+2c]:	non-primitive
[1+2a,0+2b,1+2c]:	unknown -> [1] [1,0,1] a+a²+b²-c-c²
[0+2a,1+2b,1+2c]:	transposed [1] by [1,0,2]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2]: a+a²+b²-c-c²
[1+4a,0+4b,1+4c]:	unknown -> [2] [0,0,0] a+2a²+2b²-c-2c²
[3+4a,0+4b,1+4c]:	negative-1 [2] by {a=>-a-1}
-> solution [3,4,5],NONTRIVIAL
[1+4a,0+4b,3+4c]:	negative-1 [2] by {c=>-c-1}
[3+4a,0+4b,3+4c]:	negative-1 [2] by {a=>-a-1,c=>-c-1}
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[2,1,2]: a+2a²+2b²-c-2c²
[1+8a,0+4b,1+8c]:	unknown -> [3] [0,0,0] a+4a²+b²-c-4c²
[5+8a,0+4b,5+8c]:	unknown -> [4] [1,0,1] 5a+4a²+b²-5c-4c²
endexp[2]
---------------- level 3
Maximum level 3 [5] mod 2: a²+b²-c²
