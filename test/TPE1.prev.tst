Expanding for base=2, level=5, reasons+features=base,same,similiar invall,norm,showfail
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 15x²-7y²-9
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: 15x²-7y²-9
[0+2x,0+2y]:	failure constant=-9, vgcd=4 [0,0] 60x²-28y²-9
[1+2x,0+2y]:	failure constant=3, vgcd=2 [1,0] 30x+30x²-14y²+3
[0+2x,1+2y]:	unknown -> [1] [0,1] 15x²-7y-7y²-4
[1+2x,1+2y]:	failure constant=-1, vgcd=4 [1,1] 60x+60x²-28y-28y²-1
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: 15x²-7y-7y²-4
[0+4x,1+4y]:	unknown -> [2] [0,0] 30x²-7y-14y²-2
[2+4x,1+4y]:	failure constant=11, vgcd=2 [1,0] 60x+60x²-14y-28y²+11
[0+4x,3+4y]:	unknown -> [3] [0,1] 30x²-21y-14y²-9
[2+4x,3+4y]:	failure constant=-3, vgcd=2 [1,1] 60x+60x²-42y-28y²-3
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[2,2]: 30x²-7y-14y²-2
[0+8x,1+8y]:	unknown -> [4] [0,0] 60x²-7y-28y²-1
[4+8x,1+8y]:	unknown -> [5] [1,0] 60x+60x²-7y-28y²+14
[0+8x,5+8y]:	failure constant=-23, vgcd=2 [0,1] 120x²-70y-56y²-23
[4+8x,5+8y]:	failure constant=7, vgcd=2 [1,1] 120x+120x²-70y-56y²+7
endexp[2]
expanding queue[3]^1,meter=[2,2]: 30x²-21y-14y²-9
[0+8x,3+8y]:	failure constant=-9, vgcd=2 [0,0] 120x²-42y-56y²-9
[4+8x,3+8y]:	failure constant=21, vgcd=2 [1,0] 120x+120x²-42y-56y²+21
[0+8x,7+8y]:	unknown -> [6] [0,1] 60x²-49y-28y²-22
[4+8x,7+8y]:	unknown -> [7] [1,1] 60x+60x²-49y-28y²-7
endexp[3]
---------------- level 3
expanding queue[4]^2,meter=[2,2]: 60x²-7y-28y²-1
[0+16x,1+16y]:	failure constant=-1, vgcd=2 [0,0] 240x²-14y-112y²-1
[8+16x,1+16y]:	failure constant=59, vgcd=2 [1,0] 240x+240x²-14y-112y²+59
[0+16x,9+16y]:	unknown -> [8] [0,1] 120x²-63y-56y²-18
[8+16x,9+16y]:	unknown -> [9] [1,1] 120x+120x²-63y-56y²+12
endexp[4]
expanding queue[5]^2,meter=[2,2]: 60x+60x²-7y-28y²+14
[4+16x,1+16y]:	unknown -> [10] [0,0] 60x+120x²-7y-56y²+7
[12+16x,1+16y]:	unknown -> [11] [1,0] 180x+120x²-7y-56y²+67
[4+16x,9+16y]:	failure constant=-21, vgcd=2 [0,1] 120x+240x²-126y-112y²-21
[12+16x,9+16y]:	failure constant=99, vgcd=2 [1,1] 360x+240x²-126y-112y²+99
endexp[5]
expanding queue[6]^3,meter=[2,2]: 60x²-49y-28y²-22
[0+16x,7+16y]:	unknown -> [12] [0,0] 120x²-49y-56y²-11
[8+16x,7+16y]:	unknown -> [13] [1,0] 120x+120x²-49y-56y²+19
[0+16x,15+16y]:	failure constant=-99, vgcd=2 [0,1] 240x²-210y-112y²-99
[8+16x,15+16y]:	failure constant=-39, vgcd=2 [1,1] 240x+240x²-210y-112y²-39
endexp[6]
expanding queue[7]^3,meter=[2,2]: 60x+60x²-49y-28y²-7
[4+16x,7+16y]:	failure constant=-7, vgcd=2 [0,0] 120x+240x²-98y-112y²-7
[12+16x,7+16y]:	failure constant=113, vgcd=2 [1,0] 360x+240x²-98y-112y²+113
[4+16x,15+16y]:	unknown -> [14] [0,1] 60x+120x²-105y-56y²-42
[12+16x,15+16y]:	unknown -> [15] [1,1] 180x+120x²-105y-56y²+18
endexp[7]
---------------- level 4
expanding queue[8]^4,meter=[2,2]: 120x²-63y-56y²-18
[0+32x,9+32y]:	unknown -> [16] [0,0] 240x²-63y-112y²-9
[16+32x,9+32y]:	unknown -> [17] [1,0] 240x+240x²-63y-112y²+51
[0+32x,25+32y]:	failure constant=-137, vgcd=2 [0,1] 480x²-350y-224y²-137
[16+32x,25+32y]:	failure constant=-17, vgcd=2 [1,1] 480x+480x²-350y-224y²-17
endexp[8]
expanding queue[9]^4,meter=[2,2]: 120x+120x²-63y-56y²+12
[8+32x,9+32y]:	unknown -> [18] [0,0] 120x+240x²-63y-112y²+6
[24+32x,9+32y]:	unknown -> [19] [1,0] 360x+240x²-63y-112y²+126
[8+32x,25+32y]:	failure constant=-107, vgcd=2 [0,1] 240x+480x²-350y-224y²-107
[24+32x,25+32y]:	failure constant=133, vgcd=2 [1,1] 720x+480x²-350y-224y²+133
endexp[9]
expanding queue[10]^5,meter=[2,2]: 60x+120x²-7y-56y²+7
[4+32x,1+32y]:	failure constant=7, vgcd=2 [0,0] 120x+480x²-14y-224y²+7
[20+32x,1+32y]:	failure constant=187, vgcd=2 [1,0] 600x+480x²-14y-224y²+187
[4+32x,17+32y]:	unknown -> [20] [0,1] 60x+240x²-119y-112y²-28
[20+32x,17+32y]:	unknown -> [21] [1,1] 300x+240x²-119y-112y²+62
endexp[10]
expanding queue[11]^5,meter=[2,2]: 180x+120x²-7y-56y²+67
[12+32x,1+32y]:	failure constant=67, vgcd=2 [0,0] 360x+480x²-14y-224y²+67
[28+32x,1+32y]:	failure constant=367, vgcd=2 [1,0] 840x+480x²-14y-224y²+367
[12+32x,17+32y]:	unknown -> [22] [0,1] 180x+240x²-119y-112y²+2
[28+32x,17+32y]:	unknown -> [23] [1,1] 420x+240x²-119y-112y²+152
endexp[11]
expanding queue[12]^6,meter=[2,2]: 120x²-49y-56y²-11
[0+32x,7+32y]:	failure constant=-11, vgcd=2 [0,0] 480x²-98y-224y²-11
[16+32x,7+32y]:	failure constant=109, vgcd=2 [1,0] 480x+480x²-98y-224y²+109
[0+32x,23+32y]:	unknown -> [24] [0,1] 240x²-161y-112y²-58
[16+32x,23+32y]:	unknown -> [25] [1,1] 240x+240x²-161y-112y²+2
endexp[12]
expanding queue[13]^6,meter=[2,2]: 120x+120x²-49y-56y²+19
[8+32x,7+32y]:	failure constant=19, vgcd=2 [0,0] 240x+480x²-98y-224y²+19
[24+32x,7+32y]:	failure constant=259, vgcd=2 [1,0] 720x+480x²-98y-224y²+259
[8+32x,23+32y]:	unknown -> [26] [0,1] 120x+240x²-161y-112y²-43
[24+32x,23+32y]:	unknown -> [27] [1,1] 360x+240x²-161y-112y²+77
endexp[13]
expanding queue[14]^7,meter=[2,2]: 60x+120x²-105y-56y²-42
[4+32x,15+32y]:	unknown -> [28] [0,0] 60x+240x²-105y-112y²-21
[20+32x,15+32y]:	unknown -> [29] [1,0] 300x+240x²-105y-112y²+69
[4+32x,31+32y]:	failure constant=-203, vgcd=2 [0,1] 120x+480x²-434y-224y²-203
[20+32x,31+32y]:	failure constant=-23, vgcd=2 [1,1] 600x+480x²-434y-224y²-23
endexp[14]
expanding queue[15]^7,meter=[2,2]: 180x+120x²-105y-56y²+18
[12+32x,15+32y]:	unknown -> [30] [0,0] 180x+240x²-105y-112y²+9
[28+32x,15+32y]:	unknown -> [31] [1,0] 420x+240x²-105y-112y²+159
[12+32x,31+32y]:	failure constant=-143, vgcd=2 [0,1] 360x+480x²-434y-224y²-143
[28+32x,31+32y]:	failure constant=157, vgcd=2 [1,1] 840x+480x²-434y-224y²+157
endexp[15]
---------------- level 5
Maximum level 5 [32] mod 2: 15x²-7y²-9
