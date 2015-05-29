Expanding for base 2, transposables =    0   0   2

expanding queue[0]: a^3 + b^3 - c^3 = 0 modulo [2,2,2] *2
[0+2*a,0+2*b,0+2*c]: same form as 8*a^3+8*b^3-8*c^3=0 success [0,0,0],trivial(3) success [2,0,2],trivial(3) success [0,2,2],trivial(3) 
[1+2*a,0+2*b,0+2*c]: failure constant=1, vgcd=2
[0+2*a,1+2*b,0+2*c]: failure constant=1, vgcd=2
[1+2*a,1+2*b,0+2*c]: unknown 2+6*a+12*a^2+8*a^3+6*b+12*b^2+8*b^3-8*c^3=0 -> [1]
[0+2*a,0+2*b,1+2*c]: failure constant=-1, vgcd=2
[1+2*a,0+2*b,1+2*c]: success [1,0,1],trivial(3) success [3,0,3],trivial(3)  6*a+12*a^2+8*a^3+8*b^3-6*c-12*c^2-8*c^3=0 -> [2]
[0+2*a,1+2*b,1+2*c]: failure transposition of [2] {0/0+2*b,0/1+2*a,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b success [0,1,1],trivial(3) success [0,3,3],trivial(3) 
[1+2*a,1+2*b,1+2*c]: failure constant=1, vgcd=2

expanding queue[1]: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 - 8*c^3 = 0 modulo [2,2,1] *4
[1+4*a,1+4*b,0+2*c]: failure constant=2, vgcd=4
[3+4*a,1+4*b,0+2*c]: unknown 28+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3-8*c^3=0 -> [3]
[1+4*a,3+4*b,0+2*c]: failure transposition of [3] {0/1+4*b,0/3+4*a,2/0+2*c} by 1+4*b|1+4*a 3+4*a|3+4*b
[3+4*a,3+4*b,0+2*c]: failure constant=54, vgcd=4

expanding queue[2]: 6*a + 12*a^2 + 8*a^3 + 8*b^3 - 6*c - 12*c^2 - 8*c^3 = 0 modulo [2,1,2] *4
[1+4*a,0+2*b,1+4*c]: similiar to  [2], affine map: {a=(2*a),b=(1*b),c=(2*c)}  12*a+48*a^2+64*a^3+8*b^3-12*c-48*c^2-64*c^3=0 success [1,0,1],trivial(3) success [5,0,5],trivial(3) 
[3+4*a,0+2*b,1+4*c]: failure constant=26, vgcd=4
[1+4*a,0+2*b,3+4*c]: failure constant=-26, vgcd=4
[3+4*a,0+2*b,3+4*c]: success [3,0,3],trivial(3) success [7,0,7],trivial(3)  108*a+144*a^2+64*a^3+8*b^3-108*c-144*c^2-64*c^3=0 -> [4]

expanding queue[3]: 28 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 - 8*c^3 = 0 modulo [2,2,2] *8
[3+8*a,1+8*b,0+4*c]: failure constant=28, vgcd=8
[7+8*a,1+8*b,0+4*c]: unknown 344+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3-64*c^3=0 -> [5]
[3+8*a,5+8*b,0+4*c]: unknown 152+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3-64*c^3=0 -> [6]
[7+8*a,5+8*b,0+4*c]: failure constant=468, vgcd=8
[3+8*a,1+8*b,2+4*c]: failure constant=20, vgcd=8
[7+8*a,1+8*b,2+4*c]: unknown 336+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3-48*c-96*c^2-64*c^3=0 -> [7]
[3+8*a,5+8*b,2+4*c]: unknown 144+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3-48*c-96*c^2-64*c^3=0 -> [8]
[7+8*a,5+8*b,2+4*c]: failure constant=460, vgcd=8

expanding queue[4]: 108*a + 144*a^2 + 64*a^3 + 8*b^3 - 108*c - 144*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[3+8*a,0+4*b,3+8*c]: similiar to  [4], affine map: {a=(2*a),b=(2*b),c=(2*c)}  216*a+576*a^2+512*a^3+64*b^3-216*c-576*c^2-512*c^3=0 success [3,0,3],trivial(3) success [11,0,11],trivial(3) 
[7+8*a,0+4*b,3+8*c]: failure constant=316, vgcd=8
[3+8*a,2+4*b,3+8*c]: unknown 8+216*a+576*a^2+512*a^3+48*b+96*b^2+64*b^3-216*c-576*c^2-512*c^3=0 -> [9]
[7+8*a,2+4*b,3+8*c]: failure constant=324, vgcd=8
[3+8*a,0+4*b,7+8*c]: failure constant=-316, vgcd=8
[7+8*a,0+4*b,7+8*c]: success [7,0,7],trivial(3) success [15,0,15],trivial(3)  1176*a+1344*a^2+512*a^3+64*b^3-1176*c-1344*c^2-512*c^3=0 -> [10]
[3+8*a,2+4*b,7+8*c]: failure constant=-308, vgcd=8
[7+8*a,2+4*b,7+8*c]: unknown 8+1176*a+1344*a^2+512*a^3+48*b+96*b^2+64*b^3-1176*c-1344*c^2-512*c^3=0 -> [11]

expanding queue[5]: 344 + 1176*a + 1344*a^2 + 512*a^3 + 24*b + 192*b^2 + 512*b^3 - 64*c^3 = 0 modulo [2,2,1] *16
[7+16*a,1+16*b,0+4*c]: failure constant=344, vgcd=16
[15+16*a,1+16*b,0+4*c]: unknown 3376+10800*a+11520*a^2+4096*a^3+48*b+768*b^2+4096*b^3-64*c^3=0 -> [12]
[7+16*a,9+16*b,0+4*c]: unknown 1072+2352*a+5376*a^2+4096*a^3+3888*b+6912*b^2+4096*b^3-64*c^3=0 -> [13]
[15+16*a,9+16*b,0+4*c]: failure constant=4104, vgcd=16

expanding queue[6]: 152 + 216*a + 576*a^2 + 512*a^3 + 600*b + 960*b^2 + 512*b^3 - 64*c^3 = 0 modulo [2,2,1] *16
[3+16*a,5+16*b,0+4*c]: failure constant=152, vgcd=16
[11+16*a,5+16*b,0+4*c]: unknown 1456+5808*a+8448*a^2+4096*a^3+1200*b+3840*b^2+4096*b^3-64*c^3=0 -> [14]
[3+16*a,13+16*b,0+4*c]: unknown 2224+432*a+2304*a^2+4096*a^3+8112*b+9984*b^2+4096*b^3-64*c^3=0 -> [15]
[11+16*a,13+16*b,0+4*c]: failure constant=3528, vgcd=16

expanding queue[7]: 336 + 1176*a + 1344*a^2 + 512*a^3 + 24*b + 192*b^2 + 512*b^3 - 48*c - 96*c^2 - 64*c^3 = 0 modulo [2,2,2] *16
[7+16*a,1+16*b,2+8*c]: similiar to  [7], affine map: {a=(2*a),b=(2*b),c=(2*c)}  336+2352*a+5376*a^2+4096*a^3+48*b+768*b^2+4096*b^3-96*c-384*c^2-512*c^3=0
[15+16*a,1+16*b,2+8*c]: failure constant=3368, vgcd=16
[7+16*a,9+16*b,2+8*c]: failure constant=1064, vgcd=16
[15+16*a,9+16*b,2+8*c]: unknown 4096+10800*a+11520*a^2+4096*a^3+3888*b+6912*b^2+4096*b^3-96*c-384*c^2-512*c^3=0 -> [16]
[7+16*a,1+16*b,6+8*c]: unknown 128+2352*a+5376*a^2+4096*a^3+48*b+768*b^2+4096*b^3-864*c-1152*c^2-512*c^3=0 -> [17]
[15+16*a,1+16*b,6+8*c]: failure constant=3160, vgcd=16
[7+16*a,9+16*b,6+8*c]: failure constant=856, vgcd=16
[15+16*a,9+16*b,6+8*c]: unknown 3888+10800*a+11520*a^2+4096*a^3+3888*b+6912*b^2+4096*b^3-864*c-1152*c^2-512*c^3=0 -> [18]

expanding queue[8]: 144 + 216*a + 576*a^2 + 512*a^3 + 600*b + 960*b^2 + 512*b^3 - 48*c - 96*c^2 - 64*c^3 = 0 modulo [2,2,2] *16
[3+16*a,5+16*b,2+8*c]: similiar to  [8], affine map: {a=(2*a),b=(2*b),c=(2*c)}  144+432*a+2304*a^2+4096*a^3+1200*b+3840*b^2+4096*b^3-96*c-384*c^2-512*c^3=0
[11+16*a,5+16*b,2+8*c]: failure constant=1448, vgcd=16
[3+16*a,13+16*b,2+8*c]: failure constant=2216, vgcd=16
[11+16*a,13+16*b,2+8*c]: unknown 3520+5808*a+8448*a^2+4096*a^3+8112*b+9984*b^2+4096*b^3-96*c-384*c^2-512*c^3=0 -> [19]
[3+16*a,5+16*b,6+8*c]: unknown -64+432*a+2304*a^2+4096*a^3+1200*b+3840*b^2+4096*b^3-864*c-1152*c^2-512*c^3=0 -> [20]
[11+16*a,5+16*b,6+8*c]: failure constant=1240, vgcd=16
[3+16*a,13+16*b,6+8*c]: failure constant=2008, vgcd=16
[11+16*a,13+16*b,6+8*c]: unknown 3312+5808*a+8448*a^2+4096*a^3+8112*b+9984*b^2+4096*b^3-864*c-1152*c^2-512*c^3=0 -> [21]

expanding queue[9]: 8 + 216*a + 576*a^2 + 512*a^3 + 48*b + 96*b^2 + 64*b^3 - 216*c - 576*c^2 - 512*c^3 = 0 modulo [2,2,2] *16
[3+16*a,2+8*b,3+16*c]: failure constant=8, vgcd=16
[11+16*a,2+8*b,3+16*c]: unknown 1312+5808*a+8448*a^2+4096*a^3+96*b+384*b^2+512*b^3-432*c-2304*c^2-4096*c^3=0 -> [22]
[3+16*a,6+8*b,3+16*c]: failure constant=216, vgcd=16
[11+16*a,6+8*b,3+16*c]: unknown 1520+5808*a+8448*a^2+4096*a^3+864*b+1152*b^2+512*b^3-432*c-2304*c^2-4096*c^3=0 -> [23]
[3+16*a,2+8*b,11+16*c]: unknown -1296+432*a+2304*a^2+4096*a^3+96*b+384*b^2+512*b^3-5808*c-8448*c^2-4096*c^3=0 -> [24]
[11+16*a,2+8*b,11+16*c]: failure constant=8, vgcd=16
[3+16*a,6+8*b,11+16*c]: unknown -1088+432*a+2304*a^2+4096*a^3+864*b+1152*b^2+512*b^3-5808*c-8448*c^2-4096*c^3=0 -> [25]
[11+16*a,6+8*b,11+16*c]: failure constant=216, vgcd=16

expanding queue[10]: 1176*a + 1344*a^2 + 512*a^3 + 64*b^3 - 1176*c - 1344*c^2 - 512*c^3 = 0 modulo [2,1,2] *16
[7+16*a,0+4*b,7+16*c]: similiar to  [10], affine map: {a=(2*a),b=(1*b),c=(2*c)}  2352*a+5376*a^2+4096*a^3+64*b^3-2352*c-5376*c^2-4096*c^3=0 success [7,0,7],trivial(3) success [23,0,23],trivial(3) 
[15+16*a,0+4*b,7+16*c]: failure constant=3032, vgcd=16
[7+16*a,0+4*b,15+16*c]: failure constant=-3032, vgcd=16
[15+16*a,0+4*b,15+16*c]: success [15,0,15],trivial(3) success [31,0,31],trivial(3)  10800*a+11520*a^2+4096*a^3+64*b^3-10800*c-11520*c^2-4096*c^3=0 -> [26]

expanding queue[11]: 8 + 1176*a + 1344*a^2 + 512*a^3 + 48*b + 96*b^2 + 64*b^3 - 1176*c - 1344*c^2 - 512*c^3 = 0 modulo [2,2,2] *16
[7+16*a,2+8*b,7+16*c]: failure constant=8, vgcd=16
[15+16*a,2+8*b,7+16*c]: unknown 3040+10800*a+11520*a^2+4096*a^3+96*b+384*b^2+512*b^3-2352*c-5376*c^2-4096*c^3=0 -> [27]
[7+16*a,6+8*b,7+16*c]: failure constant=216, vgcd=16
[15+16*a,6+8*b,7+16*c]: unknown 3248+10800*a+11520*a^2+4096*a^3+864*b+1152*b^2+512*b^3-2352*c-5376*c^2-4096*c^3=0 -> [28]
[7+16*a,2+8*b,15+16*c]: unknown -3024+2352*a+5376*a^2+4096*a^3+96*b+384*b^2+512*b^3-10800*c-11520*c^2-4096*c^3=0 -> [29]
[15+16*a,2+8*b,15+16*c]: failure constant=8, vgcd=16
[7+16*a,6+8*b,15+16*c]: unknown -2816+2352*a+5376*a^2+4096*a^3+864*b+1152*b^2+512*b^3-10800*c-11520*c^2-4096*c^3=0 -> [30]
[15+16*a,6+8*b,15+16*c]: failure constant=216, vgcd=16
Maximum level 3 reached, queue size = 31
