Expanding for base 2, transposables =    0   0   2

expanding queue[0]: a^3 + b^3 - c^3 = 0 modulo [2,2,2] *2
[0+2*a,0+2*b,0+2*c]: same as 8*a^3+8*b^3-8*c^3=0
[1+2*a,0+2*b,0+2*c]: failure constant=1, vgcd=2
[0+2*a,1+2*b,0+2*c]: failure constant=1, vgcd=2
[1+2*a,1+2*b,0+2*c]: unknown 2+6*a+12*a^2+8*a^3+6*b+12*b^2+8*b^3-8*c^3=0 -> [1]
[0+2*a,0+2*b,1+2*c]: failure constant=-1, vgcd=2
[1+2*a,0+2*b,1+2*c]: success [1,0,1],trivial(3) success [3,0,3],trivial(3)  6*a+12*a^2+8*a^3+8*b^3-6*c-12*c^2-8*c^3=0 -> [2]
[0+2*a,1+2*b,1+2*c]: success [0,1,1],trivial(3) success [0,3,3],trivial(3)  8*a^3+6*b+12*b^2+8*b^3-6*c-12*c^2-8*c^3=0 -> [3]
[1+2*a,1+2*b,1+2*c]: failure constant=1, vgcd=2

expanding queue[1]: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 - 8*c^3 = 0 modulo [2,2,2] *4
[1+4*a,1+4*b,0+4*c]: failure constant=2, vgcd=4
[3+4*a,1+4*b,0+4*c]: unknown 28+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3-64*c^3=0 -> [4]
[1+4*a,3+4*b,0+4*c]: unknown 28+12*a+48*a^2+64*a^3+108*b+144*b^2+64*b^3-64*c^3=0 -> [5]
[3+4*a,3+4*b,0+4*c]: failure constant=54, vgcd=4
[1+4*a,1+4*b,2+4*c]: failure constant=-6, vgcd=4
[3+4*a,1+4*b,2+4*c]: unknown 20+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3-48*c-96*c^2-64*c^3=0 -> [6]
[1+4*a,3+4*b,2+4*c]: unknown 20+12*a+48*a^2+64*a^3+108*b+144*b^2+64*b^3-48*c-96*c^2-64*c^3=0 -> [7]
[3+4*a,3+4*b,2+4*c]: failure constant=46, vgcd=4

expanding queue[2]: 6*a + 12*a^2 + 8*a^3 + 8*b^3 - 6*c - 12*c^2 - 8*c^3 = 0 modulo [2,2,2] *4
[1+4*a,0+4*b,1+4*c]: success [1,0,1],trivial(3) success [5,0,5],trivial(3)  12*a+48*a^2+64*a^3+64*b^3-12*c-48*c^2-64*c^3=0 -> [8]
[3+4*a,0+4*b,1+4*c]: failure constant=26, vgcd=4
[1+4*a,2+4*b,1+4*c]: unknown 8+12*a+48*a^2+64*a^3+48*b+96*b^2+64*b^3-12*c-48*c^2-64*c^3=0 -> [9]
[3+4*a,2+4*b,1+4*c]: failure constant=34, vgcd=4
[1+4*a,0+4*b,3+4*c]: failure constant=-26, vgcd=4
[3+4*a,0+4*b,3+4*c]: success [3,0,3],trivial(3) success [7,0,7],trivial(3)  108*a+144*a^2+64*a^3+64*b^3-108*c-144*c^2-64*c^3=0 -> [10]
[1+4*a,2+4*b,3+4*c]: failure constant=-18, vgcd=4
[3+4*a,2+4*b,3+4*c]: unknown 8+108*a+144*a^2+64*a^3+48*b+96*b^2+64*b^3-108*c-144*c^2-64*c^3=0 -> [11]

