Expanding for base=2, transposables={{x,y},{z}}, reasons+features=base,same,transpose,dogrow norm,invall
----------------
expanding queue[0]^-1: x^4 + x^2*y^2 + y^4 - z^2 = 0 meter=[2,2,2] *2
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+2*z]: unknown, grown from [0]*4,4,4,1 4*x^4+4*x^2*y^2+4*y^4-z^2=0 -> [1]
[1+2*x,0+2*y,1+2*z]: unknown 2*x+6*x^2+8*x^3+4*x^4+y^2+4*x*y^2+4*x^2*y^2+4*y^4-z-z^2=0 -> [2]
[0+2*x,1+2*y,1+2*z]: transposition of [2] {0/0+2*y,0/1+2*x,2/1+2*z} by 0+2*y|0+2*x 1+2*x|1+2*y
----------------
expanding queue[1]^0: 4*x^4 + 4*x^2*y^2 + 4*y^4 - z^2 = 0 meter=[2,2,2] *4
solution [0,0,0],trivial(3)
[0+4*x,0+4*y,0+4*z]: unknown, grown from [1]*4,4,4,1, grown from [0]*16,16,16,1 16*x^4+16*x^2*y^2+16*y^4-z^2=0 -> [3]
[2+4*x,0+4*y,0+4*z]: unknown 1+8*x+24*x^2+32*x^3+16*x^4+4*y^2+16*x*y^2+16*x^2*y^2+16*y^4-z^2=0 -> [4]
[0+4*x,2+4*y,0+4*z]: transposition of [4] {0/0+4*y,0/2+4*x,2/0+4*z} by 0+4*y|0+4*x 2+4*x|2+4*y
[2+4*x,2+4*y,0+4*z]: unknown 3+12*x+28*x^2+32*x^3+16*x^4+12*y+16*x*y+16*x^2*y+28*y^2+16*x*y^2+16*x^2*y^2+32*y^3+16*y^4-z^2=0 -> [5]
expanding queue[2]^0: 2*x + 6*x^2 + 8*x^3 + 4*x^4 + y^2 + 4*x*y^2 + 4*x^2*y^2 + 4*y^4 - z - z^2 = 0 meter=[2,2,2] *4
solution [1,0,1],trivial(3)
[1+4*x,0+4*y,1+4*z]: unknown, grown from [2]*1,2,4,8,2,4,8,8,1,2 2*x+12*x^2+32*x^3+32*x^4+2*y^2+16*x*y^2+32*x^2*y^2+32*y^4-z-2*z^2=0 -> [6]
[3+4*x,0+4*y,1+4*z]: unknown 10+54*x+108*x^2+96*x^3+32*x^4+18*y^2+48*x*y^2+32*x^2*y^2+32*y^4-z-2*z^2=0 -> [7]
[1+4*x,0+4*y,3+4*z]: unknown -1+2*x+12*x^2+32*x^3+32*x^4+2*y^2+16*x*y^2+32*x^2*y^2+32*y^4-3*z-2*z^2=0 -> [8]
[3+4*x,0+4*y,3+4*z]: unknown 9+54*x+108*x^2+96*x^3+32*x^4+18*y^2+48*x*y^2+32*x^2*y^2+32*y^4-3*z-2*z^2=0 -> [9]
----------------
expanding queue[3]^1: 16*x^4 + 16*x^2*y^2 + 16*y^4 - z^2 = 0 meter=[2,2,2] *8
solution [0,0,0],trivial(3)
[0+8*x,0+8*y,0+8*z]: unknown, grown from [3]*4,4,4,1, grown from [1]*16,16,16,1, grown from [0]*64,64,64,1 64*x^4+64*x^2*y^2+64*y^4-z^2=0 -> [10]
[4+8*x,0+8*y,0+8*z]: unknown 4+32*x+96*x^2+128*x^3+64*x^4+16*y^2+64*x*y^2+64*x^2*y^2+64*y^4-z^2=0 -> [11]
[0+8*x,4+8*y,0+8*z]: transposition of [11] {0/0+8*y,0/4+8*x,2/0+8*z} by 0+8*y|0+8*x 4+8*x|4+8*y
[4+8*x,4+8*y,0+8*z]: unknown 12+48*x+112*x^2+128*x^3+64*x^4+48*y+64*x*y+64*x^2*y+112*y^2+64*x*y^2+64*x^2*y^2+128*y^3+64*y^4-z^2=0 -> [12]
expanding queue[4]^1: 1 + 8*x + 24*x^2 + 32*x^3 + 16*x^4 + 4*y^2 + 16*x*y^2 + 16*x^2*y^2 + 16*y^4 - z^2 = 0 meter=[2,2,2] *8
[2+8*x,0+8*y,4+8*z]: unknown 4*x+24*x^2+64*x^3+64*x^4+4*y^2+32*x*y^2+64*x^2*y^2+64*y^4-z-z^2=0 -> [13]
[6+8*x,0+8*y,4+8*z]: unknown 20+108*x+216*x^2+192*x^3+64*x^4+36*y^2+96*x*y^2+64*x^2*y^2+64*y^4-z-z^2=0 -> [14]
[2+8*x,4+8*y,4+8*z]: unknown 5+12*x+40*x^2+64*x^3+64*x^4+36*y+32*x*y+64*x^2*y+100*y^2+32*x*y^2+64*x^2*y^2+128*y^3+64*y^4-z-z^2=0 -> [15]
[6+8*x,4+8*y,4+8*z]: unknown 33+132*x+232*x^2+192*x^3+64*x^4+68*y+96*x*y+64*x^2*y+132*y^2+96*x*y^2+64*x^2*y^2+128*y^3+64*y^4-z-z^2=0 -> [16]
expanding queue[5]^1: 3 + 12*x + 28*x^2 + 32*x^3 + 16*x^4 + 12*y + 16*x*y + 16*x^2*y + 28*y^2 + 16*x*y^2 + 16*x^2*y^2 + 32*y^3 + 16*y^4 - z^2 = 0 meter=[2,2,2] *8
expanding queue[6]^2: 2*x + 12*x^2 + 32*x^3 + 32*x^4 + 2*y^2 + 16*x*y^2 + 32*x^2*y^2 + 32*y^4 - z - 2*z^2 = 0 meter=[2,2,2] *8
solution [1,0,1],trivial(3)
[1+8*x,0+8*y,1+8*z]: unknown, grown from [6]*1,2,4,8,2,4,8,8,1,2, grown from [2]*1,4,16,64,4,16,64,64,1,4 2*x+24*x^2+128*x^3+256*x^4+4*y^2+64*x*y^2+256*x^2*y^2+256*y^4-z-4*z^2=0 -> [17]
[5+8*x,0+8*y,1+8*z]: unknown 39+250*x+600*x^2+640*x^3+256*x^4+100*y^2+320*x*y^2+256*x^2*y^2+256*y^4-z-4*z^2=0 -> [18]
[1+8*x,4+8*y,1+8*z]: unknown 17+18*x+88*x^2+128*x^3+256*x^4+132*y+64*x*y+256*x^2*y+388*y^2+64*x*y^2+256*x^2*y^2+512*y^3+256*y^4-z-4*z^2=0 -> [19]
[5+8*x,4+8*y,1+8*z]: unknown 80+330*x+664*x^2+640*x^3+256*x^4+228*y+320*x*y+256*x^2*y+484*y^2+320*x*y^2+256*x^2*y^2+512*y^3+256*y^4-z-4*z^2=0 -> [20]
expanding queue[7]^2: 10 + 54*x + 108*x^2 + 96*x^3 + 32*x^4 + 18*y^2 + 48*x*y^2 + 32*x^2*y^2 + 32*y^4 - z - 2*z^2 = 0 meter=[2,2,2] *8
[3+8*x,0+8*y,1+8*z]: unknown 5+54*x+216*x^2+384*x^3+256*x^4+36*y^2+192*x*y^2+256*x^2*y^2+256*y^4-z-4*z^2=0 -> [21]
[7+8*x,0+8*y,1+8*z]: unknown 150+686*x+1176*x^2+896*x^3+256*x^4+196*y^2+448*x*y^2+256*x^2*y^2+256*y^4-z-4*z^2=0 -> [22]
[3+8*x,4+8*y,1+8*z]: unknown 30+102*x+280*x^2+384*x^3+256*x^4+164*y+192*x*y+256*x^2*y+420*y^2+192*x*y^2+256*x^2*y^2+512*y^3+256*y^4-z-4*z^2=0 -> [23]
[7+8*x,4+8*y,1+8*z]: unknown 215+798*x+1240*x^2+896*x^3+256*x^4+324*y+448*x*y+256*x^2*y+580*y^2+448*x*y^2+256*x^2*y^2+512*y^3+256*y^4-z-4*z^2=0 -> [24]
expanding queue[8]^2:  - 1 + 2*x + 12*x^2 + 32*x^3 + 32*x^4 + 2*y^2 + 16*x*y^2 + 32*x^2*y^2 + 32*y^4 - 3*z - 2*z^2 = 0 meter=[2,2,2] *8
[1+8*x,0+8*y,7+8*z]: unknown -3+2*x+24*x^2+128*x^3+256*x^4+4*y^2+64*x*y^2+256*x^2*y^2+256*y^4-7*z-4*z^2=0 -> [25]
[5+8*x,0+8*y,7+8*z]: unknown 36+250*x+600*x^2+640*x^3+256*x^4+100*y^2+320*x*y^2+256*x^2*y^2+256*y^4-7*z-4*z^2=0 -> [26]
[1+8*x,4+8*y,7+8*z]: unknown 14+18*x+88*x^2+128*x^3+256*x^4+132*y+64*x*y+256*x^2*y+388*y^2+64*x*y^2+256*x^2*y^2+512*y^3+256*y^4-7*z-4*z^2=0 -> [27]
[5+8*x,4+8*y,7+8*z]: unknown 77+330*x+664*x^2+640*x^3+256*x^4+228*y+320*x*y+256*x^2*y+484*y^2+320*x*y^2+256*x^2*y^2+512*y^3+256*y^4-7*z-4*z^2=0 -> [28]
expanding queue[9]^2: 9 + 54*x + 108*x^2 + 96*x^3 + 32*x^4 + 18*y^2 + 48*x*y^2 + 32*x^2*y^2 + 32*y^4 - 3*z - 2*z^2 = 0 meter=[2,2,2] *8
[3+8*x,0+8*y,7+8*z]: unknown 2+54*x+216*x^2+384*x^3+256*x^4+36*y^2+192*x*y^2+256*x^2*y^2+256*y^4-7*z-4*z^2=0 -> [29]
[7+8*x,0+8*y,7+8*z]: unknown 147+686*x+1176*x^2+896*x^3+256*x^4+196*y^2+448*x*y^2+256*x^2*y^2+256*y^4-7*z-4*z^2=0 -> [30]
[3+8*x,4+8*y,7+8*z]: unknown 27+102*x+280*x^2+384*x^3+256*x^4+164*y+192*x*y+256*x^2*y+420*y^2+192*x*y^2+256*x^2*y^2+512*y^3+256*y^4-7*z-4*z^2=0 -> [31]
[7+8*x,4+8*y,7+8*z]: unknown 212+798*x+1240*x^2+896*x^3+256*x^4+324*y+448*x*y+256*x^2*y+580*y^2+448*x*y^2+256*x^2*y^2+512*y^3+256*y^4-7*z-4*z^2=0 -> [32]
----------------
expanding queue[10]^3: 64*x^4 + 64*x^2*y^2 + 64*y^4 - z^2 = 0 meter=[2,2,2] *16
solution [0,0,0],trivial(3)
[0+16*x,0+16*y,0+16*z]: unknown, grown from [10]*4,4,4,1, grown from [3]*16,16,16,1, grown from [1]*64,64,64,1, grown from [0]*256,256,256,1 256*x^4+256*x^2*y^2+256*y^4-z^2=0 -> [33]
[8+16*x,0+16*y,0+16*z]: unknown 16+128*x+384*x^2+512*x^3+256*x^4+64*y^2+256*x*y^2+256*x^2*y^2+256*y^4-z^2=0 -> [34]
[0+16*x,8+16*y,0+16*z]: transposition of [34] {0/0+16*y,0/8+16*x,2/0+16*z} by 0+16*y|0+16*x 8+16*x|8+16*y
[8+16*x,8+16*y,0+16*z]: unknown 48+192*x+448*x^2+512*x^3+256*x^4+192*y+256*x*y+256*x^2*y+448*y^2+256*x*y^2+256*x^2*y^2+512*y^3+256*y^4-z^2=0 -> [35]
expanding queue[11]^3: 4 + 32*x + 96*x^2 + 128*x^3 + 64*x^4 + 16*y^2 + 64*x*y^2 + 64*x^2*y^2 + 64*y^4 - z^2 = 0 meter=[2,2,2] *16
[4+16*x,0+16*y,0+16*z]: unknown 1+16*x+96*x^2+256*x^3+256*x^4+16*y^2+128*x*y^2+256*x^2*y^2+256*y^4-z^2=0 -> [36]
[12+16*x,0+16*y,0+16*z]: unknown 81+432*x+864*x^2+768*x^3+256*x^4+144*y^2+384*x*y^2+256*x^2*y^2+256*y^4-z^2=0 -> [37]
[4+16*x,8+16*y,0+16*z]: unknown 21+48*x+160*x^2+256*x^3+256*x^4+144*y+128*x*y+256*x^2*y+400*y^2+128*x*y^2+256*x^2*y^2+512*y^3+256*y^4-z^2=0 -> [38]
[12+16*x,8+16*y,0+16*z]: unknown 133+528*x+928*x^2+768*x^3+256*x^4+272*y+384*x*y+256*x^2*y+528*y^2+384*x*y^2+256*x^2*y^2+512*y^3+256*y^4-z^2=0 -> [39]
expanding queue[12]^3: 12 + 48*x + 112*x^2 + 128*x^3 + 64*x^4 + 48*y + 64*x*y + 64*x^2*y + 112*y^2 + 64*x*y^2 + 64*x^2*y^2 + 128*y^3 + 64*y^4 - z^2 = 0 meter=[2,2,2] *16
[4+16*x,4+16*y,0+16*z]: unknown 3+24*x+112*x^2+256*x^3+256*x^4+24*y+64*x*y+128*x^2*y+112*y^2+128*x*y^2+256*x^2*y^2+256*y^3+256*y^4-z^2=0 -> [40]
[12+16*x,4+16*y,0+16*z]: unknown 91+456*x+880*x^2+768*x^3+256*x^4+88*y+192*x*y+128*x^2*y+240*y^2+384*x*y^2+256*x^2*y^2+256*y^3+256*y^4-z^2=0 -> [41]
[4+16*x,12+16*y,0+16*z]: transposition of [41] {0/12+16*x,0/4+16*y,2/0+16*z} by 12+16*x|12+16*y 4+16*y|4+16*x
[12+16*x,12+16*y,0+16*z]: unknown 243+648*x+1008*x^2+768*x^3+256*x^4+648*y+576*x*y+384*x^2*y+1008*y^2+384*x*y^2+256*x^2*y^2+768*y^3+256*y^4-z^2=0 -> [42]
expanding queue[13]^4: 4*x + 24*x^2 + 64*x^3 + 64*x^4 + 4*y^2 + 32*x*y^2 + 64*x^2*y^2 + 64*y^4 - z - z^2 = 0 meter=[2,2,2] *16
solution [2,0,4],trivial(1)
[2+16*x,0+16*y,4+16*z]: unknown, grown from [13]*1,2,4,8,2,4,8,8,1,2 4*x+48*x^2+256*x^3+512*x^4+8*y^2+128*x*y^2+512*x^2*y^2+512*y^4-z-2*z^2=0 -> [43]
[10+16*x,0+16*y,4+16*z]: unknown 78+500*x+1200*x^2+1280*x^3+512*x^4+200*y^2+640*x*y^2+512*x^2*y^2+512*y^4-z-2*z^2=0 -> [44]
[2+16*x,8+16*y,4+16*z]: unknown 34+36*x+176*x^2+256*x^3+512*x^4+264*y+128*x*y+512*x^2*y+776*y^2+128*x*y^2+512*x^2*y^2+1024*y^3+512*y^4-z-2*z^2=0 -> [45]
[10+16*x,8+16*y,4+16*z]: unknown 160+660*x+1328*x^2+1280*x^3+512*x^4+456*y+640*x*y+512*x^2*y+968*y^2+640*x*y^2+512*x^2*y^2+1024*y^3+512*y^4-z-2*z^2=0 -> [46]
[2+16*x,0+16*y,12+16*z]: unknown -1+4*x+48*x^2+256*x^3+512*x^4+8*y^2+128*x*y^2+512*x^2*y^2+512*y^4-3*z-2*z^2=0 -> [47]
[10+16*x,0+16*y,12+16*z]: unknown 77+500*x+1200*x^2+1280*x^3+512*x^4+200*y^2+640*x*y^2+512*x^2*y^2+512*y^4-3*z-2*z^2=0 -> [48]
[2+16*x,8+16*y,12+16*z]: unknown 33+36*x+176*x^2+256*x^3+512*x^4+264*y+128*x*y+512*x^2*y+776*y^2+128*x*y^2+512*x^2*y^2+1024*y^3+512*y^4-3*z-2*z^2=0 -> [49]
[10+16*x,8+16*y,12+16*z]: unknown 159+660*x+1328*x^2+1280*x^3+512*x^4+456*y+640*x*y+512*x^2*y+968*y^2+640*x*y^2+512*x^2*y^2+1024*y^3+512*y^4-3*z-2*z^2=0 -> [50]
expanding queue[14]^4: 20 + 108*x + 216*x^2 + 192*x^3 + 64*x^4 + 36*y^2 + 96*x*y^2 + 64*x^2*y^2 + 64*y^4 - z - z^2 = 0 meter=[2,2,2] *16
[6+16*x,0+16*y,4+16*z]: unknown 10+108*x+432*x^2+768*x^3+512*x^4+72*y^2+384*x*y^2+512*x^2*y^2+512*y^4-z-2*z^2=0 -> [51]
[14+16*x,0+16*y,4+16*z]: unknown 300+1372*x+2352*x^2+1792*x^3+512*x^4+392*y^2+896*x*y^2+512*x^2*y^2+512*y^4-z-2*z^2=0 -> [52]
[6+16*x,8+16*y,4+16*z]: unknown 60+204*x+560*x^2+768*x^3+512*x^4+328*y+384*x*y+512*x^2*y+840*y^2+384*x*y^2+512*x^2*y^2+1024*y^3+512*y^4-z-2*z^2=0 -> [53]
[14+16*x,8+16*y,4+16*z]: unknown 430+1596*x+2480*x^2+1792*x^3+512*x^4+648*y+896*x*y+512*x^2*y+1160*y^2+896*x*y^2+512*x^2*y^2+1024*y^3+512*y^4-z-2*z^2=0 -> [54]
[6+16*x,0+16*y,12+16*z]: unknown 9+108*x+432*x^2+768*x^3+512*x^4+72*y^2+384*x*y^2+512*x^2*y^2+512*y^4-3*z-2*z^2=0 -> [55]
[14+16*x,0+16*y,12+16*z]: unknown 299+1372*x+2352*x^2+1792*x^3+512*x^4+392*y^2+896*x*y^2+512*x^2*y^2+512*y^4-3*z-2*z^2=0 -> [56]
[6+16*x,8+16*y,12+16*z]: unknown 59+204*x+560*x^2+768*x^3+512*x^4+328*y+384*x*y+512*x^2*y+840*y^2+384*x*y^2+512*x^2*y^2+1024*y^3+512*y^4-3*z-2*z^2=0 -> [57]
[14+16*x,8+16*y,12+16*z]: unknown 429+1596*x+2480*x^2+1792*x^3+512*x^4+648*y+896*x*y+512*x^2*y+1160*y^2+896*x*y^2+512*x^2*y^2+1024*y^3+512*y^4-3*z-2*z^2=0 -> [58]
expanding queue[15]^4: 5 + 12*x + 40*x^2 + 64*x^3 + 64*x^4 + 36*y + 32*x*y + 64*x^2*y + 100*y^2 + 32*x*y^2 + 64*x^2*y^2 + 128*y^3 + 64*y^4 - z - z^2 = 0 meter=[2,2,2] *16
expanding queue[16]^4: 33 + 132*x + 232*x^2 + 192*x^3 + 64*x^4 + 68*y + 96*x*y + 64*x^2*y + 132*y^2 + 96*x*y^2 + 64*x^2*y^2 + 128*y^3 + 64*y^4 - z - z^2 = 0 meter=[2,2,2] *16
expanding queue[17]^6: 2*x + 24*x^2 + 128*x^3 + 256*x^4 + 4*y^2 + 64*x*y^2 + 256*x^2*y^2 + 256*y^4 - z - 4*z^2 = 0 meter=[2,2,2] *16
solution [1,0,1],trivial(3)
[1+16*x,0+16*y,1+16*z]: unknown, grown from [17]*1,2,4,8,2,4,8,8,1,2, grown from [6]*1,4,16,64,4,16,64,64,1,4, grown from [2]*1,8,64,512,8,64,512,512,1,8 2*x+48*x^2+512*x^3+2048*x^4+8*y^2+256*x*y^2+2048*x^2*y^2+2048*y^4-z-8*z^2=0 -> [59]
[9+16*x,0+16*y,1+16*z]: unknown 205+1458*x+3888*x^2+4608*x^3+2048*x^4+648*y^2+2304*x*y^2+2048*x^2*y^2+2048*y^4-z-8*z^2=0 -> [60]
[1+16*x,8+16*y,1+16*z]: unknown 130+66*x+560*x^2+512*x^3+2048*x^4+1032*y+256*x*y+2048*x^2*y+3080*y^2+256*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-z-8*z^2=0 -> [61]
[9+16*x,8+16*y,1+16*z]: unknown 495+2034*x+4400*x^2+4608*x^3+2048*x^4+1672*y+2304*x*y+2048*x^2*y+3720*y^2+2304*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-z-8*z^2=0 -> [62]
expanding queue[18]^6: 39 + 250*x + 600*x^2 + 640*x^3 + 256*x^4 + 100*y^2 + 320*x*y^2 + 256*x^2*y^2 + 256*y^4 - z - 4*z^2 = 0 meter=[2,2,2] *16
[5+16*x,0+16*y,9+16*z]: unknown 17+250*x+1200*x^2+2560*x^3+2048*x^4+200*y^2+1280*x*y^2+2048*x^2*y^2+2048*y^4-9*z-8*z^2=0 -> [63]
[13+16*x,0+16*y,9+16*z]: unknown 890+4394*x+8112*x^2+6656*x^3+2048*x^4+1352*y^2+3328*x*y^2+2048*x^2*y^2+2048*y^4-9*z-8*z^2=0 -> [64]
[5+16*x,8+16*y,9+16*z]: unknown 195+570*x+1712*x^2+2560*x^3+2048*x^4+1224*y+1280*x*y+2048*x^2*y+3272*y^2+1280*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-9*z-8*z^2=0 -> [65]
[13+16*x,8+16*y,9+16*z]: unknown 1356+5226*x+8624*x^2+6656*x^3+2048*x^4+2376*y+3328*x*y+2048*x^2*y+4424*y^2+3328*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-9*z-8*z^2=0 -> [66]
expanding queue[19]^6: 17 + 18*x + 88*x^2 + 128*x^3 + 256*x^4 + 132*y + 64*x*y + 256*x^2*y + 388*y^2 + 64*x*y^2 + 256*x^2*y^2 + 512*y^3 + 256*y^4 - z - 4*z^2 = 0 meter=[2,2,2] *16
[1+16*x,4+16*y,9+16*z]: unknown 6+18*x+176*x^2+512*x^3+2048*x^4+132*y+128*x*y+1024*x^2*y+776*y^2+256*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-9*z-8*z^2=0 -> [67]
[9+16*x,4+16*y,9+16*z]: unknown 251+1602*x+4016*x^2+4608*x^3+2048*x^4+452*y+1152*x*y+1024*x^2*y+1416*y^2+2304*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-9*z-8*z^2=0 -> [68]
[1+16*x,12+16*y,9+16*z]: unknown 650+146*x+1200*x^2+512*x^3+2048*x^4+3468*y+384*x*y+3072*x^2*y+6920*y^2+256*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-9*z-8*z^2=0 -> [69]
[9+16*x,12+16*y,9+16*z]: unknown 1215+2754*x+5040*x^2+4608*x^3+2048*x^4+4428*y+3456*x*y+3072*x^2*y+7560*y^2+2304*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-9*z-8*z^2=0 -> [70]
expanding queue[20]^6: 80 + 330*x + 664*x^2 + 640*x^3 + 256*x^4 + 228*y + 320*x*y + 256*x^2*y + 484*y^2 + 320*x*y^2 + 256*x^2*y^2 + 512*y^3 + 256*y^4 - z - 4*z^2 = 0 meter=[2,2,2] *16
[5+16*x,4+16*y,1+16*z]: unknown 40+330*x+1328*x^2+2560*x^3+2048*x^4+228*y+640*x*y+1024*x^2*y+968*y^2+1280*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-z-8*z^2=0 -> [71]
[13+16*x,4+16*y,1+16*z]: unknown 985+4602*x+8240*x^2+6656*x^3+2048*x^4+804*y+1664*x*y+1024*x^2*y+2120*y^2+3328*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-z-8*z^2=0 -> [72]
[5+16*x,12+16*y,1+16*z]: unknown 780+970*x+2352*x^2+2560*x^3+2048*x^4+3756*y+1920*x*y+3072*x^2*y+7112*y^2+1280*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-z-8*z^2=0 -> [73]
[13+16*x,12+16*y,1+16*z]: unknown 2301+6266*x+9264*x^2+6656*x^3+2048*x^4+5484*y+4992*x*y+3072*x^2*y+8264*y^2+3328*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-z-8*z^2=0 -> [74]
expanding queue[21]^7: 5 + 54*x + 216*x^2 + 384*x^3 + 256*x^4 + 36*y^2 + 192*x*y^2 + 256*x^2*y^2 + 256*y^4 - z - 4*z^2 = 0 meter=[2,2,2] *16
[3+16*x,0+16*y,9+16*z]: unknown, grown from [2]*27,72,192,512,72,192,512,512,9,8 54*x+432*x^2+1536*x^3+2048*x^4+72*y^2+768*x*y^2+2048*x^2*y^2+2048*y^4-9*z-8*z^2=0 -> [75]
[11+16*x,0+16*y,9+16*z]: unknown 455+2662*x+5808*x^2+5632*x^3+2048*x^4+968*y^2+2816*x*y^2+2048*x^2*y^2+2048*y^4-9*z-8*z^2=0 -> [76]
[3+16*x,8+16*y,9+16*z]: unknown 146+246*x+944*x^2+1536*x^3+2048*x^4+1096*y+768*x*y+2048*x^2*y+3144*y^2+768*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-9*z-8*z^2=0 -> [77]
[11+16*x,8+16*y,9+16*z]: unknown 825+3366*x+6320*x^2+5632*x^3+2048*x^4+1992*y+2816*x*y+2048*x^2*y+4040*y^2+2816*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-9*z-8*z^2=0 -> [78]
expanding queue[22]^7: 150 + 686*x + 1176*x^2 + 896*x^3 + 256*x^4 + 196*y^2 + 448*x*y^2 + 256*x^2*y^2 + 256*y^4 - z - 4*z^2 = 0 meter=[2,2,2] *16
[7+16*x,0+16*y,1+16*z]: unknown 75+686*x+2352*x^2+3584*x^3+2048*x^4+392*y^2+1792*x*y^2+2048*x^2*y^2+2048*y^4-z-8*z^2=0 -> [79]
[15+16*x,0+16*y,1+16*z]: unknown 1582+6750*x+10800*x^2+7680*x^3+2048*x^4+1800*y^2+3840*x*y^2+2048*x^2*y^2+2048*y^4-z-8*z^2=0 -> [80]
[7+16*x,8+16*y,1+16*z]: unknown 301+1134*x+2864*x^2+3584*x^3+2048*x^4+1416*y+1792*x*y+2048*x^2*y+3464*y^2+1792*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-z-8*z^2=0 -> [81]
[15+16*x,8+16*y,1+16*z]: unknown 2160+7710*x+11312*x^2+7680*x^3+2048*x^4+2824*y+3840*x*y+2048*x^2*y+4872*y^2+3840*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-z-8*z^2=0 -> [82]
expanding queue[23]^7: 30 + 102*x + 280*x^2 + 384*x^3 + 256*x^4 + 164*y + 192*x*y + 256*x^2*y + 420*y^2 + 192*x*y^2 + 256*x^2*y^2 + 512*y^3 + 256*y^4 - z - 4*z^2 = 0 meter=[2,2,2] *16
[3+16*x,4+16*y,1+16*z]: unknown 15+102*x+560*x^2+1536*x^3+2048*x^4+164*y+384*x*y+1024*x^2*y+840*y^2+768*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-z-8*z^2=0 -> [83]
[11+16*x,4+16*y,1+16*z]: unknown 526+2838*x+5936*x^2+5632*x^3+2048*x^4+612*y+1408*x*y+1024*x^2*y+1736*y^2+2816*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-z-8*z^2=0 -> [84]
[3+16*x,12+16*y,1+16*z]: unknown 691+486*x+1584*x^2+1536*x^3+2048*x^4+3564*y+1152*x*y+3072*x^2*y+6984*y^2+768*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-z-8*z^2=0 -> [85]
[11+16*x,12+16*y,1+16*z]: unknown 1650+4246*x+6960*x^2+5632*x^3+2048*x^4+4908*y+4224*x*y+3072*x^2*y+7880*y^2+2816*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-z-8*z^2=0 -> [86]
expanding queue[24]^7: 215 + 798*x + 1240*x^2 + 896*x^3 + 256*x^4 + 324*y + 448*x*y + 256*x^2*y + 580*y^2 + 448*x*y^2 + 256*x^2*y^2 + 512*y^3 + 256*y^4 - z - 4*z^2 = 0 meter=[2,2,2] *16
[7+16*x,4+16*y,9+16*z]: unknown 105+798*x+2480*x^2+3584*x^3+2048*x^4+324*y+896*x*y+1024*x^2*y+1160*y^2+1792*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-9*z-8*z^2=0 -> [87]
[15+16*x,4+16*y,9+16*z]: unknown 1700+6990*x+10928*x^2+7680*x^3+2048*x^4+1028*y+1920*x*y+1024*x^2*y+2568*y^2+3840*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-9*z-8*z^2=0 -> [88]
[7+16*x,12+16*y,9+16*z]: unknown 941+1694*x+3504*x^2+3584*x^3+2048*x^4+4044*y+2688*x*y+3072*x^2*y+7304*y^2+1792*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-9*z-8*z^2=0 -> [89]
[15+16*x,12+16*y,9+16*z]: unknown 3240+8910*x+11952*x^2+7680*x^3+2048*x^4+6156*y+5760*x*y+3072*x^2*y+8712*y^2+3840*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-9*z-8*z^2=0 -> [90]
expanding queue[25]^8:  - 3 + 2*x + 24*x^2 + 128*x^3 + 256*x^4 + 4*y^2 + 64*x*y^2 + 256*x^2*y^2 + 256*y^4 - 7*z - 4*z^2 = 0 meter=[2,2,2] *16
[1+16*x,0+16*y,15+16*z]: unknown, grown from [8]*7,1,4,16,64,4,16,64,64,5,4 -7+2*x+48*x^2+512*x^3+2048*x^4+8*y^2+256*x*y^2+2048*x^2*y^2+2048*y^4-15*z-8*z^2=0 -> [91]
[9+16*x,0+16*y,15+16*z]: unknown 198+1458*x+3888*x^2+4608*x^3+2048*x^4+648*y^2+2304*x*y^2+2048*x^2*y^2+2048*y^4-15*z-8*z^2=0 -> [92]
[1+16*x,8+16*y,15+16*z]: unknown 123+66*x+560*x^2+512*x^3+2048*x^4+1032*y+256*x*y+2048*x^2*y+3080*y^2+256*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-15*z-8*z^2=0 -> [93]
[9+16*x,8+16*y,15+16*z]: unknown 488+2034*x+4400*x^2+4608*x^3+2048*x^4+1672*y+2304*x*y+2048*x^2*y+3720*y^2+2304*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-15*z-8*z^2=0 -> [94]
expanding queue[26]^8: 36 + 250*x + 600*x^2 + 640*x^3 + 256*x^4 + 100*y^2 + 320*x*y^2 + 256*x^2*y^2 + 256*y^4 - 7*z - 4*z^2 = 0 meter=[2,2,2] *16
[5+16*x,0+16*y,7+16*z]: unknown 18+250*x+1200*x^2+2560*x^3+2048*x^4+200*y^2+1280*x*y^2+2048*x^2*y^2+2048*y^4-7*z-8*z^2=0 -> [95]
[13+16*x,0+16*y,7+16*z]: unknown 891+4394*x+8112*x^2+6656*x^3+2048*x^4+1352*y^2+3328*x*y^2+2048*x^2*y^2+2048*y^4-7*z-8*z^2=0 -> [96]
[5+16*x,8+16*y,7+16*z]: unknown 196+570*x+1712*x^2+2560*x^3+2048*x^4+1224*y+1280*x*y+2048*x^2*y+3272*y^2+1280*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-7*z-8*z^2=0 -> [97]
[13+16*x,8+16*y,7+16*z]: unknown 1357+5226*x+8624*x^2+6656*x^3+2048*x^4+2376*y+3328*x*y+2048*x^2*y+4424*y^2+3328*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-7*z-8*z^2=0 -> [98]
expanding queue[27]^8: 14 + 18*x + 88*x^2 + 128*x^3 + 256*x^4 + 132*y + 64*x*y + 256*x^2*y + 388*y^2 + 64*x*y^2 + 256*x^2*y^2 + 512*y^3 + 256*y^4 - 7*z - 4*z^2 = 0 meter=[2,2,2] *16
[1+16*x,4+16*y,7+16*z]: unknown 7+18*x+176*x^2+512*x^3+2048*x^4+132*y+128*x*y+1024*x^2*y+776*y^2+256*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-7*z-8*z^2=0 -> [99]
[9+16*x,4+16*y,7+16*z]: unknown 252+1602*x+4016*x^2+4608*x^3+2048*x^4+452*y+1152*x*y+1024*x^2*y+1416*y^2+2304*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-7*z-8*z^2=0 -> [100]
[1+16*x,12+16*y,7+16*z]: unknown 651+146*x+1200*x^2+512*x^3+2048*x^4+3468*y+384*x*y+3072*x^2*y+6920*y^2+256*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-7*z-8*z^2=0 -> [101]
[9+16*x,12+16*y,7+16*z]: unknown 1216+2754*x+5040*x^2+4608*x^3+2048*x^4+4428*y+3456*x*y+3072*x^2*y+7560*y^2+2304*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-7*z-8*z^2=0 -> [102]
expanding queue[28]^8: 77 + 330*x + 664*x^2 + 640*x^3 + 256*x^4 + 228*y + 320*x*y + 256*x^2*y + 484*y^2 + 320*x*y^2 + 256*x^2*y^2 + 512*y^3 + 256*y^4 - 7*z - 4*z^2 = 0 meter=[2,2,2] *16
[5+16*x,4+16*y,15+16*z]: unknown 33+330*x+1328*x^2+2560*x^3+2048*x^4+228*y+640*x*y+1024*x^2*y+968*y^2+1280*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-15*z-8*z^2=0 -> [103]
[13+16*x,4+16*y,15+16*z]: unknown 978+4602*x+8240*x^2+6656*x^3+2048*x^4+804*y+1664*x*y+1024*x^2*y+2120*y^2+3328*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-15*z-8*z^2=0 -> [104]
[5+16*x,12+16*y,15+16*z]: unknown 773+970*x+2352*x^2+2560*x^3+2048*x^4+3756*y+1920*x*y+3072*x^2*y+7112*y^2+1280*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-15*z-8*z^2=0 -> [105]
[13+16*x,12+16*y,15+16*z]: unknown 2294+6266*x+9264*x^2+6656*x^3+2048*x^4+5484*y+4992*x*y+3072*x^2*y+8264*y^2+3328*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-15*z-8*z^2=0 -> [106]
expanding queue[29]^9: 2 + 54*x + 216*x^2 + 384*x^3 + 256*x^4 + 36*y^2 + 192*x*y^2 + 256*x^2*y^2 + 256*y^4 - 7*z - 4*z^2 = 0 meter=[2,2,2] *16
[3+16*x,0+16*y,7+16*z]: unknown 1+54*x+432*x^2+1536*x^3+2048*x^4+72*y^2+768*x*y^2+2048*x^2*y^2+2048*y^4-7*z-8*z^2=0 -> [107]
[11+16*x,0+16*y,7+16*z]: unknown 456+2662*x+5808*x^2+5632*x^3+2048*x^4+968*y^2+2816*x*y^2+2048*x^2*y^2+2048*y^4-7*z-8*z^2=0 -> [108]
[3+16*x,8+16*y,7+16*z]: unknown 147+246*x+944*x^2+1536*x^3+2048*x^4+1096*y+768*x*y+2048*x^2*y+3144*y^2+768*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-7*z-8*z^2=0 -> [109]
[11+16*x,8+16*y,7+16*z]: unknown 826+3366*x+6320*x^2+5632*x^3+2048*x^4+1992*y+2816*x*y+2048*x^2*y+4040*y^2+2816*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-7*z-8*z^2=0 -> [110]
expanding queue[30]^9: 147 + 686*x + 1176*x^2 + 896*x^3 + 256*x^4 + 196*y^2 + 448*x*y^2 + 256*x^2*y^2 + 256*y^4 - 7*z - 4*z^2 = 0 meter=[2,2,2] *16
[7+16*x,0+16*y,15+16*z]: unknown 68+686*x+2352*x^2+3584*x^3+2048*x^4+392*y^2+1792*x*y^2+2048*x^2*y^2+2048*y^4-15*z-8*z^2=0 -> [111]
[15+16*x,0+16*y,15+16*z]: unknown, grown from [9]*175,125,100,80,64,100,80,64,64,5,4 1575+6750*x+10800*x^2+7680*x^3+2048*x^4+1800*y^2+3840*x*y^2+2048*x^2*y^2+2048*y^4-15*z-8*z^2=0 -> [112]
[7+16*x,8+16*y,15+16*z]: unknown 294+1134*x+2864*x^2+3584*x^3+2048*x^4+1416*y+1792*x*y+2048*x^2*y+3464*y^2+1792*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-15*z-8*z^2=0 -> [113]
[15+16*x,8+16*y,15+16*z]: unknown 2153+7710*x+11312*x^2+7680*x^3+2048*x^4+2824*y+3840*x*y+2048*x^2*y+4872*y^2+3840*x*y^2+2048*x^2*y^2+4096*y^3+2048*y^4-15*z-8*z^2=0 -> [114]
expanding queue[31]^9: 27 + 102*x + 280*x^2 + 384*x^3 + 256*x^4 + 164*y + 192*x*y + 256*x^2*y + 420*y^2 + 192*x*y^2 + 256*x^2*y^2 + 512*y^3 + 256*y^4 - 7*z - 4*z^2 = 0 meter=[2,2,2] *16
[3+16*x,4+16*y,15+16*z]: unknown 8+102*x+560*x^2+1536*x^3+2048*x^4+164*y+384*x*y+1024*x^2*y+840*y^2+768*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-15*z-8*z^2=0 -> [115]
[11+16*x,4+16*y,15+16*z]: unknown 519+2838*x+5936*x^2+5632*x^3+2048*x^4+612*y+1408*x*y+1024*x^2*y+1736*y^2+2816*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-15*z-8*z^2=0 -> [116]
[3+16*x,12+16*y,15+16*z]: unknown 684+486*x+1584*x^2+1536*x^3+2048*x^4+3564*y+1152*x*y+3072*x^2*y+6984*y^2+768*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-15*z-8*z^2=0 -> [117]
[11+16*x,12+16*y,15+16*z]: unknown 1643+4246*x+6960*x^2+5632*x^3+2048*x^4+4908*y+4224*x*y+3072*x^2*y+7880*y^2+2816*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-15*z-8*z^2=0 -> [118]
expanding queue[32]^9: 212 + 798*x + 1240*x^2 + 896*x^3 + 256*x^4 + 324*y + 448*x*y + 256*x^2*y + 580*y^2 + 448*x*y^2 + 256*x^2*y^2 + 512*y^3 + 256*y^4 - 7*z - 4*z^2 = 0 meter=[2,2,2] *16
[7+16*x,4+16*y,7+16*z]: unknown 106+798*x+2480*x^2+3584*x^3+2048*x^4+324*y+896*x*y+1024*x^2*y+1160*y^2+1792*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-7*z-8*z^2=0 -> [119]
[15+16*x,4+16*y,7+16*z]: unknown 1701+6990*x+10928*x^2+7680*x^3+2048*x^4+1028*y+1920*x*y+1024*x^2*y+2568*y^2+3840*x*y^2+2048*x^2*y^2+2048*y^3+2048*y^4-7*z-8*z^2=0 -> [120]
[7+16*x,12+16*y,7+16*z]: unknown 942+1694*x+3504*x^2+3584*x^3+2048*x^4+4044*y+2688*x*y+3072*x^2*y+7304*y^2+1792*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-7*z-8*z^2=0 -> [121]
[15+16*x,12+16*y,7+16*z]: unknown 3241+8910*x+11952*x^2+7680*x^3+2048*x^4+6156*y+5760*x*y+3072*x^2*y+8712*y^2+3840*x*y^2+2048*x^2*y^2+6144*y^3+2048*y^4-7*z-8*z^2=0 -> [122]
Maximum level 3 reached, queue size = 123
