ExponentGCDs=[1,1]
Expanding for base=2, reasons+features=base,same,similiar 
----------------
expanding queue[0]^-1,meter=[2,2]*2: 2 + 2*x + x^2 - 3*y - 3*y^2 - y^3
[0,0]:	unknown -> [1] 2+4*x+4*x^2-6*y-12*y^2-8*y^3
----------------
expanding queue[1]^0,meter=[2,2]*4: 2 + 4*x + 4*x^2 - 6*y - 12*y^2 - 8*y^3
[0,2]:	unknown -> [2] -24+8*x+16*x^2-108*y-144*y^2-64*y^3
[2,2]:	unknown -> [3] -16+24*x+16*x^2-108*y-144*y^2-64*y^3
----------------
expanding queue[2]^1,meter=[2,2]*8:  - 24 + 8*x + 16*x^2 - 108*y - 144*y^2 - 64*y^3
[0,2]:	unknown -> [4] -24+16*x+64*x^2-216*y-576*y^2-512*y^3
[4,2]:	unknown -> [5] 80*x+64*x^2-216*y-576*y^2-512*y^3
expanding queue[3]^1,meter=[2,2]*8:  - 16 + 24*x + 16*x^2 - 108*y - 144*y^2 - 64*y^3
[2,2]:	unknown -> [6] -16+48*x+64*x^2-216*y-576*y^2-512*y^3
[6,2]:	unknown -> [7] 24+112*x+64*x^2-216*y-576*y^2-512*y^3
----------------
expanding queue[4]^2,meter=[2,2]*16:  - 24 + 16*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3
[0,10]:	unknown -> [8] -1328+32*x+256*x^2-5808*y-8448*y^2-4096*y^3
[8,10]:	unknown -> [9] -1248+288*x+256*x^2-5808*y-8448*y^2-4096*y^3
expanding queue[5]^2,meter=[2,2]*16: 80*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3
solution [4,2],NONTRIVIAL
[4,2]:	unknown -> [10] 160*x+256*x^2-432*y-2304*y^2-4096*y^3
[12,2]:	unknown -> [11] 144+416*x+256*x^2-432*y-2304*y^2-4096*y^3
expanding queue[6]^3,meter=[2,2]*16:  - 16 + 48*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3
[2,2]:	unknown -> [12] -16+96*x+256*x^2-432*y-2304*y^2-4096*y^3
[10,2]:	unknown -> [13] 96+352*x+256*x^2-432*y-2304*y^2-4096*y^3
expanding queue[7]^3,meter=[2,2]*16: 24 + 112*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3
[6,10]:	unknown -> [14] -1280+224*x+256*x^2-5808*y-8448*y^2-4096*y^3
[14,10]:	unknown -> [15] -1104+480*x+256*x^2-5808*y-8448*y^2-4096*y^3
----------------
expanding queue[8]^4,meter=[2,2]*32:  - 1328 + 32*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3
[0,26]:	unknown -> [16] -19680+64*x+1024*x^2-69984*y-82944*y^2-32768*y^3
[16,26]:	unknown -> [17] -19392+1088*x+1024*x^2-69984*y-82944*y^2-32768*y^3
expanding queue[9]^4,meter=[2,2]*32:  - 1248 + 288*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3
[8,10]:	unknown -> [18] -1248+576*x+1024*x^2-11616*y-33792*y^2-32768*y^3
[24,10]:	unknown -> [19] -704+1600*x+1024*x^2-11616*y-33792*y^2-32768*y^3
expanding queue[10]^5,meter=[2,2]*32: 160*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3
solution [4,2],NONTRIVIAL
[4,2]:	unknown -> [20] 320*x+1024*x^2-864*y-9216*y^2-32768*y^3
[20,2]:	unknown -> [21] 416+1344*x+1024*x^2-864*y-9216*y^2-32768*y^3
expanding queue[11]^5,meter=[2,2]*32: 144 + 416*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3
[12,18]:	unknown -> [22] -6688+832*x+1024*x^2-34656*y-58368*y^2-32768*y^3
[28,18]:	unknown -> [23] -6016+1856*x+1024*x^2-34656*y-58368*y^2-32768*y^3
expanding queue[12]^6,meter=[2,2]*32:  - 16 + 96*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3
[2,18]:	unknown -> [24] -6848+192*x+1024*x^2-34656*y-58368*y^2-32768*y^3
[18,18]:	unknown -> [25] -6496+1216*x+1024*x^2-34656*y-58368*y^2-32768*y^3
expanding queue[13]^6,meter=[2,2]*32: 96 + 352*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3
[10,2]:	unknown -> [26] 96+704*x+1024*x^2-864*y-9216*y^2-32768*y^3
[26,2]:	unknown -> [27] 704+1728*x+1024*x^2-864*y-9216*y^2-32768*y^3
expanding queue[14]^7,meter=[2,2]*32:  - 1280 + 224*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3
[6,10]:	unknown -> [28] -1280+448*x+1024*x^2-11616*y-33792*y^2-32768*y^3
[22,10]:	unknown -> [29] -800+1472*x+1024*x^2-11616*y-33792*y^2-32768*y^3
expanding queue[15]^7,meter=[2,2]*32:  - 1104 + 480*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3
[14,26]:	unknown -> [30] -19456+960*x+1024*x^2-69984*y-82944*y^2-32768*y^3
[30,26]:	unknown -> [31] -18720+1984*x+1024*x^2-69984*y-82944*y^2-32768*y^3
----------------
expanding queue[16]^8,meter=[2,2]*64:  - 19680 + 64*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3
[0,58]:	unknown -> [32] -205376+128*x+4096*x^2-668352*y-724992*y^2-262144*y^3
[32,58]:	unknown -> [33] -204288+4224*x+4096*x^2-668352*y-724992*y^2-262144*y^3
expanding queue[17]^8,meter=[2,2]*64:  - 19392 + 1088*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3
[16,26]:	unknown -> [34] -19392+2176*x+4096*x^2-139968*y-331776*y^2-262144*y^3
[48,26]:	unknown -> [35] -17280+6272*x+4096*x^2-139968*y-331776*y^2-262144*y^3
expanding queue[18]^9,meter=[2,2]*64:  - 1248 + 576*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3
[8,42]:	unknown -> [36] -79424+1152*x+4096*x^2-355008*y-528384*y^2-262144*y^3
[40,42]:	unknown -> [37] -77824+5248*x+4096*x^2-355008*y-528384*y^2-262144*y^3
expanding queue[19]^9,meter=[2,2]*64:  - 704 + 1600*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3
[24,10]:	unknown -> [38] -704+3200*x+4096*x^2-23232*y-135168*y^2-262144*y^3
[56,10]:	unknown -> [39] 1920+7296*x+4096*x^2-23232*y-135168*y^2-262144*y^3
expanding queue[20]^10,meter=[2,2]*64: 320*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3
solution [4,2],NONTRIVIAL
[4,2]:	unknown -> [40] 640*x+4096*x^2-1728*y-36864*y^2-262144*y^3
[36,2]:	unknown -> [41] 1344+4736*x+4096*x^2-1728*y-36864*y^2-262144*y^3
expanding queue[21]^10,meter=[2,2]*64: 416 + 1344*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3
[20,34]:	unknown -> [42] -42432+2688*x+4096*x^2-235200*y-430080*y^2-262144*y^3
[52,34]:	unknown -> [43] -40064+6784*x+4096*x^2-235200*y-430080*y^2-262144*y^3
expanding queue[22]^11,meter=[2,2]*64:  - 6688 + 832*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3
[12,50]:	unknown -> [44] -132480+1664*x+4096*x^2-499392*y-626688*y^2-262144*y^3
[44,50]:	unknown -> [45] -130624+5760*x+4096*x^2-499392*y-626688*y^2-262144*y^3
expanding queue[23]^11,meter=[2,2]*64:  - 6016 + 1856*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3
[28,18]:	unknown -> [46] -6016+3712*x+4096*x^2-69312*y-233472*y^2-262144*y^3
[60,18]:	unknown -> [47] -3136+7808*x+4096*x^2-69312*y-233472*y^2-262144*y^3
expanding queue[24]^12,meter=[2,2]*64:  - 6848 + 192*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3
[2,18]:	unknown -> [48] -6848+384*x+4096*x^2-69312*y-233472*y^2-262144*y^3
[34,18]:	unknown -> [49] -5632+4480*x+4096*x^2-69312*y-233472*y^2-262144*y^3
expanding queue[25]^12,meter=[2,2]*64:  - 6496 + 1216*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3
[18,50]:	unknown -> [50] -132288+2432*x+4096*x^2-499392*y-626688*y^2-262144*y^3
[50,50]:	unknown -> [51] -130048+6528*x+4096*x^2-499392*y-626688*y^2-262144*y^3
expanding queue[26]^13,meter=[2,2]*64: 96 + 704*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3
[10,34]:	unknown -> [52] -42752+1408*x+4096*x^2-235200*y-430080*y^2-262144*y^3
[42,34]:	unknown -> [53] -41024+5504*x+4096*x^2-235200*y-430080*y^2-262144*y^3
expanding queue[27]^13,meter=[2,2]*64: 704 + 1728*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3
[26,2]:	unknown -> [54] 704+3456*x+4096*x^2-1728*y-36864*y^2-262144*y^3
[58,2]:	unknown -> [55] 3456+7552*x+4096*x^2-1728*y-36864*y^2-262144*y^3
expanding queue[28]^14,meter=[2,2]*64:  - 1280 + 448*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3
[6,10]:	unknown -> [56] -1280+896*x+4096*x^2-23232*y-135168*y^2-262144*y^3
[38,10]:	unknown -> [57] 192+4992*x+4096*x^2-23232*y-135168*y^2-262144*y^3
expanding queue[29]^14,meter=[2,2]*64:  - 800 + 1472*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3
[22,42]:	unknown -> [58] -78976+2944*x+4096*x^2-355008*y-528384*y^2-262144*y^3
[54,42]:	unknown -> [59] -76480+7040*x+4096*x^2-355008*y-528384*y^2-262144*y^3
expanding queue[30]^15,meter=[2,2]*64:  - 19456 + 960*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3
[14,26]:	unknown -> [60] -19456+1920*x+4096*x^2-139968*y-331776*y^2-262144*y^3
[46,26]:	unknown -> [61] -17472+6016*x+4096*x^2-139968*y-331776*y^2-262144*y^3
expanding queue[31]^15,meter=[2,2]*64:  - 18720 + 1984*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3
[30,58]:	unknown -> [62] -204416+3968*x+4096*x^2-668352*y-724992*y^2-262144*y^3
[62,58]:	unknown -> [63] -201408+8064*x+4096*x^2-668352*y-724992*y^2-262144*y^3
Maximum level 5 reached at [64]: 2 + 2*x + x^2 - 3*y - 3*y^2 - y^3