expanding queue[3]: 8*a^3 + 6*b + 12*b^2 + 8*b^3 - 6*c - 12*c^2 - 8*c^3 = 0 modulo [2,2,2] *4
[0+4*a,1+4*b,1+4*c]: success [0,1,1],trivial(3) success [0,5,5],trivial(3)  64*a^3+12*b+48*b^2+64*b^3-12*c-48*c^2-64*c^3=0 -> [12]
[2+4*a,1+4*b,1+4*c]: unknown 8+48*a+96*a^2+64*a^3+12*b+48*b^2+64*b^3-12*c-48*c^2-64*c^3=0 -> [13]
[0+4*a,3+4*b,1+4*c]: failure constant=26, vgcd=4
[2+4*a,3+4*b,1+4*c]: failure constant=34, vgcd=4
[0+4*a,1+4*b,3+4*c]: failure constant=-26, vgcd=4
[2+4*a,1+4*b,3+4*c]: failure constant=-18, vgcd=4
[0+4*a,3+4*b,3+4*c]: success [0,3,3],trivial(3) success [0,7,7],trivial(3)  64*a^3+108*b+144*b^2+64*b^3-108*c-144*c^2-64*c^3=0 -> [14]
[2+4*a,3+4*b,3+4*c]: unknown 8+48*a+96*a^2+64*a^3+108*b+144*b^2+64*b^3-108*c-144*c^2-64*c^3=0 -> [15]

expanding queue[4]: 28 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 - 64*c^3 = 0 modulo [2,2,2] *8
[3+8*a,1+8*b,0+8*c]: failure constant=28, vgcd=8
[7+8*a,1+8*b,0+8*c]: unknown 344+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3-512*c^3=0 -> [16]
[3+8*a,5+8*b,0+8*c]: unknown 152+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3-512*c^3=0 -> [17]
[7+8*a,5+8*b,0+8*c]: failure constant=468, vgcd=8
[3+8*a,1+8*b,4+8*c]: failure constant=-36, vgcd=8
[7+8*a,1+8*b,4+8*c]: unknown 280+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3-384*c-768*c^2-512*c^3=0 -> [18]
[3+8*a,5+8*b,4+8*c]: unknown 88+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3-384*c-768*c^2-512*c^3=0 -> [19]
[7+8*a,5+8*b,4+8*c]: failure constant=404, vgcd=8

expanding queue[5]: 28 + 12*a + 48*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 - 64*c^3 = 0 modulo [2,2,2] *8
[1+8*a,3+8*b,0+8*c]: failure constant=28, vgcd=8
[5+8*a,3+8*b,0+8*c]: unknown 152+600*a+960*a^2+512*a^3+216*b+576*b^2+512*b^3-512*c^3=0 -> [20]
[1+8*a,7+8*b,0+8*c]: unknown 344+24*a+192*a^2+512*a^3+1176*b+1344*b^2+512*b^3-512*c^3=0 -> [21]
[5+8*a,7+8*b,0+8*c]: failure constant=468, vgcd=8
[1+8*a,3+8*b,4+8*c]: failure constant=-36, vgcd=8
[5+8*a,3+8*b,4+8*c]: unknown 88+600*a+960*a^2+512*a^3+216*b+576*b^2+512*b^3-384*c-768*c^2-512*c^3=0 -> [22]
[1+8*a,7+8*b,4+8*c]: unknown 280+24*a+192*a^2+512*a^3+1176*b+1344*b^2+512*b^3-384*c-768*c^2-512*c^3=0 -> [23]
[5+8*a,7+8*b,4+8*c]: failure constant=404, vgcd=8

expanding queue[6]: 20 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 - 48*c - 96*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[3+8*a,1+8*b,2+8*c]: failure constant=20, vgcd=8
[7+8*a,1+8*b,2+8*c]: unknown 336+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3-96*c-384*c^2-512*c^3=0 -> [24]
[3+8*a,5+8*b,2+8*c]: unknown 144+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3-96*c-384*c^2-512*c^3=0 -> [25]
[7+8*a,5+8*b,2+8*c]: failure constant=460, vgcd=8
[3+8*a,1+8*b,6+8*c]: failure constant=-188, vgcd=8
[7+8*a,1+8*b,6+8*c]: unknown 128+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3-864*c-1152*c^2-512*c^3=0 -> [26]
[3+8*a,5+8*b,6+8*c]: unknown -64+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3-864*c-1152*c^2-512*c^3=0 -> [27]
[7+8*a,5+8*b,6+8*c]: failure constant=252, vgcd=8

