Expanding for base=2, reasons+features=base,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] x²-y³-1
-> solution [1,0],trivial(1)
----------------
expanding queue[0]^-1,meter=[2,2]: x²-y³-1
[1+2x,0+2y]:	unknown -> [1] [1,0] x+x²-2y³
-> solution [1,0],trivial(1) [3,2],NONTRIVIAL
[0+2x,1+2y]:	unknown -> [2] [0,1] 2x²-3y-6y²-4y³-1
----------------
expanding queue[1]^0,meter=[2,2]: x+x²-2y³
[1+4x,0+4y]:	unknown -> [3] [0,0] x+2x²-8y³
-> solution [1,0],trivial(1)
[3+4x,0+4y]:	unknown -> [4] [1,0] 3x+2x²-8y³+1
[1+4x,2+4y]:	unknown -> [5] [0,1] x+2x²-6y-12y²-8y³-1
[3+4x,2+4y]:	unknown -> [6] [1,1] 3x+2x²-6y-12y²-8y³
-> solution [3,2],NONTRIVIAL
expanding queue[2]^0,meter=[2,2]: 2x²-3y-6y²-4y³-1
[0+4x,3+4y]:	unknown -> [7] [0,1] 4x²-27y-36y²-16y³-7
[2+4x,3+4y]:	unknown -> [8] [1,1] 4x+4x²-27y-36y²-16y³-6
----------------
expanding queue[3]^1,meter=[2,2]: x+2x²-8y³
[1+8x,0+8y]:	unknown -> [9] [0,0] x+4x²-32y³
-> solution [1,0],trivial(1)
[1+8x,4+8y]:	unknown -> [10] [0,1] x+4x²-24y-48y²-32y³-4
expanding queue[4]^1,meter=[2,2]: 3x+2x²-8y³+1
[7+8x,0+8y]:	unknown -> [11] [1,0] 7x+4x²-32y³+3
[7+8x,4+8y]:	unknown -> [12] [1,1] 7x+4x²-24y-48y²-32y³-1
expanding queue[5]^1,meter=[2,2]: x+2x²-6y-12y²-8y³-1
[5+8x,2+8y]:	unknown -> [13] [1,0] 5x+4x²-6y-24y²-32y³+1
[5+8x,6+8y]:	unknown -> [14] [1,1] 5x+4x²-54y-72y²-32y³-12
expanding queue[6]^1,meter=[2,2]: 3x+2x²-6y-12y²-8y³
[3+8x,2+8y]:	unknown -> [15] [0,0] 3x+4x²-6y-24y²-32y³
-> solution [3,2],NONTRIVIAL
[3+8x,6+8y]:	unknown -> [16] [0,1] 3x+4x²-54y-72y²-32y³-13
expanding queue[7]^2,meter=[2,2]: 4x²-27y-36y²-16y³-7
[0+8x,7+8y]:	unknown -> [17] [0,1] 8x²-147y-168y²-64y³-43
[4+8x,7+8y]:	unknown -> [18] [1,1] 8x+8x²-147y-168y²-64y³-41
expanding queue[8]^2,meter=[2,2]: 4x+4x²-27y-36y²-16y³-6
[2+8x,3+8y]:	unknown -> [19] [0,0] 4x+8x²-27y-72y²-64y³-3
[6+8x,3+8y]:	unknown -> [20] [1,0] 12x+8x²-27y-72y²-64y³+1
----------------
expanding queue[9]^3,meter=[2,2]: x+4x²-32y³
[1+16x,0+16y]:	unknown -> [21] [0,0] x+8x²-128y³
-> solution [1,0],trivial(1)
[1+16x,8+16y]:	unknown -> [22] [0,1] x+8x²-96y-192y²-128y³-16
expanding queue[10]^3,meter=[2,2]: x+4x²-24y-48y²-32y³-4
[1+16x,4+16y]:	unknown -> [23] [0,0] x+8x²-24y-96y²-128y³-2
[1+16x,12+16y]:	unknown -> [24] [0,1] x+8x²-216y-288y²-128y³-54
expanding queue[11]^4,meter=[2,2]: 7x+4x²-32y³+3
[15+16x,0+16y]:	unknown -> [25] [1,0] 15x+8x²-128y³+7
[15+16x,8+16y]:	unknown -> [26] [1,1] 15x+8x²-96y-192y²-128y³-9
expanding queue[12]^4,meter=[2,2]: 7x+4x²-24y-48y²-32y³-1
[15+16x,4+16y]:	unknown -> [27] [1,0] 15x+8x²-24y-96y²-128y³+5
[15+16x,12+16y]:	unknown -> [28] [1,1] 15x+8x²-216y-288y²-128y³-47
expanding queue[13]^5,meter=[2,2]: 5x+4x²-6y-24y²-32y³+1
[13+16x,2+16y]:	unknown -> [29] [1,0] 13x+8x²-6y-48y²-128y³+5
[13+16x,10+16y]:	unknown -> [30] [1,1] 13x+8x²-150y-240y²-128y³-26
expanding queue[14]^5,meter=[2,2]: 5x+4x²-54y-72y²-32y³-12
[5+16x,6+16y]:	unknown -> [31] [0,0] 5x+8x²-54y-144y²-128y³-6
[5+16x,14+16y]:	unknown -> [32] [0,1] 5x+8x²-294y-336y²-128y³-85
expanding queue[15]^6,meter=[2,2]: 3x+4x²-6y-24y²-32y³
[3+16x,2+16y]:	unknown -> [33] [0,0] 3x+8x²-6y-48y²-128y³
-> solution [3,2],NONTRIVIAL
[3+16x,10+16y]:	unknown -> [34] [0,1] 3x+8x²-150y-240y²-128y³-31
expanding queue[16]^6,meter=[2,2]: 3x+4x²-54y-72y²-32y³-13
[11+16x,6+16y]:	unknown -> [35] [1,0] 11x+8x²-54y-144y²-128y³-3
[11+16x,14+16y]:	unknown -> [36] [1,1] 11x+8x²-294y-336y²-128y³-82
expanding queue[17]^7,meter=[2,2]: 8x²-147y-168y²-64y³-43
[0+16x,15+16y]:	unknown -> [37] [0,1] 16x²-675y-720y²-256y³-211
[8+16x,15+16y]:	unknown -> [38] [1,1] 16x+16x²-675y-720y²-256y³-207
expanding queue[18]^7,meter=[2,2]: 8x+8x²-147y-168y²-64y³-41
[4+16x,15+16y]:	unknown -> [39] [0,1] 8x+16x²-675y-720y²-256y³-210
[12+16x,15+16y]:	unknown -> [40] [1,1] 24x+16x²-675y-720y²-256y³-202
expanding queue[19]^8,meter=[2,2]: 4x+8x²-27y-72y²-64y³-3
[2+16x,11+16y]:	unknown -> [41] [0,1] 4x+16x²-363y-528y²-256y³-83
[10+16x,11+16y]:	unknown -> [42] [1,1] 20x+16x²-363y-528y²-256y³-77
expanding queue[20]^8,meter=[2,2]: 12x+8x²-27y-72y²-64y³+1
[6+16x,11+16y]:	unknown -> [43] [0,1] 12x+16x²-363y-528y²-256y³-81
[14+16x,11+16y]:	unknown -> [44] [1,1] 28x+16x²-363y-528y²-256y³-71
----------------
expanding queue[21]^9,meter=[2,2]: x+8x²-128y³
[1+32x,0+32y]:	unknown -> [45] [0,0] x+16x²-512y³
-> solution [1,0],trivial(1)
[1+32x,16+32y]:	unknown -> [46] [0,1] x+16x²-384y-768y²-512y³-64
expanding queue[22]^9,meter=[2,2]: x+8x²-96y-192y²-128y³-16
[1+32x,8+32y]:	unknown -> [47] [0,0] x+16x²-96y-384y²-512y³-8
[1+32x,24+32y]:	unknown -> [48] [0,1] x+16x²-864y-1152y²-512y³-216
expanding queue[23]^10,meter=[2,2]: x+8x²-24y-96y²-128y³-2
[1+32x,4+32y]:	unknown -> [49] [0,0] x+16x²-24y-192y²-512y³-1
[1+32x,20+32y]:	unknown -> [50] [0,1] x+16x²-600y-960y²-512y³-125
expanding queue[24]^10,meter=[2,2]: x+8x²-216y-288y²-128y³-54
[1+32x,12+32y]:	unknown -> [51] [0,0] x+16x²-216y-576y²-512y³-27
[1+32x,28+32y]:	unknown -> [52] [0,1] x+16x²-1176y-1344y²-512y³-343
expanding queue[25]^11,meter=[2,2]: 15x+8x²-128y³+7
[31+32x,0+32y]:	unknown -> [53] [1,0] 31x+16x²-512y³+15
[31+32x,16+32y]:	unknown -> [54] [1,1] 31x+16x²-384y-768y²-512y³-49
expanding queue[26]^11,meter=[2,2]: 15x+8x²-96y-192y²-128y³-9
[31+32x,8+32y]:	unknown -> [55] [1,0] 31x+16x²-96y-384y²-512y³+7
[31+32x,24+32y]:	unknown -> [56] [1,1] 31x+16x²-864y-1152y²-512y³-201
expanding queue[27]^12,meter=[2,2]: 15x+8x²-24y-96y²-128y³+5
[31+32x,4+32y]:	unknown -> [57] [1,0] 31x+16x²-24y-192y²-512y³+14
[31+32x,20+32y]:	unknown -> [58] [1,1] 31x+16x²-600y-960y²-512y³-110
expanding queue[28]^12,meter=[2,2]: 15x+8x²-216y-288y²-128y³-47
[31+32x,12+32y]:	unknown -> [59] [1,0] 31x+16x²-216y-576y²-512y³-12
[31+32x,28+32y]:	unknown -> [60] [1,1] 31x+16x²-1176y-1344y²-512y³-328
expanding queue[29]^13,meter=[2,2]: 13x+8x²-6y-48y²-128y³+5
[29+32x,2+32y]:	unknown -> [61] [1,0] 29x+16x²-6y-96y²-512y³+13
[29+32x,18+32y]:	unknown -> [62] [1,1] 29x+16x²-486y-864y²-512y³-78
expanding queue[30]^13,meter=[2,2]: 13x+8x²-150y-240y²-128y³-26
[13+32x,10+32y]:	unknown -> [63] [0,0] 13x+16x²-150y-480y²-512y³-13
[13+32x,26+32y]:	unknown -> [64] [0,1] 13x+16x²-1014y-1248y²-512y³-272
expanding queue[31]^14,meter=[2,2]: 5x+8x²-54y-144y²-128y³-6
[5+32x,6+32y]:	unknown -> [65] [0,0] 5x+16x²-54y-288y²-512y³-3
[5+32x,22+32y]:	unknown -> [66] [0,1] 5x+16x²-726y-1056y²-512y³-166
expanding queue[32]^14,meter=[2,2]: 5x+8x²-294y-336y²-128y³-85
[21+32x,14+32y]:	unknown -> [67] [1,0] 21x+16x²-294y-672y²-512y³-36
[21+32x,30+32y]:	unknown -> [68] [1,1] 21x+16x²-1350y-1440y²-512y³-415
expanding queue[33]^15,meter=[2,2]: 3x+8x²-6y-48y²-128y³
[3+32x,2+32y]:	unknown -> [69] [0,0] 3x+16x²-6y-96y²-512y³
-> solution [3,2],NONTRIVIAL
[3+32x,18+32y]:	unknown -> [70] [0,1] 3x+16x²-486y-864y²-512y³-91
expanding queue[34]^15,meter=[2,2]: 3x+8x²-150y-240y²-128y³-31
[19+32x,10+32y]:	unknown -> [71] [1,0] 19x+16x²-150y-480y²-512y³-10
[19+32x,26+32y]:	unknown -> [72] [1,1] 19x+16x²-1014y-1248y²-512y³-269
expanding queue[35]^16,meter=[2,2]: 11x+8x²-54y-144y²-128y³-3
[27+32x,6+32y]:	unknown -> [73] [1,0] 27x+16x²-54y-288y²-512y³+8
[27+32x,22+32y]:	unknown -> [74] [1,1] 27x+16x²-726y-1056y²-512y³-155
expanding queue[36]^16,meter=[2,2]: 11x+8x²-294y-336y²-128y³-82
[11+32x,14+32y]:	unknown -> [75] [0,0] 11x+16x²-294y-672y²-512y³-41
[11+32x,30+32y]:	unknown -> [76] [0,1] 11x+16x²-1350y-1440y²-512y³-420
expanding queue[37]^17,meter=[2,2]: 16x²-675y-720y²-256y³-211
[0+32x,31+32y]:	unknown -> [77] [0,1] 32x²-2883y-2976y²-1024y³-931
[16+32x,31+32y]:	unknown -> [78] [1,1] 32x+32x²-2883y-2976y²-1024y³-923
expanding queue[38]^17,meter=[2,2]: 16x+16x²-675y-720y²-256y³-207
[8+32x,31+32y]:	unknown -> [79] [0,1] 16x+32x²-2883y-2976y²-1024y³-929
[24+32x,31+32y]:	unknown -> [80] [1,1] 48x+32x²-2883y-2976y²-1024y³-913
expanding queue[39]^18,meter=[2,2]: 8x+16x²-675y-720y²-256y³-210
[4+32x,15+32y]:	unknown -> [81] [0,0] 8x+32x²-675y-1440y²-1024y³-105
[20+32x,15+32y]:	unknown -> [82] [1,0] 40x+32x²-675y-1440y²-1024y³-93
expanding queue[40]^18,meter=[2,2]: 24x+16x²-675y-720y²-256y³-202
[12+32x,15+32y]:	unknown -> [83] [0,0] 24x+32x²-675y-1440y²-1024y³-101
[28+32x,15+32y]:	unknown -> [84] [1,0] 56x+32x²-675y-1440y²-1024y³-81
expanding queue[41]^19,meter=[2,2]: 4x+16x²-363y-528y²-256y³-83
[2+32x,27+32y]:	unknown -> [85] [0,1] 4x+32x²-2187y-2592y²-1024y³-615
[18+32x,27+32y]:	unknown -> [86] [1,1] 36x+32x²-2187y-2592y²-1024y³-605
expanding queue[42]^19,meter=[2,2]: 20x+16x²-363y-528y²-256y³-77
[10+32x,27+32y]:	unknown -> [87] [0,1] 20x+32x²-2187y-2592y²-1024y³-612
[26+32x,27+32y]:	unknown -> [88] [1,1] 52x+32x²-2187y-2592y²-1024y³-594
expanding queue[43]^20,meter=[2,2]: 12x+16x²-363y-528y²-256y³-81
[6+32x,27+32y]:	unknown -> [89] [0,1] 12x+32x²-2187y-2592y²-1024y³-614
[22+32x,27+32y]:	unknown -> [90] [1,1] 44x+32x²-2187y-2592y²-1024y³-600
expanding queue[44]^20,meter=[2,2]: 28x+16x²-363y-528y²-256y³-71
[14+32x,27+32y]:	unknown -> [91] [0,1] 28x+32x²-2187y-2592y²-1024y³-609
[30+32x,27+32y]:	unknown -> [92] [1,1] 60x+32x²-2187y-2592y²-1024y³-587
Maximum level 4 [93] mod 2: x²-y³-1
