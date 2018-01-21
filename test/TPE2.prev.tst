Expanding for base=2, level=6, reasons+features=base,same,similiar invall,norm,showfail
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 30x+15x²-14y-7y²-1
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: 30x+15x²-14y-7y²-1
[0+2x,0+2y]:	failure constant=-1, vgcd=4 [0,0] 60x+60x²-28y-28y²-1
[1+2x,0+2y]:	unknown -> [1] [1,0] 30x+15x²-7y-7y²+11
[0+2x,1+2y]:	failure constant=-11, vgcd=2 [0,1] 30x+30x²-28y-14y²-11
[1+2x,1+2y]:	failure constant=23, vgcd=4 [1,1] 120x+60x²-56y-28y²+23
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: 30x+15x²-7y-7y²+11
[1+4x,0+4y]:	failure constant=11, vgcd=2 [0,0] 60x+60x²-14y-28y²+11
[3+4x,0+4y]:	unknown -> [2] [1,0] 60x+30x²-7y-14y²+28
[1+4x,2+4y]:	failure constant=-3, vgcd=2 [0,1] 60x+60x²-42y-28y²-3
[3+4x,2+4y]:	unknown -> [3] [1,1] 60x+30x²-21y-14y²+21
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[2,2]: 60x+30x²-7y-14y²+28
[3+8x,0+8y]:	unknown -> [4] [0,0] 60x+60x²-7y-28y²+14
[7+8x,0+8y]:	unknown -> [5] [1,0] 120x+60x²-7y-28y²+59
[3+8x,4+8y]:	failure constant=7, vgcd=2 [0,1] 120x+120x²-70y-56y²+7
[7+8x,4+8y]:	failure constant=97, vgcd=2 [1,1] 240x+120x²-70y-56y²+97
endexp[2]
expanding queue[3]^1,meter=[2,2]: 60x+30x²-21y-14y²+21
[3+8x,2+8y]:	failure constant=21, vgcd=2 [0,0] 120x+120x²-42y-56y²+21
[7+8x,2+8y]:	failure constant=111, vgcd=2 [1,0] 240x+120x²-42y-56y²+111
[3+8x,6+8y]:	unknown -> [6] [0,1] 60x+60x²-49y-28y²-7
[7+8x,6+8y]:	unknown -> [7] [1,1] 120x+60x²-49y-28y²+38
endexp[3]
---------------- level 3
expanding queue[4]^2,meter=[2,2]: 60x+60x²-7y-28y²+14
[3+16x,0+16y]:	unknown -> [8] [0,0] 60x+120x²-7y-56y²+7
[11+16x,0+16y]:	unknown -> [9] [1,0] 180x+120x²-7y-56y²+67
[3+16x,8+16y]:	failure constant=-21, vgcd=2 [0,1] 120x+240x²-126y-112y²-21
[11+16x,8+16y]:	failure constant=99, vgcd=2 [1,1] 360x+240x²-126y-112y²+99
endexp[4]
expanding queue[5]^2,meter=[2,2]: 120x+60x²-7y-28y²+59
[7+16x,0+16y]:	failure constant=59, vgcd=2 [0,0] 240x+240x²-14y-112y²+59
[15+16x,0+16y]:	failure constant=239, vgcd=2 [1,0] 480x+240x²-14y-112y²+239
[7+16x,8+16y]:	unknown -> [10] [0,1] 120x+120x²-63y-56y²+12
[15+16x,8+16y]:	unknown -> [11] [1,1] 240x+120x²-63y-56y²+102
endexp[5]
expanding queue[6]^3,meter=[2,2]: 60x+60x²-49y-28y²-7
[3+16x,6+16y]:	failure constant=-7, vgcd=2 [0,0] 120x+240x²-98y-112y²-7
[11+16x,6+16y]:	failure constant=113, vgcd=2 [1,0] 360x+240x²-98y-112y²+113
[3+16x,14+16y]:	unknown -> [12] [0,1] 60x+120x²-105y-56y²-42
[11+16x,14+16y]:	unknown -> [13] [1,1] 180x+120x²-105y-56y²+18
endexp[6]
expanding queue[7]^3,meter=[2,2]: 120x+60x²-49y-28y²+38
[7+16x,6+16y]:	unknown -> [14] [0,0] 120x+120x²-49y-56y²+19
[15+16x,6+16y]:	unknown -> [15] [1,0] 240x+120x²-49y-56y²+109
[7+16x,14+16y]:	failure constant=-39, vgcd=2 [0,1] 240x+240x²-210y-112y²-39
[15+16x,14+16y]:	failure constant=141, vgcd=2 [1,1] 480x+240x²-210y-112y²+141
endexp[7]
---------------- level 4
expanding queue[8]^4,meter=[2,2]: 60x+120x²-7y-56y²+7
[3+32x,0+32y]:	failure constant=7, vgcd=2 [0,0] 120x+480x²-14y-224y²+7
[19+32x,0+32y]:	failure constant=187, vgcd=2 [1,0] 600x+480x²-14y-224y²+187
[3+32x,16+32y]:	unknown -> [16] [0,1] 60x+240x²-119y-112y²-28
[19+32x,16+32y]:	unknown -> [17] [1,1] 300x+240x²-119y-112y²+62
endexp[8]
expanding queue[9]^4,meter=[2,2]: 180x+120x²-7y-56y²+67
[11+32x,0+32y]:	failure constant=67, vgcd=2 [0,0] 360x+480x²-14y-224y²+67
[27+32x,0+32y]:	failure constant=367, vgcd=2 [1,0] 840x+480x²-14y-224y²+367
[11+32x,16+32y]:	unknown -> [18] [0,1] 180x+240x²-119y-112y²+2
[27+32x,16+32y]:	unknown -> [19] [1,1] 420x+240x²-119y-112y²+152
endexp[9]
expanding queue[10]^5,meter=[2,2]: 120x+120x²-63y-56y²+12
[7+32x,8+32y]:	unknown -> [20] [0,0] 120x+240x²-63y-112y²+6
[23+32x,8+32y]:	unknown -> [21] [1,0] 360x+240x²-63y-112y²+126
[7+32x,24+32y]:	failure constant=-107, vgcd=2 [0,1] 240x+480x²-350y-224y²-107
[23+32x,24+32y]:	failure constant=133, vgcd=2 [1,1] 720x+480x²-350y-224y²+133
endexp[10]
expanding queue[11]^5,meter=[2,2]: 240x+120x²-63y-56y²+102
[15+32x,8+32y]:	unknown -> [22] [0,0] 240x+240x²-63y-112y²+51
[31+32x,8+32y]:	unknown -> [23] [1,0] 480x+240x²-63y-112y²+231
[15+32x,24+32y]:	failure constant=-17, vgcd=2 [0,1] 480x+480x²-350y-224y²-17
[31+32x,24+32y]:	failure constant=343, vgcd=2 [1,1] 960x+480x²-350y-224y²+343
endexp[11]
expanding queue[12]^6,meter=[2,2]: 60x+120x²-105y-56y²-42
[3+32x,14+32y]:	unknown -> [24] [0,0] 60x+240x²-105y-112y²-21
[19+32x,14+32y]:	unknown -> [25] [1,0] 300x+240x²-105y-112y²+69
[3+32x,30+32y]:	failure constant=-203, vgcd=2 [0,1] 120x+480x²-434y-224y²-203
[19+32x,30+32y]:	failure constant=-23, vgcd=2 [1,1] 600x+480x²-434y-224y²-23
endexp[12]
expanding queue[13]^6,meter=[2,2]: 180x+120x²-105y-56y²+18
[11+32x,14+32y]:	unknown -> [26] [0,0] 180x+240x²-105y-112y²+9
[27+32x,14+32y]:	unknown -> [27] [1,0] 420x+240x²-105y-112y²+159
[11+32x,30+32y]:	failure constant=-143, vgcd=2 [0,1] 360x+480x²-434y-224y²-143
[27+32x,30+32y]:	failure constant=157, vgcd=2 [1,1] 840x+480x²-434y-224y²+157
endexp[13]
expanding queue[14]^7,meter=[2,2]: 120x+120x²-49y-56y²+19
[7+32x,6+32y]:	failure constant=19, vgcd=2 [0,0] 240x+480x²-98y-224y²+19
[23+32x,6+32y]:	failure constant=259, vgcd=2 [1,0] 720x+480x²-98y-224y²+259
[7+32x,22+32y]:	unknown -> [28] [0,1] 120x+240x²-161y-112y²-43
[23+32x,22+32y]:	unknown -> [29] [1,1] 360x+240x²-161y-112y²+77
endexp[14]
expanding queue[15]^7,meter=[2,2]: 240x+120x²-49y-56y²+109
[15+32x,6+32y]:	failure constant=109, vgcd=2 [0,0] 480x+480x²-98y-224y²+109
[31+32x,6+32y]:	failure constant=469, vgcd=2 [1,0] 960x+480x²-98y-224y²+469
[15+32x,22+32y]:	unknown -> [30] [0,1] 240x+240x²-161y-112y²+2
[31+32x,22+32y]:	unknown -> [31] [1,1] 480x+240x²-161y-112y²+182
endexp[15]
---------------- level 5
expanding queue[16]^8,meter=[2,2]: 60x+240x²-119y-112y²-28
[3+64x,16+64y]:	unknown -> [32] [0,0] 60x+480x²-119y-224y²-14
[35+64x,16+64y]:	unknown -> [33] [1,0] 540x+480x²-119y-224y²+136
[3+64x,48+64y]:	failure constant=-259, vgcd=2 [0,1] 120x+960x²-686y-448y²-259
[35+64x,48+64y]:	failure constant=41, vgcd=2 [1,1] 1080x+960x²-686y-448y²+41
endexp[16]
expanding queue[17]^8,meter=[2,2]: 300x+240x²-119y-112y²+62
[19+64x,16+64y]:	unknown -> [34] [0,0] 300x+480x²-119y-224y²+31
[51+64x,16+64y]:	unknown -> [35] [1,0] 780x+480x²-119y-224y²+301
[19+64x,48+64y]:	failure constant=-169, vgcd=2 [0,1] 600x+960x²-686y-448y²-169
[51+64x,48+64y]:	failure constant=371, vgcd=2 [1,1] 1560x+960x²-686y-448y²+371
endexp[17]
expanding queue[18]^9,meter=[2,2]: 180x+240x²-119y-112y²+2
[11+64x,16+64y]:	unknown -> [36] [0,0] 180x+480x²-119y-224y²+1
[43+64x,16+64y]:	unknown -> [37] [1,0] 660x+480x²-119y-224y²+211
[11+64x,48+64y]:	failure constant=-229, vgcd=2 [0,1] 360x+960x²-686y-448y²-229
[43+64x,48+64y]:	failure constant=191, vgcd=2 [1,1] 1320x+960x²-686y-448y²+191
endexp[18]
expanding queue[19]^9,meter=[2,2]: 420x+240x²-119y-112y²+152
[27+64x,16+64y]:	unknown -> [38] [0,0] 420x+480x²-119y-224y²+76
[59+64x,16+64y]:	unknown -> [39] [1,0] 900x+480x²-119y-224y²+406
[27+64x,48+64y]:	failure constant=-79, vgcd=2 [0,1] 840x+960x²-686y-448y²-79
[59+64x,48+64y]:	failure constant=581, vgcd=2 [1,1] 1800x+960x²-686y-448y²+581
endexp[19]
expanding queue[20]^10,meter=[2,2]: 120x+240x²-63y-112y²+6
[7+64x,8+64y]:	unknown -> [40] [0,0] 120x+480x²-63y-224y²+3
[39+64x,8+64y]:	unknown -> [41] [1,0] 600x+480x²-63y-224y²+183
[7+64x,40+64y]:	failure constant=-169, vgcd=2 [0,1] 240x+960x²-574y-448y²-169
[39+64x,40+64y]:	failure constant=191, vgcd=2 [1,1] 1200x+960x²-574y-448y²+191
endexp[20]
expanding queue[21]^10,meter=[2,2]: 360x+240x²-63y-112y²+126
[23+64x,8+64y]:	unknown -> [42] [0,0] 360x+480x²-63y-224y²+63
[55+64x,8+64y]:	unknown -> [43] [1,0] 840x+480x²-63y-224y²+363
[23+64x,40+64y]:	failure constant=-49, vgcd=2 [0,1] 720x+960x²-574y-448y²-49
[55+64x,40+64y]:	failure constant=551, vgcd=2 [1,1] 1680x+960x²-574y-448y²+551
endexp[21]
expanding queue[22]^11,meter=[2,2]: 240x+240x²-63y-112y²+51
[15+64x,8+64y]:	failure constant=51, vgcd=2 [0,0] 480x+960x²-126y-448y²+51
[47+64x,8+64y]:	failure constant=531, vgcd=2 [1,0] 1440x+960x²-126y-448y²+531
[15+64x,40+64y]:	unknown -> [44] [0,1] 240x+480x²-287y-224y²-62
[47+64x,40+64y]:	unknown -> [45] [1,1] 720x+480x²-287y-224y²+178
endexp[22]
expanding queue[23]^11,meter=[2,2]: 480x+240x²-63y-112y²+231
[31+64x,8+64y]:	failure constant=231, vgcd=2 [0,0] 960x+960x²-126y-448y²+231
[63+64x,8+64y]:	failure constant=951, vgcd=2 [1,0] 1920x+960x²-126y-448y²+951
[31+64x,40+64y]:	unknown -> [46] [0,1] 480x+480x²-287y-224y²+28
[63+64x,40+64y]:	unknown -> [47] [1,1] 960x+480x²-287y-224y²+388
endexp[23]
expanding queue[24]^12,meter=[2,2]: 60x+240x²-105y-112y²-21
[3+64x,14+64y]:	failure constant=-21, vgcd=2 [0,0] 120x+960x²-210y-448y²-21
[35+64x,14+64y]:	failure constant=279, vgcd=2 [1,0] 1080x+960x²-210y-448y²+279
[3+64x,46+64y]:	unknown -> [48] [0,1] 60x+480x²-329y-224y²-119
[35+64x,46+64y]:	unknown -> [49] [1,1] 540x+480x²-329y-224y²+31
endexp[24]
expanding queue[25]^12,meter=[2,2]: 300x+240x²-105y-112y²+69
[19+64x,14+64y]:	failure constant=69, vgcd=2 [0,0] 600x+960x²-210y-448y²+69
[51+64x,14+64y]:	failure constant=609, vgcd=2 [1,0] 1560x+960x²-210y-448y²+609
[19+64x,46+64y]:	unknown -> [50] [0,1] 300x+480x²-329y-224y²-74
[51+64x,46+64y]:	unknown -> [51] [1,1] 780x+480x²-329y-224y²+196
endexp[25]
expanding queue[26]^13,meter=[2,2]: 180x+240x²-105y-112y²+9
[11+64x,14+64y]:	failure constant=9, vgcd=2 [0,0] 360x+960x²-210y-448y²+9
[43+64x,14+64y]:	failure constant=429, vgcd=2 [1,0] 1320x+960x²-210y-448y²+429
[11+64x,46+64y]:	unknown -> [52] [0,1] 180x+480x²-329y-224y²-104
[43+64x,46+64y]:	unknown -> [53] [1,1] 660x+480x²-329y-224y²+106
endexp[26]
expanding queue[27]^13,meter=[2,2]: 420x+240x²-105y-112y²+159
[27+64x,14+64y]:	failure constant=159, vgcd=2 [0,0] 840x+960x²-210y-448y²+159
[59+64x,14+64y]:	failure constant=819, vgcd=2 [1,0] 1800x+960x²-210y-448y²+819
[27+64x,46+64y]:	unknown -> [54] [0,1] 420x+480x²-329y-224y²-29
[59+64x,46+64y]:	unknown -> [55] [1,1] 900x+480x²-329y-224y²+301
endexp[27]
expanding queue[28]^14,meter=[2,2]: 120x+240x²-161y-112y²-43
[7+64x,22+64y]:	failure constant=-43, vgcd=2 [0,0] 240x+960x²-322y-448y²-43
[39+64x,22+64y]:	failure constant=317, vgcd=2 [1,0] 1200x+960x²-322y-448y²+317
[7+64x,54+64y]:	unknown -> [56] [0,1] 120x+480x²-385y-224y²-158
[39+64x,54+64y]:	unknown -> [57] [1,1] 600x+480x²-385y-224y²+22
endexp[28]
expanding queue[29]^14,meter=[2,2]: 360x+240x²-161y-112y²+77
[23+64x,22+64y]:	failure constant=77, vgcd=2 [0,0] 720x+960x²-322y-448y²+77
[55+64x,22+64y]:	failure constant=677, vgcd=2 [1,0] 1680x+960x²-322y-448y²+677
[23+64x,54+64y]:	unknown -> [58] [0,1] 360x+480x²-385y-224y²-98
[55+64x,54+64y]:	unknown -> [59] [1,1] 840x+480x²-385y-224y²+202
endexp[29]
expanding queue[30]^15,meter=[2,2]: 240x+240x²-161y-112y²+2
[15+64x,22+64y]:	unknown -> [60] [0,0] 240x+480x²-161y-224y²+1
[47+64x,22+64y]:	unknown -> [61] [1,0] 720x+480x²-161y-224y²+241
[15+64x,54+64y]:	failure constant=-271, vgcd=2 [0,1] 480x+960x²-770y-448y²-271
[47+64x,54+64y]:	failure constant=209, vgcd=2 [1,1] 1440x+960x²-770y-448y²+209
endexp[30]
expanding queue[31]^15,meter=[2,2]: 480x+240x²-161y-112y²+182
[31+64x,22+64y]:	unknown -> [62] [0,0] 480x+480x²-161y-224y²+91
[63+64x,22+64y]:	unknown -> [63] [1,0] 960x+480x²-161y-224y²+451
[31+64x,54+64y]:	failure constant=-91, vgcd=2 [0,1] 960x+960x²-770y-448y²-91
[63+64x,54+64y]:	failure constant=629, vgcd=2 [1,1] 1920x+960x²-770y-448y²+629
endexp[31]
---------------- level 6
Maximum level 6 [64] mod 2: 30x+15x²-14y-7y²-1