expanding queue[7]: 20 + 12*a + 48*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 - 48*c - 96*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[1+8*a,3+8*b,2+8*c]: failure constant=20, vgcd=8
[5+8*a,3+8*b,2+8*c]: unknown 144+600*a+960*a^2+512*a^3+216*b+576*b^2+512*b^3-96*c-384*c^2-512*c^3=0 -> [28]
[1+8*a,7+8*b,2+8*c]: unknown 336+24*a+192*a^2+512*a^3+1176*b+1344*b^2+512*b^3-96*c-384*c^2-512*c^3=0 -> [29]
[5+8*a,7+8*b,2+8*c]: failure constant=460, vgcd=8
[1+8*a,3+8*b,6+8*c]: failure constant=-188, vgcd=8
[5+8*a,3+8*b,6+8*c]: unknown -64+600*a+960*a^2+512*a^3+216*b+576*b^2+512*b^3-864*c-1152*c^2-512*c^3=0 -> [30]
[1+8*a,7+8*b,6+8*c]: unknown 128+24*a+192*a^2+512*a^3+1176*b+1344*b^2+512*b^3-864*c-1152*c^2-512*c^3=0 -> [31]
[5+8*a,7+8*b,6+8*c]: failure constant=252, vgcd=8

expanding queue[8]: 12*a + 48*a^2 + 64*a^3 + 64*b^3 - 12*c - 48*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[1+8*a,0+8*b,1+8*c]: success [1,0,1],trivial(3) success [9,0,9],trivial(3)  24*a+192*a^2+512*a^3+512*b^3-24*c-192*c^2-512*c^3=0 -> [32]
[5+8*a,0+8*b,1+8*c]: failure constant=124, vgcd=8
[1+8*a,4+8*b,1+8*c]: unknown 64+24*a+192*a^2+512*a^3+384*b+768*b^2+512*b^3-24*c-192*c^2-512*c^3=0 -> [33]
[5+8*a,4+8*b,1+8*c]: failure constant=188, vgcd=8
[1+8*a,0+8*b,5+8*c]: failure constant=-124, vgcd=8
[5+8*a,0+8*b,5+8*c]: success [5,0,5],trivial(3) success [13,0,13],trivial(3)  600*a+960*a^2+512*a^3+512*b^3-600*c-960*c^2-512*c^3=0 -> [34]
[1+8*a,4+8*b,5+8*c]: failure constant=-60, vgcd=8
[5+8*a,4+8*b,5+8*c]: unknown 64+600*a+960*a^2+512*a^3+384*b+768*b^2+512*b^3-600*c-960*c^2-512*c^3=0 -> [35]

expanding queue[9]: 8 + 12*a + 48*a^2 + 64*a^3 + 48*b + 96*b^2 + 64*b^3 - 12*c - 48*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[1+8*a,2+8*b,1+8*c]: unknown 8+24*a+192*a^2+512*a^3+96*b+384*b^2+512*b^3-24*c-192*c^2-512*c^3=0 -> [36]
[5+8*a,2+8*b,1+8*c]: failure constant=132, vgcd=8
[1+8*a,6+8*b,1+8*c]: unknown 216+24*a+192*a^2+512*a^3+864*b+1152*b^2+512*b^3-24*c-192*c^2-512*c^3=0 -> [37]
[5+8*a,6+8*b,1+8*c]: failure constant=340, vgcd=8
[1+8*a,2+8*b,5+8*c]: failure constant=-116, vgcd=8
[5+8*a,2+8*b,5+8*c]: unknown 8+600*a+960*a^2+512*a^3+96*b+384*b^2+512*b^3-600*c-960*c^2-512*c^3=0 -> [38]
[1+8*a,6+8*b,5+8*c]: failure constant=92, vgcd=8
[5+8*a,6+8*b,5+8*c]: unknown 216+600*a+960*a^2+512*a^3+864*b+1152*b^2+512*b^3-600*c-960*c^2-512*c^3=0 -> [39]

