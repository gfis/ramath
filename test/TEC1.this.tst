Expanding for base=2, reasons+features=base,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] x²-y³+4
----------------
expanding queue[0]^-1,meter=[2,2]: x²-y³+4
[0+2x,0+2y]:	unknown -> [1] [0,0] x²-2y³+1
-> solution [2,2],trivial(2)
[1+2x,1+2y]:	unknown -> [2] [1,1] 2x+2x²-3y-6y²-4y³+2
----------------
expanding queue[1]^0,meter=[2,2]: x²-2y³+1
[2+4x,2+4y]:	unknown -> [3] [1,1] x+x²-3y-6y²-4y³
-> solution [2,2],trivial(2)
expanding queue[2]^0,meter=[2,2]: 2x+2x²-3y-6y²-4y³+2
[1+4x,1+4y]:	unknown -> [4] [0,0] 2x+4x²-3y-12y²-16y³+1
[3+4x,1+4y]:	unknown -> [5] [1,0] 6x+4x²-3y-12y²-16y³+3
----------------
expanding queue[3]^1,meter=[2,2]: x+x²-3y-6y²-4y³
[2+8x,2+8y]:	unknown -> [6] [0,0] x+2x²-3y-12y²-16y³
-> solution [2,2],trivial(2)
[6+8x,2+8y]:	unknown -> [7] [1,0] 3x+2x²-3y-12y²-16y³+1
expanding queue[4]^2,meter=[2,2]: 2x+4x²-3y-12y²-16y³+1
[1+8x,5+8y]:	unknown -> [8] [0,1] 2x+8x²-75y-120y²-64y³-15
[5+8x,5+8y]:	unknown -> [9] [1,1] 10x+8x²-75y-120y²-64y³-12
expanding queue[5]^2,meter=[2,2]: 6x+4x²-3y-12y²-16y³+3
[3+8x,5+8y]:	unknown -> [10] [0,1] 6x+8x²-75y-120y²-64y³-14
-> solution [11,5],NONTRIVIAL
[7+8x,5+8y]:	unknown -> [11] [1,1] 14x+8x²-75y-120y²-64y³-9
----------------
expanding queue[6]^3,meter=[2,2]: x+2x²-3y-12y²-16y³
[2+16x,2+16y]:	unknown -> [12] [0,0] x+4x²-3y-24y²-64y³
-> solution [2,2],trivial(2)
[10+16x,10+16y]:	unknown -> [13] [1,1] 5x+4x²-75y-120y²-64y³-14
expanding queue[7]^3,meter=[2,2]: 3x+2x²-3y-12y²-16y³+1
[14+16x,2+16y]:	unknown -> [14] [1,0] 7x+4x²-3y-24y²-64y³+3
[6+16x,10+16y]:	unknown -> [15] [0,1] 3x+4x²-75y-120y²-64y³-15
expanding queue[8]^4,meter=[2,2]: 2x+8x²-75y-120y²-64y³-15
[1+16x,13+16y]:	unknown -> [16] [0,1] 2x+16x²-507y-624y²-256y³-137
[9+16x,13+16y]:	unknown -> [17] [1,1] 18x+16x²-507y-624y²-256y³-132
expanding queue[9]^4,meter=[2,2]: 10x+8x²-75y-120y²-64y³-12
[5+16x,5+16y]:	unknown -> [18] [0,0] 10x+16x²-75y-240y²-256y³-6
[13+16x,5+16y]:	unknown -> [19] [1,0] 26x+16x²-75y-240y²-256y³+3
expanding queue[10]^5,meter=[2,2]: 6x+8x²-75y-120y²-64y³-14
[3+16x,5+16y]:	unknown -> [20] [0,0] 6x+16x²-75y-240y²-256y³-7
[11+16x,5+16y]:	unknown -> [21] [1,0] 22x+16x²-75y-240y²-256y³
-> solution [11,5],NONTRIVIAL
expanding queue[11]^5,meter=[2,2]: 14x+8x²-75y-120y²-64y³-9
[7+16x,13+16y]:	unknown -> [22] [0,1] 14x+16x²-507y-624y²-256y³-134
[15+16x,13+16y]:	unknown -> [23] [1,1] 30x+16x²-507y-624y²-256y³-123
----------------
expanding queue[12]^6,meter=[2,2]: x+4x²-3y-24y²-64y³
[2+32x,2+32y]:	unknown -> [24] [0,0] x+8x²-3y-48y²-256y³
-> solution [2,2],trivial(2)
[18+32x,18+32y]:	unknown -> [25] [1,1] 9x+8x²-243y-432y²-256y³-43
expanding queue[13]^6,meter=[2,2]: 5x+4x²-75y-120y²-64y³-14
[10+32x,10+32y]:	unknown -> [26] [0,0] 5x+8x²-75y-240y²-256y³-7
[26+32x,26+32y]:	unknown -> [27] [1,1] 13x+8x²-507y-624y²-256y³-132
expanding queue[14]^7,meter=[2,2]: 7x+4x²-3y-24y²-64y³+3
[30+32x,2+32y]:	unknown -> [28] [1,0] 15x+8x²-3y-48y²-256y³+7
[14+32x,18+32y]:	unknown -> [29] [0,1] 7x+8x²-243y-432y²-256y³-44
expanding queue[15]^7,meter=[2,2]: 3x+4x²-75y-120y²-64y³-15
[22+32x,10+32y]:	unknown -> [30] [1,0] 11x+8x²-75y-240y²-256y³-4
[6+32x,26+32y]:	unknown -> [31] [0,1] 3x+8x²-507y-624y²-256y³-137
expanding queue[16]^8,meter=[2,2]: 2x+16x²-507y-624y²-256y³-137
[1+32x,29+32y]:	unknown -> [32] [0,1] 2x+32x²-2523y-2784y²-1024y³-762
[17+32x,29+32y]:	unknown -> [33] [1,1] 34x+32x²-2523y-2784y²-1024y³-753
expanding queue[17]^8,meter=[2,2]: 18x+16x²-507y-624y²-256y³-132
[9+32x,13+32y]:	unknown -> [34] [0,0] 18x+32x²-507y-1248y²-1024y³-66
[25+32x,13+32y]:	unknown -> [35] [1,0] 50x+32x²-507y-1248y²-1024y³-49
expanding queue[18]^9,meter=[2,2]: 10x+16x²-75y-240y²-256y³-6
[5+32x,5+32y]:	unknown -> [36] [0,0] 10x+32x²-75y-480y²-1024y³-3
[21+32x,5+32y]:	unknown -> [37] [1,0] 42x+32x²-75y-480y²-1024y³+10
expanding queue[19]^9,meter=[2,2]: 26x+16x²-75y-240y²-256y³+3
[13+32x,21+32y]:	unknown -> [38] [0,1] 26x+32x²-1323y-2016y²-1024y³-284
[29+32x,21+32y]:	unknown -> [39] [1,1] 58x+32x²-1323y-2016y²-1024y³-263
expanding queue[20]^10,meter=[2,2]: 6x+16x²-75y-240y²-256y³-7
[3+32x,21+32y]:	unknown -> [40] [0,1] 6x+32x²-1323y-2016y²-1024y³-289
[19+32x,21+32y]:	unknown -> [41] [1,1] 38x+32x²-1323y-2016y²-1024y³-278
expanding queue[21]^10,meter=[2,2]: 22x+16x²-75y-240y²-256y³
[11+32x,5+32y]:	unknown -> [42] [0,0] 22x+32x²-75y-480y²-1024y³
-> solution [11,5],NONTRIVIAL
[27+32x,5+32y]:	unknown -> [43] [1,0] 54x+32x²-75y-480y²-1024y³+19
expanding queue[22]^11,meter=[2,2]: 14x+16x²-507y-624y²-256y³-134
[7+32x,13+32y]:	unknown -> [44] [0,0] 14x+32x²-507y-1248y²-1024y³-67
[23+32x,13+32y]:	unknown -> [45] [1,0] 46x+32x²-507y-1248y²-1024y³-52
expanding queue[23]^11,meter=[2,2]: 30x+16x²-507y-624y²-256y³-123
[15+32x,29+32y]:	unknown -> [46] [0,1] 30x+32x²-2523y-2784y²-1024y³-755
[31+32x,29+32y]:	unknown -> [47] [1,1] 62x+32x²-2523y-2784y²-1024y³-732
----------------
expanding queue[24]^12,meter=[2,2]: x+8x²-3y-48y²-256y³
[2+64x,2+64y]:	unknown -> [48] [0,0] x+16x²-3y-96y²-1024y³
-> solution [2,2],trivial(2)
[34+64x,34+64y]:	unknown -> [49] [1,1] 17x+16x²-867y-1632y²-1024y³-149
expanding queue[25]^12,meter=[2,2]: 9x+8x²-243y-432y²-256y³-43
[50+64x,18+64y]:	unknown -> [50] [1,0] 25x+16x²-243y-864y²-1024y³-13
[18+64x,50+64y]:	unknown -> [51] [0,1] 9x+16x²-1875y-2400y²-1024y³-487
expanding queue[26]^13,meter=[2,2]: 5x+8x²-75y-240y²-256y³-7
[42+64x,10+64y]:	unknown -> [52] [1,0] 21x+16x²-75y-480y²-1024y³+3
[10+64x,42+64y]:	unknown -> [53] [0,1] 5x+16x²-1323y-2016y²-1024y³-289
expanding queue[27]^13,meter=[2,2]: 13x+8x²-507y-624y²-256y³-132
[26+64x,26+64y]:	unknown -> [54] [0,0] 13x+16x²-507y-1248y²-1024y³-66
[58+64x,58+64y]:	unknown -> [55] [1,1] 29x+16x²-2523y-2784y²-1024y³-749
expanding queue[28]^14,meter=[2,2]: 15x+8x²-3y-48y²-256y³+7
[62+64x,2+64y]:	unknown -> [56] [1,0] 31x+16x²-3y-96y²-1024y³+15
[30+64x,34+64y]:	unknown -> [57] [0,1] 15x+16x²-867y-1632y²-1024y³-150
expanding queue[29]^14,meter=[2,2]: 7x+8x²-243y-432y²-256y³-44
[14+64x,18+64y]:	unknown -> [58] [0,0] 7x+16x²-243y-864y²-1024y³-22
[46+64x,50+64y]:	unknown -> [59] [1,1] 23x+16x²-1875y-2400y²-1024y³-480
expanding queue[30]^15,meter=[2,2]: 11x+8x²-75y-240y²-256y³-4
[22+64x,10+64y]:	unknown -> [60] [0,0] 11x+16x²-75y-480y²-1024y³-2
[54+64x,42+64y]:	unknown -> [61] [1,1] 27x+16x²-1323y-2016y²-1024y³-278
expanding queue[31]^15,meter=[2,2]: 3x+8x²-507y-624y²-256y³-137
[38+64x,26+64y]:	unknown -> [62] [1,0] 19x+16x²-507y-1248y²-1024y³-63
[6+64x,58+64y]:	unknown -> [63] [0,1] 3x+16x²-2523y-2784y²-1024y³-762
expanding queue[32]^16,meter=[2,2]: 2x+32x²-2523y-2784y²-1024y³-762
[1+64x,29+64y]:	unknown -> [64] [0,0] 2x+64x²-2523y-5568y²-4096y³-381
[33+64x,29+64y]:	unknown -> [65] [1,0] 66x+64x²-2523y-5568y²-4096y³-364
expanding queue[33]^16,meter=[2,2]: 34x+32x²-2523y-2784y²-1024y³-753
[17+64x,61+64y]:	unknown -> [66] [0,1] 34x+64x²-11163y-11712y²-4096y³-3542
[49+64x,61+64y]:	unknown -> [67] [1,1] 98x+64x²-11163y-11712y²-4096y³-3509
expanding queue[34]^17,meter=[2,2]: 18x+32x²-507y-1248y²-1024y³-66
[9+64x,13+64y]:	unknown -> [68] [0,0] 18x+64x²-507y-2496y²-4096y³-33
[41+64x,13+64y]:	unknown -> [69] [1,0] 82x+64x²-507y-2496y²-4096y³-8
expanding queue[35]^17,meter=[2,2]: 50x+32x²-507y-1248y²-1024y³-49
[25+64x,45+64y]:	unknown -> [70] [0,1] 50x+64x²-6075y-8640y²-4096y³-1414
[57+64x,45+64y]:	unknown -> [71] [1,1] 114x+64x²-6075y-8640y²-4096y³-1373
expanding queue[36]^18,meter=[2,2]: 10x+32x²-75y-480y²-1024y³-3
[5+64x,37+64y]:	unknown -> [72] [0,1] 10x+64x²-4107y-7104y²-4096y³-791
[37+64x,37+64y]:	unknown -> [73] [1,1] 74x+64x²-4107y-7104y²-4096y³-770
expanding queue[37]^18,meter=[2,2]: 42x+32x²-75y-480y²-1024y³+10
[21+64x,5+64y]:	unknown -> [74] [0,0] 42x+64x²-75y-960y²-4096y³+5
[53+64x,5+64y]:	unknown -> [75] [1,0] 106x+64x²-75y-960y²-4096y³+42
expanding queue[38]^19,meter=[2,2]: 26x+32x²-1323y-2016y²-1024y³-284
[13+64x,21+64y]:	unknown -> [76] [0,0] 26x+64x²-1323y-4032y²-4096y³-142
[45+64x,21+64y]:	unknown -> [77] [1,0] 90x+64x²-1323y-4032y²-4096y³-113
expanding queue[39]^19,meter=[2,2]: 58x+32x²-1323y-2016y²-1024y³-263
[29+64x,53+64y]:	unknown -> [78] [0,1] 58x+64x²-8427y-10176y²-4096y³-2313
[61+64x,53+64y]:	unknown -> [79] [1,1] 122x+64x²-8427y-10176y²-4096y³-2268
expanding queue[40]^20,meter=[2,2]: 6x+32x²-1323y-2016y²-1024y³-289
[3+64x,53+64y]:	unknown -> [80] [0,1] 6x+64x²-8427y-10176y²-4096y³-2326
[35+64x,53+64y]:	unknown -> [81] [1,1] 70x+64x²-8427y-10176y²-4096y³-2307
expanding queue[41]^20,meter=[2,2]: 38x+32x²-1323y-2016y²-1024y³-278
[19+64x,21+64y]:	unknown -> [82] [0,0] 38x+64x²-1323y-4032y²-4096y³-139
[51+64x,21+64y]:	unknown -> [83] [1,0] 102x+64x²-1323y-4032y²-4096y³-104
expanding queue[42]^21,meter=[2,2]: 22x+32x²-75y-480y²-1024y³
[11+64x,5+64y]:	unknown -> [84] [0,0] 22x+64x²-75y-960y²-4096y³
-> solution [11,5],NONTRIVIAL
[43+64x,5+64y]:	unknown -> [85] [1,0] 86x+64x²-75y-960y²-4096y³+27
expanding queue[43]^21,meter=[2,2]: 54x+32x²-75y-480y²-1024y³+19
[27+64x,37+64y]:	unknown -> [86] [0,1] 54x+64x²-4107y-7104y²-4096y³-780
[59+64x,37+64y]:	unknown -> [87] [1,1] 118x+64x²-4107y-7104y²-4096y³-737
expanding queue[44]^22,meter=[2,2]: 14x+32x²-507y-1248y²-1024y³-67
[7+64x,45+64y]:	unknown -> [88] [0,1] 14x+64x²-6075y-8640y²-4096y³-1423
[39+64x,45+64y]:	unknown -> [89] [1,1] 78x+64x²-6075y-8640y²-4096y³-1400
expanding queue[45]^22,meter=[2,2]: 46x+32x²-507y-1248y²-1024y³-52
[23+64x,13+64y]:	unknown -> [90] [0,0] 46x+64x²-507y-2496y²-4096y³-26
[55+64x,13+64y]:	unknown -> [91] [1,0] 110x+64x²-507y-2496y²-4096y³+13
expanding queue[46]^23,meter=[2,2]: 30x+32x²-2523y-2784y²-1024y³-755
[15+64x,61+64y]:	unknown -> [92] [0,1] 30x+64x²-11163y-11712y²-4096y³-3543
[47+64x,61+64y]:	unknown -> [93] [1,1] 94x+64x²-11163y-11712y²-4096y³-3512
expanding queue[47]^23,meter=[2,2]: 62x+32x²-2523y-2784y²-1024y³-732
[31+64x,29+64y]:	unknown -> [94] [0,0] 62x+64x²-2523y-5568y²-4096y³-366
[63+64x,29+64y]:	unknown -> [95] [1,0] 126x+64x²-2523y-5568y²-4096y³-319
----------------
expanding queue[48]^24,meter=[2,2]: x+16x²-3y-96y²-1024y³
[2+128x,2+128y]:	unknown -> [96] [0,0] x+32x²-3y-192y²-4096y³
-> solution [2,2],trivial(2)
[66+128x,66+128y]:	unknown -> [97] [1,1] 33x+32x²-3267y-6336y²-4096y³-553
expanding queue[49]^24,meter=[2,2]: 17x+16x²-867y-1632y²-1024y³-149
[98+128x,34+128y]:	unknown -> [98] [1,0] 49x+32x²-867y-3264y²-4096y³-58
[34+128x,98+128y]:	unknown -> [99] [0,1] 17x+32x²-7203y-9408y²-4096y³-1836
expanding queue[50]^25,meter=[2,2]: 25x+16x²-243y-864y²-1024y³-13
[114+128x,18+128y]:	unknown -> [100] [1,0] 57x+32x²-243y-1728y²-4096y³+14
[50+128x,82+128y]:	unknown -> [101] [0,1] 25x+32x²-5043y-7872y²-4096y³-1072
expanding queue[51]^25,meter=[2,2]: 9x+16x²-1875y-2400y²-1024y³-487
[82+128x,50+128y]:	unknown -> [102] [1,0] 41x+32x²-1875y-4800y²-4096y³-231
[18+128x,114+128y]:	unknown -> [103] [0,1] 9x+32x²-9747y-10944y²-4096y³-2893
expanding queue[52]^26,meter=[2,2]: 21x+16x²-75y-480y²-1024y³+3
[106+128x,10+128y]:	unknown -> [104] [1,0] 53x+32x²-75y-960y²-4096y³+20
[42+128x,74+128y]:	unknown -> [105] [0,1] 21x+32x²-4107y-7104y²-4096y³-788
expanding queue[53]^26,meter=[2,2]: 5x+16x²-1323y-2016y²-1024y³-289
[74+128x,42+128y]:	unknown -> [106] [1,0] 37x+32x²-1323y-4032y²-4096y³-134
[10+128x,106+128y]:	unknown -> [107] [0,1] 5x+32x²-8427y-10176y²-4096y³-2326
expanding queue[54]^27,meter=[2,2]: 13x+16x²-507y-1248y²-1024y³-66
[26+128x,26+128y]:	unknown -> [108] [0,0] 13x+32x²-507y-2496y²-4096y³-33
[90+128x,90+128y]:	unknown -> [109] [1,1] 45x+32x²-6075y-8640y²-4096y³-1408
expanding queue[55]^27,meter=[2,2]: 29x+16x²-2523y-2784y²-1024y³-749
[122+128x,58+128y]:	unknown -> [110] [1,0] 61x+32x²-2523y-5568y²-4096y³-352
[58+128x,122+128y]:	unknown -> [111] [0,1] 29x+32x²-11163y-11712y²-4096y³-3540
expanding queue[56]^28,meter=[2,2]: 31x+16x²-3y-96y²-1024y³+15
[126+128x,2+128y]:	unknown -> [112] [1,0] 63x+32x²-3y-192y²-4096y³+31
[62+128x,66+128y]:	unknown -> [113] [0,1] 31x+32x²-3267y-6336y²-4096y³-554
expanding queue[57]^28,meter=[2,2]: 15x+16x²-867y-1632y²-1024y³-150
[30+128x,34+128y]:	unknown -> [114] [0,0] 15x+32x²-867y-3264y²-4096y³-75
[94+128x,98+128y]:	unknown -> [115] [1,1] 47x+32x²-7203y-9408y²-4096y³-1821
expanding queue[58]^29,meter=[2,2]: 7x+16x²-243y-864y²-1024y³-22
[14+128x,18+128y]:	unknown -> [116] [0,0] 7x+32x²-243y-1728y²-4096y³-11
[78+128x,82+128y]:	unknown -> [117] [1,1] 39x+32x²-5043y-7872y²-4096y³-1065
expanding queue[59]^29,meter=[2,2]: 23x+16x²-1875y-2400y²-1024y³-480
[46+128x,50+128y]:	unknown -> [118] [0,0] 23x+32x²-1875y-4800y²-4096y³-240
[110+128x,114+128y]:	unknown -> [119] [1,1] 55x+32x²-9747y-10944y²-4096y³-2870
expanding queue[60]^30,meter=[2,2]: 11x+16x²-75y-480y²-1024y³-2
[22+128x,10+128y]:	unknown -> [120] [0,0] 11x+32x²-75y-960y²-4096y³-1
[86+128x,74+128y]:	unknown -> [121] [1,1] 43x+32x²-4107y-7104y²-4096y³-777
expanding queue[61]^30,meter=[2,2]: 27x+16x²-1323y-2016y²-1024y³-278
[54+128x,42+128y]:	unknown -> [122] [0,0] 27x+32x²-1323y-4032y²-4096y³-139
[118+128x,106+128y]:	unknown -> [123] [1,1] 59x+32x²-8427y-10176y²-4096y³-2299
expanding queue[62]^31,meter=[2,2]: 19x+16x²-507y-1248y²-1024y³-63
[102+128x,26+128y]:	unknown -> [124] [1,0] 51x+32x²-507y-2496y²-4096y³-14
[38+128x,90+128y]:	unknown -> [125] [0,1] 19x+32x²-6075y-8640y²-4096y³-1421
expanding queue[63]^31,meter=[2,2]: 3x+16x²-2523y-2784y²-1024y³-762
[6+128x,58+128y]:	unknown -> [126] [0,0] 3x+32x²-2523y-5568y²-4096y³-381
[70+128x,122+128y]:	unknown -> [127] [1,1] 35x+32x²-11163y-11712y²-4096y³-3537
expanding queue[64]^32,meter=[2,2]: 2x+64x²-2523y-5568y²-4096y³-381
[1+128x,93+128y]:	unknown -> [128] [0,1] 2x+128x²-25947y-35712y²-16384y³-6284
[65+128x,93+128y]:	unknown -> [129] [1,1] 130x+128x²-25947y-35712y²-16384y³-6251
expanding queue[65]^32,meter=[2,2]: 66x+64x²-2523y-5568y²-4096y³-364
[33+128x,29+128y]:	unknown -> [130] [0,0] 66x+128x²-2523y-11136y²-16384y³-182
[97+128x,29+128y]:	unknown -> [131] [1,0] 194x+128x²-2523y-11136y²-16384y³-117
expanding queue[66]^33,meter=[2,2]: 34x+64x²-11163y-11712y²-4096y³-3542
[17+128x,61+128y]:	unknown -> [132] [0,0] 34x+128x²-11163y-23424y²-16384y³-1771
[81+128x,61+128y]:	unknown -> [133] [1,0] 162x+128x²-11163y-23424y²-16384y³-1722
expanding queue[67]^33,meter=[2,2]: 98x+64x²-11163y-11712y²-4096y³-3509
[49+128x,125+128y]:	unknown -> [134] [0,1] 98x+128x²-46875y-48000y²-16384y³-15240
[113+128x,125+128y]:	unknown -> [135] [1,1] 226x+128x²-46875y-48000y²-16384y³-15159
expanding queue[68]^34,meter=[2,2]: 18x+64x²-507y-2496y²-4096y³-33
[9+128x,77+128y]:	unknown -> [136] [0,1] 18x+128x²-17787y-29568y²-16384y³-3566
[73+128x,77+128y]:	unknown -> [137] [1,1] 146x+128x²-17787y-29568y²-16384y³-3525
expanding queue[69]^34,meter=[2,2]: 82x+64x²-507y-2496y²-4096y³-8
[41+128x,13+128y]:	unknown -> [138] [0,0] 82x+128x²-507y-4992y²-16384y³-4
[105+128x,13+128y]:	unknown -> [139] [1,0] 210x+128x²-507y-4992y²-16384y³+69
expanding queue[70]^35,meter=[2,2]: 50x+64x²-6075y-8640y²-4096y³-1414
[25+128x,45+128y]:	unknown -> [140] [0,0] 50x+128x²-6075y-17280y²-16384y³-707
[89+128x,45+128y]:	unknown -> [141] [1,0] 178x+128x²-6075y-17280y²-16384y³-650
expanding queue[71]^35,meter=[2,2]: 114x+64x²-6075y-8640y²-4096y³-1373
[57+128x,109+128y]:	unknown -> [142] [0,1] 114x+128x²-35643y-41856y²-16384y³-10092
[121+128x,109+128y]:	unknown -> [143] [1,1] 242x+128x²-35643y-41856y²-16384y³-10003
expanding queue[72]^36,meter=[2,2]: 10x+64x²-4107y-7104y²-4096y³-791
[5+128x,101+128y]:	unknown -> [144] [0,1] 10x+128x²-30603y-38784y²-16384y³-8049
[69+128x,101+128y]:	unknown -> [145] [1,1] 138x+128x²-30603y-38784y²-16384y³-8012
expanding queue[73]^36,meter=[2,2]: 74x+64x²-4107y-7104y²-4096y³-770
[37+128x,37+128y]:	unknown -> [146] [0,0] 74x+128x²-4107y-14208y²-16384y³-385
[101+128x,37+128y]:	unknown -> [147] [1,0] 202x+128x²-4107y-14208y²-16384y³-316
expanding queue[74]^37,meter=[2,2]: 42x+64x²-75y-960y²-4096y³+5
[21+128x,69+128y]:	unknown -> [148] [0,1] 42x+128x²-14283y-26496y²-16384y³-2563
[85+128x,69+128y]:	unknown -> [149] [1,1] 170x+128x²-14283y-26496y²-16384y³-2510
expanding queue[75]^37,meter=[2,2]: 106x+64x²-75y-960y²-4096y³+42
[53+128x,5+128y]:	unknown -> [150] [0,0] 106x+128x²-75y-1920y²-16384y³+21
[117+128x,5+128y]:	unknown -> [151] [1,0] 234x+128x²-75y-1920y²-16384y³+106
expanding queue[76]^38,meter=[2,2]: 26x+64x²-1323y-4032y²-4096y³-142
[13+128x,21+128y]:	unknown -> [152] [0,0] 26x+128x²-1323y-8064y²-16384y³-71
[77+128x,21+128y]:	unknown -> [153] [1,0] 154x+128x²-1323y-8064y²-16384y³-26
expanding queue[77]^38,meter=[2,2]: 90x+64x²-1323y-4032y²-4096y³-113
[45+128x,85+128y]:	unknown -> [154] [0,1] 90x+128x²-21675y-32640y²-16384y³-4782
[109+128x,85+128y]:	unknown -> [155] [1,1] 218x+128x²-21675y-32640y²-16384y³-4705
expanding queue[78]^39,meter=[2,2]: 58x+64x²-8427y-10176y²-4096y³-2313
[29+128x,117+128y]:	unknown -> [156] [0,1] 58x+128x²-41067y-44928y²-16384y³-12506
[93+128x,117+128y]:	unknown -> [157] [1,1] 186x+128x²-41067y-44928y²-16384y³-12445
expanding queue[79]^39,meter=[2,2]: 122x+64x²-8427y-10176y²-4096y³-2268
[61+128x,53+128y]:	unknown -> [158] [0,0] 122x+128x²-8427y-20352y²-16384y³-1134
[125+128x,53+128y]:	unknown -> [159] [1,0] 250x+128x²-8427y-20352y²-16384y³-1041
expanding queue[80]^40,meter=[2,2]: 6x+64x²-8427y-10176y²-4096y³-2326
[3+128x,53+128y]:	unknown -> [160] [0,0] 6x+128x²-8427y-20352y²-16384y³-1163
[67+128x,53+128y]:	unknown -> [161] [1,0] 134x+128x²-8427y-20352y²-16384y³-1128
expanding queue[81]^40,meter=[2,2]: 70x+64x²-8427y-10176y²-4096y³-2307
[35+128x,117+128y]:	unknown -> [162] [0,1] 70x+128x²-41067y-44928y²-16384y³-12503
[99+128x,117+128y]:	unknown -> [163] [1,1] 198x+128x²-41067y-44928y²-16384y³-12436
expanding queue[82]^41,meter=[2,2]: 38x+64x²-1323y-4032y²-4096y³-139
[19+128x,85+128y]:	unknown -> [164] [0,1] 38x+128x²-21675y-32640y²-16384y³-4795
[83+128x,85+128y]:	unknown -> [165] [1,1] 166x+128x²-21675y-32640y²-16384y³-4744
expanding queue[83]^41,meter=[2,2]: 102x+64x²-1323y-4032y²-4096y³-104
[51+128x,21+128y]:	unknown -> [166] [0,0] 102x+128x²-1323y-8064y²-16384y³-52
[115+128x,21+128y]:	unknown -> [167] [1,0] 230x+128x²-1323y-8064y²-16384y³+31
expanding queue[84]^42,meter=[2,2]: 22x+64x²-75y-960y²-4096y³
[11+128x,5+128y]:	unknown -> [168] [0,0] 22x+128x²-75y-1920y²-16384y³
-> solution [11,5],NONTRIVIAL
[75+128x,5+128y]:	unknown -> [169] [1,0] 150x+128x²-75y-1920y²-16384y³+43
expanding queue[85]^42,meter=[2,2]: 86x+64x²-75y-960y²-4096y³+27
[43+128x,69+128y]:	unknown -> [170] [0,1] 86x+128x²-14283y-26496y²-16384y³-2552
[107+128x,69+128y]:	unknown -> [171] [1,1] 214x+128x²-14283y-26496y²-16384y³-2477
expanding queue[86]^43,meter=[2,2]: 54x+64x²-4107y-7104y²-4096y³-780
[27+128x,37+128y]:	unknown -> [172] [0,0] 54x+128x²-4107y-14208y²-16384y³-390
[91+128x,37+128y]:	unknown -> [173] [1,0] 182x+128x²-4107y-14208y²-16384y³-331
expanding queue[87]^43,meter=[2,2]: 118x+64x²-4107y-7104y²-4096y³-737
[59+128x,101+128y]:	unknown -> [174] [0,1] 118x+128x²-30603y-38784y²-16384y³-8022
[123+128x,101+128y]:	unknown -> [175] [1,1] 246x+128x²-30603y-38784y²-16384y³-7931
expanding queue[88]^44,meter=[2,2]: 14x+64x²-6075y-8640y²-4096y³-1423
[7+128x,109+128y]:	unknown -> [176] [0,1] 14x+128x²-35643y-41856y²-16384y³-10117
[71+128x,109+128y]:	unknown -> [177] [1,1] 142x+128x²-35643y-41856y²-16384y³-10078
expanding queue[89]^44,meter=[2,2]: 78x+64x²-6075y-8640y²-4096y³-1400
[39+128x,45+128y]:	unknown -> [178] [0,0] 78x+128x²-6075y-17280y²-16384y³-700
[103+128x,45+128y]:	unknown -> [179] [1,0] 206x+128x²-6075y-17280y²-16384y³-629
expanding queue[90]^45,meter=[2,2]: 46x+64x²-507y-2496y²-4096y³-26
[23+128x,13+128y]:	unknown -> [180] [0,0] 46x+128x²-507y-4992y²-16384y³-13
[87+128x,13+128y]:	unknown -> [181] [1,0] 174x+128x²-507y-4992y²-16384y³+42
expanding queue[91]^45,meter=[2,2]: 110x+64x²-507y-2496y²-4096y³+13
[55+128x,77+128y]:	unknown -> [182] [0,1] 110x+128x²-17787y-29568y²-16384y³-3543
[119+128x,77+128y]:	unknown -> [183] [1,1] 238x+128x²-17787y-29568y²-16384y³-3456
expanding queue[92]^46,meter=[2,2]: 30x+64x²-11163y-11712y²-4096y³-3543
[15+128x,125+128y]:	unknown -> [184] [0,1] 30x+128x²-46875y-48000y²-16384y³-15257
[79+128x,125+128y]:	unknown -> [185] [1,1] 158x+128x²-46875y-48000y²-16384y³-15210
expanding queue[93]^46,meter=[2,2]: 94x+64x²-11163y-11712y²-4096y³-3512
[47+128x,61+128y]:	unknown -> [186] [0,0] 94x+128x²-11163y-23424y²-16384y³-1756
[111+128x,61+128y]:	unknown -> [187] [1,0] 222x+128x²-11163y-23424y²-16384y³-1677
expanding queue[94]^47,meter=[2,2]: 62x+64x²-2523y-5568y²-4096y³-366
[31+128x,29+128y]:	unknown -> [188] [0,0] 62x+128x²-2523y-11136y²-16384y³-183
[95+128x,29+128y]:	unknown -> [189] [1,0] 190x+128x²-2523y-11136y²-16384y³-120
expanding queue[95]^47,meter=[2,2]: 126x+64x²-2523y-5568y²-4096y³-319
[63+128x,93+128y]:	unknown -> [190] [0,1] 126x+128x²-25947y-35712y²-16384y³-6253
[127+128x,93+128y]:	unknown -> [191] [1,1] 254x+128x²-25947y-35712y²-16384y³-6158
Maximum level 6 [192] mod 2: x²-y³+4
