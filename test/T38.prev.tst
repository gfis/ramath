Expanding for base=2, reasons+features=base,similiar,similiar
exponentGCDs=[3,3,3,3], transposables={{a},{b},{c},{d}}
----------------
expanding queue[0]^-1: a^3 + 2*b^3 + 4*c^3 - 9*d^3 meter=[2,2,1,2] *2
solution [0,0,0,0],trivial(3)
[0+2*a,0+2*b,0+1*c,0+2*d]:	unknown -> [1] 8*a^3+16*b^3+4*c^3-72*d^3
[1+2*a,0+2*b,0+1*c,1+2*d]:	unknown -> [2] -8+6*a+12*a^2+8*a^3+16*b^3+4*c^3-54*d-108*d^2-72*d^3
[1+2*a,1+2*b,0+1*c,1+2*d]:	unknown -> [3] -6+6*a+12*a^2+8*a^3+12*b+24*b^2+16*b^3+4*c^3-54*d-108*d^2-72*d^3
----------------
expanding queue[1]^0: 8*a^3 + 16*b^3 + 4*c^3 - 72*d^3 meter=[1,1,2,1] *4
solution [0,0,0,0],trivial(3)
[0+2*a,0+2*b,0+2*c,0+2*d]:	similiar to [0], same  8*a^3+16*b^3+32*c^3-72*d^3
expanding queue[2]^0:  - 8 + 6*a + 12*a^2 + 8*a^3 + 16*b^3 + 4*c^3 - 54*d - 108*d^2 - 72*d^3 meter=[2,1,2,2] *4
[1+4*a,0+2*b,0+2*c,1+4*d]:	unknown -> [4] -8+12*a+48*a^2+64*a^3+16*b^3+32*c^3-108*d-432*d^2-576*d^3
[1+4*a,0+2*b,1+2*c,1+4*d]:	unknown -> [5] -4+12*a+48*a^2+64*a^3+16*b^3+24*c+48*c^2+32*c^3-108*d-432*d^2-576*d^3
[3+4*a,0+2*b,0+2*c,3+4*d]:	unknown -> [6] -216+108*a+144*a^2+64*a^3+16*b^3+32*c^3-972*d-1296*d^2-576*d^3
[3+4*a,0+2*b,1+2*c,3+4*d]:	unknown -> [7] -212+108*a+144*a^2+64*a^3+16*b^3+24*c+48*c^2+32*c^3-972*d-1296*d^2-576*d^3
expanding queue[3]^0:  - 6 + 6*a + 12*a^2 + 8*a^3 + 12*b + 24*b^2 + 16*b^3 + 4*c^3 - 54*d - 108*d^2 - 72*d^3 meter=[2,2,2,2] *4
[3+4*a,1+4*b,0+2*c,1+4*d]:	unknown -> [8] 20+108*a+144*a^2+64*a^3+24*b+96*b^2+128*b^3+32*c^3-108*d-432*d^2-576*d^3
[3+4*a,3+4*b,0+2*c,1+4*d]:	unknown -> [9] 72+108*a+144*a^2+64*a^3+216*b+288*b^2+128*b^3+32*c^3-108*d-432*d^2-576*d^3
[3+4*a,1+4*b,1+2*c,1+4*d]:	unknown -> [10] 24+108*a+144*a^2+64*a^3+24*b+96*b^2+128*b^3+24*c+48*c^2+32*c^3-108*d-432*d^2-576*d^3
[3+4*a,3+4*b,1+2*c,1+4*d]:	unknown -> [11] 76+108*a+144*a^2+64*a^3+216*b+288*b^2+128*b^3+24*c+48*c^2+32*c^3-108*d-432*d^2-576*d^3
[1+4*a,1+4*b,0+2*c,3+4*d]:	unknown -> [12] -240+12*a+48*a^2+64*a^3+24*b+96*b^2+128*b^3+32*c^3-972*d-1296*d^2-576*d^3
[1+4*a,3+4*b,0+2*c,3+4*d]:	unknown -> [13] -188+12*a+48*a^2+64*a^3+216*b+288*b^2+128*b^3+32*c^3-972*d-1296*d^2-576*d^3
[1+4*a,1+4*b,1+2*c,3+4*d]:	unknown -> [14] -236+12*a+48*a^2+64*a^3+24*b+96*b^2+128*b^3+24*c+48*c^2+32*c^3-972*d-1296*d^2-576*d^3
[1+4*a,3+4*b,1+2*c,3+4*d]:	unknown -> [15] -184+12*a+48*a^2+64*a^3+216*b+288*b^2+128*b^3+24*c+48*c^2+32*c^3-972*d-1296*d^2-576*d^3
----------------
expanding queue[4]^2:  - 8 + 12*a + 48*a^2 + 64*a^3 + 16*b^3 + 32*c^3 - 108*d - 432*d^2 - 576*d^3 meter=[2,1,1,2] *8
[1+8*a,0+2*b,0+2*c,1+8*d]:	unknown -> [16] -8+24*a+192*a^2+512*a^3+16*b^3+32*c^3-216*d-1728*d^2-4608*d^3
[5+8*a,0+2*b,0+2*c,5+8*d]:	unknown -> [17] -1000+600*a+960*a^2+512*a^3+16*b^3+32*c^3-5400*d-8640*d^2-4608*d^3
expanding queue[5]^2:  - 4 + 12*a + 48*a^2 + 64*a^3 + 16*b^3 + 24*c + 48*c^2 + 32*c^3 - 108*d - 432*d^2 - 576*d^3 meter=[2,1,2,2] *8
[5+8*a,0+2*b,1+4*c,1+8*d]:	unknown -> [18] 120+600*a+960*a^2+512*a^3+16*b^3+48*c+192*c^2+256*c^3-216*d-1728*d^2-4608*d^3
[5+8*a,0+2*b,3+4*c,1+8*d]:	unknown -> [19] 224+600*a+960*a^2+512*a^3+16*b^3+432*c+576*c^2+256*c^3-216*d-1728*d^2-4608*d^3
[1+8*a,0+2*b,1+4*c,5+8*d]:	unknown -> [20] -1120+24*a+192*a^2+512*a^3+16*b^3+48*c+192*c^2+256*c^3-5400*d-8640*d^2-4608*d^3
[1+8*a,0+2*b,3+4*c,5+8*d]:	unknown -> [21] -1016+24*a+192*a^2+512*a^3+16*b^3+432*c+576*c^2+256*c^3-5400*d-8640*d^2-4608*d^3
expanding queue[6]^2:  - 216 + 108*a + 144*a^2 + 64*a^3 + 16*b^3 + 32*c^3 - 972*d - 1296*d^2 - 576*d^3 meter=[2,1,1,2] *8
[3+8*a,0+2*b,0+2*c,3+8*d]:	unknown -> [22] -216+216*a+576*a^2+512*a^3+16*b^3+32*c^3-1944*d-5184*d^2-4608*d^3
[7+8*a,0+2*b,0+2*c,7+8*d]:	unknown -> [23] -2744+1176*a+1344*a^2+512*a^3+16*b^3+32*c^3-10584*d-12096*d^2-4608*d^3
expanding queue[7]^2:  - 212 + 108*a + 144*a^2 + 64*a^3 + 16*b^3 + 24*c + 48*c^2 + 32*c^3 - 972*d - 1296*d^2 - 576*d^3 meter=[2,1,2,2] *8
[7+8*a,0+2*b,1+4*c,3+8*d]:	unknown -> [24] 104+1176*a+1344*a^2+512*a^3+16*b^3+48*c+192*c^2+256*c^3-1944*d-5184*d^2-4608*d^3
[7+8*a,0+2*b,3+4*c,3+8*d]:	unknown -> [25] 208+1176*a+1344*a^2+512*a^3+16*b^3+432*c+576*c^2+256*c^3-1944*d-5184*d^2-4608*d^3
[3+8*a,0+2*b,1+4*c,7+8*d]:	unknown -> [26] -3056+216*a+576*a^2+512*a^3+16*b^3+48*c+192*c^2+256*c^3-10584*d-12096*d^2-4608*d^3
[3+8*a,0+2*b,3+4*c,7+8*d]:	unknown -> [27] -2952+216*a+576*a^2+512*a^3+16*b^3+432*c+576*c^2+256*c^3-10584*d-12096*d^2-4608*d^3
expanding queue[8]^3: 20 + 108*a + 144*a^2 + 64*a^3 + 24*b + 96*b^2 + 128*b^3 + 32*c^3 - 108*d - 432*d^2 - 576*d^3 meter=[2,2,1,2] *8
[7+8*a,1+8*b,0+2*c,1+8*d]:	unknown -> [28] 336+1176*a+1344*a^2+512*a^3+48*b+384*b^2+1024*b^3+32*c^3-216*d-1728*d^2-4608*d^3
[7+8*a,5+8*b,0+2*c,1+8*d]:	unknown -> [29] 584+1176*a+1344*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+32*c^3-216*d-1728*d^2-4608*d^3
[3+8*a,1+8*b,0+2*c,5+8*d]:	unknown -> [30] -1096+216*a+576*a^2+512*a^3+48*b+384*b^2+1024*b^3+32*c^3-5400*d-8640*d^2-4608*d^3
[3+8*a,5+8*b,0+2*c,5+8*d]:	unknown -> [31] -848+216*a+576*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+32*c^3-5400*d-8640*d^2-4608*d^3
expanding queue[9]^3: 72 + 108*a + 144*a^2 + 64*a^3 + 216*b + 288*b^2 + 128*b^3 + 32*c^3 - 108*d - 432*d^2 - 576*d^3 meter=[2,2,1,2] *8
[3+8*a,3+8*b,0+2*c,1+8*d]:	unknown -> [32] 72+216*a+576*a^2+512*a^3+432*b+1152*b^2+1024*b^3+32*c^3-216*d-1728*d^2-4608*d^3
[3+8*a,7+8*b,0+2*c,1+8*d]:	unknown -> [33] 704+216*a+576*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+32*c^3-216*d-1728*d^2-4608*d^3
[7+8*a,3+8*b,0+2*c,5+8*d]:	unknown -> [34] -728+1176*a+1344*a^2+512*a^3+432*b+1152*b^2+1024*b^3+32*c^3-5400*d-8640*d^2-4608*d^3
[7+8*a,7+8*b,0+2*c,5+8*d]:	unknown -> [35] -96+1176*a+1344*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+32*c^3-5400*d-8640*d^2-4608*d^3
expanding queue[10]^3: 24 + 108*a + 144*a^2 + 64*a^3 + 24*b + 96*b^2 + 128*b^3 + 24*c + 48*c^2 + 32*c^3 - 108*d - 432*d^2 - 576*d^3 meter=[2,2,2,2] *8
[3+8*a,1+8*b,1+4*c,1+8*d]:	unknown -> [36] 24+216*a+576*a^2+512*a^3+48*b+384*b^2+1024*b^3+48*c+192*c^2+256*c^3-216*d-1728*d^2-4608*d^3
[3+8*a,5+8*b,1+4*c,1+8*d]:	unknown -> [37] 272+216*a+576*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+48*c+192*c^2+256*c^3-216*d-1728*d^2-4608*d^3
[3+8*a,1+8*b,3+4*c,1+8*d]:	unknown -> [38] 128+216*a+576*a^2+512*a^3+48*b+384*b^2+1024*b^3+432*c+576*c^2+256*c^3-216*d-1728*d^2-4608*d^3
[3+8*a,5+8*b,3+4*c,1+8*d]:	unknown -> [39] 376+216*a+576*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+432*c+576*c^2+256*c^3-216*d-1728*d^2-4608*d^3
[7+8*a,1+8*b,1+4*c,5+8*d]:	unknown -> [40] -776+1176*a+1344*a^2+512*a^3+48*b+384*b^2+1024*b^3+48*c+192*c^2+256*c^3-5400*d-8640*d^2-4608*d^3
[7+8*a,5+8*b,1+4*c,5+8*d]:	unknown -> [41] -528+1176*a+1344*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+48*c+192*c^2+256*c^3-5400*d-8640*d^2-4608*d^3
[7+8*a,1+8*b,3+4*c,5+8*d]:	unknown -> [42] -672+1176*a+1344*a^2+512*a^3+48*b+384*b^2+1024*b^3+432*c+576*c^2+256*c^3-5400*d-8640*d^2-4608*d^3
[7+8*a,5+8*b,3+4*c,5+8*d]:	unknown -> [43] -424+1176*a+1344*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+432*c+576*c^2+256*c^3-5400*d-8640*d^2-4608*d^3
expanding queue[11]^3: 76 + 108*a + 144*a^2 + 64*a^3 + 216*b + 288*b^2 + 128*b^3 + 24*c + 48*c^2 + 32*c^3 - 108*d - 432*d^2 - 576*d^3 meter=[2,2,2,2] *8
[7+8*a,3+8*b,1+4*c,1+8*d]:	unknown -> [44] 392+1176*a+1344*a^2+512*a^3+432*b+1152*b^2+1024*b^3+48*c+192*c^2+256*c^3-216*d-1728*d^2-4608*d^3
[7+8*a,7+8*b,1+4*c,1+8*d]:	unknown -> [45] 1024+1176*a+1344*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+48*c+192*c^2+256*c^3-216*d-1728*d^2-4608*d^3
[7+8*a,3+8*b,3+4*c,1+8*d]:	unknown -> [46] 496+1176*a+1344*a^2+512*a^3+432*b+1152*b^2+1024*b^3+432*c+576*c^2+256*c^3-216*d-1728*d^2-4608*d^3
[7+8*a,7+8*b,3+4*c,1+8*d]:	unknown -> [47] 1128+1176*a+1344*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+432*c+576*c^2+256*c^3-216*d-1728*d^2-4608*d^3
[3+8*a,3+8*b,1+4*c,5+8*d]:	unknown -> [48] -1040+216*a+576*a^2+512*a^3+432*b+1152*b^2+1024*b^3+48*c+192*c^2+256*c^3-5400*d-8640*d^2-4608*d^3
[3+8*a,7+8*b,1+4*c,5+8*d]:	unknown -> [49] -408+216*a+576*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+48*c+192*c^2+256*c^3-5400*d-8640*d^2-4608*d^3
[3+8*a,3+8*b,3+4*c,5+8*d]:	unknown -> [50] -936+216*a+576*a^2+512*a^3+432*b+1152*b^2+1024*b^3+432*c+576*c^2+256*c^3-5400*d-8640*d^2-4608*d^3
[3+8*a,7+8*b,3+4*c,5+8*d]:	unknown -> [51] -304+216*a+576*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+432*c+576*c^2+256*c^3-5400*d-8640*d^2-4608*d^3
expanding queue[12]^3:  - 240 + 12*a + 48*a^2 + 64*a^3 + 24*b + 96*b^2 + 128*b^3 + 32*c^3 - 972*d - 1296*d^2 - 576*d^3 meter=[2,2,1,2] *8
[1+8*a,1+8*b,0+2*c,3+8*d]:	unknown -> [52] -240+24*a+192*a^2+512*a^3+48*b+384*b^2+1024*b^3+32*c^3-1944*d-5184*d^2-4608*d^3
[1+8*a,5+8*b,0+2*c,3+8*d]:	unknown -> [53] 8+24*a+192*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+32*c^3-1944*d-5184*d^2-4608*d^3
[5+8*a,1+8*b,0+2*c,7+8*d]:	unknown -> [54] -2960+600*a+960*a^2+512*a^3+48*b+384*b^2+1024*b^3+32*c^3-10584*d-12096*d^2-4608*d^3
[5+8*a,5+8*b,0+2*c,7+8*d]:	unknown -> [55] -2712+600*a+960*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+32*c^3-10584*d-12096*d^2-4608*d^3
expanding queue[13]^3:  - 188 + 12*a + 48*a^2 + 64*a^3 + 216*b + 288*b^2 + 128*b^3 + 32*c^3 - 972*d - 1296*d^2 - 576*d^3 meter=[2,2,1,2] *8
[5+8*a,3+8*b,0+2*c,3+8*d]:	unknown -> [56] -64+600*a+960*a^2+512*a^3+432*b+1152*b^2+1024*b^3+32*c^3-1944*d-5184*d^2-4608*d^3
[5+8*a,7+8*b,0+2*c,3+8*d]:	unknown -> [57] 568+600*a+960*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+32*c^3-1944*d-5184*d^2-4608*d^3
[1+8*a,3+8*b,0+2*c,7+8*d]:	unknown -> [58] -3032+24*a+192*a^2+512*a^3+432*b+1152*b^2+1024*b^3+32*c^3-10584*d-12096*d^2-4608*d^3
[1+8*a,7+8*b,0+2*c,7+8*d]:	unknown -> [59] -2400+24*a+192*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+32*c^3-10584*d-12096*d^2-4608*d^3
expanding queue[14]^3:  - 236 + 12*a + 48*a^2 + 64*a^3 + 24*b + 96*b^2 + 128*b^3 + 24*c + 48*c^2 + 32*c^3 - 972*d - 1296*d^2 - 576*d^3 meter=[2,2,2,2] *8
[5+8*a,1+8*b,1+4*c,3+8*d]:	unknown -> [60] -112+600*a+960*a^2+512*a^3+48*b+384*b^2+1024*b^3+48*c+192*c^2+256*c^3-1944*d-5184*d^2-4608*d^3
[5+8*a,5+8*b,1+4*c,3+8*d]:	unknown -> [61] 136+600*a+960*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+48*c+192*c^2+256*c^3-1944*d-5184*d^2-4608*d^3
[5+8*a,1+8*b,3+4*c,3+8*d]:	unknown -> [62] -8+600*a+960*a^2+512*a^3+48*b+384*b^2+1024*b^3+432*c+576*c^2+256*c^3-1944*d-5184*d^2-4608*d^3
[5+8*a,5+8*b,3+4*c,3+8*d]:	unknown -> [63] 240+600*a+960*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+432*c+576*c^2+256*c^3-1944*d-5184*d^2-4608*d^3
[1+8*a,1+8*b,1+4*c,7+8*d]:	unknown -> [64] -3080+24*a+192*a^2+512*a^3+48*b+384*b^2+1024*b^3+48*c+192*c^2+256*c^3-10584*d-12096*d^2-4608*d^3
[1+8*a,5+8*b,1+4*c,7+8*d]:	unknown -> [65] -2832+24*a+192*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+48*c+192*c^2+256*c^3-10584*d-12096*d^2-4608*d^3
[1+8*a,1+8*b,3+4*c,7+8*d]:	unknown -> [66] -2976+24*a+192*a^2+512*a^3+48*b+384*b^2+1024*b^3+432*c+576*c^2+256*c^3-10584*d-12096*d^2-4608*d^3
[1+8*a,5+8*b,3+4*c,7+8*d]:	unknown -> [67] -2728+24*a+192*a^2+512*a^3+1200*b+1920*b^2+1024*b^3+432*c+576*c^2+256*c^3-10584*d-12096*d^2-4608*d^3
expanding queue[15]^3:  - 184 + 12*a + 48*a^2 + 64*a^3 + 216*b + 288*b^2 + 128*b^3 + 24*c + 48*c^2 + 32*c^3 - 972*d - 1296*d^2 - 576*d^3 meter=[2,2,2,2] *8
[1+8*a,3+8*b,1+4*c,3+8*d]:	unknown -> [68] -184+24*a+192*a^2+512*a^3+432*b+1152*b^2+1024*b^3+48*c+192*c^2+256*c^3-1944*d-5184*d^2-4608*d^3
[1+8*a,7+8*b,1+4*c,3+8*d]:	unknown -> [69] 448+24*a+192*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+48*c+192*c^2+256*c^3-1944*d-5184*d^2-4608*d^3
[1+8*a,3+8*b,3+4*c,3+8*d]:	unknown -> [70] -80+24*a+192*a^2+512*a^3+432*b+1152*b^2+1024*b^3+432*c+576*c^2+256*c^3-1944*d-5184*d^2-4608*d^3
[1+8*a,7+8*b,3+4*c,3+8*d]:	unknown -> [71] 552+24*a+192*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+432*c+576*c^2+256*c^3-1944*d-5184*d^2-4608*d^3
[5+8*a,3+8*b,1+4*c,7+8*d]:	unknown -> [72] -2904+600*a+960*a^2+512*a^3+432*b+1152*b^2+1024*b^3+48*c+192*c^2+256*c^3-10584*d-12096*d^2-4608*d^3
[5+8*a,7+8*b,1+4*c,7+8*d]:	unknown -> [73] -2272+600*a+960*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+48*c+192*c^2+256*c^3-10584*d-12096*d^2-4608*d^3
[5+8*a,3+8*b,3+4*c,7+8*d]:	unknown -> [74] -2800+600*a+960*a^2+512*a^3+432*b+1152*b^2+1024*b^3+432*c+576*c^2+256*c^3-10584*d-12096*d^2-4608*d^3
[5+8*a,7+8*b,3+4*c,7+8*d]:	unknown -> [75] -2168+600*a+960*a^2+512*a^3+2352*b+2688*b^2+1024*b^3+432*c+576*c^2+256*c^3-10584*d-12096*d^2-4608*d^3
Maximum level 2 reached at [76]: a^3 + 2*b^3 + 4*c^3 - 9*d^3