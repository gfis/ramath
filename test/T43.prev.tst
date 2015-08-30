Expanding for base=2, reasons+features=base,transpose,similiar,evenexp invall
exponentGCDs=[2,2,1], transposables={{x,y},{z}}
----------------
expanding queue[0]^-1:  - 1 + x^2 + y^2 - 4*z meter=[2,2,2] *2
[1+2*x,0+2*y,0+2*z]:	unknown -> [1] 4*x+4*x^2+4*y^2-8*z
[0+2*x,1+2*y,0+2*z]:	transposed [1] {0/0+2*y,0/1+2*x,2/0+2*z} by 0+2*y|0+2*x 1+2*x|1+2*y
[1+2*x,0+2*y,1+2*z]:	similiar to [1], is mappable by: {x=>x,y=>y,z=>z}  -4+4*x+4*x^2+4*y^2-8*z
[0+2*x,1+2*y,1+2*z]:	unknown -> [2] -4+4*x^2+4*y+4*y^2-8*z
----------------
expanding queue[1]^0: 4*x + 4*x^2 + 4*y^2 - 8*z meter=[2,2,2] *4
solution [1,0,0],trivial(3)
[1+4*x,0+4*y,0+4*z]:	unknown -> [3] 8*x+16*x^2+16*y^2-16*z
[3+4*x,0+4*y,0+4*z]:	negative-1 [3] by {x=>-x-1}
[1+4*x,0+4*y,2+4*z]:	similiar to [3], is mappable by: {x=>x,y=>y,z=>z}  -8+8*x+16*x^2+16*y^2-16*z
[3+4*x,0+4*y,2+4*z]:	unknown -> [4] 24*x+16*x^2+16*y^2-16*z
expanding queue[2]^0:  - 4 + 4*x^2 + 4*y + 4*y^2 - 8*z meter=[2,2,2] *4
[2+4*x,1+4*y,1+4*z]:	unknown -> [5] 16*x+16*x^2+8*y+16*y^2-16*z
[2+4*x,3+4*y,1+4*z]:	negative-1 [5] by {y=>-y-1}
[2+4*x,1+4*y,3+4*z]:	similiar to [5], is mappable by: {x=>x,y=>y,z=>z}  -8+16*x+16*x^2+8*y+16*y^2-16*z
[2+4*x,3+4*y,3+4*z]:	unknown -> [6] 16*x+16*x^2+24*y+16*y^2-16*z
----------------
expanding queue[3]^1: 8*x + 16*x^2 + 16*y^2 - 16*z meter=[2,2,2] *8
solution [1,0,0],trivial(3)
[1+8*x,0+8*y,0+8*z]:	unknown -> [7] 16*x+64*x^2+64*y^2-32*z
[1+8*x,4+8*y,0+8*z]:	unknown -> [8] 16+16*x+64*x^2+64*y+64*y^2-32*z
[1+8*x,0+8*y,4+8*z]:	similiar to [7], is mappable by: {x=>x,y=>y,z=>z}  -16+16*x+64*x^2+64*y^2-32*z
[1+8*x,4+8*y,4+8*z]:	similiar to [8], is mappable by: {x=>x,y=>y,z=>z}  16*x+64*x^2+64*y+64*y^2-32*z
expanding queue[4]^1: 24*x + 16*x^2 + 16*y^2 - 16*z meter=[2,2,2] *8
solution [3,0,2],trivial(1)
[3+8*x,0+8*y,2+8*z]:	unknown -> [9] 48*x+64*x^2+64*y^2-32*z
[3+8*x,4+8*y,2+8*z]:	unknown -> [10] 16+48*x+64*x^2+64*y+64*y^2-32*z
[3+8*x,0+8*y,6+8*z]:	similiar to [9], is mappable by: {x=>x,y=>y,z=>z}  -16+48*x+64*x^2+64*y^2-32*z
[3+8*x,4+8*y,6+8*z]:	similiar to [10], is mappable by: {x=>x,y=>y,z=>z}  48*x+64*x^2+64*y+64*y^2-32*z
expanding queue[5]^2: 16*x + 16*x^2 + 8*y + 16*y^2 - 16*z meter=[2,2,2] *8
solution [2,1,1],trivial(2)
[2+8*x,1+8*y,1+8*z]:	unknown -> [11] 32*x+64*x^2+16*y+64*y^2-32*z
[6+8*x,1+8*y,1+8*z]:	negative-1 [11] by {x=>-x-1}
[2+8*x,1+8*y,5+8*z]:	similiar to [11], is mappable by: {x=>x,y=>y,z=>z}  -16+32*x+64*x^2+16*y+64*y^2-32*z
[6+8*x,1+8*y,5+8*z]:	unknown -> [12] 16+96*x+64*x^2+16*y+64*y^2-32*z
expanding queue[6]^2: 16*x + 16*x^2 + 24*y + 16*y^2 - 16*z meter=[2,2,2] *8
solution [2,3,3],trivial(2)
[2+8*x,3+8*y,3+8*z]:	unknown -> [13] 32*x+64*x^2+48*y+64*y^2-32*z
[6+8*x,3+8*y,3+8*z]:	negative-1 [13] by {x=>-x-1}
[2+8*x,3+8*y,7+8*z]:	similiar to [13], is mappable by: {x=>x,y=>y,z=>z}  -16+32*x+64*x^2+48*y+64*y^2-32*z
[6+8*x,3+8*y,7+8*z]:	unknown -> [14] 16+96*x+64*x^2+48*y+64*y^2-32*z
----------------
expanding queue[7]^3: 16*x + 64*x^2 + 64*y^2 - 32*z meter=[2,2,2] *16
solution [1,0,0],trivial(3)
[1+16*x,0+16*y,0+16*z]:	unknown -> [15] 32*x+256*x^2+256*y^2-64*z
[1+16*x,8+16*y,0+16*z]:	unknown -> [16] 64+32*x+256*x^2+256*y+256*y^2-64*z
[1+16*x,0+16*y,8+16*z]:	similiar to [15], is mappable by: {x=>x,y=>y,z=>z}  -32+32*x+256*x^2+256*y^2-64*z
[1+16*x,8+16*y,8+16*z]:	similiar to [16], is mappable by: {x=>x,y=>y,z=>z}  32+32*x+256*x^2+256*y+256*y^2-64*z
expanding queue[8]^3: 16 + 16*x + 64*x^2 + 64*y + 64*y^2 - 32*z meter=[2,2,2] *16
[9+16*x,4+16*y,0+16*z]:	unknown -> [17] 96+288*x+256*x^2+128*y+256*y^2-64*z
[9+16*x,12+16*y,0+16*z]:	negative-1 [17] by {y=>-y-1}
[9+16*x,4+16*y,8+16*z]:	similiar to [17], is mappable by: {x=>x,y=>y,z=>z}  64+288*x+256*x^2+128*y+256*y^2-64*z
[9+16*x,12+16*y,8+16*z]:	unknown -> [18] 192+288*x+256*x^2+384*y+256*y^2-64*z
expanding queue[9]^4: 48*x + 64*x^2 + 64*y^2 - 32*z meter=[2,2,2] *16
solution [3,0,2],trivial(1)
[3+16*x,0+16*y,2+16*z]:	unknown -> [19] 96*x+256*x^2+256*y^2-64*z
[3+16*x,8+16*y,2+16*z]:	unknown -> [20] 64+96*x+256*x^2+256*y+256*y^2-64*z
[3+16*x,0+16*y,10+16*z]:	similiar to [19], is mappable by: {x=>x,y=>y,z=>z}  -32+96*x+256*x^2+256*y^2-64*z
[3+16*x,8+16*y,10+16*z]:	similiar to [20], is mappable by: {x=>x,y=>y,z=>z}  32+96*x+256*x^2+256*y+256*y^2-64*z
expanding queue[10]^4: 16 + 48*x + 64*x^2 + 64*y + 64*y^2 - 32*z meter=[2,2,2] *16
[11+16*x,4+16*y,2+16*z]:	unknown -> [21] 128+352*x+256*x^2+128*y+256*y^2-64*z
[11+16*x,12+16*y,2+16*z]:	negative-1 [21] by {y=>-y-1}
[11+16*x,4+16*y,10+16*z]:	similiar to [21], is mappable by: {x=>x,y=>y,z=>z}  96+352*x+256*x^2+128*y+256*y^2-64*z
[11+16*x,12+16*y,10+16*z]:	unknown -> [22] 224+352*x+256*x^2+384*y+256*y^2-64*z
expanding queue[11]^5: 32*x + 64*x^2 + 16*y + 64*y^2 - 32*z meter=[2,2,2] *16
solution [2,1,1],trivial(2)
[2+16*x,1+16*y,1+16*z]:	unknown -> [23] 64*x+256*x^2+32*y+256*y^2-64*z
[10+16*x,1+16*y,1+16*z]:	unknown -> [24] 96+320*x+256*x^2+32*y+256*y^2-64*z
[2+16*x,1+16*y,9+16*z]:	similiar to [23], is mappable by: {x=>x,y=>y,z=>z}  -32+64*x+256*x^2+32*y+256*y^2-64*z
[10+16*x,1+16*y,9+16*z]:	similiar to [24], is mappable by: {x=>x,y=>y,z=>z}  64+320*x+256*x^2+32*y+256*y^2-64*z
expanding queue[12]^5: 16 + 96*x + 64*x^2 + 16*y + 64*y^2 - 32*z meter=[2,2,2] *16
[6+16*x,9+16*y,5+16*z]:	unknown -> [25] 96+192*x+256*x^2+288*y+256*y^2-64*z
[14+16*x,9+16*y,5+16*z]:	unknown -> [26] 256+448*x+256*x^2+288*y+256*y^2-64*z
[6+16*x,9+16*y,13+16*z]:	similiar to [25], is mappable by: {x=>x,y=>y,z=>z}  64+192*x+256*x^2+288*y+256*y^2-64*z
[14+16*x,9+16*y,13+16*z]:	similiar to [26], is mappable by: {x=>x,y=>y,z=>z}  224+448*x+256*x^2+288*y+256*y^2-64*z
expanding queue[13]^6: 32*x + 64*x^2 + 48*y + 64*y^2 - 32*z meter=[2,2,2] *16
solution [2,3,3],trivial(2)
[2+16*x,3+16*y,3+16*z]:	unknown -> [27] 64*x+256*x^2+96*y+256*y^2-64*z
[10+16*x,3+16*y,3+16*z]:	unknown -> [28] 96+320*x+256*x^2+96*y+256*y^2-64*z
[2+16*x,3+16*y,11+16*z]:	similiar to [27], is mappable by: {x=>x,y=>y,z=>z}  -32+64*x+256*x^2+96*y+256*y^2-64*z
[10+16*x,3+16*y,11+16*z]:	similiar to [28], is mappable by: {x=>x,y=>y,z=>z}  64+320*x+256*x^2+96*y+256*y^2-64*z
expanding queue[14]^6: 16 + 96*x + 64*x^2 + 48*y + 64*y^2 - 32*z meter=[2,2,2] *16
[6+16*x,11+16*y,7+16*z]:	unknown -> [29] 128+192*x+256*x^2+352*y+256*y^2-64*z
[14+16*x,11+16*y,7+16*z]:	unknown -> [30] 288+448*x+256*x^2+352*y+256*y^2-64*z
[6+16*x,11+16*y,15+16*z]:	similiar to [29], is mappable by: {x=>x,y=>y,z=>z}  96+192*x+256*x^2+352*y+256*y^2-64*z
[14+16*x,11+16*y,15+16*z]:	similiar to [30], is mappable by: {x=>x,y=>y,z=>z}  256+448*x+256*x^2+352*y+256*y^2-64*z
----------------
expanding queue[15]^7: 32*x + 256*x^2 + 256*y^2 - 64*z meter=[2,2,2] *32
solution [1,0,0],trivial(3)
[1+32*x,0+32*y,0+32*z]:	unknown -> [31] 64*x+1024*x^2+1024*y^2-128*z
[1+32*x,16+32*y,0+32*z]:	unknown -> [32] 256+64*x+1024*x^2+1024*y+1024*y^2-128*z
[1+32*x,0+32*y,16+32*z]:	similiar to [31], is mappable by: {x=>x,y=>y,z=>z}  -64+64*x+1024*x^2+1024*y^2-128*z
[1+32*x,16+32*y,16+32*z]:	similiar to [32], is mappable by: {x=>x,y=>y,z=>z}  192+64*x+1024*x^2+1024*y+1024*y^2-128*z
expanding queue[16]^7: 64 + 32*x + 256*x^2 + 256*y + 256*y^2 - 64*z meter=[2,2,2] *32
[1+32*x,8+32*y,0+32*z]:	unknown -> [33] 64+64*x+1024*x^2+512*y+1024*y^2-128*z
[1+32*x,24+32*y,0+32*z]:	negative-1 [33] by {y=>-y-1}
[1+32*x,8+32*y,16+32*z]:	similiar to [33], is mappable by: {x=>x,y=>y,z=>z}  64*x+1024*x^2+512*y+1024*y^2-128*z
[1+32*x,24+32*y,16+32*z]:	unknown -> [34] 512+64*x+1024*x^2+1536*y+1024*y^2-128*z
expanding queue[17]^8: 96 + 288*x + 256*x^2 + 128*y + 256*y^2 - 64*z meter=[2,2,2] *32
[25+32*x,4+32*y,0+32*z]:	unknown -> [35] 640+1600*x+1024*x^2+256*y+1024*y^2-128*z
[25+32*x,20+32*y,0+32*z]:	unknown -> [36] 1024+1600*x+1024*x^2+1280*y+1024*y^2-128*z
[25+32*x,4+32*y,16+32*z]:	similiar to [35], is mappable by: {x=>x,y=>y,z=>z}  576+1600*x+1024*x^2+256*y+1024*y^2-128*z
[25+32*x,20+32*y,16+32*z]:	similiar to [36], is mappable by: {x=>x,y=>y,z=>z}  960+1600*x+1024*x^2+1280*y+1024*y^2-128*z
expanding queue[18]^8: 192 + 288*x + 256*x^2 + 384*y + 256*y^2 - 64*z meter=[2,2,2] *32
[9+32*x,12+32*y,8+32*z]:	unknown -> [37] 192+576*x+1024*x^2+768*y+1024*y^2-128*z
[9+32*x,28+32*y,8+32*z]:	unknown -> [38] 832+576*x+1024*x^2+1792*y+1024*y^2-128*z
[9+32*x,12+32*y,24+32*z]:	similiar to [37], is mappable by: {x=>x,y=>y,z=>z}  128+576*x+1024*x^2+768*y+1024*y^2-128*z
[9+32*x,28+32*y,24+32*z]:	similiar to [38], is mappable by: {x=>x,y=>y,z=>z}  768+576*x+1024*x^2+1792*y+1024*y^2-128*z
expanding queue[19]^9: 96*x + 256*x^2 + 256*y^2 - 64*z meter=[2,2,2] *32
solution [3,0,2],trivial(1)
[3+32*x,0+32*y,2+32*z]:	unknown -> [39] 192*x+1024*x^2+1024*y^2-128*z
[3+32*x,16+32*y,2+32*z]:	unknown -> [40] 256+192*x+1024*x^2+1024*y+1024*y^2-128*z
[3+32*x,0+32*y,18+32*z]:	similiar to [39], is mappable by: {x=>x,y=>y,z=>z}  -64+192*x+1024*x^2+1024*y^2-128*z
[3+32*x,16+32*y,18+32*z]:	similiar to [40], is mappable by: {x=>x,y=>y,z=>z}  192+192*x+1024*x^2+1024*y+1024*y^2-128*z
expanding queue[20]^9: 64 + 96*x + 256*x^2 + 256*y + 256*y^2 - 64*z meter=[2,2,2] *32
[3+32*x,8+32*y,2+32*z]:	unknown -> [41] 64+192*x+1024*x^2+512*y+1024*y^2-128*z
[3+32*x,24+32*y,2+32*z]:	negative-1 [41] by {y=>-y-1}
[3+32*x,8+32*y,18+32*z]:	similiar to [41], is mappable by: {x=>x,y=>y,z=>z}  192*x+1024*x^2+512*y+1024*y^2-128*z
[3+32*x,24+32*y,18+32*z]:	unknown -> [42] 512+192*x+1024*x^2+1536*y+1024*y^2-128*z
expanding queue[21]^10: 128 + 352*x + 256*x^2 + 128*y + 256*y^2 - 64*z meter=[2,2,2] *32
[11+32*x,4+32*y,2+32*z]:	unknown -> [43] 128+704*x+1024*x^2+256*y+1024*y^2-128*z
[11+32*x,20+32*y,2+32*z]:	unknown -> [44] 512+704*x+1024*x^2+1280*y+1024*y^2-128*z
[11+32*x,4+32*y,18+32*z]:	similiar to [43], is mappable by: {x=>x,y=>y,z=>z}  64+704*x+1024*x^2+256*y+1024*y^2-128*z
[11+32*x,20+32*y,18+32*z]:	similiar to [44], is mappable by: {x=>x,y=>y,z=>z}  448+704*x+1024*x^2+1280*y+1024*y^2-128*z
expanding queue[22]^10: 224 + 352*x + 256*x^2 + 384*y + 256*y^2 - 64*z meter=[2,2,2] *32
[27+32*x,12+32*y,10+32*z]:	unknown -> [45] 832+1728*x+1024*x^2+768*y+1024*y^2-128*z
[27+32*x,28+32*y,10+32*z]:	unknown -> [46] 1472+1728*x+1024*x^2+1792*y+1024*y^2-128*z
[27+32*x,12+32*y,26+32*z]:	similiar to [45], is mappable by: {x=>x,y=>y,z=>z}  768+1728*x+1024*x^2+768*y+1024*y^2-128*z
[27+32*x,28+32*y,26+32*z]:	similiar to [46], is mappable by: {x=>x,y=>y,z=>z}  1408+1728*x+1024*x^2+1792*y+1024*y^2-128*z
expanding queue[23]^11: 64*x + 256*x^2 + 32*y + 256*y^2 - 64*z meter=[2,2,2] *32
solution [2,1,1],trivial(2)
[2+32*x,1+32*y,1+32*z]:	unknown -> [47] 128*x+1024*x^2+64*y+1024*y^2-128*z
[18+32*x,1+32*y,1+32*z]:	unknown -> [48] 320+1152*x+1024*x^2+64*y+1024*y^2-128*z
[2+32*x,1+32*y,17+32*z]:	similiar to [47], is mappable by: {x=>x,y=>y,z=>z}  -64+128*x+1024*x^2+64*y+1024*y^2-128*z
[18+32*x,1+32*y,17+32*z]:	similiar to [48], is mappable by: {x=>x,y=>y,z=>z}  256+1152*x+1024*x^2+64*y+1024*y^2-128*z
expanding queue[24]^11: 96 + 320*x + 256*x^2 + 32*y + 256*y^2 - 64*z meter=[2,2,2] *32
[10+32*x,17+32*y,1+32*z]:	unknown -> [49] 384+640*x+1024*x^2+1088*y+1024*y^2-128*z
[26+32*x,17+32*y,1+32*z]:	unknown -> [50] 960+1664*x+1024*x^2+1088*y+1024*y^2-128*z
[10+32*x,17+32*y,17+32*z]:	similiar to [49], is mappable by: {x=>x,y=>y,z=>z}  320+640*x+1024*x^2+1088*y+1024*y^2-128*z
[26+32*x,17+32*y,17+32*z]:	similiar to [50], is mappable by: {x=>x,y=>y,z=>z}  896+1664*x+1024*x^2+1088*y+1024*y^2-128*z
expanding queue[25]^12: 96 + 192*x + 256*x^2 + 288*y + 256*y^2 - 64*z meter=[2,2,2] *32
[6+32*x,25+32*y,5+32*z]:	unknown -> [51] 640+384*x+1024*x^2+1600*y+1024*y^2-128*z
[22+32*x,25+32*y,5+32*z]:	unknown -> [52] 1088+1408*x+1024*x^2+1600*y+1024*y^2-128*z
[6+32*x,25+32*y,21+32*z]:	similiar to [51], is mappable by: {x=>x,y=>y,z=>z}  576+384*x+1024*x^2+1600*y+1024*y^2-128*z
[22+32*x,25+32*y,21+32*z]:	similiar to [52], is mappable by: {x=>x,y=>y,z=>z}  1024+1408*x+1024*x^2+1600*y+1024*y^2-128*z
expanding queue[26]^12: 256 + 448*x + 256*x^2 + 288*y + 256*y^2 - 64*z meter=[2,2,2] *32
[14+32*x,9+32*y,5+32*z]:	unknown -> [53] 256+896*x+1024*x^2+576*y+1024*y^2-128*z
[30+32*x,9+32*y,5+32*z]:	unknown -> [54] 960+1920*x+1024*x^2+576*y+1024*y^2-128*z
[14+32*x,9+32*y,21+32*z]:	similiar to [53], is mappable by: {x=>x,y=>y,z=>z}  192+896*x+1024*x^2+576*y+1024*y^2-128*z
[30+32*x,9+32*y,21+32*z]:	similiar to [54], is mappable by: {x=>x,y=>y,z=>z}  896+1920*x+1024*x^2+576*y+1024*y^2-128*z
expanding queue[27]^13: 64*x + 256*x^2 + 96*y + 256*y^2 - 64*z meter=[2,2,2] *32
solution [2,3,3],trivial(2)
[2+32*x,3+32*y,3+32*z]:	unknown -> [55] 128*x+1024*x^2+192*y+1024*y^2-128*z
[18+32*x,3+32*y,3+32*z]:	unknown -> [56] 320+1152*x+1024*x^2+192*y+1024*y^2-128*z
[2+32*x,3+32*y,19+32*z]:	similiar to [55], is mappable by: {x=>x,y=>y,z=>z}  -64+128*x+1024*x^2+192*y+1024*y^2-128*z
[18+32*x,3+32*y,19+32*z]:	similiar to [56], is mappable by: {x=>x,y=>y,z=>z}  256+1152*x+1024*x^2+192*y+1024*y^2-128*z
expanding queue[28]^13: 96 + 320*x + 256*x^2 + 96*y + 256*y^2 - 64*z meter=[2,2,2] *32
[10+32*x,19+32*y,3+32*z]:	unknown -> [57] 448+640*x+1024*x^2+1216*y+1024*y^2-128*z
[26+32*x,19+32*y,3+32*z]:	unknown -> [58] 1024+1664*x+1024*x^2+1216*y+1024*y^2-128*z
[10+32*x,19+32*y,19+32*z]:	similiar to [57], is mappable by: {x=>x,y=>y,z=>z}  384+640*x+1024*x^2+1216*y+1024*y^2-128*z
[26+32*x,19+32*y,19+32*z]:	similiar to [58], is mappable by: {x=>x,y=>y,z=>z}  960+1664*x+1024*x^2+1216*y+1024*y^2-128*z
expanding queue[29]^14: 128 + 192*x + 256*x^2 + 352*y + 256*y^2 - 64*z meter=[2,2,2] *32
[6+32*x,11+32*y,7+32*z]:	unknown -> [59] 128+384*x+1024*x^2+704*y+1024*y^2-128*z
[22+32*x,11+32*y,7+32*z]:	unknown -> [60] 576+1408*x+1024*x^2+704*y+1024*y^2-128*z
[6+32*x,11+32*y,23+32*z]:	similiar to [59], is mappable by: {x=>x,y=>y,z=>z}  64+384*x+1024*x^2+704*y+1024*y^2-128*z
[22+32*x,11+32*y,23+32*z]:	similiar to [60], is mappable by: {x=>x,y=>y,z=>z}  512+1408*x+1024*x^2+704*y+1024*y^2-128*z
expanding queue[30]^14: 288 + 448*x + 256*x^2 + 352*y + 256*y^2 - 64*z meter=[2,2,2] *32
[14+32*x,27+32*y,7+32*z]:	unknown -> [61] 896+896*x+1024*x^2+1728*y+1024*y^2-128*z
[30+32*x,27+32*y,7+32*z]:	unknown -> [62] 1600+1920*x+1024*x^2+1728*y+1024*y^2-128*z
[14+32*x,27+32*y,23+32*z]:	similiar to [61], is mappable by: {x=>x,y=>y,z=>z}  832+896*x+1024*x^2+1728*y+1024*y^2-128*z
[30+32*x,27+32*y,23+32*z]:	similiar to [62], is mappable by: {x=>x,y=>y,z=>z}  1536+1920*x+1024*x^2+1728*y+1024*y^2-128*z
Maximum level 4 reached at [63]:  - 1 + x^2 + y^2 - 4*z
