Expanding for base=2, level=5, reasons+features=base,same,similiar norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 4x+4x²-108y-144y²-64y³-24
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: 4x+4x²-108y-144y²-64y³-24
[0+2x,0+2y]:	unknown -> [1] [0,0] x+2x²-27y-72y²-64y³-3
-> solution [2,0],trivial(1)
[1+2x,0+2y]:	unknown -> [2] [1,0] 3x+2x²-27y-72y²-64y³-2
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: x+2x²-27y-72y²-64y³-3
[2+4x,0+4y]:	unknown -> [3] [1,0] 5x+4x²-27y-144y²-256y³
-> solution [2,0],trivial(1)
[0+4x,2+4y]:	unknown -> [4] [0,1] x+4x²-363y-528y²-256y³-83
endexp[1]
expanding queue[2]^0,meter=[2,2]: 3x+2x²-27y-72y²-64y³-2
[1+4x,0+4y]:	unknown -> [5] [0,0] 3x+4x²-27y-144y²-256y³-1
[3+4x,2+4y]:	unknown -> [6] [1,1] 7x+4x²-363y-528y²-256y³-80
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2]: 5x+4x²-27y-144y²-256y³
[2+8x,0+8y]:	unknown -> [7] [0,0] 5x+8x²-27y-288y²-1024y³
-> solution [2,0],trivial(1)
[6+8x,4+8y]:	unknown -> [8] [1,1] 13x+8x²-1083y-1824y²-1024y³-209
endexp[3]
expanding queue[4]^1,meter=[2,2]: x+4x²-363y-528y²-256y³-83
[4+8x,2+8y]:	unknown -> [9] [1,0] 9x+8x²-363y-1056y²-1024y³-39
[0+8x,6+8y]:	unknown -> [10] [0,1] x+8x²-2187y-2592y²-1024y³-615
endexp[4]
expanding queue[5]^2,meter=[2,2]: 3x+4x²-27y-144y²-256y³-1
[5+8x,0+8y]:	unknown -> [11] [1,0] 11x+8x²-27y-288y²-1024y³+3
[1+8x,4+8y]:	unknown -> [12] [0,1] 3x+8x²-1083y-1824y²-1024y³-214
endexp[5]
expanding queue[6]^2,meter=[2,2]: 7x+4x²-363y-528y²-256y³-80
[3+8x,2+8y]:	unknown -> [13] [0,0] 7x+8x²-363y-1056y²-1024y³-40
[7+8x,6+8y]:	unknown -> [14] [1,1] 15x+8x²-2187y-2592y²-1024y³-608
endexp[6]
---------------- level 3
expanding queue[7]^3,meter=[2,2]: 5x+8x²-27y-288y²-1024y³
[2+16x,0+16y]:	unknown -> [15] [0,0] 5x+16x²-27y-576y²-4096y³
-> solution [2,0],trivial(1)
[10+16x,8+16y]:	unknown -> [16] [1,1] 21x+16x²-3675y-6720y²-4096y³-663
endexp[7]
expanding queue[8]^3,meter=[2,2]: 13x+8x²-1083y-1824y²-1024y³-209
[14+16x,4+16y]:	unknown -> [17] [1,0] 29x+16x²-1083y-3648y²-4096y³-94
[6+16x,12+16y]:	unknown -> [18] [0,1] 13x+16x²-7803y-9792y²-4096y³-2070
endexp[8]
expanding queue[9]^4,meter=[2,2]: 9x+8x²-363y-1056y²-1024y³-39
[12+16x,2+16y]:	unknown -> [19] [1,0] 25x+16x²-363y-2112y²-4096y³-11
[4+16x,10+16y]:	unknown -> [20] [0,1] 9x+16x²-5547y-8256y²-4096y³-1241
endexp[9]
expanding queue[10]^4,meter=[2,2]: x+8x²-2187y-2592y²-1024y³-615
[8+16x,6+16y]:	unknown -> [21] [1,0] 17x+16x²-2187y-5184y²-4096y³-303
[0+16x,14+16y]:	unknown -> [22] [0,1] x+16x²-10443y-11328y²-4096y³-3209
endexp[10]
expanding queue[11]^5,meter=[2,2]: 11x+8x²-27y-288y²-1024y³+3
[13+16x,0+16y]:	unknown -> [23] [1,0] 27x+16x²-27y-576y²-4096y³+11
[5+16x,8+16y]:	unknown -> [24] [0,1] 11x+16x²-3675y-6720y²-4096y³-668
endexp[11]
expanding queue[12]^5,meter=[2,2]: 3x+8x²-1083y-1824y²-1024y³-214
[1+16x,4+16y]:	unknown -> [25] [0,0] 3x+16x²-1083y-3648y²-4096y³-107
[9+16x,12+16y]:	unknown -> [26] [1,1] 19x+16x²-7803y-9792y²-4096y³-2067
endexp[12]
expanding queue[13]^6,meter=[2,2]: 7x+8x²-363y-1056y²-1024y³-40
[3+16x,2+16y]:	unknown -> [27] [0,0] 7x+16x²-363y-2112y²-4096y³-20
[11+16x,10+16y]:	unknown -> [28] [1,1] 23x+16x²-5547y-8256y²-4096y³-1234
endexp[13]
expanding queue[14]^6,meter=[2,2]: 15x+8x²-2187y-2592y²-1024y³-608
[7+16x,6+16y]:	unknown -> [29] [0,0] 15x+16x²-2187y-5184y²-4096y³-304
[15+16x,14+16y]:	unknown -> [30] [1,1] 31x+16x²-10443y-11328y²-4096y³-3194
endexp[14]
---------------- level 4
expanding queue[15]^7,meter=[2,2]: 5x+16x²-27y-576y²-4096y³
[2+32x,0+32y]:	unknown -> [31] [0,0] 5x+32x²-27y-1152y²-16384y³
-> solution [2,0],trivial(1)
[18+32x,16+32y]:	unknown -> [32] [1,1] 37x+32x²-13467y-25728y²-16384y³-2339
endexp[15]
expanding queue[16]^7,meter=[2,2]: 21x+16x²-3675y-6720y²-4096y³-663
[26+32x,8+32y]:	unknown -> [33] [1,0] 53x+32x²-3675y-13440y²-16384y³-313
[10+32x,24+32y]:	unknown -> [34] [0,1] 21x+32x²-29403y-38016y²-16384y³-7577
endexp[16]
expanding queue[17]^8,meter=[2,2]: 29x+16x²-1083y-3648y²-4096y³-94
[14+32x,4+32y]:	unknown -> [35] [0,0] 29x+32x²-1083y-7296y²-16384y³-47
[30+32x,20+32y]:	unknown -> [36] [1,1] 61x+32x²-20667y-31872y²-16384y³-4438
endexp[17]
expanding queue[18]^8,meter=[2,2]: 13x+16x²-7803y-9792y²-4096y³-2070
[6+32x,12+32y]:	unknown -> [37] [0,0] 13x+32x²-7803y-19584y²-16384y³-1035
[22+32x,28+32y]:	unknown -> [38] [1,1] 45x+32x²-39675y-44160y²-16384y³-11866
endexp[18]
expanding queue[19]^9,meter=[2,2]: 25x+16x²-363y-2112y²-4096y³-11
[28+32x,2+32y]:	unknown -> [39] [1,0] 57x+32x²-363y-4224y²-16384y³+15
[12+32x,18+32y]:	unknown -> [40] [0,1] 25x+32x²-16875y-28800y²-16384y³-3291
endexp[19]
expanding queue[20]^9,meter=[2,2]: 9x+16x²-5547y-8256y²-4096y³-1241
[20+32x,10+32y]:	unknown -> [41] [1,0] 41x+32x²-5547y-16512y²-16384y³-608
[4+32x,26+32y]:	unknown -> [42] [0,1] 9x+32x²-34347y-41088y²-16384y³-9570
endexp[20]
expanding queue[21]^10,meter=[2,2]: 17x+16x²-2187y-5184y²-4096y³-303
[24+32x,6+32y]:	unknown -> [43] [1,0] 49x+32x²-2187y-10368y²-16384y³-135
[8+32x,22+32y]:	unknown -> [44] [0,1] 17x+32x²-24843y-34944y²-16384y³-5885
endexp[21]
expanding queue[22]^10,meter=[2,2]: x+16x²-10443y-11328y²-4096y³-3209
[16+32x,14+32y]:	unknown -> [45] [1,0] 33x+32x²-10443y-22656y²-16384y³-1596
[0+32x,30+32y]:	unknown -> [46] [0,1] x+32x²-45387y-47232y²-16384y³-14538
endexp[22]
expanding queue[23]^11,meter=[2,2]: 27x+16x²-27y-576y²-4096y³+11
[29+32x,0+32y]:	unknown -> [47] [1,0] 59x+32x²-27y-1152y²-16384y³+27
[13+32x,16+32y]:	unknown -> [48] [0,1] 27x+32x²-13467y-25728y²-16384y³-2344
endexp[23]
expanding queue[24]^11,meter=[2,2]: 11x+16x²-3675y-6720y²-4096y³-668
[5+32x,8+32y]:	unknown -> [49] [0,0] 11x+32x²-3675y-13440y²-16384y³-334
[21+32x,24+32y]:	unknown -> [50] [1,1] 43x+32x²-29403y-38016y²-16384y³-7566
endexp[24]
expanding queue[25]^12,meter=[2,2]: 3x+16x²-1083y-3648y²-4096y³-107
[17+32x,4+32y]:	unknown -> [51] [1,0] 35x+32x²-1083y-7296y²-16384y³-44
[1+32x,20+32y]:	unknown -> [52] [0,1] 3x+32x²-20667y-31872y²-16384y³-4467
endexp[25]
expanding queue[26]^12,meter=[2,2]: 19x+16x²-7803y-9792y²-4096y³-2067
[25+32x,12+32y]:	unknown -> [53] [1,0] 51x+32x²-7803y-19584y²-16384y³-1016
[9+32x,28+32y]:	unknown -> [54] [0,1] 19x+32x²-39675y-44160y²-16384y³-11879
endexp[26]
expanding queue[27]^13,meter=[2,2]: 7x+16x²-363y-2112y²-4096y³-20
[3+32x,2+32y]:	unknown -> [55] [0,0] 7x+32x²-363y-4224y²-16384y³-10
[19+32x,18+32y]:	unknown -> [56] [1,1] 39x+32x²-16875y-28800y²-16384y³-3284
endexp[27]
expanding queue[28]^13,meter=[2,2]: 23x+16x²-5547y-8256y²-4096y³-1234
[11+32x,10+32y]:	unknown -> [57] [0,0] 23x+32x²-5547y-16512y²-16384y³-617
[27+32x,26+32y]:	unknown -> [58] [1,1] 55x+32x²-34347y-41088y²-16384y³-9547
endexp[28]
expanding queue[29]^14,meter=[2,2]: 15x+16x²-2187y-5184y²-4096y³-304
[7+32x,6+32y]:	unknown -> [59] [0,0] 15x+32x²-2187y-10368y²-16384y³-152
[23+32x,22+32y]:	unknown -> [60] [1,1] 47x+32x²-24843y-34944y²-16384y³-5870
endexp[29]
expanding queue[30]^14,meter=[2,2]: 31x+16x²-10443y-11328y²-4096y³-3194
[15+32x,14+32y]:	unknown -> [61] [0,0] 31x+32x²-10443y-22656y²-16384y³-1597
[31+32x,30+32y]:	unknown -> [62] [1,1] 63x+32x²-45387y-47232y²-16384y³-14507
endexp[30]
---------------- level 5
Maximum level 5 [63] mod 2: 4x+4x²-108y-144y²-64y³-24
