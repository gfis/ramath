Expanding for base=2, level=6, reasons+features=base,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] x²-y³-16
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: x²-y³-16
[0+2x,0+2y]:	unknown -> [1] [0,0] x²-2y³-4
[1+2x,1+2y]:	unknown -> [2] [1,1] 2x+2x²-3y-6y²-4y³-8
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: x²-2y³-4
[0+4x,0+4y]:	unknown -> [3] [0,0] x²-4y³-1
-> solution [4,0],trivial(1)
endexp[1]
expanding queue[2]^0,meter=[2,2]: 2x+2x²-3y-6y²-4y³-8
[1+4x,1+4y]:	unknown -> [4] [0,0] 2x+4x²-3y-12y²-16y³-4
[3+4x,1+4y]:	unknown -> [5] [1,0] 6x+4x²-3y-12y²-16y³-2
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2]: x²-4y³-1
[4+8x,0+8y]:	unknown -> [6] [1,0] x+x²-8y³
-> solution [4,0],trivial(1)
[4+8x,4+8y]:	unknown -> [7] [1,1] x+x²-6y-12y²-8y³-1
endexp[3]
expanding queue[4]^2,meter=[2,2]: 2x+4x²-3y-12y²-16y³-4
[1+8x,1+8y]:	unknown -> [8] [0,0] 2x+8x²-3y-24y²-64y³-2
[5+8x,1+8y]:	unknown -> [9] [1,0] 10x+8x²-3y-24y²-64y³+1
endexp[4]
expanding queue[5]^2,meter=[2,2]: 6x+4x²-3y-12y²-16y³-2
[3+8x,1+8y]:	unknown -> [10] [0,0] 6x+8x²-3y-24y²-64y³-1
[7+8x,1+8y]:	unknown -> [11] [1,0] 14x+8x²-3y-24y²-64y³+4
endexp[5]
---------------- level 3
expanding queue[6]^3,meter=[2,2]: x+x²-8y³
[4+16x,0+16y]:	unknown -> [12] [0,0] x+2x²-32y³
-> solution [4,0],trivial(1)
[12+16x,0+16y]:	unknown -> [13] [1,0] 3x+2x²-32y³+1
[4+16x,8+16y]:	unknown -> [14] [0,1] x+2x²-24y-48y²-32y³-4
[12+16x,8+16y]:	unknown -> [15] [1,1] 3x+2x²-24y-48y²-32y³-3
endexp[6]
expanding queue[7]^3,meter=[2,2]: x+x²-6y-12y²-8y³-1
endexp[7]
expanding queue[8]^4,meter=[2,2]: 2x+8x²-3y-24y²-64y³-2
[1+16x,1+16y]:	unknown -> [16] [0,0] 2x+16x²-3y-48y²-256y³-1
[9+16x,1+16y]:	unknown -> [17] [1,0] 18x+16x²-3y-48y²-256y³+4
endexp[8]
expanding queue[9]^4,meter=[2,2]: 10x+8x²-3y-24y²-64y³+1
[5+16x,9+16y]:	unknown -> [18] [0,1] 10x+16x²-243y-432y²-256y³-45
[13+16x,9+16y]:	unknown -> [19] [1,1] 26x+16x²-243y-432y²-256y³-36
endexp[9]
expanding queue[10]^5,meter=[2,2]: 6x+8x²-3y-24y²-64y³-1
[3+16x,9+16y]:	unknown -> [20] [0,1] 6x+16x²-243y-432y²-256y³-46
[11+16x,9+16y]:	unknown -> [21] [1,1] 22x+16x²-243y-432y²-256y³-39
endexp[10]
expanding queue[11]^5,meter=[2,2]: 14x+8x²-3y-24y²-64y³+4
[7+16x,1+16y]:	unknown -> [22] [0,0] 14x+16x²-3y-48y²-256y³+2
[15+16x,1+16y]:	unknown -> [23] [1,0] 30x+16x²-3y-48y²-256y³+13
endexp[11]
---------------- level 4
expanding queue[12]^6,meter=[2,2]: x+2x²-32y³
[4+32x,0+32y]:	unknown -> [24] [0,0] x+4x²-128y³
-> solution [4,0],trivial(1)
[4+32x,16+32y]:	unknown -> [25] [0,1] x+4x²-96y-192y²-128y³-16
endexp[12]
expanding queue[13]^6,meter=[2,2]: 3x+2x²-32y³+1
[28+32x,0+32y]:	unknown -> [26] [1,0] 7x+4x²-128y³+3
[28+32x,16+32y]:	unknown -> [27] [1,1] 7x+4x²-96y-192y²-128y³-13
endexp[13]
expanding queue[14]^6,meter=[2,2]: x+2x²-24y-48y²-32y³-4
[4+32x,8+32y]:	unknown -> [28] [0,0] x+4x²-24y-96y²-128y³-2
[4+32x,24+32y]:	unknown -> [29] [0,1] x+4x²-216y-288y²-128y³-54
endexp[14]
expanding queue[15]^6,meter=[2,2]: 3x+2x²-24y-48y²-32y³-3
[28+32x,8+32y]:	unknown -> [30] [1,0] 7x+4x²-24y-96y²-128y³+1
[28+32x,24+32y]:	unknown -> [31] [1,1] 7x+4x²-216y-288y²-128y³-51
endexp[15]
expanding queue[16]^8,meter=[2,2]: 2x+16x²-3y-48y²-256y³-1
[1+32x,17+32y]:	unknown -> [32] [0,1] 2x+32x²-867y-1632y²-1024y³-154
[17+32x,17+32y]:	unknown -> [33] [1,1] 34x+32x²-867y-1632y²-1024y³-145
endexp[16]
expanding queue[17]^8,meter=[2,2]: 18x+16x²-3y-48y²-256y³+4
[9+32x,1+32y]:	unknown -> [34] [0,0] 18x+32x²-3y-96y²-1024y³+2
[25+32x,1+32y]:	unknown -> [35] [1,0] 50x+32x²-3y-96y²-1024y³+19
endexp[17]
expanding queue[18]^9,meter=[2,2]: 10x+16x²-243y-432y²-256y³-45
[5+32x,25+32y]:	unknown -> [36] [0,1] 10x+32x²-1875y-2400y²-1024y³-488
[21+32x,25+32y]:	unknown -> [37] [1,1] 42x+32x²-1875y-2400y²-1024y³-475
endexp[18]
expanding queue[19]^9,meter=[2,2]: 26x+16x²-243y-432y²-256y³-36
[13+32x,9+32y]:	unknown -> [38] [0,0] 26x+32x²-243y-864y²-1024y³-18
[29+32x,9+32y]:	unknown -> [39] [1,0] 58x+32x²-243y-864y²-1024y³+3
endexp[19]
expanding queue[20]^10,meter=[2,2]: 6x+16x²-243y-432y²-256y³-46
[3+32x,9+32y]:	unknown -> [40] [0,0] 6x+32x²-243y-864y²-1024y³-23
[19+32x,9+32y]:	unknown -> [41] [1,0] 38x+32x²-243y-864y²-1024y³-12
endexp[20]
expanding queue[21]^10,meter=[2,2]: 22x+16x²-243y-432y²-256y³-39
[11+32x,25+32y]:	unknown -> [42] [0,1] 22x+32x²-1875y-2400y²-1024y³-485
[27+32x,25+32y]:	unknown -> [43] [1,1] 54x+32x²-1875y-2400y²-1024y³-466
endexp[21]
expanding queue[22]^11,meter=[2,2]: 14x+16x²-3y-48y²-256y³+2
[7+32x,1+32y]:	unknown -> [44] [0,0] 14x+32x²-3y-96y²-1024y³+1
[23+32x,1+32y]:	unknown -> [45] [1,0] 46x+32x²-3y-96y²-1024y³+16
endexp[22]
expanding queue[23]^11,meter=[2,2]: 30x+16x²-3y-48y²-256y³+13
[15+32x,17+32y]:	unknown -> [46] [0,1] 30x+32x²-867y-1632y²-1024y³-147
[31+32x,17+32y]:	unknown -> [47] [1,1] 62x+32x²-867y-1632y²-1024y³-124
endexp[23]
---------------- level 5
expanding queue[24]^12,meter=[2,2]: x+4x²-128y³
[4+64x,0+64y]:	unknown -> [48] [0,0] x+8x²-512y³
-> solution [4,0],trivial(1)
[4+64x,32+64y]:	unknown -> [49] [0,1] x+8x²-384y-768y²-512y³-64
endexp[24]
expanding queue[25]^12,meter=[2,2]: x+4x²-96y-192y²-128y³-16
[4+64x,16+64y]:	unknown -> [50] [0,0] x+8x²-96y-384y²-512y³-8
[4+64x,48+64y]:	unknown -> [51] [0,1] x+8x²-864y-1152y²-512y³-216
endexp[25]
expanding queue[26]^13,meter=[2,2]: 7x+4x²-128y³+3
[60+64x,0+64y]:	unknown -> [52] [1,0] 15x+8x²-512y³+7
[60+64x,32+64y]:	unknown -> [53] [1,1] 15x+8x²-384y-768y²-512y³-57
endexp[26]
expanding queue[27]^13,meter=[2,2]: 7x+4x²-96y-192y²-128y³-13
[60+64x,16+64y]:	unknown -> [54] [1,0] 15x+8x²-96y-384y²-512y³-1
[60+64x,48+64y]:	unknown -> [55] [1,1] 15x+8x²-864y-1152y²-512y³-209
endexp[27]
expanding queue[28]^14,meter=[2,2]: x+4x²-24y-96y²-128y³-2
[4+64x,8+64y]:	unknown -> [56] [0,0] x+8x²-24y-192y²-512y³-1
[4+64x,40+64y]:	unknown -> [57] [0,1] x+8x²-600y-960y²-512y³-125
endexp[28]
expanding queue[29]^14,meter=[2,2]: x+4x²-216y-288y²-128y³-54
[4+64x,24+64y]:	unknown -> [58] [0,0] x+8x²-216y-576y²-512y³-27
[4+64x,56+64y]:	unknown -> [59] [0,1] x+8x²-1176y-1344y²-512y³-343
endexp[29]
expanding queue[30]^15,meter=[2,2]: 7x+4x²-24y-96y²-128y³+1
[60+64x,8+64y]:	unknown -> [60] [1,0] 15x+8x²-24y-192y²-512y³+6
[60+64x,40+64y]:	unknown -> [61] [1,1] 15x+8x²-600y-960y²-512y³-118
endexp[30]
expanding queue[31]^15,meter=[2,2]: 7x+4x²-216y-288y²-128y³-51
[60+64x,24+64y]:	unknown -> [62] [1,0] 15x+8x²-216y-576y²-512y³-20
[60+64x,56+64y]:	unknown -> [63] [1,1] 15x+8x²-1176y-1344y²-512y³-336
endexp[31]
expanding queue[32]^16,meter=[2,2]: 2x+32x²-867y-1632y²-1024y³-154
[1+64x,17+64y]:	unknown -> [64] [0,0] 2x+64x²-867y-3264y²-4096y³-77
[33+64x,17+64y]:	unknown -> [65] [1,0] 66x+64x²-867y-3264y²-4096y³-60
endexp[32]
expanding queue[33]^16,meter=[2,2]: 34x+32x²-867y-1632y²-1024y³-145
[17+64x,49+64y]:	unknown -> [66] [0,1] 34x+64x²-7203y-9408y²-4096y³-1834
[49+64x,49+64y]:	unknown -> [67] [1,1] 98x+64x²-7203y-9408y²-4096y³-1801
endexp[33]
expanding queue[34]^17,meter=[2,2]: 18x+32x²-3y-96y²-1024y³+2
[9+64x,1+64y]:	unknown -> [68] [0,0] 18x+64x²-3y-192y²-4096y³+1
[41+64x,1+64y]:	unknown -> [69] [1,0] 82x+64x²-3y-192y²-4096y³+26
endexp[34]
expanding queue[35]^17,meter=[2,2]: 50x+32x²-3y-96y²-1024y³+19
[25+64x,33+64y]:	unknown -> [70] [0,1] 50x+64x²-3267y-6336y²-4096y³-552
[57+64x,33+64y]:	unknown -> [71] [1,1] 114x+64x²-3267y-6336y²-4096y³-511
endexp[35]
expanding queue[36]^18,meter=[2,2]: 10x+32x²-1875y-2400y²-1024y³-488
[5+64x,25+64y]:	unknown -> [72] [0,0] 10x+64x²-1875y-4800y²-4096y³-244
[37+64x,25+64y]:	unknown -> [73] [1,0] 74x+64x²-1875y-4800y²-4096y³-223
endexp[36]
expanding queue[37]^18,meter=[2,2]: 42x+32x²-1875y-2400y²-1024y³-475
[21+64x,57+64y]:	unknown -> [74] [0,1] 42x+64x²-9747y-10944y²-4096y³-2887
[53+64x,57+64y]:	unknown -> [75] [1,1] 106x+64x²-9747y-10944y²-4096y³-2850
endexp[37]
expanding queue[38]^19,meter=[2,2]: 26x+32x²-243y-864y²-1024y³-18
[13+64x,9+64y]:	unknown -> [76] [0,0] 26x+64x²-243y-1728y²-4096y³-9
[45+64x,9+64y]:	unknown -> [77] [1,0] 90x+64x²-243y-1728y²-4096y³+20
endexp[38]
expanding queue[39]^19,meter=[2,2]: 58x+32x²-243y-864y²-1024y³+3
[29+64x,41+64y]:	unknown -> [78] [0,1] 58x+64x²-5043y-7872y²-4096y³-1064
[61+64x,41+64y]:	unknown -> [79] [1,1] 122x+64x²-5043y-7872y²-4096y³-1019
endexp[39]
expanding queue[40]^20,meter=[2,2]: 6x+32x²-243y-864y²-1024y³-23
[3+64x,41+64y]:	unknown -> [80] [0,1] 6x+64x²-5043y-7872y²-4096y³-1077
[35+64x,41+64y]:	unknown -> [81] [1,1] 70x+64x²-5043y-7872y²-4096y³-1058
endexp[40]
expanding queue[41]^20,meter=[2,2]: 38x+32x²-243y-864y²-1024y³-12
[19+64x,9+64y]:	unknown -> [82] [0,0] 38x+64x²-243y-1728y²-4096y³-6
[51+64x,9+64y]:	unknown -> [83] [1,0] 102x+64x²-243y-1728y²-4096y³+29
endexp[41]
expanding queue[42]^21,meter=[2,2]: 22x+32x²-1875y-2400y²-1024y³-485
[11+64x,57+64y]:	unknown -> [84] [0,1] 22x+64x²-9747y-10944y²-4096y³-2892
[43+64x,57+64y]:	unknown -> [85] [1,1] 86x+64x²-9747y-10944y²-4096y³-2865
endexp[42]
expanding queue[43]^21,meter=[2,2]: 54x+32x²-1875y-2400y²-1024y³-466
[27+64x,25+64y]:	unknown -> [86] [0,0] 54x+64x²-1875y-4800y²-4096y³-233
[59+64x,25+64y]:	unknown -> [87] [1,0] 118x+64x²-1875y-4800y²-4096y³-190
endexp[43]
expanding queue[44]^22,meter=[2,2]: 14x+32x²-3y-96y²-1024y³+1
[7+64x,33+64y]:	unknown -> [88] [0,1] 14x+64x²-3267y-6336y²-4096y³-561
[39+64x,33+64y]:	unknown -> [89] [1,1] 78x+64x²-3267y-6336y²-4096y³-538
endexp[44]
expanding queue[45]^22,meter=[2,2]: 46x+32x²-3y-96y²-1024y³+16
[23+64x,1+64y]:	unknown -> [90] [0,0] 46x+64x²-3y-192y²-4096y³+8
[55+64x,1+64y]:	unknown -> [91] [1,0] 110x+64x²-3y-192y²-4096y³+47
endexp[45]
expanding queue[46]^23,meter=[2,2]: 30x+32x²-867y-1632y²-1024y³-147
[15+64x,49+64y]:	unknown -> [92] [0,1] 30x+64x²-7203y-9408y²-4096y³-1835
[47+64x,49+64y]:	unknown -> [93] [1,1] 94x+64x²-7203y-9408y²-4096y³-1804
endexp[46]
expanding queue[47]^23,meter=[2,2]: 62x+32x²-867y-1632y²-1024y³-124
[31+64x,17+64y]:	unknown -> [94] [0,0] 62x+64x²-867y-3264y²-4096y³-62
[63+64x,17+64y]:	unknown -> [95] [1,0] 126x+64x²-867y-3264y²-4096y³-15
endexp[47]
---------------- level 6
Maximum level 6 [96] mod 2: x²-y³-16