expanding queue[10]: 108*a + 144*a^2 + 64*a^3 + 64*b^3 - 108*c - 144*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[3+8*a,0+8*b,3+8*c]: success [3,0,3],trivial(3) success [11,0,11],trivial(3)  216*a+576*a^2+512*a^3+512*b^3-216*c-576*c^2-512*c^3=0 -> [40]
[7+8*a,0+8*b,3+8*c]: failure constant=316, vgcd=8
[3+8*a,4+8*b,3+8*c]: unknown 64+216*a+576*a^2+512*a^3+384*b+768*b^2+512*b^3-216*c-576*c^2-512*c^3=0 -> [41]
[7+8*a,4+8*b,3+8*c]: failure constant=380, vgcd=8
[3+8*a,0+8*b,7+8*c]: failure constant=-316, vgcd=8
[7+8*a,0+8*b,7+8*c]: success [7,0,7],trivial(3) success [15,0,15],trivial(3)  1176*a+1344*a^2+512*a^3+512*b^3-1176*c-1344*c^2-512*c^3=0 -> [42]
[3+8*a,4+8*b,7+8*c]: failure constant=-252, vgcd=8
[7+8*a,4+8*b,7+8*c]: unknown 64+1176*a+1344*a^2+512*a^3+384*b+768*b^2+512*b^3-1176*c-1344*c^2-512*c^3=0 -> [43]

expanding queue[11]: 8 + 108*a + 144*a^2 + 64*a^3 + 48*b + 96*b^2 + 64*b^3 - 108*c - 144*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[3+8*a,2+8*b,3+8*c]: unknown 8+216*a+576*a^2+512*a^3+96*b+384*b^2+512*b^3-216*c-576*c^2-512*c^3=0 -> [44]
[7+8*a,2+8*b,3+8*c]: failure constant=324, vgcd=8
[3+8*a,6+8*b,3+8*c]: unknown 216+216*a+576*a^2+512*a^3+864*b+1152*b^2+512*b^3-216*c-576*c^2-512*c^3=0 -> [45]
[7+8*a,6+8*b,3+8*c]: failure constant=532, vgcd=8
[3+8*a,2+8*b,7+8*c]: failure constant=-308, vgcd=8
[7+8*a,2+8*b,7+8*c]: unknown 8+1176*a+1344*a^2+512*a^3+96*b+384*b^2+512*b^3-1176*c-1344*c^2-512*c^3=0 -> [46]
[3+8*a,6+8*b,7+8*c]: failure constant=-100, vgcd=8
[7+8*a,6+8*b,7+8*c]: unknown 216+1176*a+1344*a^2+512*a^3+864*b+1152*b^2+512*b^3-1176*c-1344*c^2-512*c^3=0 -> [47]

expanding queue[12]: 64*a^3 + 12*b + 48*b^2 + 64*b^3 - 12*c - 48*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[0+8*a,1+8*b,1+8*c]: success [0,1,1],trivial(3) success [0,9,9],trivial(3)  512*a^3+24*b+192*b^2+512*b^3-24*c-192*c^2-512*c^3=0 -> [48]
[4+8*a,1+8*b,1+8*c]: unknown 64+384*a+768*a^2+512*a^3+24*b+192*b^2+512*b^3-24*c-192*c^2-512*c^3=0 -> [49]
[0+8*a,5+8*b,1+8*c]: failure constant=124, vgcd=8
[4+8*a,5+8*b,1+8*c]: failure constant=188, vgcd=8
[0+8*a,1+8*b,5+8*c]: failure constant=-124, vgcd=8
[4+8*a,1+8*b,5+8*c]: failure constant=-60, vgcd=8
[0+8*a,5+8*b,5+8*c]: success [0,5,5],trivial(3) success [0,13,13],trivial(3)  512*a^3+600*b+960*b^2+512*b^3-600*c-960*c^2-512*c^3=0 -> [50]
[4+8*a,5+8*b,5+8*c]: unknown 64+384*a+768*a^2+512*a^3+600*b+960*b^2+512*b^3-600*c-960*c^2-512*c^3=0 -> [51]

