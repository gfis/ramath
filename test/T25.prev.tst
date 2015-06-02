Expanding for base 2, transposables =    0   1

expanding queue[0]: 2 + x^2 - y^3 = 0 modulo [2,2] *2
[0+2*x,0+2*y]: failure constant=2, vgcd=4
[1+2*x,0+2*y]: failure constant=3, vgcd=4
[0+2*x,1+2*y]: failure constant=1, vgcd=2
[1+2*x,1+2*y]: unknown 2+4*x+4*x^2-6*y-12*y^2-8*y^3=0 -> [1]

expanding queue[1]: 2 + 4*x + 4*x^2 - 6*y - 12*y^2 - 8*y^3 = 0 modulo [2,2] *4
[1+4*x,1+4*y]: failure constant=2, vgcd=4
[3+4*x,1+4*y]: failure constant=10, vgcd=4
[1+4*x,3+4*y]: success [5,3],NONTRIVIAL  -24+8*x+16*x^2-108*y-144*y^2-64*y^3=0 -> [2]
[3+4*x,3+4*y]: unknown -16+24*x+16*x^2-108*y-144*y^2-64*y^3=0 -> [3]

expanding queue[2]:  - 24 + 8*x + 16*x^2 - 108*y - 144*y^2 - 64*y^3 = 0 modulo [2,2] *8
[1+8*x,3+8*y]: unknown, grown from [2]*1,2,4,2,4,8 -24+16*x+64*x^2-216*y-576*y^2-512*y^3=0 -> [4]
[5+8*x,3+8*y]: success [5,3],NONTRIVIAL  80*x+64*x^2-216*y-576*y^2-512*y^3=0 -> [5]
[1+8*x,7+8*y]: failure constant=-340, vgcd=8
[5+8*x,7+8*y]: failure constant=-316, vgcd=8

expanding queue[3]:  - 16 + 24*x + 16*x^2 - 108*y - 144*y^2 - 64*y^3 = 0 modulo [2,2] *8
[3+8*x,3+8*y]: unknown, grown from [3]*1,2,4,2,4,8 -16+48*x+64*x^2-216*y-576*y^2-512*y^3=0 -> [6]
[7+8*x,3+8*y]: unknown, grown from [1]*12,28,16,36,48,64 24+112*x+64*x^2-216*y-576*y^2-512*y^3=0 -> [7]
[3+8*x,7+8*y]: failure constant=-332, vgcd=8
[7+8*x,7+8*y]: failure constant=-292, vgcd=8

expanding queue[4]:  - 24 + 16*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3 = 0 modulo [2,2] *16
[1+16*x,3+16*y]: failure constant=-24, vgcd=16
[9+16*x,3+16*y]: failure constant=56, vgcd=16
[1+16*x,11+16*y]: unknown -1328+32*x+256*x^2-5808*y-8448*y^2-4096*y^3=0 -> [8]
[9+16*x,11+16*y]: unknown -1248+288*x+256*x^2-5808*y-8448*y^2-4096*y^3=0 -> [9]

expanding queue[5]: 80*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3 = 0 modulo [2,2] *16
[5+16*x,3+16*y]: success [5,3],NONTRIVIAL , grown from [5]*2,4,2,4,8 160*x+256*x^2-432*y-2304*y^2-4096*y^3=0 -> [10]
[13+16*x,3+16*y]: unknown, grown from [1]*72,104,64,72,192,512 144+416*x+256*x^2-432*y-2304*y^2-4096*y^3=0 -> [11]
[5+16*x,11+16*y]: failure constant=-1304, vgcd=16
[13+16*x,11+16*y]: failure constant=-1160, vgcd=16

