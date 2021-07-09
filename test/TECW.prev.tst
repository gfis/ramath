Expanding for base=2, level=5, reasons+features=base,same,similiar norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] -x+x²-y³+1
-> solution [0,1],trivial(1) [1,1],trivial(2)
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: -x+x²-y³+1
[0+2x,1+2y]:	unknown -> [1] [0,1] x-2x²+3y+6y²+4y³
-> solution [0,1],trivial(1)
[1+2x,1+2y]:	unknown -> [2] [1,1] x+2x²-3y-6y²-4y³
-> solution [1,1],trivial(2)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: x-2x²+3y+6y²+4y³
[0+4x,1+4y]:	unknown -> [3] [0,0] x-4x²+3y+12y²+16y³
-> solution [0,1],trivial(1)
[2+4x,3+4y]:	unknown -> [4] [1,1] 3x+4x²-27y-36y²-16y³-6
endexp[1]
expanding queue[2]^0,meter=[2,2]: x+2x²-3y-6y²-4y³
[1+4x,1+4y]:	unknown -> [5] [0,0] x+4x²-3y-12y²-16y³
-> solution [1,1],trivial(2)
[3+4x,3+4y]:	unknown -> [6] [1,1] 5x+4x²-27y-36y²-16y³-5
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2]: x-4x²+3y+12y²+16y³
[0+8x,1+8y]:	unknown -> [7] [0,0] x-8x²+3y+24y²+64y³
-> solution [0,1],trivial(1)
[4+8x,5+8y]:	unknown -> [8] [1,1] 7x+8x²-75y-120y²-64y³-14
endexp[3]
expanding queue[4]^1,meter=[2,2]: 3x+4x²-27y-36y²-16y³-6
[2+8x,3+8y]:	unknown -> [9] [0,0] 3x+8x²-27y-72y²-64y³-3
[6+8x,7+8y]:	unknown -> [10] [1,1] 11x+8x²-147y-168y²-64y³-39
endexp[4]
expanding queue[5]^2,meter=[2,2]: x+4x²-3y-12y²-16y³
[1+8x,1+8y]:	unknown -> [11] [0,0] x+8x²-3y-24y²-64y³
-> solution [1,1],trivial(2)
[5+8x,5+8y]:	unknown -> [12] [1,1] 9x+8x²-75y-120y²-64y³-13
endexp[5]
expanding queue[6]^2,meter=[2,2]: 5x+4x²-27y-36y²-16y³-5
[7+8x,3+8y]:	unknown -> [13] [1,0] 13x+8x²-27y-72y²-64y³+2
[3+8x,7+8y]:	unknown -> [14] [0,1] 5x+8x²-147y-168y²-64y³-42
endexp[6]
---------------- level 3
expanding queue[7]^3,meter=[2,2]: x-8x²+3y+24y²+64y³
[0+16x,1+16y]:	unknown -> [15] [0,0] x-16x²+3y+48y²+256y³
-> solution [0,1],trivial(1)
[8+16x,9+16y]:	unknown -> [16] [1,1] 15x+16x²-243y-432y²-256y³-42
endexp[7]
expanding queue[8]^3,meter=[2,2]: 7x+8x²-75y-120y²-64y³-14
[4+16x,5+16y]:	unknown -> [17] [0,0] 7x+16x²-75y-240y²-256y³-7
[12+16x,13+16y]:	unknown -> [18] [1,1] 23x+16x²-507y-624y²-256y³-129
endexp[8]
expanding queue[9]^4,meter=[2,2]: 3x+8x²-27y-72y²-64y³-3
[10+16x,3+16y]:	unknown -> [19] [1,0] 19x+16x²-27y-144y²-256y³+4
[2+16x,11+16y]:	unknown -> [20] [0,1] 3x+16x²-363y-528y²-256y³-83
endexp[9]
expanding queue[10]^4,meter=[2,2]: 11x+8x²-147y-168y²-64y³-39
[14+16x,7+16y]:	unknown -> [21] [1,0] 27x+16x²-147y-336y²-256y³-10
[6+16x,15+16y]:	unknown -> [22] [0,1] 11x+16x²-675y-720y²-256y³-209
endexp[10]
expanding queue[11]^5,meter=[2,2]: x+8x²-3y-24y²-64y³
[1+16x,1+16y]:	unknown -> [23] [0,0] x+16x²-3y-48y²-256y³
-> solution [1,1],trivial(2)
[9+16x,9+16y]:	unknown -> [24] [1,1] 17x+16x²-243y-432y²-256y³-41
endexp[11]
expanding queue[12]^5,meter=[2,2]: 9x+8x²-75y-120y²-64y³-13
[13+16x,5+16y]:	unknown -> [25] [1,0] 25x+16x²-75y-240y²-256y³+2
[5+16x,13+16y]:	unknown -> [26] [0,1] 9x+16x²-507y-624y²-256y³-136
endexp[12]
expanding queue[13]^6,meter=[2,2]: 13x+8x²-27y-72y²-64y³+2
[7+16x,3+16y]:	unknown -> [27] [0,0] 13x+16x²-27y-144y²-256y³+1
[15+16x,11+16y]:	unknown -> [28] [1,1] 29x+16x²-363y-528y²-256y³-70
endexp[13]
expanding queue[14]^6,meter=[2,2]: 5x+8x²-147y-168y²-64y³-42
[3+16x,7+16y]:	unknown -> [29] [0,0] 5x+16x²-147y-336y²-256y³-21
-> solution [19,7],NONTRIVIAL
[11+16x,15+16y]:	unknown -> [30] [1,1] 21x+16x²-675y-720y²-256y³-204
endexp[14]
---------------- level 4
expanding queue[15]^7,meter=[2,2]: x-16x²+3y+48y²+256y³
[0+32x,1+32y]:	unknown -> [31] [0,0] x-32x²+3y+96y²+1024y³
-> solution [0,1],trivial(1)
[16+32x,17+32y]:	unknown -> [32] [1,1] 31x+32x²-867y-1632y²-1024y³-146
endexp[15]
expanding queue[16]^7,meter=[2,2]: 15x+16x²-243y-432y²-256y³-42
[8+32x,9+32y]:	unknown -> [33] [0,0] 15x+32x²-243y-864y²-1024y³-21
[24+32x,25+32y]:	unknown -> [34] [1,1] 47x+32x²-1875y-2400y²-1024y³-471
endexp[16]
expanding queue[17]^8,meter=[2,2]: 7x+16x²-75y-240y²-256y³-7
[20+32x,5+32y]:	unknown -> [35] [1,0] 39x+32x²-75y-480y²-1024y³+8
[4+32x,21+32y]:	unknown -> [36] [0,1] 7x+32x²-1323y-2016y²-1024y³-289
endexp[17]
expanding queue[18]^8,meter=[2,2]: 23x+16x²-507y-624y²-256y³-129
[28+32x,13+32y]:	unknown -> [37] [1,0] 55x+32x²-507y-1248y²-1024y³-45
[12+32x,29+32y]:	unknown -> [38] [0,1] 23x+32x²-2523y-2784y²-1024y³-758
endexp[18]
expanding queue[19]^9,meter=[2,2]: 19x+16x²-27y-144y²-256y³+4
[10+32x,3+32y]:	unknown -> [39] [0,0] 19x+32x²-27y-288y²-1024y³+2
[26+32x,19+32y]:	unknown -> [40] [1,1] 51x+32x²-1083y-1824y²-1024y³-194
endexp[19]
expanding queue[20]^9,meter=[2,2]: 3x+16x²-363y-528y²-256y³-83
[18+32x,11+32y]:	unknown -> [41] [1,0] 35x+32x²-363y-1056y²-1024y³-32
[2+32x,27+32y]:	unknown -> [42] [0,1] 3x+32x²-2187y-2592y²-1024y³-615
endexp[20]
expanding queue[21]^10,meter=[2,2]: 27x+16x²-147y-336y²-256y³-10
[14+32x,7+32y]:	unknown -> [43] [0,0] 27x+32x²-147y-672y²-1024y³-5
[30+32x,23+32y]:	unknown -> [44] [1,1] 59x+32x²-1587y-2208y²-1024y³-353
endexp[21]
expanding queue[22]^10,meter=[2,2]: 11x+16x²-675y-720y²-256y³-209
[22+32x,15+32y]:	unknown -> [45] [1,0] 43x+32x²-675y-1440y²-1024y³-91
[6+32x,31+32y]:	unknown -> [46] [0,1] 11x+32x²-2883y-2976y²-1024y³-930
endexp[22]
expanding queue[23]^11,meter=[2,2]: x+16x²-3y-48y²-256y³
[1+32x,1+32y]:	unknown -> [47] [0,0] x+32x²-3y-96y²-1024y³
-> solution [1,1],trivial(2)
[17+32x,17+32y]:	unknown -> [48] [1,1] 33x+32x²-867y-1632y²-1024y³-145
endexp[23]
expanding queue[24]^11,meter=[2,2]: 17x+16x²-243y-432y²-256y³-41
[25+32x,9+32y]:	unknown -> [49] [1,0] 49x+32x²-243y-864y²-1024y³-4
[9+32x,25+32y]:	unknown -> [50] [0,1] 17x+32x²-1875y-2400y²-1024y³-486
endexp[24]
expanding queue[25]^12,meter=[2,2]: 25x+16x²-75y-240y²-256y³+2
[13+32x,5+32y]:	unknown -> [51] [0,0] 25x+32x²-75y-480y²-1024y³+1
[29+32x,21+32y]:	unknown -> [52] [1,1] 57x+32x²-1323y-2016y²-1024y³-264
endexp[25]
expanding queue[26]^12,meter=[2,2]: 9x+16x²-507y-624y²-256y³-136
[5+32x,13+32y]:	unknown -> [53] [0,0] 9x+32x²-507y-1248y²-1024y³-68
[21+32x,29+32y]:	unknown -> [54] [1,1] 41x+32x²-2523y-2784y²-1024y³-749
endexp[26]
expanding queue[27]^13,meter=[2,2]: 13x+16x²-27y-144y²-256y³+1
[23+32x,3+32y]:	unknown -> [55] [1,0] 45x+32x²-27y-288y²-1024y³+15
[7+32x,19+32y]:	unknown -> [56] [0,1] 13x+32x²-1083y-1824y²-1024y³-213
endexp[27]
expanding queue[28]^13,meter=[2,2]: 29x+16x²-363y-528y²-256y³-70
[15+32x,11+32y]:	unknown -> [57] [0,0] 29x+32x²-363y-1056y²-1024y³-35
[31+32x,27+32y]:	unknown -> [58] [1,1] 61x+32x²-2187y-2592y²-1024y³-586
endexp[28]
expanding queue[29]^14,meter=[2,2]: 5x+16x²-147y-336y²-256y³-21
[19+32x,7+32y]:	unknown -> [59] [1,0] 37x+32x²-147y-672y²-1024y³
-> solution [19,7],NONTRIVIAL
[3+32x,23+32y]:	unknown -> [60] [0,1] 5x+32x²-1587y-2208y²-1024y³-380
endexp[29]
expanding queue[30]^14,meter=[2,2]: 21x+16x²-675y-720y²-256y³-204
[11+32x,15+32y]:	unknown -> [61] [0,0] 21x+32x²-675y-1440y²-1024y³-102
[27+32x,31+32y]:	unknown -> [62] [1,1] 53x+32x²-2883y-2976y²-1024y³-909
endexp[30]
---------------- level 5
Maximum level 5 [63] mod 2: -x+x²-y³+1
