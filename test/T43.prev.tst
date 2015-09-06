TranspositionSet={[1,0,2]}
ExponentGCDs=[2,2,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp invall
Refined variables=x,y,z
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: -1+x^2+y^2-4z
[1+2x,0+2y,0+2z]:	unknown -> [1] 4x+4x^2+4y^2-8z
[0+2x,1+2y,0+2z]:	transposed [1] by [1,0,2]
[1+2x,0+2y,1+2z]:	similiar   [1], is mappable by: {x=>x,y=>y,z=>z}  -4+4x+4x^2+4y^2-8z
[0+2x,1+2y,1+2z]:	unknown -> [2] -4+4x^2+4y+4y^2-8z
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 4x+4x^2+4y^2-8z
solution [1,0,0],trivial(3)
[1+4x,0+4y,0+4z]:	unknown -> [3] 8x+16x^2+16y^2-16z
[3+4x,0+4y,0+4z]:	negative-1 [3] by {x=>-x-1}
[1+4x,0+4y,2+4z]:	similiar   [3], is mappable by: {x=>x,y=>y,z=>z}  -8+8x+16x^2+16y^2-16z
[3+4x,0+4y,2+4z]:	unknown -> [4] 24x+16x^2+16y^2-16z
expanding queue[2]^0,meter=[2,2,2]*4: -4+4x^2+4y+4y^2-8z
[2+4x,1+4y,1+4z]:	unknown -> [5] 16x+16x^2+8y+16y^2-16z
[2+4x,3+4y,1+4z]:	negative-1 [5] by {y=>-y-1}
[2+4x,1+4y,3+4z]:	similiar   [5], is mappable by: {x=>x,y=>y,z=>z}  -8+16x+16x^2+8y+16y^2-16z
[2+4x,3+4y,3+4z]:	unknown -> [6] 16x+16x^2+24y+16y^2-16z
----------------
expanding queue[3]^1,meter=[2,2,2]*8: 8x+16x^2+16y^2-16z
solution [1,0,0],trivial(3)
[1+8x,0+8y,0+8z]:	unknown -> [7] 16x+64x^2+64y^2-32z
[1+8x,4+8y,0+8z]:	unknown -> [8] 16+16x+64x^2+64y+64y^2-32z
[1+8x,0+8y,4+8z]:	similiar   [7], is mappable by: {x=>x,y=>y,z=>z}  -16+16x+64x^2+64y^2-32z
[1+8x,4+8y,4+8z]:	similiar   [8], is mappable by: {x=>x,y=>y,z=>z}  16x+64x^2+64y+64y^2-32z
expanding queue[4]^1,meter=[2,2,2]*8: 24x+16x^2+16y^2-16z
solution [3,0,2],trivial(1)
[3+8x,0+8y,2+8z]:	unknown -> [9] 48x+64x^2+64y^2-32z
[3+8x,4+8y,2+8z]:	unknown -> [10] 16+48x+64x^2+64y+64y^2-32z
[3+8x,0+8y,6+8z]:	similiar   [9], is mappable by: {x=>x,y=>y,z=>z}  -16+48x+64x^2+64y^2-32z
[3+8x,4+8y,6+8z]:	similiar   [10], is mappable by: {x=>x,y=>y,z=>z}  48x+64x^2+64y+64y^2-32z
expanding queue[5]^2,meter=[2,2,2]*8: 16x+16x^2+8y+16y^2-16z
solution [2,1,1],trivial(2)
[2+8x,1+8y,1+8z]:	unknown -> [11] 32x+64x^2+16y+64y^2-32z
[6+8x,1+8y,1+8z]:	negative-1 [11] by {x=>-x-1}
[2+8x,1+8y,5+8z]:	similiar   [11], is mappable by: {x=>x,y=>y,z=>z}  -16+32x+64x^2+16y+64y^2-32z
[6+8x,1+8y,5+8z]:	unknown -> [12] 16+96x+64x^2+16y+64y^2-32z
expanding queue[6]^2,meter=[2,2,2]*8: 16x+16x^2+24y+16y^2-16z
solution [2,3,3],trivial(2)
[2+8x,3+8y,3+8z]:	unknown -> [13] 32x+64x^2+48y+64y^2-32z
[6+8x,3+8y,3+8z]:	negative-1 [13] by {x=>-x-1}
[2+8x,3+8y,7+8z]:	similiar   [13], is mappable by: {x=>x,y=>y,z=>z}  -16+32x+64x^2+48y+64y^2-32z
[6+8x,3+8y,7+8z]:	unknown -> [14] 16+96x+64x^2+48y+64y^2-32z
----------------
expanding queue[7]^3,meter=[2,2,2]*16: 16x+64x^2+64y^2-32z
solution [1,0,0],trivial(3)
[1+16x,0+16y,0+16z]:	unknown -> [15] 32x+256x^2+256y^2-64z
[1+16x,8+16y,0+16z]:	unknown -> [16] 64+32x+256x^2+256y+256y^2-64z
[1+16x,0+16y,8+16z]:	similiar   [15], is mappable by: {x=>x,y=>y,z=>z}  -32+32x+256x^2+256y^2-64z
[1+16x,8+16y,8+16z]:	similiar   [16], is mappable by: {x=>x,y=>y,z=>z}  32+32x+256x^2+256y+256y^2-64z
expanding queue[8]^3,meter=[2,2,2]*16: 16+16x+64x^2+64y+64y^2-32z
[9+16x,4+16y,0+16z]:	unknown -> [17] 96+288x+256x^2+128y+256y^2-64z
[9+16x,12+16y,0+16z]:	negative-1 [17] by {y=>-y-1}
[9+16x,4+16y,8+16z]:	similiar   [17], is mappable by: {x=>x,y=>y,z=>z}  64+288x+256x^2+128y+256y^2-64z
[9+16x,12+16y,8+16z]:	unknown -> [18] 192+288x+256x^2+384y+256y^2-64z
expanding queue[9]^4,meter=[2,2,2]*16: 48x+64x^2+64y^2-32z
solution [3,0,2],trivial(1)
[3+16x,0+16y,2+16z]:	unknown -> [19] 96x+256x^2+256y^2-64z
[3+16x,8+16y,2+16z]:	unknown -> [20] 64+96x+256x^2+256y+256y^2-64z
[3+16x,0+16y,10+16z]:	similiar   [19], is mappable by: {x=>x,y=>y,z=>z}  -32+96x+256x^2+256y^2-64z
[3+16x,8+16y,10+16z]:	similiar   [20], is mappable by: {x=>x,y=>y,z=>z}  32+96x+256x^2+256y+256y^2-64z
expanding queue[10]^4,meter=[2,2,2]*16: 16+48x+64x^2+64y+64y^2-32z
[11+16x,4+16y,2+16z]:	unknown -> [21] 128+352x+256x^2+128y+256y^2-64z
[11+16x,12+16y,2+16z]:	negative-1 [21] by {y=>-y-1}
[11+16x,4+16y,10+16z]:	similiar   [21], is mappable by: {x=>x,y=>y,z=>z}  96+352x+256x^2+128y+256y^2-64z
[11+16x,12+16y,10+16z]:	unknown -> [22] 224+352x+256x^2+384y+256y^2-64z
expanding queue[11]^5,meter=[2,2,2]*16: 32x+64x^2+16y+64y^2-32z
solution [2,1,1],trivial(2)
[2+16x,1+16y,1+16z]:	unknown -> [23] 64x+256x^2+32y+256y^2-64z
[10+16x,1+16y,1+16z]:	unknown -> [24] 96+320x+256x^2+32y+256y^2-64z
[2+16x,1+16y,9+16z]:	similiar   [23], is mappable by: {x=>x,y=>y,z=>z}  -32+64x+256x^2+32y+256y^2-64z
[10+16x,1+16y,9+16z]:	similiar   [24], is mappable by: {x=>x,y=>y,z=>z}  64+320x+256x^2+32y+256y^2-64z
expanding queue[12]^5,meter=[2,2,2]*16: 16+96x+64x^2+16y+64y^2-32z
[6+16x,9+16y,5+16z]:	unknown -> [25] 96+192x+256x^2+288y+256y^2-64z
[14+16x,9+16y,5+16z]:	unknown -> [26] 256+448x+256x^2+288y+256y^2-64z
[6+16x,9+16y,13+16z]:	similiar   [25], is mappable by: {x=>x,y=>y,z=>z}  64+192x+256x^2+288y+256y^2-64z
[14+16x,9+16y,13+16z]:	similiar   [26], is mappable by: {x=>x,y=>y,z=>z}  224+448x+256x^2+288y+256y^2-64z
expanding queue[13]^6,meter=[2,2,2]*16: 32x+64x^2+48y+64y^2-32z
solution [2,3,3],trivial(2)
[2+16x,3+16y,3+16z]:	unknown -> [27] 64x+256x^2+96y+256y^2-64z
[10+16x,3+16y,3+16z]:	unknown -> [28] 96+320x+256x^2+96y+256y^2-64z
[2+16x,3+16y,11+16z]:	similiar   [27], is mappable by: {x=>x,y=>y,z=>z}  -32+64x+256x^2+96y+256y^2-64z
[10+16x,3+16y,11+16z]:	similiar   [28], is mappable by: {x=>x,y=>y,z=>z}  64+320x+256x^2+96y+256y^2-64z
expanding queue[14]^6,meter=[2,2,2]*16: 16+96x+64x^2+48y+64y^2-32z
[6+16x,11+16y,7+16z]:	unknown -> [29] 128+192x+256x^2+352y+256y^2-64z
[14+16x,11+16y,7+16z]:	unknown -> [30] 288+448x+256x^2+352y+256y^2-64z
[6+16x,11+16y,15+16z]:	similiar   [29], is mappable by: {x=>x,y=>y,z=>z}  96+192x+256x^2+352y+256y^2-64z
[14+16x,11+16y,15+16z]:	similiar   [30], is mappable by: {x=>x,y=>y,z=>z}  256+448x+256x^2+352y+256y^2-64z
----------------
expanding queue[15]^7,meter=[2,2,2]*32: 32x+256x^2+256y^2-64z
solution [1,0,0],trivial(3)
[1+32x,0+32y,0+32z]:	unknown -> [31] 64x+1024x^2+1024y^2-128z
[1+32x,16+32y,0+32z]:	unknown -> [32] 256+64x+1024x^2+1024y+1024y^2-128z
[1+32x,0+32y,16+32z]:	similiar   [31], is mappable by: {x=>x,y=>y,z=>z}  -64+64x+1024x^2+1024y^2-128z
[1+32x,16+32y,16+32z]:	similiar   [32], is mappable by: {x=>x,y=>y,z=>z}  192+64x+1024x^2+1024y+1024y^2-128z
expanding queue[16]^7,meter=[2,2,2]*32: 64+32x+256x^2+256y+256y^2-64z
[1+32x,8+32y,0+32z]:	unknown -> [33] 64+64x+1024x^2+512y+1024y^2-128z
[1+32x,24+32y,0+32z]:	negative-1 [33] by {y=>-y-1}
[1+32x,8+32y,16+32z]:	similiar   [33], is mappable by: {x=>x,y=>y,z=>z}  64x+1024x^2+512y+1024y^2-128z
[1+32x,24+32y,16+32z]:	unknown -> [34] 512+64x+1024x^2+1536y+1024y^2-128z
expanding queue[17]^8,meter=[2,2,2]*32: 96+288x+256x^2+128y+256y^2-64z
[25+32x,4+32y,0+32z]:	unknown -> [35] 640+1600x+1024x^2+256y+1024y^2-128z
[25+32x,20+32y,0+32z]:	unknown -> [36] 1024+1600x+1024x^2+1280y+1024y^2-128z
[25+32x,4+32y,16+32z]:	similiar   [35], is mappable by: {x=>x,y=>y,z=>z}  576+1600x+1024x^2+256y+1024y^2-128z
[25+32x,20+32y,16+32z]:	similiar   [36], is mappable by: {x=>x,y=>y,z=>z}  960+1600x+1024x^2+1280y+1024y^2-128z
expanding queue[18]^8,meter=[2,2,2]*32: 192+288x+256x^2+384y+256y^2-64z
[9+32x,12+32y,8+32z]:	unknown -> [37] 192+576x+1024x^2+768y+1024y^2-128z
[9+32x,28+32y,8+32z]:	unknown -> [38] 832+576x+1024x^2+1792y+1024y^2-128z
[9+32x,12+32y,24+32z]:	similiar   [37], is mappable by: {x=>x,y=>y,z=>z}  128+576x+1024x^2+768y+1024y^2-128z
[9+32x,28+32y,24+32z]:	similiar   [38], is mappable by: {x=>x,y=>y,z=>z}  768+576x+1024x^2+1792y+1024y^2-128z
expanding queue[19]^9,meter=[2,2,2]*32: 96x+256x^2+256y^2-64z
solution [3,0,2],trivial(1)
[3+32x,0+32y,2+32z]:	unknown -> [39] 192x+1024x^2+1024y^2-128z
[3+32x,16+32y,2+32z]:	unknown -> [40] 256+192x+1024x^2+1024y+1024y^2-128z
[3+32x,0+32y,18+32z]:	similiar   [39], is mappable by: {x=>x,y=>y,z=>z}  -64+192x+1024x^2+1024y^2-128z
[3+32x,16+32y,18+32z]:	similiar   [40], is mappable by: {x=>x,y=>y,z=>z}  192+192x+1024x^2+1024y+1024y^2-128z
expanding queue[20]^9,meter=[2,2,2]*32: 64+96x+256x^2+256y+256y^2-64z
[3+32x,8+32y,2+32z]:	unknown -> [41] 64+192x+1024x^2+512y+1024y^2-128z
[3+32x,24+32y,2+32z]:	negative-1 [41] by {y=>-y-1}
[3+32x,8+32y,18+32z]:	similiar   [41], is mappable by: {x=>x,y=>y,z=>z}  192x+1024x^2+512y+1024y^2-128z
[3+32x,24+32y,18+32z]:	unknown -> [42] 512+192x+1024x^2+1536y+1024y^2-128z
expanding queue[21]^10,meter=[2,2,2]*32: 128+352x+256x^2+128y+256y^2-64z
[11+32x,4+32y,2+32z]:	unknown -> [43] 128+704x+1024x^2+256y+1024y^2-128z
[11+32x,20+32y,2+32z]:	unknown -> [44] 512+704x+1024x^2+1280y+1024y^2-128z
[11+32x,4+32y,18+32z]:	similiar   [43], is mappable by: {x=>x,y=>y,z=>z}  64+704x+1024x^2+256y+1024y^2-128z
[11+32x,20+32y,18+32z]:	similiar   [44], is mappable by: {x=>x,y=>y,z=>z}  448+704x+1024x^2+1280y+1024y^2-128z
expanding queue[22]^10,meter=[2,2,2]*32: 224+352x+256x^2+384y+256y^2-64z
[27+32x,12+32y,10+32z]:	unknown -> [45] 832+1728x+1024x^2+768y+1024y^2-128z
[27+32x,28+32y,10+32z]:	unknown -> [46] 1472+1728x+1024x^2+1792y+1024y^2-128z
[27+32x,12+32y,26+32z]:	similiar   [45], is mappable by: {x=>x,y=>y,z=>z}  768+1728x+1024x^2+768y+1024y^2-128z
[27+32x,28+32y,26+32z]:	similiar   [46], is mappable by: {x=>x,y=>y,z=>z}  1408+1728x+1024x^2+1792y+1024y^2-128z
expanding queue[23]^11,meter=[2,2,2]*32: 64x+256x^2+32y+256y^2-64z
solution [2,1,1],trivial(2)
[2+32x,1+32y,1+32z]:	unknown -> [47] 128x+1024x^2+64y+1024y^2-128z
[18+32x,1+32y,1+32z]:	unknown -> [48] 320+1152x+1024x^2+64y+1024y^2-128z
[2+32x,1+32y,17+32z]:	similiar   [47], is mappable by: {x=>x,y=>y,z=>z}  -64+128x+1024x^2+64y+1024y^2-128z
[18+32x,1+32y,17+32z]:	similiar   [48], is mappable by: {x=>x,y=>y,z=>z}  256+1152x+1024x^2+64y+1024y^2-128z
expanding queue[24]^11,meter=[2,2,2]*32: 96+320x+256x^2+32y+256y^2-64z
[10+32x,17+32y,1+32z]:	unknown -> [49] 384+640x+1024x^2+1088y+1024y^2-128z
[26+32x,17+32y,1+32z]:	unknown -> [50] 960+1664x+1024x^2+1088y+1024y^2-128z
[10+32x,17+32y,17+32z]:	similiar   [49], is mappable by: {x=>x,y=>y,z=>z}  320+640x+1024x^2+1088y+1024y^2-128z
[26+32x,17+32y,17+32z]:	similiar   [50], is mappable by: {x=>x,y=>y,z=>z}  896+1664x+1024x^2+1088y+1024y^2-128z
expanding queue[25]^12,meter=[2,2,2]*32: 96+192x+256x^2+288y+256y^2-64z
[6+32x,25+32y,5+32z]:	unknown -> [51] 640+384x+1024x^2+1600y+1024y^2-128z
[22+32x,25+32y,5+32z]:	unknown -> [52] 1088+1408x+1024x^2+1600y+1024y^2-128z
[6+32x,25+32y,21+32z]:	similiar   [51], is mappable by: {x=>x,y=>y,z=>z}  576+384x+1024x^2+1600y+1024y^2-128z
[22+32x,25+32y,21+32z]:	similiar   [52], is mappable by: {x=>x,y=>y,z=>z}  1024+1408x+1024x^2+1600y+1024y^2-128z
expanding queue[26]^12,meter=[2,2,2]*32: 256+448x+256x^2+288y+256y^2-64z
[14+32x,9+32y,5+32z]:	unknown -> [53] 256+896x+1024x^2+576y+1024y^2-128z
[30+32x,9+32y,5+32z]:	unknown -> [54] 960+1920x+1024x^2+576y+1024y^2-128z
[14+32x,9+32y,21+32z]:	similiar   [53], is mappable by: {x=>x,y=>y,z=>z}  192+896x+1024x^2+576y+1024y^2-128z
[30+32x,9+32y,21+32z]:	similiar   [54], is mappable by: {x=>x,y=>y,z=>z}  896+1920x+1024x^2+576y+1024y^2-128z
expanding queue[27]^13,meter=[2,2,2]*32: 64x+256x^2+96y+256y^2-64z
solution [2,3,3],trivial(2)
[2+32x,3+32y,3+32z]:	unknown -> [55] 128x+1024x^2+192y+1024y^2-128z
[18+32x,3+32y,3+32z]:	unknown -> [56] 320+1152x+1024x^2+192y+1024y^2-128z
[2+32x,3+32y,19+32z]:	similiar   [55], is mappable by: {x=>x,y=>y,z=>z}  -64+128x+1024x^2+192y+1024y^2-128z
[18+32x,3+32y,19+32z]:	similiar   [56], is mappable by: {x=>x,y=>y,z=>z}  256+1152x+1024x^2+192y+1024y^2-128z
expanding queue[28]^13,meter=[2,2,2]*32: 96+320x+256x^2+96y+256y^2-64z
[10+32x,19+32y,3+32z]:	unknown -> [57] 448+640x+1024x^2+1216y+1024y^2-128z
[26+32x,19+32y,3+32z]:	unknown -> [58] 1024+1664x+1024x^2+1216y+1024y^2-128z
[10+32x,19+32y,19+32z]:	similiar   [57], is mappable by: {x=>x,y=>y,z=>z}  384+640x+1024x^2+1216y+1024y^2-128z
[26+32x,19+32y,19+32z]:	similiar   [58], is mappable by: {x=>x,y=>y,z=>z}  960+1664x+1024x^2+1216y+1024y^2-128z
expanding queue[29]^14,meter=[2,2,2]*32: 128+192x+256x^2+352y+256y^2-64z
[6+32x,11+32y,7+32z]:	unknown -> [59] 128+384x+1024x^2+704y+1024y^2-128z
[22+32x,11+32y,7+32z]:	unknown -> [60] 576+1408x+1024x^2+704y+1024y^2-128z
[6+32x,11+32y,23+32z]:	similiar   [59], is mappable by: {x=>x,y=>y,z=>z}  64+384x+1024x^2+704y+1024y^2-128z
[22+32x,11+32y,23+32z]:	similiar   [60], is mappable by: {x=>x,y=>y,z=>z}  512+1408x+1024x^2+704y+1024y^2-128z
expanding queue[30]^14,meter=[2,2,2]*32: 288+448x+256x^2+352y+256y^2-64z
[14+32x,27+32y,7+32z]:	unknown -> [61] 896+896x+1024x^2+1728y+1024y^2-128z
[30+32x,27+32y,7+32z]:	unknown -> [62] 1600+1920x+1024x^2+1728y+1024y^2-128z
[14+32x,27+32y,23+32z]:	similiar   [61], is mappable by: {x=>x,y=>y,z=>z}  832+896x+1024x^2+1728y+1024y^2-128z
[30+32x,27+32y,23+32z]:	similiar   [62], is mappable by: {x=>x,y=>y,z=>z}  1536+1920x+1024x^2+1728y+1024y^2-128z
Maximum level 4 reached at [63]:  - 1 + x^2 + y^2 - 4*z
