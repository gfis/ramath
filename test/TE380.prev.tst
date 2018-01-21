TranspositionSet={[2,1,0,3],[1,2,0,3],[2,0,1,3],[0,2,1,3],[1,0,2,3]}
considerNonPrimitive
Expanding for base=8, level=1, reasons+features=base,transpose,primitive,same,similiar 
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a³+b³+c³-d³
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[8,8,8,8]: a³+b³+c³-d³
[0+8a,0+8b,0+8c,0+8d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [8,0,0,8],trivial(3) [0,8,0,8],trivial(3) [0,0,8,8],trivial(3)
[7+8a,1+8b,0+8c,0+8d]:	unknown -> [1] [7,1,0,0] 1176a+1344a²+512a³+24b+192b²+512b³+512c³-512d³+344
[6+8a,2+8b,0+8c,0+8d]:	non-primitive
[5+8a,3+8b,0+8c,0+8d]:	unknown -> [2] [5,3,0,0] 600a+960a²+512a³+216b+576b²+512b³+512c³-512d³+152
[4+8a,4+8b,0+8c,0+8d]:	non-primitive
[3+8a,5+8b,0+8c,0+8d]:	transposed [2] by [1,0,2,3]
[2+8a,6+8b,0+8c,0+8d]:	non-primitive
[1+8a,7+8b,0+8c,0+8d]:	transposed [1] by [1,0,2,3]
[7+8a,0+8b,1+8c,0+8d]:	transposed [1] by [0,2,1,3]
[7+8a,2+8b,1+8c,0+8d]:	unknown -> [3] [7,2,1,0] 1176a+1344a²+512a³+96b+384b²+512b³+24c+192c²+512c³-512d³+352
[7+8a,4+8b,1+8c,0+8d]:	unknown -> [4] [7,4,1,0] 1176a+1344a²+512a³+384b+768b²+512b³+24c+192c²+512c³-512d³+408
[7+8a,6+8b,1+8c,0+8d]:	unknown -> [5] [7,6,1,0] 1176a+1344a²+512a³+864b+1152b²+512b³+24c+192c²+512c³-512d³+560
[0+8a,7+8b,1+8c,0+8d]:	transposed [1] by [2,0,1,3]
[2+8a,7+8b,1+8c,0+8d]:	transposed [3] by [1,0,2,3]
[4+8a,7+8b,1+8c,0+8d]:	transposed [4] by [1,0,2,3]
[6+8a,7+8b,1+8c,0+8d]:	transposed [5] by [1,0,2,3]
[6+8a,0+8b,2+8c,0+8d]:	non-primitive
[7+8a,1+8b,2+8c,0+8d]:	transposed [3] by [0,2,1,3]
[5+8a,3+8b,2+8c,0+8d]:	unknown -> [6] [5,3,2,0] 600a+960a²+512a³+216b+576b²+512b³+96c+384c²+512c³-512d³+160
[6+8a,4+8b,2+8c,0+8d]:	non-primitive
[3+8a,5+8b,2+8c,0+8d]:	transposed [6] by [1,0,2,3]
[0+8a,6+8b,2+8c,0+8d]:	non-primitive
[4+8a,6+8b,2+8c,0+8d]:	non-primitive
[1+8a,7+8b,2+8c,0+8d]:	transposed [3] by [2,0,1,3]
[5+8a,0+8b,3+8c,0+8d]:	transposed [2] by [0,2,1,3]
[5+8a,2+8b,3+8c,0+8d]:	transposed [6] by [0,2,1,3]
[5+8a,4+8b,3+8c,0+8d]:	unknown -> [7] [5,4,3,0] 600a+960a²+512a³+384b+768b²+512b³+216c+576c²+512c³-512d³+216
[0+8a,5+8b,3+8c,0+8d]:	transposed [2] by [2,0,1,3]
[2+8a,5+8b,3+8c,0+8d]:	transposed [6] by [2,0,1,3]
[4+8a,5+8b,3+8c,0+8d]:	transposed [7] by [1,0,2,3]
[6+8a,5+8b,3+8c,0+8d]:	unknown -> [8] [6,5,3,0] 864a+1152a²+512a³+600b+960b²+512b³+216c+576c²+512c³-512d³+368
[5+8a,6+8b,3+8c,0+8d]:	transposed [8] by [1,0,2,3]
[4+8a,0+8b,4+8c,0+8d]:	non-primitive
[7+8a,1+8b,4+8c,0+8d]:	transposed [4] by [0,2,1,3]
[6+8a,2+8b,4+8c,0+8d]:	non-primitive
[5+8a,3+8b,4+8c,0+8d]:	transposed [7] by [0,2,1,3]
[0+8a,4+8b,4+8c,0+8d]:	non-primitive
[3+8a,5+8b,4+8c,0+8d]:	transposed [7] by [2,0,1,3]
[2+8a,6+8b,4+8c,0+8d]:	non-primitive
[1+8a,7+8b,4+8c,0+8d]:	transposed [4] by [2,0,1,3]
[3+8a,0+8b,5+8c,0+8d]:	transposed [2] by [1,2,0,3]
[3+8a,2+8b,5+8c,0+8d]:	transposed [6] by [1,2,0,3]
[0+8a,3+8b,5+8c,0+8d]:	transposed [2] by [2,1,0,3]
[2+8a,3+8b,5+8c,0+8d]:	transposed [6] by [2,1,0,3]
[4+8a,3+8b,5+8c,0+8d]:	transposed [7] by [1,2,0,3]
[6+8a,3+8b,5+8c,0+8d]:	transposed [8] by [0,2,1,3]
[3+8a,4+8b,5+8c,0+8d]:	transposed [7] by [2,1,0,3]
[3+8a,6+8b,5+8c,0+8d]:	transposed [8] by [2,0,1,3]
[2+8a,0+8b,6+8c,0+8d]:	non-primitive
[7+8a,1+8b,6+8c,0+8d]:	transposed [5] by [0,2,1,3]
[0+8a,2+8b,6+8c,0+8d]:	non-primitive
[4+8a,2+8b,6+8c,0+8d]:	non-primitive
[5+8a,3+8b,6+8c,0+8d]:	transposed [8] by [1,2,0,3]
[2+8a,4+8b,6+8c,0+8d]:	non-primitive
[3+8a,5+8b,6+8c,0+8d]:	transposed [8] by [2,1,0,3]
[1+8a,7+8b,6+8c,0+8d]:	transposed [5] by [2,0,1,3]
[1+8a,0+8b,7+8c,0+8d]:	transposed [1] by [1,2,0,3]
[0+8a,1+8b,7+8c,0+8d]:	transposed [1] by [2,1,0,3]
[2+8a,1+8b,7+8c,0+8d]:	transposed [3] by [1,2,0,3]
[4+8a,1+8b,7+8c,0+8d]:	transposed [4] by [1,2,0,3]
[6+8a,1+8b,7+8c,0+8d]:	transposed [5] by [1,2,0,3]
[1+8a,2+8b,7+8c,0+8d]:	transposed [3] by [2,1,0,3]
[1+8a,4+8b,7+8c,0+8d]:	transposed [4] by [2,1,0,3]
[1+8a,6+8b,7+8c,0+8d]:	transposed [5] by [2,1,0,3]
[1+8a,0+8b,0+8c,1+8d]:	unknown -> [9] [1,0,0,1] 24a+192a²+512a³+512b³+512c³-24d-192d²-512d³
-> solution [1,0,0,1],trivial(3) [9,0,0,9],trivial(3)
[0+8a,1+8b,0+8c,1+8d]:	transposed [9] by [1,0,2,3]
[2+8a,1+8b,0+8c,1+8d]:	unknown -> [10] [2,1,0,1] 96a+384a²+512a³+24b+192b²+512b³+512c³-24d-192d²-512d³+8
[4+8a,1+8b,0+8c,1+8d]:	unknown -> [11] [4,1,0,1] 384a+768a²+512a³+24b+192b²+512b³+512c³-24d-192d²-512d³+64
[6+8a,1+8b,0+8c,1+8d]:	unknown -> [12] [6,1,0,1] 864a+1152a²+512a³+24b+192b²+512b³+512c³-24d-192d²-512d³+216
-> solution [6,1,8,9],NONTRIVIAL
[1+8a,2+8b,0+8c,1+8d]:	transposed [10] by [1,0,2,3]
[1+8a,4+8b,0+8c,1+8d]:	transposed [11] by [1,0,2,3]
[1+8a,6+8b,0+8c,1+8d]:	transposed [12] by [1,0,2,3]
[0+8a,0+8b,1+8c,1+8d]:	transposed [9] by [1,2,0,3]
[2+8a,0+8b,1+8c,1+8d]:	transposed [10] by [0,2,1,3]
[4+8a,0+8b,1+8c,1+8d]:	transposed [11] by [0,2,1,3]
[6+8a,0+8b,1+8c,1+8d]:	transposed [12] by [0,2,1,3]
[7+8a,1+8b,1+8c,1+8d]:	unknown -> [13] [7,1,1,1] 1176a+1344a²+512a³+24b+192b²+512b³+24c+192c²+512c³-24d-192d²-512d³+344
[0+8a,2+8b,1+8c,1+8d]:	transposed [10] by [2,0,1,3]
[2+8a,2+8b,1+8c,1+8d]:	unknown -> [14] [2,2,1,1] 96a+384a²+512a³+96b+384b²+512b³+24c+192c²+512c³-24d-192d²-512d³+16
[4+8a,2+8b,1+8c,1+8d]:	unknown -> [15] [4,2,1,1] 384a+768a²+512a³+96b+384b²+512b³+24c+192c²+512c³-24d-192d²-512d³+72
[6+8a,2+8b,1+8c,1+8d]:	unknown -> [16] [6,2,1,1] 864a+1152a²+512a³+96b+384b²+512b³+24c+192c²+512c³-24d-192d²-512d³+224
[5+8a,3+8b,1+8c,1+8d]:	unknown -> [17] [5,3,1,1] 600a+960a²+512a³+216b+576b²+512b³+24c+192c²+512c³-24d-192d²-512d³+152
[0+8a,4+8b,1+8c,1+8d]:	transposed [11] by [2,0,1,3]
[2+8a,4+8b,1+8c,1+8d]:	transposed [15] by [1,0,2,3]
[4+8a,4+8b,1+8c,1+8d]:	unknown -> [18] [4,4,1,1] 384a+768a²+512a³+384b+768b²+512b³+24c+192c²+512c³-24d-192d²-512d³+128
[6+8a,4+8b,1+8c,1+8d]:	unknown -> [19] [6,4,1,1] 864a+1152a²+512a³+384b+768b²+512b³+24c+192c²+512c³-24d-192d²-512d³+280
[3+8a,5+8b,1+8c,1+8d]:	transposed [17] by [1,0,2,3]
[0+8a,6+8b,1+8c,1+8d]:	transposed [12] by [2,0,1,3]
[2+8a,6+8b,1+8c,1+8d]:	transposed [16] by [1,0,2,3]
[4+8a,6+8b,1+8c,1+8d]:	transposed [19] by [1,0,2,3]
[6+8a,6+8b,1+8c,1+8d]:	unknown -> [20] [6,6,1,1] 864a+1152a²+512a³+864b+1152b²+512b³+24c+192c²+512c³-24d-192d²-512d³+432
[1+8a,7+8b,1+8c,1+8d]:	transposed [13] by [1,0,2,3]
[1+8a,0+8b,2+8c,1+8d]:	transposed [10] by [1,2,0,3]
[0+8a,1+8b,2+8c,1+8d]:	transposed [10] by [2,1,0,3]
[2+8a,1+8b,2+8c,1+8d]:	transposed [14] by [0,2,1,3]
[4+8a,1+8b,2+8c,1+8d]:	transposed [15] by [0,2,1,3]
[6+8a,1+8b,2+8c,1+8d]:	transposed [16] by [0,2,1,3]
[1+8a,2+8b,2+8c,1+8d]:	transposed [14] by [2,0,1,3]
[1+8a,4+8b,2+8c,1+8d]:	transposed [15] by [2,0,1,3]
[1+8a,6+8b,2+8c,1+8d]:	transposed [16] by [2,0,1,3]
[5+8a,1+8b,3+8c,1+8d]:	transposed [17] by [0,2,1,3]
[3+8a,3+8b,3+8c,1+8d]:	unknown -> [21] [3,3,3,1] 216a+576a²+512a³+216b+576b²+512b³+216c+576c²+512c³-24d-192d²-512d³+80
[1+8a,5+8b,3+8c,1+8d]:	transposed [17] by [2,0,1,3]
[7+8a,7+8b,3+8c,1+8d]:	unknown -> [22] [7,7,3,1] 1176a+1344a²+512a³+1176b+1344b²+512b³+216c+576c²+512c³-24d-192d²-512d³+712
[1+8a,0+8b,4+8c,1+8d]:	transposed [11] by [1,2,0,3]
[0+8a,1+8b,4+8c,1+8d]:	transposed [11] by [2,1,0,3]
[2+8a,1+8b,4+8c,1+8d]:	transposed [15] by [1,2,0,3]
[4+8a,1+8b,4+8c,1+8d]:	transposed [18] by [0,2,1,3]
[6+8a,1+8b,4+8c,1+8d]:	transposed [19] by [0,2,1,3]
[1+8a,2+8b,4+8c,1+8d]:	transposed [15] by [2,1,0,3]
[1+8a,4+8b,4+8c,1+8d]:	transposed [18] by [2,0,1,3]
[1+8a,6+8b,4+8c,1+8d]:	transposed [19] by [2,0,1,3]
[3+8a,1+8b,5+8c,1+8d]:	transposed [17] by [1,2,0,3]
[1+8a,3+8b,5+8c,1+8d]:	transposed [17] by [2,1,0,3]
[7+8a,5+8b,5+8c,1+8d]:	unknown -> [23] [7,5,5,1] 1176a+1344a²+512a³+600b+960b²+512b³+600c+960c²+512c³-24d-192d²-512d³+592
[5+8a,7+8b,5+8c,1+8d]:	transposed [23] by [1,0,2,3]
[1+8a,0+8b,6+8c,1+8d]:	transposed [12] by [1,2,0,3]
[0+8a,1+8b,6+8c,1+8d]:	transposed [12] by [2,1,0,3]
[2+8a,1+8b,6+8c,1+8d]:	transposed [16] by [1,2,0,3]
[4+8a,1+8b,6+8c,1+8d]:	transposed [19] by [1,2,0,3]
[6+8a,1+8b,6+8c,1+8d]:	transposed [20] by [0,2,1,3]
[1+8a,2+8b,6+8c,1+8d]:	transposed [16] by [2,1,0,3]
[1+8a,4+8b,6+8c,1+8d]:	transposed [19] by [2,1,0,3]
[1+8a,6+8b,6+8c,1+8d]:	transposed [20] by [2,0,1,3]
[1+8a,1+8b,7+8c,1+8d]:	transposed [13] by [1,2,0,3]
[7+8a,3+8b,7+8c,1+8d]:	transposed [22] by [0,2,1,3]
[5+8a,5+8b,7+8c,1+8d]:	transposed [23] by [1,2,0,3]
[3+8a,7+8b,7+8c,1+8d]:	transposed [22] by [2,0,1,3]
[2+8a,0+8b,0+8c,2+8d]:	non-primitive
-> solution [2,0,0,2],trivial(3) [10,0,0,10],trivial(3)
[7+8a,1+8b,0+8c,2+8d]:	unknown -> [24] [7,1,0,2] 1176a+1344a²+512a³+24b+192b²+512b³+512c³-96d-384d²-512d³+336
[0+8a,2+8b,0+8c,2+8d]:	non-primitive
-> solution [0,2,0,2],trivial(3) [0,10,0,10],trivial(3)
[4+8a,2+8b,0+8c,2+8d]:	non-primitive
[5+8a,3+8b,0+8c,2+8d]:	unknown -> [25] [5,3,0,2] 600a+960a²+512a³+216b+576b²+512b³+512c³-96d-384d²-512d³+144
[2+8a,4+8b,0+8c,2+8d]:	non-primitive
[3+8a,5+8b,0+8c,2+8d]:	transposed [25] by [1,0,2,3]
[1+8a,7+8b,0+8c,2+8d]:	transposed [24] by [1,0,2,3]
[7+8a,0+8b,1+8c,2+8d]:	transposed [24] by [0,2,1,3]
[7+8a,2+8b,1+8c,2+8d]:	unknown -> [26] [7,2,1,2] 1176a+1344a²+512a³+96b+384b²+512b³+24c+192c²+512c³-96d-384d²-512d³+344
[7+8a,4+8b,1+8c,2+8d]:	unknown -> [27] [7,4,1,2] 1176a+1344a²+512a³+384b+768b²+512b³+24c+192c²+512c³-96d-384d²-512d³+400
[7+8a,6+8b,1+8c,2+8d]:	unknown -> [28] [7,6,1,2] 1176a+1344a²+512a³+864b+1152b²+512b³+24c+192c²+512c³-96d-384d²-512d³+552
[0+8a,7+8b,1+8c,2+8d]:	transposed [24] by [2,0,1,3]
[2+8a,7+8b,1+8c,2+8d]:	transposed [26] by [1,0,2,3]
[4+8a,7+8b,1+8c,2+8d]:	transposed [27] by [1,0,2,3]
[6+8a,7+8b,1+8c,2+8d]:	transposed [28] by [1,0,2,3]
[0+8a,0+8b,2+8c,2+8d]:	non-primitive
-> solution [0,0,2,2],trivial(3) [0,0,10,10],trivial(3)
[4+8a,0+8b,2+8c,2+8d]:	non-primitive
[7+8a,1+8b,2+8c,2+8d]:	transposed [26] by [0,2,1,3]
[6+8a,2+8b,2+8c,2+8d]:	non-primitive
[5+8a,3+8b,2+8c,2+8d]:	unknown -> [29] [5,3,2,2] 600a+960a²+512a³+216b+576b²+512b³+96c+384c²+512c³-96d-384d²-512d³+152
[0+8a,4+8b,2+8c,2+8d]:	non-primitive
[4+8a,4+8b,2+8c,2+8d]:	non-primitive
[3+8a,5+8b,2+8c,2+8d]:	transposed [29] by [1,0,2,3]
[2+8a,6+8b,2+8c,2+8d]:	non-primitive
[1+8a,7+8b,2+8c,2+8d]:	transposed [26] by [2,0,1,3]
[5+8a,0+8b,3+8c,2+8d]:	transposed [25] by [0,2,1,3]
[5+8a,2+8b,3+8c,2+8d]:	transposed [29] by [0,2,1,3]
[5+8a,4+8b,3+8c,2+8d]:	unknown -> [30] [5,4,3,2] 600a+960a²+512a³+384b+768b²+512b³+216c+576c²+512c³-96d-384d²-512d³+208
[0+8a,5+8b,3+8c,2+8d]:	transposed [25] by [2,0,1,3]
[2+8a,5+8b,3+8c,2+8d]:	transposed [29] by [2,0,1,3]
[4+8a,5+8b,3+8c,2+8d]:	transposed [30] by [1,0,2,3]
[6+8a,5+8b,3+8c,2+8d]:	unknown -> [31] [6,5,3,2] 864a+1152a²+512a³+600b+960b²+512b³+216c+576c²+512c³-96d-384d²-512d³+360
[5+8a,6+8b,3+8c,2+8d]:	transposed [31] by [1,0,2,3]
[2+8a,0+8b,4+8c,2+8d]:	non-primitive
[7+8a,1+8b,4+8c,2+8d]:	transposed [27] by [0,2,1,3]
[0+8a,2+8b,4+8c,2+8d]:	non-primitive
[4+8a,2+8b,4+8c,2+8d]:	non-primitive
[5+8a,3+8b,4+8c,2+8d]:	transposed [30] by [0,2,1,3]
[2+8a,4+8b,4+8c,2+8d]:	non-primitive
[3+8a,5+8b,4+8c,2+8d]:	transposed [30] by [2,0,1,3]
[1+8a,7+8b,4+8c,2+8d]:	transposed [27] by [2,0,1,3]
[3+8a,0+8b,5+8c,2+8d]:	transposed [25] by [1,2,0,3]
[3+8a,2+8b,5+8c,2+8d]:	transposed [29] by [1,2,0,3]
[0+8a,3+8b,5+8c,2+8d]:	transposed [25] by [2,1,0,3]
[2+8a,3+8b,5+8c,2+8d]:	transposed [29] by [2,1,0,3]
[4+8a,3+8b,5+8c,2+8d]:	transposed [30] by [1,2,0,3]
[6+8a,3+8b,5+8c,2+8d]:	transposed [31] by [0,2,1,3]
[3+8a,4+8b,5+8c,2+8d]:	transposed [30] by [2,1,0,3]
[3+8a,6+8b,5+8c,2+8d]:	transposed [31] by [2,0,1,3]
[7+8a,1+8b,6+8c,2+8d]:	transposed [28] by [0,2,1,3]
[2+8a,2+8b,6+8c,2+8d]:	non-primitive
[5+8a,3+8b,6+8c,2+8d]:	transposed [31] by [1,2,0,3]
[3+8a,5+8b,6+8c,2+8d]:	transposed [31] by [2,1,0,3]
[6+8a,6+8b,6+8c,2+8d]:	non-primitive
[1+8a,7+8b,6+8c,2+8d]:	transposed [28] by [2,0,1,3]
[1+8a,0+8b,7+8c,2+8d]:	transposed [24] by [1,2,0,3]
[0+8a,1+8b,7+8c,2+8d]:	transposed [24] by [2,1,0,3]
[2+8a,1+8b,7+8c,2+8d]:	transposed [26] by [1,2,0,3]
[4+8a,1+8b,7+8c,2+8d]:	transposed [27] by [1,2,0,3]
[6+8a,1+8b,7+8c,2+8d]:	transposed [28] by [1,2,0,3]
[1+8a,2+8b,7+8c,2+8d]:	transposed [26] by [2,1,0,3]
[1+8a,4+8b,7+8c,2+8d]:	transposed [27] by [2,1,0,3]
[1+8a,6+8b,7+8c,2+8d]:	transposed [28] by [2,1,0,3]
[3+8a,0+8b,0+8c,3+8d]:	unknown -> [32] [3,0,0,3] 216a+576a²+512a³+512b³+512c³-216d-576d²-512d³
-> solution [3,0,0,3],trivial(3) [11,0,0,11],trivial(3)
[3+8a,2+8b,0+8c,3+8d]:	unknown -> [33] [3,2,0,3] 216a+576a²+512a³+96b+384b²+512b³+512c³-216d-576d²-512d³+8
[0+8a,3+8b,0+8c,3+8d]:	transposed [32] by [1,0,2,3]
[2+8a,3+8b,0+8c,3+8d]:	transposed [33] by [1,0,2,3]
[4+8a,3+8b,0+8c,3+8d]:	unknown -> [34] [4,3,0,3] 384a+768a²+512a³+216b+576b²+512b³+512c³-216d-576d²-512d³+64
[6+8a,3+8b,0+8c,3+8d]:	unknown -> [35] [6,3,0,3] 864a+1152a²+512a³+216b+576b²+512b³+512c³-216d-576d²-512d³+216
[3+8a,4+8b,0+8c,3+8d]:	transposed [34] by [1,0,2,3]
[3+8a,6+8b,0+8c,3+8d]:	transposed [35] by [1,0,2,3]
[1+8a,1+8b,1+8c,3+8d]:	unknown -> [36] [1,1,1,3] 24a+192a²+512a³+24b+192b²+512b³+24c+192c²+512c³-216d-576d²-512d³-24
[7+8a,3+8b,1+8c,3+8d]:	unknown -> [37] [7,3,1,3] 1176a+1344a²+512a³+216b+576b²+512b³+24c+192c²+512c³-216d-576d²-512d³+344
[5+8a,5+8b,1+8c,3+8d]:	unknown -> [38] [5,5,1,3] 600a+960a²+512a³+600b+960b²+512b³+24c+192c²+512c³-216d-576d²-512d³+224
[3+8a,7+8b,1+8c,3+8d]:	transposed [37] by [1,0,2,3]
[3+8a,0+8b,2+8c,3+8d]:	transposed [33] by [0,2,1,3]
[3+8a,2+8b,2+8c,3+8d]:	unknown -> [39] [3,2,2,3] 216a+576a²+512a³+96b+384b²+512b³+96c+384c²+512c³-216d-576d²-512d³+16
[0+8a,3+8b,2+8c,3+8d]:	transposed [33] by [2,0,1,3]
[2+8a,3+8b,2+8c,3+8d]:	transposed [39] by [1,0,2,3]
[4+8a,3+8b,2+8c,3+8d]:	unknown -> [40] [4,3,2,3] 384a+768a²+512a³+216b+576b²+512b³+96c+384c²+512c³-216d-576d²-512d³+72
[6+8a,3+8b,2+8c,3+8d]:	unknown -> [41] [6,3,2,3] 864a+1152a²+512a³+216b+576b²+512b³+96c+384c²+512c³-216d-576d²-512d³+224
[3+8a,4+8b,2+8c,3+8d]:	transposed [40] by [1,0,2,3]
[3+8a,6+8b,2+8c,3+8d]:	transposed [41] by [1,0,2,3]
[0+8a,0+8b,3+8c,3+8d]:	transposed [32] by [1,2,0,3]
[2+8a,0+8b,3+8c,3+8d]:	transposed [33] by [1,2,0,3]
[4+8a,0+8b,3+8c,3+8d]:	transposed [34] by [0,2,1,3]
[6+8a,0+8b,3+8c,3+8d]:	transposed [35] by [0,2,1,3]
[7+8a,1+8b,3+8c,3+8d]:	transposed [37] by [0,2,1,3]
[0+8a,2+8b,3+8c,3+8d]:	transposed [33] by [2,1,0,3]
[2+8a,2+8b,3+8c,3+8d]:	transposed [39] by [1,2,0,3]
[4+8a,2+8b,3+8c,3+8d]:	transposed [40] by [0,2,1,3]
[6+8a,2+8b,3+8c,3+8d]:	transposed [41] by [0,2,1,3]
[5+8a,3+8b,3+8c,3+8d]:	unknown -> [42] [5,3,3,3] 600a+960a²+512a³+216b+576b²+512b³+216c+576c²+512c³-216d-576d²-512d³+152
[0+8a,4+8b,3+8c,3+8d]:	transposed [34] by [2,0,1,3]
[2+8a,4+8b,3+8c,3+8d]:	transposed [40] by [2,0,1,3]
[4+8a,4+8b,3+8c,3+8d]:	unknown -> [43] [4,4,3,3] 384a+768a²+512a³+384b+768b²+512b³+216c+576c²+512c³-216d-576d²-512d³+128
[6+8a,4+8b,3+8c,3+8d]:	unknown -> [44] [6,4,3,3] 864a+1152a²+512a³+384b+768b²+512b³+216c+576c²+512c³-216d-576d²-512d³+280
[3+8a,5+8b,3+8c,3+8d]:	transposed [42] by [1,0,2,3]
[0+8a,6+8b,3+8c,3+8d]:	transposed [35] by [2,0,1,3]
[2+8a,6+8b,3+8c,3+8d]:	transposed [41] by [2,0,1,3]
[4+8a,6+8b,3+8c,3+8d]:	transposed [44] by [1,0,2,3]
[6+8a,6+8b,3+8c,3+8d]:	unknown -> [45] [6,6,3,3] 864a+1152a²+512a³+864b+1152b²+512b³+216c+576c²+512c³-216d-576d²-512d³+432
[1+8a,7+8b,3+8c,3+8d]:	transposed [37] by [2,0,1,3]
[3+8a,0+8b,4+8c,3+8d]:	transposed [34] by [1,2,0,3]
[3+8a,2+8b,4+8c,3+8d]:	transposed [40] by [1,2,0,3]
[0+8a,3+8b,4+8c,3+8d]:	transposed [34] by [2,1,0,3]
[2+8a,3+8b,4+8c,3+8d]:	transposed [40] by [2,1,0,3]
[4+8a,3+8b,4+8c,3+8d]:	transposed [43] by [0,2,1,3]
[6+8a,3+8b,4+8c,3+8d]:	transposed [44] by [0,2,1,3]
[3+8a,4+8b,4+8c,3+8d]:	transposed [43] by [2,0,1,3]
[3+8a,6+8b,4+8c,3+8d]:	transposed [44] by [2,0,1,3]
[5+8a,1+8b,5+8c,3+8d]:	transposed [38] by [0,2,1,3]
[3+8a,3+8b,5+8c,3+8d]:	transposed [42] by [1,2,0,3]
[1+8a,5+8b,5+8c,3+8d]:	transposed [38] by [2,0,1,3]
[7+8a,7+8b,5+8c,3+8d]:	unknown -> [46] [7,7,5,3] 1176a+1344a²+512a³+1176b+1344b²+512b³+600c+960c²+512c³-216d-576d²-512d³+784
[3+8a,0+8b,6+8c,3+8d]:	transposed [35] by [1,2,0,3]
[3+8a,2+8b,6+8c,3+8d]:	transposed [41] by [1,2,0,3]
[0+8a,3+8b,6+8c,3+8d]:	transposed [35] by [2,1,0,3]
[2+8a,3+8b,6+8c,3+8d]:	transposed [41] by [2,1,0,3]
[4+8a,3+8b,6+8c,3+8d]:	transposed [44] by [1,2,0,3]
[6+8a,3+8b,6+8c,3+8d]:	transposed [45] by [0,2,1,3]
[3+8a,4+8b,6+8c,3+8d]:	transposed [44] by [2,1,0,3]
[3+8a,6+8b,6+8c,3+8d]:	transposed [45] by [2,0,1,3]
[3+8a,1+8b,7+8c,3+8d]:	transposed [37] by [1,2,0,3]
[1+8a,3+8b,7+8c,3+8d]:	transposed [37] by [2,1,0,3]
[7+8a,5+8b,7+8c,3+8d]:	transposed [46] by [0,2,1,3]
[5+8a,7+8b,7+8c,3+8d]:	transposed [46] by [2,0,1,3]
[4+8a,0+8b,0+8c,4+8d]:	non-primitive
-> solution [4,0,0,4],trivial(3) [12,0,0,12],trivial(3)
[7+8a,1+8b,0+8c,4+8d]:	unknown -> [47] [7,1,0,4] 1176a+1344a²+512a³+24b+192b²+512b³+512c³-384d-768d²-512d³+280
[6+8a,2+8b,0+8c,4+8d]:	non-primitive
-> solution [6,10,8,12],NONTRIVIAL
[5+8a,3+8b,0+8c,4+8d]:	unknown -> [48] [5,3,0,4] 600a+960a²+512a³+216b+576b²+512b³+512c³-384d-768d²-512d³+88
[0+8a,4+8b,0+8c,4+8d]:	non-primitive
-> solution [0,4,0,4],trivial(3) [0,12,0,12],trivial(3)
[3+8a,5+8b,0+8c,4+8d]:	transposed [48] by [1,0,2,3]
[2+8a,6+8b,0+8c,4+8d]:	non-primitive
-> solution [10,6,8,12],NONTRIVIAL
[1+8a,7+8b,0+8c,4+8d]:	transposed [47] by [1,0,2,3]
[7+8a,0+8b,1+8c,4+8d]:	transposed [47] by [0,2,1,3]
[7+8a,2+8b,1+8c,4+8d]:	unknown -> [49] [7,2,1,4] 1176a+1344a²+512a³+96b+384b²+512b³+24c+192c²+512c³-384d-768d²-512d³+288
[7+8a,4+8b,1+8c,4+8d]:	unknown -> [50] [7,4,1,4] 1176a+1344a²+512a³+384b+768b²+512b³+24c+192c²+512c³-384d-768d²-512d³+344
[7+8a,6+8b,1+8c,4+8d]:	unknown -> [51] [7,6,1,4] 1176a+1344a²+512a³+864b+1152b²+512b³+24c+192c²+512c³-384d-768d²-512d³+496
[0+8a,7+8b,1+8c,4+8d]:	transposed [47] by [2,0,1,3]
[2+8a,7+8b,1+8c,4+8d]:	transposed [49] by [1,0,2,3]
[4+8a,7+8b,1+8c,4+8d]:	transposed [50] by [1,0,2,3]
[6+8a,7+8b,1+8c,4+8d]:	transposed [51] by [1,0,2,3]
[6+8a,0+8b,2+8c,4+8d]:	non-primitive
-> solution [6,8,10,12],NONTRIVIAL
[7+8a,1+8b,2+8c,4+8d]:	transposed [49] by [0,2,1,3]
[5+8a,3+8b,2+8c,4+8d]:	unknown -> [52] [5,3,2,4] 600a+960a²+512a³+216b+576b²+512b³+96c+384c²+512c³-384d-768d²-512d³+96
[6+8a,4+8b,2+8c,4+8d]:	non-primitive
[3+8a,5+8b,2+8c,4+8d]:	transposed [52] by [1,0,2,3]
[0+8a,6+8b,2+8c,4+8d]:	non-primitive
-> solution [8,6,10,12],NONTRIVIAL
[4+8a,6+8b,2+8c,4+8d]:	non-primitive
[1+8a,7+8b,2+8c,4+8d]:	transposed [49] by [2,0,1,3]
[5+8a,0+8b,3+8c,4+8d]:	transposed [48] by [0,2,1,3]
[5+8a,2+8b,3+8c,4+8d]:	transposed [52] by [0,2,1,3]
[5+8a,4+8b,3+8c,4+8d]:	unknown -> [53] [5,4,3,4] 600a+960a²+512a³+384b+768b²+512b³+216c+576c²+512c³-384d-768d²-512d³+152
[0+8a,5+8b,3+8c,4+8d]:	transposed [48] by [2,0,1,3]
[2+8a,5+8b,3+8c,4+8d]:	transposed [52] by [2,0,1,3]
[4+8a,5+8b,3+8c,4+8d]:	transposed [53] by [1,0,2,3]
[6+8a,5+8b,3+8c,4+8d]:	unknown -> [54] [6,5,3,4] 864a+1152a²+512a³+600b+960b²+512b³+216c+576c²+512c³-384d-768d²-512d³+304
[5+8a,6+8b,3+8c,4+8d]:	transposed [54] by [1,0,2,3]
[0+8a,0+8b,4+8c,4+8d]:	non-primitive
-> solution [0,0,4,4],trivial(3) [0,0,12,12],trivial(3)
[7+8a,1+8b,4+8c,4+8d]:	transposed [50] by [0,2,1,3]
[6+8a,2+8b,4+8c,4+8d]:	non-primitive
[5+8a,3+8b,4+8c,4+8d]:	transposed [53] by [0,2,1,3]
[4+8a,4+8b,4+8c,4+8d]:	non-primitive
[3+8a,5+8b,4+8c,4+8d]:	transposed [53] by [2,0,1,3]
[2+8a,6+8b,4+8c,4+8d]:	non-primitive
[1+8a,7+8b,4+8c,4+8d]:	transposed [50] by [2,0,1,3]
[3+8a,0+8b,5+8c,4+8d]:	transposed [48] by [1,2,0,3]
[3+8a,2+8b,5+8c,4+8d]:	transposed [52] by [1,2,0,3]
[0+8a,3+8b,5+8c,4+8d]:	transposed [48] by [2,1,0,3]
[2+8a,3+8b,5+8c,4+8d]:	transposed [52] by [2,1,0,3]
[4+8a,3+8b,5+8c,4+8d]:	transposed [53] by [1,2,0,3]
[6+8a,3+8b,5+8c,4+8d]:	transposed [54] by [0,2,1,3]
[3+8a,4+8b,5+8c,4+8d]:	transposed [53] by [2,1,0,3]
[3+8a,6+8b,5+8c,4+8d]:	transposed [54] by [2,0,1,3]
[2+8a,0+8b,6+8c,4+8d]:	non-primitive
-> solution [10,8,6,12],NONTRIVIAL
[7+8a,1+8b,6+8c,4+8d]:	transposed [51] by [0,2,1,3]
[0+8a,2+8b,6+8c,4+8d]:	non-primitive
-> solution [8,10,6,12],NONTRIVIAL
[4+8a,2+8b,6+8c,4+8d]:	non-primitive
[5+8a,3+8b,6+8c,4+8d]:	transposed [54] by [1,2,0,3]
[2+8a,4+8b,6+8c,4+8d]:	non-primitive
[3+8a,5+8b,6+8c,4+8d]:	transposed [54] by [2,1,0,3]
[1+8a,7+8b,6+8c,4+8d]:	transposed [51] by [2,0,1,3]
[1+8a,0+8b,7+8c,4+8d]:	transposed [47] by [1,2,0,3]
[0+8a,1+8b,7+8c,4+8d]:	transposed [47] by [2,1,0,3]
[2+8a,1+8b,7+8c,4+8d]:	transposed [49] by [1,2,0,3]
[4+8a,1+8b,7+8c,4+8d]:	transposed [50] by [1,2,0,3]
[6+8a,1+8b,7+8c,4+8d]:	transposed [51] by [1,2,0,3]
[1+8a,2+8b,7+8c,4+8d]:	transposed [49] by [2,1,0,3]
[1+8a,4+8b,7+8c,4+8d]:	transposed [50] by [2,1,0,3]
[1+8a,6+8b,7+8c,4+8d]:	transposed [51] by [2,1,0,3]
[5+8a,0+8b,0+8c,5+8d]:	unknown -> [55] [5,0,0,5] 600a+960a²+512a³+512b³+512c³-600d-960d²-512d³
-> solution [5,0,0,5],trivial(3) [13,0,0,13],trivial(3)
[5+8a,2+8b,0+8c,5+8d]:	unknown -> [56] [5,2,0,5] 600a+960a²+512a³+96b+384b²+512b³+512c³-600d-960d²-512d³+8
[5+8a,4+8b,0+8c,5+8d]:	unknown -> [57] [5,4,0,5] 600a+960a²+512a³+384b+768b²+512b³+512c³-600d-960d²-512d³+64
[0+8a,5+8b,0+8c,5+8d]:	transposed [55] by [1,0,2,3]
[2+8a,5+8b,0+8c,5+8d]:	transposed [56] by [1,0,2,3]
[4+8a,5+8b,0+8c,5+8d]:	transposed [57] by [1,0,2,3]
[6+8a,5+8b,0+8c,5+8d]:	unknown -> [58] [6,5,0,5] 864a+1152a²+512a³+600b+960b²+512b³+512c³-600d-960d²-512d³+216
[5+8a,6+8b,0+8c,5+8d]:	transposed [58] by [1,0,2,3]
[3+8a,1+8b,1+8c,5+8d]:	unknown -> [59] [3,1,1,5] 216a+576a²+512a³+24b+192b²+512b³+24c+192c²+512c³-600d-960d²-512d³-96
[1+8a,3+8b,1+8c,5+8d]:	transposed [59] by [1,0,2,3]
[7+8a,5+8b,1+8c,5+8d]:	unknown -> [60] [7,5,1,5] 1176a+1344a²+512a³+600b+960b²+512b³+24c+192c²+512c³-600d-960d²-512d³+344
[5+8a,7+8b,1+8c,5+8d]:	transposed [60] by [1,0,2,3]
[5+8a,0+8b,2+8c,5+8d]:	transposed [56] by [0,2,1,3]
[5+8a,2+8b,2+8c,5+8d]:	unknown -> [61] [5,2,2,5] 600a+960a²+512a³+96b+384b²+512b³+96c+384c²+512c³-600d-960d²-512d³+16
[5+8a,4+8b,2+8c,5+8d]:	unknown -> [62] [5,4,2,5] 600a+960a²+512a³+384b+768b²+512b³+96c+384c²+512c³-600d-960d²-512d³+72
[0+8a,5+8b,2+8c,5+8d]:	transposed [56] by [2,0,1,3]
[2+8a,5+8b,2+8c,5+8d]:	transposed [61] by [1,0,2,3]
[4+8a,5+8b,2+8c,5+8d]:	transposed [62] by [1,0,2,3]
[6+8a,5+8b,2+8c,5+8d]:	unknown -> [63] [6,5,2,5] 864a+1152a²+512a³+600b+960b²+512b³+96c+384c²+512c³-600d-960d²-512d³+224
[5+8a,6+8b,2+8c,5+8d]:	transposed [63] by [1,0,2,3]
[1+8a,1+8b,3+8c,5+8d]:	transposed [59] by [1,2,0,3]
[7+8a,3+8b,3+8c,5+8d]:	unknown -> [64] [7,3,3,5] 1176a+1344a²+512a³+216b+576b²+512b³+216c+576c²+512c³-600d-960d²-512d³+272
[5+8a,5+8b,3+8c,5+8d]:	unknown -> [65] [5,5,3,5] 600a+960a²+512a³+600b+960b²+512b³+216c+576c²+512c³-600d-960d²-512d³+152
[3+8a,7+8b,3+8c,5+8d]:	transposed [64] by [1,0,2,3]
[5+8a,0+8b,4+8c,5+8d]:	transposed [57] by [0,2,1,3]
[5+8a,2+8b,4+8c,5+8d]:	transposed [62] by [0,2,1,3]
[5+8a,4+8b,4+8c,5+8d]:	unknown -> [66] [5,4,4,5] 600a+960a²+512a³+384b+768b²+512b³+384c+768c²+512c³-600d-960d²-512d³+128
[0+8a,5+8b,4+8c,5+8d]:	transposed [57] by [2,0,1,3]
[2+8a,5+8b,4+8c,5+8d]:	transposed [62] by [2,0,1,3]
[4+8a,5+8b,4+8c,5+8d]:	transposed [66] by [1,0,2,3]
[6+8a,5+8b,4+8c,5+8d]:	unknown -> [67] [6,5,4,5] 864a+1152a²+512a³+600b+960b²+512b³+384c+768c²+512c³-600d-960d²-512d³+280
[5+8a,6+8b,4+8c,5+8d]:	transposed [67] by [1,0,2,3]
[0+8a,0+8b,5+8c,5+8d]:	transposed [55] by [1,2,0,3]
[2+8a,0+8b,5+8c,5+8d]:	transposed [56] by [1,2,0,3]
[4+8a,0+8b,5+8c,5+8d]:	transposed [57] by [1,2,0,3]
[6+8a,0+8b,5+8c,5+8d]:	transposed [58] by [0,2,1,3]
[7+8a,1+8b,5+8c,5+8d]:	transposed [60] by [0,2,1,3]
[0+8a,2+8b,5+8c,5+8d]:	transposed [56] by [2,1,0,3]
[2+8a,2+8b,5+8c,5+8d]:	transposed [61] by [1,2,0,3]
[4+8a,2+8b,5+8c,5+8d]:	transposed [62] by [1,2,0,3]
[6+8a,2+8b,5+8c,5+8d]:	transposed [63] by [0,2,1,3]
[5+8a,3+8b,5+8c,5+8d]:	transposed [65] by [0,2,1,3]
[0+8a,4+8b,5+8c,5+8d]:	transposed [57] by [2,1,0,3]
[2+8a,4+8b,5+8c,5+8d]:	transposed [62] by [2,1,0,3]
[4+8a,4+8b,5+8c,5+8d]:	transposed [66] by [1,2,0,3]
[6+8a,4+8b,5+8c,5+8d]:	transposed [67] by [0,2,1,3]
[3+8a,5+8b,5+8c,5+8d]:	transposed [65] by [2,0,1,3]
[0+8a,6+8b,5+8c,5+8d]:	transposed [58] by [2,0,1,3]
[2+8a,6+8b,5+8c,5+8d]:	transposed [63] by [2,0,1,3]
[4+8a,6+8b,5+8c,5+8d]:	transposed [67] by [2,0,1,3]
[6+8a,6+8b,5+8c,5+8d]:	unknown -> [68] [6,6,5,5] 864a+1152a²+512a³+864b+1152b²+512b³+600c+960c²+512c³-600d-960d²-512d³+432
[1+8a,7+8b,5+8c,5+8d]:	transposed [60] by [2,0,1,3]
[5+8a,0+8b,6+8c,5+8d]:	transposed [58] by [1,2,0,3]
[5+8a,2+8b,6+8c,5+8d]:	transposed [63] by [1,2,0,3]
[5+8a,4+8b,6+8c,5+8d]:	transposed [67] by [1,2,0,3]
[0+8a,5+8b,6+8c,5+8d]:	transposed [58] by [2,1,0,3]
[2+8a,5+8b,6+8c,5+8d]:	transposed [63] by [2,1,0,3]
[4+8a,5+8b,6+8c,5+8d]:	transposed [67] by [2,1,0,3]
[6+8a,5+8b,6+8c,5+8d]:	transposed [68] by [0,2,1,3]
[5+8a,6+8b,6+8c,5+8d]:	transposed [68] by [2,0,1,3]
[5+8a,1+8b,7+8c,5+8d]:	transposed [60] by [1,2,0,3]
[3+8a,3+8b,7+8c,5+8d]:	transposed [64] by [1,2,0,3]
[1+8a,5+8b,7+8c,5+8d]:	transposed [60] by [2,1,0,3]
[7+8a,7+8b,7+8c,5+8d]:	unknown -> [69] [7,7,7,5] 1176a+1344a²+512a³+1176b+1344b²+512b³+1176c+1344c²+512c³-600d-960d²-512d³+904
[6+8a,0+8b,0+8c,6+8d]:	non-primitive
-> solution [6,0,0,6],trivial(3) [14,0,0,14],trivial(3)
[7+8a,1+8b,0+8c,6+8d]:	unknown -> [70] [7,1,0,6] 1176a+1344a²+512a³+24b+192b²+512b³+512c³-864d-1152d²-512d³+128
[5+8a,3+8b,0+8c,6+8d]:	unknown -> [71] [5,3,0,6] 600a+960a²+512a³+216b+576b²+512b³+512c³-864d-1152d²-512d³-64
[6+8a,4+8b,0+8c,6+8d]:	non-primitive
[3+8a,5+8b,0+8c,6+8d]:	transposed [71] by [1,0,2,3]
[0+8a,6+8b,0+8c,6+8d]:	non-primitive
-> solution [0,6,0,6],trivial(3) [0,14,0,14],trivial(3)
[4+8a,6+8b,0+8c,6+8d]:	non-primitive
[1+8a,7+8b,0+8c,6+8d]:	transposed [70] by [1,0,2,3]
[7+8a,0+8b,1+8c,6+8d]:	transposed [70] by [0,2,1,3]
[7+8a,2+8b,1+8c,6+8d]:	unknown -> [72] [7,2,1,6] 1176a+1344a²+512a³+96b+384b²+512b³+24c+192c²+512c³-864d-1152d²-512d³+136
[7+8a,4+8b,1+8c,6+8d]:	unknown -> [73] [7,4,1,6] 1176a+1344a²+512a³+384b+768b²+512b³+24c+192c²+512c³-864d-1152d²-512d³+192
[7+8a,6+8b,1+8c,6+8d]:	unknown -> [74] [7,6,1,6] 1176a+1344a²+512a³+864b+1152b²+512b³+24c+192c²+512c³-864d-1152d²-512d³+344
[0+8a,7+8b,1+8c,6+8d]:	transposed [70] by [2,0,1,3]
[2+8a,7+8b,1+8c,6+8d]:	transposed [72] by [1,0,2,3]
[4+8a,7+8b,1+8c,6+8d]:	transposed [73] by [1,0,2,3]
[6+8a,7+8b,1+8c,6+8d]:	transposed [74] by [1,0,2,3]
[7+8a,1+8b,2+8c,6+8d]:	transposed [72] by [0,2,1,3]
[2+8a,2+8b,2+8c,6+8d]:	non-primitive
[5+8a,3+8b,2+8c,6+8d]:	unknown -> [75] [5,3,2,6] 600a+960a²+512a³+216b+576b²+512b³+96c+384c²+512c³-864d-1152d²-512d³-56
[3+8a,5+8b,2+8c,6+8d]:	transposed [75] by [1,0,2,3]
[6+8a,6+8b,2+8c,6+8d]:	non-primitive
[1+8a,7+8b,2+8c,6+8d]:	transposed [72] by [2,0,1,3]
[5+8a,0+8b,3+8c,6+8d]:	transposed [71] by [0,2,1,3]
[5+8a,2+8b,3+8c,6+8d]:	transposed [75] by [0,2,1,3]
[5+8a,4+8b,3+8c,6+8d]:	unknown -> [76] [5,4,3,6] 600a+960a²+512a³+384b+768b²+512b³+216c+576c²+512c³-864d-1152d²-512d³
-> solution [5,4,3,6],NONTRIVIAL
[0+8a,5+8b,3+8c,6+8d]:	transposed [71] by [2,0,1,3]
[2+8a,5+8b,3+8c,6+8d]:	transposed [75] by [2,0,1,3]
[4+8a,5+8b,3+8c,6+8d]:	transposed [76] by [1,0,2,3]
[6+8a,5+8b,3+8c,6+8d]:	unknown -> [77] [6,5,3,6] 864a+1152a²+512a³+600b+960b²+512b³+216c+576c²+512c³-864d-1152d²-512d³+152
[5+8a,6+8b,3+8c,6+8d]:	transposed [77] by [1,0,2,3]
[6+8a,0+8b,4+8c,6+8d]:	non-primitive
[7+8a,1+8b,4+8c,6+8d]:	transposed [73] by [0,2,1,3]
[5+8a,3+8b,4+8c,6+8d]:	transposed [76] by [0,2,1,3]
[6+8a,4+8b,4+8c,6+8d]:	non-primitive
[3+8a,5+8b,4+8c,6+8d]:	transposed [76] by [2,0,1,3]
[0+8a,6+8b,4+8c,6+8d]:	non-primitive
[4+8a,6+8b,4+8c,6+8d]:	non-primitive
[1+8a,7+8b,4+8c,6+8d]:	transposed [73] by [2,0,1,3]
[3+8a,0+8b,5+8c,6+8d]:	transposed [71] by [1,2,0,3]
[3+8a,2+8b,5+8c,6+8d]:	transposed [75] by [1,2,0,3]
[0+8a,3+8b,5+8c,6+8d]:	transposed [71] by [2,1,0,3]
[2+8a,3+8b,5+8c,6+8d]:	transposed [75] by [2,1,0,3]
[4+8a,3+8b,5+8c,6+8d]:	transposed [76] by [1,2,0,3]
[6+8a,3+8b,5+8c,6+8d]:	transposed [77] by [0,2,1,3]
[3+8a,4+8b,5+8c,6+8d]:	transposed [76] by [2,1,0,3]
[3+8a,6+8b,5+8c,6+8d]:	transposed [77] by [2,0,1,3]
[0+8a,0+8b,6+8c,6+8d]:	non-primitive
-> solution [0,0,6,6],trivial(3) [0,0,14,14],trivial(3)
[4+8a,0+8b,6+8c,6+8d]:	non-primitive
[7+8a,1+8b,6+8c,6+8d]:	transposed [74] by [0,2,1,3]
[6+8a,2+8b,6+8c,6+8d]:	non-primitive
[5+8a,3+8b,6+8c,6+8d]:	transposed [77] by [1,2,0,3]
[0+8a,4+8b,6+8c,6+8d]:	non-primitive
[4+8a,4+8b,6+8c,6+8d]:	non-primitive
[3+8a,5+8b,6+8c,6+8d]:	transposed [77] by [2,1,0,3]
[2+8a,6+8b,6+8c,6+8d]:	non-primitive
[1+8a,7+8b,6+8c,6+8d]:	transposed [74] by [2,0,1,3]
[1+8a,0+8b,7+8c,6+8d]:	transposed [70] by [1,2,0,3]
[0+8a,1+8b,7+8c,6+8d]:	transposed [70] by [2,1,0,3]
[2+8a,1+8b,7+8c,6+8d]:	transposed [72] by [1,2,0,3]
[4+8a,1+8b,7+8c,6+8d]:	transposed [73] by [1,2,0,3]
[6+8a,1+8b,7+8c,6+8d]:	transposed [74] by [1,2,0,3]
[1+8a,2+8b,7+8c,6+8d]:	transposed [72] by [2,1,0,3]
[1+8a,4+8b,7+8c,6+8d]:	transposed [73] by [2,1,0,3]
[1+8a,6+8b,7+8c,6+8d]:	transposed [74] by [2,1,0,3]
[7+8a,0+8b,0+8c,7+8d]:	unknown -> [78] [7,0,0,7] 1176a+1344a²+512a³+512b³+512c³-1176d-1344d²-512d³
-> solution [7,0,0,7],trivial(3) [15,0,0,15],trivial(3)
[7+8a,2+8b,0+8c,7+8d]:	unknown -> [79] [7,2,0,7] 1176a+1344a²+512a³+96b+384b²+512b³+512c³-1176d-1344d²-512d³+8
[7+8a,4+8b,0+8c,7+8d]:	unknown -> [80] [7,4,0,7] 1176a+1344a²+512a³+384b+768b²+512b³+512c³-1176d-1344d²-512d³+64
[7+8a,6+8b,0+8c,7+8d]:	unknown -> [81] [7,6,0,7] 1176a+1344a²+512a³+864b+1152b²+512b³+512c³-1176d-1344d²-512d³+216
[0+8a,7+8b,0+8c,7+8d]:	transposed [78] by [1,0,2,3]
[2+8a,7+8b,0+8c,7+8d]:	transposed [79] by [1,0,2,3]
[4+8a,7+8b,0+8c,7+8d]:	transposed [80] by [1,0,2,3]
[6+8a,7+8b,0+8c,7+8d]:	transposed [81] by [1,0,2,3]
[5+8a,1+8b,1+8c,7+8d]:	unknown -> [82] [5,1,1,7] 600a+960a²+512a³+24b+192b²+512b³+24c+192c²+512c³-1176d-1344d²-512d³-216
[3+8a,3+8b,1+8c,7+8d]:	unknown -> [83] [3,3,1,7] 216a+576a²+512a³+216b+576b²+512b³+24c+192c²+512c³-1176d-1344d²-512d³-288
[1+8a,5+8b,1+8c,7+8d]:	transposed [82] by [1,0,2,3]
[7+8a,7+8b,1+8c,7+8d]:	unknown -> [84] [7,7,1,7] 1176a+1344a²+512a³+1176b+1344b²+512b³+24c+192c²+512c³-1176d-1344d²-512d³+344
[7+8a,0+8b,2+8c,7+8d]:	transposed [79] by [0,2,1,3]
[7+8a,2+8b,2+8c,7+8d]:	unknown -> [85] [7,2,2,7] 1176a+1344a²+512a³+96b+384b²+512b³+96c+384c²+512c³-1176d-1344d²-512d³+16
[7+8a,4+8b,2+8c,7+8d]:	unknown -> [86] [7,4,2,7] 1176a+1344a²+512a³+384b+768b²+512b³+96c+384c²+512c³-1176d-1344d²-512d³+72
[7+8a,6+8b,2+8c,7+8d]:	unknown -> [87] [7,6,2,7] 1176a+1344a²+512a³+864b+1152b²+512b³+96c+384c²+512c³-1176d-1344d²-512d³+224
[0+8a,7+8b,2+8c,7+8d]:	transposed [79] by [2,0,1,3]
[2+8a,7+8b,2+8c,7+8d]:	transposed [85] by [1,0,2,3]
[4+8a,7+8b,2+8c,7+8d]:	transposed [86] by [1,0,2,3]
[6+8a,7+8b,2+8c,7+8d]:	transposed [87] by [1,0,2,3]
[3+8a,1+8b,3+8c,7+8d]:	transposed [83] by [0,2,1,3]
[1+8a,3+8b,3+8c,7+8d]:	transposed [83] by [2,0,1,3]
[7+8a,5+8b,3+8c,7+8d]:	unknown -> [88] [7,5,3,7] 1176a+1344a²+512a³+600b+960b²+512b³+216c+576c²+512c³-1176d-1344d²-512d³+152
[5+8a,7+8b,3+8c,7+8d]:	transposed [88] by [1,0,2,3]
[7+8a,0+8b,4+8c,7+8d]:	transposed [80] by [0,2,1,3]
[7+8a,2+8b,4+8c,7+8d]:	transposed [86] by [0,2,1,3]
[7+8a,4+8b,4+8c,7+8d]:	unknown -> [89] [7,4,4,7] 1176a+1344a²+512a³+384b+768b²+512b³+384c+768c²+512c³-1176d-1344d²-512d³+128
[7+8a,6+8b,4+8c,7+8d]:	unknown -> [90] [7,6,4,7] 1176a+1344a²+512a³+864b+1152b²+512b³+384c+768c²+512c³-1176d-1344d²-512d³+280
[0+8a,7+8b,4+8c,7+8d]:	transposed [80] by [2,0,1,3]
[2+8a,7+8b,4+8c,7+8d]:	transposed [86] by [2,0,1,3]
[4+8a,7+8b,4+8c,7+8d]:	transposed [89] by [1,0,2,3]
[6+8a,7+8b,4+8c,7+8d]:	transposed [90] by [1,0,2,3]
[1+8a,1+8b,5+8c,7+8d]:	transposed [82] by [1,2,0,3]
[7+8a,3+8b,5+8c,7+8d]:	transposed [88] by [0,2,1,3]
[5+8a,5+8b,5+8c,7+8d]:	unknown -> [91] [5,5,5,7] 600a+960a²+512a³+600b+960b²+512b³+600c+960c²+512c³-1176d-1344d²-512d³+32
[3+8a,7+8b,5+8c,7+8d]:	transposed [88] by [2,0,1,3]
[7+8a,0+8b,6+8c,7+8d]:	transposed [81] by [0,2,1,3]
[7+8a,2+8b,6+8c,7+8d]:	transposed [87] by [0,2,1,3]
[7+8a,4+8b,6+8c,7+8d]:	transposed [90] by [0,2,1,3]
[7+8a,6+8b,6+8c,7+8d]:	unknown -> [92] [7,6,6,7] 1176a+1344a²+512a³+864b+1152b²+512b³+864c+1152c²+512c³-1176d-1344d²-512d³+432
[0+8a,7+8b,6+8c,7+8d]:	transposed [81] by [2,0,1,3]
[2+8a,7+8b,6+8c,7+8d]:	transposed [87] by [2,0,1,3]
[4+8a,7+8b,6+8c,7+8d]:	transposed [90] by [2,0,1,3]
[6+8a,7+8b,6+8c,7+8d]:	transposed [92] by [1,0,2,3]
[0+8a,0+8b,7+8c,7+8d]:	transposed [78] by [1,2,0,3]
[2+8a,0+8b,7+8c,7+8d]:	transposed [79] by [1,2,0,3]
[4+8a,0+8b,7+8c,7+8d]:	transposed [80] by [1,2,0,3]
[6+8a,0+8b,7+8c,7+8d]:	transposed [81] by [1,2,0,3]
[7+8a,1+8b,7+8c,7+8d]:	transposed [84] by [0,2,1,3]
[0+8a,2+8b,7+8c,7+8d]:	transposed [79] by [2,1,0,3]
[2+8a,2+8b,7+8c,7+8d]:	transposed [85] by [1,2,0,3]
[4+8a,2+8b,7+8c,7+8d]:	transposed [86] by [1,2,0,3]
[6+8a,2+8b,7+8c,7+8d]:	transposed [87] by [1,2,0,3]
[5+8a,3+8b,7+8c,7+8d]:	transposed [88] by [1,2,0,3]
[0+8a,4+8b,7+8c,7+8d]:	transposed [80] by [2,1,0,3]
[2+8a,4+8b,7+8c,7+8d]:	transposed [86] by [2,1,0,3]
[4+8a,4+8b,7+8c,7+8d]:	transposed [89] by [1,2,0,3]
[6+8a,4+8b,7+8c,7+8d]:	transposed [90] by [1,2,0,3]
[3+8a,5+8b,7+8c,7+8d]:	transposed [88] by [2,1,0,3]
[0+8a,6+8b,7+8c,7+8d]:	transposed [81] by [2,1,0,3]
[2+8a,6+8b,7+8c,7+8d]:	transposed [87] by [2,1,0,3]
[4+8a,6+8b,7+8c,7+8d]:	transposed [90] by [2,1,0,3]
[6+8a,6+8b,7+8c,7+8d]:	transposed [92] by [1,2,0,3]
[1+8a,7+8b,7+8c,7+8d]:	transposed [84] by [2,0,1,3]
endexp[0]
---------------- level 1
Maximum level 1 [93] mod 8: a³+b³+c³-d³