expanding queue[6]:  - 16 + 48*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3 = 0 modulo [2,2] *16
[3+16*x,3+16*y]: unknown, grown from [6]*1,2,4,2,4,8, grown from [3]*1,4,16,4,16,64 -16+96*x+256*x^2-432*y-2304*y^2-4096*y^3=0 -> [12]
[11+16*x,3+16*y]: unknown, grown from [1]*48,88,64,72,192,512 96+352*x+256*x^2-432*y-2304*y^2-4096*y^3=0 -> [13]
[3+16*x,11+16*y]: failure constant=-1320, vgcd=16
[11+16*x,11+16*y]: failure constant=-1208, vgcd=16

expanding queue[7]: 24 + 112*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3 = 0 modulo [2,2] *16
[7+16*x,3+16*y]: failure constant=24, vgcd=16
[15+16*x,3+16*y]: failure constant=200, vgcd=16
[7+16*x,11+16*y]: unknown -1280+224*x+256*x^2-5808*y-8448*y^2-4096*y^3=0 -> [14]
[15+16*x,11+16*y]: unknown -1104+480*x+256*x^2-5808*y-8448*y^2-4096*y^3=0 -> [15]

expanding queue[8]:  - 1328 + 32*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3 = 0 modulo [2,2] *32
[1+32*x,11+32*y]: failure constant=-1328, vgcd=32
[17+32*x,11+32*y]: failure constant=-1040, vgcd=32
[1+32*x,27+32*y]: unknown, grown from [4]*820,4,16,324,144,64, grown from [2]*820,8,64,648,576,512 -19680+64*x+1024*x^2-69984*y-82944*y^2-32768*y^3=0 -> [16]
[17+32*x,27+32*y]: unknown, grown from [4]*808,68,16,324,144,64, grown from [2]*808,136,64,648,576,512 -19392+1088*x+1024*x^2-69984*y-82944*y^2-32768*y^3=0 -> [17]

expanding queue[9]:  - 1248 + 288*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3 = 0 modulo [2,2] *32
[9+32*x,11+32*y]: unknown, grown from [9]*1,2,4,2,4,8 -1248+576*x+1024*x^2-11616*y-33792*y^2-32768*y^3=0 -> [18]
[25+32*x,11+32*y]: unknown -704+1600*x+1024*x^2-11616*y-33792*y^2-32768*y^3=0 -> [19]
[9+32*x,27+32*y]: failure constant=-19600, vgcd=32
[25+32*x,27+32*y]: failure constant=-19056, vgcd=32

expanding queue[10]: 160*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3 = 0 modulo [2,2] *32
[5+32*x,3+32*y]: success [5,3],NONTRIVIAL , grown from [10]*2,4,2,4,8, grown from [5]*4,16,4,16,64 320*x+1024*x^2-864*y-9216*y^2-32768*y^3=0 -> [20]
[21+32*x,3+32*y]: unknown, grown from [1]*208,336,256,144,768,4096 416+1344*x+1024*x^2-864*y-9216*y^2-32768*y^3=0 -> [21]
[5+32*x,19+32*y]: failure constant=-6832, vgcd=32
[21+32*x,19+32*y]: failure constant=-6416, vgcd=32

expanding queue[11]: 144 + 416*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3 = 0 modulo [2,2] *32
[13+32*x,3+32*y]: failure constant=144, vgcd=32
[29+32*x,3+32*y]: failure constant=816, vgcd=32
[13+32*x,19+32*y]: unknown -6688+832*x+1024*x^2-34656*y-58368*y^2-32768*y^3=0 -> [22]
[29+32*x,19+32*y]: unknown -6016+1856*x+1024*x^2-34656*y-58368*y^2-32768*y^3=0 -> [23]

expanding queue[12]:  - 16 + 96*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3 = 0 modulo [2,2] *32
[3+32*x,3+32*y]: failure constant=-16, vgcd=32
[19+32*x,3+32*y]: failure constant=336, vgcd=32
[3+32*x,19+32*y]: unknown -6848+192*x+1024*x^2-34656*y-58368*y^2-32768*y^3=0 -> [24]
[19+32*x,19+32*y]: unknown -6496+1216*x+1024*x^2-34656*y-58368*y^2-32768*y^3=0 -> [25]

