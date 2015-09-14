TranspositionSet={[1,0,2]}
isHomogeneous
ExponentGCDs=[2,2,2]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar,evenexp igtriv,norm
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] a^2+b^2-c^2
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a^2+b^2-c^2
[0+2a,0+2b,0+2c]:	non-primitive
[1+2a,0+2b,1+2c]:	unknown -> [1] a+a^2+b^2-c-c^2
[0+2a,1+2b,1+2c]:	transposed [1] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]*4: a+a^2+b^2-c-c^2
[1+4a,0+4b,1+4c]:	unknown -> [2] a+2a^2+2b^2-c-2c^2
[3+4a,0+4b,1+4c]:	negative-1 [2] by {a=>-a-1}
-> solution [3,4,5],NONTRIVIAL
[1+4a,0+4b,3+4c]:	negative-1 [2] by {c=>-c-1}
[3+4a,0+4b,3+4c]:	negative-1 [2] by {a=>-a-1,c=>-c-1}
----------------
expanding queue[2]^1,meter=[2,1,2]*8: a+2a^2+2b^2-c-2c^2
[1+8a,0+4b,1+8c]:	unknown -> [3] a+4a^2+b^2-c-4c^2
[5+8a,0+4b,5+8c]:	unknown -> [4] 5a+4a^2+b^2-5c-4c^2
----------------
expanding queue[3]^2,meter=[2,2,2]*16: a+4a^2+b^2-c-4c^2
[1+16a,0+8b,1+16c]:	unknown -> [5] a+8a^2+2b^2-c-8c^2
[9+16a,4+8b,1+16c]:	unknown -> [6] 3+9a+8a^2+2b+2b^2-c-8c^2
[9+16a,0+8b,9+16c]:	unknown -> [7] 9a+8a^2+2b^2-9c-8c^2
[1+16a,4+8b,9+16c]:	unknown -> [8] -2+a+8a^2+2b+2b^2-9c-8c^2
expanding queue[4]^2,meter=[2,2,2]*16: 5a+4a^2+b^2-5c-4c^2
[5+16a,0+8b,5+16c]:	unknown -> [9] 5a+8a^2+2b^2-5c-8c^2
[13+16a,4+8b,5+16c]:	unknown -> [10] 5+13a+8a^2+2b+2b^2-5c-8c^2
[13+16a,0+8b,13+16c]:	unknown -> [11] 13a+8a^2+2b^2-13c-8c^2
[5+16a,4+8b,13+16c]:	unknown -> [12] -4+5a+8a^2+2b+2b^2-13c-8c^2
-> solution [5,12,13],NONTRIVIAL
Maximum level 3 [13] mod 2: a^2+b^2-c^2
