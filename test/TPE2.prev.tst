Expanding for base=2, level=6, reasons+features=base,same,similiar invall,norm,showfail
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 30x+15x²-14y-7y²-1
----------------
expanding queue[0]^-1,meter=[2,2]: 30x+15x²-14y-7y²-1
[0+2x,0+2y]:	failure constant=-1, vgcd=4 [0,0] 60x+60x²-28y-28y²-1
[1+2x,0+2y]:	unknown -> [1] [1,0] 30x+15x²-7y-7y²+11
[0+2x,1+2y]:	failure constant=-11, vgcd=2 [0,1] 30x+30x²-28y-14y²-11
[1+2x,1+2y]:	failure constant=23, vgcd=4 [1,1] 120x+60x²-56y-28y²+23
----------------
expanding queue[1]^0,meter=[2,2]: 30x+15x²-7y-7y²+11
[1+4x,0+4y]:	failure constant=11, vgcd=2 [0,0] 60x+60x²-14y-28y²+11
[3+4x,0+4y]:	unknown -> [2] [1,0] 60x+30x²-7y-14y²+28
[1+4x,2+4y]:	failure constant=-3, vgcd=2 [0,1] 60x+60x²-42y-28y²-3
[3+4x,2+4y]:	unknown -> [3] [1,1] 60x+30x²-21y-14y²+21
----------------
expanding queue[2]^1,meter=[2,2]: 60x+30x²-7y-14y²+28
[3+8x,0+8y]:	unknown -> [4] [0,0] 60x+60x²-7y-28y²+14
[7+8x,0+8y]:	unknown -> [5] [1,0] 120x+60x²-7y-28y²+59
[3+8x,4+8y]:	failure constant=7, vgcd=2 [0,1] 120x+120x²-70y-56y²+7
[7+8x,4+8y]:	failure constant=97, vgcd=2 [1,1] 240x+120x²-70y-56y²+97
expanding queue[3]^1,meter=[2,2]: 60x+30x²-21y-14y²+21
[3+8x,2+8y]:	failure constant=21, vgcd=2 [0,0] 120x+120x²-42y-56y²+21
[7+8x,2+8y]:	failure constant=111, vgcd=2 [1,0] 240x+120x²-42y-56y²+111
[3+8x,6+8y]:	unknown -> [6] [0,1] 60x+60x²-49y-28y²-7
[7+8x,6+8y]:	unknown -> [7] [1,1] 120x+60x²-49y-28y²+38
----------------
expanding queue[4]^2,meter=[2,2]: 60x+60x²-7y-28y²+14
[3+16x,0+16y]:	unknown -> [8] [0,0] 60x+120x²-7y-56y²+7
[11+16x,0+16y]:	unknown -> [9] [1,0] 180x+120x²-7y-56y²+67
[3+16x,8+16y]:	failure constant=-21, vgcd=2 [0,1] 120x+240x²-126y-112y²-21
[11+16x,8+16y]:	failure constant=99, vgcd=2 [1,1] 360x+240x²-126y-112y²+99
expanding queue[5]^2,meter=[2,2]: 120x+60x²-7y-28y²+59
[7+16x,0+16y]:	failure constant=59, vgcd=2 [0,0] 240x+240x²-14y-112y²+59
[15+16x,0+16y]:	failure constant=239, vgcd=2 [1,0] 480x+240x²-14y-112y²+239
[7+16x,8+16y]:	unknown -> [10] [0,1] 120x+120x²-63y-56y²+12
[15+16x,8+16y]:	unknown -> [11] [1,1] 240x+120x²-63y-56y²+102
expanding queue[6]^3,meter=[2,2]: 60x+60x²-49y-28y²-7
[3+16x,6+16y]:	failure constant=-7, vgcd=2 [0,0] 120x+240x²-98y-112y²-7
[11+16x,6+16y]:	failure constant=113, vgcd=2 [1,0] 360x+240x²-98y-112y²+113
[3+16x,14+16y]:	unknown -> [12] [0,1] 60x+120x²-105y-56y²-42
[11+16x,14+16y]:	unknown -> [13] [1,1] 180x+120x²-105y-56y²+18
expanding queue[7]^3,meter=[2,2]: 120x+60x²-49y-28y²+38
[7+16x,6+16y]:	unknown -> [14] [0,0] 120x+120x²-49y-56y²+19
[15+16x,6+16y]:	unknown -> [15] [1,0] 240x+120x²-49y-56y²+109
[7+16x,14+16y]:	failure constant=-39, vgcd=2 [0,1] 240x+240x²-210y-112y²-39
[15+16x,14+16y]:	failure constant=141, vgcd=2 [1,1] 480x+240x²-210y-112y²+141
----------------
expanding queue[8]^4,meter=[2,2]: 60x+120x²-7y-56y²+7
[3+32x,0+32y]:	failure constant=7, vgcd=2 [0,0] 120x+480x²-14y-224y²+7
[19+32x,0+32y]:	failure constant=187, vgcd=2 [1,0] 600x+480x²-14y-224y²+187
[3+32x,16+32y]:	unknown -> [16] [0,1] 60x+240x²-119y-112y²-28
[19+32x,16+32y]:	unknown -> [17] [1,1] 300x+240x²-119y-112y²+62
expanding queue[9]^4,meter=[2,2]: 180x+120x²-7y-56y²+67
[11+32x,0+32y]:	failure constant=67, vgcd=2 [0,0] 360x+480x²-14y-224y²+67
[27+32x,0+32y]:	failure constant=367, vgcd=2 [1,0] 840x+480x²-14y-224y²+367
[11+32x,16+32y]:	unknown -> [18] [0,1] 180x+240x²-119y-112y²+2
[27+32x,16+32y]:	unknown -> [19] [1,1] 420x+240x²-119y-112y²+152
expanding queue[10]^5,meter=[2,2]: 120x+120x²-63y-56y²+12
[7+32x,8+32y]:	unknown -> [20] [0,0] 120x+240x²-63y-112y²+6
[23+32x,8+32y]:	unknown -> [21] [1,0] 360x+240x²-63y-112y²+126
[7+32x,24+32y]:	failure constant=-107, vgcd=2 [0,1] 240x+480x²-350y-224y²-107
[23+32x,24+32y]:	failure constant=133, vgcd=2 [1,1] 720x+480x²-350y-224y²+133
expanding queue[11]^5,meter=[2,2]: 240x+120x²-63y-56y²+102
[15+32x,8+32y]:	unknown -> [22] [0,0] 240x+240x²-63y-112y²+51
[31+32x,8+32y]:	unknown -> [23] [1,0] 480x+240x²-63y-112y²+231
[15+32x,24+32y]:	failure constant=-17, vgcd=2 [0,1] 480x+480x²-350y-224y²-17
[31+32x,24+32y]:	failure constant=343, vgcd=2 [1,1] 960x+480x²-350y-224y²+343
expanding queue[12]^6,meter=[2,2]: 60x+120x²-105y-56y²-42
[3+32x,14+32y]:	unknown -> [24] [0,0] 60x+240x²-105y-112y²-21
[19+32x,14+32y]:	unknown -> [25] [1,0] 300x+240x²-105y-112y²+69
[3+32x,30+32y]:	failure constant=-203, vgcd=2 [0,1] 120x+480x²-434y-224y²-203
[19+32x,30+32y]:	failure constant=-23, vgcd=2 [1,1] 600x+480x²-434y-224y²-23
expanding queue[13]^6,meter=[2,2]: 180x+120x²-105y-56y²+18
[11+32x,14+32y]:	unknown -> [26] [0,0] 180x+240x²-105y-112y²+9
[27+32x,14+32y]:	unknown -> [27] [1,0] 420x+240x²-105y-112y²+159
[11+32x,30+32y]:	failure constant=-143, vgcd=2 [0,1] 360x+480x²-434y-224y²-143
[27+32x,30+32y]:	failure constant=157, vgcd=2 [1,1] 840x+480x²-434y-224y²+157
expanding queue[14]^7,meter=[2,2]: 120x+120x²-49y-56y²+19
[7+32x,6+32y]:	failure constant=19, vgcd=2 [0,0] 240x+480x²-98y-224y²+19
[23+32x,6+32y]:	failure constant=259, vgcd=2 [1,0] 720x+480x²-98y-224y²+259
[7+32x,22+32y]:	unknown -> [28] [0,1] 120x+240x²-161y-112y²-43
[23+32x,22+32y]:	unknown -> [29] [1,1] 360x+240x²-161y-112y²+77
expanding queue[15]^7,meter=[2,2]: 240x+120x²-49y-56y²+109
[15+32x,6+32y]:	failure constant=109, vgcd=2 [0,0] 480x+480x²-98y-224y²+109
[31+32x,6+32y]:	failure constant=469, vgcd=2 [1,0] 960x+480x²-98y-224y²+469
[15+32x,22+32y]:	unknown -> [30] [0,1] 240x+240x²-161y-112y²+2
[31+32x,22+32y]:	unknown -> [31] [1,1] 480x+240x²-161y-112y²+182
----------------
expanding queue[16]^8,meter=[2,2]: 60x+240x²-119y-112y²-28
[3+64x,16+64y]:	unknown -> [32] [0,0] 60x+480x²-119y-224y²-14
[35+64x,16+64y]:	unknown -> [33] [1,0] 540x+480x²-119y-224y²+136
[3+64x,48+64y]:	failure constant=-259, vgcd=2 [0,1] 120x+960x²-686y-448y²-259
[35+64x,48+64y]:	failure constant=41, vgcd=2 [1,1] 1080x+960x²-686y-448y²+41
expanding queue[17]^8,meter=[2,2]: 300x+240x²-119y-112y²+62
[19+64x,16+64y]:	unknown -> [34] [0,0] 300x+480x²-119y-224y²+31
[51+64x,16+64y]:	unknown -> [35] [1,0] 780x+480x²-119y-224y²+301
[19+64x,48+64y]:	failure constant=-169, vgcd=2 [0,1] 600x+960x²-686y-448y²-169
[51+64x,48+64y]:	failure constant=371, vgcd=2 [1,1] 1560x+960x²-686y-448y²+371
expanding queue[18]^9,meter=[2,2]: 180x+240x²-119y-112y²+2
[11+64x,16+64y]:	unknown -> [36] [0,0] 180x+480x²-119y-224y²+1
[43+64x,16+64y]:	unknown -> [37] [1,0] 660x+480x²-119y-224y²+211
[11+64x,48+64y]:	failure constant=-229, vgcd=2 [0,1] 360x+960x²-686y-448y²-229
[43+64x,48+64y]:	failure constant=191, vgcd=2 [1,1] 1320x+960x²-686y-448y²+191
expanding queue[19]^9,meter=[2,2]: 420x+240x²-119y-112y²+152
[27+64x,16+64y]:	unknown -> [38] [0,0] 420x+480x²-119y-224y²+76
[59+64x,16+64y]:	unknown -> [39] [1,0] 900x+480x²-119y-224y²+406
[27+64x,48+64y]:	failure constant=-79, vgcd=2 [0,1] 840x+960x²-686y-448y²-79
[59+64x,48+64y]:	failure constant=581, vgcd=2 [1,1] 1800x+960x²-686y-448y²+581
expanding queue[20]^10,meter=[2,2]: 120x+240x²-63y-112y²+6
[7+64x,8+64y]:	unknown -> [40] [0,0] 120x+480x²-63y-224y²+3
[39+64x,8+64y]:	unknown -> [41] [1,0] 600x+480x²-63y-224y²+183
[7+64x,40+64y]:	failure constant=-169, vgcd=2 [0,1] 240x+960x²-574y-448y²-169
[39+64x,40+64y]:	failure constant=191, vgcd=2 [1,1] 1200x+960x²-574y-448y²+191
expanding queue[21]^10,meter=[2,2]: 360x+240x²-63y-112y²+126
[23+64x,8+64y]:	unknown -> [42] [0,0] 360x+480x²-63y-224y²+63
[55+64x,8+64y]:	unknown -> [43] [1,0] 840x+480x²-63y-224y²+363
[23+64x,40+64y]:	failure constant=-49, vgcd=2 [0,1] 720x+960x²-574y-448y²-49
[55+64x,40+64y]:	failure constant=551, vgcd=2 [1,1] 1680x+960x²-574y-448y²+551
expanding queue[22]^11,meter=[2,2]: 240x+240x²-63y-112y²+51
[15+64x,8+64y]:	failure constant=51, vgcd=2 [0,0] 480x+960x²-126y-448y²+51
[47+64x,8+64y]:	failure constant=531, vgcd=2 [1,0] 1440x+960x²-126y-448y²+531
[15+64x,40+64y]:	unknown -> [44] [0,1] 240x+480x²-287y-224y²-62
[47+64x,40+64y]:	unknown -> [45] [1,1] 720x+480x²-287y-224y²+178
expanding queue[23]^11,meter=[2,2]: 480x+240x²-63y-112y²+231
[31+64x,8+64y]:	failure constant=231, vgcd=2 [0,0] 960x+960x²-126y-448y²+231
[63+64x,8+64y]:	failure constant=951, vgcd=2 [1,0] 1920x+960x²-126y-448y²+951
[31+64x,40+64y]:	unknown -> [46] [0,1] 480x+480x²-287y-224y²+28
[63+64x,40+64y]:	unknown -> [47] [1,1] 960x+480x²-287y-224y²+388
expanding queue[24]^12,meter=[2,2]: 60x+240x²-105y-112y²-21
[3+64x,14+64y]:	failure constant=-21, vgcd=2 [0,0] 120x+960x²-210y-448y²-21
[35+64x,14+64y]:	failure constant=279, vgcd=2 [1,0] 1080x+960x²-210y-448y²+279
[3+64x,46+64y]:	unknown -> [48] [0,1] 60x+480x²-329y-224y²-119
[35+64x,46+64y]:	unknown -> [49] [1,1] 540x+480x²-329y-224y²+31
expanding queue[25]^12,meter=[2,2]: 300x+240x²-105y-112y²+69
[19+64x,14+64y]:	failure constant=69, vgcd=2 [0,0] 600x+960x²-210y-448y²+69
[51+64x,14+64y]:	failure constant=609, vgcd=2 [1,0] 1560x+960x²-210y-448y²+609
[19+64x,46+64y]:	unknown -> [50] [0,1] 300x+480x²-329y-224y²-74
[51+64x,46+64y]:	unknown -> [51] [1,1] 780x+480x²-329y-224y²+196
expanding queue[26]^13,meter=[2,2]: 180x+240x²-105y-112y²+9
[11+64x,14+64y]:	failure constant=9, vgcd=2 [0,0] 360x+960x²-210y-448y²+9
[43+64x,14+64y]:	failure constant=429, vgcd=2 [1,0] 1320x+960x²-210y-448y²+429
[11+64x,46+64y]:	unknown -> [52] [0,1] 180x+480x²-329y-224y²-104
[43+64x,46+64y]:	unknown -> [53] [1,1] 660x+480x²-329y-224y²+106
expanding queue[27]^13,meter=[2,2]: 420x+240x²-105y-112y²+159
[27+64x,14+64y]:	failure constant=159, vgcd=2 [0,0] 840x+960x²-210y-448y²+159
[59+64x,14+64y]:	failure constant=819, vgcd=2 [1,0] 1800x+960x²-210y-448y²+819
[27+64x,46+64y]:	unknown -> [54] [0,1] 420x+480x²-329y-224y²-29
[59+64x,46+64y]:	unknown -> [55] [1,1] 900x+480x²-329y-224y²+301
expanding queue[28]^14,meter=[2,2]: 120x+240x²-161y-112y²-43
[7+64x,22+64y]:	failure constant=-43, vgcd=2 [0,0] 240x+960x²-322y-448y²-43
[39+64x,22+64y]:	failure constant=317, vgcd=2 [1,0] 1200x+960x²-322y-448y²+317
[7+64x,54+64y]:	unknown -> [56] [0,1] 120x+480x²-385y-224y²-158
[39+64x,54+64y]:	unknown -> [57] [1,1] 600x+480x²-385y-224y²+22
expanding queue[29]^14,meter=[2,2]: 360x+240x²-161y-112y²+77
[23+64x,22+64y]:	failure constant=77, vgcd=2 [0,0] 720x+960x²-322y-448y²+77
[55+64x,22+64y]:	failure constant=677, vgcd=2 [1,0] 1680x+960x²-322y-448y²+677
[23+64x,54+64y]:	unknown -> [58] [0,1] 360x+480x²-385y-224y²-98
[55+64x,54+64y]:	unknown -> [59] [1,1] 840x+480x²-385y-224y²+202
expanding queue[30]^15,meter=[2,2]: 240x+240x²-161y-112y²+2
[15+64x,22+64y]:	unknown -> [60] [0,0] 240x+480x²-161y-224y²+1
[47+64x,22+64y]:	unknown -> [61] [1,0] 720x+480x²-161y-224y²+241
[15+64x,54+64y]:	failure constant=-271, vgcd=2 [0,1] 480x+960x²-770y-448y²-271
[47+64x,54+64y]:	failure constant=209, vgcd=2 [1,1] 1440x+960x²-770y-448y²+209
expanding queue[31]^15,meter=[2,2]: 480x+240x²-161y-112y²+182
[31+64x,22+64y]:	unknown -> [62] [0,0] 480x+480x²-161y-224y²+91
[63+64x,22+64y]:	unknown -> [63] [1,0] 960x+480x²-161y-224y²+451
[31+64x,54+64y]:	failure constant=-91, vgcd=2 [0,1] 960x+960x²-770y-448y²-91
[63+64x,54+64y]:	failure constant=629, vgcd=2 [1,1] 1920x+960x²-770y-448y²+629
----------------
expanding queue[32]^16,meter=[2,2]: 60x+480x²-119y-224y²-14
[3+128x,16+128y]:	unknown -> [64] [0,0] 60x+960x²-119y-448y²-7
[67+128x,16+128y]:	unknown -> [65] [1,0] 1020x+960x²-119y-448y²+263
[3+128x,80+128y]:	failure constant=-357, vgcd=2 [0,1] 120x+1920x²-1134y-896y²-357
[67+128x,80+128y]:	failure constant=183, vgcd=2 [1,1] 2040x+1920x²-1134y-896y²+183
expanding queue[33]^16,meter=[2,2]: 540x+480x²-119y-224y²+136
[35+128x,16+128y]:	unknown -> [66] [0,0] 540x+960x²-119y-448y²+68
[99+128x,16+128y]:	unknown -> [67] [1,0] 1500x+960x²-119y-448y²+578
[35+128x,80+128y]:	failure constant=-207, vgcd=2 [0,1] 1080x+1920x²-1134y-896y²-207
[99+128x,80+128y]:	failure constant=813, vgcd=2 [1,1] 3000x+1920x²-1134y-896y²+813
expanding queue[34]^17,meter=[2,2]: 300x+480x²-119y-224y²+31
[19+128x,16+128y]:	failure constant=31, vgcd=2 [0,0] 600x+1920x²-238y-896y²+31
[83+128x,16+128y]:	failure constant=811, vgcd=2 [1,0] 2520x+1920x²-238y-896y²+811
[19+128x,80+128y]:	unknown -> [68] [0,1] 300x+960x²-567y-448y²-156
[83+128x,80+128y]:	unknown -> [69] [1,1] 1260x+960x²-567y-448y²+234
expanding queue[35]^17,meter=[2,2]: 780x+480x²-119y-224y²+301
[51+128x,16+128y]:	failure constant=301, vgcd=2 [0,0] 1560x+1920x²-238y-896y²+301
[115+128x,16+128y]:	failure constant=1561, vgcd=2 [1,0] 3480x+1920x²-238y-896y²+1561
[51+128x,80+128y]:	unknown -> [70] [0,1] 780x+960x²-567y-448y²-21
[115+128x,80+128y]:	unknown -> [71] [1,1] 1740x+960x²-567y-448y²+609
expanding queue[36]^18,meter=[2,2]: 180x+480x²-119y-224y²+1
[11+128x,16+128y]:	failure constant=1, vgcd=2 [0,0] 360x+1920x²-238y-896y²+1
[75+128x,16+128y]:	failure constant=661, vgcd=2 [1,0] 2280x+1920x²-238y-896y²+661
[11+128x,80+128y]:	unknown -> [72] [0,1] 180x+960x²-567y-448y²-171
[75+128x,80+128y]:	unknown -> [73] [1,1] 1140x+960x²-567y-448y²+159
expanding queue[37]^18,meter=[2,2]: 660x+480x²-119y-224y²+211
[43+128x,16+128y]:	failure constant=211, vgcd=2 [0,0] 1320x+1920x²-238y-896y²+211
[107+128x,16+128y]:	failure constant=1351, vgcd=2 [1,0] 3240x+1920x²-238y-896y²+1351
[43+128x,80+128y]:	unknown -> [74] [0,1] 660x+960x²-567y-448y²-66
[107+128x,80+128y]:	unknown -> [75] [1,1] 1620x+960x²-567y-448y²+504
expanding queue[38]^19,meter=[2,2]: 420x+480x²-119y-224y²+76
[27+128x,16+128y]:	unknown -> [76] [0,0] 420x+960x²-119y-448y²+38
[91+128x,16+128y]:	unknown -> [77] [1,0] 1380x+960x²-119y-448y²+488
[27+128x,80+128y]:	failure constant=-267, vgcd=2 [0,1] 840x+1920x²-1134y-896y²-267
[91+128x,80+128y]:	failure constant=633, vgcd=2 [1,1] 2760x+1920x²-1134y-896y²+633
expanding queue[39]^19,meter=[2,2]: 900x+480x²-119y-224y²+406
[59+128x,16+128y]:	unknown -> [78] [0,0] 900x+960x²-119y-448y²+203
[123+128x,16+128y]:	unknown -> [79] [1,0] 1860x+960x²-119y-448y²+893
[59+128x,80+128y]:	failure constant=63, vgcd=2 [0,1] 1800x+1920x²-1134y-896y²+63
[123+128x,80+128y]:	failure constant=1443, vgcd=2 [1,1] 3720x+1920x²-1134y-896y²+1443
expanding queue[40]^20,meter=[2,2]: 120x+480x²-63y-224y²+3
[7+128x,8+128y]:	failure constant=3, vgcd=2 [0,0] 240x+1920x²-126y-896y²+3
[71+128x,8+128y]:	failure constant=603, vgcd=2 [1,0] 2160x+1920x²-126y-896y²+603
[7+128x,72+128y]:	unknown -> [80] [0,1] 120x+960x²-511y-448y²-142
[71+128x,72+128y]:	unknown -> [81] [1,1] 1080x+960x²-511y-448y²+158
expanding queue[41]^20,meter=[2,2]: 600x+480x²-63y-224y²+183
[39+128x,8+128y]:	failure constant=183, vgcd=2 [0,0] 1200x+1920x²-126y-896y²+183
[103+128x,8+128y]:	failure constant=1263, vgcd=2 [1,0] 3120x+1920x²-126y-896y²+1263
[39+128x,72+128y]:	unknown -> [82] [0,1] 600x+960x²-511y-448y²-52
[103+128x,72+128y]:	unknown -> [83] [1,1] 1560x+960x²-511y-448y²+488
expanding queue[42]^21,meter=[2,2]: 360x+480x²-63y-224y²+63
[23+128x,8+128y]:	failure constant=63, vgcd=2 [0,0] 720x+1920x²-126y-896y²+63
[87+128x,8+128y]:	failure constant=903, vgcd=2 [1,0] 2640x+1920x²-126y-896y²+903
[23+128x,72+128y]:	unknown -> [84] [0,1] 360x+960x²-511y-448y²-112
[87+128x,72+128y]:	unknown -> [85] [1,1] 1320x+960x²-511y-448y²+308
expanding queue[43]^21,meter=[2,2]: 840x+480x²-63y-224y²+363
[55+128x,8+128y]:	failure constant=363, vgcd=2 [0,0] 1680x+1920x²-126y-896y²+363
[119+128x,8+128y]:	failure constant=1683, vgcd=2 [1,0] 3600x+1920x²-126y-896y²+1683
[55+128x,72+128y]:	unknown -> [86] [0,1] 840x+960x²-511y-448y²+38
[119+128x,72+128y]:	unknown -> [87] [1,1] 1800x+960x²-511y-448y²+698
expanding queue[44]^22,meter=[2,2]: 240x+480x²-287y-224y²-62
[15+128x,40+128y]:	unknown -> [88] [0,0] 240x+960x²-287y-448y²-31
[79+128x,40+128y]:	unknown -> [89] [1,0] 1200x+960x²-287y-448y²+329
[15+128x,104+128y]:	failure constant=-573, vgcd=2 [0,1] 480x+1920x²-1470y-896y²-573
[79+128x,104+128y]:	failure constant=147, vgcd=2 [1,1] 2400x+1920x²-1470y-896y²+147
expanding queue[45]^22,meter=[2,2]: 720x+480x²-287y-224y²+178
[47+128x,40+128y]:	unknown -> [90] [0,0] 720x+960x²-287y-448y²+89
[111+128x,40+128y]:	unknown -> [91] [1,0] 1680x+960x²-287y-448y²+689
[47+128x,104+128y]:	failure constant=-333, vgcd=2 [0,1] 1440x+1920x²-1470y-896y²-333
[111+128x,104+128y]:	failure constant=867, vgcd=2 [1,1] 3360x+1920x²-1470y-896y²+867
expanding queue[46]^23,meter=[2,2]: 480x+480x²-287y-224y²+28
[31+128x,40+128y]:	unknown -> [92] [0,0] 480x+960x²-287y-448y²+14
[95+128x,40+128y]:	unknown -> [93] [1,0] 1440x+960x²-287y-448y²+494
[31+128x,104+128y]:	failure constant=-483, vgcd=2 [0,1] 960x+1920x²-1470y-896y²-483
[95+128x,104+128y]:	failure constant=477, vgcd=2 [1,1] 2880x+1920x²-1470y-896y²+477
expanding queue[47]^23,meter=[2,2]: 960x+480x²-287y-224y²+388
[63+128x,40+128y]:	unknown -> [94] [0,0] 960x+960x²-287y-448y²+194
[127+128x,40+128y]:	unknown -> [95] [1,0] 1920x+960x²-287y-448y²+914
[63+128x,104+128y]:	failure constant=-123, vgcd=2 [0,1] 1920x+1920x²-1470y-896y²-123
[127+128x,104+128y]:	failure constant=1317, vgcd=2 [1,1] 3840x+1920x²-1470y-896y²+1317
expanding queue[48]^24,meter=[2,2]: 60x+480x²-329y-224y²-119
[3+128x,46+128y]:	failure constant=-119, vgcd=2 [0,0] 120x+1920x²-658y-896y²-119
[67+128x,46+128y]:	failure constant=421, vgcd=2 [1,0] 2040x+1920x²-658y-896y²+421
[3+128x,110+128y]:	unknown -> [96] [0,1] 60x+960x²-777y-448y²-336
[67+128x,110+128y]:	unknown -> [97] [1,1] 1020x+960x²-777y-448y²-66
expanding queue[49]^24,meter=[2,2]: 540x+480x²-329y-224y²+31
[35+128x,46+128y]:	failure constant=31, vgcd=2 [0,0] 1080x+1920x²-658y-896y²+31
[99+128x,46+128y]:	failure constant=1051, vgcd=2 [1,0] 3000x+1920x²-658y-896y²+1051
[35+128x,110+128y]:	unknown -> [98] [0,1] 540x+960x²-777y-448y²-261
[99+128x,110+128y]:	unknown -> [99] [1,1] 1500x+960x²-777y-448y²+249
expanding queue[50]^25,meter=[2,2]: 300x+480x²-329y-224y²-74
[19+128x,46+128y]:	unknown -> [100] [0,0] 300x+960x²-329y-448y²-37
[83+128x,46+128y]:	unknown -> [101] [1,0] 1260x+960x²-329y-448y²+353
[19+128x,110+128y]:	failure constant=-627, vgcd=2 [0,1] 600x+1920x²-1554y-896y²-627
[83+128x,110+128y]:	failure constant=153, vgcd=2 [1,1] 2520x+1920x²-1554y-896y²+153
expanding queue[51]^25,meter=[2,2]: 780x+480x²-329y-224y²+196
[51+128x,46+128y]:	unknown -> [102] [0,0] 780x+960x²-329y-448y²+98
[115+128x,46+128y]:	unknown -> [103] [1,0] 1740x+960x²-329y-448y²+728
[51+128x,110+128y]:	failure constant=-357, vgcd=2 [0,1] 1560x+1920x²-1554y-896y²-357
[115+128x,110+128y]:	failure constant=903, vgcd=2 [1,1] 3480x+1920x²-1554y-896y²+903
expanding queue[52]^26,meter=[2,2]: 180x+480x²-329y-224y²-104
[11+128x,46+128y]:	unknown -> [104] [0,0] 180x+960x²-329y-448y²-52
[75+128x,46+128y]:	unknown -> [105] [1,0] 1140x+960x²-329y-448y²+278
[11+128x,110+128y]:	failure constant=-657, vgcd=2 [0,1] 360x+1920x²-1554y-896y²-657
[75+128x,110+128y]:	failure constant=3, vgcd=2 [1,1] 2280x+1920x²-1554y-896y²+3
expanding queue[53]^26,meter=[2,2]: 660x+480x²-329y-224y²+106
[43+128x,46+128y]:	unknown -> [106] [0,0] 660x+960x²-329y-448y²+53
[107+128x,46+128y]:	unknown -> [107] [1,0] 1620x+960x²-329y-448y²+623
[43+128x,110+128y]:	failure constant=-447, vgcd=2 [0,1] 1320x+1920x²-1554y-896y²-447
[107+128x,110+128y]:	failure constant=693, vgcd=2 [1,1] 3240x+1920x²-1554y-896y²+693
expanding queue[54]^27,meter=[2,2]: 420x+480x²-329y-224y²-29
[27+128x,46+128y]:	failure constant=-29, vgcd=2 [0,0] 840x+1920x²-658y-896y²-29
[91+128x,46+128y]:	failure constant=871, vgcd=2 [1,0] 2760x+1920x²-658y-896y²+871
[27+128x,110+128y]:	unknown -> [108] [0,1] 420x+960x²-777y-448y²-291
[91+128x,110+128y]:	unknown -> [109] [1,1] 1380x+960x²-777y-448y²+159
expanding queue[55]^27,meter=[2,2]: 900x+480x²-329y-224y²+301
[59+128x,46+128y]:	failure constant=301, vgcd=2 [0,0] 1800x+1920x²-658y-896y²+301
[123+128x,46+128y]:	failure constant=1681, vgcd=2 [1,0] 3720x+1920x²-658y-896y²+1681
[59+128x,110+128y]:	unknown -> [110] [0,1] 900x+960x²-777y-448y²-126
[123+128x,110+128y]:	unknown -> [111] [1,1] 1860x+960x²-777y-448y²+564
expanding queue[56]^28,meter=[2,2]: 120x+480x²-385y-224y²-158
[7+128x,54+128y]:	unknown -> [112] [0,0] 120x+960x²-385y-448y²-79
[71+128x,54+128y]:	unknown -> [113] [1,0] 1080x+960x²-385y-448y²+221
[7+128x,118+128y]:	failure constant=-767, vgcd=2 [0,1] 240x+1920x²-1666y-896y²-767
[71+128x,118+128y]:	failure constant=-167, vgcd=2 [1,1] 2160x+1920x²-1666y-896y²-167
expanding queue[57]^28,meter=[2,2]: 600x+480x²-385y-224y²+22
[39+128x,54+128y]:	unknown -> [114] [0,0] 600x+960x²-385y-448y²+11
[103+128x,54+128y]:	unknown -> [115] [1,0] 1560x+960x²-385y-448y²+551
[39+128x,118+128y]:	failure constant=-587, vgcd=2 [0,1] 1200x+1920x²-1666y-896y²-587
[103+128x,118+128y]:	failure constant=493, vgcd=2 [1,1] 3120x+1920x²-1666y-896y²+493
expanding queue[58]^29,meter=[2,2]: 360x+480x²-385y-224y²-98
[23+128x,54+128y]:	unknown -> [116] [0,0] 360x+960x²-385y-448y²-49
[87+128x,54+128y]:	unknown -> [117] [1,0] 1320x+960x²-385y-448y²+371
[23+128x,118+128y]:	failure constant=-707, vgcd=2 [0,1] 720x+1920x²-1666y-896y²-707
[87+128x,118+128y]:	failure constant=133, vgcd=2 [1,1] 2640x+1920x²-1666y-896y²+133
expanding queue[59]^29,meter=[2,2]: 840x+480x²-385y-224y²+202
[55+128x,54+128y]:	unknown -> [118] [0,0] 840x+960x²-385y-448y²+101
[119+128x,54+128y]:	unknown -> [119] [1,0] 1800x+960x²-385y-448y²+761
[55+128x,118+128y]:	failure constant=-407, vgcd=2 [0,1] 1680x+1920x²-1666y-896y²-407
[119+128x,118+128y]:	failure constant=913, vgcd=2 [1,1] 3600x+1920x²-1666y-896y²+913
expanding queue[60]^30,meter=[2,2]: 240x+480x²-161y-224y²+1
[15+128x,22+128y]:	failure constant=1, vgcd=2 [0,0] 480x+1920x²-322y-896y²+1
[79+128x,22+128y]:	failure constant=721, vgcd=2 [1,0] 2400x+1920x²-322y-896y²+721
[15+128x,86+128y]:	unknown -> [120] [0,1] 240x+960x²-609y-448y²-192
[79+128x,86+128y]:	unknown -> [121] [1,1] 1200x+960x²-609y-448y²+168
expanding queue[61]^30,meter=[2,2]: 720x+480x²-161y-224y²+241
[47+128x,22+128y]:	failure constant=241, vgcd=2 [0,0] 1440x+1920x²-322y-896y²+241
[111+128x,22+128y]:	failure constant=1441, vgcd=2 [1,0] 3360x+1920x²-322y-896y²+1441
[47+128x,86+128y]:	unknown -> [122] [0,1] 720x+960x²-609y-448y²-72
[111+128x,86+128y]:	unknown -> [123] [1,1] 1680x+960x²-609y-448y²+528
expanding queue[62]^31,meter=[2,2]: 480x+480x²-161y-224y²+91
[31+128x,22+128y]:	failure constant=91, vgcd=2 [0,0] 960x+1920x²-322y-896y²+91
[95+128x,22+128y]:	failure constant=1051, vgcd=2 [1,0] 2880x+1920x²-322y-896y²+1051
[31+128x,86+128y]:	unknown -> [124] [0,1] 480x+960x²-609y-448y²-147
[95+128x,86+128y]:	unknown -> [125] [1,1] 1440x+960x²-609y-448y²+333
expanding queue[63]^31,meter=[2,2]: 960x+480x²-161y-224y²+451
[63+128x,22+128y]:	failure constant=451, vgcd=2 [0,0] 1920x+1920x²-322y-896y²+451
[127+128x,22+128y]:	failure constant=1891, vgcd=2 [1,0] 3840x+1920x²-322y-896y²+1891
[63+128x,86+128y]:	unknown -> [126] [0,1] 960x+960x²-609y-448y²+33
[127+128x,86+128y]:	unknown -> [127] [1,1] 1920x+960x²-609y-448y²+753
Maximum level 6 [128] mod 2: 30x+15x²-14y-7y²-1
