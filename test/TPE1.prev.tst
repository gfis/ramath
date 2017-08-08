Expanding for base=2, level=5, reasons+features=base,same,similiar invall,norm,showfail
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 15x²-7y²-9
----------------
expanding queue[0]^-1,meter=[2,2]: 15x²-7y²-9
[0+2x,0+2y]:	failure constant=-9, vgcd=4 [0,0] 60x²-28y²-9
[1+2x,0+2y]:	failure constant=3, vgcd=2 [1,0] 30x+30x²-14y²+3
[0+2x,1+2y]:	unknown -> [1] [0,1] 15x²-7y-7y²-4
[1+2x,1+2y]:	failure constant=-1, vgcd=4 [1,1] 60x+60x²-28y-28y²-1
----------------
expanding queue[1]^0,meter=[2,2]: 15x²-7y-7y²-4
[0+4x,1+4y]:	unknown -> [2] [0,0] 30x²-7y-14y²-2
[2+4x,1+4y]:	failure constant=11, vgcd=2 [1,0] 60x+60x²-14y-28y²+11
[0+4x,3+4y]:	unknown -> [3] [0,1] 30x²-21y-14y²-9
[2+4x,3+4y]:	failure constant=-3, vgcd=2 [1,1] 60x+60x²-42y-28y²-3
----------------
expanding queue[2]^1,meter=[2,2]: 30x²-7y-14y²-2
[0+8x,1+8y]:	unknown -> [4] [0,0] 60x²-7y-28y²-1
[4+8x,1+8y]:	unknown -> [5] [1,0] 60x+60x²-7y-28y²+14
[0+8x,5+8y]:	failure constant=-23, vgcd=2 [0,1] 120x²-70y-56y²-23
[4+8x,5+8y]:	failure constant=7, vgcd=2 [1,1] 120x+120x²-70y-56y²+7
expanding queue[3]^1,meter=[2,2]: 30x²-21y-14y²-9
[0+8x,3+8y]:	failure constant=-9, vgcd=2 [0,0] 120x²-42y-56y²-9
[4+8x,3+8y]:	failure constant=21, vgcd=2 [1,0] 120x+120x²-42y-56y²+21
[0+8x,7+8y]:	unknown -> [6] [0,1] 60x²-49y-28y²-22
[4+8x,7+8y]:	unknown -> [7] [1,1] 60x+60x²-49y-28y²-7
----------------
expanding queue[4]^2,meter=[2,2]: 60x²-7y-28y²-1
[0+16x,1+16y]:	failure constant=-1, vgcd=2 [0,0] 240x²-14y-112y²-1
[8+16x,1+16y]:	failure constant=59, vgcd=2 [1,0] 240x+240x²-14y-112y²+59
[0+16x,9+16y]:	unknown -> [8] [0,1] 120x²-63y-56y²-18
[8+16x,9+16y]:	unknown -> [9] [1,1] 120x+120x²-63y-56y²+12
expanding queue[5]^2,meter=[2,2]: 60x+60x²-7y-28y²+14
[4+16x,1+16y]:	unknown -> [10] [0,0] 60x+120x²-7y-56y²+7
[12+16x,1+16y]:	unknown -> [11] [1,0] 180x+120x²-7y-56y²+67
[4+16x,9+16y]:	failure constant=-21, vgcd=2 [0,1] 120x+240x²-126y-112y²-21
[12+16x,9+16y]:	failure constant=99, vgcd=2 [1,1] 360x+240x²-126y-112y²+99
expanding queue[6]^3,meter=[2,2]: 60x²-49y-28y²-22
[0+16x,7+16y]:	unknown -> [12] [0,0] 120x²-49y-56y²-11
[8+16x,7+16y]:	unknown -> [13] [1,0] 120x+120x²-49y-56y²+19
[0+16x,15+16y]:	failure constant=-99, vgcd=2 [0,1] 240x²-210y-112y²-99
[8+16x,15+16y]:	failure constant=-39, vgcd=2 [1,1] 240x+240x²-210y-112y²-39
expanding queue[7]^3,meter=[2,2]: 60x+60x²-49y-28y²-7
[4+16x,7+16y]:	failure constant=-7, vgcd=2 [0,0] 120x+240x²-98y-112y²-7
[12+16x,7+16y]:	failure constant=113, vgcd=2 [1,0] 360x+240x²-98y-112y²+113
[4+16x,15+16y]:	unknown -> [14] [0,1] 60x+120x²-105y-56y²-42
[12+16x,15+16y]:	unknown -> [15] [1,1] 180x+120x²-105y-56y²+18
----------------
expanding queue[8]^4,meter=[2,2]: 120x²-63y-56y²-18
[0+32x,9+32y]:	unknown -> [16] [0,0] 240x²-63y-112y²-9
[16+32x,9+32y]:	unknown -> [17] [1,0] 240x+240x²-63y-112y²+51
[0+32x,25+32y]:	failure constant=-137, vgcd=2 [0,1] 480x²-350y-224y²-137
[16+32x,25+32y]:	failure constant=-17, vgcd=2 [1,1] 480x+480x²-350y-224y²-17
expanding queue[9]^4,meter=[2,2]: 120x+120x²-63y-56y²+12
[8+32x,9+32y]:	unknown -> [18] [0,0] 120x+240x²-63y-112y²+6
[24+32x,9+32y]:	unknown -> [19] [1,0] 360x+240x²-63y-112y²+126
[8+32x,25+32y]:	failure constant=-107, vgcd=2 [0,1] 240x+480x²-350y-224y²-107
[24+32x,25+32y]:	failure constant=133, vgcd=2 [1,1] 720x+480x²-350y-224y²+133
expanding queue[10]^5,meter=[2,2]: 60x+120x²-7y-56y²+7
[4+32x,1+32y]:	failure constant=7, vgcd=2 [0,0] 120x+480x²-14y-224y²+7
[20+32x,1+32y]:	failure constant=187, vgcd=2 [1,0] 600x+480x²-14y-224y²+187
[4+32x,17+32y]:	unknown -> [20] [0,1] 60x+240x²-119y-112y²-28
[20+32x,17+32y]:	unknown -> [21] [1,1] 300x+240x²-119y-112y²+62
expanding queue[11]^5,meter=[2,2]: 180x+120x²-7y-56y²+67
[12+32x,1+32y]:	failure constant=67, vgcd=2 [0,0] 360x+480x²-14y-224y²+67
[28+32x,1+32y]:	failure constant=367, vgcd=2 [1,0] 840x+480x²-14y-224y²+367
[12+32x,17+32y]:	unknown -> [22] [0,1] 180x+240x²-119y-112y²+2
[28+32x,17+32y]:	unknown -> [23] [1,1] 420x+240x²-119y-112y²+152
expanding queue[12]^6,meter=[2,2]: 120x²-49y-56y²-11
[0+32x,7+32y]:	failure constant=-11, vgcd=2 [0,0] 480x²-98y-224y²-11
[16+32x,7+32y]:	failure constant=109, vgcd=2 [1,0] 480x+480x²-98y-224y²+109
[0+32x,23+32y]:	unknown -> [24] [0,1] 240x²-161y-112y²-58
[16+32x,23+32y]:	unknown -> [25] [1,1] 240x+240x²-161y-112y²+2
expanding queue[13]^6,meter=[2,2]: 120x+120x²-49y-56y²+19
[8+32x,7+32y]:	failure constant=19, vgcd=2 [0,0] 240x+480x²-98y-224y²+19
[24+32x,7+32y]:	failure constant=259, vgcd=2 [1,0] 720x+480x²-98y-224y²+259
[8+32x,23+32y]:	unknown -> [26] [0,1] 120x+240x²-161y-112y²-43
[24+32x,23+32y]:	unknown -> [27] [1,1] 360x+240x²-161y-112y²+77
expanding queue[14]^7,meter=[2,2]: 60x+120x²-105y-56y²-42
[4+32x,15+32y]:	unknown -> [28] [0,0] 60x+240x²-105y-112y²-21
[20+32x,15+32y]:	unknown -> [29] [1,0] 300x+240x²-105y-112y²+69
[4+32x,31+32y]:	failure constant=-203, vgcd=2 [0,1] 120x+480x²-434y-224y²-203
[20+32x,31+32y]:	failure constant=-23, vgcd=2 [1,1] 600x+480x²-434y-224y²-23
expanding queue[15]^7,meter=[2,2]: 180x+120x²-105y-56y²+18
[12+32x,15+32y]:	unknown -> [30] [0,0] 180x+240x²-105y-112y²+9
[28+32x,15+32y]:	unknown -> [31] [1,0] 420x+240x²-105y-112y²+159
[12+32x,31+32y]:	failure constant=-143, vgcd=2 [0,1] 360x+480x²-434y-224y²-143
[28+32x,31+32y]:	failure constant=157, vgcd=2 [1,1] 840x+480x²-434y-224y²+157
----------------
expanding queue[16]^8,meter=[2,2]: 240x²-63y-112y²-9
[0+64x,9+64y]:	failure constant=-9, vgcd=2 [0,0] 960x²-126y-448y²-9
[32+64x,9+64y]:	failure constant=231, vgcd=2 [1,0] 960x+960x²-126y-448y²+231
[0+64x,41+64y]:	unknown -> [32] [0,1] 480x²-287y-224y²-92
[32+64x,41+64y]:	unknown -> [33] [1,1] 480x+480x²-287y-224y²+28
expanding queue[17]^8,meter=[2,2]: 240x+240x²-63y-112y²+51
[16+64x,9+64y]:	failure constant=51, vgcd=2 [0,0] 480x+960x²-126y-448y²+51
[48+64x,9+64y]:	failure constant=531, vgcd=2 [1,0] 1440x+960x²-126y-448y²+531
[16+64x,41+64y]:	unknown -> [34] [0,1] 240x+480x²-287y-224y²-62
[48+64x,41+64y]:	unknown -> [35] [1,1] 720x+480x²-287y-224y²+178
expanding queue[18]^9,meter=[2,2]: 120x+240x²-63y-112y²+6
[8+64x,9+64y]:	unknown -> [36] [0,0] 120x+480x²-63y-224y²+3
[40+64x,9+64y]:	unknown -> [37] [1,0] 600x+480x²-63y-224y²+183
[8+64x,41+64y]:	failure constant=-169, vgcd=2 [0,1] 240x+960x²-574y-448y²-169
[40+64x,41+64y]:	failure constant=191, vgcd=2 [1,1] 1200x+960x²-574y-448y²+191
expanding queue[19]^9,meter=[2,2]: 360x+240x²-63y-112y²+126
[24+64x,9+64y]:	unknown -> [38] [0,0] 360x+480x²-63y-224y²+63
[56+64x,9+64y]:	unknown -> [39] [1,0] 840x+480x²-63y-224y²+363
[24+64x,41+64y]:	failure constant=-49, vgcd=2 [0,1] 720x+960x²-574y-448y²-49
[56+64x,41+64y]:	failure constant=551, vgcd=2 [1,1] 1680x+960x²-574y-448y²+551
expanding queue[20]^10,meter=[2,2]: 60x+240x²-119y-112y²-28
[4+64x,17+64y]:	unknown -> [40] [0,0] 60x+480x²-119y-224y²-14
[36+64x,17+64y]:	unknown -> [41] [1,0] 540x+480x²-119y-224y²+136
[4+64x,49+64y]:	failure constant=-259, vgcd=2 [0,1] 120x+960x²-686y-448y²-259
[36+64x,49+64y]:	failure constant=41, vgcd=2 [1,1] 1080x+960x²-686y-448y²+41
expanding queue[21]^10,meter=[2,2]: 300x+240x²-119y-112y²+62
[20+64x,17+64y]:	unknown -> [42] [0,0] 300x+480x²-119y-224y²+31
[52+64x,17+64y]:	unknown -> [43] [1,0] 780x+480x²-119y-224y²+301
[20+64x,49+64y]:	failure constant=-169, vgcd=2 [0,1] 600x+960x²-686y-448y²-169
[52+64x,49+64y]:	failure constant=371, vgcd=2 [1,1] 1560x+960x²-686y-448y²+371
expanding queue[22]^11,meter=[2,2]: 180x+240x²-119y-112y²+2
[12+64x,17+64y]:	unknown -> [44] [0,0] 180x+480x²-119y-224y²+1
[44+64x,17+64y]:	unknown -> [45] [1,0] 660x+480x²-119y-224y²+211
[12+64x,49+64y]:	failure constant=-229, vgcd=2 [0,1] 360x+960x²-686y-448y²-229
[44+64x,49+64y]:	failure constant=191, vgcd=2 [1,1] 1320x+960x²-686y-448y²+191
expanding queue[23]^11,meter=[2,2]: 420x+240x²-119y-112y²+152
[28+64x,17+64y]:	unknown -> [46] [0,0] 420x+480x²-119y-224y²+76
[60+64x,17+64y]:	unknown -> [47] [1,0] 900x+480x²-119y-224y²+406
[28+64x,49+64y]:	failure constant=-79, vgcd=2 [0,1] 840x+960x²-686y-448y²-79
[60+64x,49+64y]:	failure constant=581, vgcd=2 [1,1] 1800x+960x²-686y-448y²+581
expanding queue[24]^12,meter=[2,2]: 240x²-161y-112y²-58
[0+64x,23+64y]:	unknown -> [48] [0,0] 480x²-161y-224y²-29
[32+64x,23+64y]:	unknown -> [49] [1,0] 480x+480x²-161y-224y²+91
[0+64x,55+64y]:	failure constant=-331, vgcd=2 [0,1] 960x²-770y-448y²-331
[32+64x,55+64y]:	failure constant=-91, vgcd=2 [1,1] 960x+960x²-770y-448y²-91
expanding queue[25]^12,meter=[2,2]: 240x+240x²-161y-112y²+2
[16+64x,23+64y]:	unknown -> [50] [0,0] 240x+480x²-161y-224y²+1
[48+64x,23+64y]:	unknown -> [51] [1,0] 720x+480x²-161y-224y²+241
[16+64x,55+64y]:	failure constant=-271, vgcd=2 [0,1] 480x+960x²-770y-448y²-271
[48+64x,55+64y]:	failure constant=209, vgcd=2 [1,1] 1440x+960x²-770y-448y²+209
expanding queue[26]^13,meter=[2,2]: 120x+240x²-161y-112y²-43
[8+64x,23+64y]:	failure constant=-43, vgcd=2 [0,0] 240x+960x²-322y-448y²-43
[40+64x,23+64y]:	failure constant=317, vgcd=2 [1,0] 1200x+960x²-322y-448y²+317
[8+64x,55+64y]:	unknown -> [52] [0,1] 120x+480x²-385y-224y²-158
[40+64x,55+64y]:	unknown -> [53] [1,1] 600x+480x²-385y-224y²+22
expanding queue[27]^13,meter=[2,2]: 360x+240x²-161y-112y²+77
[24+64x,23+64y]:	failure constant=77, vgcd=2 [0,0] 720x+960x²-322y-448y²+77
[56+64x,23+64y]:	failure constant=677, vgcd=2 [1,0] 1680x+960x²-322y-448y²+677
[24+64x,55+64y]:	unknown -> [54] [0,1] 360x+480x²-385y-224y²-98
[56+64x,55+64y]:	unknown -> [55] [1,1] 840x+480x²-385y-224y²+202
expanding queue[28]^14,meter=[2,2]: 60x+240x²-105y-112y²-21
[4+64x,15+64y]:	failure constant=-21, vgcd=2 [0,0] 120x+960x²-210y-448y²-21
[36+64x,15+64y]:	failure constant=279, vgcd=2 [1,0] 1080x+960x²-210y-448y²+279
[4+64x,47+64y]:	unknown -> [56] [0,1] 60x+480x²-329y-224y²-119
[36+64x,47+64y]:	unknown -> [57] [1,1] 540x+480x²-329y-224y²+31
expanding queue[29]^14,meter=[2,2]: 300x+240x²-105y-112y²+69
[20+64x,15+64y]:	failure constant=69, vgcd=2 [0,0] 600x+960x²-210y-448y²+69
[52+64x,15+64y]:	failure constant=609, vgcd=2 [1,0] 1560x+960x²-210y-448y²+609
[20+64x,47+64y]:	unknown -> [58] [0,1] 300x+480x²-329y-224y²-74
[52+64x,47+64y]:	unknown -> [59] [1,1] 780x+480x²-329y-224y²+196
expanding queue[30]^15,meter=[2,2]: 180x+240x²-105y-112y²+9
[12+64x,15+64y]:	failure constant=9, vgcd=2 [0,0] 360x+960x²-210y-448y²+9
[44+64x,15+64y]:	failure constant=429, vgcd=2 [1,0] 1320x+960x²-210y-448y²+429
[12+64x,47+64y]:	unknown -> [60] [0,1] 180x+480x²-329y-224y²-104
[44+64x,47+64y]:	unknown -> [61] [1,1] 660x+480x²-329y-224y²+106
expanding queue[31]^15,meter=[2,2]: 420x+240x²-105y-112y²+159
[28+64x,15+64y]:	failure constant=159, vgcd=2 [0,0] 840x+960x²-210y-448y²+159
[60+64x,15+64y]:	failure constant=819, vgcd=2 [1,0] 1800x+960x²-210y-448y²+819
[28+64x,47+64y]:	unknown -> [62] [0,1] 420x+480x²-329y-224y²-29
[60+64x,47+64y]:	unknown -> [63] [1,1] 900x+480x²-329y-224y²+301
Maximum level 5 [64] mod 2: 15x²-7y²-9
