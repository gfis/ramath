Expanding for base=2, transposables={{x},{y}}, reasons+features=base,simliar invall,showfail
----------------
expanding queue[0]^-1: 2 + x^2 - y^3 = 0 meter=[2,2] *2
[0+2*x,0+2*y]: failure constant=2, vgcd=4
[1+2*x,0+2*y]: failure constant=3, vgcd=4
[0+2*x,1+2*y]: failure constant=1, vgcd=2
[1+2*x,1+2*y]: unknown 2+4*x+4*x^2-6*y-12*y^2-8*y^3=0 -> [1]
----------------
expanding queue[1]^0: 2 + 4*x + 4*x^2 - 6*y - 12*y^2 - 8*y^3 = 0 meter=[2,2] *4
[1+4*x,1+4*y]: failure constant=2, vgcd=4
[3+4*x,1+4*y]: failure constant=10, vgcd=4
[1+4*x,3+4*y]: unknown -24+8*x+16*x^2-108*y-144*y^2-64*y^3=0 -> [2]
[3+4*x,3+4*y]: unknown -16+24*x+16*x^2-108*y-144*y^2-64*y^3=0 -> [3]
----------------
expanding queue[2]^1:  - 24 + 8*x + 16*x^2 - 108*y - 144*y^2 - 64*y^3 = 0 meter=[2,2] *8
[1+8*x,3+8*y]: unknown -24+16*x+64*x^2-216*y-576*y^2-512*y^3=0 -> [4]
[5+8*x,3+8*y]: unknown 80*x+64*x^2-216*y-576*y^2-512*y^3=0 -> [5]
[1+8*x,7+8*y]: failure constant=-340, vgcd=8
[5+8*x,7+8*y]: failure constant=-316, vgcd=8
expanding queue[3]^1:  - 16 + 24*x + 16*x^2 - 108*y - 144*y^2 - 64*y^3 = 0 meter=[2,2] *8
[3+8*x,3+8*y]: unknown -16+48*x+64*x^2-216*y-576*y^2-512*y^3=0 -> [6]
[7+8*x,3+8*y]: unknown 24+112*x+64*x^2-216*y-576*y^2-512*y^3=0 -> [7]
[3+8*x,7+8*y]: failure constant=-332, vgcd=8
[7+8*x,7+8*y]: failure constant=-292, vgcd=8
----------------
expanding queue[4]^2:  - 24 + 16*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3 = 0 meter=[2,2] *16
[1+16*x,3+16*y]: failure constant=-24, vgcd=16
[9+16*x,3+16*y]: failure constant=56, vgcd=16
[1+16*x,11+16*y]: unknown -1328+32*x+256*x^2-5808*y-8448*y^2-4096*y^3=0 -> [8]
[9+16*x,11+16*y]: unknown -1248+288*x+256*x^2-5808*y-8448*y^2-4096*y^3=0 -> [9]
expanding queue[5]^2: 80*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3 = 0 meter=[2,2] *16
solution [5,3],NONTRIVIAL
[5+16*x,3+16*y]: unknown 160*x+256*x^2-432*y-2304*y^2-4096*y^3=0 -> [10]
[13+16*x,3+16*y]: unknown 144+416*x+256*x^2-432*y-2304*y^2-4096*y^3=0 -> [11]
[5+16*x,11+16*y]: failure constant=-1304, vgcd=16
[13+16*x,11+16*y]: failure constant=-1160, vgcd=16
expanding queue[6]^3:  - 16 + 48*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3 = 0 meter=[2,2] *16
[3+16*x,3+16*y]: unknown -16+96*x+256*x^2-432*y-2304*y^2-4096*y^3=0 -> [12]
[11+16*x,3+16*y]: unknown 96+352*x+256*x^2-432*y-2304*y^2-4096*y^3=0 -> [13]
[3+16*x,11+16*y]: failure constant=-1320, vgcd=16
[11+16*x,11+16*y]: failure constant=-1208, vgcd=16
expanding queue[7]^3: 24 + 112*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3 = 0 meter=[2,2] *16
[7+16*x,3+16*y]: failure constant=24, vgcd=16
[15+16*x,3+16*y]: failure constant=200, vgcd=16
[7+16*x,11+16*y]: unknown -1280+224*x+256*x^2-5808*y-8448*y^2-4096*y^3=0 -> [14]
[15+16*x,11+16*y]: unknown -1104+480*x+256*x^2-5808*y-8448*y^2-4096*y^3=0 -> [15]
----------------
expanding queue[8]^4:  - 1328 + 32*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[1+32*x,11+32*y]: failure constant=-1328, vgcd=32
[17+32*x,11+32*y]: failure constant=-1040, vgcd=32
[1+32*x,27+32*y]: unknown -19680+64*x+1024*x^2-69984*y-82944*y^2-32768*y^3=0 -> [16]
[17+32*x,27+32*y]: unknown -19392+1088*x+1024*x^2-69984*y-82944*y^2-32768*y^3=0 -> [17]
expanding queue[9]^4:  - 1248 + 288*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[9+32*x,11+32*y]: unknown -1248+576*x+1024*x^2-11616*y-33792*y^2-32768*y^3=0 -> [18]
[25+32*x,11+32*y]: unknown -704+1600*x+1024*x^2-11616*y-33792*y^2-32768*y^3=0 -> [19]
[9+32*x,27+32*y]: failure constant=-19600, vgcd=32
[25+32*x,27+32*y]: failure constant=-19056, vgcd=32
expanding queue[10]^5: 160*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3 = 0 meter=[2,2] *32
solution [5,3],NONTRIVIAL
[5+32*x,3+32*y]: unknown 320*x+1024*x^2-864*y-9216*y^2-32768*y^3=0 -> [20]
[21+32*x,3+32*y]: unknown 416+1344*x+1024*x^2-864*y-9216*y^2-32768*y^3=0 -> [21]
[5+32*x,19+32*y]: failure constant=-6832, vgcd=32
[21+32*x,19+32*y]: failure constant=-6416, vgcd=32
expanding queue[11]^5: 144 + 416*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[13+32*x,3+32*y]: failure constant=144, vgcd=32
[29+32*x,3+32*y]: failure constant=816, vgcd=32
[13+32*x,19+32*y]: unknown -6688+832*x+1024*x^2-34656*y-58368*y^2-32768*y^3=0 -> [22]
[29+32*x,19+32*y]: unknown -6016+1856*x+1024*x^2-34656*y-58368*y^2-32768*y^3=0 -> [23]
expanding queue[12]^6:  - 16 + 96*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[3+32*x,3+32*y]: failure constant=-16, vgcd=32
[19+32*x,3+32*y]: failure constant=336, vgcd=32
[3+32*x,19+32*y]: unknown -6848+192*x+1024*x^2-34656*y-58368*y^2-32768*y^3=0 -> [24]
[19+32*x,19+32*y]: unknown -6496+1216*x+1024*x^2-34656*y-58368*y^2-32768*y^3=0 -> [25]
expanding queue[13]^6: 96 + 352*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[11+32*x,3+32*y]: unknown 96+704*x+1024*x^2-864*y-9216*y^2-32768*y^3=0 -> [26]
[27+32*x,3+32*y]: unknown 704+1728*x+1024*x^2-864*y-9216*y^2-32768*y^3=0 -> [27]
[11+32*x,19+32*y]: failure constant=-6736, vgcd=32
[27+32*x,19+32*y]: failure constant=-6128, vgcd=32
expanding queue[14]^7:  - 1280 + 224*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[7+32*x,11+32*y]: unknown -1280+448*x+1024*x^2-11616*y-33792*y^2-32768*y^3=0 -> [28]
[23+32*x,11+32*y]: unknown -800+1472*x+1024*x^2-11616*y-33792*y^2-32768*y^3=0 -> [29]
[7+32*x,27+32*y]: failure constant=-19632, vgcd=32
[23+32*x,27+32*y]: failure constant=-19152, vgcd=32
expanding queue[15]^7:  - 1104 + 480*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[15+32*x,11+32*y]: failure constant=-1104, vgcd=32
[31+32*x,11+32*y]: failure constant=-368, vgcd=32
[15+32*x,27+32*y]: unknown -19456+960*x+1024*x^2-69984*y-82944*y^2-32768*y^3=0 -> [30]
[31+32*x,27+32*y]: unknown -18720+1984*x+1024*x^2-69984*y-82944*y^2-32768*y^3=0 -> [31]
----------------
expanding queue[16]^8:  - 19680 + 64*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[1+64*x,27+64*y]: failure constant=-19680, vgcd=64
[33+64*x,27+64*y]: failure constant=-18592, vgcd=64
[1+64*x,59+64*y]: unknown -205376+128*x+4096*x^2-668352*y-724992*y^2-262144*y^3=0 -> [32]
[33+64*x,59+64*y]: unknown -204288+4224*x+4096*x^2-668352*y-724992*y^2-262144*y^3=0 -> [33]
expanding queue[17]^8:  - 19392 + 1088*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[17+64*x,27+64*y]: unknown -19392+2176*x+4096*x^2-139968*y-331776*y^2-262144*y^3=0 -> [34]
[49+64*x,27+64*y]: unknown -17280+6272*x+4096*x^2-139968*y-331776*y^2-262144*y^3=0 -> [35]
[17+64*x,59+64*y]: failure constant=-205088, vgcd=64
[49+64*x,59+64*y]: failure constant=-202976, vgcd=64
expanding queue[18]^9:  - 1248 + 576*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[9+64*x,11+64*y]: failure constant=-1248, vgcd=64
[41+64*x,11+64*y]: failure constant=352, vgcd=64
[9+64*x,43+64*y]: unknown -79424+1152*x+4096*x^2-355008*y-528384*y^2-262144*y^3=0 -> [36]
[41+64*x,43+64*y]: unknown -77824+5248*x+4096*x^2-355008*y-528384*y^2-262144*y^3=0 -> [37]
expanding queue[19]^9:  - 704 + 1600*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[25+64*x,11+64*y]: unknown -704+3200*x+4096*x^2-23232*y-135168*y^2-262144*y^3=0 -> [38]
[57+64*x,11+64*y]: unknown 1920+7296*x+4096*x^2-23232*y-135168*y^2-262144*y^3=0 -> [39]
[25+64*x,43+64*y]: failure constant=-78880, vgcd=64
[57+64*x,43+64*y]: failure constant=-76256, vgcd=64
expanding queue[20]^10: 320*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3 = 0 meter=[2,2] *64
solution [5,3],NONTRIVIAL
[5+64*x,3+64*y]: unknown 640*x+4096*x^2-1728*y-36864*y^2-262144*y^3=0 -> [40]
[37+64*x,3+64*y]: unknown 1344+4736*x+4096*x^2-1728*y-36864*y^2-262144*y^3=0 -> [41]
[5+64*x,35+64*y]: failure constant=-42848, vgcd=64
[37+64*x,35+64*y]: failure constant=-41504, vgcd=64
expanding queue[21]^10: 416 + 1344*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[21+64*x,3+64*y]: failure constant=416, vgcd=64
[53+64*x,3+64*y]: failure constant=2784, vgcd=64
[21+64*x,35+64*y]: unknown -42432+2688*x+4096*x^2-235200*y-430080*y^2-262144*y^3=0 -> [42]
[53+64*x,35+64*y]: unknown -40064+6784*x+4096*x^2-235200*y-430080*y^2-262144*y^3=0 -> [43]
expanding queue[22]^11:  - 6688 + 832*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[13+64*x,19+64*y]: failure constant=-6688, vgcd=64
[45+64*x,19+64*y]: failure constant=-4832, vgcd=64
[13+64*x,51+64*y]: unknown -132480+1664*x+4096*x^2-499392*y-626688*y^2-262144*y^3=0 -> [44]
[45+64*x,51+64*y]: unknown -130624+5760*x+4096*x^2-499392*y-626688*y^2-262144*y^3=0 -> [45]
expanding queue[23]^11:  - 6016 + 1856*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[29+64*x,19+64*y]: unknown -6016+3712*x+4096*x^2-69312*y-233472*y^2-262144*y^3=0 -> [46]
[61+64*x,19+64*y]: unknown -3136+7808*x+4096*x^2-69312*y-233472*y^2-262144*y^3=0 -> [47]
[29+64*x,51+64*y]: failure constant=-131808, vgcd=64
[61+64*x,51+64*y]: failure constant=-128928, vgcd=64
expanding queue[24]^12:  - 6848 + 192*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[3+64*x,19+64*y]: unknown -6848+384*x+4096*x^2-69312*y-233472*y^2-262144*y^3=0 -> [48]
[35+64*x,19+64*y]: unknown -5632+4480*x+4096*x^2-69312*y-233472*y^2-262144*y^3=0 -> [49]
[3+64*x,51+64*y]: failure constant=-132640, vgcd=64
[35+64*x,51+64*y]: failure constant=-131424, vgcd=64
expanding queue[25]^12:  - 6496 + 1216*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[19+64*x,19+64*y]: failure constant=-6496, vgcd=64
[51+64*x,19+64*y]: failure constant=-4256, vgcd=64
[19+64*x,51+64*y]: unknown -132288+2432*x+4096*x^2-499392*y-626688*y^2-262144*y^3=0 -> [50]
[51+64*x,51+64*y]: unknown -130048+6528*x+4096*x^2-499392*y-626688*y^2-262144*y^3=0 -> [51]
expanding queue[26]^13: 96 + 704*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[11+64*x,3+64*y]: failure constant=96, vgcd=64
[43+64*x,3+64*y]: failure constant=1824, vgcd=64
[11+64*x,35+64*y]: unknown -42752+1408*x+4096*x^2-235200*y-430080*y^2-262144*y^3=0 -> [52]
[43+64*x,35+64*y]: unknown -41024+5504*x+4096*x^2-235200*y-430080*y^2-262144*y^3=0 -> [53]
expanding queue[27]^13: 704 + 1728*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[27+64*x,3+64*y]: unknown 704+3456*x+4096*x^2-1728*y-36864*y^2-262144*y^3=0 -> [54]
[59+64*x,3+64*y]: unknown 3456+7552*x+4096*x^2-1728*y-36864*y^2-262144*y^3=0 -> [55]
[27+64*x,35+64*y]: failure constant=-42144, vgcd=64
[59+64*x,35+64*y]: failure constant=-39392, vgcd=64
expanding queue[28]^14:  - 1280 + 448*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[7+64*x,11+64*y]: unknown -1280+896*x+4096*x^2-23232*y-135168*y^2-262144*y^3=0 -> [56]
[39+64*x,11+64*y]: unknown 192+4992*x+4096*x^2-23232*y-135168*y^2-262144*y^3=0 -> [57]
[7+64*x,43+64*y]: failure constant=-79456, vgcd=64
[39+64*x,43+64*y]: failure constant=-77984, vgcd=64
expanding queue[29]^14:  - 800 + 1472*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[23+64*x,11+64*y]: failure constant=-800, vgcd=64
[55+64*x,11+64*y]: failure constant=1696, vgcd=64
[23+64*x,43+64*y]: unknown -78976+2944*x+4096*x^2-355008*y-528384*y^2-262144*y^3=0 -> [58]
[55+64*x,43+64*y]: unknown -76480+7040*x+4096*x^2-355008*y-528384*y^2-262144*y^3=0 -> [59]
expanding queue[30]^15:  - 19456 + 960*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[15+64*x,27+64*y]: unknown -19456+1920*x+4096*x^2-139968*y-331776*y^2-262144*y^3=0 -> [60]
[47+64*x,27+64*y]: unknown -17472+6016*x+4096*x^2-139968*y-331776*y^2-262144*y^3=0 -> [61]
[15+64*x,59+64*y]: failure constant=-205152, vgcd=64
[47+64*x,59+64*y]: failure constant=-203168, vgcd=64
expanding queue[31]^15:  - 18720 + 1984*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3 = 0 meter=[2,2] *64
[31+64*x,27+64*y]: failure constant=-18720, vgcd=64
[63+64*x,27+64*y]: failure constant=-15712, vgcd=64
[31+64*x,59+64*y]: unknown -204416+3968*x+4096*x^2-668352*y-724992*y^2-262144*y^3=0 -> [62]
[63+64*x,59+64*y]: unknown -201408+8064*x+4096*x^2-668352*y-724992*y^2-262144*y^3=0 -> [63]
----------------
expanding queue[32]^16:  - 205376 + 128*x + 4096*x^2 - 668352*y - 724992*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[1+128*x,59+128*y]: failure constant=-205376, vgcd=128
[65+128*x,59+128*y]: failure constant=-201152, vgcd=128
[1+128*x,123+128*y]: unknown -1860864+256*x+16384*x^2-5809536*y-6045696*y^2-2097152*y^3=0 -> [64]
[65+128*x,123+128*y]: unknown -1856640+16640*x+16384*x^2-5809536*y-6045696*y^2-2097152*y^3=0 -> [65]
expanding queue[33]^16:  - 204288 + 4224*x + 4096*x^2 - 668352*y - 724992*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[33+128*x,59+128*y]: unknown -204288+8448*x+16384*x^2-1336704*y-2899968*y^2-2097152*y^3=0 -> [66]
[97+128*x,59+128*y]: unknown -195968+24832*x+16384*x^2-1336704*y-2899968*y^2-2097152*y^3=0 -> [67]
[33+128*x,123+128*y]: failure constant=-1859776, vgcd=128
[97+128*x,123+128*y]: failure constant=-1851456, vgcd=128
expanding queue[34]^17:  - 19392 + 2176*x + 4096*x^2 - 139968*y - 331776*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[17+128*x,27+128*y]: failure constant=-19392, vgcd=128
[81+128*x,27+128*y]: failure constant=-13120, vgcd=128
[17+128*x,91+128*y]: unknown -753280+4352*x+16384*x^2-3179904*y-4472832*y^2-2097152*y^3=0 -> [68]
[81+128*x,91+128*y]: unknown -747008+20736*x+16384*x^2-3179904*y-4472832*y^2-2097152*y^3=0 -> [69]
expanding queue[35]^17:  - 17280 + 6272*x + 4096*x^2 - 139968*y - 331776*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[49+128*x,27+128*y]: unknown -17280+12544*x+16384*x^2-279936*y-1327104*y^2-2097152*y^3=0 -> [70]
[113+128*x,27+128*y]: unknown -6912+28928*x+16384*x^2-279936*y-1327104*y^2-2097152*y^3=0 -> [71]
[49+128*x,91+128*y]: failure constant=-751168, vgcd=128
[113+128*x,91+128*y]: failure constant=-740800, vgcd=128
expanding queue[36]^18:  - 79424 + 1152*x + 4096*x^2 - 355008*y - 528384*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[9+128*x,43+128*y]: failure constant=-79424, vgcd=128
[73+128*x,43+128*y]: failure constant=-74176, vgcd=128
[9+128*x,107+128*y]: unknown -1224960+2304*x+16384*x^2-4396416*y-5259264*y^2-2097152*y^3=0 -> [72]
[73+128*x,107+128*y]: unknown -1219712+18688*x+16384*x^2-4396416*y-5259264*y^2-2097152*y^3=0 -> [73]
expanding queue[37]^18:  - 77824 + 5248*x + 4096*x^2 - 355008*y - 528384*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[41+128*x,43+128*y]: unknown -77824+10496*x+16384*x^2-710016*y-2113536*y^2-2097152*y^3=0 -> [74]
[105+128*x,43+128*y]: unknown -68480+26880*x+16384*x^2-710016*y-2113536*y^2-2097152*y^3=0 -> [75]
[41+128*x,107+128*y]: failure constant=-1223360, vgcd=128
[105+128*x,107+128*y]: failure constant=-1214016, vgcd=128
expanding queue[38]^19:  - 704 + 3200*x + 4096*x^2 - 23232*y - 135168*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[25+128*x,11+128*y]: failure constant=-704, vgcd=128
[89+128*x,11+128*y]: failure constant=6592, vgcd=128
[25+128*x,75+128*y]: unknown -421248+6400*x+16384*x^2-2160000*y-3686400*y^2-2097152*y^3=0 -> [76]
[89+128*x,75+128*y]: unknown -413952+22784*x+16384*x^2-2160000*y-3686400*y^2-2097152*y^3=0 -> [77]
expanding queue[39]^19: 1920 + 7296*x + 4096*x^2 - 23232*y - 135168*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[57+128*x,11+128*y]: unknown 1920+14592*x+16384*x^2-46464*y-540672*y^2-2097152*y^3=0 -> [78]
[121+128*x,11+128*y]: unknown 13312+30976*x+16384*x^2-46464*y-540672*y^2-2097152*y^3=0 -> [79]
[57+128*x,75+128*y]: failure constant=-418624, vgcd=128
[121+128*x,75+128*y]: failure constant=-407232, vgcd=128
expanding queue[40]^20: 640*x + 4096*x^2 - 1728*y - 36864*y^2 - 262144*y^3 = 0 meter=[2,2] *128
solution [5,3],NONTRIVIAL
[5+128*x,3+128*y]: unknown 1280*x+16384*x^2-3456*y-147456*y^2-2097152*y^3=0 -> [80]
[69+128*x,3+128*y]: unknown 4736+17664*x+16384*x^2-3456*y-147456*y^2-2097152*y^3=0 -> [81]
[5+128*x,67+128*y]: failure constant=-300736, vgcd=128
[69+128*x,67+128*y]: failure constant=-296000, vgcd=128
expanding queue[41]^20: 1344 + 4736*x + 4096*x^2 - 1728*y - 36864*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[37+128*x,3+128*y]: failure constant=1344, vgcd=128
[101+128*x,3+128*y]: failure constant=10176, vgcd=128
[37+128*x,67+128*y]: unknown -299392+9472*x+16384*x^2-1723776*y-3293184*y^2-2097152*y^3=0 -> [82]
[101+128*x,67+128*y]: unknown -290560+25856*x+16384*x^2-1723776*y-3293184*y^2-2097152*y^3=0 -> [83]
expanding queue[42]^21:  - 42432 + 2688*x + 4096*x^2 - 235200*y - 430080*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[21+128*x,35+128*y]: failure constant=-42432, vgcd=128
[85+128*x,35+128*y]: failure constant=-35648, vgcd=128
[21+128*x,99+128*y]: unknown -969856+5376*x+16384*x^2-3763584*y-4866048*y^2-2097152*y^3=0 -> [84]
[85+128*x,99+128*y]: unknown -963072+21760*x+16384*x^2-3763584*y-4866048*y^2-2097152*y^3=0 -> [85]
expanding queue[43]^21:  - 40064 + 6784*x + 4096*x^2 - 235200*y - 430080*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[53+128*x,35+128*y]: unknown -40064+13568*x+16384*x^2-470400*y-1720320*y^2-2097152*y^3=0 -> [86]
[117+128*x,35+128*y]: unknown -29184+29952*x+16384*x^2-470400*y-1720320*y^2-2097152*y^3=0 -> [87]
[53+128*x,99+128*y]: failure constant=-967488, vgcd=128
[117+128*x,99+128*y]: failure constant=-956608, vgcd=128
expanding queue[44]^22:  - 132480 + 1664*x + 4096*x^2 - 499392*y - 626688*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[13+128*x,51+128*y]: unknown -132480+3328*x+16384*x^2-998784*y-2506752*y^2-2097152*y^3=0 -> [88]
[77+128*x,51+128*y]: unknown -126720+19712*x+16384*x^2-998784*y-2506752*y^2-2097152*y^3=0 -> [89]
[13+128*x,115+128*y]: failure constant=-1520704, vgcd=128
[77+128*x,115+128*y]: failure constant=-1514944, vgcd=128
expanding queue[45]^22:  - 130624 + 5760*x + 4096*x^2 - 499392*y - 626688*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[45+128*x,51+128*y]: failure constant=-130624, vgcd=128
[109+128*x,51+128*y]: failure constant=-120768, vgcd=128
[45+128*x,115+128*y]: unknown -1518848+11520*x+16384*x^2-5078400*y-5652480*y^2-2097152*y^3=0 -> [90]
[109+128*x,115+128*y]: unknown -1508992+27904*x+16384*x^2-5078400*y-5652480*y^2-2097152*y^3=0 -> [91]
expanding queue[46]^23:  - 6016 + 3712*x + 4096*x^2 - 69312*y - 233472*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[29+128*x,19+128*y]: unknown -6016+7424*x+16384*x^2-138624*y-933888*y^2-2097152*y^3=0 -> [92]
[93+128*x,19+128*y]: unknown 1792+23808*x+16384*x^2-138624*y-933888*y^2-2097152*y^3=0 -> [93]
[29+128*x,83+128*y]: failure constant=-570944, vgcd=128
[93+128*x,83+128*y]: failure constant=-563136, vgcd=128
expanding queue[47]^23:  - 3136 + 7808*x + 4096*x^2 - 69312*y - 233472*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[61+128*x,19+128*y]: failure constant=-3136, vgcd=128
[125+128*x,19+128*y]: failure constant=8768, vgcd=128
[61+128*x,83+128*y]: unknown -568064+15616*x+16384*x^2-2645376*y-4079616*y^2-2097152*y^3=0 -> [94]
[125+128*x,83+128*y]: unknown -556160+32000*x+16384*x^2-2645376*y-4079616*y^2-2097152*y^3=0 -> [95]
expanding queue[48]^24:  - 6848 + 384*x + 4096*x^2 - 69312*y - 233472*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[3+128*x,19+128*y]: failure constant=-6848, vgcd=128
[67+128*x,19+128*y]: failure constant=-2368, vgcd=128
[3+128*x,83+128*y]: unknown -571776+768*x+16384*x^2-2645376*y-4079616*y^2-2097152*y^3=0 -> [96]
[67+128*x,83+128*y]: unknown -567296+17152*x+16384*x^2-2645376*y-4079616*y^2-2097152*y^3=0 -> [97]
expanding queue[49]^24:  - 5632 + 4480*x + 4096*x^2 - 69312*y - 233472*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[35+128*x,19+128*y]: unknown -5632+8960*x+16384*x^2-138624*y-933888*y^2-2097152*y^3=0 -> [98]
[99+128*x,19+128*y]: unknown 2944+25344*x+16384*x^2-138624*y-933888*y^2-2097152*y^3=0 -> [99]
[35+128*x,83+128*y]: failure constant=-570560, vgcd=128
[99+128*x,83+128*y]: failure constant=-561984, vgcd=128
expanding queue[50]^25:  - 132288 + 2432*x + 4096*x^2 - 499392*y - 626688*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[19+128*x,51+128*y]: failure constant=-132288, vgcd=128
[83+128*x,51+128*y]: failure constant=-125760, vgcd=128
[19+128*x,115+128*y]: unknown -1520512+4864*x+16384*x^2-5078400*y-5652480*y^2-2097152*y^3=0 -> [100]
[83+128*x,115+128*y]: unknown -1513984+21248*x+16384*x^2-5078400*y-5652480*y^2-2097152*y^3=0 -> [101]
expanding queue[51]^25:  - 130048 + 6528*x + 4096*x^2 - 499392*y - 626688*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[51+128*x,51+128*y]: unknown -130048+13056*x+16384*x^2-998784*y-2506752*y^2-2097152*y^3=0 -> [102]
[115+128*x,51+128*y]: unknown -119424+29440*x+16384*x^2-998784*y-2506752*y^2-2097152*y^3=0 -> [103]
[51+128*x,115+128*y]: failure constant=-1518272, vgcd=128
[115+128*x,115+128*y]: failure constant=-1507648, vgcd=128
expanding queue[52]^26:  - 42752 + 1408*x + 4096*x^2 - 235200*y - 430080*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[11+128*x,35+128*y]: unknown -42752+2816*x+16384*x^2-470400*y-1720320*y^2-2097152*y^3=0 -> [104]
[75+128*x,35+128*y]: unknown -37248+19200*x+16384*x^2-470400*y-1720320*y^2-2097152*y^3=0 -> [105]
[11+128*x,99+128*y]: failure constant=-970176, vgcd=128
[75+128*x,99+128*y]: failure constant=-964672, vgcd=128
expanding queue[53]^26:  - 41024 + 5504*x + 4096*x^2 - 235200*y - 430080*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[43+128*x,35+128*y]: failure constant=-41024, vgcd=128
[107+128*x,35+128*y]: failure constant=-31424, vgcd=128
[43+128*x,99+128*y]: unknown -968448+11008*x+16384*x^2-3763584*y-4866048*y^2-2097152*y^3=0 -> [106]
[107+128*x,99+128*y]: unknown -958848+27392*x+16384*x^2-3763584*y-4866048*y^2-2097152*y^3=0 -> [107]
expanding queue[54]^27: 704 + 3456*x + 4096*x^2 - 1728*y - 36864*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[27+128*x,3+128*y]: failure constant=704, vgcd=128
[91+128*x,3+128*y]: failure constant=8256, vgcd=128
[27+128*x,67+128*y]: unknown -300032+6912*x+16384*x^2-1723776*y-3293184*y^2-2097152*y^3=0 -> [108]
[91+128*x,67+128*y]: unknown -292480+23296*x+16384*x^2-1723776*y-3293184*y^2-2097152*y^3=0 -> [109]
expanding queue[55]^27: 3456 + 7552*x + 4096*x^2 - 1728*y - 36864*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[59+128*x,3+128*y]: unknown 3456+15104*x+16384*x^2-3456*y-147456*y^2-2097152*y^3=0 -> [110]
[123+128*x,3+128*y]: unknown 15104+31488*x+16384*x^2-3456*y-147456*y^2-2097152*y^3=0 -> [111]
[59+128*x,67+128*y]: failure constant=-297280, vgcd=128
[123+128*x,67+128*y]: failure constant=-285632, vgcd=128
expanding queue[56]^28:  - 1280 + 896*x + 4096*x^2 - 23232*y - 135168*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[7+128*x,11+128*y]: unknown -1280+1792*x+16384*x^2-46464*y-540672*y^2-2097152*y^3=0 -> [112]
[71+128*x,11+128*y]: unknown 3712+18176*x+16384*x^2-46464*y-540672*y^2-2097152*y^3=0 -> [113]
[7+128*x,75+128*y]: failure constant=-421824, vgcd=128
[71+128*x,75+128*y]: failure constant=-416832, vgcd=128
expanding queue[57]^28: 192 + 4992*x + 4096*x^2 - 23232*y - 135168*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[39+128*x,11+128*y]: failure constant=192, vgcd=128
[103+128*x,11+128*y]: failure constant=9280, vgcd=128
[39+128*x,75+128*y]: unknown -420352+9984*x+16384*x^2-2160000*y-3686400*y^2-2097152*y^3=0 -> [114]
[103+128*x,75+128*y]: unknown -411264+26368*x+16384*x^2-2160000*y-3686400*y^2-2097152*y^3=0 -> [115]
expanding queue[58]^29:  - 78976 + 2944*x + 4096*x^2 - 355008*y - 528384*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[23+128*x,43+128*y]: unknown -78976+5888*x+16384*x^2-710016*y-2113536*y^2-2097152*y^3=0 -> [116]
[87+128*x,43+128*y]: unknown -71936+22272*x+16384*x^2-710016*y-2113536*y^2-2097152*y^3=0 -> [117]
[23+128*x,107+128*y]: failure constant=-1224512, vgcd=128
[87+128*x,107+128*y]: failure constant=-1217472, vgcd=128
expanding queue[59]^29:  - 76480 + 7040*x + 4096*x^2 - 355008*y - 528384*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[55+128*x,43+128*y]: failure constant=-76480, vgcd=128
[119+128*x,43+128*y]: failure constant=-65344, vgcd=128
[55+128*x,107+128*y]: unknown -1222016+14080*x+16384*x^2-4396416*y-5259264*y^2-2097152*y^3=0 -> [118]
[119+128*x,107+128*y]: unknown -1210880+30464*x+16384*x^2-4396416*y-5259264*y^2-2097152*y^3=0 -> [119]
expanding queue[60]^30:  - 19456 + 1920*x + 4096*x^2 - 139968*y - 331776*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[15+128*x,27+128*y]: unknown -19456+3840*x+16384*x^2-279936*y-1327104*y^2-2097152*y^3=0 -> [120]
[79+128*x,27+128*y]: unknown -13440+20224*x+16384*x^2-279936*y-1327104*y^2-2097152*y^3=0 -> [121]
[15+128*x,91+128*y]: failure constant=-753344, vgcd=128
[79+128*x,91+128*y]: failure constant=-747328, vgcd=128
expanding queue[61]^30:  - 17472 + 6016*x + 4096*x^2 - 139968*y - 331776*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[47+128*x,27+128*y]: failure constant=-17472, vgcd=128
[111+128*x,27+128*y]: failure constant=-7360, vgcd=128
[47+128*x,91+128*y]: unknown -751360+12032*x+16384*x^2-3179904*y-4472832*y^2-2097152*y^3=0 -> [122]
[111+128*x,91+128*y]: unknown -741248+28416*x+16384*x^2-3179904*y-4472832*y^2-2097152*y^3=0 -> [123]
expanding queue[62]^31:  - 204416 + 3968*x + 4096*x^2 - 668352*y - 724992*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[31+128*x,59+128*y]: unknown -204416+7936*x+16384*x^2-1336704*y-2899968*y^2-2097152*y^3=0 -> [124]
[95+128*x,59+128*y]: unknown -196352+24320*x+16384*x^2-1336704*y-2899968*y^2-2097152*y^3=0 -> [125]
[31+128*x,123+128*y]: failure constant=-1859904, vgcd=128
[95+128*x,123+128*y]: failure constant=-1851840, vgcd=128
expanding queue[63]^31:  - 201408 + 8064*x + 4096*x^2 - 668352*y - 724992*y^2 - 262144*y^3 = 0 meter=[2,2] *128
[63+128*x,59+128*y]: failure constant=-201408, vgcd=128
[127+128*x,59+128*y]: failure constant=-189248, vgcd=128
[63+128*x,123+128*y]: unknown -1856896+16128*x+16384*x^2-5809536*y-6045696*y^2-2097152*y^3=0 -> [126]
[127+128*x,123+128*y]: unknown -1844736+32512*x+16384*x^2-5809536*y-6045696*y^2-2097152*y^3=0 -> [127]
Maximum level 6 reached, queue size = 128
