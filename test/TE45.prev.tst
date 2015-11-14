TranspositionSet={[2,1,0,3],[1,2,0,3],[2,0,1,3],[0,2,1,3],[1,0,2,3]}
isHomogeneous
ExponentGCDs=[4,4,4,4]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar,evenexp norm,invall
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] a⁴+b⁴+c⁴-d⁴
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2,2]*2: a⁴+b⁴+c⁴-d⁴
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [2,0,0,2],trivial(3) [0,2,0,2],trivial(3) [0,0,2,2],trivial(3)
[1+2a,0+2b,0+2c,1+2d]:	unknown -> [1] a+3a²+4a³+2a⁴+2b⁴+2c⁴-d-3d²-4d³-2d⁴
-> solution [1,0,0,1],trivial(3) [3,0,0,3],trivial(3)
[0+2a,1+2b,0+2c,1+2d]:	transposed [1] by [1,0,2,3]
[0+2a,0+2b,1+2c,1+2d]:	transposed [1] by [1,2,0,3]
----------------
expanding queue[1]^0,meter=[2,2,2,2]*4: a+3a²+4a³+2a⁴+2b⁴+2c⁴-d-3d²-4d³-2d⁴
[1+4a,0+4b,0+4c,1+4d]:	unknown -> [2] a+6a²+16a³+16a⁴+16b⁴+16c⁴-d-6d²-16d³-16d⁴
-> solution [1,0,0,1],trivial(3) [5,0,0,5],trivial(3)
[3+4a,0+4b,0+4c,1+4d]:	negative-1 [2] by {a=>-a-1}
[1+4a,2+4b,0+4c,1+4d]:	unknown -> [3] a+6a²+16a³+16a⁴+8b+24b²+32b³+16b⁴+16c⁴-d-6d²-16d³-16d⁴+1
[3+4a,2+4b,0+4c,1+4d]:	negative-1 [3] by {a=>-a-1}
[1+4a,0+4b,2+4c,1+4d]:	transposed [3] by [0,2,1,3]
[3+4a,0+4b,2+4c,1+4d]:	negative-1 [3] by {a=>-a-1}
[1+4a,2+4b,2+4c,1+4d]:	unknown -> [4] a+6a²+16a³+16a⁴+8b+24b²+32b³+16b⁴+8c+24c²+32c³+16c⁴-d-6d²-16d³-16d⁴+2
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
----------------
expanding queue[2]^1,meter=[2,2,2,2]*8: a+6a²+16a³+16a⁴+16b⁴+16c⁴-d-6d²-16d³-16d⁴
[1+8a,0+8b,0+8c,1+8d]:	unknown -> [5] a+12a²+64a³+128a⁴+128b⁴+128c⁴-d-12d²-64d³-128d⁴
-> solution [1,0,0,1],trivial(3) [9,0,0,9],trivial(3)
[1+8a,4+8b,0+8c,1+8d]:	unknown -> [6] a+12a²+64a³+128a⁴+64b+192b²+256b³+128b⁴+128c⁴-d-12d²-64d³-128d⁴+8
[1+8a,0+8b,4+8c,1+8d]:	transposed [6] by [0,2,1,3]
[1+8a,4+8b,4+8c,1+8d]:	unknown -> [7] a+12a²+64a³+128a⁴+64b+192b²+256b³+128b⁴+64c+192c²+256c³+128c⁴-d-12d²-64d³-128d⁴+16
[5+8a,0+8b,0+8c,5+8d]:	unknown -> [8] 125a+300a²+320a³+128a⁴+128b⁴+128c⁴-125d-300d²-320d³-128d⁴
-> solution [5,0,0,5],trivial(3) [13,0,0,13],trivial(3)
[5+8a,4+8b,0+8c,5+8d]:	unknown -> [9] 125a+300a²+320a³+128a⁴+64b+192b²+256b³+128b⁴+128c⁴-125d-300d²-320d³-128d⁴+8
[5+8a,0+8b,4+8c,5+8d]:	transposed [9] by [0,2,1,3]
[5+8a,4+8b,4+8c,5+8d]:	unknown -> [10] 125a+300a²+320a³+128a⁴+64b+192b²+256b³+128b⁴+64c+192c²+256c³+128c⁴-125d-300d²-320d³-128d⁴+16
expanding queue[3]^1,meter=[2,2,2,2]*8: a+6a²+16a³+16a⁴+8b+24b²+32b³+16b⁴+16c⁴-d-6d²-16d³-16d⁴+1
[5+8a,2+8b,0+8c,1+8d]:	unknown -> [11] 125a+300a²+320a³+128a⁴+8b+48b²+128b³+128b⁴+128c⁴-d-12d²-64d³-128d⁴+20
[5+8a,6+8b,0+8c,1+8d]:	negative-1 [11] by {b=>-b-1}
[5+8a,2+8b,4+8c,1+8d]:	unknown -> [12] 125a+300a²+320a³+128a⁴+8b+48b²+128b³+128b⁴+64c+192c²+256c³+128c⁴-d-12d²-64d³-128d⁴+28
[5+8a,6+8b,4+8c,1+8d]:	negative-1 [12] by {b=>-b-1}
[1+8a,2+8b,0+8c,5+8d]:	unknown -> [13] a+12a²+64a³+128a⁴+8b+48b²+128b³+128b⁴+128c⁴-125d-300d²-320d³-128d⁴-19
[1+8a,6+8b,0+8c,5+8d]:	negative-1 [13] by {b=>-b-1}
[1+8a,2+8b,4+8c,5+8d]:	unknown -> [14] a+12a²+64a³+128a⁴+8b+48b²+128b³+128b⁴+64c+192c²+256c³+128c⁴-125d-300d²-320d³-128d⁴-11
[1+8a,6+8b,4+8c,5+8d]:	negative-1 [14] by {b=>-b-1}
expanding queue[4]^1,meter=[2,2,2,2]*8: a+6a²+16a³+16a⁴+8b+24b²+32b³+16b⁴+8c+24c²+32c³+16c⁴-d-6d²-16d³-16d⁴+2
[1+8a,2+8b,2+8c,1+8d]:	unknown -> [15] a+12a²+64a³+128a⁴+8b+48b²+128b³+128b⁴+8c+48c²+128c³+128c⁴-d-12d²-64d³-128d⁴+1
[1+8a,6+8b,2+8c,1+8d]:	negative-1 [15] by {b=>-b-1}
[1+8a,2+8b,6+8c,1+8d]:	negative-1 [15] by {c=>-c-1}
[1+8a,6+8b,6+8c,1+8d]:	negative-1 [15] by {b=>-b-1,c=>-c-1}
[5+8a,2+8b,2+8c,5+8d]:	unknown -> [16] 125a+300a²+320a³+128a⁴+8b+48b²+128b³+128b⁴+8c+48c²+128c³+128c⁴-125d-300d²-320d³-128d⁴+1
[5+8a,6+8b,2+8c,5+8d]:	negative-1 [16] by {b=>-b-1}
[5+8a,2+8b,6+8c,5+8d]:	negative-1 [16] by {c=>-c-1}
[5+8a,6+8b,6+8c,5+8d]:	negative-1 [16] by {b=>-b-1,c=>-c-1}
----------------
expanding queue[5]^2,meter=[2,2,2,2]*16: a+12a²+64a³+128a⁴+128b⁴+128c⁴-d-12d²-64d³-128d⁴
[1+16a,0+16b,0+16c,1+16d]:	unknown -> [17] a+24a²+256a³+1024a⁴+1024b⁴+1024c⁴-d-24d²-256d³-1024d⁴
-> solution [1,0,0,1],trivial(3) [17,0,0,17],trivial(3)
[1+16a,8+16b,0+16c,1+16d]:	unknown -> [18] a+24a²+256a³+1024a⁴+512b+1536b²+2048b³+1024b⁴+1024c⁴-d-24d²-256d³-1024d⁴+64
[1+16a,0+16b,8+16c,1+16d]:	transposed [18] by [0,2,1,3]
[1+16a,8+16b,8+16c,1+16d]:	unknown -> [19] a+24a²+256a³+1024a⁴+512b+1536b²+2048b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-d-24d²-256d³-1024d⁴+128
[9+16a,0+16b,0+16c,9+16d]:	unknown -> [20] 729a+1944a²+2304a³+1024a⁴+1024b⁴+1024c⁴-729d-1944d²-2304d³-1024d⁴
-> solution [9,0,0,9],trivial(3) [25,0,0,25],trivial(3)
[9+16a,8+16b,0+16c,9+16d]:	unknown -> [21] 729a+1944a²+2304a³+1024a⁴+512b+1536b²+2048b³+1024b⁴+1024c⁴-729d-1944d²-2304d³-1024d⁴+64
[9+16a,0+16b,8+16c,9+16d]:	transposed [21] by [0,2,1,3]
[9+16a,8+16b,8+16c,9+16d]:	unknown -> [22] 729a+1944a²+2304a³+1024a⁴+512b+1536b²+2048b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-729d-1944d²-2304d³-1024d⁴+128
expanding queue[6]^2,meter=[2,2,2,2]*16: a+12a²+64a³+128a⁴+64b+192b²+256b³+128b⁴+128c⁴-d-12d²-64d³-128d⁴+8
[1+16a,4+16b,0+16c,1+16d]:	unknown -> [23] a+24a²+256a³+1024a⁴+64b+384b²+1024b³+1024b⁴+1024c⁴-d-24d²-256d³-1024d⁴+4
[1+16a,12+16b,0+16c,1+16d]:	negative-1 [23] by {b=>-b-1}
[1+16a,4+16b,8+16c,1+16d]:	unknown -> [24] a+24a²+256a³+1024a⁴+64b+384b²+1024b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-d-24d²-256d³-1024d⁴+68
[1+16a,12+16b,8+16c,1+16d]:	negative-1 [24] by {b=>-b-1}
[9+16a,4+16b,0+16c,9+16d]:	unknown -> [25] 729a+1944a²+2304a³+1024a⁴+64b+384b²+1024b³+1024b⁴+1024c⁴-729d-1944d²-2304d³-1024d⁴+4
[9+16a,12+16b,0+16c,9+16d]:	negative-1 [25] by {b=>-b-1}
[9+16a,4+16b,8+16c,9+16d]:	unknown -> [26] 729a+1944a²+2304a³+1024a⁴+64b+384b²+1024b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-729d-1944d²-2304d³-1024d⁴+68
[9+16a,12+16b,8+16c,9+16d]:	negative-1 [26] by {b=>-b-1}
expanding queue[7]^2,meter=[2,2,2,2]*16: a+12a²+64a³+128a⁴+64b+192b²+256b³+128b⁴+64c+192c²+256c³+128c⁴-d-12d²-64d³-128d⁴+16
[1+16a,4+16b,4+16c,1+16d]:	unknown -> [27] a+24a²+256a³+1024a⁴+64b+384b²+1024b³+1024b⁴+64c+384c²+1024c³+1024c⁴-d-24d²-256d³-1024d⁴+8
[1+16a,12+16b,4+16c,1+16d]:	negative-1 [27] by {b=>-b-1}
[1+16a,4+16b,12+16c,1+16d]:	negative-1 [27] by {c=>-c-1}
[1+16a,12+16b,12+16c,1+16d]:	negative-1 [27] by {b=>-b-1,c=>-c-1}
[9+16a,4+16b,4+16c,9+16d]:	unknown -> [28] 729a+1944a²+2304a³+1024a⁴+64b+384b²+1024b³+1024b⁴+64c+384c²+1024c³+1024c⁴-729d-1944d²-2304d³-1024d⁴+8
[9+16a,12+16b,4+16c,9+16d]:	negative-1 [28] by {b=>-b-1}
[9+16a,4+16b,12+16c,9+16d]:	negative-1 [28] by {c=>-c-1}
[9+16a,12+16b,12+16c,9+16d]:	negative-1 [28] by {b=>-b-1,c=>-c-1}
expanding queue[8]^2,meter=[2,2,2,2]*16: 125a+300a²+320a³+128a⁴+128b⁴+128c⁴-125d-300d²-320d³-128d⁴
[5+16a,0+16b,0+16c,5+16d]:	unknown -> [29] 125a+600a²+1280a³+1024a⁴+1024b⁴+1024c⁴-125d-600d²-1280d³-1024d⁴
-> solution [5,0,0,5],trivial(3) [21,0,0,21],trivial(3)
[5+16a,8+16b,0+16c,5+16d]:	unknown -> [30] 125a+600a²+1280a³+1024a⁴+512b+1536b²+2048b³+1024b⁴+1024c⁴-125d-600d²-1280d³-1024d⁴+64
[5+16a,0+16b,8+16c,5+16d]:	transposed [30] by [0,2,1,3]
[5+16a,8+16b,8+16c,5+16d]:	unknown -> [31] 125a+600a²+1280a³+1024a⁴+512b+1536b²+2048b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-125d-600d²-1280d³-1024d⁴+128
[13+16a,0+16b,0+16c,13+16d]:	unknown -> [32] 2197a+4056a²+3328a³+1024a⁴+1024b⁴+1024c⁴-2197d-4056d²-3328d³-1024d⁴
-> solution [13,0,0,13],trivial(3) [29,0,0,29],trivial(3)
[13+16a,8+16b,0+16c,13+16d]:	unknown -> [33] 2197a+4056a²+3328a³+1024a⁴+512b+1536b²+2048b³+1024b⁴+1024c⁴-2197d-4056d²-3328d³-1024d⁴+64
[13+16a,0+16b,8+16c,13+16d]:	transposed [33] by [0,2,1,3]
[13+16a,8+16b,8+16c,13+16d]:	unknown -> [34] 2197a+4056a²+3328a³+1024a⁴+512b+1536b²+2048b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-2197d-4056d²-3328d³-1024d⁴+128
expanding queue[9]^2,meter=[2,2,2,2]*16: 125a+300a²+320a³+128a⁴+64b+192b²+256b³+128b⁴+128c⁴-125d-300d²-320d³-128d⁴+8
[5+16a,4+16b,0+16c,5+16d]:	unknown -> [35] 125a+600a²+1280a³+1024a⁴+64b+384b²+1024b³+1024b⁴+1024c⁴-125d-600d²-1280d³-1024d⁴+4
[5+16a,12+16b,0+16c,5+16d]:	negative-1 [35] by {b=>-b-1}
[5+16a,4+16b,8+16c,5+16d]:	unknown -> [36] 125a+600a²+1280a³+1024a⁴+64b+384b²+1024b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-125d-600d²-1280d³-1024d⁴+68
[5+16a,12+16b,8+16c,5+16d]:	negative-1 [36] by {b=>-b-1}
[13+16a,4+16b,0+16c,13+16d]:	unknown -> [37] 2197a+4056a²+3328a³+1024a⁴+64b+384b²+1024b³+1024b⁴+1024c⁴-2197d-4056d²-3328d³-1024d⁴+4
[13+16a,12+16b,0+16c,13+16d]:	negative-1 [37] by {b=>-b-1}
[13+16a,4+16b,8+16c,13+16d]:	unknown -> [38] 2197a+4056a²+3328a³+1024a⁴+64b+384b²+1024b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-2197d-4056d²-3328d³-1024d⁴+68
[13+16a,12+16b,8+16c,13+16d]:	negative-1 [38] by {b=>-b-1}
expanding queue[10]^2,meter=[2,2,2,2]*16: 125a+300a²+320a³+128a⁴+64b+192b²+256b³+128b⁴+64c+192c²+256c³+128c⁴-125d-300d²-320d³-128d⁴+16
[5+16a,4+16b,4+16c,5+16d]:	unknown -> [39] 125a+600a²+1280a³+1024a⁴+64b+384b²+1024b³+1024b⁴+64c+384c²+1024c³+1024c⁴-125d-600d²-1280d³-1024d⁴+8
[5+16a,12+16b,4+16c,5+16d]:	negative-1 [39] by {b=>-b-1}
[5+16a,4+16b,12+16c,5+16d]:	negative-1 [39] by {c=>-c-1}
[5+16a,12+16b,12+16c,5+16d]:	negative-1 [39] by {b=>-b-1,c=>-c-1}
[13+16a,4+16b,4+16c,13+16d]:	unknown -> [40] 2197a+4056a²+3328a³+1024a⁴+64b+384b²+1024b³+1024b⁴+64c+384c²+1024c³+1024c⁴-2197d-4056d²-3328d³-1024d⁴+8
[13+16a,12+16b,4+16c,13+16d]:	negative-1 [40] by {b=>-b-1}
[13+16a,4+16b,12+16c,13+16d]:	negative-1 [40] by {c=>-c-1}
[13+16a,12+16b,12+16c,13+16d]:	negative-1 [40] by {b=>-b-1,c=>-c-1}
expanding queue[11]^3,meter=[2,2,2,2]*16: 125a+300a²+320a³+128a⁴+8b+48b²+128b³+128b⁴+128c⁴-d-12d²-64d³-128d⁴+20
[5+16a,2+16b,0+16c,1+16d]:	unknown -> [41] 125a+600a²+1280a³+1024a⁴+8b+96b²+512b³+1024b⁴+1024c⁴-d-24d²-256d³-1024d⁴+10
[5+16a,10+16b,0+16c,1+16d]:	unknown -> [42] 125a+600a²+1280a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+1024c⁴-d-24d²-256d³-1024d⁴+166
[5+16a,2+16b,8+16c,1+16d]:	unknown -> [43] 125a+600a²+1280a³+1024a⁴+8b+96b²+512b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-d-24d²-256d³-1024d⁴+74
[5+16a,10+16b,8+16c,1+16d]:	unknown -> [44] 125a+600a²+1280a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-d-24d²-256d³-1024d⁴+230
[13+16a,2+16b,0+16c,9+16d]:	unknown -> [45] 2197a+4056a²+3328a³+1024a⁴+8b+96b²+512b³+1024b⁴+1024c⁴-729d-1944d²-2304d³-1024d⁴+344
[13+16a,10+16b,0+16c,9+16d]:	unknown -> [46] 2197a+4056a²+3328a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+1024c⁴-729d-1944d²-2304d³-1024d⁴+500
[13+16a,2+16b,8+16c,9+16d]:	unknown -> [47] 2197a+4056a²+3328a³+1024a⁴+8b+96b²+512b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-729d-1944d²-2304d³-1024d⁴+408
[13+16a,10+16b,8+16c,9+16d]:	unknown -> [48] 2197a+4056a²+3328a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-729d-1944d²-2304d³-1024d⁴+564
expanding queue[12]^3,meter=[2,2,2,2]*16: 125a+300a²+320a³+128a⁴+8b+48b²+128b³+128b⁴+64c+192c²+256c³+128c⁴-d-12d²-64d³-128d⁴+28
[5+16a,2+16b,4+16c,1+16d]:	unknown -> [49] 125a+600a²+1280a³+1024a⁴+8b+96b²+512b³+1024b⁴+64c+384c²+1024c³+1024c⁴-d-24d²-256d³-1024d⁴+14
[5+16a,10+16b,4+16c,1+16d]:	unknown -> [50] 125a+600a²+1280a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+64c+384c²+1024c³+1024c⁴-d-24d²-256d³-1024d⁴+170
[5+16a,2+16b,12+16c,1+16d]:	negative-1 [50] by {c=>-c-1}
[5+16a,10+16b,12+16c,1+16d]:	negative-1 [50] by {c=>-c-1}
[13+16a,2+16b,4+16c,9+16d]:	unknown -> [51] 2197a+4056a²+3328a³+1024a⁴+8b+96b²+512b³+1024b⁴+64c+384c²+1024c³+1024c⁴-729d-1944d²-2304d³-1024d⁴+348
[13+16a,10+16b,4+16c,9+16d]:	unknown -> [52] 2197a+4056a²+3328a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+64c+384c²+1024c³+1024c⁴-729d-1944d²-2304d³-1024d⁴+504
[13+16a,2+16b,12+16c,9+16d]:	negative-1 [52] by {c=>-c-1}
[13+16a,10+16b,12+16c,9+16d]:	negative-1 [52] by {c=>-c-1}
expanding queue[13]^3,meter=[2,2,2,2]*16: a+12a²+64a³+128a⁴+8b+48b²+128b³+128b⁴+128c⁴-125d-300d²-320d³-128d⁴-19
[9+16a,2+16b,0+16c,5+16d]:	unknown -> [53] 729a+1944a²+2304a³+1024a⁴+8b+96b²+512b³+1024b⁴+1024c⁴-125d-600d²-1280d³-1024d⁴+93
[9+16a,10+16b,0+16c,5+16d]:	unknown -> [54] 729a+1944a²+2304a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+1024c⁴-125d-600d²-1280d³-1024d⁴+249
[9+16a,2+16b,8+16c,5+16d]:	unknown -> [55] 729a+1944a²+2304a³+1024a⁴+8b+96b²+512b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-125d-600d²-1280d³-1024d⁴+157
[9+16a,10+16b,8+16c,5+16d]:	unknown -> [56] 729a+1944a²+2304a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-125d-600d²-1280d³-1024d⁴+313
[1+16a,2+16b,0+16c,13+16d]:	unknown -> [57] a+24a²+256a³+1024a⁴+8b+96b²+512b³+1024b⁴+1024c⁴-2197d-4056d²-3328d³-1024d⁴-446
[1+16a,10+16b,0+16c,13+16d]:	unknown -> [58] a+24a²+256a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+1024c⁴-2197d-4056d²-3328d³-1024d⁴-290
[1+16a,2+16b,8+16c,13+16d]:	unknown -> [59] a+24a²+256a³+1024a⁴+8b+96b²+512b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-2197d-4056d²-3328d³-1024d⁴-382
[1+16a,10+16b,8+16c,13+16d]:	unknown -> [60] a+24a²+256a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+512c+1536c²+2048c³+1024c⁴-2197d-4056d²-3328d³-1024d⁴-226
expanding queue[14]^3,meter=[2,2,2,2]*16: a+12a²+64a³+128a⁴+8b+48b²+128b³+128b⁴+64c+192c²+256c³+128c⁴-125d-300d²-320d³-128d⁴-11
[9+16a,2+16b,4+16c,5+16d]:	unknown -> [61] 729a+1944a²+2304a³+1024a⁴+8b+96b²+512b³+1024b⁴+64c+384c²+1024c³+1024c⁴-125d-600d²-1280d³-1024d⁴+97
[9+16a,10+16b,4+16c,5+16d]:	unknown -> [62] 729a+1944a²+2304a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+64c+384c²+1024c³+1024c⁴-125d-600d²-1280d³-1024d⁴+253
[9+16a,2+16b,12+16c,5+16d]:	negative-1 [62] by {c=>-c-1}
[9+16a,10+16b,12+16c,5+16d]:	negative-1 [62] by {c=>-c-1}
[1+16a,2+16b,4+16c,13+16d]:	unknown -> [63] a+24a²+256a³+1024a⁴+8b+96b²+512b³+1024b⁴+64c+384c²+1024c³+1024c⁴-2197d-4056d²-3328d³-1024d⁴-442
[1+16a,10+16b,4+16c,13+16d]:	unknown -> [64] a+24a²+256a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+64c+384c²+1024c³+1024c⁴-2197d-4056d²-3328d³-1024d⁴-286
[1+16a,2+16b,12+16c,13+16d]:	negative-1 [64] by {c=>-c-1}
[1+16a,10+16b,12+16c,13+16d]:	negative-1 [64] by {c=>-c-1}
expanding queue[15]^4,meter=[2,2,2,2]*16: a+12a²+64a³+128a⁴+8b+48b²+128b³+128b⁴+8c+48c²+128c³+128c⁴-d-12d²-64d³-128d⁴+1
[9+16a,2+16b,2+16c,1+16d]:	unknown -> [65] 729a+1944a²+2304a³+1024a⁴+8b+96b²+512b³+1024b⁴+8c+96c²+512c³+1024c⁴-d-24d²-256d³-1024d⁴+103
[9+16a,10+16b,2+16c,1+16d]:	unknown -> [66] 729a+1944a²+2304a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+8c+96c²+512c³+1024c⁴-d-24d²-256d³-1024d⁴+259
[9+16a,2+16b,10+16c,1+16d]:	transposed [66] by [0,2,1,3]
[9+16a,10+16b,10+16c,1+16d]:	unknown -> [67] 729a+1944a²+2304a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+1000c+2400c²+2560c³+1024c⁴-d-24d²-256d³-1024d⁴+415
[1+16a,2+16b,2+16c,9+16d]:	unknown -> [68] a+24a²+256a³+1024a⁴+8b+96b²+512b³+1024b⁴+8c+96c²+512c³+1024c⁴-729d-1944d²-2304d³-1024d⁴-102
[1+16a,10+16b,2+16c,9+16d]:	unknown -> [69] a+24a²+256a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+8c+96c²+512c³+1024c⁴-729d-1944d²-2304d³-1024d⁴+54
[1+16a,2+16b,10+16c,9+16d]:	transposed [69] by [0,2,1,3]
[1+16a,10+16b,10+16c,9+16d]:	unknown -> [70] a+24a²+256a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+1000c+2400c²+2560c³+1024c⁴-729d-1944d²-2304d³-1024d⁴+210
expanding queue[16]^4,meter=[2,2,2,2]*16: 125a+300a²+320a³+128a⁴+8b+48b²+128b³+128b⁴+8c+48c²+128c³+128c⁴-125d-300d²-320d³-128d⁴+1
[13+16a,2+16b,2+16c,5+16d]:	unknown -> [71] 2197a+4056a²+3328a³+1024a⁴+8b+96b²+512b³+1024b⁴+8c+96c²+512c³+1024c⁴-125d-600d²-1280d³-1024d⁴+437
[13+16a,10+16b,2+16c,5+16d]:	unknown -> [72] 2197a+4056a²+3328a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+8c+96c²+512c³+1024c⁴-125d-600d²-1280d³-1024d⁴+593
[13+16a,2+16b,10+16c,5+16d]:	transposed [72] by [0,2,1,3]
[13+16a,10+16b,10+16c,5+16d]:	unknown -> [73] 2197a+4056a²+3328a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+1000c+2400c²+2560c³+1024c⁴-125d-600d²-1280d³-1024d⁴+749
[5+16a,2+16b,2+16c,13+16d]:	unknown -> [74] 125a+600a²+1280a³+1024a⁴+8b+96b²+512b³+1024b⁴+8c+96c²+512c³+1024c⁴-2197d-4056d²-3328d³-1024d⁴-436
[5+16a,10+16b,2+16c,13+16d]:	unknown -> [75] 125a+600a²+1280a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+8c+96c²+512c³+1024c⁴-2197d-4056d²-3328d³-1024d⁴-280
[5+16a,2+16b,10+16c,13+16d]:	transposed [75] by [0,2,1,3]
[5+16a,10+16b,10+16c,13+16d]:	unknown -> [76] 125a+600a²+1280a³+1024a⁴+1000b+2400b²+2560b³+1024b⁴+1000c+2400c²+2560c³+1024c⁴-2197d-4056d²-3328d³-1024d⁴-124
Maximum level 3 [77] mod 2: a⁴+b⁴+c⁴-d⁴