expanding queue[13]: 8 + 48*a + 96*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 - 12*c - 48*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[2+8*a,1+8*b,1+8*c]: unknown 8+96*a+384*a^2+512*a^3+24*b+192*b^2+512*b^3-24*c-192*c^2-512*c^3=0 -> [52]
[6+8*a,1+8*b,1+8*c]: unknown 216+864*a+1152*a^2+512*a^3+24*b+192*b^2+512*b^3-24*c-192*c^2-512*c^3=0 -> [53]
[2+8*a,5+8*b,1+8*c]: failure constant=132, vgcd=8
[6+8*a,5+8*b,1+8*c]: failure constant=340, vgcd=8
[2+8*a,1+8*b,5+8*c]: failure constant=-116, vgcd=8
[6+8*a,1+8*b,5+8*c]: failure constant=92, vgcd=8
[2+8*a,5+8*b,5+8*c]: unknown 8+96*a+384*a^2+512*a^3+600*b+960*b^2+512*b^3-600*c-960*c^2-512*c^3=0 -> [54]
[6+8*a,5+8*b,5+8*c]: unknown 216+864*a+1152*a^2+512*a^3+600*b+960*b^2+512*b^3-600*c-960*c^2-512*c^3=0 -> [55]

expanding queue[14]: 64*a^3 + 108*b + 144*b^2 + 64*b^3 - 108*c - 144*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[0+8*a,3+8*b,3+8*c]: success [0,3,3],trivial(3) success [0,11,11],trivial(3)  512*a^3+216*b+576*b^2+512*b^3-216*c-576*c^2-512*c^3=0 -> [56]
[4+8*a,3+8*b,3+8*c]: unknown 64+384*a+768*a^2+512*a^3+216*b+576*b^2+512*b^3-216*c-576*c^2-512*c^3=0 -> [57]
[0+8*a,7+8*b,3+8*c]: failure constant=316, vgcd=8
[4+8*a,7+8*b,3+8*c]: failure constant=380, vgcd=8
[0+8*a,3+8*b,7+8*c]: failure constant=-316, vgcd=8
[4+8*a,3+8*b,7+8*c]: failure constant=-252, vgcd=8
[0+8*a,7+8*b,7+8*c]: success [0,7,7],trivial(3) success [0,15,15],trivial(3)  512*a^3+1176*b+1344*b^2+512*b^3-1176*c-1344*c^2-512*c^3=0 -> [58]
[4+8*a,7+8*b,7+8*c]: unknown 64+384*a+768*a^2+512*a^3+1176*b+1344*b^2+512*b^3-1176*c-1344*c^2-512*c^3=0 -> [59]

expanding queue[15]: 8 + 48*a + 96*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 - 108*c - 144*c^2 - 64*c^3 = 0 modulo [2,2,2] *8
[2+8*a,3+8*b,3+8*c]: unknown 8+96*a+384*a^2+512*a^3+216*b+576*b^2+512*b^3-216*c-576*c^2-512*c^3=0 -> [60]
[6+8*a,3+8*b,3+8*c]: unknown 216+864*a+1152*a^2+512*a^3+216*b+576*b^2+512*b^3-216*c-576*c^2-512*c^3=0 -> [61]
[2+8*a,7+8*b,3+8*c]: failure constant=324, vgcd=8
[6+8*a,7+8*b,3+8*c]: failure constant=532, vgcd=8
[2+8*a,3+8*b,7+8*c]: failure constant=-308, vgcd=8
[6+8*a,3+8*b,7+8*c]: failure constant=-100, vgcd=8
[2+8*a,7+8*b,7+8*c]: unknown 8+96*a+384*a^2+512*a^3+1176*b+1344*b^2+512*b^3-1176*c-1344*c^2-512*c^3=0 -> [62]
[6+8*a,7+8*b,7+8*c]: unknown 216+864*a+1152*a^2+512*a^3+1176*b+1344*b^2+512*b^3-1176*c-1344*c^2-512*c^3=0 -> [63]
Maximum level 2 reached, queue size = 64
