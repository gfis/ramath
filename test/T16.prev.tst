Expanding for base=2, transposables={{a,b},{c}}, reasons+features=base,transpose,similiar,evenexp, exponentParities=[0,0,0]
----------------
expanding queue[0]^-1: a^2 + b^2 - c^2 meter=[2,2,2] *2
solution [0,0,0],trivial(3)
[0+2*a,0+2*b,0+2*c]: similiar to [0], same  4*a^2+4*b^2-4*c^2
[1+2*a,0+2*b,1+2*c]: unknown 4*a+4*a^2+4*b^2-4*c-4*c^2 -> [1]
[0+2*a,1+2*b,1+2*c]: transposition of [1] {0/0+2*b,0/1+2*a,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b
----------------
expanding queue[1]^0: 4*a + 4*a^2 + 4*b^2 - 4*c - 4*c^2 meter=[2,2,2] *4
solution [1,0,1],trivial(3)
[1+4*a,0+4*b,1+4*c]: unknown 8*a+16*a^2+16*b^2-8*c-16*c^2 -> [2]
[3+4*a,0+4*b,1+4*c]: unknown 8+24*a+16*a^2+16*b^2-8*c-16*c^2 -> [3]
[1+4*a,0+4*b,3+4*c]: unknown -8+8*a+16*a^2+16*b^2-24*c-16*c^2 -> [4]
[3+4*a,0+4*b,3+4*c]: unknown 24*a+16*a^2+16*b^2-24*c-16*c^2 -> [5]
----------------
expanding queue[2]^1: 8*a + 16*a^2 + 16*b^2 - 8*c - 16*c^2 meter=[2,1,2] *8
solution [1,0,1],trivial(3)
[1+8*a,0+4*b,1+8*c]: unknown 16*a+64*a^2+16*b^2-16*c-64*c^2 -> [6]
[5+8*a,0+4*b,5+8*c]: unknown 80*a+64*a^2+16*b^2-80*c-64*c^2 -> [7]
expanding queue[3]^1: 8 + 24*a + 16*a^2 + 16*b^2 - 8*c - 16*c^2 meter=[2,1,2] *8
[7+8*a,0+4*b,1+8*c]: unknown 48+112*a+64*a^2+16*b^2-16*c-64*c^2 -> [8]
[3+8*a,0+4*b,5+8*c]: unknown -16+48*a+64*a^2+16*b^2-80*c-64*c^2 -> [9]
expanding queue[4]^1:  - 8 + 8*a + 16*a^2 + 16*b^2 - 24*c - 16*c^2 meter=[2,1,2] *8
[5+8*a,0+4*b,3+8*c]: unknown 16+80*a+64*a^2+16*b^2-48*c-64*c^2 -> [10]
[1+8*a,0+4*b,7+8*c]: unknown -48+16*a+64*a^2+16*b^2-112*c-64*c^2 -> [11]
expanding queue[5]^1: 24*a + 16*a^2 + 16*b^2 - 24*c - 16*c^2 meter=[2,1,2] *8
solution [3,0,3],trivial(3)
[3+8*a,0+4*b,3+8*c]: unknown 48*a+64*a^2+16*b^2-48*c-64*c^2 -> [12]
[7+8*a,0+4*b,7+8*c]: unknown 112*a+64*a^2+16*b^2-112*c-64*c^2 -> [13]
----------------
expanding queue[6]^2: 16*a + 64*a^2 + 16*b^2 - 16*c - 64*c^2 meter=[2,2,2] *16
solution [1,0,1],trivial(3)
[1+16*a,0+8*b,1+16*c]: unknown 32*a+256*a^2+64*b^2-32*c-256*c^2 -> [14]
[9+16*a,4+8*b,1+16*c]: unknown 96+288*a+256*a^2+64*b+64*b^2-32*c-256*c^2 -> [15]
[9+16*a,0+8*b,9+16*c]: unknown 288*a+256*a^2+64*b^2-288*c-256*c^2 -> [16]
[1+16*a,4+8*b,9+16*c]: unknown -64+32*a+256*a^2+64*b+64*b^2-288*c-256*c^2 -> [17]
expanding queue[7]^2: 80*a + 64*a^2 + 16*b^2 - 80*c - 64*c^2 meter=[2,2,2] *16
solution [5,0,5],trivial(3)
[5+16*a,0+8*b,5+16*c]: unknown 160*a+256*a^2+64*b^2-160*c-256*c^2 -> [18]
[13+16*a,4+8*b,5+16*c]: unknown 160+416*a+256*a^2+64*b+64*b^2-160*c-256*c^2 -> [19]
[13+16*a,0+8*b,13+16*c]: unknown 416*a+256*a^2+64*b^2-416*c-256*c^2 -> [20]
[5+16*a,4+8*b,13+16*c]: unknown -128+160*a+256*a^2+64*b+64*b^2-416*c-256*c^2 -> [21]
expanding queue[8]^3: 48 + 112*a + 64*a^2 + 16*b^2 - 16*c - 64*c^2 meter=[2,2,2] *16
[15+16*a,0+8*b,1+16*c]: unknown 224+480*a+256*a^2+64*b^2-32*c-256*c^2 -> [22]
[7+16*a,4+8*b,1+16*c]: unknown 64+224*a+256*a^2+64*b+64*b^2-32*c-256*c^2 -> [23]
[7+16*a,0+8*b,9+16*c]: unknown -32+224*a+256*a^2+64*b^2-288*c-256*c^2 -> [24]
[15+16*a,4+8*b,9+16*c]: unknown 160+480*a+256*a^2+64*b+64*b^2-288*c-256*c^2 -> [25]
expanding queue[9]^3:  - 16 + 48*a + 64*a^2 + 16*b^2 - 80*c - 64*c^2 meter=[2,2,2] *16
[11+16*a,0+8*b,5+16*c]: unknown 96+352*a+256*a^2+64*b^2-160*c-256*c^2 -> [26]
[3+16*a,4+8*b,5+16*c]: unknown 96*a+256*a^2+64*b+64*b^2-160*c-256*c^2 -> [27]
[3+16*a,0+8*b,13+16*c]: unknown -160+96*a+256*a^2+64*b^2-416*c-256*c^2 -> [28]
[11+16*a,4+8*b,13+16*c]: unknown -32+352*a+256*a^2+64*b+64*b^2-416*c-256*c^2 -> [29]
expanding queue[10]^4: 16 + 80*a + 64*a^2 + 16*b^2 - 48*c - 64*c^2 meter=[2,2,2] *16
[13+16*a,0+8*b,3+16*c]: unknown 160+416*a+256*a^2+64*b^2-96*c-256*c^2 -> [30]
[5+16*a,4+8*b,3+16*c]: unknown 32+160*a+256*a^2+64*b+64*b^2-96*c-256*c^2 -> [31]
[5+16*a,0+8*b,11+16*c]: unknown -96+160*a+256*a^2+64*b^2-352*c-256*c^2 -> [32]
[13+16*a,4+8*b,11+16*c]: unknown 64+416*a+256*a^2+64*b+64*b^2-352*c-256*c^2 -> [33]
expanding queue[11]^4:  - 48 + 16*a + 64*a^2 + 16*b^2 - 112*c - 64*c^2 meter=[2,2,2] *16
[9+16*a,0+8*b,7+16*c]: unknown 32+288*a+256*a^2+64*b^2-224*c-256*c^2 -> [34]
[1+16*a,4+8*b,7+16*c]: unknown -32+32*a+256*a^2+64*b+64*b^2-224*c-256*c^2 -> [35]
[1+16*a,0+8*b,15+16*c]: unknown -224+32*a+256*a^2+64*b^2-480*c-256*c^2 -> [36]
[9+16*a,4+8*b,15+16*c]: unknown -128+288*a+256*a^2+64*b+64*b^2-480*c-256*c^2 -> [37]
expanding queue[12]^5: 48*a + 64*a^2 + 16*b^2 - 48*c - 64*c^2 meter=[2,2,2] *16
solution [3,0,3],trivial(3)
[3+16*a,0+8*b,3+16*c]: unknown 96*a+256*a^2+64*b^2-96*c-256*c^2 -> [38]
[11+16*a,4+8*b,3+16*c]: unknown 128+352*a+256*a^2+64*b+64*b^2-96*c-256*c^2 -> [39]
[11+16*a,0+8*b,11+16*c]: unknown 352*a+256*a^2+64*b^2-352*c-256*c^2 -> [40]
[3+16*a,4+8*b,11+16*c]: unknown -96+96*a+256*a^2+64*b+64*b^2-352*c-256*c^2 -> [41]
expanding queue[13]^5: 112*a + 64*a^2 + 16*b^2 - 112*c - 64*c^2 meter=[2,2,2] *16
solution [7,0,7],trivial(3)
[7+16*a,0+8*b,7+16*c]: unknown 224*a+256*a^2+64*b^2-224*c-256*c^2 -> [42]
[15+16*a,4+8*b,7+16*c]: unknown 192+480*a+256*a^2+64*b+64*b^2-224*c-256*c^2 -> [43]
[15+16*a,0+8*b,15+16*c]: unknown 480*a+256*a^2+64*b^2-480*c-256*c^2 -> [44]
[7+16*a,4+8*b,15+16*c]: unknown -160+224*a+256*a^2+64*b+64*b^2-480*c-256*c^2 -> [45]
----------------
expanding queue[14]^6: 32*a + 256*a^2 + 64*b^2 - 32*c - 256*c^2 meter=[2,1,2] *32
solution [1,0,1],trivial(3)
[1+32*a,0+8*b,1+32*c]: unknown 64*a+1024*a^2+64*b^2-64*c-1024*c^2 -> [46]
[17+32*a,0+8*b,17+32*c]: unknown 1088*a+1024*a^2+64*b^2-1088*c-1024*c^2 -> [47]
expanding queue[15]^6: 96 + 288*a + 256*a^2 + 64*b + 64*b^2 - 32*c - 256*c^2 meter=[2,1,2] *32
[25+32*a,4+8*b,1+32*c]: unknown 640+1600*a+1024*a^2+64*b+64*b^2-64*c-1024*c^2 -> [48]
[9+32*a,4+8*b,17+32*c]: unknown -192+576*a+1024*a^2+64*b+64*b^2-1088*c-1024*c^2 -> [49]
expanding queue[16]^6: 288*a + 256*a^2 + 64*b^2 - 288*c - 256*c^2 meter=[2,1,2] *32
solution [9,0,9],trivial(3)
[9+32*a,0+8*b,9+32*c]: unknown 576*a+1024*a^2+64*b^2-576*c-1024*c^2 -> [50]
[25+32*a,0+8*b,25+32*c]: unknown 1600*a+1024*a^2+64*b^2-1600*c-1024*c^2 -> [51]
expanding queue[17]^6:  - 64 + 32*a + 256*a^2 + 64*b + 64*b^2 - 288*c - 256*c^2 meter=[2,1,2] *32
[1+32*a,4+8*b,9+32*c]: unknown -64+64*a+1024*a^2+64*b+64*b^2-576*c-1024*c^2 -> [52]
[17+32*a,4+8*b,25+32*c]: unknown -320+1088*a+1024*a^2+64*b+64*b^2-1600*c-1024*c^2 -> [53]
expanding queue[18]^7: 160*a + 256*a^2 + 64*b^2 - 160*c - 256*c^2 meter=[2,1,2] *32
solution [5,0,5],trivial(3)
[5+32*a,0+8*b,5+32*c]: unknown 320*a+1024*a^2+64*b^2-320*c-1024*c^2 -> [54]
[21+32*a,0+8*b,21+32*c]: unknown 1344*a+1024*a^2+64*b^2-1344*c-1024*c^2 -> [55]
expanding queue[19]^7: 160 + 416*a + 256*a^2 + 64*b + 64*b^2 - 160*c - 256*c^2 meter=[2,1,2] *32
[29+32*a,4+8*b,5+32*c]: unknown 832+1856*a+1024*a^2+64*b+64*b^2-320*c-1024*c^2 -> [56]
[13+32*a,4+8*b,21+32*c]: unknown -256+832*a+1024*a^2+64*b+64*b^2-1344*c-1024*c^2 -> [57]
expanding queue[20]^7: 416*a + 256*a^2 + 64*b^2 - 416*c - 256*c^2 meter=[2,1,2] *32
solution [13,0,13],trivial(3)
[13+32*a,0+8*b,13+32*c]: unknown 832*a+1024*a^2+64*b^2-832*c-1024*c^2 -> [58]
[29+32*a,0+8*b,29+32*c]: unknown 1856*a+1024*a^2+64*b^2-1856*c-1024*c^2 -> [59]
expanding queue[21]^7:  - 128 + 160*a + 256*a^2 + 64*b + 64*b^2 - 416*c - 256*c^2 meter=[2,1,2] *32
[5+32*a,4+8*b,13+32*c]: unknown -128+320*a+1024*a^2+64*b+64*b^2-832*c-1024*c^2 -> [60]
[21+32*a,4+8*b,29+32*c]: unknown -384+1344*a+1024*a^2+64*b+64*b^2-1856*c-1024*c^2 -> [61]
expanding queue[22]^8: 224 + 480*a + 256*a^2 + 64*b^2 - 32*c - 256*c^2 meter=[2,1,2] *32
[31+32*a,0+8*b,1+32*c]: unknown 960+1984*a+1024*a^2+64*b^2-64*c-1024*c^2 -> [62]
[15+32*a,0+8*b,17+32*c]: unknown -64+960*a+1024*a^2+64*b^2-1088*c-1024*c^2 -> [63]
expanding queue[23]^8: 64 + 224*a + 256*a^2 + 64*b + 64*b^2 - 32*c - 256*c^2 meter=[2,1,2] *32
[7+32*a,4+8*b,1+32*c]: unknown 64+448*a+1024*a^2+64*b+64*b^2-64*c-1024*c^2 -> [64]
[23+32*a,4+8*b,17+32*c]: unknown 256+1472*a+1024*a^2+64*b+64*b^2-1088*c-1024*c^2 -> [65]
expanding queue[24]^8:  - 32 + 224*a + 256*a^2 + 64*b^2 - 288*c - 256*c^2 meter=[2,1,2] *32
[23+32*a,0+8*b,9+32*c]: unknown 448+1472*a+1024*a^2+64*b^2-576*c-1024*c^2 -> [66]
[7+32*a,0+8*b,25+32*c]: unknown -576+448*a+1024*a^2+64*b^2-1600*c-1024*c^2 -> [67]
expanding queue[25]^8: 160 + 480*a + 256*a^2 + 64*b + 64*b^2 - 288*c - 256*c^2 meter=[2,1,2] *32
[31+32*a,4+8*b,9+32*c]: unknown 896+1984*a+1024*a^2+64*b+64*b^2-576*c-1024*c^2 -> [68]
[15+32*a,4+8*b,25+32*c]: unknown -384+960*a+1024*a^2+64*b+64*b^2-1600*c-1024*c^2 -> [69]
expanding queue[26]^9: 96 + 352*a + 256*a^2 + 64*b^2 - 160*c - 256*c^2 meter=[2,1,2] *32
[27+32*a,0+8*b,5+32*c]: unknown 704+1728*a+1024*a^2+64*b^2-320*c-1024*c^2 -> [70]
[11+32*a,0+8*b,21+32*c]: unknown -320+704*a+1024*a^2+64*b^2-1344*c-1024*c^2 -> [71]
expanding queue[27]^9: 96*a + 256*a^2 + 64*b + 64*b^2 - 160*c - 256*c^2 meter=[2,1,2] *32
solution [3,4,5],NONTRIVIAL
[3+32*a,4+8*b,5+32*c]: unknown 192*a+1024*a^2+64*b+64*b^2-320*c-1024*c^2 -> [72]
[19+32*a,4+8*b,21+32*c]: unknown -64+1216*a+1024*a^2+64*b+64*b^2-1344*c-1024*c^2 -> [73]
expanding queue[28]^9:  - 160 + 96*a + 256*a^2 + 64*b^2 - 416*c - 256*c^2 meter=[2,1,2] *32
[19+32*a,0+8*b,13+32*c]: unknown 192+1216*a+1024*a^2+64*b^2-832*c-1024*c^2 -> [74]
[3+32*a,0+8*b,29+32*c]: unknown -832+192*a+1024*a^2+64*b^2-1856*c-1024*c^2 -> [75]
expanding queue[29]^9:  - 32 + 352*a + 256*a^2 + 64*b + 64*b^2 - 416*c - 256*c^2 meter=[2,1,2] *32
[27+32*a,4+8*b,13+32*c]: unknown 576+1728*a+1024*a^2+64*b+64*b^2-832*c-1024*c^2 -> [76]
[11+32*a,4+8*b,29+32*c]: unknown -704+704*a+1024*a^2+64*b+64*b^2-1856*c-1024*c^2 -> [77]
expanding queue[30]^10: 160 + 416*a + 256*a^2 + 64*b^2 - 96*c - 256*c^2 meter=[2,1,2] *32
[29+32*a,0+8*b,3+32*c]: unknown 832+1856*a+1024*a^2+64*b^2-192*c-1024*c^2 -> [78]
[13+32*a,0+8*b,19+32*c]: unknown -192+832*a+1024*a^2+64*b^2-1216*c-1024*c^2 -> [79]
expanding queue[31]^10: 32 + 160*a + 256*a^2 + 64*b + 64*b^2 - 96*c - 256*c^2 meter=[2,1,2] *32
[21+32*a,4+8*b,3+32*c]: unknown 448+1344*a+1024*a^2+64*b+64*b^2-192*c-1024*c^2 -> [80]
[5+32*a,4+8*b,19+32*c]: unknown -320+320*a+1024*a^2+64*b+64*b^2-1216*c-1024*c^2 -> [81]
expanding queue[32]^10:  - 96 + 160*a + 256*a^2 + 64*b^2 - 352*c - 256*c^2 meter=[2,1,2] *32
[21+32*a,0+8*b,11+32*c]: unknown 320+1344*a+1024*a^2+64*b^2-704*c-1024*c^2 -> [82]
[5+32*a,0+8*b,27+32*c]: unknown -704+320*a+1024*a^2+64*b^2-1728*c-1024*c^2 -> [83]
expanding queue[33]^10: 64 + 416*a + 256*a^2 + 64*b + 64*b^2 - 352*c - 256*c^2 meter=[2,1,2] *32
[13+32*a,4+8*b,11+32*c]: unknown 64+832*a+1024*a^2+64*b+64*b^2-704*c-1024*c^2 -> [84]
[29+32*a,4+8*b,27+32*c]: unknown 128+1856*a+1024*a^2+64*b+64*b^2-1728*c-1024*c^2 -> [85]
expanding queue[34]^11: 32 + 288*a + 256*a^2 + 64*b^2 - 224*c - 256*c^2 meter=[2,1,2] *32
[25+32*a,0+8*b,7+32*c]: unknown 576+1600*a+1024*a^2+64*b^2-448*c-1024*c^2 -> [86]
[9+32*a,0+8*b,23+32*c]: unknown -448+576*a+1024*a^2+64*b^2-1472*c-1024*c^2 -> [87]
expanding queue[35]^11:  - 32 + 32*a + 256*a^2 + 64*b + 64*b^2 - 224*c - 256*c^2 meter=[2,1,2] *32
[17+32*a,4+8*b,7+32*c]: unknown 256+1088*a+1024*a^2+64*b+64*b^2-448*c-1024*c^2 -> [88]
[1+32*a,4+8*b,23+32*c]: unknown -512+64*a+1024*a^2+64*b+64*b^2-1472*c-1024*c^2 -> [89]
expanding queue[36]^11:  - 224 + 32*a + 256*a^2 + 64*b^2 - 480*c - 256*c^2 meter=[2,1,2] *32
[17+32*a,0+8*b,15+32*c]: unknown 64+1088*a+1024*a^2+64*b^2-960*c-1024*c^2 -> [90]
[1+32*a,0+8*b,31+32*c]: unknown -960+64*a+1024*a^2+64*b^2-1984*c-1024*c^2 -> [91]
expanding queue[37]^11:  - 128 + 288*a + 256*a^2 + 64*b + 64*b^2 - 480*c - 256*c^2 meter=[2,1,2] *32
[9+32*a,4+8*b,15+32*c]: unknown -128+576*a+1024*a^2+64*b+64*b^2-960*c-1024*c^2 -> [92]
[25+32*a,4+8*b,31+32*c]: unknown -320+1600*a+1024*a^2+64*b+64*b^2-1984*c-1024*c^2 -> [93]
expanding queue[38]^12: 96*a + 256*a^2 + 64*b^2 - 96*c - 256*c^2 meter=[2,1,2] *32
solution [3,0,3],trivial(3)
[3+32*a,0+8*b,3+32*c]: unknown 192*a+1024*a^2+64*b^2-192*c-1024*c^2 -> [94]
[19+32*a,0+8*b,19+32*c]: unknown 1216*a+1024*a^2+64*b^2-1216*c-1024*c^2 -> [95]
expanding queue[39]^12: 128 + 352*a + 256*a^2 + 64*b + 64*b^2 - 96*c - 256*c^2 meter=[2,1,2] *32
[11+32*a,4+8*b,3+32*c]: unknown 128+704*a+1024*a^2+64*b+64*b^2-192*c-1024*c^2 -> [96]
[27+32*a,4+8*b,19+32*c]: unknown 384+1728*a+1024*a^2+64*b+64*b^2-1216*c-1024*c^2 -> [97]
expanding queue[40]^12: 352*a + 256*a^2 + 64*b^2 - 352*c - 256*c^2 meter=[2,1,2] *32
solution [11,0,11],trivial(3)
[11+32*a,0+8*b,11+32*c]: unknown 704*a+1024*a^2+64*b^2-704*c-1024*c^2 -> [98]
[27+32*a,0+8*b,27+32*c]: unknown 1728*a+1024*a^2+64*b^2-1728*c-1024*c^2 -> [99]
expanding queue[41]^12:  - 96 + 96*a + 256*a^2 + 64*b + 64*b^2 - 352*c - 256*c^2 meter=[2,1,2] *32
[19+32*a,4+8*b,11+32*c]: unknown 256+1216*a+1024*a^2+64*b+64*b^2-704*c-1024*c^2 -> [100]
[3+32*a,4+8*b,27+32*c]: unknown -704+192*a+1024*a^2+64*b+64*b^2-1728*c-1024*c^2 -> [101]
expanding queue[42]^13: 224*a + 256*a^2 + 64*b^2 - 224*c - 256*c^2 meter=[2,1,2] *32
solution [7,0,7],trivial(3)
[7+32*a,0+8*b,7+32*c]: unknown 448*a+1024*a^2+64*b^2-448*c-1024*c^2 -> [102]
[23+32*a,0+8*b,23+32*c]: unknown 1472*a+1024*a^2+64*b^2-1472*c-1024*c^2 -> [103]
expanding queue[43]^13: 192 + 480*a + 256*a^2 + 64*b + 64*b^2 - 224*c - 256*c^2 meter=[2,1,2] *32
[15+32*a,4+8*b,7+32*c]: unknown 192+960*a+1024*a^2+64*b+64*b^2-448*c-1024*c^2 -> [104]
[31+32*a,4+8*b,23+32*c]: unknown 448+1984*a+1024*a^2+64*b+64*b^2-1472*c-1024*c^2 -> [105]
expanding queue[44]^13: 480*a + 256*a^2 + 64*b^2 - 480*c - 256*c^2 meter=[2,1,2] *32
solution [15,0,15],trivial(3)
[15+32*a,0+8*b,15+32*c]: unknown 960*a+1024*a^2+64*b^2-960*c-1024*c^2 -> [106]
[31+32*a,0+8*b,31+32*c]: unknown 1984*a+1024*a^2+64*b^2-1984*c-1024*c^2 -> [107]
expanding queue[45]^13:  - 160 + 224*a + 256*a^2 + 64*b + 64*b^2 - 480*c - 256*c^2 meter=[2,1,2] *32
[23+32*a,4+8*b,15+32*c]: unknown 320+1472*a+1024*a^2+64*b+64*b^2-960*c-1024*c^2 -> [108]
[7+32*a,4+8*b,31+32*c]: unknown -896+448*a+1024*a^2+64*b+64*b^2-1984*c-1024*c^2 -> [109]
Maximum level 4 reached, queue size = 110
