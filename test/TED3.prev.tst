Expanding for base=2, level=8, reasons+features=base,same,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 2x²-4y³
-> solution [0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: 2x²-4y³
[0+2x,0+2y]:	unknown -> [1] [0,0] x²-4y³
-> solution [0,0],trivial(3)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: x²-4y³
[0+4x,0+4y]:	unknown -> [2] [0,0] x²-8y³
-> solution [0,0],trivial(3)
[0+4x,2+4y]:	unknown -> [3] [0,1] x²-6y-12y²-8y³-1
-> solution [4,2],NONTRIVIAL
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[2,2]: x²-8y³
[0+8x,0+8y]:	same x²-16y³ map {y=>y/2} -> [0] 2x²-4y³
-> solution [0,0],trivial(3)
[0+8x,4+8y]:	unknown -> [4] [0,1] x²-12y-24y²-16y³-2
endexp[2]
expanding queue[3]^1,meter=[2,2]: x²-6y-12y²-8y³-1
[4+8x,2+8y]:	unknown -> [5] [1,0] x+x²-3y-12y²-16y³
-> solution [4,2],NONTRIVIAL
endexp[3]
---------------- level 3
expanding queue[4]^2,meter=[2,2]: x²-12y-24y²-16y³-2
endexp[4]
expanding queue[5]^3,meter=[2,2]: x+x²-3y-12y²-16y³
[4+16x,2+16y]:	unknown -> [6] [0,0] x+2x²-3y-24y²-64y³
-> solution [4,2],NONTRIVIAL
[12+16x,2+16y]:	unknown -> [7] [1,0] 3x+2x²-3y-24y²-64y³+1
endexp[5]
---------------- level 4
expanding queue[6]^5,meter=[2,2]: x+2x²-3y-24y²-64y³
[4+32x,2+32y]:	unknown -> [8] [0,0] x+4x²-3y-48y²-256y³
-> solution [4,2],NONTRIVIAL
[20+32x,18+32y]:	unknown -> [9] [1,1] 5x+4x²-243y-432y²-256y³-44
endexp[6]
expanding queue[7]^5,meter=[2,2]: 3x+2x²-3y-24y²-64y³+1
[28+32x,2+32y]:	unknown -> [10] [1,0] 7x+4x²-3y-48y²-256y³+3
[12+32x,18+32y]:	unknown -> [11] [0,1] 3x+4x²-243y-432y²-256y³-45
endexp[7]
---------------- level 5
expanding queue[8]^6,meter=[2,2]: x+4x²-3y-48y²-256y³
[4+64x,2+64y]:	unknown -> [12] [0,0] x+8x²-3y-96y²-1024y³
-> solution [4,2],NONTRIVIAL
[36+64x,34+64y]:	unknown -> [13] [1,1] 9x+8x²-867y-1632y²-1024y³-151
endexp[8]
expanding queue[9]^6,meter=[2,2]: 5x+4x²-243y-432y²-256y³-44
[20+64x,18+64y]:	unknown -> [14] [0,0] 5x+8x²-243y-864y²-1024y³-22
[52+64x,50+64y]:	unknown -> [15] [1,1] 13x+8x²-1875y-2400y²-1024y³-483
endexp[9]
expanding queue[10]^7,meter=[2,2]: 7x+4x²-3y-48y²-256y³+3
[60+64x,2+64y]:	unknown -> [16] [1,0] 15x+8x²-3y-96y²-1024y³+7
[28+64x,34+64y]:	unknown -> [17] [0,1] 7x+8x²-867y-1632y²-1024y³-152
endexp[10]
expanding queue[11]^7,meter=[2,2]: 3x+4x²-243y-432y²-256y³-45
[44+64x,18+64y]:	unknown -> [18] [1,0] 11x+8x²-243y-864y²-1024y³-19
-> solution [108,18],NONTRIVIAL
[12+64x,50+64y]:	unknown -> [19] [0,1] 3x+8x²-1875y-2400y²-1024y³-488
endexp[11]
---------------- level 6
expanding queue[12]^8,meter=[2,2]: x+8x²-3y-96y²-1024y³
[4+128x,2+128y]:	unknown -> [20] [0,0] x+16x²-3y-192y²-4096y³
-> solution [4,2],NONTRIVIAL
[68+128x,66+128y]:	unknown -> [21] [1,1] 17x+16x²-3267y-6336y²-4096y³-557
endexp[12]
expanding queue[13]^8,meter=[2,2]: 9x+8x²-867y-1632y²-1024y³-151
[100+128x,34+128y]:	unknown -> [22] [1,0] 25x+16x²-867y-3264y²-4096y³-67
[36+128x,98+128y]:	unknown -> [23] [0,1] 9x+16x²-7203y-9408y²-4096y³-1837
endexp[13]
expanding queue[14]^9,meter=[2,2]: 5x+8x²-243y-864y²-1024y³-22
[20+128x,18+128y]:	unknown -> [24] [0,0] 5x+16x²-243y-1728y²-4096y³-11
[84+128x,82+128y]:	unknown -> [25] [1,1] 21x+16x²-5043y-7872y²-4096y³-1070
endexp[14]
expanding queue[15]^9,meter=[2,2]: 13x+8x²-1875y-2400y²-1024y³-483
[116+128x,50+128y]:	unknown -> [26] [1,0] 29x+16x²-1875y-4800y²-4096y³-231
[52+128x,114+128y]:	unknown -> [27] [0,1] 13x+16x²-9747y-10944y²-4096y³-2891
endexp[15]
expanding queue[16]^10,meter=[2,2]: 15x+8x²-3y-96y²-1024y³+7
[124+128x,2+128y]:	unknown -> [28] [1,0] 31x+16x²-3y-192y²-4096y³+15
[60+128x,66+128y]:	unknown -> [29] [0,1] 15x+16x²-3267y-6336y²-4096y³-558
endexp[16]
expanding queue[17]^10,meter=[2,2]: 7x+8x²-867y-1632y²-1024y³-152
[28+128x,34+128y]:	unknown -> [30] [0,0] 7x+16x²-867y-3264y²-4096y³-76
[92+128x,98+128y]:	unknown -> [31] [1,1] 23x+16x²-7203y-9408y²-4096y³-1830
endexp[17]
expanding queue[18]^11,meter=[2,2]: 11x+8x²-243y-864y²-1024y³-19
[108+128x,18+128y]:	unknown -> [32] [1,0] 27x+16x²-243y-1728y²-4096y³
-> solution [108,18],NONTRIVIAL
[44+128x,82+128y]:	unknown -> [33] [0,1] 11x+16x²-5043y-7872y²-4096y³-1075
endexp[18]
expanding queue[19]^11,meter=[2,2]: 3x+8x²-1875y-2400y²-1024y³-488
[12+128x,50+128y]:	unknown -> [34] [0,0] 3x+16x²-1875y-4800y²-4096y³-244
[76+128x,114+128y]:	unknown -> [35] [1,1] 19x+16x²-9747y-10944y²-4096y³-2888
endexp[19]
---------------- level 7
expanding queue[20]^12,meter=[2,2]: x+16x²-3y-192y²-4096y³
[4+256x,2+256y]:	unknown -> [36] [0,0] x+32x²-3y-384y²-16384y³
-> solution [4,2],NONTRIVIAL
[132+256x,130+256y]:	unknown -> [37] [1,1] 33x+32x²-12675y-24960y²-16384y³-2137
endexp[20]
expanding queue[21]^12,meter=[2,2]: 17x+16x²-3267y-6336y²-4096y³-557
[196+256x,66+256y]:	unknown -> [38] [1,0] 49x+32x²-3267y-12672y²-16384y³-262
[68+256x,194+256y]:	unknown -> [39] [0,1] 17x+32x²-28227y-37248y²-16384y³-7128
endexp[21]
expanding queue[22]^13,meter=[2,2]: 25x+16x²-867y-3264y²-4096y³-67
[228+256x,34+256y]:	unknown -> [40] [1,0] 57x+32x²-867y-6528y²-16384y³-13
[100+256x,162+256y]:	unknown -> [41] [0,1] 25x+32x²-19683y-31104y²-16384y³-4147
endexp[22]
expanding queue[23]^13,meter=[2,2]: 9x+16x²-7203y-9408y²-4096y³-1837
[164+256x,98+256y]:	unknown -> [42] [1,0] 41x+32x²-7203y-18816y²-16384y³-906
[36+256x,226+256y]:	unknown -> [43] [0,1] 9x+32x²-38307y-43392y²-16384y³-11272
endexp[23]
expanding queue[24]^14,meter=[2,2]: 5x+16x²-243y-1728y²-4096y³-11
[148+256x,18+256y]:	unknown -> [44] [1,0] 37x+32x²-243y-3456y²-16384y³+5
[20+256x,146+256y]:	unknown -> [45] [0,1] 5x+32x²-15987y-28032y²-16384y³-3039
endexp[24]
expanding queue[25]^14,meter=[2,2]: 21x+16x²-5043y-7872y²-4096y³-1070
[84+256x,82+256y]:	unknown -> [46] [0,0] 21x+32x²-5043y-15744y²-16384y³-535
[212+256x,210+256y]:	unknown -> [47] [1,1] 53x+32x²-33075y-40320y²-16384y³-9022
endexp[25]
expanding queue[26]^15,meter=[2,2]: 29x+16x²-1875y-4800y²-4096y³-231
[244+256x,50+256y]:	unknown -> [48] [1,0] 61x+32x²-1875y-9600y²-16384y³-93
-> solution [500,50],NONTRIVIAL
[116+256x,178+256y]:	unknown -> [49] [0,1] 29x+32x²-23763y-34176y²-16384y³-5501
endexp[26]
expanding queue[27]^15,meter=[2,2]: 13x+16x²-9747y-10944y²-4096y³-2891
[180+256x,114+256y]:	unknown -> [50] [1,0] 45x+32x²-9747y-21888y²-16384y³-1431
[52+256x,242+256y]:	unknown -> [51] [0,1] 13x+32x²-43923y-46464y²-16384y³-13839
endexp[27]
expanding queue[28]^16,meter=[2,2]: 31x+16x²-3y-192y²-4096y³+15
[252+256x,2+256y]:	unknown -> [52] [1,0] 63x+32x²-3y-384y²-16384y³+31
[124+256x,130+256y]:	unknown -> [53] [0,1] 31x+32x²-12675y-24960y²-16384y³-2138
endexp[28]
expanding queue[29]^16,meter=[2,2]: 15x+16x²-3267y-6336y²-4096y³-558
[60+256x,66+256y]:	unknown -> [54] [0,0] 15x+32x²-3267y-12672y²-16384y³-279
[188+256x,194+256y]:	unknown -> [55] [1,1] 47x+32x²-28227y-37248y²-16384y³-7113
endexp[29]
expanding queue[30]^17,meter=[2,2]: 7x+16x²-867y-3264y²-4096y³-76
[28+256x,34+256y]:	unknown -> [56] [0,0] 7x+32x²-867y-6528y²-16384y³-38
[156+256x,162+256y]:	unknown -> [57] [1,1] 39x+32x²-19683y-31104y²-16384y³-4140
endexp[30]
expanding queue[31]^17,meter=[2,2]: 23x+16x²-7203y-9408y²-4096y³-1830
[92+256x,98+256y]:	unknown -> [58] [0,0] 23x+32x²-7203y-18816y²-16384y³-915
[220+256x,226+256y]:	unknown -> [59] [1,1] 55x+32x²-38307y-43392y²-16384y³-11249
endexp[31]
expanding queue[32]^18,meter=[2,2]: 27x+16x²-243y-1728y²-4096y³
[108+256x,18+256y]:	unknown -> [60] [0,0] 27x+32x²-243y-3456y²-16384y³
-> solution [108,18],NONTRIVIAL
[236+256x,146+256y]:	unknown -> [61] [1,1] 59x+32x²-15987y-28032y²-16384y³-3012
endexp[32]
expanding queue[33]^18,meter=[2,2]: 11x+16x²-5043y-7872y²-4096y³-1075
[172+256x,82+256y]:	unknown -> [62] [1,0] 43x+32x²-5043y-15744y²-16384y³-524
[44+256x,210+256y]:	unknown -> [63] [0,1] 11x+32x²-33075y-40320y²-16384y³-9043
endexp[33]
expanding queue[34]^19,meter=[2,2]: 3x+16x²-1875y-4800y²-4096y³-244
[12+256x,50+256y]:	unknown -> [64] [0,0] 3x+32x²-1875y-9600y²-16384y³-122
[140+256x,178+256y]:	unknown -> [65] [1,1] 35x+32x²-23763y-34176y²-16384y³-5498
endexp[34]
expanding queue[35]^19,meter=[2,2]: 19x+16x²-9747y-10944y²-4096y³-2888
[76+256x,114+256y]:	unknown -> [66] [0,0] 19x+32x²-9747y-21888y²-16384y³-1444
[204+256x,242+256y]:	unknown -> [67] [1,1] 51x+32x²-43923y-46464y²-16384y³-13820
endexp[35]
---------------- level 8
Maximum level 8 [68] mod 2: 2x²-4y³
