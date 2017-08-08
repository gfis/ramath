TranspositionSet={[1,0,2]}
Expanding for base=2, level=3, reasons+features=base,transpose,same,similiar,evenexp invall
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-4z-1
-> solution [1,0,0],trivial(3) [0,1,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-4z-1
[1+2x,0+2y,0+2z]:	unknown -> [1] [1,0,0] 4x+4x²+4y²-8z
-> solution [1,0,0],trivial(3) [3,0,2],trivial(1)
[0+2x,1+2y,0+2z]:	transposed [1] by [1,0,2]
[1+2x,0+2y,1+2z]:	unknown -> [2] [1,0,1] 4x+4x²+4y²-8z-4
-> solution [1,2,1],trivial(2) [3,2,3],trivial(2)
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]: 4x+4x²+4y²-8z
[1+4x,0+4y,0+4z]:	unknown -> [3] [0,0,0] 8x+16x²+16y²-16z
-> solution [1,0,0],trivial(3) [1,4,4],trivial(2)
[3+4x,0+4y,0+4z]:	negative-1 [3] by {x=>-x-1}
[1+4x,0+4y,2+4z]:	unknown -> [4] [0,0,1] 8x+16x²+16y²-16z-8
-> solution [5,0,6],trivial(1)
[3+4x,0+4y,2+4z]:	negative-1 [4] by {x=>-x-1}
-> solution [3,0,2],trivial(1) [3,4,6],NONTRIVIAL
expanding queue[2]^0,meter=[2,2,2]: 4x+4x²+4y²-8z-4
[1+4x,2+4y,1+4z]:	unknown -> [5] [0,1,0] 8x+16x²+16y+16y²-16z
-> solution [1,2,1],trivial(2)
[3+4x,2+4y,1+4z]:	negative-1 [5] by {x=>-x-1}
[1+4x,2+4y,3+4z]:	unknown -> [6] [0,1,1] 8x+16x²+16y+16y²-16z-8
-> solution [5,2,7],NONTRIVIAL
[3+4x,2+4y,3+4z]:	negative-1 [6] by {x=>-x-1}
-> solution [3,2,3],trivial(2)
----------------
expanding queue[3]^1,meter=[2,2,2]: 8x+16x²+16y²-16z
[1+8x,0+8y,0+8z]:	unknown -> [7] [0,0,0] 16x+64x²+64y²-32z
-> solution [1,0,0],trivial(3)
[1+8x,4+8y,0+8z]:	unknown -> [8] [0,1,0] 16x+64x²+64y+64y²-32z+16
[1+8x,0+8y,4+8z]:	unknown -> [9] [0,0,1] 16x+64x²+64y²-32z-16
[1+8x,4+8y,4+8z]:	unknown -> [10] [0,1,1] 16x+64x²+64y+64y²-32z
-> solution [1,4,4],trivial(2)
expanding queue[4]^1,meter=[2,2,2]: 8x+16x²+16y²-16z-8
[5+8x,0+8y,2+8z]:	unknown -> [11] [1,0,0] 80x+64x²+64y²-32z+16
[5+8x,4+8y,2+8z]:	unknown -> [12] [1,1,0] 80x+64x²+64y+64y²-32z+32
-> solution [5,4,10],NONTRIVIAL
[5+8x,0+8y,6+8z]:	unknown -> [13] [1,0,1] 80x+64x²+64y²-32z
-> solution [5,0,6],trivial(1)
[5+8x,4+8y,6+8z]:	unknown -> [14] [1,1,1] 80x+64x²+64y+64y²-32z+16
expanding queue[5]^2,meter=[2,2,2]: 8x+16x²+16y+16y²-16z
[1+8x,2+8y,1+8z]:	unknown -> [15] [0,0,0] 16x+64x²+32y+64y²-32z
-> solution [1,2,1],trivial(2)
[1+8x,6+8y,1+8z]:	negative-1 [15] by {y=>-y-1}
-> solution [1,6,9],NONTRIVIAL
[1+8x,2+8y,5+8z]:	unknown -> [16] [0,0,1] 16x+64x²+32y+64y²-32z-16
[1+8x,6+8y,5+8z]:	negative-1 [16] by {y=>-y-1}
expanding queue[6]^2,meter=[2,2,2]: 8x+16x²+16y+16y²-16z-8
[5+8x,2+8y,3+8z]:	unknown -> [17] [1,0,0] 80x+64x²+32y+64y²-32z+16
[5+8x,6+8y,3+8z]:	negative-1 [17] by {y=>-y-1}
[5+8x,2+8y,7+8z]:	unknown -> [18] [1,0,1] 80x+64x²+32y+64y²-32z
-> solution [5,2,7],NONTRIVIAL
[5+8x,6+8y,7+8z]:	negative-1 [18] by {y=>-y-1}
-> solution [5,6,15],NONTRIVIAL
----------------
expanding queue[7]^3,meter=[2,2,2]: 16x+64x²+64y²-32z
[1+16x,0+16y,0+16z]:	same 32x+256x²+256y²-64z map {x=>x/8,y=>y/8,z=>z/8} -> [1] 4x+4x²+4y²-8z
-> solution [1,0,0],trivial(3)
[1+16x,8+16y,0+16z]:	unknown -> [19] [0,1,0] 32x+256x²+256y+256y²-64z+64
-> solution [1,8,16],NONTRIVIAL
[1+16x,0+16y,8+16z]:	unknown -> [20] [0,0,1] 32x+256x²+256y²-64z-32
[1+16x,8+16y,8+16z]:	unknown -> [21] [0,1,1] 32x+256x²+256y+256y²-64z+32
expanding queue[8]^3,meter=[2,2,2]: 16x+64x²+64y+64y²-32z+16
[9+16x,4+16y,0+16z]:	unknown -> [22] [1,0,0] 288x+256x²+128y+256y²-64z+96
[9+16x,12+16y,0+16z]:	negative-1 [22] by {y=>-y-1}
[9+16x,4+16y,8+16z]:	unknown -> [23] [1,0,1] 288x+256x²+128y+256y²-64z+64
-> solution [9,4,24],NONTRIVIAL
[9+16x,12+16y,8+16z]:	negative-1 [23] by {y=>-y-1}
expanding queue[9]^3,meter=[2,2,2]: 16x+64x²+64y²-32z-16
[9+16x,0+16y,4+16z]:	unknown -> [24] [1,0,0] 288x+256x²+256y²-64z+64
-> solution [9,0,20],trivial(1)
[9+16x,8+16y,4+16z]:	unknown -> [25] [1,1,0] 288x+256x²+256y+256y²-64z+128
[9+16x,0+16y,12+16z]:	unknown -> [26] [1,0,1] 288x+256x²+256y²-64z+32
[9+16x,8+16y,12+16z]:	unknown -> [27] [1,1,1] 288x+256x²+256y+256y²-64z+96
expanding queue[10]^3,meter=[2,2,2]: 16x+64x²+64y+64y²-32z
[1+16x,4+16y,4+16z]:	unknown -> [28] [0,0,0] 32x+256x²+128y+256y²-64z
-> solution [1,4,4],trivial(2)
[1+16x,12+16y,4+16z]:	negative-1 [28] by {y=>-y-1}
[1+16x,4+16y,12+16z]:	unknown -> [29] [0,0,1] 32x+256x²+128y+256y²-64z-32
[1+16x,12+16y,12+16z]:	negative-1 [29] by {y=>-y-1}
expanding queue[11]^4,meter=[2,2,2]: 80x+64x²+64y²-32z+16
[13+16x,0+16y,2+16z]:	unknown -> [30] [1,0,0] 416x+256x²+256y²-64z+160
[13+16x,8+16y,2+16z]:	unknown -> [31] [1,1,0] 416x+256x²+256y+256y²-64z+224
[13+16x,0+16y,10+16z]:	unknown -> [32] [1,0,1] 416x+256x²+256y²-64z+128
[13+16x,8+16y,10+16z]:	unknown -> [33] [1,1,1] 416x+256x²+256y+256y²-64z+192
expanding queue[12]^4,meter=[2,2,2]: 80x+64x²+64y+64y²-32z+32
[5+16x,4+16y,2+16z]:	unknown -> [34] [0,0,0] 160x+256x²+128y+256y²-64z+32
[5+16x,12+16y,2+16z]:	negative-1 [34] by {y=>-y-1}
[5+16x,4+16y,10+16z]:	unknown -> [35] [0,0,1] 160x+256x²+128y+256y²-64z
-> solution [5,4,10],NONTRIVIAL
[5+16x,12+16y,10+16z]:	negative-1 [35] by {y=>-y-1}
expanding queue[13]^4,meter=[2,2,2]: 80x+64x²+64y²-32z
[5+16x,0+16y,6+16z]:	unknown -> [36] [0,0,0] 160x+256x²+256y²-64z
-> solution [5,0,6],trivial(1)
[5+16x,8+16y,6+16z]:	unknown -> [37] [0,1,0] 160x+256x²+256y+256y²-64z+64
-> solution [5,8,22],NONTRIVIAL
[5+16x,0+16y,14+16z]:	unknown -> [38] [0,0,1] 160x+256x²+256y²-64z-32
[5+16x,8+16y,14+16z]:	unknown -> [39] [0,1,1] 160x+256x²+256y+256y²-64z+32
expanding queue[14]^4,meter=[2,2,2]: 80x+64x²+64y+64y²-32z+16
[13+16x,4+16y,6+16z]:	unknown -> [40] [1,0,0] 416x+256x²+128y+256y²-64z+160
[13+16x,12+16y,6+16z]:	negative-1 [40] by {y=>-y-1}
[13+16x,4+16y,14+16z]:	unknown -> [41] [1,0,1] 416x+256x²+128y+256y²-64z+128
[13+16x,12+16y,14+16z]:	negative-1 [41] by {y=>-y-1}
expanding queue[15]^5,meter=[2,2,2]: 16x+64x²+32y+64y²-32z
[1+16x,2+16y,1+16z]:	unknown -> [42] [0,0,0] 32x+256x²+64y+256y²-64z
-> solution [1,2,1],trivial(2)
[1+16x,10+16y,1+16z]:	unknown -> [43] [0,1,0] 32x+256x²+320y+256y²-64z+96
[1+16x,2+16y,9+16z]:	unknown -> [44] [0,0,1] 32x+256x²+64y+256y²-64z-32
[1+16x,10+16y,9+16z]:	unknown -> [45] [0,1,1] 32x+256x²+320y+256y²-64z+64
-> solution [1,10,25],NONTRIVIAL
expanding queue[16]^5,meter=[2,2,2]: 16x+64x²+32y+64y²-32z-16
[9+16x,2+16y,5+16z]:	unknown -> [46] [1,0,0] 288x+256x²+64y+256y²-64z+64
-> solution [9,2,21],NONTRIVIAL
[9+16x,10+16y,5+16z]:	unknown -> [47] [1,1,0] 288x+256x²+320y+256y²-64z+160
[9+16x,2+16y,13+16z]:	unknown -> [48] [1,0,1] 288x+256x²+64y+256y²-64z+32
[9+16x,10+16y,13+16z]:	unknown -> [49] [1,1,1] 288x+256x²+320y+256y²-64z+128
expanding queue[17]^6,meter=[2,2,2]: 80x+64x²+32y+64y²-32z+16
[13+16x,2+16y,3+16z]:	unknown -> [50] [1,0,0] 416x+256x²+64y+256y²-64z+160
[13+16x,10+16y,3+16z]:	unknown -> [51] [1,1,0] 416x+256x²+320y+256y²-64z+256
[13+16x,2+16y,11+16z]:	unknown -> [52] [1,0,1] 416x+256x²+64y+256y²-64z+128
[13+16x,10+16y,11+16z]:	unknown -> [53] [1,1,1] 416x+256x²+320y+256y²-64z+224
expanding queue[18]^6,meter=[2,2,2]: 80x+64x²+32y+64y²-32z
[5+16x,2+16y,7+16z]:	unknown -> [54] [0,0,0] 160x+256x²+64y+256y²-64z
-> solution [5,2,7],NONTRIVIAL
[5+16x,10+16y,7+16z]:	unknown -> [55] [0,1,0] 160x+256x²+320y+256y²-64z+96
[5+16x,2+16y,15+16z]:	unknown -> [56] [0,0,1] 160x+256x²+64y+256y²-64z-32
[5+16x,10+16y,15+16z]:	unknown -> [57] [0,1,1] 160x+256x²+320y+256y²-64z+64
-> solution [5,10,31],NONTRIVIAL
Maximum level 3 [58] mod 2: x²+y²-4z-1
