TranspositionSet={[1,0,2]}
ExponentGCDs=[2,2,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp invall
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] -1+x^2+y^2-4z
-> solution [1,0,0],trivial(3) [0,1,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: -1+x^2+y^2-4z
[1+2x,0+2y,0+2z]:	unknown -> [1] 4x+4x^2+4y^2-8z
-> solution [1,0,0],trivial(3) [3,0,2],trivial(1)
[0+2x,1+2y,0+2z]:	transposed [1] by [1,0,2]
[1+2x,0+2y,1+2z]:	unknown -> [2] -4+4x+4x^2+4y^2-8z
-> solution [1,2,1],trivial(2) [3,2,3],trivial(2)
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 4x+4x^2+4y^2-8z
[1+4x,0+4y,0+4z]:	unknown -> [3] 8x+16x^2+16y^2-16z
-> solution [1,0,0],trivial(3) [1,4,4],trivial(2)
[3+4x,0+4y,0+4z]:	negative-1 [3] by {x=>-x-1}
[1+4x,0+4y,2+4z]:	unknown -> [4] -8+8x+16x^2+16y^2-16z
-> solution [5,0,6],trivial(1)
[3+4x,0+4y,2+4z]:	negative-1 [4] by {x=>-x-1}
-> solution [3,0,2],trivial(1) [3,4,6],NONTRIVIAL
expanding queue[2]^0,meter=[2,2,2]*4: -4+4x+4x^2+4y^2-8z
[1+4x,2+4y,1+4z]:	unknown -> [5] 8x+16x^2+16y+16y^2-16z
-> solution [1,2,1],trivial(2)
[3+4x,2+4y,1+4z]:	negative-1 [5] by {x=>-x-1}
[1+4x,2+4y,3+4z]:	unknown -> [6] -8+8x+16x^2+16y+16y^2-16z
-> solution [5,2,7],NONTRIVIAL
[3+4x,2+4y,3+4z]:	negative-1 [6] by {x=>-x-1}
-> solution [3,2,3],trivial(2)
----------------
expanding queue[3]^1,meter=[2,2,2]*8: 8x+16x^2+16y^2-16z
[1+8x,0+8y,0+8z]:	unknown -> [7] 16x+64x^2+64y^2-32z
-> solution [1,0,0],trivial(3)
[1+8x,4+8y,0+8z]:	unknown -> [8] 16+16x+64x^2+64y+64y^2-32z
[1+8x,0+8y,4+8z]:	unknown -> [9] -16+16x+64x^2+64y^2-32z
[1+8x,4+8y,4+8z]:	unknown -> [10] 16x+64x^2+64y+64y^2-32z
-> solution [1,4,4],trivial(2)
expanding queue[4]^1,meter=[2,2,2]*8: -8+8x+16x^2+16y^2-16z
[5+8x,0+8y,2+8z]:	unknown -> [11] 16+80x+64x^2+64y^2-32z
[5+8x,4+8y,2+8z]:	unknown -> [12] 32+80x+64x^2+64y+64y^2-32z
-> solution [5,4,10],NONTRIVIAL
[5+8x,0+8y,6+8z]:	unknown -> [13] 80x+64x^2+64y^2-32z
-> solution [5,0,6],trivial(1)
[5+8x,4+8y,6+8z]:	unknown -> [14] 16+80x+64x^2+64y+64y^2-32z
expanding queue[5]^2,meter=[2,2,2]*8: 8x+16x^2+16y+16y^2-16z
[1+8x,2+8y,1+8z]:	unknown -> [15] 16x+64x^2+32y+64y^2-32z
-> solution [1,2,1],trivial(2)
[1+8x,6+8y,1+8z]:	negative-1 [15] by {y=>-y-1}
-> solution [1,6,9],NONTRIVIAL
[1+8x,2+8y,5+8z]:	unknown -> [16] -16+16x+64x^2+32y+64y^2-32z
[1+8x,6+8y,5+8z]:	negative-1 [16] by {y=>-y-1}
expanding queue[6]^2,meter=[2,2,2]*8: -8+8x+16x^2+16y+16y^2-16z
[5+8x,2+8y,3+8z]:	unknown -> [17] 16+80x+64x^2+32y+64y^2-32z
[5+8x,6+8y,3+8z]:	negative-1 [17] by {y=>-y-1}
[5+8x,2+8y,7+8z]:	unknown -> [18] 80x+64x^2+32y+64y^2-32z
-> solution [5,2,7],NONTRIVIAL
[5+8x,6+8y,7+8z]:	negative-1 [18] by {y=>-y-1}
-> solution [5,6,15],NONTRIVIAL
----------------
expanding queue[7]^3,meter=[2,2,2]*16: 16x+64x^2+64y^2-32z
[1+16x,0+16y,0+16z]:	same 32x+256x^2+256y^2-64z map {x=>x/8,y=>y/8,z=>z/8} -> [1] 4x+4x^2+4y^2-8z
-> solution [1,0,0],trivial(3)
[1+16x,8+16y,0+16z]:	unknown -> [19] 64+32x+256x^2+256y+256y^2-64z
-> solution [1,8,16],NONTRIVIAL
[1+16x,0+16y,8+16z]:	unknown -> [20] -32+32x+256x^2+256y^2-64z
[1+16x,8+16y,8+16z]:	unknown -> [21] 32+32x+256x^2+256y+256y^2-64z
expanding queue[8]^3,meter=[2,2,2]*16: 16+16x+64x^2+64y+64y^2-32z
[9+16x,4+16y,0+16z]:	unknown -> [22] 96+288x+256x^2+128y+256y^2-64z
[9+16x,12+16y,0+16z]:	negative-1 [22] by {y=>-y-1}
[9+16x,4+16y,8+16z]:	unknown -> [23] 64+288x+256x^2+128y+256y^2-64z
-> solution [9,4,24],NONTRIVIAL
[9+16x,12+16y,8+16z]:	negative-1 [23] by {y=>-y-1}
expanding queue[9]^3,meter=[2,2,2]*16: -16+16x+64x^2+64y^2-32z
[9+16x,0+16y,4+16z]:	unknown -> [24] 64+288x+256x^2+256y^2-64z
-> solution [9,0,20],trivial(1)
[9+16x,8+16y,4+16z]:	unknown -> [25] 128+288x+256x^2+256y+256y^2-64z
[9+16x,0+16y,12+16z]:	unknown -> [26] 32+288x+256x^2+256y^2-64z
[9+16x,8+16y,12+16z]:	unknown -> [27] 96+288x+256x^2+256y+256y^2-64z
expanding queue[10]^3,meter=[2,2,2]*16: 16x+64x^2+64y+64y^2-32z
[1+16x,4+16y,4+16z]:	unknown -> [28] 32x+256x^2+128y+256y^2-64z
-> solution [1,4,4],trivial(2)
[1+16x,12+16y,4+16z]:	negative-1 [28] by {y=>-y-1}
[1+16x,4+16y,12+16z]:	unknown -> [29] -32+32x+256x^2+128y+256y^2-64z
[1+16x,12+16y,12+16z]:	negative-1 [29] by {y=>-y-1}
expanding queue[11]^4,meter=[2,2,2]*16: 16+80x+64x^2+64y^2-32z
[13+16x,0+16y,2+16z]:	unknown -> [30] 160+416x+256x^2+256y^2-64z
[13+16x,8+16y,2+16z]:	unknown -> [31] 224+416x+256x^2+256y+256y^2-64z
[13+16x,0+16y,10+16z]:	unknown -> [32] 128+416x+256x^2+256y^2-64z
[13+16x,8+16y,10+16z]:	unknown -> [33] 192+416x+256x^2+256y+256y^2-64z
expanding queue[12]^4,meter=[2,2,2]*16: 32+80x+64x^2+64y+64y^2-32z
[5+16x,4+16y,2+16z]:	unknown -> [34] 32+160x+256x^2+128y+256y^2-64z
[5+16x,12+16y,2+16z]:	negative-1 [34] by {y=>-y-1}
[5+16x,4+16y,10+16z]:	unknown -> [35] 160x+256x^2+128y+256y^2-64z
-> solution [5,4,10],NONTRIVIAL
[5+16x,12+16y,10+16z]:	negative-1 [35] by {y=>-y-1}
expanding queue[13]^4,meter=[2,2,2]*16: 80x+64x^2+64y^2-32z
[5+16x,0+16y,6+16z]:	unknown -> [36] 160x+256x^2+256y^2-64z
-> solution [5,0,6],trivial(1)
[5+16x,8+16y,6+16z]:	unknown -> [37] 64+160x+256x^2+256y+256y^2-64z
-> solution [5,8,22],NONTRIVIAL
[5+16x,0+16y,14+16z]:	unknown -> [38] -32+160x+256x^2+256y^2-64z
[5+16x,8+16y,14+16z]:	unknown -> [39] 32+160x+256x^2+256y+256y^2-64z
expanding queue[14]^4,meter=[2,2,2]*16: 16+80x+64x^2+64y+64y^2-32z
[13+16x,4+16y,6+16z]:	unknown -> [40] 160+416x+256x^2+128y+256y^2-64z
[13+16x,12+16y,6+16z]:	negative-1 [40] by {y=>-y-1}
[13+16x,4+16y,14+16z]:	unknown -> [41] 128+416x+256x^2+128y+256y^2-64z
[13+16x,12+16y,14+16z]:	negative-1 [41] by {y=>-y-1}
expanding queue[15]^5,meter=[2,2,2]*16: 16x+64x^2+32y+64y^2-32z
[1+16x,2+16y,1+16z]:	unknown -> [42] 32x+256x^2+64y+256y^2-64z
-> solution [1,2,1],trivial(2)
[1+16x,10+16y,1+16z]:	unknown -> [43] 96+32x+256x^2+320y+256y^2-64z
[1+16x,2+16y,9+16z]:	unknown -> [44] -32+32x+256x^2+64y+256y^2-64z
[1+16x,10+16y,9+16z]:	unknown -> [45] 64+32x+256x^2+320y+256y^2-64z
-> solution [1,10,25],NONTRIVIAL
expanding queue[16]^5,meter=[2,2,2]*16: -16+16x+64x^2+32y+64y^2-32z
[9+16x,2+16y,5+16z]:	unknown -> [46] 64+288x+256x^2+64y+256y^2-64z
-> solution [9,2,21],NONTRIVIAL
[9+16x,10+16y,5+16z]:	unknown -> [47] 160+288x+256x^2+320y+256y^2-64z
[9+16x,2+16y,13+16z]:	unknown -> [48] 32+288x+256x^2+64y+256y^2-64z
[9+16x,10+16y,13+16z]:	unknown -> [49] 128+288x+256x^2+320y+256y^2-64z
expanding queue[17]^6,meter=[2,2,2]*16: 16+80x+64x^2+32y+64y^2-32z
[13+16x,2+16y,3+16z]:	unknown -> [50] 160+416x+256x^2+64y+256y^2-64z
[13+16x,10+16y,3+16z]:	unknown -> [51] 256+416x+256x^2+320y+256y^2-64z
[13+16x,2+16y,11+16z]:	unknown -> [52] 128+416x+256x^2+64y+256y^2-64z
[13+16x,10+16y,11+16z]:	unknown -> [53] 224+416x+256x^2+320y+256y^2-64z
expanding queue[18]^6,meter=[2,2,2]*16: 80x+64x^2+32y+64y^2-32z
[5+16x,2+16y,7+16z]:	unknown -> [54] 160x+256x^2+64y+256y^2-64z
-> solution [5,2,7],NONTRIVIAL
[5+16x,10+16y,7+16z]:	unknown -> [55] 96+160x+256x^2+320y+256y^2-64z
[5+16x,2+16y,15+16z]:	unknown -> [56] -32+160x+256x^2+64y+256y^2-64z
[5+16x,10+16y,15+16z]:	unknown -> [57] 64+160x+256x^2+320y+256y^2-64z
-> solution [5,10,31],NONTRIVIAL
Maximum level 3 [58] mod 2: -1+x^2+y^2-4z
