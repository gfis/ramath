TranspositionSet={[1,0,2]}
ExponentGCDs=[2,2,1]
Expanding for base=2, reasons+features=base,transpose,similiar,evenexp invall
----------------
expanding queue[0]^-1,meter=[2,2,2]*2:  - 1 + x^2 + y^2 - 4*z
[1,0,0]:	unknown -> [1] 4*x+4*x^2+4*y^2-8*z
[0,1,0]:	transposed [1] {x=>1+2*x,y=>2*y,z=>2*z} by [1,0,2]
[1,0,1]:	similiar   [1], is mappable by: {x=>x,y=>y,z=>z}  -4+4*x+4*x^2+4*y^2-8*z
[0,1,1]:	unknown -> [2] -4+4*x^2+4*y+4*y^2-8*z
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 4*x + 4*x^2 + 4*y^2 - 8*z
solution [1,0,0],trivial(3)
[1,0,0]:	unknown -> [3] 8*x+16*x^2+16*y^2-16*z
[3,0,0]:	negative-1 [3] by {x=>-x-1}
[1,0,2]:	similiar   [3], is mappable by: {x=>x,y=>y,z=>z}  -8+8*x+16*x^2+16*y^2-16*z
[3,0,2]:	unknown -> [4] 24*x+16*x^2+16*y^2-16*z
expanding queue[2]^0,meter=[2,2,2]*4:  - 4 + 4*x^2 + 4*y + 4*y^2 - 8*z
[2,1,1]:	unknown -> [5] 16*x+16*x^2+8*y+16*y^2-16*z
[2,3,1]:	negative-1 [5] by {y=>-y-1}
[2,1,3]:	similiar   [5], is mappable by: {x=>x,y=>y,z=>z}  -8+16*x+16*x^2+8*y+16*y^2-16*z
[2,3,3]:	unknown -> [6] 16*x+16*x^2+24*y+16*y^2-16*z
----------------
expanding queue[3]^1,meter=[2,2,2]*8: 8*x + 16*x^2 + 16*y^2 - 16*z
solution [1,0,0],trivial(3)
[1,0,0]:	unknown -> [7] 16*x+64*x^2+64*y^2-32*z
[1,4,0]:	unknown -> [8] 16+16*x+64*x^2+64*y+64*y^2-32*z
[1,0,4]:	similiar   [7], is mappable by: {x=>x,y=>y,z=>z}  -16+16*x+64*x^2+64*y^2-32*z
[1,4,4]:	similiar   [8], is mappable by: {x=>x,y=>y,z=>z}  16*x+64*x^2+64*y+64*y^2-32*z
expanding queue[4]^1,meter=[2,2,2]*8: 24*x + 16*x^2 + 16*y^2 - 16*z
solution [3,0,2],trivial(1)
[3,0,2]:	unknown -> [9] 48*x+64*x^2+64*y^2-32*z
[3,4,2]:	unknown -> [10] 16+48*x+64*x^2+64*y+64*y^2-32*z
[3,0,6]:	similiar   [9], is mappable by: {x=>x,y=>y,z=>z}  -16+48*x+64*x^2+64*y^2-32*z
[3,4,6]:	similiar   [10], is mappable by: {x=>x,y=>y,z=>z}  48*x+64*x^2+64*y+64*y^2-32*z
expanding queue[5]^2,meter=[2,2,2]*8: 16*x + 16*x^2 + 8*y + 16*y^2 - 16*z
solution [2,1,1],trivial(2)
[2,1,1]:	unknown -> [11] 32*x+64*x^2+16*y+64*y^2-32*z
[6,1,1]:	negative-1 [11] by {x=>-x-1}
[2,1,5]:	similiar   [11], is mappable by: {x=>x,y=>y,z=>z}  -16+32*x+64*x^2+16*y+64*y^2-32*z
[6,1,5]:	unknown -> [12] 16+96*x+64*x^2+16*y+64*y^2-32*z
expanding queue[6]^2,meter=[2,2,2]*8: 16*x + 16*x^2 + 24*y + 16*y^2 - 16*z
solution [2,3,3],trivial(2)
[2,3,3]:	unknown -> [13] 32*x+64*x^2+48*y+64*y^2-32*z
[6,3,3]:	negative-1 [13] by {x=>-x-1}
[2,3,7]:	similiar   [13], is mappable by: {x=>x,y=>y,z=>z}  -16+32*x+64*x^2+48*y+64*y^2-32*z
[6,3,7]:	unknown -> [14] 16+96*x+64*x^2+48*y+64*y^2-32*z
----------------
expanding queue[7]^3,meter=[2,2,2]*16: 16*x + 64*x^2 + 64*y^2 - 32*z
solution [1,0,0],trivial(3)
[1,0,0]:	unknown -> [15] 32*x+256*x^2+256*y^2-64*z
[1,8,0]:	unknown -> [16] 64+32*x+256*x^2+256*y+256*y^2-64*z
[1,0,8]:	similiar   [15], is mappable by: {x=>x,y=>y,z=>z}  -32+32*x+256*x^2+256*y^2-64*z
[1,8,8]:	similiar   [16], is mappable by: {x=>x,y=>y,z=>z}  32+32*x+256*x^2+256*y+256*y^2-64*z
expanding queue[8]^3,meter=[2,2,2]*16: 16 + 16*x + 64*x^2 + 64*y + 64*y^2 - 32*z
[9,4,0]:	unknown -> [17] 96+288*x+256*x^2+128*y+256*y^2-64*z
[9,12,0]:	negative-1 [17] by {y=>-y-1}
[9,4,8]:	similiar   [17], is mappable by: {x=>x,y=>y,z=>z}  64+288*x+256*x^2+128*y+256*y^2-64*z
[9,12,8]:	unknown -> [18] 192+288*x+256*x^2+384*y+256*y^2-64*z
expanding queue[9]^4,meter=[2,2,2]*16: 48*x + 64*x^2 + 64*y^2 - 32*z
solution [3,0,2],trivial(1)
[3,0,2]:	unknown -> [19] 96*x+256*x^2+256*y^2-64*z
[3,8,2]:	unknown -> [20] 64+96*x+256*x^2+256*y+256*y^2-64*z
[3,0,10]:	similiar   [19], is mappable by: {x=>x,y=>y,z=>z}  -32+96*x+256*x^2+256*y^2-64*z
[3,8,10]:	similiar   [20], is mappable by: {x=>x,y=>y,z=>z}  32+96*x+256*x^2+256*y+256*y^2-64*z
expanding queue[10]^4,meter=[2,2,2]*16: 16 + 48*x + 64*x^2 + 64*y + 64*y^2 - 32*z
[11,4,2]:	unknown -> [21] 128+352*x+256*x^2+128*y+256*y^2-64*z
[11,12,2]:	negative-1 [21] by {y=>-y-1}
[11,4,10]:	similiar   [21], is mappable by: {x=>x,y=>y,z=>z}  96+352*x+256*x^2+128*y+256*y^2-64*z
[11,12,10]:	unknown -> [22] 224+352*x+256*x^2+384*y+256*y^2-64*z
expanding queue[11]^5,meter=[2,2,2]*16: 32*x + 64*x^2 + 16*y + 64*y^2 - 32*z
solution [2,1,1],trivial(2)
[2,1,1]:	unknown -> [23] 64*x+256*x^2+32*y+256*y^2-64*z
[10,1,1]:	unknown -> [24] 96+320*x+256*x^2+32*y+256*y^2-64*z
[2,1,9]:	similiar   [23], is mappable by: {x=>x,y=>y,z=>z}  -32+64*x+256*x^2+32*y+256*y^2-64*z
[10,1,9]:	similiar   [24], is mappable by: {x=>x,y=>y,z=>z}  64+320*x+256*x^2+32*y+256*y^2-64*z
expanding queue[12]^5,meter=[2,2,2]*16: 16 + 96*x + 64*x^2 + 16*y + 64*y^2 - 32*z
[6,9,5]:	unknown -> [25] 96+192*x+256*x^2+288*y+256*y^2-64*z
[14,9,5]:	unknown -> [26] 256+448*x+256*x^2+288*y+256*y^2-64*z
[6,9,13]:	similiar   [25], is mappable by: {x=>x,y=>y,z=>z}  64+192*x+256*x^2+288*y+256*y^2-64*z
[14,9,13]:	similiar   [26], is mappable by: {x=>x,y=>y,z=>z}  224+448*x+256*x^2+288*y+256*y^2-64*z
expanding queue[13]^6,meter=[2,2,2]*16: 32*x + 64*x^2 + 48*y + 64*y^2 - 32*z
solution [2,3,3],trivial(2)
[2,3,3]:	unknown -> [27] 64*x+256*x^2+96*y+256*y^2-64*z
[10,3,3]:	unknown -> [28] 96+320*x+256*x^2+96*y+256*y^2-64*z
[2,3,11]:	similiar   [27], is mappable by: {x=>x,y=>y,z=>z}  -32+64*x+256*x^2+96*y+256*y^2-64*z
[10,3,11]:	similiar   [28], is mappable by: {x=>x,y=>y,z=>z}  64+320*x+256*x^2+96*y+256*y^2-64*z
expanding queue[14]^6,meter=[2,2,2]*16: 16 + 96*x + 64*x^2 + 48*y + 64*y^2 - 32*z
[6,11,7]:	unknown -> [29] 128+192*x+256*x^2+352*y+256*y^2-64*z
[14,11,7]:	unknown -> [30] 288+448*x+256*x^2+352*y+256*y^2-64*z
[6,11,15]:	similiar   [29], is mappable by: {x=>x,y=>y,z=>z}  96+192*x+256*x^2+352*y+256*y^2-64*z
[14,11,15]:	similiar   [30], is mappable by: {x=>x,y=>y,z=>z}  256+448*x+256*x^2+352*y+256*y^2-64*z
----------------
expanding queue[15]^7,meter=[2,2,2]*32: 32*x + 256*x^2 + 256*y^2 - 64*z
solution [1,0,0],trivial(3)
[1,0,0]:	unknown -> [31] 64*x+1024*x^2+1024*y^2-128*z
[1,16,0]:	unknown -> [32] 256+64*x+1024*x^2+1024*y+1024*y^2-128*z
[1,0,16]:	similiar   [31], is mappable by: {x=>x,y=>y,z=>z}  -64+64*x+1024*x^2+1024*y^2-128*z
[1,16,16]:	similiar   [32], is mappable by: {x=>x,y=>y,z=>z}  192+64*x+1024*x^2+1024*y+1024*y^2-128*z
expanding queue[16]^7,meter=[2,2,2]*32: 64 + 32*x + 256*x^2 + 256*y + 256*y^2 - 64*z
[1,8,0]:	unknown -> [33] 64+64*x+1024*x^2+512*y+1024*y^2-128*z
[1,24,0]:	negative-1 [33] by {y=>-y-1}
[1,8,16]:	similiar   [33], is mappable by: {x=>x,y=>y,z=>z}  64*x+1024*x^2+512*y+1024*y^2-128*z
[1,24,16]:	unknown -> [34] 512+64*x+1024*x^2+1536*y+1024*y^2-128*z
expanding queue[17]^8,meter=[2,2,2]*32: 96 + 288*x + 256*x^2 + 128*y + 256*y^2 - 64*z
[25,4,0]:	unknown -> [35] 640+1600*x+1024*x^2+256*y+1024*y^2-128*z
[25,20,0]:	unknown -> [36] 1024+1600*x+1024*x^2+1280*y+1024*y^2-128*z
[25,4,16]:	similiar   [35], is mappable by: {x=>x,y=>y,z=>z}  576+1600*x+1024*x^2+256*y+1024*y^2-128*z
[25,20,16]:	similiar   [36], is mappable by: {x=>x,y=>y,z=>z}  960+1600*x+1024*x^2+1280*y+1024*y^2-128*z
expanding queue[18]^8,meter=[2,2,2]*32: 192 + 288*x + 256*x^2 + 384*y + 256*y^2 - 64*z
[9,12,8]:	unknown -> [37] 192+576*x+1024*x^2+768*y+1024*y^2-128*z
[9,28,8]:	unknown -> [38] 832+576*x+1024*x^2+1792*y+1024*y^2-128*z
[9,12,24]:	similiar   [37], is mappable by: {x=>x,y=>y,z=>z}  128+576*x+1024*x^2+768*y+1024*y^2-128*z
[9,28,24]:	similiar   [38], is mappable by: {x=>x,y=>y,z=>z}  768+576*x+1024*x^2+1792*y+1024*y^2-128*z
expanding queue[19]^9,meter=[2,2,2]*32: 96*x + 256*x^2 + 256*y^2 - 64*z
solution [3,0,2],trivial(1)
[3,0,2]:	unknown -> [39] 192*x+1024*x^2+1024*y^2-128*z
[3,16,2]:	unknown -> [40] 256+192*x+1024*x^2+1024*y+1024*y^2-128*z
[3,0,18]:	similiar   [39], is mappable by: {x=>x,y=>y,z=>z}  -64+192*x+1024*x^2+1024*y^2-128*z
[3,16,18]:	similiar   [40], is mappable by: {x=>x,y=>y,z=>z}  192+192*x+1024*x^2+1024*y+1024*y^2-128*z
expanding queue[20]^9,meter=[2,2,2]*32: 64 + 96*x + 256*x^2 + 256*y + 256*y^2 - 64*z
[3,8,2]:	unknown -> [41] 64+192*x+1024*x^2+512*y+1024*y^2-128*z
[3,24,2]:	negative-1 [41] by {y=>-y-1}
[3,8,18]:	similiar   [41], is mappable by: {x=>x,y=>y,z=>z}  192*x+1024*x^2+512*y+1024*y^2-128*z
[3,24,18]:	unknown -> [42] 512+192*x+1024*x^2+1536*y+1024*y^2-128*z
expanding queue[21]^10,meter=[2,2,2]*32: 128 + 352*x + 256*x^2 + 128*y + 256*y^2 - 64*z
[11,4,2]:	unknown -> [43] 128+704*x+1024*x^2+256*y+1024*y^2-128*z
[11,20,2]:	unknown -> [44] 512+704*x+1024*x^2+1280*y+1024*y^2-128*z
[11,4,18]:	similiar   [43], is mappable by: {x=>x,y=>y,z=>z}  64+704*x+1024*x^2+256*y+1024*y^2-128*z
[11,20,18]:	similiar   [44], is mappable by: {x=>x,y=>y,z=>z}  448+704*x+1024*x^2+1280*y+1024*y^2-128*z
expanding queue[22]^10,meter=[2,2,2]*32: 224 + 352*x + 256*x^2 + 384*y + 256*y^2 - 64*z
[27,12,10]:	unknown -> [45] 832+1728*x+1024*x^2+768*y+1024*y^2-128*z
[27,28,10]:	unknown -> [46] 1472+1728*x+1024*x^2+1792*y+1024*y^2-128*z
[27,12,26]:	similiar   [45], is mappable by: {x=>x,y=>y,z=>z}  768+1728*x+1024*x^2+768*y+1024*y^2-128*z
[27,28,26]:	similiar   [46], is mappable by: {x=>x,y=>y,z=>z}  1408+1728*x+1024*x^2+1792*y+1024*y^2-128*z
expanding queue[23]^11,meter=[2,2,2]*32: 64*x + 256*x^2 + 32*y + 256*y^2 - 64*z
solution [2,1,1],trivial(2)
[2,1,1]:	unknown -> [47] 128*x+1024*x^2+64*y+1024*y^2-128*z
[18,1,1]:	unknown -> [48] 320+1152*x+1024*x^2+64*y+1024*y^2-128*z
[2,1,17]:	similiar   [47], is mappable by: {x=>x,y=>y,z=>z}  -64+128*x+1024*x^2+64*y+1024*y^2-128*z
[18,1,17]:	similiar   [48], is mappable by: {x=>x,y=>y,z=>z}  256+1152*x+1024*x^2+64*y+1024*y^2-128*z
expanding queue[24]^11,meter=[2,2,2]*32: 96 + 320*x + 256*x^2 + 32*y + 256*y^2 - 64*z
[10,17,1]:	unknown -> [49] 384+640*x+1024*x^2+1088*y+1024*y^2-128*z
[26,17,1]:	unknown -> [50] 960+1664*x+1024*x^2+1088*y+1024*y^2-128*z
[10,17,17]:	similiar   [49], is mappable by: {x=>x,y=>y,z=>z}  320+640*x+1024*x^2+1088*y+1024*y^2-128*z
[26,17,17]:	similiar   [50], is mappable by: {x=>x,y=>y,z=>z}  896+1664*x+1024*x^2+1088*y+1024*y^2-128*z
expanding queue[25]^12,meter=[2,2,2]*32: 96 + 192*x + 256*x^2 + 288*y + 256*y^2 - 64*z
[6,25,5]:	unknown -> [51] 640+384*x+1024*x^2+1600*y+1024*y^2-128*z
[22,25,5]:	unknown -> [52] 1088+1408*x+1024*x^2+1600*y+1024*y^2-128*z
[6,25,21]:	similiar   [51], is mappable by: {x=>x,y=>y,z=>z}  576+384*x+1024*x^2+1600*y+1024*y^2-128*z
[22,25,21]:	similiar   [52], is mappable by: {x=>x,y=>y,z=>z}  1024+1408*x+1024*x^2+1600*y+1024*y^2-128*z
expanding queue[26]^12,meter=[2,2,2]*32: 256 + 448*x + 256*x^2 + 288*y + 256*y^2 - 64*z
[14,9,5]:	unknown -> [53] 256+896*x+1024*x^2+576*y+1024*y^2-128*z
[30,9,5]:	unknown -> [54] 960+1920*x+1024*x^2+576*y+1024*y^2-128*z
[14,9,21]:	similiar   [53], is mappable by: {x=>x,y=>y,z=>z}  192+896*x+1024*x^2+576*y+1024*y^2-128*z
[30,9,21]:	similiar   [54], is mappable by: {x=>x,y=>y,z=>z}  896+1920*x+1024*x^2+576*y+1024*y^2-128*z
expanding queue[27]^13,meter=[2,2,2]*32: 64*x + 256*x^2 + 96*y + 256*y^2 - 64*z
solution [2,3,3],trivial(2)
[2,3,3]:	unknown -> [55] 128*x+1024*x^2+192*y+1024*y^2-128*z
[18,3,3]:	unknown -> [56] 320+1152*x+1024*x^2+192*y+1024*y^2-128*z
[2,3,19]:	similiar   [55], is mappable by: {x=>x,y=>y,z=>z}  -64+128*x+1024*x^2+192*y+1024*y^2-128*z
[18,3,19]:	similiar   [56], is mappable by: {x=>x,y=>y,z=>z}  256+1152*x+1024*x^2+192*y+1024*y^2-128*z
expanding queue[28]^13,meter=[2,2,2]*32: 96 + 320*x + 256*x^2 + 96*y + 256*y^2 - 64*z
[10,19,3]:	unknown -> [57] 448+640*x+1024*x^2+1216*y+1024*y^2-128*z
[26,19,3]:	unknown -> [58] 1024+1664*x+1024*x^2+1216*y+1024*y^2-128*z
[10,19,19]:	similiar   [57], is mappable by: {x=>x,y=>y,z=>z}  384+640*x+1024*x^2+1216*y+1024*y^2-128*z
[26,19,19]:	similiar   [58], is mappable by: {x=>x,y=>y,z=>z}  960+1664*x+1024*x^2+1216*y+1024*y^2-128*z
expanding queue[29]^14,meter=[2,2,2]*32: 128 + 192*x + 256*x^2 + 352*y + 256*y^2 - 64*z
[6,11,7]:	unknown -> [59] 128+384*x+1024*x^2+704*y+1024*y^2-128*z
[22,11,7]:	unknown -> [60] 576+1408*x+1024*x^2+704*y+1024*y^2-128*z
[6,11,23]:	similiar   [59], is mappable by: {x=>x,y=>y,z=>z}  64+384*x+1024*x^2+704*y+1024*y^2-128*z
[22,11,23]:	similiar   [60], is mappable by: {x=>x,y=>y,z=>z}  512+1408*x+1024*x^2+704*y+1024*y^2-128*z
expanding queue[30]^14,meter=[2,2,2]*32: 288 + 448*x + 256*x^2 + 352*y + 256*y^2 - 64*z
[14,27,7]:	unknown -> [61] 896+896*x+1024*x^2+1728*y+1024*y^2-128*z
[30,27,7]:	unknown -> [62] 1600+1920*x+1024*x^2+1728*y+1024*y^2-128*z
[14,27,23]:	similiar   [61], is mappable by: {x=>x,y=>y,z=>z}  832+896*x+1024*x^2+1728*y+1024*y^2-128*z
[30,27,23]:	similiar   [62], is mappable by: {x=>x,y=>y,z=>z}  1536+1920*x+1024*x^2+1728*y+1024*y^2-128*z
Maximum level 4 reached at [63]:  - 1 + x^2 + y^2 - 4*z
