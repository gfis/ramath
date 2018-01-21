TranspositionSet={[2,1,0,3],[1,2,0,3],[2,0,1,3],[0,2,1,3],[1,0,2,3]}
considerNonPrimitive
Expanding for base=2, level=3, reasons+features=base,transpose,primitive,same,similiar,evenexp invall,norm
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a⁴+b⁴+c⁴-d⁴
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2,2]: a⁴+b⁴+c⁴-d⁴
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [2,0,0,2],trivial(3) [0,2,0,2],trivial(3) [0,0,2,2],trivial(3)
[1+2a,0+2b,0+2c,1+2d]:	unknown -> [1] [1,0,0,1] a+3a²+4a³+2a⁴+2b⁴+2c⁴-d-3d²-4d³-2d⁴
-> solution [1,0,0,1],trivial(3) [3,0,0,3],trivial(3)
[0+2a,1+2b,0+2c,1+2d]:	transposed [1] by [1,0,2,3]
[0+2a,0+2b,1+2c,1+2d]:	transposed [1] by [1,2,0,3]
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
expanding queue[2]^1,meter=[2,2,2,2]: a+6a²+16a³+16a⁴+16b⁴+16c⁴-d-6d²-16d³-16d⁴
[1+8a,0+8b,0+8c,1+8d]:	unknown -> [5] [0,0,0,0] a+12a²+64a³+128a⁴+128b⁴+128c⁴-d-12d²-64d³-128d⁴
-> solution [1,0,0,1],trivial(3) [9,0,0,9],trivial(3)
[1+8a,4+8b,0+8c,1+8d]:	unknown -> [6] [0,1,0,0] a+12a²+64a³+128a⁴+64b+192b²+256b³+128b⁴+128c⁴-d-12d²-64d³-128d⁴+8
[1+8a,0+8b,4+8c,1+8d]:	transposed [6] by [0,2,1,3]
[1+8a,4+8b,4+8c,1+8d]:	unknown -> [7] [0,1,1,0] a+12a²+64a³+128a⁴+64b+192b²+256b³+128b⁴+64c+192c²+256c³+128c⁴-d-12d²-64d³-128d⁴+16
[5+8a,0+8b,0+8c,5+8d]:	unknown -> [8] [1,0,0,1] 125a+300a²+320a³+128a⁴+128b⁴+128c⁴-125d-300d²-320d³-128d⁴
-> solution [5,0,0,5],trivial(3) [13,0,0,13],trivial(3)
[5+8a,4+8b,0+8c,5+8d]:	unknown -> [9] [1,1,0,1] 125a+300a²+320a³+128a⁴+64b+192b²+256b³+128b⁴+128c⁴-125d-300d²-320d³-128d⁴+8
[5+8a,0+8b,4+8c,5+8d]:	transposed [9] by [0,2,1,3]
[5+8a,4+8b,4+8c,5+8d]:	unknown -> [10] [1,1,1,1] 125a+300a²+320a³+128a⁴+64b+192b²+256b³+128b⁴+64c+192c²+256c³+128c⁴-125d-300d²-320d³-128d⁴+16
endexp[2]
expanding queue[3]^1,meter=[2,2,2,2]: a+6a²+16a³+16a⁴+8b+24b²+32b³+16b⁴+16c⁴-d-6d²-16d³-16d⁴+1
[5+8a,2+8b,0+8c,1+8d]:	unknown -> [11] [1,0,0,0] 125a+300a²+320a³+128a⁴+8b+48b²+128b³+128b⁴+128c⁴-d-12d²-64d³-128d⁴+20
[5+8a,6+8b,0+8c,1+8d]:	negative-1 [11] by {b=>-b-1}
[5+8a,2+8b,4+8c,1+8d]:	unknown -> [12] [1,0,1,0] 125a+300a²+320a³+128a⁴+8b+48b²+128b³+128b⁴+64c+192c²+256c³+128c⁴-d-12d²-64d³-128d⁴+28
[5+8a,6+8b,4+8c,1+8d]:	negative-1 [12] by {b=>-b-1}
[1+8a,2+8b,0+8c,5+8d]:	unknown -> [13] [0,0,0,1] a+12a²+64a³+128a⁴+8b+48b²+128b³+128b⁴+128c⁴-125d-300d²-320d³-128d⁴-19
[1+8a,6+8b,0+8c,5+8d]:	negative-1 [13] by {b=>-b-1}
[1+8a,2+8b,4+8c,5+8d]:	unknown -> [14] [0,0,1,1] a+12a²+64a³+128a⁴+8b+48b²+128b³+128b⁴+64c+192c²+256c³+128c⁴-125d-300d²-320d³-128d⁴-11
[1+8a,6+8b,4+8c,5+8d]:	negative-1 [14] by {b=>-b-1}
endexp[3]
expanding queue[4]^1,meter=[2,2,2,2]: a+6a²+16a³+16a⁴+8b+24b²+32b³+16b⁴+8c+24c²+32c³+16c⁴-d-6d²-16d³-16d⁴+2
[1+8a,2+8b,2+8c,1+8d]:	unknown -> [15] [0,0,0,0] a+12a²+64a³+128a⁴+8b+48b²+128b³+128b⁴+8c+48c²+128c³+128c⁴-d-12d²-64d³-128d⁴+1
[1+8a,6+8b,2+8c,1+8d]:	negative-1 [15] by {b=>-b-1}
[1+8a,2+8b,6+8c,1+8d]:	negative-1 [15] by {c=>-c-1}
[1+8a,6+8b,6+8c,1+8d]:	negative-1 [15] by {b=>-b-1,c=>-c-1}
[5+8a,2+8b,2+8c,5+8d]:	unknown -> [16] [1,0,0,1] 125a+300a²+320a³+128a⁴+8b+48b²+128b³+128b⁴+8c+48c²+128c³+128c⁴-125d-300d²-320d³-128d⁴+1
[5+8a,6+8b,2+8c,5+8d]:	negative-1 [16] by {b=>-b-1}
[5+8a,2+8b,6+8c,5+8d]:	negative-1 [16] by {c=>-c-1}
[5+8a,6+8b,6+8c,5+8d]:	negative-1 [16] by {b=>-b-1,c=>-c-1}
endexp[4]
---------------- level 3
Maximum level 3 [17] mod 2: a⁴+b⁴+c⁴-d⁴
