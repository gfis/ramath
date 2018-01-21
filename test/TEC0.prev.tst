Expanding for base=2, level=7, reasons+features=base,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] x²-y²+3
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: x²-y²+3
[1+2x,0+2y]:	unknown -> [1] [1,0] x+x²-y²+1
-> solution [1,2],NONTRIVIAL
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: x+x²-y²+1
[1+4x,2+4y]:	unknown -> [2] [0,1] x+2x²-2y-2y²
-> solution [1,2],NONTRIVIAL
[3+4x,2+4y]:	unknown -> [3] [1,1] 3x+2x²-2y-2y²+1
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[2,2]: x+2x²-2y-2y²
[1+8x,2+8y]:	unknown -> [4] [0,0] x+4x²-2y-4y²
-> solution [1,2],NONTRIVIAL
[1+8x,6+8y]:	unknown -> [5] [0,1] x+4x²-6y-4y²-2
endexp[2]
expanding queue[3]^1,meter=[2,2]: 3x+2x²-2y-2y²+1
[7+8x,2+8y]:	unknown -> [6] [1,0] 7x+4x²-2y-4y²+3
[7+8x,6+8y]:	unknown -> [7] [1,1] 7x+4x²-6y-4y²+1
endexp[3]
---------------- level 3
expanding queue[4]^2,meter=[2,2]: x+4x²-2y-4y²
[1+16x,2+16y]:	unknown -> [8] [0,0] x+8x²-2y-8y²
-> solution [1,2],NONTRIVIAL
[1+16x,10+16y]:	unknown -> [9] [0,1] x+8x²-10y-8y²-3
endexp[4]
expanding queue[5]^2,meter=[2,2]: x+4x²-6y-4y²-2
[1+16x,6+16y]:	unknown -> [10] [0,0] x+8x²-6y-8y²-1
[1+16x,14+16y]:	unknown -> [11] [0,1] x+8x²-14y-8y²-6
endexp[5]
expanding queue[6]^3,meter=[2,2]: 7x+4x²-2y-4y²+3
[15+16x,2+16y]:	unknown -> [12] [1,0] 15x+8x²-2y-8y²+7
[15+16x,10+16y]:	unknown -> [13] [1,1] 15x+8x²-10y-8y²+4
endexp[6]
expanding queue[7]^3,meter=[2,2]: 7x+4x²-6y-4y²+1
[15+16x,6+16y]:	unknown -> [14] [1,0] 15x+8x²-6y-8y²+6
[15+16x,14+16y]:	unknown -> [15] [1,1] 15x+8x²-14y-8y²+1
endexp[7]
---------------- level 4
expanding queue[8]^4,meter=[2,2]: x+8x²-2y-8y²
[1+32x,2+32y]:	unknown -> [16] [0,0] x+16x²-2y-16y²
-> solution [1,2],NONTRIVIAL
[1+32x,18+32y]:	unknown -> [17] [0,1] x+16x²-18y-16y²-5
endexp[8]
expanding queue[9]^4,meter=[2,2]: x+8x²-10y-8y²-3
[17+32x,10+32y]:	unknown -> [18] [1,0] 17x+16x²-10y-16y²+3
[17+32x,26+32y]:	unknown -> [19] [1,1] 17x+16x²-26y-16y²-6
endexp[9]
expanding queue[10]^5,meter=[2,2]: x+8x²-6y-8y²-1
[17+32x,6+32y]:	unknown -> [20] [1,0] 17x+16x²-6y-16y²+4
[17+32x,22+32y]:	unknown -> [21] [1,1] 17x+16x²-22y-16y²-3
endexp[10]
expanding queue[11]^5,meter=[2,2]: x+8x²-14y-8y²-6
[1+32x,14+32y]:	unknown -> [22] [0,0] x+16x²-14y-16y²-3
[1+32x,30+32y]:	unknown -> [23] [0,1] x+16x²-30y-16y²-14
endexp[11]
expanding queue[12]^6,meter=[2,2]: 15x+8x²-2y-8y²+7
[31+32x,2+32y]:	unknown -> [24] [1,0] 31x+16x²-2y-16y²+15
[31+32x,18+32y]:	unknown -> [25] [1,1] 31x+16x²-18y-16y²+10
endexp[12]
expanding queue[13]^6,meter=[2,2]: 15x+8x²-10y-8y²+4
[15+32x,10+32y]:	unknown -> [26] [0,0] 15x+16x²-10y-16y²+2
[15+32x,26+32y]:	unknown -> [27] [0,1] 15x+16x²-26y-16y²-7
endexp[13]
expanding queue[14]^7,meter=[2,2]: 15x+8x²-6y-8y²+6
[15+32x,6+32y]:	unknown -> [28] [0,0] 15x+16x²-6y-16y²+3
[15+32x,22+32y]:	unknown -> [29] [0,1] 15x+16x²-22y-16y²-4
endexp[14]
expanding queue[15]^7,meter=[2,2]: 15x+8x²-14y-8y²+1
[31+32x,14+32y]:	unknown -> [30] [1,0] 31x+16x²-14y-16y²+12
[31+32x,30+32y]:	unknown -> [31] [1,1] 31x+16x²-30y-16y²+1
endexp[15]
---------------- level 5
expanding queue[16]^8,meter=[2,2]: x+16x²-2y-16y²
[1+64x,2+64y]:	unknown -> [32] [0,0] x+32x²-2y-32y²
-> solution [1,2],NONTRIVIAL
[1+64x,34+64y]:	unknown -> [33] [0,1] x+32x²-34y-32y²-9
endexp[16]
expanding queue[17]^8,meter=[2,2]: x+16x²-18y-16y²-5
[33+64x,18+64y]:	unknown -> [34] [1,0] 33x+32x²-18y-32y²+6
[33+64x,50+64y]:	unknown -> [35] [1,1] 33x+32x²-50y-32y²-11
endexp[17]
expanding queue[18]^9,meter=[2,2]: 17x+16x²-10y-16y²+3
[49+64x,10+64y]:	unknown -> [36] [1,0] 49x+32x²-10y-32y²+18
[49+64x,42+64y]:	unknown -> [37] [1,1] 49x+32x²-42y-32y²+5
endexp[18]
expanding queue[19]^9,meter=[2,2]: 17x+16x²-26y-16y²-6
[17+64x,26+64y]:	unknown -> [38] [0,0] 17x+32x²-26y-32y²-3
[17+64x,58+64y]:	unknown -> [39] [0,1] 17x+32x²-58y-32y²-24
endexp[19]
expanding queue[20]^10,meter=[2,2]: 17x+16x²-6y-16y²+4
[17+64x,6+64y]:	unknown -> [40] [0,0] 17x+32x²-6y-32y²+2
[17+64x,38+64y]:	unknown -> [41] [0,1] 17x+32x²-38y-32y²-9
endexp[20]
expanding queue[21]^10,meter=[2,2]: 17x+16x²-22y-16y²-3
[49+64x,22+64y]:	unknown -> [42] [1,0] 49x+32x²-22y-32y²+15
[49+64x,54+64y]:	unknown -> [43] [1,1] 49x+32x²-54y-32y²-4
endexp[21]
expanding queue[22]^11,meter=[2,2]: x+16x²-14y-16y²-3
[33+64x,14+64y]:	unknown -> [44] [1,0] 33x+32x²-14y-32y²+7
[33+64x,46+64y]:	unknown -> [45] [1,1] 33x+32x²-46y-32y²-8
endexp[22]
expanding queue[23]^11,meter=[2,2]: x+16x²-30y-16y²-14
[1+64x,30+64y]:	unknown -> [46] [0,0] x+32x²-30y-32y²-7
[1+64x,62+64y]:	unknown -> [47] [0,1] x+32x²-62y-32y²-30
endexp[23]
expanding queue[24]^12,meter=[2,2]: 31x+16x²-2y-16y²+15
[63+64x,2+64y]:	unknown -> [48] [1,0] 63x+32x²-2y-32y²+31
[63+64x,34+64y]:	unknown -> [49] [1,1] 63x+32x²-34y-32y²+22
endexp[24]
expanding queue[25]^12,meter=[2,2]: 31x+16x²-18y-16y²+10
[31+64x,18+64y]:	unknown -> [50] [0,0] 31x+32x²-18y-32y²+5
[31+64x,50+64y]:	unknown -> [51] [0,1] 31x+32x²-50y-32y²-12
endexp[25]
expanding queue[26]^13,meter=[2,2]: 15x+16x²-10y-16y²+2
[15+64x,10+64y]:	unknown -> [52] [0,0] 15x+32x²-10y-32y²+1
[15+64x,42+64y]:	unknown -> [53] [0,1] 15x+32x²-42y-32y²-12
endexp[26]
expanding queue[27]^13,meter=[2,2]: 15x+16x²-26y-16y²-7
[47+64x,26+64y]:	unknown -> [54] [1,0] 47x+32x²-26y-32y²+12
[47+64x,58+64y]:	unknown -> [55] [1,1] 47x+32x²-58y-32y²-9
endexp[27]
expanding queue[28]^14,meter=[2,2]: 15x+16x²-6y-16y²+3
[47+64x,6+64y]:	unknown -> [56] [1,0] 47x+32x²-6y-32y²+17
[47+64x,38+64y]:	unknown -> [57] [1,1] 47x+32x²-38y-32y²+6
endexp[28]
expanding queue[29]^14,meter=[2,2]: 15x+16x²-22y-16y²-4
[15+64x,22+64y]:	unknown -> [58] [0,0] 15x+32x²-22y-32y²-2
[15+64x,54+64y]:	unknown -> [59] [0,1] 15x+32x²-54y-32y²-21
endexp[29]
expanding queue[30]^15,meter=[2,2]: 31x+16x²-14y-16y²+12
[31+64x,14+64y]:	unknown -> [60] [0,0] 31x+32x²-14y-32y²+6
[31+64x,46+64y]:	unknown -> [61] [0,1] 31x+32x²-46y-32y²-9
endexp[30]
expanding queue[31]^15,meter=[2,2]: 31x+16x²-30y-16y²+1
[63+64x,30+64y]:	unknown -> [62] [1,0] 63x+32x²-30y-32y²+24
[63+64x,62+64y]:	unknown -> [63] [1,1] 63x+32x²-62y-32y²+1
endexp[31]
---------------- level 6
expanding queue[32]^16,meter=[2,2]: x+32x²-2y-32y²
[1+128x,2+128y]:	unknown -> [64] [0,0] x+64x²-2y-64y²
-> solution [1,2],NONTRIVIAL
[1+128x,66+128y]:	unknown -> [65] [0,1] x+64x²-66y-64y²-17
endexp[32]
expanding queue[33]^16,meter=[2,2]: x+32x²-34y-32y²-9
[65+128x,34+128y]:	unknown -> [66] [1,0] 65x+64x²-34y-64y²+12
[65+128x,98+128y]:	unknown -> [67] [1,1] 65x+64x²-98y-64y²-21
endexp[33]
expanding queue[34]^17,meter=[2,2]: 33x+32x²-18y-32y²+6
[33+128x,18+128y]:	unknown -> [68] [0,0] 33x+64x²-18y-64y²+3
[33+128x,82+128y]:	unknown -> [69] [0,1] 33x+64x²-82y-64y²-22
endexp[34]
expanding queue[35]^17,meter=[2,2]: 33x+32x²-50y-32y²-11
[97+128x,50+128y]:	unknown -> [70] [1,0] 97x+64x²-50y-64y²+27
[97+128x,114+128y]:	unknown -> [71] [1,1] 97x+64x²-114y-64y²-14
endexp[35]
expanding queue[36]^18,meter=[2,2]: 49x+32x²-10y-32y²+18
[49+128x,10+128y]:	unknown -> [72] [0,0] 49x+64x²-10y-64y²+9
[49+128x,74+128y]:	unknown -> [73] [0,1] 49x+64x²-74y-64y²-12
endexp[36]
expanding queue[37]^18,meter=[2,2]: 49x+32x²-42y-32y²+5
[113+128x,42+128y]:	unknown -> [74] [1,0] 113x+64x²-42y-64y²+43
[113+128x,106+128y]:	unknown -> [75] [1,1] 113x+64x²-106y-64y²+6
endexp[37]
expanding queue[38]^19,meter=[2,2]: 17x+32x²-26y-32y²-3
[81+128x,26+128y]:	unknown -> [76] [1,0] 81x+64x²-26y-64y²+23
[81+128x,90+128y]:	unknown -> [77] [1,1] 81x+64x²-90y-64y²-6
endexp[38]
expanding queue[39]^19,meter=[2,2]: 17x+32x²-58y-32y²-24
[17+128x,58+128y]:	unknown -> [78] [0,0] 17x+64x²-58y-64y²-12
[17+128x,122+128y]:	unknown -> [79] [0,1] 17x+64x²-122y-64y²-57
endexp[39]
expanding queue[40]^20,meter=[2,2]: 17x+32x²-6y-32y²+2
[17+128x,6+128y]:	unknown -> [80] [0,0] 17x+64x²-6y-64y²+1
[17+128x,70+128y]:	unknown -> [81] [0,1] 17x+64x²-70y-64y²-18
endexp[40]
expanding queue[41]^20,meter=[2,2]: 17x+32x²-38y-32y²-9
[81+128x,38+128y]:	unknown -> [82] [1,0] 81x+64x²-38y-64y²+20
[81+128x,102+128y]:	unknown -> [83] [1,1] 81x+64x²-102y-64y²-15
endexp[41]
expanding queue[42]^21,meter=[2,2]: 49x+32x²-22y-32y²+15
[113+128x,22+128y]:	unknown -> [84] [1,0] 113x+64x²-22y-64y²+48
[113+128x,86+128y]:	unknown -> [85] [1,1] 113x+64x²-86y-64y²+21
endexp[42]
expanding queue[43]^21,meter=[2,2]: 49x+32x²-54y-32y²-4
[49+128x,54+128y]:	unknown -> [86] [0,0] 49x+64x²-54y-64y²-2
[49+128x,118+128y]:	unknown -> [87] [0,1] 49x+64x²-118y-64y²-45
endexp[43]
expanding queue[44]^22,meter=[2,2]: 33x+32x²-14y-32y²+7
[97+128x,14+128y]:	unknown -> [88] [1,0] 97x+64x²-14y-64y²+36
[97+128x,78+128y]:	unknown -> [89] [1,1] 97x+64x²-78y-64y²+13
endexp[44]
expanding queue[45]^22,meter=[2,2]: 33x+32x²-46y-32y²-8
[33+128x,46+128y]:	unknown -> [90] [0,0] 33x+64x²-46y-64y²-4
[33+128x,110+128y]:	unknown -> [91] [0,1] 33x+64x²-110y-64y²-43
endexp[45]
expanding queue[46]^23,meter=[2,2]: x+32x²-30y-32y²-7
[65+128x,30+128y]:	unknown -> [92] [1,0] 65x+64x²-30y-64y²+13
[65+128x,94+128y]:	unknown -> [93] [1,1] 65x+64x²-94y-64y²-18
endexp[46]
expanding queue[47]^23,meter=[2,2]: x+32x²-62y-32y²-30
[1+128x,62+128y]:	unknown -> [94] [0,0] x+64x²-62y-64y²-15
[1+128x,126+128y]:	unknown -> [95] [0,1] x+64x²-126y-64y²-62
endexp[47]
expanding queue[48]^24,meter=[2,2]: 63x+32x²-2y-32y²+31
[127+128x,2+128y]:	unknown -> [96] [1,0] 127x+64x²-2y-64y²+63
[127+128x,66+128y]:	unknown -> [97] [1,1] 127x+64x²-66y-64y²+46
endexp[48]
expanding queue[49]^24,meter=[2,2]: 63x+32x²-34y-32y²+22
[63+128x,34+128y]:	unknown -> [98] [0,0] 63x+64x²-34y-64y²+11
[63+128x,98+128y]:	unknown -> [99] [0,1] 63x+64x²-98y-64y²-22
endexp[49]
expanding queue[50]^25,meter=[2,2]: 31x+32x²-18y-32y²+5
[95+128x,18+128y]:	unknown -> [100] [1,0] 95x+64x²-18y-64y²+34
[95+128x,82+128y]:	unknown -> [101] [1,1] 95x+64x²-82y-64y²+9
endexp[50]
expanding queue[51]^25,meter=[2,2]: 31x+32x²-50y-32y²-12
[31+128x,50+128y]:	unknown -> [102] [0,0] 31x+64x²-50y-64y²-6
[31+128x,114+128y]:	unknown -> [103] [0,1] 31x+64x²-114y-64y²-47
endexp[51]
expanding queue[52]^26,meter=[2,2]: 15x+32x²-10y-32y²+1
[79+128x,10+128y]:	unknown -> [104] [1,0] 79x+64x²-10y-64y²+24
[79+128x,74+128y]:	unknown -> [105] [1,1] 79x+64x²-74y-64y²+3
endexp[52]
expanding queue[53]^26,meter=[2,2]: 15x+32x²-42y-32y²-12
[15+128x,42+128y]:	unknown -> [106] [0,0] 15x+64x²-42y-64y²-6
[15+128x,106+128y]:	unknown -> [107] [0,1] 15x+64x²-106y-64y²-43
endexp[53]
expanding queue[54]^27,meter=[2,2]: 47x+32x²-26y-32y²+12
[47+128x,26+128y]:	unknown -> [108] [0,0] 47x+64x²-26y-64y²+6
[47+128x,90+128y]:	unknown -> [109] [0,1] 47x+64x²-90y-64y²-23
endexp[54]
expanding queue[55]^27,meter=[2,2]: 47x+32x²-58y-32y²-9
[111+128x,58+128y]:	unknown -> [110] [1,0] 111x+64x²-58y-64y²+35
[111+128x,122+128y]:	unknown -> [111] [1,1] 111x+64x²-122y-64y²-10
endexp[55]
expanding queue[56]^28,meter=[2,2]: 47x+32x²-6y-32y²+17
[111+128x,6+128y]:	unknown -> [112] [1,0] 111x+64x²-6y-64y²+48
[111+128x,70+128y]:	unknown -> [113] [1,1] 111x+64x²-70y-64y²+29
endexp[56]
expanding queue[57]^28,meter=[2,2]: 47x+32x²-38y-32y²+6
[47+128x,38+128y]:	unknown -> [114] [0,0] 47x+64x²-38y-64y²+3
[47+128x,102+128y]:	unknown -> [115] [0,1] 47x+64x²-102y-64y²-32
endexp[57]
expanding queue[58]^29,meter=[2,2]: 15x+32x²-22y-32y²-2
[15+128x,22+128y]:	unknown -> [116] [0,0] 15x+64x²-22y-64y²-1
[15+128x,86+128y]:	unknown -> [117] [0,1] 15x+64x²-86y-64y²-28
endexp[58]
expanding queue[59]^29,meter=[2,2]: 15x+32x²-54y-32y²-21
[79+128x,54+128y]:	unknown -> [118] [1,0] 79x+64x²-54y-64y²+13
[79+128x,118+128y]:	unknown -> [119] [1,1] 79x+64x²-118y-64y²-30
endexp[59]
expanding queue[60]^30,meter=[2,2]: 31x+32x²-14y-32y²+6
[31+128x,14+128y]:	unknown -> [120] [0,0] 31x+64x²-14y-64y²+3
[31+128x,78+128y]:	unknown -> [121] [0,1] 31x+64x²-78y-64y²-20
endexp[60]
expanding queue[61]^30,meter=[2,2]: 31x+32x²-46y-32y²-9
[95+128x,46+128y]:	unknown -> [122] [1,0] 95x+64x²-46y-64y²+27
[95+128x,110+128y]:	unknown -> [123] [1,1] 95x+64x²-110y-64y²-12
endexp[61]
expanding queue[62]^31,meter=[2,2]: 63x+32x²-30y-32y²+24
[63+128x,30+128y]:	unknown -> [124] [0,0] 63x+64x²-30y-64y²+12
[63+128x,94+128y]:	unknown -> [125] [0,1] 63x+64x²-94y-64y²-19
endexp[62]
expanding queue[63]^31,meter=[2,2]: 63x+32x²-62y-32y²+1
[127+128x,62+128y]:	unknown -> [126] [1,0] 127x+64x²-62y-64y²+48
[127+128x,126+128y]:	unknown -> [127] [1,1] 127x+64x²-126y-64y²+1
endexp[63]
---------------- level 7
Maximum level 7 [128] mod 2: x²-y²+3