expanding queue[13]: 96 + 352*x + 256*x^2 - 432*y - 2304*y^2 - 4096*y^3 = 0 modulo [2,2] *32
[11+32*x,3+32*y]: unknown, grown from [13]*1,2,4,2,4,8, grown from [1]*48,176,256,144,768,4096 96+704*x+1024*x^2-864*y-9216*y^2-32768*y^3=0 -> [26]
[27+32*x,3+32*y]: unknown, grown from [1]*352,432,256,144,768,4096 704+1728*x+1024*x^2-864*y-9216*y^2-32768*y^3=0 -> [27]
[11+32*x,19+32*y]: failure constant=-6736, vgcd=32
[27+32*x,19+32*y]: failure constant=-6128, vgcd=32

expanding queue[14]:  - 1280 + 224*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3 = 0 modulo [2,2] *32
[7+32*x,11+32*y]: unknown, grown from [14]*1,2,4,2,4,8 -1280+448*x+1024*x^2-11616*y-33792*y^2-32768*y^3=0 -> [28]
[23+32*x,11+32*y]: unknown -800+1472*x+1024*x^2-11616*y-33792*y^2-32768*y^3=0 -> [29]
[7+32*x,27+32*y]: failure constant=-19632, vgcd=32
[23+32*x,27+32*y]: failure constant=-19152, vgcd=32

expanding queue[15]:  - 1104 + 480*x + 256*x^2 - 5808*y - 8448*y^2 - 4096*y^3 = 0 modulo [2,2] *32
[15+32*x,11+32*y]: failure constant=-1104, vgcd=32
[31+32*x,11+32*y]: failure constant=-368, vgcd=32
[15+32*x,27+32*y]: unknown, grown from [3]*1216,40,64,648,576,512 -19456+960*x+1024*x^2-69984*y-82944*y^2-32768*y^3=0 -> [30]
[31+32*x,27+32*y]: unknown -18720+1984*x+1024*x^2-69984*y-82944*y^2-32768*y^3=0 -> [31]

expanding queue[16]:  - 19680 + 64*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[1+64*x,27+64*y]: failure constant=-19680, vgcd=64
[33+64*x,27+64*y]: failure constant=-18592, vgcd=64
[1+64*x,59+64*y]: unknown -205376+128*x+4096*x^2-668352*y-724992*y^2-262144*y^3=0 -> [32]
[33+64*x,59+64*y]: unknown -204288+4224*x+4096*x^2-668352*y-724992*y^2-262144*y^3=0 -> [33]

expanding queue[17]:  - 19392 + 1088*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[17+64*x,27+64*y]: unknown, grown from [17]*1,2,4,2,4,8, grown from [4]*808,136,64,648,576,512, grown from [2]*808,272,256,1296,2304,4096 -19392+2176*x+4096*x^2-139968*y-331776*y^2-262144*y^3=0 -> [34]
[49+64*x,27+64*y]: unknown, grown from [4]*720,392,64,648,576,512, grown from [2]*720,784,256,1296,2304,4096 -17280+6272*x+4096*x^2-139968*y-331776*y^2-262144*y^3=0 -> [35]
[17+64*x,59+64*y]: failure constant=-205088, vgcd=64
[49+64*x,59+64*y]: failure constant=-202976, vgcd=64

expanding queue[18]:  - 1248 + 576*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[9+64*x,11+64*y]: failure constant=-1248, vgcd=64
[41+64*x,11+64*y]: failure constant=352, vgcd=64
[9+64*x,43+64*y]: unknown -79424+1152*x+4096*x^2-355008*y-528384*y^2-262144*y^3=0 -> [36]
[41+64*x,43+64*y]: unknown -77824+5248*x+4096*x^2-355008*y-528384*y^2-262144*y^3=0 -> [37]

