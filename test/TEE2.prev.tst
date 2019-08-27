TranspositionSet={[0,2,1,3],[1,0,2,3],[1,2,0,3],[2,1,0,3],[2,0,1,3]}
considerNonPrimitive
Expanding for base=2, level=2, reasons+features=base,transpose,primitive,same,similiar,evenexp invall,norm
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a⁴+b⁴+c⁴-d⁴
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2,2]: a⁴+b⁴+c⁴-d⁴
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [2,0,0,2],trivial(3) [0,2,0,2],trivial(3) [0,0,2,2],trivial(3)
[1+2a,0+2b,0+2c,1+2d]:	unknown -> [1] [1,0,0,1] a+3a²+4a³+2a⁴+2b⁴+2c⁴-d-3d²-4d³-2d⁴
-> solution [1,0,0,1],trivial(3) [3,0,0,3],trivial(3)
[0+2a,1+2b,0+2c,1+2d]:	transposed [1] by [2,0,1,3]
[0+2a,0+2b,1+2c,1+2d]:	transposed [1] by [2,1,0,3]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2,2]: a+3a²+4a³+2a⁴+2b⁴+2c⁴-d-3d²-4d³-2d⁴
[1+4a,0+4b,0+4c,1+4d]:	unknown -> [2] [0,0,0,0] a+6a²+16a³+16a⁴+16b⁴+16c⁴-d-6d²-16d³-16d⁴
-> solution [1,0,0,1],trivial(3) [5,0,0,5],trivial(3)
[3+4a,0+4b,0+4c,1+4d]:	negative-1 [2] by {a=>-a-1}
[1+4a,2+4b,0+4c,1+4d]:	unknown -> [3] [0,1,0,0] a+6a²+16a³+16a⁴+8b+24b²+32b³+16b⁴+16c⁴-d-6d²-16d³-16d⁴+1
[3+4a,2+4b,0+4c,1+4d]:	negative-1 [3] by {a=>-a-1}
[1+4a,0+4b,2+4c,1+4d]:	transposed [3] by [0,2,1,3]
[3+4a,0+4b,2+4c,1+4d]:	negative-1 [3] by {a=>-a-1}
[1+4a,2+4b,2+4c,1+4d]:	unknown -> [4] [0,1,1,0] a+6a²+16a³+16a⁴+8b+24b²+32b³+16b⁴+8c+24c²+32c³+16c⁴-d-6d²-16d³-16d⁴+2
[3+4a,2+4b,2+4c,1+4d]:	negative-1 [4] by {a=>-a-1}
[1+4a,0+4b,0+4c,3+4d]:	negative-1 [4] by {d=>-d-1}
[3+4a,0+4b,0+4c,3+4d]:	negative-1 [4] by {a=>-a-1,d=>-d-1}
-> solution [3,0,0,3],trivial(3) [7,0,0,7],trivial(3)
[1+4a,2+4b,0+4c,3+4d]:	negative-1 [4] by {d=>-d-1}
[3+4a,2+4b,0+4c,3+4d]:	negative-1 [4] by {a=>-a-1,d=>-d-1}
[1+4a,0+4b,2+4c,3+4d]:	negative-1 [4] by {d=>-d-1}
[3+4a,0+4b,2+4c,3+4d]:	negative-1 [4] by {a=>-a-1,d=>-d-1}
[1+4a,2+4b,2+4c,3+4d]:	negative-1 [4] by {d=>-d-1}
[3+4a,2+4b,2+4c,3+4d]:	negative-1 [4] by {a=>-a-1,d=>-d-1}
endexp[1]
---------------- level 2
Maximum level 2 [5] mod 2: a⁴+b⁴+c⁴-d⁴
