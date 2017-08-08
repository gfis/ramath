Expanding for base=2, level=5, reasons+features=base,similiar norm,showfail
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 2x+x²-3y-3y²-y³+2
----------------
expanding queue[0]^-1,meter=[2,2]: 2x+x²-3y-3y²-y³+2
[0+2x,0+2y]:	unknown -> [1] [0,0] 2x+2x²-3y-6y²-4y³+1
[1+2x,0+2y]:	failure constant=5, vgcd=2 [1,0] 8x+4x²-6y-12y²-8y³+5
[0+2x,1+2y]:	failure constant=-5, vgcd=4 [0,1] 4x+4x²-24y-24y²-8y³-5
[1+2x,1+2y]:	failure constant=-1, vgcd=2 [1,1] 4x+2x²-12y-12y²-4y³-1
----------------
expanding queue[1]^0,meter=[1,2]: 2x+2x²-3y-6y²-4y³+1
[0+2x,0+4y]:	failure constant=1, vgcd=2 [0,0] 2x+2x²-6y-24y²-32y³+1
[0+2x,2+4y]:	unknown -> [2] [0,1] x+x²-27y-36y²-16y³-6
----------------
expanding queue[2]^1,meter=[2,2]: x+x²-27y-36y²-16y³-6
[0+4x,2+8y]:	unknown -> [3] [0,0] x+2x²-27y-72y²-64y³-3
-> solution [4,2],NONTRIVIAL
[2+4x,2+8y]:	unknown -> [4] [1,0] 3x+2x²-27y-72y²-64y³-2
[0+4x,6+8y]:	failure constant=-85, vgcd=2 [0,1] 2x+4x²-294y-336y²-128y³-85
[2+4x,6+8y]:	failure constant=-83, vgcd=2 [1,1] 6x+4x²-294y-336y²-128y³-83
----------------
expanding queue[3]^2,meter=[2,2]: x+2x²-27y-72y²-64y³-3
[0+8x,2+16y]:	failure constant=-3, vgcd=2 [0,0] 2x+8x²-54y-288y²-512y³-3
[4+8x,2+16y]:	unknown -> [5] [1,0] 5x+4x²-27y-144y²-256y³
-> solution [4,2],NONTRIVIAL
[0+8x,10+16y]:	unknown -> [6] [0,1] x+4x²-363y-528y²-256y³-83
[4+8x,10+16y]:	failure constant=-163, vgcd=2 [1,1] 10x+8x²-726y-1056y²-512y³-163
expanding queue[4]^2,meter=[2,2]: 3x+2x²-27y-72y²-64y³-2
[2+8x,2+16y]:	unknown -> [7] [0,0] 3x+4x²-27y-144y²-256y³-1
[6+8x,2+16y]:	failure constant=3, vgcd=2 [1,0] 14x+8x²-54y-288y²-512y³+3
[2+8x,10+16y]:	failure constant=-165, vgcd=2 [0,1] 6x+8x²-726y-1056y²-512y³-165
[6+8x,10+16y]:	unknown -> [8] [1,1] 7x+4x²-363y-528y²-256y³-80
----------------
expanding queue[5]^3,meter=[2,2]: 5x+4x²-27y-144y²-256y³
[4+16x,2+32y]:	unknown -> [9] [0,0] 5x+8x²-27y-288y²-1024y³
-> solution [4,2],NONTRIVIAL
[12+16x,2+32y]:	failure constant=9, vgcd=2 [1,0] 26x+16x²-54y-576y²-2048y³+9
[4+16x,18+32y]:	failure constant=-427, vgcd=2 [0,1] 10x+16x²-2166y-3648y²-2048y³-427
[12+16x,18+32y]:	unknown -> [10] [1,1] 13x+8x²-1083y-1824y²-1024y³-209
expanding queue[6]^3,meter=[2,2]: x+4x²-363y-528y²-256y³-83
[0+16x,10+32y]:	failure constant=-83, vgcd=2 [0,0] 2x+16x²-726y-2112y²-2048y³-83
[8+16x,10+32y]:	unknown -> [11] [1,0] 9x+8x²-363y-1056y²-1024y³-39
[0+16x,26+32y]:	unknown -> [12] [0,1] x+8x²-2187y-2592y²-1024y³-615
[8+16x,26+32y]:	failure constant=-1225, vgcd=2 [1,1] 18x+16x²-4374y-5184y²-2048y³-1225
expanding queue[7]^4,meter=[2,2]: 3x+4x²-27y-144y²-256y³-1
[2+16x,2+32y]:	failure constant=-1, vgcd=2 [0,0] 6x+16x²-54y-576y²-2048y³-1
[10+16x,2+32y]:	unknown -> [13] [1,0] 11x+8x²-27y-288y²-1024y³+3
[2+16x,18+32y]:	unknown -> [14] [0,1] 3x+8x²-1083y-1824y²-1024y³-214
[10+16x,18+32y]:	failure constant=-421, vgcd=2 [1,1] 22x+16x²-2166y-3648y²-2048y³-421
expanding queue[8]^4,meter=[2,2]: 7x+4x²-363y-528y²-256y³-80
[6+16x,10+32y]:	unknown -> [15] [0,0] 7x+8x²-363y-1056y²-1024y³-40
[14+16x,10+32y]:	failure constant=-69, vgcd=2 [1,0] 30x+16x²-726y-2112y²-2048y³-69
[6+16x,26+32y]:	failure constant=-1227, vgcd=2 [0,1] 14x+16x²-4374y-5184y²-2048y³-1227
[14+16x,26+32y]:	unknown -> [16] [1,1] 15x+8x²-2187y-2592y²-1024y³-608
----------------
expanding queue[9]^5,meter=[2,2]: 5x+8x²-27y-288y²-1024y³
[4+32x,2+64y]:	unknown -> [17] [0,0] 5x+16x²-27y-576y²-4096y³
-> solution [4,2],NONTRIVIAL
[20+32x,2+64y]:	failure constant=13, vgcd=2 [1,0] 42x+32x²-54y-1152y²-8192y³+13
[4+32x,34+64y]:	failure constant=-1339, vgcd=2 [0,1] 10x+32x²-7350y-13440y²-8192y³-1339
[20+32x,34+64y]:	unknown -> [18] [1,1] 21x+16x²-3675y-6720y²-4096y³-663
expanding queue[10]^5,meter=[2,2]: 13x+8x²-1083y-1824y²-1024y³-209
[12+32x,18+64y]:	failure constant=-209, vgcd=2 [0,0] 26x+32x²-2166y-7296y²-8192y³-209
[28+32x,18+64y]:	unknown -> [19] [1,0] 29x+16x²-1083y-3648y²-4096y³-94
[12+32x,50+64y]:	unknown -> [20] [0,1] 13x+16x²-7803y-9792y²-4096y³-2070
[28+32x,50+64y]:	failure constant=-4119, vgcd=2 [1,1] 58x+32x²-15606y-19584y²-8192y³-4119
expanding queue[11]^6,meter=[2,2]: 9x+8x²-363y-1056y²-1024y³-39
[8+32x,10+64y]:	failure constant=-39, vgcd=2 [0,0] 18x+32x²-726y-4224y²-8192y³-39
[24+32x,10+64y]:	unknown -> [21] [1,0] 25x+16x²-363y-2112y²-4096y³-11
[8+32x,42+64y]:	unknown -> [22] [0,1] 9x+16x²-5547y-8256y²-4096y³-1241
[24+32x,42+64y]:	failure constant=-2465, vgcd=2 [1,1] 50x+32x²-11094y-16512y²-8192y³-2465
expanding queue[12]^6,meter=[2,2]: x+8x²-2187y-2592y²-1024y³-615
[0+32x,26+64y]:	failure constant=-615, vgcd=2 [0,0] 2x+32x²-4374y-10368y²-8192y³-615
[16+32x,26+64y]:	unknown -> [23] [1,0] 17x+16x²-2187y-5184y²-4096y³-303
[0+32x,58+64y]:	unknown -> [24] [0,1] x+16x²-10443y-11328y²-4096y³-3209
[16+32x,58+64y]:	failure constant=-6409, vgcd=2 [1,1] 34x+32x²-20886y-22656y²-8192y³-6409
expanding queue[13]^7,meter=[2,2]: 11x+8x²-27y-288y²-1024y³+3
[10+32x,2+64y]:	failure constant=3, vgcd=2 [0,0] 22x+32x²-54y-1152y²-8192y³+3
[26+32x,2+64y]:	unknown -> [25] [1,0] 27x+16x²-27y-576y²-4096y³+11
[10+32x,34+64y]:	unknown -> [26] [0,1] 11x+16x²-3675y-6720y²-4096y³-668
[26+32x,34+64y]:	failure constant=-1317, vgcd=2 [1,1] 54x+32x²-7350y-13440y²-8192y³-1317
expanding queue[14]^7,meter=[2,2]: 3x+8x²-1083y-1824y²-1024y³-214
[2+32x,18+64y]:	unknown -> [27] [0,0] 3x+16x²-1083y-3648y²-4096y³-107
[18+32x,18+64y]:	failure constant=-203, vgcd=2 [1,0] 38x+32x²-2166y-7296y²-8192y³-203
[2+32x,50+64y]:	failure constant=-4145, vgcd=2 [0,1] 6x+32x²-15606y-19584y²-8192y³-4145
[18+32x,50+64y]:	unknown -> [28] [1,1] 19x+16x²-7803y-9792y²-4096y³-2067
expanding queue[15]^8,meter=[2,2]: 7x+8x²-363y-1056y²-1024y³-40
[6+32x,10+64y]:	unknown -> [29] [0,0] 7x+16x²-363y-2112y²-4096y³-20
[22+32x,10+64y]:	failure constant=-25, vgcd=2 [1,0] 46x+32x²-726y-4224y²-8192y³-25
[6+32x,42+64y]:	failure constant=-2483, vgcd=2 [0,1] 14x+32x²-11094y-16512y²-8192y³-2483
[22+32x,42+64y]:	unknown -> [30] [1,1] 23x+16x²-5547y-8256y²-4096y³-1234
expanding queue[16]^8,meter=[2,2]: 15x+8x²-2187y-2592y²-1024y³-608
[14+32x,26+64y]:	unknown -> [31] [0,0] 15x+16x²-2187y-5184y²-4096y³-304
[30+32x,26+64y]:	failure constant=-585, vgcd=2 [1,0] 62x+32x²-4374y-10368y²-8192y³-585
[14+32x,58+64y]:	failure constant=-6411, vgcd=2 [0,1] 30x+32x²-20886y-22656y²-8192y³-6411
[30+32x,58+64y]:	unknown -> [32] [1,1] 31x+16x²-10443y-11328y²-4096y³-3194
Maximum level 5 [33] mod 2: 2x+x²-3y-3y²-y³+2