expanding queue[19]:  - 704 + 1600*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[25+64*x,11+64*y]: unknown, grown from [19]*1,2,4,2,4,8 -704+3200*x+4096*x^2-23232*y-135168*y^2-262144*y^3=0 -> [38]
[57+64*x,11+64*y]: unknown, grown from [1]*960,1824,1024,3872,11264,32768 1920+7296*x+4096*x^2-23232*y-135168*y^2-262144*y^3=0 -> [39]
[25+64*x,43+64*y]: failure constant=-78880, vgcd=64
[57+64*x,43+64*y]: failure constant=-76256, vgcd=64

expanding queue[20]: 320*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[5+64*x,3+64*y]: success [5,3],NONTRIVIAL , grown from [20]*2,4,2,4,8, grown from [10]*4,16,4,16,64, grown from [5]*8,64,8,64,512 640*x+4096*x^2-1728*y-36864*y^2-262144*y^3=0 -> [40]
[37+64*x,3+64*y]: unknown, grown from [1]*672,1184,1024,288,3072,32768 1344+4736*x+4096*x^2-1728*y-36864*y^2-262144*y^3=0 -> [41]
[5+64*x,35+64*y]: failure constant=-42848, vgcd=64
[37+64*x,35+64*y]: failure constant=-41504, vgcd=64

expanding queue[21]: 416 + 1344*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[21+64*x,3+64*y]: failure constant=416, vgcd=64
[53+64*x,3+64*y]: failure constant=2784, vgcd=64
[21+64*x,35+64*y]: unknown -42432+2688*x+4096*x^2-235200*y-430080*y^2-262144*y^3=0 -> [42]
[53+64*x,35+64*y]: unknown -40064+6784*x+4096*x^2-235200*y-430080*y^2-262144*y^3=0 -> [43]

expanding queue[22]:  - 6688 + 832*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[13+64*x,19+64*y]: failure constant=-6688, vgcd=64
[45+64*x,19+64*y]: failure constant=-4832, vgcd=64
[13+64*x,51+64*y]: unknown, grown from [2]*5520,208,256,4624,4352,4096 -132480+1664*x+4096*x^2-499392*y-626688*y^2-262144*y^3=0 -> [44]
[45+64*x,51+64*y]: unknown -130624+5760*x+4096*x^2-499392*y-626688*y^2-262144*y^3=0 -> [45]

expanding queue[23]:  - 6016 + 1856*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[29+64*x,19+64*y]: unknown, grown from [23]*1,2,4,2,4,8 -6016+3712*x+4096*x^2-69312*y-233472*y^2-262144*y^3=0 -> [46]
[61+64*x,19+64*y]: unknown -3136+7808*x+4096*x^2-69312*y-233472*y^2-262144*y^3=0 -> [47]
[29+64*x,51+64*y]: failure constant=-131808, vgcd=64
[61+64*x,51+64*y]: failure constant=-128928, vgcd=64

expanding queue[24]:  - 6848 + 192*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[3+64*x,19+64*y]: unknown, grown from [24]*1,2,4,2,4,8 -6848+384*x+4096*x^2-69312*y-233472*y^2-262144*y^3=0 -> [48]
[35+64*x,19+64*y]: unknown -5632+4480*x+4096*x^2-69312*y-233472*y^2-262144*y^3=0 -> [49]
[3+64*x,51+64*y]: failure constant=-132640, vgcd=64
[35+64*x,51+64*y]: failure constant=-131424, vgcd=64

expanding queue[25]:  - 6496 + 1216*x + 1024*x^2 - 34656*y - 58368*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[19+64*x,19+64*y]: failure constant=-6496, vgcd=64
[51+64*x,19+64*y]: failure constant=-4256, vgcd=64
[19+64*x,51+64*y]: unknown -132288+2432*x+4096*x^2-499392*y-626688*y^2-262144*y^3=0 -> [50]
[51+64*x,51+64*y]: unknown, grown from [12]*8128,68,16,1156,272,64, grown from [6]*8128,136,64,2312,1088,512, grown from [3]*8128,272,256,4624,4352,4096 -130048+6528*x+4096*x^2-499392*y-626688*y^2-262144*y^3=0 -> [51]

