Expanding for base=2, level=6, reasons+features=base,same,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 4x-x³+y²
-> solution [0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: 4x-x³+y²
[0+2x,0+2y]:	unknown -> [1] [0,0] 2x-2x³+y²
-> solution [0,0],trivial(3) [2,0],trivial(1)
[1+2x,1+2y]:	unknown -> [2] [1,1] x-6x²-4x³+2y+2y²+2
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: 2x-2x³+y²
[0+4x,0+4y]:	unknown -> [3] [0,0] x-4x³+y²
-> solution [0,0],trivial(3)
[2+4x,0+4y]:	unknown -> [4] [1,0] 2x+6x²+4x³-y²
-> solution [2,0],trivial(1)
endexp[1]
expanding queue[2]^0,meter=[2,2]: x-6x²-4x³+2y+2y²+2
[1+4x,1+4y]:	unknown -> [5] [0,0] x-12x²-16x³+2y+4y²+1
[1+4x,3+4y]:	unknown -> [6] [0,1] x-12x²-16x³+6y+4y²+3
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2]: x-4x³+y²
[0+8x,0+8y]:	unknown -> [7] [0,0] x-16x³+2y²
-> solution [0,0],trivial(3)
[4+8x,4+8y]:	unknown -> [8] [1,1] 11x+24x²+16x³-2y-2y²+1
endexp[3]
expanding queue[4]^1,meter=[2,2]: 2x+6x²+4x³-y²
[2+8x,0+8y]:	unknown -> [9] [0,0] x+6x²+8x³-y²
-> solution [2,0],trivial(1)
[6+8x,0+8y]:	unknown -> [10] [1,0] 13x+18x²+8x³-y²+3
endexp[4]
expanding queue[5]^2,meter=[2,2]: x-12x²-16x³+2y+4y²+1
[5+8x,1+8y]:	unknown -> [11] [1,0] 71x+120x²+64x³-2y-8y²+13
[5+8x,5+8y]:	unknown -> [12] [1,1] 71x+120x²+64x³-10y-8y²+10
endexp[5]
expanding queue[6]^2,meter=[2,2]: x-12x²-16x³+6y+4y²+3
[5+8x,3+8y]:	unknown -> [13] [1,0] 71x+120x²+64x³-6y-8y²+12
[5+8x,7+8y]:	unknown -> [14] [1,1] 71x+120x²+64x³-14y-8y²+7
endexp[6]
---------------- level 3
expanding queue[7]^3,meter=[2,2]: x-16x³+2y²
[0+16x,0+16y]:	unknown -> [15] [0,0] x-64x³+4y²
-> solution [0,0],trivial(3)
[0+16x,8+16y]:	unknown -> [16] [0,1] x-64x³+4y+4y²+1
endexp[7]
expanding queue[8]^3,meter=[2,2]: 11x+24x²+16x³-2y-2y²+1
[12+16x,4+16y]:	unknown -> [17] [1,0] 107x+144x²+64x³-2y-4y²+26
[12+16x,12+16y]:	unknown -> [18] [1,1] 107x+144x²+64x³-6y-4y²+24
endexp[8]
expanding queue[9]^4,meter=[2,2]: x+6x²+8x³-y²
[2+16x,0+16y]:	unknown -> [19] [0,0] x+12x²+32x³-2y²
-> solution [2,0],trivial(1)
[10+16x,8+16y]:	unknown -> [20] [1,1] 37x+60x²+32x³-2y-2y²+7
endexp[9]
expanding queue[10]^4,meter=[2,2]: 13x+18x²+8x³-y²+3
[14+16x,0+16y]:	unknown -> [21] [1,0] 73x+84x²+32x³-2y²+21
[6+16x,8+16y]:	unknown -> [22] [0,1] 13x+36x²+32x³-2y-2y²+1
endexp[10]
expanding queue[11]^5,meter=[2,2]: 71x+120x²+64x³-2y-8y²+13
[13+16x,1+16y]:	unknown -> [23] [1,0] 503x+624x²+256x³-2y-16y²+134
[13+16x,9+16y]:	unknown -> [24] [1,1] 503x+624x²+256x³-18y-16y²+129
endexp[11]
expanding queue[12]^5,meter=[2,2]: 71x+120x²+64x³-10y-8y²+10
[5+16x,5+16y]:	unknown -> [25] [0,0] 71x+240x²+256x³-10y-16y²+5
[5+16x,13+16y]:	unknown -> [26] [0,1] 71x+240x²+256x³-26y-16y²-4
endexp[12]
expanding queue[13]^6,meter=[2,2]: 71x+120x²+64x³-6y-8y²+12
[5+16x,3+16y]:	unknown -> [27] [0,0] 71x+240x²+256x³-6y-16y²+6
[5+16x,11+16y]:	unknown -> [28] [0,1] 71x+240x²+256x³-22y-16y²-1
endexp[13]
expanding queue[14]^6,meter=[2,2]: 71x+120x²+64x³-14y-8y²+7
[13+16x,7+16y]:	unknown -> [29] [1,0] 503x+624x²+256x³-14y-16y²+131
[13+16x,15+16y]:	unknown -> [30] [1,1] 503x+624x²+256x³-30y-16y²+120
endexp[14]
---------------- level 4
expanding queue[15]^7,meter=[2,2]: x-64x³+4y²
[0+32x,0+32y]:	unknown -> [31] [0,0] x-256x³+8y²
-> solution [0,0],trivial(3)
[0+32x,16+32y]:	unknown -> [32] [0,1] x-256x³+8y+8y²+2
endexp[15]
expanding queue[16]^7,meter=[2,2]: x-64x³+4y+4y²+1
[16+32x,8+32y]:	unknown -> [33] [1,0] 191x+384x²+256x³-4y-8y²+31
[16+32x,24+32y]:	unknown -> [34] [1,1] 191x+384x²+256x³-12y-8y²+27
endexp[16]
expanding queue[17]^8,meter=[2,2]: 107x+144x²+64x³-2y-4y²+26
[12+32x,4+32y]:	unknown -> [35] [0,0] 107x+288x²+256x³-2y-8y²+13
[12+32x,20+32y]:	unknown -> [36] [0,1] 107x+288x²+256x³-10y-8y²+10
endexp[17]
expanding queue[18]^8,meter=[2,2]: 107x+144x²+64x³-6y-4y²+24
[12+32x,12+32y]:	unknown -> [37] [0,0] 107x+288x²+256x³-6y-8y²+12
[12+32x,28+32y]:	unknown -> [38] [0,1] 107x+288x²+256x³-14y-8y²+7
endexp[18]
expanding queue[19]^9,meter=[2,2]: x+12x²+32x³-2y²
[2+32x,0+32y]:	unknown -> [39] [0,0] x+24x²+128x³-4y²
-> solution [2,0],trivial(1)
[2+32x,16+32y]:	unknown -> [40] [0,1] x+24x²+128x³-4y-4y²-1
endexp[19]
expanding queue[20]^9,meter=[2,2]: 37x+60x²+32x³-2y-2y²+7
[26+32x,8+32y]:	unknown -> [41] [1,0] 253x+312x²+128x³-2y-4y²+68
[26+32x,24+32y]:	unknown -> [42] [1,1] 253x+312x²+128x³-6y-4y²+66
endexp[20]
expanding queue[21]^10,meter=[2,2]: 73x+84x²+32x³-2y²+21
[30+32x,0+32y]:	unknown -> [43] [1,0] 337x+360x²+128x³-4y²+105
[30+32x,16+32y]:	unknown -> [44] [1,1] 337x+360x²+128x³-4y-4y²+104
endexp[21]
expanding queue[22]^10,meter=[2,2]: 13x+36x²+32x³-2y-2y²+1
[22+32x,8+32y]:	unknown -> [45] [1,0] 181x+264x²+128x³-2y-4y²+41
[22+32x,24+32y]:	unknown -> [46] [1,1] 181x+264x²+128x³-6y-4y²+39
endexp[22]
expanding queue[23]^11,meter=[2,2]: 503x+624x²+256x³-2y-16y²+134
[13+32x,1+32y]:	unknown -> [47] [0,0] 503x+1248x²+1024x³-2y-32y²+67
[13+32x,17+32y]:	unknown -> [48] [0,1] 503x+1248x²+1024x³-34y-32y²+58
endexp[23]
expanding queue[24]^11,meter=[2,2]: 503x+624x²+256x³-18y-16y²+129
[29+32x,9+32y]:	unknown -> [49] [1,0] 2519x+2784x²+1024x³-18y-32y²+756
[29+32x,25+32y]:	unknown -> [50] [1,1] 2519x+2784x²+1024x³-50y-32y²+739
endexp[24]
expanding queue[25]^12,meter=[2,2]: 71x+240x²+256x³-10y-16y²+5
[21+32x,5+32y]:	unknown -> [51] [1,0] 1319x+2016x²+1024x³-10y-32y²+286
[21+32x,21+32y]:	unknown -> [52] [1,1] 1319x+2016x²+1024x³-42y-32y²+273
endexp[25]
expanding queue[26]^12,meter=[2,2]: 71x+240x²+256x³-26y-16y²-4
[5+32x,13+32y]:	unknown -> [53] [0,0] 71x+480x²+1024x³-26y-32y²-2
[5+32x,29+32y]:	unknown -> [54] [0,1] 71x+480x²+1024x³-58y-32y²-23
endexp[26]
expanding queue[27]^13,meter=[2,2]: 71x+240x²+256x³-6y-16y²+6
[5+32x,3+32y]:	unknown -> [55] [0,0] 71x+480x²+1024x³-6y-32y²+3
[5+32x,19+32y]:	unknown -> [56] [0,1] 71x+480x²+1024x³-38y-32y²-8
endexp[27]
expanding queue[28]^13,meter=[2,2]: 71x+240x²+256x³-22y-16y²-1
[21+32x,11+32y]:	unknown -> [57] [1,0] 1319x+2016x²+1024x³-22y-32y²+283
[21+32x,27+32y]:	unknown -> [58] [1,1] 1319x+2016x²+1024x³-54y-32y²+264
endexp[28]
expanding queue[29]^14,meter=[2,2]: 503x+624x²+256x³-14y-16y²+131
[29+32x,7+32y]:	unknown -> [59] [1,0] 2519x+2784x²+1024x³-14y-32y²+757
[29+32x,23+32y]:	unknown -> [60] [1,1] 2519x+2784x²+1024x³-46y-32y²+742
endexp[29]
expanding queue[30]^14,meter=[2,2]: 503x+624x²+256x³-30y-16y²+120
[13+32x,15+32y]:	unknown -> [61] [0,0] 503x+1248x²+1024x³-30y-32y²+60
[13+32x,31+32y]:	unknown -> [62] [0,1] 503x+1248x²+1024x³-62y-32y²+37
endexp[30]
---------------- level 5
expanding queue[31]^15,meter=[2,2]: x-256x³+8y²
[0+64x,0+64y]:	unknown -> [63] [0,0] x-1024x³+16y²
-> solution [0,0],trivial(3)
[0+64x,32+64y]:	unknown -> [64] [0,1] x-1024x³+16y+16y²+4
endexp[31]
expanding queue[32]^15,meter=[2,2]: x-256x³+8y+8y²+2
[0+64x,16+64y]:	unknown -> [65] [0,0] x-1024x³+8y+16y²+1
[0+64x,48+64y]:	unknown -> [66] [0,1] x-1024x³+24y+16y²+9
endexp[32]
expanding queue[33]^16,meter=[2,2]: 191x+384x²+256x³-4y-8y²+31
[48+64x,8+64y]:	unknown -> [67] [1,0] 1727x+2304x²+1024x³-4y-16y²+431
[48+64x,40+64y]:	unknown -> [68] [1,1] 1727x+2304x²+1024x³-20y-16y²+425
endexp[33]
expanding queue[34]^16,meter=[2,2]: 191x+384x²+256x³-12y-8y²+27
[48+64x,24+64y]:	unknown -> [69] [1,0] 1727x+2304x²+1024x³-12y-16y²+429
[48+64x,56+64y]:	unknown -> [70] [1,1] 1727x+2304x²+1024x³-28y-16y²+419
endexp[34]
expanding queue[35]^17,meter=[2,2]: 107x+288x²+256x³-2y-8y²+13
[44+64x,4+64y]:	unknown -> [71] [1,0] 1451x+2112x²+1024x³-2y-16y²+332
[44+64x,36+64y]:	unknown -> [72] [1,1] 1451x+2112x²+1024x³-18y-16y²+327
endexp[35]
expanding queue[36]^17,meter=[2,2]: 107x+288x²+256x³-10y-8y²+10
[12+64x,20+64y]:	unknown -> [73] [0,0] 107x+576x²+1024x³-10y-16y²+5
[12+64x,52+64y]:	unknown -> [74] [0,1] 107x+576x²+1024x³-26y-16y²-4
endexp[36]
expanding queue[37]^18,meter=[2,2]: 107x+288x²+256x³-6y-8y²+12
[12+64x,12+64y]:	unknown -> [75] [0,0] 107x+576x²+1024x³-6y-16y²+6
[12+64x,44+64y]:	unknown -> [76] [0,1] 107x+576x²+1024x³-22y-16y²-1
endexp[37]
expanding queue[38]^18,meter=[2,2]: 107x+288x²+256x³-14y-8y²+7
[44+64x,28+64y]:	unknown -> [77] [1,0] 1451x+2112x²+1024x³-14y-16y²+329
[44+64x,60+64y]:	unknown -> [78] [1,1] 1451x+2112x²+1024x³-30y-16y²+318
endexp[38]
expanding queue[39]^19,meter=[2,2]: x+24x²+128x³-4y²
[2+64x,0+64y]:	unknown -> [79] [0,0] x+48x²+512x³-8y²
-> solution [2,0],trivial(1)
[2+64x,32+64y]:	unknown -> [80] [0,1] x+48x²+512x³-8y-8y²-2
endexp[39]
expanding queue[40]^19,meter=[2,2]: x+24x²+128x³-4y-4y²-1
[34+64x,16+64y]:	unknown -> [81] [1,0] 433x+816x²+512x³-4y-8y²+76
[34+64x,48+64y]:	unknown -> [82] [1,1] 433x+816x²+512x³-12y-8y²+72
endexp[40]
expanding queue[41]^20,meter=[2,2]: 253x+312x²+128x³-2y-4y²+68
[26+64x,8+64y]:	unknown -> [83] [0,0] 253x+624x²+512x³-2y-8y²+34
[26+64x,40+64y]:	unknown -> [84] [0,1] 253x+624x²+512x³-10y-8y²+31
endexp[41]
expanding queue[42]^20,meter=[2,2]: 253x+312x²+128x³-6y-4y²+66
[26+64x,24+64y]:	unknown -> [85] [0,0] 253x+624x²+512x³-6y-8y²+33
[26+64x,56+64y]:	unknown -> [86] [0,1] 253x+624x²+512x³-14y-8y²+28
endexp[42]
expanding queue[43]^21,meter=[2,2]: 337x+360x²+128x³-4y²+105
[62+64x,0+64y]:	unknown -> [87] [1,0] 1441x+1488x²+512x³-8y²+465
[62+64x,32+64y]:	unknown -> [88] [1,1] 1441x+1488x²+512x³-8y-8y²+463
endexp[43]
expanding queue[44]^21,meter=[2,2]: 337x+360x²+128x³-4y-4y²+104
[30+64x,16+64y]:	unknown -> [89] [0,0] 337x+720x²+512x³-4y-8y²+52
[30+64x,48+64y]:	unknown -> [90] [0,1] 337x+720x²+512x³-12y-8y²+48
endexp[44]
expanding queue[45]^22,meter=[2,2]: 181x+264x²+128x³-2y-4y²+41
[54+64x,8+64y]:	unknown -> [91] [1,0] 1093x+1296x²+512x³-2y-8y²+307
[54+64x,40+64y]:	unknown -> [92] [1,1] 1093x+1296x²+512x³-10y-8y²+304
endexp[45]
expanding queue[46]^22,meter=[2,2]: 181x+264x²+128x³-6y-4y²+39
[54+64x,24+64y]:	unknown -> [93] [1,0] 1093x+1296x²+512x³-6y-8y²+306
[54+64x,56+64y]:	unknown -> [94] [1,1] 1093x+1296x²+512x³-14y-8y²+301
endexp[46]
expanding queue[47]^23,meter=[2,2]: 503x+1248x²+1024x³-2y-32y²+67
[45+64x,1+64y]:	unknown -> [95] [1,0] 6071x+8640x²+4096x³-2y-64y²+1421
[45+64x,33+64y]:	unknown -> [96] [1,1] 6071x+8640x²+4096x³-66y-64y²+1404
endexp[47]
expanding queue[48]^23,meter=[2,2]: 503x+1248x²+1024x³-34y-32y²+58
[13+64x,17+64y]:	unknown -> [97] [0,0] 503x+2496x²+4096x³-34y-64y²+29
[13+64x,49+64y]:	unknown -> [98] [0,1] 503x+2496x²+4096x³-98y-64y²-4
endexp[48]
expanding queue[49]^24,meter=[2,2]: 2519x+2784x²+1024x³-18y-32y²+756
[29+64x,9+64y]:	unknown -> [99] [0,0] 2519x+5568x²+4096x³-18y-64y²+378
[29+64x,41+64y]:	unknown -> [100] [0,1] 2519x+5568x²+4096x³-82y-64y²+353
endexp[49]
expanding queue[50]^24,meter=[2,2]: 2519x+2784x²+1024x³-50y-32y²+739
[61+64x,25+64y]:	unknown -> [101] [1,0] 11159x+11712x²+4096x³-50y-64y²+3533
[61+64x,57+64y]:	unknown -> [102] [1,1] 11159x+11712x²+4096x³-114y-64y²+3492
endexp[50]
expanding queue[51]^25,meter=[2,2]: 1319x+2016x²+1024x³-10y-32y²+286
[21+64x,5+64y]:	unknown -> [103] [0,0] 1319x+4032x²+4096x³-10y-64y²+143
[21+64x,37+64y]:	unknown -> [104] [0,1] 1319x+4032x²+4096x³-74y-64y²+122
endexp[51]
expanding queue[52]^25,meter=[2,2]: 1319x+2016x²+1024x³-42y-32y²+273
[53+64x,21+64y]:	unknown -> [105] [1,0] 8423x+10176x²+4096x³-42y-64y²+2316
[53+64x,53+64y]:	unknown -> [106] [1,1] 8423x+10176x²+4096x³-106y-64y²+2279
endexp[52]
expanding queue[53]^26,meter=[2,2]: 71x+480x²+1024x³-26y-32y²-2
[5+64x,13+64y]:	unknown -> [107] [0,0] 71x+960x²+4096x³-26y-64y²-1
[5+64x,45+64y]:	unknown -> [108] [0,1] 71x+960x²+4096x³-90y-64y²-30
endexp[53]
expanding queue[54]^26,meter=[2,2]: 71x+480x²+1024x³-58y-32y²-23
[37+64x,29+64y]:	unknown -> [109] [1,0] 4103x+7104x²+4096x³-58y-64y²+776
[37+64x,61+64y]:	unknown -> [110] [1,1] 4103x+7104x²+4096x³-122y-64y²+731
endexp[54]
expanding queue[55]^27,meter=[2,2]: 71x+480x²+1024x³-6y-32y²+3
[37+64x,3+64y]:	unknown -> [111] [1,0] 4103x+7104x²+4096x³-6y-64y²+789
[37+64x,35+64y]:	unknown -> [112] [1,1] 4103x+7104x²+4096x³-70y-64y²+770
endexp[55]
expanding queue[56]^27,meter=[2,2]: 71x+480x²+1024x³-38y-32y²-8
[5+64x,19+64y]:	unknown -> [113] [0,0] 71x+960x²+4096x³-38y-64y²-4
[5+64x,51+64y]:	unknown -> [114] [0,1] 71x+960x²+4096x³-102y-64y²-39
endexp[56]
expanding queue[57]^28,meter=[2,2]: 1319x+2016x²+1024x³-22y-32y²+283
[53+64x,11+64y]:	unknown -> [115] [1,0] 8423x+10176x²+4096x³-22y-64y²+2321
[53+64x,43+64y]:	unknown -> [116] [1,1] 8423x+10176x²+4096x³-86y-64y²+2294
endexp[57]
expanding queue[58]^28,meter=[2,2]: 1319x+2016x²+1024x³-54y-32y²+264
[21+64x,27+64y]:	unknown -> [117] [0,0] 1319x+4032x²+4096x³-54y-64y²+132
[21+64x,59+64y]:	unknown -> [118] [0,1] 1319x+4032x²+4096x³-118y-64y²+89
endexp[58]
expanding queue[59]^29,meter=[2,2]: 2519x+2784x²+1024x³-14y-32y²+757
[61+64x,7+64y]:	unknown -> [119] [1,0] 11159x+11712x²+4096x³-14y-64y²+3542
[61+64x,39+64y]:	unknown -> [120] [1,1] 11159x+11712x²+4096x³-78y-64y²+3519
endexp[59]
expanding queue[60]^29,meter=[2,2]: 2519x+2784x²+1024x³-46y-32y²+742
[29+64x,23+64y]:	unknown -> [121] [0,0] 2519x+5568x²+4096x³-46y-64y²+371
[29+64x,55+64y]:	unknown -> [122] [0,1] 2519x+5568x²+4096x³-110y-64y²+332
endexp[60]
expanding queue[61]^30,meter=[2,2]: 503x+1248x²+1024x³-30y-32y²+60
[13+64x,15+64y]:	unknown -> [123] [0,0] 503x+2496x²+4096x³-30y-64y²+30
[13+64x,47+64y]:	unknown -> [124] [0,1] 503x+2496x²+4096x³-94y-64y²-1
endexp[61]
expanding queue[62]^30,meter=[2,2]: 503x+1248x²+1024x³-62y-32y²+37
[45+64x,31+64y]:	unknown -> [125] [1,0] 6071x+8640x²+4096x³-62y-64y²+1406
[45+64x,63+64y]:	unknown -> [126] [1,1] 6071x+8640x²+4096x³-126y-64y²+1359
endexp[62]
---------------- level 6
Maximum level 6 [127] mod 2: 4x-x³+y²
