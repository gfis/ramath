Expanding for base=2, level=6, reasons+features=base,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] x²-y³+4
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: x²-y³+4
[0+2x,0+2y]:	unknown -> [1] [0,0] x²-2y³+1
-> solution [2,2],trivial(2)
[1+2x,1+2y]:	unknown -> [2] [1,1] 2x+2x²-3y-6y²-4y³+2
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: x²-2y³+1
[2+4x,2+4y]:	unknown -> [3] [1,1] x+x²-3y-6y²-4y³
-> solution [2,2],trivial(2)
endexp[1]
expanding queue[2]^0,meter=[2,2]: 2x+2x²-3y-6y²-4y³+2
[1+4x,1+4y]:	unknown -> [4] [0,0] 2x+4x²-3y-12y²-16y³+1
[3+4x,1+4y]:	unknown -> [5] [1,0] 6x+4x²-3y-12y²-16y³+3
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2]: x+x²-3y-6y²-4y³
[2+8x,2+8y]:	unknown -> [6] [0,0] x+2x²-3y-12y²-16y³
-> solution [2,2],trivial(2)
[6+8x,2+8y]:	unknown -> [7] [1,0] 3x+2x²-3y-12y²-16y³+1
endexp[3]
expanding queue[4]^2,meter=[2,2]: 2x+4x²-3y-12y²-16y³+1
[1+8x,5+8y]:	unknown -> [8] [0,1] 2x+8x²-75y-120y²-64y³-15
[5+8x,5+8y]:	unknown -> [9] [1,1] 10x+8x²-75y-120y²-64y³-12
endexp[4]
expanding queue[5]^2,meter=[2,2]: 6x+4x²-3y-12y²-16y³+3
[3+8x,5+8y]:	unknown -> [10] [0,1] 6x+8x²-75y-120y²-64y³-14
-> solution [11,5],NONTRIVIAL
[7+8x,5+8y]:	unknown -> [11] [1,1] 14x+8x²-75y-120y²-64y³-9
endexp[5]
---------------- level 3
expanding queue[6]^3,meter=[2,2]: x+2x²-3y-12y²-16y³
[2+16x,2+16y]:	unknown -> [12] [0,0] x+4x²-3y-24y²-64y³
-> solution [2,2],trivial(2)
[10+16x,10+16y]:	unknown -> [13] [1,1] 5x+4x²-75y-120y²-64y³-14
endexp[6]
expanding queue[7]^3,meter=[2,2]: 3x+2x²-3y-12y²-16y³+1
[14+16x,2+16y]:	unknown -> [14] [1,0] 7x+4x²-3y-24y²-64y³+3
[6+16x,10+16y]:	unknown -> [15] [0,1] 3x+4x²-75y-120y²-64y³-15
endexp[7]
expanding queue[8]^4,meter=[2,2]: 2x+8x²-75y-120y²-64y³-15
[1+16x,13+16y]:	unknown -> [16] [0,1] 2x+16x²-507y-624y²-256y³-137
[9+16x,13+16y]:	unknown -> [17] [1,1] 18x+16x²-507y-624y²-256y³-132
endexp[8]
expanding queue[9]^4,meter=[2,2]: 10x+8x²-75y-120y²-64y³-12
[5+16x,5+16y]:	unknown -> [18] [0,0] 10x+16x²-75y-240y²-256y³-6
[13+16x,5+16y]:	unknown -> [19] [1,0] 26x+16x²-75y-240y²-256y³+3
endexp[9]
expanding queue[10]^5,meter=[2,2]: 6x+8x²-75y-120y²-64y³-14
[3+16x,5+16y]:	unknown -> [20] [0,0] 6x+16x²-75y-240y²-256y³-7
[11+16x,5+16y]:	unknown -> [21] [1,0] 22x+16x²-75y-240y²-256y³
-> solution [11,5],NONTRIVIAL
endexp[10]
expanding queue[11]^5,meter=[2,2]: 14x+8x²-75y-120y²-64y³-9
[7+16x,13+16y]:	unknown -> [22] [0,1] 14x+16x²-507y-624y²-256y³-134
[15+16x,13+16y]:	unknown -> [23] [1,1] 30x+16x²-507y-624y²-256y³-123
endexp[11]
---------------- level 4
expanding queue[12]^6,meter=[2,2]: x+4x²-3y-24y²-64y³
[2+32x,2+32y]:	unknown -> [24] [0,0] x+8x²-3y-48y²-256y³
-> solution [2,2],trivial(2)
[18+32x,18+32y]:	unknown -> [25] [1,1] 9x+8x²-243y-432y²-256y³-43
endexp[12]
expanding queue[13]^6,meter=[2,2]: 5x+4x²-75y-120y²-64y³-14
[10+32x,10+32y]:	unknown -> [26] [0,0] 5x+8x²-75y-240y²-256y³-7
[26+32x,26+32y]:	unknown -> [27] [1,1] 13x+8x²-507y-624y²-256y³-132
endexp[13]
expanding queue[14]^7,meter=[2,2]: 7x+4x²-3y-24y²-64y³+3
[30+32x,2+32y]:	unknown -> [28] [1,0] 15x+8x²-3y-48y²-256y³+7
[14+32x,18+32y]:	unknown -> [29] [0,1] 7x+8x²-243y-432y²-256y³-44
endexp[14]
expanding queue[15]^7,meter=[2,2]: 3x+4x²-75y-120y²-64y³-15
[22+32x,10+32y]:	unknown -> [30] [1,0] 11x+8x²-75y-240y²-256y³-4
[6+32x,26+32y]:	unknown -> [31] [0,1] 3x+8x²-507y-624y²-256y³-137
endexp[15]
expanding queue[16]^8,meter=[2,2]: 2x+16x²-507y-624y²-256y³-137
[1+32x,29+32y]:	unknown -> [32] [0,1] 2x+32x²-2523y-2784y²-1024y³-762
[17+32x,29+32y]:	unknown -> [33] [1,1] 34x+32x²-2523y-2784y²-1024y³-753
endexp[16]
expanding queue[17]^8,meter=[2,2]: 18x+16x²-507y-624y²-256y³-132
[9+32x,13+32y]:	unknown -> [34] [0,0] 18x+32x²-507y-1248y²-1024y³-66
[25+32x,13+32y]:	unknown -> [35] [1,0] 50x+32x²-507y-1248y²-1024y³-49
endexp[17]
expanding queue[18]^9,meter=[2,2]: 10x+16x²-75y-240y²-256y³-6
[5+32x,5+32y]:	unknown -> [36] [0,0] 10x+32x²-75y-480y²-1024y³-3
[21+32x,5+32y]:	unknown -> [37] [1,0] 42x+32x²-75y-480y²-1024y³+10
endexp[18]
expanding queue[19]^9,meter=[2,2]: 26x+16x²-75y-240y²-256y³+3
[13+32x,21+32y]:	unknown -> [38] [0,1] 26x+32x²-1323y-2016y²-1024y³-284
[29+32x,21+32y]:	unknown -> [39] [1,1] 58x+32x²-1323y-2016y²-1024y³-263
endexp[19]
expanding queue[20]^10,meter=[2,2]: 6x+16x²-75y-240y²-256y³-7
[3+32x,21+32y]:	unknown -> [40] [0,1] 6x+32x²-1323y-2016y²-1024y³-289
[19+32x,21+32y]:	unknown -> [41] [1,1] 38x+32x²-1323y-2016y²-1024y³-278
endexp[20]
expanding queue[21]^10,meter=[2,2]: 22x+16x²-75y-240y²-256y³
[11+32x,5+32y]:	unknown -> [42] [0,0] 22x+32x²-75y-480y²-1024y³
-> solution [11,5],NONTRIVIAL
[27+32x,5+32y]:	unknown -> [43] [1,0] 54x+32x²-75y-480y²-1024y³+19
endexp[21]
expanding queue[22]^11,meter=[2,2]: 14x+16x²-507y-624y²-256y³-134
[7+32x,13+32y]:	unknown -> [44] [0,0] 14x+32x²-507y-1248y²-1024y³-67
[23+32x,13+32y]:	unknown -> [45] [1,0] 46x+32x²-507y-1248y²-1024y³-52
endexp[22]
expanding queue[23]^11,meter=[2,2]: 30x+16x²-507y-624y²-256y³-123
[15+32x,29+32y]:	unknown -> [46] [0,1] 30x+32x²-2523y-2784y²-1024y³-755
[31+32x,29+32y]:	unknown -> [47] [1,1] 62x+32x²-2523y-2784y²-1024y³-732
endexp[23]
---------------- level 5
expanding queue[24]^12,meter=[2,2]: x+8x²-3y-48y²-256y³
[2+64x,2+64y]:	unknown -> [48] [0,0] x+16x²-3y-96y²-1024y³
-> solution [2,2],trivial(2)
[34+64x,34+64y]:	unknown -> [49] [1,1] 17x+16x²-867y-1632y²-1024y³-149
endexp[24]
expanding queue[25]^12,meter=[2,2]: 9x+8x²-243y-432y²-256y³-43
[50+64x,18+64y]:	unknown -> [50] [1,0] 25x+16x²-243y-864y²-1024y³-13
[18+64x,50+64y]:	unknown -> [51] [0,1] 9x+16x²-1875y-2400y²-1024y³-487
endexp[25]
expanding queue[26]^13,meter=[2,2]: 5x+8x²-75y-240y²-256y³-7
[42+64x,10+64y]:	unknown -> [52] [1,0] 21x+16x²-75y-480y²-1024y³+3
[10+64x,42+64y]:	unknown -> [53] [0,1] 5x+16x²-1323y-2016y²-1024y³-289
endexp[26]
expanding queue[27]^13,meter=[2,2]: 13x+8x²-507y-624y²-256y³-132
[26+64x,26+64y]:	unknown -> [54] [0,0] 13x+16x²-507y-1248y²-1024y³-66
[58+64x,58+64y]:	unknown -> [55] [1,1] 29x+16x²-2523y-2784y²-1024y³-749
endexp[27]
expanding queue[28]^14,meter=[2,2]: 15x+8x²-3y-48y²-256y³+7
[62+64x,2+64y]:	unknown -> [56] [1,0] 31x+16x²-3y-96y²-1024y³+15
[30+64x,34+64y]:	unknown -> [57] [0,1] 15x+16x²-867y-1632y²-1024y³-150
endexp[28]
expanding queue[29]^14,meter=[2,2]: 7x+8x²-243y-432y²-256y³-44
[14+64x,18+64y]:	unknown -> [58] [0,0] 7x+16x²-243y-864y²-1024y³-22
[46+64x,50+64y]:	unknown -> [59] [1,1] 23x+16x²-1875y-2400y²-1024y³-480
endexp[29]
expanding queue[30]^15,meter=[2,2]: 11x+8x²-75y-240y²-256y³-4
[22+64x,10+64y]:	unknown -> [60] [0,0] 11x+16x²-75y-480y²-1024y³-2
[54+64x,42+64y]:	unknown -> [61] [1,1] 27x+16x²-1323y-2016y²-1024y³-278
endexp[30]
expanding queue[31]^15,meter=[2,2]: 3x+8x²-507y-624y²-256y³-137
[38+64x,26+64y]:	unknown -> [62] [1,0] 19x+16x²-507y-1248y²-1024y³-63
[6+64x,58+64y]:	unknown -> [63] [0,1] 3x+16x²-2523y-2784y²-1024y³-762
endexp[31]
expanding queue[32]^16,meter=[2,2]: 2x+32x²-2523y-2784y²-1024y³-762
[1+64x,29+64y]:	unknown -> [64] [0,0] 2x+64x²-2523y-5568y²-4096y³-381
[33+64x,29+64y]:	unknown -> [65] [1,0] 66x+64x²-2523y-5568y²-4096y³-364
endexp[32]
expanding queue[33]^16,meter=[2,2]: 34x+32x²-2523y-2784y²-1024y³-753
[17+64x,61+64y]:	unknown -> [66] [0,1] 34x+64x²-11163y-11712y²-4096y³-3542
[49+64x,61+64y]:	unknown -> [67] [1,1] 98x+64x²-11163y-11712y²-4096y³-3509
endexp[33]
expanding queue[34]^17,meter=[2,2]: 18x+32x²-507y-1248y²-1024y³-66
[9+64x,13+64y]:	unknown -> [68] [0,0] 18x+64x²-507y-2496y²-4096y³-33
[41+64x,13+64y]:	unknown -> [69] [1,0] 82x+64x²-507y-2496y²-4096y³-8
endexp[34]
expanding queue[35]^17,meter=[2,2]: 50x+32x²-507y-1248y²-1024y³-49
[25+64x,45+64y]:	unknown -> [70] [0,1] 50x+64x²-6075y-8640y²-4096y³-1414
[57+64x,45+64y]:	unknown -> [71] [1,1] 114x+64x²-6075y-8640y²-4096y³-1373
endexp[35]
expanding queue[36]^18,meter=[2,2]: 10x+32x²-75y-480y²-1024y³-3
[5+64x,37+64y]:	unknown -> [72] [0,1] 10x+64x²-4107y-7104y²-4096y³-791
[37+64x,37+64y]:	unknown -> [73] [1,1] 74x+64x²-4107y-7104y²-4096y³-770
endexp[36]
expanding queue[37]^18,meter=[2,2]: 42x+32x²-75y-480y²-1024y³+10
[21+64x,5+64y]:	unknown -> [74] [0,0] 42x+64x²-75y-960y²-4096y³+5
[53+64x,5+64y]:	unknown -> [75] [1,0] 106x+64x²-75y-960y²-4096y³+42
endexp[37]
expanding queue[38]^19,meter=[2,2]: 26x+32x²-1323y-2016y²-1024y³-284
[13+64x,21+64y]:	unknown -> [76] [0,0] 26x+64x²-1323y-4032y²-4096y³-142
[45+64x,21+64y]:	unknown -> [77] [1,0] 90x+64x²-1323y-4032y²-4096y³-113
endexp[38]
expanding queue[39]^19,meter=[2,2]: 58x+32x²-1323y-2016y²-1024y³-263
[29+64x,53+64y]:	unknown -> [78] [0,1] 58x+64x²-8427y-10176y²-4096y³-2313
[61+64x,53+64y]:	unknown -> [79] [1,1] 122x+64x²-8427y-10176y²-4096y³-2268
endexp[39]
expanding queue[40]^20,meter=[2,2]: 6x+32x²-1323y-2016y²-1024y³-289
[3+64x,53+64y]:	unknown -> [80] [0,1] 6x+64x²-8427y-10176y²-4096y³-2326
[35+64x,53+64y]:	unknown -> [81] [1,1] 70x+64x²-8427y-10176y²-4096y³-2307
endexp[40]
expanding queue[41]^20,meter=[2,2]: 38x+32x²-1323y-2016y²-1024y³-278
[19+64x,21+64y]:	unknown -> [82] [0,0] 38x+64x²-1323y-4032y²-4096y³-139
[51+64x,21+64y]:	unknown -> [83] [1,0] 102x+64x²-1323y-4032y²-4096y³-104
endexp[41]
expanding queue[42]^21,meter=[2,2]: 22x+32x²-75y-480y²-1024y³
[11+64x,5+64y]:	unknown -> [84] [0,0] 22x+64x²-75y-960y²-4096y³
-> solution [11,5],NONTRIVIAL
[43+64x,5+64y]:	unknown -> [85] [1,0] 86x+64x²-75y-960y²-4096y³+27
endexp[42]
expanding queue[43]^21,meter=[2,2]: 54x+32x²-75y-480y²-1024y³+19
[27+64x,37+64y]:	unknown -> [86] [0,1] 54x+64x²-4107y-7104y²-4096y³-780
[59+64x,37+64y]:	unknown -> [87] [1,1] 118x+64x²-4107y-7104y²-4096y³-737
endexp[43]
expanding queue[44]^22,meter=[2,2]: 14x+32x²-507y-1248y²-1024y³-67
[7+64x,45+64y]:	unknown -> [88] [0,1] 14x+64x²-6075y-8640y²-4096y³-1423
[39+64x,45+64y]:	unknown -> [89] [1,1] 78x+64x²-6075y-8640y²-4096y³-1400
endexp[44]
expanding queue[45]^22,meter=[2,2]: 46x+32x²-507y-1248y²-1024y³-52
[23+64x,13+64y]:	unknown -> [90] [0,0] 46x+64x²-507y-2496y²-4096y³-26
[55+64x,13+64y]:	unknown -> [91] [1,0] 110x+64x²-507y-2496y²-4096y³+13
endexp[45]
expanding queue[46]^23,meter=[2,2]: 30x+32x²-2523y-2784y²-1024y³-755
[15+64x,61+64y]:	unknown -> [92] [0,1] 30x+64x²-11163y-11712y²-4096y³-3543
[47+64x,61+64y]:	unknown -> [93] [1,1] 94x+64x²-11163y-11712y²-4096y³-3512
endexp[46]
expanding queue[47]^23,meter=[2,2]: 62x+32x²-2523y-2784y²-1024y³-732
[31+64x,29+64y]:	unknown -> [94] [0,0] 62x+64x²-2523y-5568y²-4096y³-366
[63+64x,29+64y]:	unknown -> [95] [1,0] 126x+64x²-2523y-5568y²-4096y³-319
endexp[47]
---------------- level 6
Maximum level 6 [96] mod 2: x²-y³+4
