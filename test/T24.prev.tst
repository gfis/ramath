Expanding for base=2, transposables={{x},{y}}, reasons+features=base,same,dogrow tran5pose
----------------
expanding queue[0]^-1: 4 - x^3 + y^2 = 0 meter=[2,2] *2
[0+2*x,0+2*y]: unknown, grown from [0]*1,8,4 4-8*x^3+4*y^2=0 -> [1]
[1+2*x,1+2*y]: unknown 4-6*x-12*x^2-8*x^3+4*y+4*y^2=0 -> [2]
----------------
expanding queue[1]^0: 4 - 8*x^3 + 4*y^2 = 0 meter=[1,2] *4
[0+2*x,2+4*y]: unknown 8-8*x^3+16*y+16*y^2=0 -> [3]
expanding queue[2]^0: 4 - 6*x - 12*x^2 - 8*x^3 + 4*y + 4*y^2 = 0 meter=[2,2] *4
[1+4*x,1+4*y]: unknown, grown from [2]*1,2,4,8,2,4 4-12*x-48*x^2-64*x^3+8*y+16*y^2=0 -> [4]
[1+4*x,3+4*y]: unknown, grown from [2]*3,2,4,8,6,4 12-12*x-48*x^2-64*x^3+24*y+16*y^2=0 -> [5]
----------------
expanding queue[3]^1: 8 - 8*x^3 + 16*y + 16*y^2 = 0 meter=[2,1] *8
[2+4*x,2+4*y]: unknown -48*x-96*x^2-64*x^3+16*y+16*y^2=0 -> [6]
expanding queue[4]^2: 4 - 12*x - 48*x^2 - 64*x^3 + 8*y + 16*y^2 = 0 meter=[2,2] *8
[5+8*x,1+8*y]: unknown -120-600*x-960*x^2-512*x^3+16*y+64*y^2=0 -> [7]
[5+8*x,5+8*y]: unknown -96-600*x-960*x^2-512*x^3+80*y+64*y^2=0 -> [8]
expanding queue[5]^2: 12 - 12*x - 48*x^2 - 64*x^3 + 24*y + 16*y^2 = 0 meter=[2,2] *8
[5+8*x,3+8*y]: unknown -112-600*x-960*x^2-512*x^3+48*y+64*y^2=0 -> [9]
[5+8*x,7+8*y]: unknown -72-600*x-960*x^2-512*x^3+112*y+64*y^2=0 -> [10]
----------------
expanding queue[6]^3:  - 48*x - 96*x^2 - 64*x^3 + 16*y + 16*y^2 = 0 meter=[2,2] *16
solution [2,2],trivial(2)
[2+8*x,2+8*y]: unknown, grown from [6]*2,4,8,2,4 -96*x-384*x^2-512*x^3+32*y+64*y^2=0 -> [11]
[2+8*x,6+8*y]: unknown 32-96*x-384*x^2-512*x^3+96*y+64*y^2=0 -> [12]
expanding queue[7]^4:  - 120 - 600*x - 960*x^2 - 512*x^3 + 16*y + 64*y^2 = 0 meter=[2,2] *16
[13+16*x,1+16*y]: unknown -2192-8112*x-9984*x^2-4096*x^3+32*y+256*y^2=0 -> [13]
[13+16*x,9+16*y]: unknown -2112-8112*x-9984*x^2-4096*x^3+288*y+256*y^2=0 -> [14]
expanding queue[8]^4:  - 96 - 600*x - 960*x^2 - 512*x^3 + 80*y + 64*y^2 = 0 meter=[2,2] *16
[5+16*x,5+16*y]: unknown, grown from [8]*1,2,4,8,2,4 -96-1200*x-3840*x^2-4096*x^3+160*y+256*y^2=0 -> [15]
[5+16*x,13+16*y]: unknown, grown from [4]*12,100,80,64,52,16, grown from [2]*12,200,320,512,104,64 48-1200*x-3840*x^2-4096*x^3+416*y+256*y^2=0 -> [16]
expanding queue[9]^5:  - 112 - 600*x - 960*x^2 - 512*x^3 + 48*y + 64*y^2 = 0 meter=[2,2] *16
[5+16*x,3+16*y]: unknown, grown from [9]*1,2,4,8,2,4 -112-1200*x-3840*x^2-4096*x^3+96*y+256*y^2=0 -> [17]
[5+16*x,11+16*y]: unknown -1200*x-3840*x^2-4096*x^3+352*y+256*y^2=0 -> [18]
expanding queue[10]^5:  - 72 - 600*x - 960*x^2 - 512*x^3 + 112*y + 64*y^2 = 0 meter=[2,2] *16
[13+16*x,7+16*y]: unknown -2144-8112*x-9984*x^2-4096*x^3+224*y+256*y^2=0 -> [19]
[13+16*x,15+16*y]: unknown -1968-8112*x-9984*x^2-4096*x^3+480*y+256*y^2=0 -> [20]
----------------
expanding queue[11]^6:  - 96*x - 384*x^2 - 512*x^3 + 32*y + 64*y^2 = 0 meter=[2,2] *32
solution [2,2],trivial(2)
[2+16*x,2+16*y]: unknown, grown from [11]*2,4,8,2,4, grown from [6]*4,16,64,4,16 -192*x-1536*x^2-4096*x^3+64*y+256*y^2=0 -> [21]
[10+16*x,10+16*y]: unknown -896-4800*x-7680*x^2-4096*x^3+320*y+256*y^2=0 -> [22]
expanding queue[12]^6: 32 - 96*x - 384*x^2 - 512*x^3 + 96*y + 64*y^2 = 0 meter=[2,2] *32
[10+16*x,6+16*y]: unknown -960-4800*x-7680*x^2-4096*x^3+192*y+256*y^2=0 -> [23]
[2+16*x,14+16*y]: unknown 192-192*x-1536*x^2-4096*x^3+448*y+256*y^2=0 -> [24]
expanding queue[13]^7:  - 2192 - 8112*x - 9984*x^2 - 4096*x^3 + 32*y + 256*y^2 = 0 meter=[2,2] *32
[29+32*x,1+32*y]: unknown -24384-80736*x-89088*x^2-32768*x^3+64*y+1024*y^2=0 -> [25]
[29+32*x,17+32*y]: unknown -24096-80736*x-89088*x^2-32768*x^3+1088*y+1024*y^2=0 -> [26]
expanding queue[14]^7:  - 2112 - 8112*x - 9984*x^2 - 4096*x^3 + 288*y + 256*y^2 = 0 meter=[2,2] *32
[13+32*x,9+32*y]: unknown, grown from [14]*1,2,4,8,2,4 -2112-16224*x-39936*x^2-32768*x^3+576*y+1024*y^2=0 -> [27]
[13+32*x,25+32*y]: unknown -1568-16224*x-39936*x^2-32768*x^3+1600*y+1024*y^2=0 -> [28]
expanding queue[15]^8:  - 96 - 1200*x - 3840*x^2 - 4096*x^3 + 160*y + 256*y^2 = 0 meter=[2,2] *32
[5+32*x,5+32*y]: unknown, grown from [15]*1,2,4,8,2,4, grown from [8]*1,4,16,64,4,16 -96-2400*x-15360*x^2-32768*x^3+320*y+1024*y^2=0 -> [29]
[5+32*x,21+32*y]: unknown, grown from [4]*80,200,320,512,168,64, grown from [2]*80,400,1280,4096,336,256 320-2400*x-15360*x^2-32768*x^3+1344*y+1024*y^2=0 -> [30]
expanding queue[16]^8: 48 - 1200*x - 3840*x^2 - 4096*x^3 + 416*y + 256*y^2 = 0 meter=[2,2] *32
[21+32*x,13+32*y]: unknown -9088-42336*x-64512*x^2-32768*x^3+832*y+1024*y^2=0 -> [31]
[21+32*x,29+32*y]: unknown -8416-42336*x-64512*x^2-32768*x^3+1856*y+1024*y^2=0 -> [32]
expanding queue[17]^9:  - 112 - 1200*x - 3840*x^2 - 4096*x^3 + 96*y + 256*y^2 = 0 meter=[2,2] *32
[21+32*x,3+32*y]: unknown -9248-42336*x-64512*x^2-32768*x^3+192*y+1024*y^2=0 -> [33]
[21+32*x,19+32*y]: unknown -8896-42336*x-64512*x^2-32768*x^3+1216*y+1024*y^2=0 -> [34]
expanding queue[18]^9:  - 1200*x - 3840*x^2 - 4096*x^3 + 352*y + 256*y^2 = 0 meter=[2,2] *32
solution [5,11],NONTRIVIAL
[5+32*x,11+32*y]: unknown, grown from [18]*2,4,8,2,4 -2400*x-15360*x^2-32768*x^3+704*y+1024*y^2=0 -> [35]
[5+32*x,27+32*y]: unknown, grown from [2]*152,400,1280,4096,432,256 608-2400*x-15360*x^2-32768*x^3+1728*y+1024*y^2=0 -> [36]
expanding queue[19]^10:  - 2144 - 8112*x - 9984*x^2 - 4096*x^3 + 224*y + 256*y^2 = 0 meter=[2,2] *32
[13+32*x,7+32*y]: unknown, grown from [19]*1,2,4,8,2,4 -2144-16224*x-39936*x^2-32768*x^3+448*y+1024*y^2=0 -> [37]
[13+32*x,23+32*y]: unknown -1664-16224*x-39936*x^2-32768*x^3+1472*y+1024*y^2=0 -> [38]
expanding queue[20]^10:  - 1968 - 8112*x - 9984*x^2 - 4096*x^3 + 480*y + 256*y^2 = 0 meter=[2,2] *32
[29+32*x,15+32*y]: unknown -24160-80736*x-89088*x^2-32768*x^3+960*y+1024*y^2=0 -> [39]
[29+32*x,31+32*y]: unknown -23424-80736*x-89088*x^2-32768*x^3+1984*y+1024*y^2=0 -> [40]
----------------
expanding queue[21]^11:  - 192*x - 1536*x^2 - 4096*x^3 + 64*y + 256*y^2 = 0 meter=[2,2] *64
solution [2,2],trivial(2)
[2+32*x,2+32*y]: unknown, grown from [21]*2,4,8,2,4, grown from [11]*4,16,64,4,16, grown from [6]*8,64,512,8,64 -384*x-6144*x^2-32768*x^3+128*y+1024*y^2=0 -> [41]
[18+32*x,18+32*y]: unknown -5504-31104*x-55296*x^2-32768*x^3+1152*y+1024*y^2=0 -> [42]
expanding queue[22]^11:  - 896 - 4800*x - 7680*x^2 - 4096*x^3 + 320*y + 256*y^2 = 0 meter=[2,2] *64
[10+32*x,10+32*y]: unknown, grown from [22]*1,2,4,8,2,4 -896-9600*x-30720*x^2-32768*x^3+640*y+1024*y^2=0 -> [43]
[26+32*x,26+32*y]: unknown -16896-64896*x-79872*x^2-32768*x^3+1664*y+1024*y^2=0 -> [44]
expanding queue[23]^12:  - 960 - 4800*x - 7680*x^2 - 4096*x^3 + 192*y + 256*y^2 = 0 meter=[2,2] *64
[26+32*x,6+32*y]: unknown -17536-64896*x-79872*x^2-32768*x^3+384*y+1024*y^2=0 -> [45]
[10+32*x,22+32*y]: unknown -512-9600*x-30720*x^2-32768*x^3+1408*y+1024*y^2=0 -> [46]
expanding queue[24]^12: 192 - 192*x - 1536*x^2 - 4096*x^3 + 448*y + 256*y^2 = 0 meter=[2,2] *64
[18+32*x,14+32*y]: unknown -5632-31104*x-55296*x^2-32768*x^3+896*y+1024*y^2=0 -> [47]
[2+32*x,30+32*y]: unknown, grown from [12]*28,4,16,64,20,16 896-384*x-6144*x^2-32768*x^3+1920*y+1024*y^2=0 -> [48]
expanding queue[25]^13:  - 24384 - 80736*x - 89088*x^2 - 32768*x^3 + 64*y + 1024*y^2 = 0 meter=[2,2] *64
[29+64*x,1+64*y]: unknown, grown from [25]*1,2,4,8,2,4 -24384-161472*x-356352*x^2-262144*x^3+128*y+4096*y^2=0 -> [49]
[29+64*x,33+64*y]: unknown -23296-161472*x-356352*x^2-262144*x^3+4224*y+4096*y^2=0 -> [50]
expanding queue[26]^13:  - 24096 - 80736*x - 89088*x^2 - 32768*x^3 + 1088*y + 1024*y^2 = 0 meter=[2,2] *64
[61+64*x,17+64*y]: unknown -226688-714432*x-749568*x^2-262144*x^3+2176*y+4096*y^2=0 -> [51]
[61+64*x,49+64*y]: unknown -224576-714432*x-749568*x^2-262144*x^3+6272*y+4096*y^2=0 -> [52]
expanding queue[27]^14:  - 2112 - 16224*x - 39936*x^2 - 32768*x^3 + 576*y + 1024*y^2 = 0 meter=[2,2] *64
[13+64*x,9+64*y]: unknown, grown from [27]*1,2,4,8,2,4, grown from [14]*1,4,16,64,4,16 -2112-32448*x-159744*x^2-262144*x^3+1152*y+4096*y^2=0 -> [53]
[13+64*x,41+64*y]: unknown -512-32448*x-159744*x^2-262144*x^3+5248*y+4096*y^2=0 -> [54]
expanding queue[28]^14:  - 1568 - 16224*x - 39936*x^2 - 32768*x^3 + 1600*y + 1024*y^2 = 0 meter=[2,2] *64
[45+64*x,25+64*y]: unknown -90496-388800*x-552960*x^2-262144*x^3+3200*y+4096*y^2=0 -> [55]
[45+64*x,57+64*y]: unknown -87872-388800*x-552960*x^2-262144*x^3+7296*y+4096*y^2=0 -> [56]
expanding queue[29]^15:  - 96 - 2400*x - 15360*x^2 - 32768*x^3 + 320*y + 1024*y^2 = 0 meter=[2,2] *64
[37+64*x,5+64*y]: unknown -50624-262848*x-454656*x^2-262144*x^3+640*y+4096*y^2=0 -> [57]
[37+64*x,37+64*y]: unknown -49280-262848*x-454656*x^2-262144*x^3+4736*y+4096*y^2=0 -> [58]
expanding queue[30]^15: 320 - 2400*x - 15360*x^2 - 32768*x^3 + 1344*y + 1024*y^2 = 0 meter=[2,2] *64
[5+64*x,21+64*y]: unknown, grown from [30]*1,2,4,8,2,4, grown from [4]*80,400,1280,4096,336,256, grown from [2]*80,800,5120,32768,672,1024 320-4800*x-61440*x^2-262144*x^3+2688*y+4096*y^2=0 -> [59]
[5+64*x,53+64*y]: unknown, grown from [4]*672,400,1280,4096,848,256, grown from [2]*672,800,5120,32768,1696,1024 2688-4800*x-61440*x^2-262144*x^3+6784*y+4096*y^2=0 -> [60]
expanding queue[31]^16:  - 9088 - 42336*x - 64512*x^2 - 32768*x^3 + 832*y + 1024*y^2 = 0 meter=[2,2] *64
[21+64*x,13+64*y]: unknown, grown from [31]*1,2,4,8,2,4 -9088-84672*x-258048*x^2-262144*x^3+1664*y+4096*y^2=0 -> [61]
[21+64*x,45+64*y]: unknown -7232-84672*x-258048*x^2-262144*x^3+5760*y+4096*y^2=0 -> [62]
expanding queue[32]^16:  - 8416 - 42336*x - 64512*x^2 - 32768*x^3 + 1856*y + 1024*y^2 = 0 meter=[2,2] *64
[53+64*x,29+64*y]: unknown -148032-539328*x-651264*x^2-262144*x^3+3712*y+4096*y^2=0 -> [63]
[53+64*x,61+64*y]: unknown -145152-539328*x-651264*x^2-262144*x^3+7808*y+4096*y^2=0 -> [64]
expanding queue[33]^17:  - 9248 - 42336*x - 64512*x^2 - 32768*x^3 + 192*y + 1024*y^2 = 0 meter=[2,2] *64
[53+64*x,3+64*y]: unknown -148864-539328*x-651264*x^2-262144*x^3+384*y+4096*y^2=0 -> [65]
[53+64*x,35+64*y]: unknown -147648-539328*x-651264*x^2-262144*x^3+4480*y+4096*y^2=0 -> [66]
expanding queue[34]^17:  - 8896 - 42336*x - 64512*x^2 - 32768*x^3 + 1216*y + 1024*y^2 = 0 meter=[2,2] *64
[21+64*x,19+64*y]: unknown, grown from [34]*1,2,4,8,2,4 -8896-84672*x-258048*x^2-262144*x^3+2432*y+4096*y^2=0 -> [67]
[21+64*x,51+64*y]: unknown -6656-84672*x-258048*x^2-262144*x^3+6528*y+4096*y^2=0 -> [68]
expanding queue[35]^18:  - 2400*x - 15360*x^2 - 32768*x^3 + 704*y + 1024*y^2 = 0 meter=[2,2] *64
solution [5,11],NONTRIVIAL
[5+64*x,11+64*y]: unknown, grown from [35]*2,4,8,2,4, grown from [18]*4,16,64,4,16 -4800*x-61440*x^2-262144*x^3+1408*y+4096*y^2=0 -> [69]
[5+64*x,43+64*y]: unknown, grown from [2]*432,800,5120,32768,1376,1024 1728-4800*x-61440*x^2-262144*x^3+5504*y+4096*y^2=0 -> [70]
expanding queue[36]^18: 608 - 2400*x - 15360*x^2 - 32768*x^3 + 1728*y + 1024*y^2 = 0 meter=[2,2] *64
[37+64*x,27+64*y]: unknown -49920-262848*x-454656*x^2-262144*x^3+3456*y+4096*y^2=0 -> [71]
[37+64*x,59+64*y]: unknown -47168-262848*x-454656*x^2-262144*x^3+7552*y+4096*y^2=0 -> [72]
expanding queue[37]^19:  - 2144 - 16224*x - 39936*x^2 - 32768*x^3 + 448*y + 1024*y^2 = 0 meter=[2,2] *64
[45+64*x,7+64*y]: unknown -91072-388800*x-552960*x^2-262144*x^3+896*y+4096*y^2=0 -> [73]
[45+64*x,39+64*y]: unknown -89600-388800*x-552960*x^2-262144*x^3+4992*y+4096*y^2=0 -> [74]
expanding queue[38]^19:  - 1664 - 16224*x - 39936*x^2 - 32768*x^3 + 1472*y + 1024*y^2 = 0 meter=[2,2] *64
[13+64*x,23+64*y]: unknown, grown from [38]*1,2,4,8,2,4 -1664-32448*x-159744*x^2-262144*x^3+2944*y+4096*y^2=0 -> [75]
[13+64*x,55+64*y]: unknown, grown from [2]*208,5408,13312,32768,1760,1024 832-32448*x-159744*x^2-262144*x^3+7040*y+4096*y^2=0 -> [76]
expanding queue[39]^20:  - 24160 - 80736*x - 89088*x^2 - 32768*x^3 + 960*y + 1024*y^2 = 0 meter=[2,2] *64
[61+64*x,15+64*y]: unknown -226752-714432*x-749568*x^2-262144*x^3+1920*y+4096*y^2=0 -> [77]
[61+64*x,47+64*y]: unknown -224768-714432*x-749568*x^2-262144*x^3+6016*y+4096*y^2=0 -> [78]
expanding queue[40]^20:  - 23424 - 80736*x - 89088*x^2 - 32768*x^3 + 1984*y + 1024*y^2 = 0 meter=[2,2] *64
[29+64*x,31+64*y]: unknown, grown from [40]*1,2,4,8,2,4 -23424-161472*x-356352*x^2-262144*x^3+3968*y+4096*y^2=0 -> [79]
[29+64*x,63+64*y]: unknown -20416-161472*x-356352*x^2-262144*x^3+8064*y+4096*y^2=0 -> [80]
Maximum level 5 reached, queue size = 81
