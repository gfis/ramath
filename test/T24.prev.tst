Expanding for base=2, reasons+features=base,evenexp,similiar,evenexp,similiar
exponentGCDs=[3,2], transposables={{x},{y}}
----------------
expanding queue[0]^-1: 4 - x^3 + y^2 meter=[2,2] *2
[0+2*x,0+2*y]:	unknown -> [1] 4-8*x^3+4*y^2
[1+2*x,1+2*y]:	unknown -> [2] 4-6*x-12*x^2-8*x^3+4*y+4*y^2
----------------
expanding queue[1]^0: 4 - 8*x^3 + 4*y^2 meter=[1,2] *4
[0+2*x,2+4*y]:	unknown -> [3] 8-8*x^3+16*y+16*y^2
expanding queue[2]^0: 4 - 6*x - 12*x^2 - 8*x^3 + 4*y + 4*y^2 meter=[2,2] *4
[1+4*x,1+4*y]:	unknown -> [4] 4-12*x-48*x^2-64*x^3+8*y+16*y^2
[1+4*x,3+4*y]:	negative-1 [4] by {y=>-y-1}
----------------
expanding queue[3]^1: 8 - 8*x^3 + 16*y + 16*y^2 meter=[2,1] *8
[2+4*x,2+4*y]:	unknown -> [5] -48*x-96*x^2-64*x^3+16*y+16*y^2
expanding queue[4]^2: 4 - 12*x - 48*x^2 - 64*x^3 + 8*y + 16*y^2 meter=[2,2] *8
[5+8*x,1+8*y]:	unknown -> [6] -120-600*x-960*x^2-512*x^3+16*y+64*y^2
[5+8*x,5+8*y]:	unknown -> [7] -96-600*x-960*x^2-512*x^3+80*y+64*y^2
----------------
expanding queue[5]^3:  - 48*x - 96*x^2 - 64*x^3 + 16*y + 16*y^2 meter=[2,2] *16
solution [2,2],trivial(2)
[2+8*x,2+8*y]:	unknown -> [8] -96*x-384*x^2-512*x^3+32*y+64*y^2
[2+8*x,6+8*y]:	negative-1 [8] by {y=>-y-1}
expanding queue[6]^4:  - 120 - 600*x - 960*x^2 - 512*x^3 + 16*y + 64*y^2 meter=[2,2] *16
[13+16*x,1+16*y]:	unknown -> [9] -2192-8112*x-9984*x^2-4096*x^3+32*y+256*y^2
[13+16*x,9+16*y]:	unknown -> [10] -2112-8112*x-9984*x^2-4096*x^3+288*y+256*y^2
expanding queue[7]^4:  - 96 - 600*x - 960*x^2 - 512*x^3 + 80*y + 64*y^2 meter=[2,2] *16
[5+16*x,5+16*y]:	unknown -> [11] -96-1200*x-3840*x^2-4096*x^3+160*y+256*y^2
[5+16*x,13+16*y]:	unknown -> [12] 48-1200*x-3840*x^2-4096*x^3+416*y+256*y^2
----------------
expanding queue[8]^5:  - 96*x - 384*x^2 - 512*x^3 + 32*y + 64*y^2 meter=[2,2] *32
solution [2,2],trivial(2)
[2+16*x,2+16*y]:	unknown -> [13] -192*x-1536*x^2-4096*x^3+64*y+256*y^2
[10+16*x,10+16*y]:	unknown -> [14] -896-4800*x-7680*x^2-4096*x^3+320*y+256*y^2
expanding queue[9]^6:  - 2192 - 8112*x - 9984*x^2 - 4096*x^3 + 32*y + 256*y^2 meter=[2,2] *32
[29+32*x,1+32*y]:	unknown -> [15] -24384-80736*x-89088*x^2-32768*x^3+64*y+1024*y^2
[29+32*x,17+32*y]:	unknown -> [16] -24096-80736*x-89088*x^2-32768*x^3+1088*y+1024*y^2
expanding queue[10]^6:  - 2112 - 8112*x - 9984*x^2 - 4096*x^3 + 288*y + 256*y^2 meter=[2,2] *32
[13+32*x,9+32*y]:	unknown -> [17] -2112-16224*x-39936*x^2-32768*x^3+576*y+1024*y^2
[13+32*x,25+32*y]:	unknown -> [18] -1568-16224*x-39936*x^2-32768*x^3+1600*y+1024*y^2
expanding queue[11]^7:  - 96 - 1200*x - 3840*x^2 - 4096*x^3 + 160*y + 256*y^2 meter=[2,2] *32
[5+32*x,5+32*y]:	unknown -> [19] -96-2400*x-15360*x^2-32768*x^3+320*y+1024*y^2
[5+32*x,21+32*y]:	unknown -> [20] 320-2400*x-15360*x^2-32768*x^3+1344*y+1024*y^2
expanding queue[12]^7: 48 - 1200*x - 3840*x^2 - 4096*x^3 + 416*y + 256*y^2 meter=[2,2] *32
[21+32*x,13+32*y]:	unknown -> [21] -9088-42336*x-64512*x^2-32768*x^3+832*y+1024*y^2
[21+32*x,29+32*y]:	unknown -> [22] -8416-42336*x-64512*x^2-32768*x^3+1856*y+1024*y^2
----------------
expanding queue[13]^8:  - 192*x - 1536*x^2 - 4096*x^3 + 64*y + 256*y^2 meter=[2,2] *64
solution [2,2],trivial(2)
[2+32*x,2+32*y]:	unknown -> [23] -384*x-6144*x^2-32768*x^3+128*y+1024*y^2
[18+32*x,18+32*y]:	unknown -> [24] -5504-31104*x-55296*x^2-32768*x^3+1152*y+1024*y^2
expanding queue[14]^8:  - 896 - 4800*x - 7680*x^2 - 4096*x^3 + 320*y + 256*y^2 meter=[2,2] *64
[10+32*x,10+32*y]:	unknown -> [25] -896-9600*x-30720*x^2-32768*x^3+640*y+1024*y^2
[26+32*x,26+32*y]:	unknown -> [26] -16896-64896*x-79872*x^2-32768*x^3+1664*y+1024*y^2
expanding queue[15]^9:  - 24384 - 80736*x - 89088*x^2 - 32768*x^3 + 64*y + 1024*y^2 meter=[2,2] *64
[29+64*x,1+64*y]:	unknown -> [27] -24384-161472*x-356352*x^2-262144*x^3+128*y+4096*y^2
[29+64*x,33+64*y]:	unknown -> [28] -23296-161472*x-356352*x^2-262144*x^3+4224*y+4096*y^2
expanding queue[16]^9:  - 24096 - 80736*x - 89088*x^2 - 32768*x^3 + 1088*y + 1024*y^2 meter=[2,2] *64
[61+64*x,17+64*y]:	unknown -> [29] -226688-714432*x-749568*x^2-262144*x^3+2176*y+4096*y^2
[61+64*x,49+64*y]:	unknown -> [30] -224576-714432*x-749568*x^2-262144*x^3+6272*y+4096*y^2
expanding queue[17]^10:  - 2112 - 16224*x - 39936*x^2 - 32768*x^3 + 576*y + 1024*y^2 meter=[2,2] *64
[13+64*x,9+64*y]:	unknown -> [31] -2112-32448*x-159744*x^2-262144*x^3+1152*y+4096*y^2
[13+64*x,41+64*y]:	unknown -> [32] -512-32448*x-159744*x^2-262144*x^3+5248*y+4096*y^2
expanding queue[18]^10:  - 1568 - 16224*x - 39936*x^2 - 32768*x^3 + 1600*y + 1024*y^2 meter=[2,2] *64
[45+64*x,25+64*y]:	unknown -> [33] -90496-388800*x-552960*x^2-262144*x^3+3200*y+4096*y^2
[45+64*x,57+64*y]:	unknown -> [34] -87872-388800*x-552960*x^2-262144*x^3+7296*y+4096*y^2
expanding queue[19]^11:  - 96 - 2400*x - 15360*x^2 - 32768*x^3 + 320*y + 1024*y^2 meter=[2,2] *64
[37+64*x,5+64*y]:	unknown -> [35] -50624-262848*x-454656*x^2-262144*x^3+640*y+4096*y^2
[37+64*x,37+64*y]:	unknown -> [36] -49280-262848*x-454656*x^2-262144*x^3+4736*y+4096*y^2
expanding queue[20]^11: 320 - 2400*x - 15360*x^2 - 32768*x^3 + 1344*y + 1024*y^2 meter=[2,2] *64
[5+64*x,21+64*y]:	unknown -> [37] 320-4800*x-61440*x^2-262144*x^3+2688*y+4096*y^2
[5+64*x,53+64*y]:	unknown -> [38] 2688-4800*x-61440*x^2-262144*x^3+6784*y+4096*y^2
expanding queue[21]^12:  - 9088 - 42336*x - 64512*x^2 - 32768*x^3 + 832*y + 1024*y^2 meter=[2,2] *64
[21+64*x,13+64*y]:	unknown -> [39] -9088-84672*x-258048*x^2-262144*x^3+1664*y+4096*y^2
[21+64*x,45+64*y]:	unknown -> [40] -7232-84672*x-258048*x^2-262144*x^3+5760*y+4096*y^2
expanding queue[22]^12:  - 8416 - 42336*x - 64512*x^2 - 32768*x^3 + 1856*y + 1024*y^2 meter=[2,2] *64
[53+64*x,29+64*y]:	unknown -> [41] -148032-539328*x-651264*x^2-262144*x^3+3712*y+4096*y^2
[53+64*x,61+64*y]:	unknown -> [42] -145152-539328*x-651264*x^2-262144*x^3+7808*y+4096*y^2
Maximum level 5 reached at [43]: 4 - x^3 + y^2