expanding queue[26]: 96 + 704*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[11+64*x,3+64*y]: failure constant=96, vgcd=64
[43+64*x,3+64*y]: failure constant=1824, vgcd=64
[11+64*x,35+64*y]: unknown -42752+1408*x+4096*x^2-235200*y-430080*y^2-262144*y^3=0 -> [52]
[43+64*x,35+64*y]: unknown -41024+5504*x+4096*x^2-235200*y-430080*y^2-262144*y^3=0 -> [53]

expanding queue[27]: 704 + 1728*x + 1024*x^2 - 864*y - 9216*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[27+64*x,3+64*y]: unknown, grown from [27]*1,2,4,2,4,8, grown from [1]*352,864,1024,288,3072,32768 704+3456*x+4096*x^2-1728*y-36864*y^2-262144*y^3=0 -> [54]
[59+64*x,3+64*y]: unknown, grown from [1]*1728,1888,1024,288,3072,32768 3456+7552*x+4096*x^2-1728*y-36864*y^2-262144*y^3=0 -> [55]
[27+64*x,35+64*y]: failure constant=-42144, vgcd=64
[59+64*x,35+64*y]: failure constant=-39392, vgcd=64

expanding queue[28]:  - 1280 + 448*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[7+64*x,11+64*y]: unknown, grown from [28]*1,2,4,2,4,8, grown from [14]*1,4,16,4,16,64 -1280+896*x+4096*x^2-23232*y-135168*y^2-262144*y^3=0 -> [56]
[39+64*x,11+64*y]: unknown, grown from [1]*96,1248,1024,3872,11264,32768 192+4992*x+4096*x^2-23232*y-135168*y^2-262144*y^3=0 -> [57]
[7+64*x,43+64*y]: failure constant=-79456, vgcd=64
[39+64*x,43+64*y]: failure constant=-77984, vgcd=64

expanding queue[29]:  - 800 + 1472*x + 1024*x^2 - 11616*y - 33792*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[23+64*x,11+64*y]: failure constant=-800, vgcd=64
[55+64*x,11+64*y]: failure constant=1696, vgcd=64
[23+64*x,43+64*y]: unknown -78976+2944*x+4096*x^2-355008*y-528384*y^2-262144*y^3=0 -> [58]
[55+64*x,43+64*y]: unknown -76480+7040*x+4096*x^2-355008*y-528384*y^2-262144*y^3=0 -> [59]

expanding queue[30]:  - 19456 + 960*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[15+64*x,27+64*y]: unknown, grown from [30]*1,2,4,2,4,8, grown from [3]*1216,80,256,1296,2304,4096 -19456+1920*x+4096*x^2-139968*y-331776*y^2-262144*y^3=0 -> [60]
[47+64*x,27+64*y]: unknown -17472+6016*x+4096*x^2-139968*y-331776*y^2-262144*y^3=0 -> [61]
[15+64*x,59+64*y]: failure constant=-205152, vgcd=64
[47+64*x,59+64*y]: failure constant=-203168, vgcd=64

expanding queue[31]:  - 18720 + 1984*x + 1024*x^2 - 69984*y - 82944*y^2 - 32768*y^3 = 0 modulo [2,2] *64
[31+64*x,27+64*y]: failure constant=-18720, vgcd=64
[63+64*x,27+64*y]: failure constant=-15712, vgcd=64
[31+64*x,59+64*y]: unknown -204416+3968*x+4096*x^2-668352*y-724992*y^2-262144*y^3=0 -> [62]
[63+64*x,59+64*y]: unknown -201408+8064*x+4096*x^2-668352*y-724992*y^2-262144*y^3=0 -> [63]
Maximum level 5 reached, queue size = 64
