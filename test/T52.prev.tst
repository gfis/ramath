TranspositionSet={[3,2,1,0],[2,3,1,0],[3,2,0,1],[2,3,0,1],[1,0,3,2],[0,1,3,2],[1,0,2,3]}
isHomogeneous
ExponentGCDs=[4,4,4,4]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar,evenexp norm,invall
Refined variables=a,b,c,d
----------------
expanding queue[0]^-1,meter=[2,2,2,2]*2: a^4+b^4-c^4-d^4
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [2,0,2,0],trivial(3) [0,2,2,0],trivial(3) [2,0,0,2],trivial(3) [0,2,0,2],trivial(3) [2,2,2,2],trivial(2)
[1+2a,0+2b,1+2c,0+2d]:	unknown -> [1] a+3a^2+4a^3+2a^4+2b^4-c-3c^2-4c^3-2c^4-2d^4
-> solution [1,0,1,0],trivial(3) [3,0,3,0],trivial(3) [1,2,1,2],trivial(2) [3,2,3,2],trivial(2)
[0+2a,1+2b,1+2c,0+2d]:	transposed [1] by [1,0,2,3]
[1+2a,0+2b,0+2c,1+2d]:	transposed [1] by [0,1,3,2]
[0+2a,1+2b,0+2c,1+2d]:	transposed [1] by [1,0,3,2]
[1+2a,1+2b,1+2c,1+2d]:	unknown -> [2] a+3a^2+4a^3+2a^4+b+3b^2+4b^3+2b^4-c-3c^2-4c^3-2c^4-d-3d^2-4d^3-2d^4
-> solution [1,1,1,1],trivial(2) [3,1,3,1],trivial(2) [1,3,3,1],trivial(2) [3,1,1,3],trivial(2) [1,3,1,3],trivial(2) [3,3,3,3],trivial(2)
----------------
expanding queue[1]^0,meter=[2,2,2,2]*4: a+3a^2+4a^3+2a^4+2b^4-c-3c^2-4c^3-2c^4-2d^4
[1+4a,0+4b,1+4c,0+4d]:	unknown -> [3] a+6a^2+16a^3+16a^4+16b^4-c-6c^2-16c^3-16c^4-16d^4
-> solution [1,0,1,0],trivial(3) [5,0,5,0],trivial(3) [1,4,1,4],trivial(2) [5,4,5,4],trivial(2)
[3+4a,0+4b,1+4c,0+4d]:	negative-1 [3] by {a=>-a-1}
[1+4a,2+4b,1+4c,0+4d]:	unknown -> [4] 1+a+6a^2+16a^3+16a^4+8b+24b^2+32b^3+16b^4-c-6c^2-16c^3-16c^4-16d^4
[3+4a,2+4b,1+4c,0+4d]:	negative-1 [4] by {a=>-a-1}
[1+4a,0+4b,3+4c,0+4d]:	negative-1 [4] by {c=>-c-1}
[3+4a,0+4b,3+4c,0+4d]:	negative-1 [4] by {a=>-a-1,c=>-c-1}
-> solution [3,0,3,0],trivial(3) [7,0,7,0],trivial(3) [3,4,3,4],trivial(2) [7,4,7,4],trivial(2)
[1+4a,2+4b,3+4c,0+4d]:	negative-1 [4] by {c=>-c-1}
[3+4a,2+4b,3+4c,0+4d]:	negative-1 [4] by {a=>-a-1,c=>-c-1}
[1+4a,0+4b,1+4c,2+4d]:	transposed [4] by [2,3,0,1]
[3+4a,0+4b,1+4c,2+4d]:	negative-1 [4] by {a=>-a-1}
[1+4a,2+4b,1+4c,2+4d]:	unknown -> [5] a+6a^2+16a^3+16a^4+8b+24b^2+32b^3+16b^4-c-6c^2-16c^3-16c^4-8d-24d^2-32d^3-16d^4
-> solution [1,2,1,2],trivial(2) [5,2,5,2],trivial(2) [1,6,1,6],trivial(2) [5,6,5,6],trivial(2)
[3+4a,2+4b,1+4c,2+4d]:	negative-1 [5] by {a=>-a-1}
[1+4a,0+4b,3+4c,2+4d]:	negative-1 [5] by {c=>-c-1}
[3+4a,0+4b,3+4c,2+4d]:	negative-1 [5] by {a=>-a-1,c=>-c-1}
[1+4a,2+4b,3+4c,2+4d]:	negative-1 [5] by {c=>-c-1}
[3+4a,2+4b,3+4c,2+4d]:	negative-1 [5] by {a=>-a-1,c=>-c-1}
-> solution [3,2,3,2],trivial(2) [7,2,7,2],trivial(2) [3,6,3,6],trivial(2) [7,6,7,6],trivial(2)
expanding queue[2]^0,meter=[2,2,2,2]*4: a+3a^2+4a^3+2a^4+b+3b^2+4b^3+2b^4-c-3c^2-4c^3-2c^4-d-3d^2-4d^3-2d^4
[1+4a,1+4b,1+4c,1+4d]:	unknown -> [6] a+6a^2+16a^3+16a^4+b+6b^2+16b^3+16b^4-c-6c^2-16c^3-16c^4-d-6d^2-16d^3-16d^4
-> solution [1,1,1,1],trivial(2) [5,1,5,1],trivial(2) [1,5,5,1],trivial(2) [5,1,1,5],trivial(2) [1,5,1,5],trivial(2) [5,5,5,5],trivial(2)
[3+4a,1+4b,1+4c,1+4d]:	negative-1 [6] by {a=>-a-1}
[1+4a,3+4b,1+4c,1+4d]:	negative-1 [6] by {b=>-b-1}
[3+4a,3+4b,1+4c,1+4d]:	negative-1 [6] by {a=>-a-1,b=>-b-1}
[1+4a,1+4b,3+4c,1+4d]:	negative-1 [6] by {c=>-c-1}
[3+4a,1+4b,3+4c,1+4d]:	negative-1 [6] by {a=>-a-1,c=>-c-1}
-> solution [3,1,3,1],trivial(2) [7,1,7,1],trivial(2) [3,5,3,5],trivial(2) [7,5,7,5],trivial(2)
[1+4a,3+4b,3+4c,1+4d]:	negative-1 [6] by {b=>-b-1,c=>-c-1}
-> solution [1,3,3,1],trivial(2) [1,7,7,1],trivial(2) [5,3,3,5],trivial(2) [5,7,7,5],trivial(2)
[3+4a,3+4b,3+4c,1+4d]:	negative-1 [6] by {a=>-a-1,b=>-b-1,c=>-c-1}
[1+4a,1+4b,1+4c,3+4d]:	negative-1 [6] by {d=>-d-1}
[3+4a,1+4b,1+4c,3+4d]:	negative-1 [6] by {a=>-a-1,d=>-d-1}
-> solution [3,1,1,3],trivial(2) [3,5,5,3],trivial(2) [7,1,1,7],trivial(2) [7,5,5,7],trivial(2)
[1+4a,3+4b,1+4c,3+4d]:	negative-1 [6] by {b=>-b-1,d=>-d-1}
-> solution [1,3,1,3],trivial(2) [5,3,5,3],trivial(2) [1,7,1,7],trivial(2) [5,7,5,7],trivial(2)
[3+4a,3+4b,1+4c,3+4d]:	negative-1 [6] by {a=>-a-1,b=>-b-1,d=>-d-1}
[1+4a,1+4b,3+4c,3+4d]:	negative-1 [6] by {c=>-c-1,d=>-d-1}
[3+4a,1+4b,3+4c,3+4d]:	negative-1 [6] by {a=>-a-1,c=>-c-1,d=>-d-1}
[1+4a,3+4b,3+4c,3+4d]:	negative-1 [6] by {b=>-b-1,c=>-c-1,d=>-d-1}
[3+4a,3+4b,3+4c,3+4d]:	negative-1 [6] by {a=>-a-1,b=>-b-1,c=>-c-1,d=>-d-1}
-> solution [3,3,3,3],trivial(2) [7,3,7,3],trivial(2) [3,7,7,3],trivial(2) [7,3,3,7],trivial(2) [3,7,3,7],trivial(2) [7,7,7,7],trivial(2)
----------------
expanding queue[3]^1,meter=[2,2,2,2]*8: a+6a^2+16a^3+16a^4+16b^4-c-6c^2-16c^3-16c^4-16d^4
[1+8a,0+8b,1+8c,0+8d]:	unknown -> [7] a+12a^2+64a^3+128a^4+128b^4-c-12c^2-64c^3-128c^4-128d^4
-> solution [1,0,1,0],trivial(3) [9,0,9,0],trivial(3) [1,8,1,8],trivial(2) [9,8,9,8],trivial(2)
[1+8a,4+8b,1+8c,0+8d]:	unknown -> [8] 8+a+12a^2+64a^3+128a^4+64b+192b^2+256b^3+128b^4-c-12c^2-64c^3-128c^4-128d^4
[5+8a,0+8b,5+8c,0+8d]:	unknown -> [9] 125a+300a^2+320a^3+128a^4+128b^4-125c-300c^2-320c^3-128c^4-128d^4
-> solution [5,0,5,0],trivial(3) [13,0,13,0],trivial(3) [5,8,5,8],trivial(2) [13,8,13,8],trivial(2)
[5+8a,4+8b,5+8c,0+8d]:	unknown -> [10] 8+125a+300a^2+320a^3+128a^4+64b+192b^2+256b^3+128b^4-125c-300c^2-320c^3-128c^4-128d^4
[1+8a,0+8b,1+8c,4+8d]:	transposed [8] by [2,3,0,1]
[1+8a,4+8b,1+8c,4+8d]:	unknown -> [11] a+12a^2+64a^3+128a^4+64b+192b^2+256b^3+128b^4-c-12c^2-64c^3-128c^4-64d-192d^2-256d^3-128d^4
-> solution [1,4,1,4],trivial(2) [9,4,9,4],trivial(2) [1,12,1,12],trivial(2) [9,12,9,12],trivial(2)
[5+8a,0+8b,5+8c,4+8d]:	transposed [10] by [2,3,0,1]
[5+8a,4+8b,5+8c,4+8d]:	unknown -> [12] 125a+300a^2+320a^3+128a^4+64b+192b^2+256b^3+128b^4-125c-300c^2-320c^3-128c^4-64d-192d^2-256d^3-128d^4
-> solution [5,4,5,4],trivial(2) [13,4,13,4],trivial(2) [5,12,5,12],trivial(2) [13,12,13,12],trivial(2)
expanding queue[4]^1,meter=[2,2,2,2]*8: 1+a+6a^2+16a^3+16a^4+8b+24b^2+32b^3+16b^4-c-6c^2-16c^3-16c^4-16d^4
[5+8a,2+8b,1+8c,0+8d]:	unknown -> [13] 20+125a+300a^2+320a^3+128a^4+8b+48b^2+128b^3+128b^4-c-12c^2-64c^3-128c^4-128d^4
[5+8a,6+8b,1+8c,0+8d]:	negative-1 [13] by {b=>-b-1}
[1+8a,2+8b,5+8c,0+8d]:	unknown -> [14] -19+a+12a^2+64a^3+128a^4+8b+48b^2+128b^3+128b^4-125c-300c^2-320c^3-128c^4-128d^4
[1+8a,6+8b,5+8c,0+8d]:	negative-1 [14] by {b=>-b-1}
[5+8a,2+8b,1+8c,4+8d]:	unknown -> [15] 12+125a+300a^2+320a^3+128a^4+8b+48b^2+128b^3+128b^4-c-12c^2-64c^3-128c^4-64d-192d^2-256d^3-128d^4
[5+8a,6+8b,1+8c,4+8d]:	negative-1 [15] by {b=>-b-1}
[1+8a,2+8b,5+8c,4+8d]:	unknown -> [16] -27+a+12a^2+64a^3+128a^4+8b+48b^2+128b^3+128b^4-125c-300c^2-320c^3-128c^4-64d-192d^2-256d^3-128d^4
[1+8a,6+8b,5+8c,4+8d]:	negative-1 [16] by {b=>-b-1}
expanding queue[5]^1,meter=[2,2,2,2]*8: a+6a^2+16a^3+16a^4+8b+24b^2+32b^3+16b^4-c-6c^2-16c^3-16c^4-8d-24d^2-32d^3-16d^4
[1+8a,2+8b,1+8c,2+8d]:	unknown -> [17] a+12a^2+64a^3+128a^4+8b+48b^2+128b^3+128b^4-c-12c^2-64c^3-128c^4-8d-48d^2-128d^3-128d^4
-> solution [1,2,1,2],trivial(2) [9,2,9,2],trivial(2) [1,10,1,10],trivial(2) [9,10,9,10],trivial(2)
[1+8a,6+8b,1+8c,2+8d]:	negative-1 [17] by {b=>-b-1}
[5+8a,2+8b,5+8c,2+8d]:	unknown -> [18] 125a+300a^2+320a^3+128a^4+8b+48b^2+128b^3+128b^4-125c-300c^2-320c^3-128c^4-8d-48d^2-128d^3-128d^4
-> solution [5,2,5,2],trivial(2) [13,2,13,2],trivial(2) [5,10,5,10],trivial(2) [13,10,13,10],trivial(2)
[5+8a,6+8b,5+8c,2+8d]:	negative-1 [18] by {b=>-b-1}
[1+8a,2+8b,1+8c,6+8d]:	negative-1 [18] by {d=>-d-1}
[1+8a,6+8b,1+8c,6+8d]:	negative-1 [18] by {b=>-b-1,d=>-d-1}
-> solution [1,6,1,6],trivial(2) [9,6,9,6],trivial(2) [1,14,1,14],trivial(2) [9,14,9,14],trivial(2)
[5+8a,2+8b,5+8c,6+8d]:	negative-1 [18] by {d=>-d-1}
[5+8a,6+8b,5+8c,6+8d]:	negative-1 [18] by {b=>-b-1,d=>-d-1}
-> solution [5,6,5,6],trivial(2) [13,6,13,6],trivial(2) [5,14,5,14],trivial(2) [13,14,13,14],trivial(2)
expanding queue[6]^2,meter=[2,2,2,2]*8: a+6a^2+16a^3+16a^4+b+6b^2+16b^3+16b^4-c-6c^2-16c^3-16c^4-d-6d^2-16d^3-16d^4
[1+8a,1+8b,1+8c,1+8d]:	unknown -> [19] a+12a^2+64a^3+128a^4+b+12b^2+64b^3+128b^4-c-12c^2-64c^3-128c^4-d-12d^2-64d^3-128d^4
-> solution [1,1,1,1],trivial(2) [9,1,9,1],trivial(2) [1,9,9,1],trivial(2) [9,1,1,9],trivial(2) [1,9,1,9],trivial(2) [9,9,9,9],trivial(2)
[5+8a,5+8b,1+8c,1+8d]:	unknown -> [20] 39+125a+300a^2+320a^3+128a^4+125b+300b^2+320b^3+128b^4-c-12c^2-64c^3-128c^4-d-12d^2-64d^3-128d^4
[5+8a,1+8b,5+8c,1+8d]:	unknown -> [21] 125a+300a^2+320a^3+128a^4+b+12b^2+64b^3+128b^4-125c-300c^2-320c^3-128c^4-d-12d^2-64d^3-128d^4
-> solution [5,1,5,1],trivial(2) [13,1,13,1],trivial(2) [5,9,5,9],trivial(2) [13,9,13,9],trivial(2)
[1+8a,5+8b,5+8c,1+8d]:	transposed [21] by [1,0,2,3]
[5+8a,1+8b,1+8c,5+8d]:	transposed [21] by [0,1,3,2]
[1+8a,5+8b,1+8c,5+8d]:	transposed [21] by [1,0,3,2]
[1+8a,1+8b,5+8c,5+8d]:	transposed [20] by [2,3,0,1]
[5+8a,5+8b,5+8c,5+8d]:	unknown -> [22] 125a+300a^2+320a^3+128a^4+125b+300b^2+320b^3+128b^4-125c-300c^2-320c^3-128c^4-125d-300d^2-320d^3-128d^4
-> solution [5,5,5,5],trivial(2) [13,5,13,5],trivial(2) [5,13,13,5],trivial(2) [13,5,5,13],trivial(2) [5,13,5,13],trivial(2) [13,13,13,13],trivial(2)
Maximum level 2 at [23]: a^4+b^4-c^4-d^4
