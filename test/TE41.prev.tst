TranspositionSet={[3,2,1,0],[2,3,1,0],[3,2,0,1],[2,3,0,1],[1,0,3,2],[0,1,3,2],[1,0,2,3]}
considerNonPrimitive
Expanding for base=2, level=2, reasons+features=base,transpose,primitive,same,similiar,evenexp invall,norm
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a⁴+b⁴-c⁴-d⁴
-> solution [0,0,0,0],trivial(3) [1,0,1,0],trivial(3) [0,1,1,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [1,1,1,1],trivial(2)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2,2]: a⁴+b⁴-c⁴-d⁴
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [2,0,2,0],trivial(3) [0,2,2,0],trivial(3) [2,0,0,2],trivial(3) [0,2,0,2],trivial(3) [2,2,2,2],trivial(2)
[1+2a,0+2b,1+2c,0+2d]:	unknown -> [1] [1,0,1,0] a+3a²+4a³+2a⁴+2b⁴-c-3c²-4c³-2c⁴-2d⁴
-> solution [1,0,1,0],trivial(3) [3,0,3,0],trivial(3) [1,2,1,2],trivial(2) [3,2,3,2],trivial(2)
[0+2a,1+2b,1+2c,0+2d]:	transposed [1] by [1,0,2,3]
[1+2a,0+2b,0+2c,1+2d]:	transposed [1] by [0,1,3,2]
[0+2a,1+2b,0+2c,1+2d]:	transposed [1] by [1,0,3,2]
[1+2a,1+2b,1+2c,1+2d]:	unknown -> [2] [1,1,1,1] a+3a²+4a³+2a⁴+b+3b²+4b³+2b⁴-c-3c²-4c³-2c⁴-d-3d²-4d³-2d⁴
-> solution [1,1,1,1],trivial(2) [3,1,3,1],trivial(2) [1,3,3,1],trivial(2) [3,1,1,3],trivial(2) [1,3,1,3],trivial(2) [3,3,3,3],trivial(2)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2,2]: a+3a²+4a³+2a⁴+2b⁴-c-3c²-4c³-2c⁴-2d⁴
[1+4a,0+4b,1+4c,0+4d]:	unknown -> [3] [0,0,0,0] a+6a²+16a³+16a⁴+16b⁴-c-6c²-16c³-16c⁴-16d⁴
-> solution [1,0,1,0],trivial(3) [5,0,5,0],trivial(3) [1,4,1,4],trivial(2) [5,4,5,4],trivial(2)
[3+4a,0+4b,1+4c,0+4d]:	negative-1 [3] by {a=>-a-1}
[1+4a,2+4b,1+4c,0+4d]:	unknown -> [4] [0,1,0,0] a+6a²+16a³+16a⁴+8b+24b²+32b³+16b⁴-c-6c²-16c³-16c⁴-16d⁴+1
[3+4a,2+4b,1+4c,0+4d]:	negative-1 [4] by {a=>-a-1}
[1+4a,0+4b,3+4c,0+4d]:	negative-1 [4] by {c=>-c-1}
[3+4a,0+4b,3+4c,0+4d]:	negative-1 [4] by {a=>-a-1,c=>-c-1}
-> solution [3,0,3,0],trivial(3) [7,0,7,0],trivial(3) [3,4,3,4],trivial(2) [7,4,7,4],trivial(2)
[1+4a,2+4b,3+4c,0+4d]:	negative-1 [4] by {c=>-c-1}
[3+4a,2+4b,3+4c,0+4d]:	negative-1 [4] by {a=>-a-1,c=>-c-1}
[1+4a,0+4b,1+4c,2+4d]:	transposed [4] by [2,3,0,1]
[3+4a,0+4b,1+4c,2+4d]:	negative-1 [4] by {a=>-a-1}
[1+4a,2+4b,1+4c,2+4d]:	unknown -> [5] [0,1,0,1] a+6a²+16a³+16a⁴+8b+24b²+32b³+16b⁴-c-6c²-16c³-16c⁴-8d-24d²-32d³-16d⁴
-> solution [1,2,1,2],trivial(2) [5,2,5,2],trivial(2) [1,6,1,6],trivial(2) [5,6,5,6],trivial(2)
[3+4a,2+4b,1+4c,2+4d]:	negative-1 [5] by {a=>-a-1}
[1+4a,0+4b,3+4c,2+4d]:	negative-1 [5] by {c=>-c-1}
[3+4a,0+4b,3+4c,2+4d]:	negative-1 [5] by {a=>-a-1,c=>-c-1}
[1+4a,2+4b,3+4c,2+4d]:	negative-1 [5] by {c=>-c-1}
[3+4a,2+4b,3+4c,2+4d]:	negative-1 [5] by {a=>-a-1,c=>-c-1}
-> solution [3,2,3,2],trivial(2) [7,2,7,2],trivial(2) [3,6,3,6],trivial(2) [7,6,7,6],trivial(2)
endexp[1]
expanding queue[2]^0,meter=[2,2,2,2]: a+3a²+4a³+2a⁴+b+3b²+4b³+2b⁴-c-3c²-4c³-2c⁴-d-3d²-4d³-2d⁴
[1+4a,1+4b,1+4c,1+4d]:	unknown -> [6] [0,0,0,0] a+6a²+16a³+16a⁴+b+6b²+16b³+16b⁴-c-6c²-16c³-16c⁴-d-6d²-16d³-16d⁴
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
endexp[2]
---------------- level 2
Maximum level 2 [7] mod 2: a⁴+b⁴-c⁴-d⁴
