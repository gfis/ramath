TranspositionSet={[2,1,0,3],[1,2,0,3],[2,0,1,3],[0,2,1,3],[1,0,2,3]}
isHomogeneous
ExponentGCDs=[3,3,3,3]
Expanding for base=8, reasons+features=base,transpose,primitive,same,similiar 
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a³+b³+c³-d³
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[8,8,8,8]: a³+b³+c³-d³
[0+8a,0+8b,0+8c,0+8d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [8,0,0,8],trivial(3) [0,8,0,8],trivial(3) [0,0,8,8],trivial(3)
[7+8a,1+8b,0+8c,0+8d]:	unknown -> [1] [7,1,0,0] 1176a+1344a²+512a³+24b+192b²+512b³+512c³-512d³+344
[6+8a,2+8b,0+8c,0+8d]:	unknown -> [2] [6,2,0,0] 864a+1152a²+512a³+96b+384b²+512b³+512c³-512d³+224
[5+8a,3+8b,0+8c,0+8d]:	unknown -> [3] [5,3,0,0] 600a+960a²+512a³+216b+576b²+512b³+512c³-512d³+152
[4+8a,4+8b,0+8c,0+8d]:	unknown -> [4] [4,4,0,0] 384a+768a²+512a³+384b+768b²+512b³+512c³-512d³+128
[3+8a,5+8b,0+8c,0+8d]:	transposed [3] by [1,0,2,3]
[2+8a,6+8b,0+8c,0+8d]:	transposed [2] by [1,0,2,3]
[1+8a,7+8b,0+8c,0+8d]:	transposed [1] by [1,0,2,3]
[7+8a,0+8b,1+8c,0+8d]:	transposed [1] by [0,2,1,3]
[7+8a,2+8b,1+8c,0+8d]:	unknown -> [5] [7,2,1,0] 1176a+1344a²+512a³+96b+384b²+512b³+24c+192c²+512c³-512d³+352
[7+8a,4+8b,1+8c,0+8d]:	unknown -> [6] [7,4,1,0] 1176a+1344a²+512a³+384b+768b²+512b³+24c+192c²+512c³-512d³+408
[7+8a,6+8b,1+8c,0+8d]:	unknown -> [7] [7,6,1,0] 1176a+1344a²+512a³+864b+1152b²+512b³+24c+192c²+512c³-512d³+560
[0+8a,7+8b,1+8c,0+8d]:	transposed [1] by [2,0,1,3]
[2+8a,7+8b,1+8c,0+8d]:	transposed [5] by [1,0,2,3]
[4+8a,7+8b,1+8c,0+8d]:	transposed [6] by [1,0,2,3]
[6+8a,7+8b,1+8c,0+8d]:	transposed [7] by [1,0,2,3]
[6+8a,0+8b,2+8c,0+8d]:	transposed [2] by [0,2,1,3]
[7+8a,1+8b,2+8c,0+8d]:	transposed [5] by [0,2,1,3]
[5+8a,3+8b,2+8c,0+8d]:	unknown -> [8] [5,3,2,0] 600a+960a²+512a³+216b+576b²+512b³+96c+384c²+512c³-512d³+160
[6+8a,4+8b,2+8c,0+8d]:	unknown -> [9] [6,4,2,0] 864a+1152a²+512a³+384b+768b²+512b³+96c+384c²+512c³-512d³+288
[3+8a,5+8b,2+8c,0+8d]:	transposed [8] by [1,0,2,3]
[0+8a,6+8b,2+8c,0+8d]:	transposed [2] by [2,0,1,3]
[4+8a,6+8b,2+8c,0+8d]:	transposed [9] by [1,0,2,3]
[1+8a,7+8b,2+8c,0+8d]:	transposed [5] by [2,0,1,3]
[5+8a,0+8b,3+8c,0+8d]:	transposed [3] by [0,2,1,3]
[5+8a,2+8b,3+8c,0+8d]:	transposed [8] by [0,2,1,3]
[5+8a,4+8b,3+8c,0+8d]:	unknown -> [10] [5,4,3,0] 600a+960a²+512a³+384b+768b²+512b³+216c+576c²+512c³-512d³+216
[0+8a,5+8b,3+8c,0+8d]:	transposed [3] by [2,0,1,3]
[2+8a,5+8b,3+8c,0+8d]:	transposed [8] by [2,0,1,3]
[4+8a,5+8b,3+8c,0+8d]:	transposed [10] by [1,0,2,3]
[6+8a,5+8b,3+8c,0+8d]:	unknown -> [11] [6,5,3,0] 864a+1152a²+512a³+600b+960b²+512b³+216c+576c²+512c³-512d³+368
[5+8a,6+8b,3+8c,0+8d]:	transposed [11] by [1,0,2,3]
[4+8a,0+8b,4+8c,0+8d]:	transposed [4] by [0,2,1,3]
[7+8a,1+8b,4+8c,0+8d]:	transposed [6] by [0,2,1,3]
[6+8a,2+8b,4+8c,0+8d]:	transposed [9] by [0,2,1,3]
[5+8a,3+8b,4+8c,0+8d]:	transposed [10] by [0,2,1,3]
[0+8a,4+8b,4+8c,0+8d]:	transposed [4] by [2,0,1,3]
[3+8a,5+8b,4+8c,0+8d]:	transposed [10] by [2,0,1,3]
[2+8a,6+8b,4+8c,0+8d]:	transposed [9] by [2,0,1,3]
[1+8a,7+8b,4+8c,0+8d]:	transposed [6] by [2,0,1,3]
[3+8a,0+8b,5+8c,0+8d]:	transposed [3] by [1,2,0,3]
[3+8a,2+8b,5+8c,0+8d]:	transposed [8] by [1,2,0,3]
[0+8a,3+8b,5+8c,0+8d]:	transposed [3] by [2,1,0,3]
[2+8a,3+8b,5+8c,0+8d]:	transposed [8] by [2,1,0,3]
[4+8a,3+8b,5+8c,0+8d]:	transposed [10] by [1,2,0,3]
[6+8a,3+8b,5+8c,0+8d]:	transposed [11] by [0,2,1,3]
[3+8a,4+8b,5+8c,0+8d]:	transposed [10] by [2,1,0,3]
[3+8a,6+8b,5+8c,0+8d]:	transposed [11] by [2,0,1,3]
[2+8a,0+8b,6+8c,0+8d]:	transposed [2] by [1,2,0,3]
[7+8a,1+8b,6+8c,0+8d]:	transposed [7] by [0,2,1,3]
[0+8a,2+8b,6+8c,0+8d]:	transposed [2] by [2,1,0,3]
[4+8a,2+8b,6+8c,0+8d]:	transposed [9] by [1,2,0,3]
[5+8a,3+8b,6+8c,0+8d]:	transposed [11] by [1,2,0,3]
[2+8a,4+8b,6+8c,0+8d]:	transposed [9] by [2,1,0,3]
[3+8a,5+8b,6+8c,0+8d]:	transposed [11] by [2,1,0,3]
[1+8a,7+8b,6+8c,0+8d]:	transposed [7] by [2,0,1,3]
[1+8a,0+8b,7+8c,0+8d]:	transposed [1] by [1,2,0,3]
[0+8a,1+8b,7+8c,0+8d]:	transposed [1] by [2,1,0,3]
[2+8a,1+8b,7+8c,0+8d]:	transposed [5] by [1,2,0,3]
[4+8a,1+8b,7+8c,0+8d]:	transposed [6] by [1,2,0,3]
[6+8a,1+8b,7+8c,0+8d]:	transposed [7] by [1,2,0,3]
[1+8a,2+8b,7+8c,0+8d]:	transposed [5] by [2,1,0,3]
[1+8a,4+8b,7+8c,0+8d]:	transposed [6] by [2,1,0,3]
[1+8a,6+8b,7+8c,0+8d]:	transposed [7] by [2,1,0,3]
[1+8a,0+8b,0+8c,1+8d]:	unknown -> [12] [1,0,0,1] 24a+192a²+512a³+512b³+512c³-24d-192d²-512d³
-> solution [1,0,0,1],trivial(3) [9,0,0,9],trivial(3)
[0+8a,1+8b,0+8c,1+8d]:	transposed [12] by [1,0,2,3]
[2+8a,1+8b,0+8c,1+8d]:	unknown -> [13] [2,1,0,1] 96a+384a²+512a³+24b+192b²+512b³+512c³-24d-192d²-512d³+8
[4+8a,1+8b,0+8c,1+8d]:	unknown -> [14] [4,1,0,1] 384a+768a²+512a³+24b+192b²+512b³+512c³-24d-192d²-512d³+64
[6+8a,1+8b,0+8c,1+8d]:	unknown -> [15] [6,1,0,1] 864a+1152a²+512a³+24b+192b²+512b³+512c³-24d-192d²-512d³+216
-> solution [6,1,8,9],NONTRIVIAL
[1+8a,2+8b,0+8c,1+8d]:	transposed [13] by [1,0,2,3]
[1+8a,4+8b,0+8c,1+8d]:	transposed [14] by [1,0,2,3]
[1+8a,6+8b,0+8c,1+8d]:	transposed [15] by [1,0,2,3]
[0+8a,0+8b,1+8c,1+8d]:	transposed [12] by [1,2,0,3]
[2+8a,0+8b,1+8c,1+8d]:	transposed [13] by [0,2,1,3]
[4+8a,0+8b,1+8c,1+8d]:	transposed [14] by [0,2,1,3]
[6+8a,0+8b,1+8c,1+8d]:	transposed [15] by [0,2,1,3]
[7+8a,1+8b,1+8c,1+8d]:	unknown -> [16] [7,1,1,1] 1176a+1344a²+512a³+24b+192b²+512b³+24c+192c²+512c³-24d-192d²-512d³+344
[0+8a,2+8b,1+8c,1+8d]:	transposed [13] by [2,0,1,3]
[2+8a,2+8b,1+8c,1+8d]:	unknown -> [17] [2,2,1,1] 96a+384a²+512a³+96b+384b²+512b³+24c+192c²+512c³-24d-192d²-512d³+16
[4+8a,2+8b,1+8c,1+8d]:	unknown -> [18] [4,2,1,1] 384a+768a²+512a³+96b+384b²+512b³+24c+192c²+512c³-24d-192d²-512d³+72
[6+8a,2+8b,1+8c,1+8d]:	unknown -> [19] [6,2,1,1] 864a+1152a²+512a³+96b+384b²+512b³+24c+192c²+512c³-24d-192d²-512d³+224
[5+8a,3+8b,1+8c,1+8d]:	unknown -> [20] [5,3,1,1] 600a+960a²+512a³+216b+576b²+512b³+24c+192c²+512c³-24d-192d²-512d³+152
[0+8a,4+8b,1+8c,1+8d]:	transposed [14] by [2,0,1,3]
[2+8a,4+8b,1+8c,1+8d]:	transposed [18] by [1,0,2,3]
[4+8a,4+8b,1+8c,1+8d]:	unknown -> [21] [4,4,1,1] 384a+768a²+512a³+384b+768b²+512b³+24c+192c²+512c³-24d-192d²-512d³+128
[6+8a,4+8b,1+8c,1+8d]:	unknown -> [22] [6,4,1,1] 864a+1152a²+512a³+384b+768b²+512b³+24c+192c²+512c³-24d-192d²-512d³+280
[3+8a,5+8b,1+8c,1+8d]:	transposed [20] by [1,0,2,3]
[0+8a,6+8b,1+8c,1+8d]:	transposed [15] by [2,0,1,3]
[2+8a,6+8b,1+8c,1+8d]:	transposed [19] by [1,0,2,3]
[4+8a,6+8b,1+8c,1+8d]:	transposed [22] by [1,0,2,3]
[6+8a,6+8b,1+8c,1+8d]:	unknown -> [23] [6,6,1,1] 864a+1152a²+512a³+864b+1152b²+512b³+24c+192c²+512c³-24d-192d²-512d³+432
[1+8a,7+8b,1+8c,1+8d]:	transposed [16] by [1,0,2,3]
[1+8a,0+8b,2+8c,1+8d]:	transposed [13] by [1,2,0,3]
[0+8a,1+8b,2+8c,1+8d]:	transposed [13] by [2,1,0,3]
[2+8a,1+8b,2+8c,1+8d]:	transposed [17] by [0,2,1,3]
[4+8a,1+8b,2+8c,1+8d]:	transposed [18] by [0,2,1,3]
[6+8a,1+8b,2+8c,1+8d]:	transposed [19] by [0,2,1,3]
[1+8a,2+8b,2+8c,1+8d]:	transposed [17] by [2,0,1,3]
[1+8a,4+8b,2+8c,1+8d]:	transposed [18] by [2,0,1,3]
[1+8a,6+8b,2+8c,1+8d]:	transposed [19] by [2,0,1,3]
[5+8a,1+8b,3+8c,1+8d]:	transposed [20] by [0,2,1,3]
[3+8a,3+8b,3+8c,1+8d]:	unknown -> [24] [3,3,3,1] 216a+576a²+512a³+216b+576b²+512b³+216c+576c²+512c³-24d-192d²-512d³+80
[1+8a,5+8b,3+8c,1+8d]:	transposed [20] by [2,0,1,3]
[7+8a,7+8b,3+8c,1+8d]:	unknown -> [25] [7,7,3,1] 1176a+1344a²+512a³+1176b+1344b²+512b³+216c+576c²+512c³-24d-192d²-512d³+712
[1+8a,0+8b,4+8c,1+8d]:	transposed [14] by [1,2,0,3]
[0+8a,1+8b,4+8c,1+8d]:	transposed [14] by [2,1,0,3]
[2+8a,1+8b,4+8c,1+8d]:	transposed [18] by [1,2,0,3]
[4+8a,1+8b,4+8c,1+8d]:	transposed [21] by [0,2,1,3]
[6+8a,1+8b,4+8c,1+8d]:	transposed [22] by [0,2,1,3]
[1+8a,2+8b,4+8c,1+8d]:	transposed [18] by [2,1,0,3]
[1+8a,4+8b,4+8c,1+8d]:	transposed [21] by [2,0,1,3]
[1+8a,6+8b,4+8c,1+8d]:	transposed [22] by [2,0,1,3]
[3+8a,1+8b,5+8c,1+8d]:	transposed [20] by [1,2,0,3]
[1+8a,3+8b,5+8c,1+8d]:	transposed [20] by [2,1,0,3]
[7+8a,5+8b,5+8c,1+8d]:	unknown -> [26] [7,5,5,1] 1176a+1344a²+512a³+600b+960b²+512b³+600c+960c²+512c³-24d-192d²-512d³+592
[5+8a,7+8b,5+8c,1+8d]:	transposed [26] by [1,0,2,3]
[1+8a,0+8b,6+8c,1+8d]:	transposed [15] by [1,2,0,3]
[0+8a,1+8b,6+8c,1+8d]:	transposed [15] by [2,1,0,3]
[2+8a,1+8b,6+8c,1+8d]:	transposed [19] by [1,2,0,3]
[4+8a,1+8b,6+8c,1+8d]:	transposed [22] by [1,2,0,3]
[6+8a,1+8b,6+8c,1+8d]:	transposed [23] by [0,2,1,3]
[1+8a,2+8b,6+8c,1+8d]:	transposed [19] by [2,1,0,3]
[1+8a,4+8b,6+8c,1+8d]:	transposed [22] by [2,1,0,3]
[1+8a,6+8b,6+8c,1+8d]:	transposed [23] by [2,0,1,3]
[1+8a,1+8b,7+8c,1+8d]:	transposed [16] by [1,2,0,3]
[7+8a,3+8b,7+8c,1+8d]:	transposed [25] by [0,2,1,3]
[5+8a,5+8b,7+8c,1+8d]:	transposed [26] by [1,2,0,3]
[3+8a,7+8b,7+8c,1+8d]:	transposed [25] by [2,0,1,3]
[2+8a,0+8b,0+8c,2+8d]:	unknown -> [27] [2,0,0,2] 96a+384a²+512a³+512b³+512c³-96d-384d²-512d³
-> solution [2,0,0,2],trivial(3) [10,0,0,10],trivial(3)
[7+8a,1+8b,0+8c,2+8d]:	unknown -> [28] [7,1,0,2] 1176a+1344a²+512a³+24b+192b²+512b³+512c³-96d-384d²-512d³+336
[0+8a,2+8b,0+8c,2+8d]:	transposed [27] by [1,0,2,3]
[4+8a,2+8b,0+8c,2+8d]:	unknown -> [29] [4,2,0,2] 384a+768a²+512a³+96b+384b²+512b³+512c³-96d-384d²-512d³+64
[5+8a,3+8b,0+8c,2+8d]:	unknown -> [30] [5,3,0,2] 600a+960a²+512a³+216b+576b²+512b³+512c³-96d-384d²-512d³+144
[2+8a,4+8b,0+8c,2+8d]:	transposed [29] by [1,0,2,3]
[3+8a,5+8b,0+8c,2+8d]:	transposed [30] by [1,0,2,3]
[1+8a,7+8b,0+8c,2+8d]:	transposed [28] by [1,0,2,3]
[7+8a,0+8b,1+8c,2+8d]:	transposed [28] by [0,2,1,3]
[7+8a,2+8b,1+8c,2+8d]:	unknown -> [31] [7,2,1,2] 1176a+1344a²+512a³+96b+384b²+512b³+24c+192c²+512c³-96d-384d²-512d³+344
[7+8a,4+8b,1+8c,2+8d]:	unknown -> [32] [7,4,1,2] 1176a+1344a²+512a³+384b+768b²+512b³+24c+192c²+512c³-96d-384d²-512d³+400
[7+8a,6+8b,1+8c,2+8d]:	unknown -> [33] [7,6,1,2] 1176a+1344a²+512a³+864b+1152b²+512b³+24c+192c²+512c³-96d-384d²-512d³+552
[0+8a,7+8b,1+8c,2+8d]:	transposed [28] by [2,0,1,3]
[2+8a,7+8b,1+8c,2+8d]:	transposed [31] by [1,0,2,3]
[4+8a,7+8b,1+8c,2+8d]:	transposed [32] by [1,0,2,3]
[6+8a,7+8b,1+8c,2+8d]:	transposed [33] by [1,0,2,3]
[0+8a,0+8b,2+8c,2+8d]:	transposed [27] by [1,2,0,3]
[4+8a,0+8b,2+8c,2+8d]:	transposed [29] by [0,2,1,3]
[7+8a,1+8b,2+8c,2+8d]:	transposed [31] by [0,2,1,3]
[6+8a,2+8b,2+8c,2+8d]:	unknown -> [34] [6,2,2,2] 864a+1152a²+512a³+96b+384b²+512b³+96c+384c²+512c³-96d-384d²-512d³+224
[5+8a,3+8b,2+8c,2+8d]:	unknown -> [35] [5,3,2,2] 600a+960a²+512a³+216b+576b²+512b³+96c+384c²+512c³-96d-384d²-512d³+152
[0+8a,4+8b,2+8c,2+8d]:	transposed [29] by [2,0,1,3]
[4+8a,4+8b,2+8c,2+8d]:	unknown -> [36] [4,4,2,2] 384a+768a²+512a³+384b+768b²+512b³+96c+384c²+512c³-96d-384d²-512d³+128
[3+8a,5+8b,2+8c,2+8d]:	transposed [35] by [1,0,2,3]
[2+8a,6+8b,2+8c,2+8d]:	transposed [34] by [1,0,2,3]
[1+8a,7+8b,2+8c,2+8d]:	transposed [31] by [2,0,1,3]
[5+8a,0+8b,3+8c,2+8d]:	transposed [30] by [0,2,1,3]
[5+8a,2+8b,3+8c,2+8d]:	transposed [35] by [0,2,1,3]
[5+8a,4+8b,3+8c,2+8d]:	unknown -> [37] [5,4,3,2] 600a+960a²+512a³+384b+768b²+512b³+216c+576c²+512c³-96d-384d²-512d³+208
[0+8a,5+8b,3+8c,2+8d]:	transposed [30] by [2,0,1,3]
[2+8a,5+8b,3+8c,2+8d]:	transposed [35] by [2,0,1,3]
[4+8a,5+8b,3+8c,2+8d]:	transposed [37] by [1,0,2,3]
[6+8a,5+8b,3+8c,2+8d]:	unknown -> [38] [6,5,3,2] 864a+1152a²+512a³+600b+960b²+512b³+216c+576c²+512c³-96d-384d²-512d³+360
[5+8a,6+8b,3+8c,2+8d]:	transposed [38] by [1,0,2,3]
[2+8a,0+8b,4+8c,2+8d]:	transposed [29] by [1,2,0,3]
[7+8a,1+8b,4+8c,2+8d]:	transposed [32] by [0,2,1,3]
[0+8a,2+8b,4+8c,2+8d]:	transposed [29] by [2,1,0,3]
[4+8a,2+8b,4+8c,2+8d]:	transposed [36] by [0,2,1,3]
[5+8a,3+8b,4+8c,2+8d]:	transposed [37] by [0,2,1,3]
[2+8a,4+8b,4+8c,2+8d]:	transposed [36] by [2,0,1,3]
[3+8a,5+8b,4+8c,2+8d]:	transposed [37] by [2,0,1,3]
[1+8a,7+8b,4+8c,2+8d]:	transposed [32] by [2,0,1,3]
[3+8a,0+8b,5+8c,2+8d]:	transposed [30] by [1,2,0,3]
[3+8a,2+8b,5+8c,2+8d]:	transposed [35] by [1,2,0,3]
[0+8a,3+8b,5+8c,2+8d]:	transposed [30] by [2,1,0,3]
[2+8a,3+8b,5+8c,2+8d]:	transposed [35] by [2,1,0,3]
[4+8a,3+8b,5+8c,2+8d]:	transposed [37] by [1,2,0,3]
[6+8a,3+8b,5+8c,2+8d]:	transposed [38] by [0,2,1,3]
[3+8a,4+8b,5+8c,2+8d]:	transposed [37] by [2,1,0,3]
[3+8a,6+8b,5+8c,2+8d]:	transposed [38] by [2,0,1,3]
[7+8a,1+8b,6+8c,2+8d]:	transposed [33] by [0,2,1,3]
[2+8a,2+8b,6+8c,2+8d]:	transposed [34] by [1,2,0,3]
[5+8a,3+8b,6+8c,2+8d]:	transposed [38] by [1,2,0,3]
[3+8a,5+8b,6+8c,2+8d]:	transposed [38] by [2,1,0,3]
[6+8a,6+8b,6+8c,2+8d]:	unknown -> [39] [6,6,6,2] 864a+1152a²+512a³+864b+1152b²+512b³+864c+1152c²+512c³-96d-384d²-512d³+640
[1+8a,7+8b,6+8c,2+8d]:	transposed [33] by [2,0,1,3]
[1+8a,0+8b,7+8c,2+8d]:	transposed [28] by [1,2,0,3]
[0+8a,1+8b,7+8c,2+8d]:	transposed [28] by [2,1,0,3]
[2+8a,1+8b,7+8c,2+8d]:	transposed [31] by [1,2,0,3]
[4+8a,1+8b,7+8c,2+8d]:	transposed [32] by [1,2,0,3]
[6+8a,1+8b,7+8c,2+8d]:	transposed [33] by [1,2,0,3]
[1+8a,2+8b,7+8c,2+8d]:	transposed [31] by [2,1,0,3]
[1+8a,4+8b,7+8c,2+8d]:	transposed [32] by [2,1,0,3]
[1+8a,6+8b,7+8c,2+8d]:	transposed [33] by [2,1,0,3]
[3+8a,0+8b,0+8c,3+8d]:	unknown -> [40] [3,0,0,3] 216a+576a²+512a³+512b³+512c³-216d-576d²-512d³
-> solution [3,0,0,3],trivial(3) [11,0,0,11],trivial(3)
[3+8a,2+8b,0+8c,3+8d]:	unknown -> [41] [3,2,0,3] 216a+576a²+512a³+96b+384b²+512b³+512c³-216d-576d²-512d³+8
[0+8a,3+8b,0+8c,3+8d]:	transposed [40] by [1,0,2,3]
[2+8a,3+8b,0+8c,3+8d]:	transposed [41] by [1,0,2,3]
[4+8a,3+8b,0+8c,3+8d]:	unknown -> [42] [4,3,0,3] 384a+768a²+512a³+216b+576b²+512b³+512c³-216d-576d²-512d³+64
[6+8a,3+8b,0+8c,3+8d]:	unknown -> [43] [6,3,0,3] 864a+1152a²+512a³+216b+576b²+512b³+512c³-216d-576d²-512d³+216
[3+8a,4+8b,0+8c,3+8d]:	transposed [42] by [1,0,2,3]
[3+8a,6+8b,0+8c,3+8d]:	transposed [43] by [1,0,2,3]
[1+8a,1+8b,1+8c,3+8d]:	unknown -> [44] [1,1,1,3] 24a+192a²+512a³+24b+192b²+512b³+24c+192c²+512c³-216d-576d²-512d³-24
[7+8a,3+8b,1+8c,3+8d]:	unknown -> [45] [7,3,1,3] 1176a+1344a²+512a³+216b+576b²+512b³+24c+192c²+512c³-216d-576d²-512d³+344
[5+8a,5+8b,1+8c,3+8d]:	unknown -> [46] [5,5,1,3] 600a+960a²+512a³+600b+960b²+512b³+24c+192c²+512c³-216d-576d²-512d³+224
[3+8a,7+8b,1+8c,3+8d]:	transposed [45] by [1,0,2,3]
[3+8a,0+8b,2+8c,3+8d]:	transposed [41] by [0,2,1,3]
[3+8a,2+8b,2+8c,3+8d]:	unknown -> [47] [3,2,2,3] 216a+576a²+512a³+96b+384b²+512b³+96c+384c²+512c³-216d-576d²-512d³+16
[0+8a,3+8b,2+8c,3+8d]:	transposed [41] by [2,0,1,3]
[2+8a,3+8b,2+8c,3+8d]:	transposed [47] by [1,0,2,3]
[4+8a,3+8b,2+8c,3+8d]:	unknown -> [48] [4,3,2,3] 384a+768a²+512a³+216b+576b²+512b³+96c+384c²+512c³-216d-576d²-512d³+72
[6+8a,3+8b,2+8c,3+8d]:	unknown -> [49] [6,3,2,3] 864a+1152a²+512a³+216b+576b²+512b³+96c+384c²+512c³-216d-576d²-512d³+224
[3+8a,4+8b,2+8c,3+8d]:	transposed [48] by [1,0,2,3]
[3+8a,6+8b,2+8c,3+8d]:	transposed [49] by [1,0,2,3]
[0+8a,0+8b,3+8c,3+8d]:	transposed [40] by [1,2,0,3]
[2+8a,0+8b,3+8c,3+8d]:	transposed [41] by [1,2,0,3]
[4+8a,0+8b,3+8c,3+8d]:	transposed [42] by [0,2,1,3]
[6+8a,0+8b,3+8c,3+8d]:	transposed [43] by [0,2,1,3]
[7+8a,1+8b,3+8c,3+8d]:	transposed [45] by [0,2,1,3]
[0+8a,2+8b,3+8c,3+8d]:	transposed [41] by [2,1,0,3]
[2+8a,2+8b,3+8c,3+8d]:	transposed [47] by [1,2,0,3]
[4+8a,2+8b,3+8c,3+8d]:	transposed [48] by [0,2,1,3]
[6+8a,2+8b,3+8c,3+8d]:	transposed [49] by [0,2,1,3]
[5+8a,3+8b,3+8c,3+8d]:	unknown -> [50] [5,3,3,3] 600a+960a²+512a³+216b+576b²+512b³+216c+576c²+512c³-216d-576d²-512d³+152
[0+8a,4+8b,3+8c,3+8d]:	transposed [42] by [2,0,1,3]
[2+8a,4+8b,3+8c,3+8d]:	transposed [48] by [2,0,1,3]
[4+8a,4+8b,3+8c,3+8d]:	unknown -> [51] [4,4,3,3] 384a+768a²+512a³+384b+768b²+512b³+216c+576c²+512c³-216d-576d²-512d³+128
[6+8a,4+8b,3+8c,3+8d]:	unknown -> [52] [6,4,3,3] 864a+1152a²+512a³+384b+768b²+512b³+216c+576c²+512c³-216d-576d²-512d³+280
[3+8a,5+8b,3+8c,3+8d]:	transposed [50] by [1,0,2,3]
[0+8a,6+8b,3+8c,3+8d]:	transposed [43] by [2,0,1,3]
[2+8a,6+8b,3+8c,3+8d]:	transposed [49] by [2,0,1,3]
[4+8a,6+8b,3+8c,3+8d]:	transposed [52] by [1,0,2,3]
[6+8a,6+8b,3+8c,3+8d]:	unknown -> [53] [6,6,3,3] 864a+1152a²+512a³+864b+1152b²+512b³+216c+576c²+512c³-216d-576d²-512d³+432
[1+8a,7+8b,3+8c,3+8d]:	transposed [45] by [2,0,1,3]
[3+8a,0+8b,4+8c,3+8d]:	transposed [42] by [1,2,0,3]
[3+8a,2+8b,4+8c,3+8d]:	transposed [48] by [1,2,0,3]
[0+8a,3+8b,4+8c,3+8d]:	transposed [42] by [2,1,0,3]
[2+8a,3+8b,4+8c,3+8d]:	transposed [48] by [2,1,0,3]
[4+8a,3+8b,4+8c,3+8d]:	transposed [51] by [0,2,1,3]
[6+8a,3+8b,4+8c,3+8d]:	transposed [52] by [0,2,1,3]
[3+8a,4+8b,4+8c,3+8d]:	transposed [51] by [2,0,1,3]
[3+8a,6+8b,4+8c,3+8d]:	transposed [52] by [2,0,1,3]
[5+8a,1+8b,5+8c,3+8d]:	transposed [46] by [0,2,1,3]
[3+8a,3+8b,5+8c,3+8d]:	transposed [50] by [1,2,0,3]
[1+8a,5+8b,5+8c,3+8d]:	transposed [46] by [2,0,1,3]
[7+8a,7+8b,5+8c,3+8d]:	unknown -> [54] [7,7,5,3] 1176a+1344a²+512a³+1176b+1344b²+512b³+600c+960c²+512c³-216d-576d²-512d³+784
[3+8a,0+8b,6+8c,3+8d]:	transposed [43] by [1,2,0,3]
[3+8a,2+8b,6+8c,3+8d]:	transposed [49] by [1,2,0,3]
[0+8a,3+8b,6+8c,3+8d]:	transposed [43] by [2,1,0,3]
[2+8a,3+8b,6+8c,3+8d]:	transposed [49] by [2,1,0,3]
[4+8a,3+8b,6+8c,3+8d]:	transposed [52] by [1,2,0,3]
[6+8a,3+8b,6+8c,3+8d]:	transposed [53] by [0,2,1,3]
[3+8a,4+8b,6+8c,3+8d]:	transposed [52] by [2,1,0,3]
[3+8a,6+8b,6+8c,3+8d]:	transposed [53] by [2,0,1,3]
[3+8a,1+8b,7+8c,3+8d]:	transposed [45] by [1,2,0,3]
[1+8a,3+8b,7+8c,3+8d]:	transposed [45] by [2,1,0,3]
[7+8a,5+8b,7+8c,3+8d]:	transposed [54] by [0,2,1,3]
[5+8a,7+8b,7+8c,3+8d]:	transposed [54] by [2,0,1,3]
[4+8a,0+8b,0+8c,4+8d]:	unknown -> [55] [4,0,0,4] 384a+768a²+512a³+512b³+512c³-384d-768d²-512d³
-> solution [4,0,0,4],trivial(3) [12,0,0,12],trivial(3)
[7+8a,1+8b,0+8c,4+8d]:	unknown -> [56] [7,1,0,4] 1176a+1344a²+512a³+24b+192b²+512b³+512c³-384d-768d²-512d³+280
[6+8a,2+8b,0+8c,4+8d]:	unknown -> [57] [6,2,0,4] 864a+1152a²+512a³+96b+384b²+512b³+512c³-384d-768d²-512d³+160
-> solution [6,10,8,12],NONTRIVIAL
[5+8a,3+8b,0+8c,4+8d]:	unknown -> [58] [5,3,0,4] 600a+960a²+512a³+216b+576b²+512b³+512c³-384d-768d²-512d³+88
[0+8a,4+8b,0+8c,4+8d]:	transposed [55] by [1,0,2,3]
[3+8a,5+8b,0+8c,4+8d]:	transposed [58] by [1,0,2,3]
[2+8a,6+8b,0+8c,4+8d]:	transposed [57] by [1,0,2,3]
[1+8a,7+8b,0+8c,4+8d]:	transposed [56] by [1,0,2,3]
[7+8a,0+8b,1+8c,4+8d]:	transposed [56] by [0,2,1,3]
[7+8a,2+8b,1+8c,4+8d]:	unknown -> [59] [7,2,1,4] 1176a+1344a²+512a³+96b+384b²+512b³+24c+192c²+512c³-384d-768d²-512d³+288
[7+8a,4+8b,1+8c,4+8d]:	unknown -> [60] [7,4,1,4] 1176a+1344a²+512a³+384b+768b²+512b³+24c+192c²+512c³-384d-768d²-512d³+344
[7+8a,6+8b,1+8c,4+8d]:	unknown -> [61] [7,6,1,4] 1176a+1344a²+512a³+864b+1152b²+512b³+24c+192c²+512c³-384d-768d²-512d³+496
[0+8a,7+8b,1+8c,4+8d]:	transposed [56] by [2,0,1,3]
[2+8a,7+8b,1+8c,4+8d]:	transposed [59] by [1,0,2,3]
[4+8a,7+8b,1+8c,4+8d]:	transposed [60] by [1,0,2,3]
[6+8a,7+8b,1+8c,4+8d]:	transposed [61] by [1,0,2,3]
[6+8a,0+8b,2+8c,4+8d]:	transposed [57] by [0,2,1,3]
[7+8a,1+8b,2+8c,4+8d]:	transposed [59] by [0,2,1,3]
[5+8a,3+8b,2+8c,4+8d]:	unknown -> [62] [5,3,2,4] 600a+960a²+512a³+216b+576b²+512b³+96c+384c²+512c³-384d-768d²-512d³+96
[6+8a,4+8b,2+8c,4+8d]:	unknown -> [63] [6,4,2,4] 864a+1152a²+512a³+384b+768b²+512b³+96c+384c²+512c³-384d-768d²-512d³+224
[3+8a,5+8b,2+8c,4+8d]:	transposed [62] by [1,0,2,3]
[0+8a,6+8b,2+8c,4+8d]:	transposed [57] by [2,0,1,3]
[4+8a,6+8b,2+8c,4+8d]:	transposed [63] by [1,0,2,3]
[1+8a,7+8b,2+8c,4+8d]:	transposed [59] by [2,0,1,3]
[5+8a,0+8b,3+8c,4+8d]:	transposed [58] by [0,2,1,3]
[5+8a,2+8b,3+8c,4+8d]:	transposed [62] by [0,2,1,3]
[5+8a,4+8b,3+8c,4+8d]:	unknown -> [64] [5,4,3,4] 600a+960a²+512a³+384b+768b²+512b³+216c+576c²+512c³-384d-768d²-512d³+152
[0+8a,5+8b,3+8c,4+8d]:	transposed [58] by [2,0,1,3]
[2+8a,5+8b,3+8c,4+8d]:	transposed [62] by [2,0,1,3]
[4+8a,5+8b,3+8c,4+8d]:	transposed [64] by [1,0,2,3]
[6+8a,5+8b,3+8c,4+8d]:	unknown -> [65] [6,5,3,4] 864a+1152a²+512a³+600b+960b²+512b³+216c+576c²+512c³-384d-768d²-512d³+304
[5+8a,6+8b,3+8c,4+8d]:	transposed [65] by [1,0,2,3]
[0+8a,0+8b,4+8c,4+8d]:	transposed [55] by [1,2,0,3]
[7+8a,1+8b,4+8c,4+8d]:	transposed [60] by [0,2,1,3]
[6+8a,2+8b,4+8c,4+8d]:	transposed [63] by [0,2,1,3]
[5+8a,3+8b,4+8c,4+8d]:	transposed [64] by [0,2,1,3]
[4+8a,4+8b,4+8c,4+8d]:	unknown -> [66] [4,4,4,4] 384a+768a²+512a³+384b+768b²+512b³+384c+768c²+512c³-384d-768d²-512d³+128
[3+8a,5+8b,4+8c,4+8d]:	transposed [64] by [2,0,1,3]
[2+8a,6+8b,4+8c,4+8d]:	transposed [63] by [2,0,1,3]
[1+8a,7+8b,4+8c,4+8d]:	transposed [60] by [2,0,1,3]
[3+8a,0+8b,5+8c,4+8d]:	transposed [58] by [1,2,0,3]
[3+8a,2+8b,5+8c,4+8d]:	transposed [62] by [1,2,0,3]
[0+8a,3+8b,5+8c,4+8d]:	transposed [58] by [2,1,0,3]
[2+8a,3+8b,5+8c,4+8d]:	transposed [62] by [2,1,0,3]
[4+8a,3+8b,5+8c,4+8d]:	transposed [64] by [1,2,0,3]
[6+8a,3+8b,5+8c,4+8d]:	transposed [65] by [0,2,1,3]
[3+8a,4+8b,5+8c,4+8d]:	transposed [64] by [2,1,0,3]
[3+8a,6+8b,5+8c,4+8d]:	transposed [65] by [2,0,1,3]
[2+8a,0+8b,6+8c,4+8d]:	transposed [57] by [1,2,0,3]
[7+8a,1+8b,6+8c,4+8d]:	transposed [61] by [0,2,1,3]
[0+8a,2+8b,6+8c,4+8d]:	transposed [57] by [2,1,0,3]
[4+8a,2+8b,6+8c,4+8d]:	transposed [63] by [1,2,0,3]
[5+8a,3+8b,6+8c,4+8d]:	transposed [65] by [1,2,0,3]
[2+8a,4+8b,6+8c,4+8d]:	transposed [63] by [2,1,0,3]
[3+8a,5+8b,6+8c,4+8d]:	transposed [65] by [2,1,0,3]
[1+8a,7+8b,6+8c,4+8d]:	transposed [61] by [2,0,1,3]
[1+8a,0+8b,7+8c,4+8d]:	transposed [56] by [1,2,0,3]
[0+8a,1+8b,7+8c,4+8d]:	transposed [56] by [2,1,0,3]
[2+8a,1+8b,7+8c,4+8d]:	transposed [59] by [1,2,0,3]
[4+8a,1+8b,7+8c,4+8d]:	transposed [60] by [1,2,0,3]
[6+8a,1+8b,7+8c,4+8d]:	transposed [61] by [1,2,0,3]
[1+8a,2+8b,7+8c,4+8d]:	transposed [59] by [2,1,0,3]
[1+8a,4+8b,7+8c,4+8d]:	transposed [60] by [2,1,0,3]
[1+8a,6+8b,7+8c,4+8d]:	transposed [61] by [2,1,0,3]
[5+8a,0+8b,0+8c,5+8d]:	unknown -> [67] [5,0,0,5] 600a+960a²+512a³+512b³+512c³-600d-960d²-512d³
-> solution [5,0,0,5],trivial(3) [13,0,0,13],trivial(3)
[5+8a,2+8b,0+8c,5+8d]:	unknown -> [68] [5,2,0,5] 600a+960a²+512a³+96b+384b²+512b³+512c³-600d-960d²-512d³+8
[5+8a,4+8b,0+8c,5+8d]:	unknown -> [69] [5,4,0,5] 600a+960a²+512a³+384b+768b²+512b³+512c³-600d-960d²-512d³+64
[0+8a,5+8b,0+8c,5+8d]:	transposed [67] by [1,0,2,3]
[2+8a,5+8b,0+8c,5+8d]:	transposed [68] by [1,0,2,3]
[4+8a,5+8b,0+8c,5+8d]:	transposed [69] by [1,0,2,3]
[6+8a,5+8b,0+8c,5+8d]:	unknown -> [70] [6,5,0,5] 864a+1152a²+512a³+600b+960b²+512b³+512c³-600d-960d²-512d³+216
[5+8a,6+8b,0+8c,5+8d]:	transposed [70] by [1,0,2,3]
[3+8a,1+8b,1+8c,5+8d]:	unknown -> [71] [3,1,1,5] 216a+576a²+512a³+24b+192b²+512b³+24c+192c²+512c³-600d-960d²-512d³-96
[1+8a,3+8b,1+8c,5+8d]:	transposed [71] by [1,0,2,3]
[7+8a,5+8b,1+8c,5+8d]:	unknown -> [72] [7,5,1,5] 1176a+1344a²+512a³+600b+960b²+512b³+24c+192c²+512c³-600d-960d²-512d³+344
[5+8a,7+8b,1+8c,5+8d]:	transposed [72] by [1,0,2,3]
[5+8a,0+8b,2+8c,5+8d]:	transposed [68] by [0,2,1,3]
[5+8a,2+8b,2+8c,5+8d]:	unknown -> [73] [5,2,2,5] 600a+960a²+512a³+96b+384b²+512b³+96c+384c²+512c³-600d-960d²-512d³+16
[5+8a,4+8b,2+8c,5+8d]:	unknown -> [74] [5,4,2,5] 600a+960a²+512a³+384b+768b²+512b³+96c+384c²+512c³-600d-960d²-512d³+72
[0+8a,5+8b,2+8c,5+8d]:	transposed [68] by [2,0,1,3]
[2+8a,5+8b,2+8c,5+8d]:	transposed [73] by [1,0,2,3]
[4+8a,5+8b,2+8c,5+8d]:	transposed [74] by [1,0,2,3]
[6+8a,5+8b,2+8c,5+8d]:	unknown -> [75] [6,5,2,5] 864a+1152a²+512a³+600b+960b²+512b³+96c+384c²+512c³-600d-960d²-512d³+224
[5+8a,6+8b,2+8c,5+8d]:	transposed [75] by [1,0,2,3]
[1+8a,1+8b,3+8c,5+8d]:	transposed [71] by [1,2,0,3]
[7+8a,3+8b,3+8c,5+8d]:	unknown -> [76] [7,3,3,5] 1176a+1344a²+512a³+216b+576b²+512b³+216c+576c²+512c³-600d-960d²-512d³+272
[5+8a,5+8b,3+8c,5+8d]:	unknown -> [77] [5,5,3,5] 600a+960a²+512a³+600b+960b²+512b³+216c+576c²+512c³-600d-960d²-512d³+152
[3+8a,7+8b,3+8c,5+8d]:	transposed [76] by [1,0,2,3]
[5+8a,0+8b,4+8c,5+8d]:	transposed [69] by [0,2,1,3]
[5+8a,2+8b,4+8c,5+8d]:	transposed [74] by [0,2,1,3]
[5+8a,4+8b,4+8c,5+8d]:	unknown -> [78] [5,4,4,5] 600a+960a²+512a³+384b+768b²+512b³+384c+768c²+512c³-600d-960d²-512d³+128
[0+8a,5+8b,4+8c,5+8d]:	transposed [69] by [2,0,1,3]
[2+8a,5+8b,4+8c,5+8d]:	transposed [74] by [2,0,1,3]
[4+8a,5+8b,4+8c,5+8d]:	transposed [78] by [1,0,2,3]
[6+8a,5+8b,4+8c,5+8d]:	unknown -> [79] [6,5,4,5] 864a+1152a²+512a³+600b+960b²+512b³+384c+768c²+512c³-600d-960d²-512d³+280
[5+8a,6+8b,4+8c,5+8d]:	transposed [79] by [1,0,2,3]
[0+8a,0+8b,5+8c,5+8d]:	transposed [67] by [1,2,0,3]
[2+8a,0+8b,5+8c,5+8d]:	transposed [68] by [1,2,0,3]
[4+8a,0+8b,5+8c,5+8d]:	transposed [69] by [1,2,0,3]
[6+8a,0+8b,5+8c,5+8d]:	transposed [70] by [0,2,1,3]
[7+8a,1+8b,5+8c,5+8d]:	transposed [72] by [0,2,1,3]
[0+8a,2+8b,5+8c,5+8d]:	transposed [68] by [2,1,0,3]
[2+8a,2+8b,5+8c,5+8d]:	transposed [73] by [1,2,0,3]
[4+8a,2+8b,5+8c,5+8d]:	transposed [74] by [1,2,0,3]
[6+8a,2+8b,5+8c,5+8d]:	transposed [75] by [0,2,1,3]
[5+8a,3+8b,5+8c,5+8d]:	transposed [77] by [0,2,1,3]
[0+8a,4+8b,5+8c,5+8d]:	transposed [69] by [2,1,0,3]
[2+8a,4+8b,5+8c,5+8d]:	transposed [74] by [2,1,0,3]
[4+8a,4+8b,5+8c,5+8d]:	transposed [78] by [1,2,0,3]
[6+8a,4+8b,5+8c,5+8d]:	transposed [79] by [0,2,1,3]
[3+8a,5+8b,5+8c,5+8d]:	transposed [77] by [2,0,1,3]
[0+8a,6+8b,5+8c,5+8d]:	transposed [70] by [2,0,1,3]
[2+8a,6+8b,5+8c,5+8d]:	transposed [75] by [2,0,1,3]
[4+8a,6+8b,5+8c,5+8d]:	transposed [79] by [2,0,1,3]
[6+8a,6+8b,5+8c,5+8d]:	unknown -> [80] [6,6,5,5] 864a+1152a²+512a³+864b+1152b²+512b³+600c+960c²+512c³-600d-960d²-512d³+432
[1+8a,7+8b,5+8c,5+8d]:	transposed [72] by [2,0,1,3]
[5+8a,0+8b,6+8c,5+8d]:	transposed [70] by [1,2,0,3]
[5+8a,2+8b,6+8c,5+8d]:	transposed [75] by [1,2,0,3]
[5+8a,4+8b,6+8c,5+8d]:	transposed [79] by [1,2,0,3]
[0+8a,5+8b,6+8c,5+8d]:	transposed [70] by [2,1,0,3]
[2+8a,5+8b,6+8c,5+8d]:	transposed [75] by [2,1,0,3]
[4+8a,5+8b,6+8c,5+8d]:	transposed [79] by [2,1,0,3]
[6+8a,5+8b,6+8c,5+8d]:	transposed [80] by [0,2,1,3]
[5+8a,6+8b,6+8c,5+8d]:	transposed [80] by [2,0,1,3]
[5+8a,1+8b,7+8c,5+8d]:	transposed [72] by [1,2,0,3]
[3+8a,3+8b,7+8c,5+8d]:	transposed [76] by [1,2,0,3]
[1+8a,5+8b,7+8c,5+8d]:	transposed [72] by [2,1,0,3]
[7+8a,7+8b,7+8c,5+8d]:	unknown -> [81] [7,7,7,5] 1176a+1344a²+512a³+1176b+1344b²+512b³+1176c+1344c²+512c³-600d-960d²-512d³+904
[6+8a,0+8b,0+8c,6+8d]:	unknown -> [82] [6,0,0,6] 864a+1152a²+512a³+512b³+512c³-864d-1152d²-512d³
-> solution [6,0,0,6],trivial(3) [14,0,0,14],trivial(3)
[7+8a,1+8b,0+8c,6+8d]:	unknown -> [83] [7,1,0,6] 1176a+1344a²+512a³+24b+192b²+512b³+512c³-864d-1152d²-512d³+128
[5+8a,3+8b,0+8c,6+8d]:	unknown -> [84] [5,3,0,6] 600a+960a²+512a³+216b+576b²+512b³+512c³-864d-1152d²-512d³-64
[6+8a,4+8b,0+8c,6+8d]:	unknown -> [85] [6,4,0,6] 864a+1152a²+512a³+384b+768b²+512b³+512c³-864d-1152d²-512d³+64
[3+8a,5+8b,0+8c,6+8d]:	transposed [84] by [1,0,2,3]
[0+8a,6+8b,0+8c,6+8d]:	transposed [82] by [1,0,2,3]
[4+8a,6+8b,0+8c,6+8d]:	transposed [85] by [1,0,2,3]
[1+8a,7+8b,0+8c,6+8d]:	transposed [83] by [1,0,2,3]
[7+8a,0+8b,1+8c,6+8d]:	transposed [83] by [0,2,1,3]
[7+8a,2+8b,1+8c,6+8d]:	unknown -> [86] [7,2,1,6] 1176a+1344a²+512a³+96b+384b²+512b³+24c+192c²+512c³-864d-1152d²-512d³+136
[7+8a,4+8b,1+8c,6+8d]:	unknown -> [87] [7,4,1,6] 1176a+1344a²+512a³+384b+768b²+512b³+24c+192c²+512c³-864d-1152d²-512d³+192
[7+8a,6+8b,1+8c,6+8d]:	unknown -> [88] [7,6,1,6] 1176a+1344a²+512a³+864b+1152b²+512b³+24c+192c²+512c³-864d-1152d²-512d³+344
[0+8a,7+8b,1+8c,6+8d]:	transposed [83] by [2,0,1,3]
[2+8a,7+8b,1+8c,6+8d]:	transposed [86] by [1,0,2,3]
[4+8a,7+8b,1+8c,6+8d]:	transposed [87] by [1,0,2,3]
[6+8a,7+8b,1+8c,6+8d]:	transposed [88] by [1,0,2,3]
[7+8a,1+8b,2+8c,6+8d]:	transposed [86] by [0,2,1,3]
[2+8a,2+8b,2+8c,6+8d]:	unknown -> [89] [2,2,2,6] 96a+384a²+512a³+96b+384b²+512b³+96c+384c²+512c³-864d-1152d²-512d³-192
[5+8a,3+8b,2+8c,6+8d]:	unknown -> [90] [5,3,2,6] 600a+960a²+512a³+216b+576b²+512b³+96c+384c²+512c³-864d-1152d²-512d³-56
[3+8a,5+8b,2+8c,6+8d]:	transposed [90] by [1,0,2,3]
[6+8a,6+8b,2+8c,6+8d]:	unknown -> [91] [6,6,2,6] 864a+1152a²+512a³+864b+1152b²+512b³+96c+384c²+512c³-864d-1152d²-512d³+224
[1+8a,7+8b,2+8c,6+8d]:	transposed [86] by [2,0,1,3]
[5+8a,0+8b,3+8c,6+8d]:	transposed [84] by [0,2,1,3]
[5+8a,2+8b,3+8c,6+8d]:	transposed [90] by [0,2,1,3]
[5+8a,4+8b,3+8c,6+8d]:	unknown -> [92] [5,4,3,6] 600a+960a²+512a³+384b+768b²+512b³+216c+576c²+512c³-864d-1152d²-512d³
-> solution [5,4,3,6],NONTRIVIAL
[0+8a,5+8b,3+8c,6+8d]:	transposed [84] by [2,0,1,3]
[2+8a,5+8b,3+8c,6+8d]:	transposed [90] by [2,0,1,3]
[4+8a,5+8b,3+8c,6+8d]:	transposed [92] by [1,0,2,3]
[6+8a,5+8b,3+8c,6+8d]:	unknown -> [93] [6,5,3,6] 864a+1152a²+512a³+600b+960b²+512b³+216c+576c²+512c³-864d-1152d²-512d³+152
[5+8a,6+8b,3+8c,6+8d]:	transposed [93] by [1,0,2,3]
[6+8a,0+8b,4+8c,6+8d]:	transposed [85] by [0,2,1,3]
[7+8a,1+8b,4+8c,6+8d]:	transposed [87] by [0,2,1,3]
[5+8a,3+8b,4+8c,6+8d]:	transposed [92] by [0,2,1,3]
[6+8a,4+8b,4+8c,6+8d]:	unknown -> [94] [6,4,4,6] 864a+1152a²+512a³+384b+768b²+512b³+384c+768c²+512c³-864d-1152d²-512d³+128
[3+8a,5+8b,4+8c,6+8d]:	transposed [92] by [2,0,1,3]
[0+8a,6+8b,4+8c,6+8d]:	transposed [85] by [2,0,1,3]
[4+8a,6+8b,4+8c,6+8d]:	transposed [94] by [1,0,2,3]
[1+8a,7+8b,4+8c,6+8d]:	transposed [87] by [2,0,1,3]
[3+8a,0+8b,5+8c,6+8d]:	transposed [84] by [1,2,0,3]
[3+8a,2+8b,5+8c,6+8d]:	transposed [90] by [1,2,0,3]
[0+8a,3+8b,5+8c,6+8d]:	transposed [84] by [2,1,0,3]
[2+8a,3+8b,5+8c,6+8d]:	transposed [90] by [2,1,0,3]
[4+8a,3+8b,5+8c,6+8d]:	transposed [92] by [1,2,0,3]
[6+8a,3+8b,5+8c,6+8d]:	transposed [93] by [0,2,1,3]
[3+8a,4+8b,5+8c,6+8d]:	transposed [92] by [2,1,0,3]
[3+8a,6+8b,5+8c,6+8d]:	transposed [93] by [2,0,1,3]
[0+8a,0+8b,6+8c,6+8d]:	transposed [82] by [1,2,0,3]
[4+8a,0+8b,6+8c,6+8d]:	transposed [85] by [1,2,0,3]
[7+8a,1+8b,6+8c,6+8d]:	transposed [88] by [0,2,1,3]
[6+8a,2+8b,6+8c,6+8d]:	transposed [91] by [0,2,1,3]
[5+8a,3+8b,6+8c,6+8d]:	transposed [93] by [1,2,0,3]
[0+8a,4+8b,6+8c,6+8d]:	transposed [85] by [2,1,0,3]
[4+8a,4+8b,6+8c,6+8d]:	transposed [94] by [1,2,0,3]
[3+8a,5+8b,6+8c,6+8d]:	transposed [93] by [2,1,0,3]
[2+8a,6+8b,6+8c,6+8d]:	transposed [91] by [2,0,1,3]
[1+8a,7+8b,6+8c,6+8d]:	transposed [88] by [2,0,1,3]
[1+8a,0+8b,7+8c,6+8d]:	transposed [83] by [1,2,0,3]
[0+8a,1+8b,7+8c,6+8d]:	transposed [83] by [2,1,0,3]
[2+8a,1+8b,7+8c,6+8d]:	transposed [86] by [1,2,0,3]
[4+8a,1+8b,7+8c,6+8d]:	transposed [87] by [1,2,0,3]
[6+8a,1+8b,7+8c,6+8d]:	transposed [88] by [1,2,0,3]
[1+8a,2+8b,7+8c,6+8d]:	transposed [86] by [2,1,0,3]
[1+8a,4+8b,7+8c,6+8d]:	transposed [87] by [2,1,0,3]
[1+8a,6+8b,7+8c,6+8d]:	transposed [88] by [2,1,0,3]
[7+8a,0+8b,0+8c,7+8d]:	unknown -> [95] [7,0,0,7] 1176a+1344a²+512a³+512b³+512c³-1176d-1344d²-512d³
-> solution [7,0,0,7],trivial(3) [15,0,0,15],trivial(3)
[7+8a,2+8b,0+8c,7+8d]:	unknown -> [96] [7,2,0,7] 1176a+1344a²+512a³+96b+384b²+512b³+512c³-1176d-1344d²-512d³+8
[7+8a,4+8b,0+8c,7+8d]:	unknown -> [97] [7,4,0,7] 1176a+1344a²+512a³+384b+768b²+512b³+512c³-1176d-1344d²-512d³+64
[7+8a,6+8b,0+8c,7+8d]:	unknown -> [98] [7,6,0,7] 1176a+1344a²+512a³+864b+1152b²+512b³+512c³-1176d-1344d²-512d³+216
[0+8a,7+8b,0+8c,7+8d]:	transposed [95] by [1,0,2,3]
[2+8a,7+8b,0+8c,7+8d]:	transposed [96] by [1,0,2,3]
[4+8a,7+8b,0+8c,7+8d]:	transposed [97] by [1,0,2,3]
[6+8a,7+8b,0+8c,7+8d]:	transposed [98] by [1,0,2,3]
[5+8a,1+8b,1+8c,7+8d]:	unknown -> [99] [5,1,1,7] 600a+960a²+512a³+24b+192b²+512b³+24c+192c²+512c³-1176d-1344d²-512d³-216
[3+8a,3+8b,1+8c,7+8d]:	unknown -> [100] [3,3,1,7] 216a+576a²+512a³+216b+576b²+512b³+24c+192c²+512c³-1176d-1344d²-512d³-288
[1+8a,5+8b,1+8c,7+8d]:	transposed [99] by [1,0,2,3]
[7+8a,7+8b,1+8c,7+8d]:	unknown -> [101] [7,7,1,7] 1176a+1344a²+512a³+1176b+1344b²+512b³+24c+192c²+512c³-1176d-1344d²-512d³+344
[7+8a,0+8b,2+8c,7+8d]:	transposed [96] by [0,2,1,3]
[7+8a,2+8b,2+8c,7+8d]:	unknown -> [102] [7,2,2,7] 1176a+1344a²+512a³+96b+384b²+512b³+96c+384c²+512c³-1176d-1344d²-512d³+16
[7+8a,4+8b,2+8c,7+8d]:	unknown -> [103] [7,4,2,7] 1176a+1344a²+512a³+384b+768b²+512b³+96c+384c²+512c³-1176d-1344d²-512d³+72
[7+8a,6+8b,2+8c,7+8d]:	unknown -> [104] [7,6,2,7] 1176a+1344a²+512a³+864b+1152b²+512b³+96c+384c²+512c³-1176d-1344d²-512d³+224
[0+8a,7+8b,2+8c,7+8d]:	transposed [96] by [2,0,1,3]
[2+8a,7+8b,2+8c,7+8d]:	transposed [102] by [1,0,2,3]
[4+8a,7+8b,2+8c,7+8d]:	transposed [103] by [1,0,2,3]
[6+8a,7+8b,2+8c,7+8d]:	transposed [104] by [1,0,2,3]
[3+8a,1+8b,3+8c,7+8d]:	transposed [100] by [0,2,1,3]
[1+8a,3+8b,3+8c,7+8d]:	transposed [100] by [2,0,1,3]
[7+8a,5+8b,3+8c,7+8d]:	unknown -> [105] [7,5,3,7] 1176a+1344a²+512a³+600b+960b²+512b³+216c+576c²+512c³-1176d-1344d²-512d³+152
[5+8a,7+8b,3+8c,7+8d]:	transposed [105] by [1,0,2,3]
[7+8a,0+8b,4+8c,7+8d]:	transposed [97] by [0,2,1,3]
[7+8a,2+8b,4+8c,7+8d]:	transposed [103] by [0,2,1,3]
[7+8a,4+8b,4+8c,7+8d]:	unknown -> [106] [7,4,4,7] 1176a+1344a²+512a³+384b+768b²+512b³+384c+768c²+512c³-1176d-1344d²-512d³+128
[7+8a,6+8b,4+8c,7+8d]:	unknown -> [107] [7,6,4,7] 1176a+1344a²+512a³+864b+1152b²+512b³+384c+768c²+512c³-1176d-1344d²-512d³+280
[0+8a,7+8b,4+8c,7+8d]:	transposed [97] by [2,0,1,3]
[2+8a,7+8b,4+8c,7+8d]:	transposed [103] by [2,0,1,3]
[4+8a,7+8b,4+8c,7+8d]:	transposed [106] by [1,0,2,3]
[6+8a,7+8b,4+8c,7+8d]:	transposed [107] by [1,0,2,3]
[1+8a,1+8b,5+8c,7+8d]:	transposed [99] by [1,2,0,3]
[7+8a,3+8b,5+8c,7+8d]:	transposed [105] by [0,2,1,3]
[5+8a,5+8b,5+8c,7+8d]:	unknown -> [108] [5,5,5,7] 600a+960a²+512a³+600b+960b²+512b³+600c+960c²+512c³-1176d-1344d²-512d³+32
[3+8a,7+8b,5+8c,7+8d]:	transposed [105] by [2,0,1,3]
[7+8a,0+8b,6+8c,7+8d]:	transposed [98] by [0,2,1,3]
[7+8a,2+8b,6+8c,7+8d]:	transposed [104] by [0,2,1,3]
[7+8a,4+8b,6+8c,7+8d]:	transposed [107] by [0,2,1,3]
[7+8a,6+8b,6+8c,7+8d]:	unknown -> [109] [7,6,6,7] 1176a+1344a²+512a³+864b+1152b²+512b³+864c+1152c²+512c³-1176d-1344d²-512d³+432
[0+8a,7+8b,6+8c,7+8d]:	transposed [98] by [2,0,1,3]
[2+8a,7+8b,6+8c,7+8d]:	transposed [104] by [2,0,1,3]
[4+8a,7+8b,6+8c,7+8d]:	transposed [107] by [2,0,1,3]
[6+8a,7+8b,6+8c,7+8d]:	transposed [109] by [1,0,2,3]
[0+8a,0+8b,7+8c,7+8d]:	transposed [95] by [1,2,0,3]
[2+8a,0+8b,7+8c,7+8d]:	transposed [96] by [1,2,0,3]
[4+8a,0+8b,7+8c,7+8d]:	transposed [97] by [1,2,0,3]
[6+8a,0+8b,7+8c,7+8d]:	transposed [98] by [1,2,0,3]
[7+8a,1+8b,7+8c,7+8d]:	transposed [101] by [0,2,1,3]
[0+8a,2+8b,7+8c,7+8d]:	transposed [96] by [2,1,0,3]
[2+8a,2+8b,7+8c,7+8d]:	transposed [102] by [1,2,0,3]
[4+8a,2+8b,7+8c,7+8d]:	transposed [103] by [1,2,0,3]
[6+8a,2+8b,7+8c,7+8d]:	transposed [104] by [1,2,0,3]
[5+8a,3+8b,7+8c,7+8d]:	transposed [105] by [1,2,0,3]
[0+8a,4+8b,7+8c,7+8d]:	transposed [97] by [2,1,0,3]
[2+8a,4+8b,7+8c,7+8d]:	transposed [103] by [2,1,0,3]
[4+8a,4+8b,7+8c,7+8d]:	transposed [106] by [1,2,0,3]
[6+8a,4+8b,7+8c,7+8d]:	transposed [107] by [1,2,0,3]
[3+8a,5+8b,7+8c,7+8d]:	transposed [105] by [2,1,0,3]
[0+8a,6+8b,7+8c,7+8d]:	transposed [98] by [2,1,0,3]
[2+8a,6+8b,7+8c,7+8d]:	transposed [104] by [2,1,0,3]
[4+8a,6+8b,7+8c,7+8d]:	transposed [107] by [2,1,0,3]
[6+8a,6+8b,7+8c,7+8d]:	transposed [109] by [1,2,0,3]
[1+8a,7+8b,7+8c,7+8d]:	transposed [101] by [2,0,1,3]
Maximum level 0 [110] mod 8: a³+b³+c³-d³
