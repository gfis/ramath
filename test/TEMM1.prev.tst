Expanding for base=2, level=6, reasons+features=base,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] x²-y³+1
-> solution [0,1],trivial(1)
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: x²-y³+1
[0+2x,1+2y]:	unknown -> [1] [0,1] 2x²-3y-6y²-4y³
-> solution [0,1],trivial(1)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: 2x²-3y-6y²-4y³
[0+4x,1+4y]:	unknown -> [2] [0,0] 4x²-3y-12y²-16y³
-> solution [0,1],trivial(1)
[2+4x,1+4y]:	unknown -> [3] [1,0] 4x+4x²-3y-12y²-16y³+1
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[2,2]: 4x²-3y-12y²-16y³
[0+8x,1+8y]:	unknown -> [4] [0,0] 8x²-3y-24y²-64y³
-> solution [0,1],trivial(1)
[4+8x,1+8y]:	unknown -> [5] [1,0] 8x+8x²-3y-24y²-64y³+2
endexp[2]
expanding queue[3]^1,meter=[2,2]: 4x+4x²-3y-12y²-16y³+1
[2+8x,5+8y]:	unknown -> [6] [0,1] 4x+8x²-75y-120y²-64y³-15
[6+8x,5+8y]:	unknown -> [7] [1,1] 12x+8x²-75y-120y²-64y³-11
endexp[3]
---------------- level 3
expanding queue[4]^2,meter=[2,2]: 8x²-3y-24y²-64y³
[0+16x,1+16y]:	unknown -> [8] [0,0] 16x²-3y-48y²-256y³
-> solution [0,1],trivial(1)
[8+16x,1+16y]:	unknown -> [9] [1,0] 16x+16x²-3y-48y²-256y³+4
endexp[4]
expanding queue[5]^2,meter=[2,2]: 8x+8x²-3y-24y²-64y³+2
[4+16x,1+16y]:	unknown -> [10] [0,0] 8x+16x²-3y-48y²-256y³+1
[12+16x,1+16y]:	unknown -> [11] [1,0] 24x+16x²-3y-48y²-256y³+9
endexp[5]
expanding queue[6]^3,meter=[2,2]: 4x+8x²-75y-120y²-64y³-15
[2+16x,13+16y]:	unknown -> [12] [0,1] 4x+16x²-507y-624y²-256y³-137
[10+16x,13+16y]:	unknown -> [13] [1,1] 20x+16x²-507y-624y²-256y³-131
endexp[6]
expanding queue[7]^3,meter=[2,2]: 12x+8x²-75y-120y²-64y³-11
[6+16x,13+16y]:	unknown -> [14] [0,1] 12x+16x²-507y-624y²-256y³-135
[14+16x,13+16y]:	unknown -> [15] [1,1] 28x+16x²-507y-624y²-256y³-125
endexp[7]
---------------- level 4
expanding queue[8]^4,meter=[2,2]: 16x²-3y-48y²-256y³
[0+32x,1+32y]:	unknown -> [16] [0,0] 32x²-3y-96y²-1024y³
-> solution [0,1],trivial(1)
[16+32x,1+32y]:	unknown -> [17] [1,0] 32x+32x²-3y-96y²-1024y³+8
endexp[8]
expanding queue[9]^4,meter=[2,2]: 16x+16x²-3y-48y²-256y³+4
[8+32x,1+32y]:	unknown -> [18] [0,0] 16x+32x²-3y-96y²-1024y³+2
[24+32x,1+32y]:	unknown -> [19] [1,0] 48x+32x²-3y-96y²-1024y³+18
endexp[9]
expanding queue[10]^5,meter=[2,2]: 8x+16x²-3y-48y²-256y³+1
[4+32x,17+32y]:	unknown -> [20] [0,1] 8x+32x²-867y-1632y²-1024y³-153
[20+32x,17+32y]:	unknown -> [21] [1,1] 40x+32x²-867y-1632y²-1024y³-141
endexp[10]
expanding queue[11]^5,meter=[2,2]: 24x+16x²-3y-48y²-256y³+9
[12+32x,17+32y]:	unknown -> [22] [0,1] 24x+32x²-867y-1632y²-1024y³-149
[28+32x,17+32y]:	unknown -> [23] [1,1] 56x+32x²-867y-1632y²-1024y³-129
endexp[11]
expanding queue[12]^6,meter=[2,2]: 4x+16x²-507y-624y²-256y³-137
[2+32x,29+32y]:	unknown -> [24] [0,1] 4x+32x²-2523y-2784y²-1024y³-762
[18+32x,29+32y]:	unknown -> [25] [1,1] 36x+32x²-2523y-2784y²-1024y³-752
endexp[12]
expanding queue[13]^6,meter=[2,2]: 20x+16x²-507y-624y²-256y³-131
[10+32x,29+32y]:	unknown -> [26] [0,1] 20x+32x²-2523y-2784y²-1024y³-759
[26+32x,29+32y]:	unknown -> [27] [1,1] 52x+32x²-2523y-2784y²-1024y³-741
endexp[13]
expanding queue[14]^7,meter=[2,2]: 12x+16x²-507y-624y²-256y³-135
[6+32x,29+32y]:	unknown -> [28] [0,1] 12x+32x²-2523y-2784y²-1024y³-761
[22+32x,29+32y]:	unknown -> [29] [1,1] 44x+32x²-2523y-2784y²-1024y³-747
endexp[14]
expanding queue[15]^7,meter=[2,2]: 28x+16x²-507y-624y²-256y³-125
[14+32x,29+32y]:	unknown -> [30] [0,1] 28x+32x²-2523y-2784y²-1024y³-756
[30+32x,29+32y]:	unknown -> [31] [1,1] 60x+32x²-2523y-2784y²-1024y³-734
endexp[15]
---------------- level 5
expanding queue[16]^8,meter=[2,2]: 32x²-3y-96y²-1024y³
[0+64x,1+64y]:	unknown -> [32] [0,0] 64x²-3y-192y²-4096y³
-> solution [0,1],trivial(1)
[32+64x,1+64y]:	unknown -> [33] [1,0] 64x+64x²-3y-192y²-4096y³+16
endexp[16]
expanding queue[17]^8,meter=[2,2]: 32x+32x²-3y-96y²-1024y³+8
[16+64x,1+64y]:	unknown -> [34] [0,0] 32x+64x²-3y-192y²-4096y³+4
[48+64x,1+64y]:	unknown -> [35] [1,0] 96x+64x²-3y-192y²-4096y³+36
endexp[17]
expanding queue[18]^9,meter=[2,2]: 16x+32x²-3y-96y²-1024y³+2
[8+64x,1+64y]:	unknown -> [36] [0,0] 16x+64x²-3y-192y²-4096y³+1
[40+64x,1+64y]:	unknown -> [37] [1,0] 80x+64x²-3y-192y²-4096y³+25
endexp[18]
expanding queue[19]^9,meter=[2,2]: 48x+32x²-3y-96y²-1024y³+18
[24+64x,1+64y]:	unknown -> [38] [0,0] 48x+64x²-3y-192y²-4096y³+9
[56+64x,1+64y]:	unknown -> [39] [1,0] 112x+64x²-3y-192y²-4096y³+49
endexp[19]
expanding queue[20]^10,meter=[2,2]: 8x+32x²-867y-1632y²-1024y³-153
[4+64x,49+64y]:	unknown -> [40] [0,1] 8x+64x²-7203y-9408y²-4096y³-1838
[36+64x,49+64y]:	unknown -> [41] [1,1] 72x+64x²-7203y-9408y²-4096y³-1818
endexp[20]
expanding queue[21]^10,meter=[2,2]: 40x+32x²-867y-1632y²-1024y³-141
[20+64x,49+64y]:	unknown -> [42] [0,1] 40x+64x²-7203y-9408y²-4096y³-1832
[52+64x,49+64y]:	unknown -> [43] [1,1] 104x+64x²-7203y-9408y²-4096y³-1796
endexp[21]
expanding queue[22]^11,meter=[2,2]: 24x+32x²-867y-1632y²-1024y³-149
[12+64x,49+64y]:	unknown -> [44] [0,1] 24x+64x²-7203y-9408y²-4096y³-1836
[44+64x,49+64y]:	unknown -> [45] [1,1] 88x+64x²-7203y-9408y²-4096y³-1808
endexp[22]
expanding queue[23]^11,meter=[2,2]: 56x+32x²-867y-1632y²-1024y³-129
[28+64x,49+64y]:	unknown -> [46] [0,1] 56x+64x²-7203y-9408y²-4096y³-1826
[60+64x,49+64y]:	unknown -> [47] [1,1] 120x+64x²-7203y-9408y²-4096y³-1782
endexp[23]
expanding queue[24]^12,meter=[2,2]: 4x+32x²-2523y-2784y²-1024y³-762
[2+64x,29+64y]:	unknown -> [48] [0,0] 4x+64x²-2523y-5568y²-4096y³-381
[34+64x,29+64y]:	unknown -> [49] [1,0] 68x+64x²-2523y-5568y²-4096y³-363
endexp[24]
expanding queue[25]^12,meter=[2,2]: 36x+32x²-2523y-2784y²-1024y³-752
[18+64x,29+64y]:	unknown -> [50] [0,0] 36x+64x²-2523y-5568y²-4096y³-376
[50+64x,29+64y]:	unknown -> [51] [1,0] 100x+64x²-2523y-5568y²-4096y³-342
endexp[25]
expanding queue[26]^13,meter=[2,2]: 20x+32x²-2523y-2784y²-1024y³-759
[10+64x,61+64y]:	unknown -> [52] [0,1] 20x+64x²-11163y-11712y²-4096y³-3545
[42+64x,61+64y]:	unknown -> [53] [1,1] 84x+64x²-11163y-11712y²-4096y³-3519
endexp[26]
expanding queue[27]^13,meter=[2,2]: 52x+32x²-2523y-2784y²-1024y³-741
[26+64x,61+64y]:	unknown -> [54] [0,1] 52x+64x²-11163y-11712y²-4096y³-3536
[58+64x,61+64y]:	unknown -> [55] [1,1] 116x+64x²-11163y-11712y²-4096y³-3494
endexp[27]
expanding queue[28]^14,meter=[2,2]: 12x+32x²-2523y-2784y²-1024y³-761
[6+64x,61+64y]:	unknown -> [56] [0,1] 12x+64x²-11163y-11712y²-4096y³-3546
[38+64x,61+64y]:	unknown -> [57] [1,1] 76x+64x²-11163y-11712y²-4096y³-3524
endexp[28]
expanding queue[29]^14,meter=[2,2]: 44x+32x²-2523y-2784y²-1024y³-747
[22+64x,61+64y]:	unknown -> [58] [0,1] 44x+64x²-11163y-11712y²-4096y³-3539
[54+64x,61+64y]:	unknown -> [59] [1,1] 108x+64x²-11163y-11712y²-4096y³-3501
endexp[29]
expanding queue[30]^15,meter=[2,2]: 28x+32x²-2523y-2784y²-1024y³-756
[14+64x,29+64y]:	unknown -> [60] [0,0] 28x+64x²-2523y-5568y²-4096y³-378
[46+64x,29+64y]:	unknown -> [61] [1,0] 92x+64x²-2523y-5568y²-4096y³-348
endexp[30]
expanding queue[31]^15,meter=[2,2]: 60x+32x²-2523y-2784y²-1024y³-734
[30+64x,29+64y]:	unknown -> [62] [0,0] 60x+64x²-2523y-5568y²-4096y³-367
[62+64x,29+64y]:	unknown -> [63] [1,0] 124x+64x²-2523y-5568y²-4096y³-321
endexp[31]
---------------- level 6
Maximum level 6 [64] mod 2: x²-y³+1
