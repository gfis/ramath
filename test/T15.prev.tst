ExponentGCDs=[3,3,3]
Expanding for base=6, reasons+features=base,similiar igtriv,norm
----------------
expanding queue[0]^-1,meter=[6,6,6]*6: a^3 + 3*b^3 - 9*c^3
[0,0,0]:	similiar   [0], same  a^3+3*b^3-9*c^3
[3,3,0]:	unknown -> [1] 2+3*a+6*a^2+4*a^3+9*b+18*b^2+12*b^3-36*c^3
[3,0,3]:	unknown -> [2] -4+3*a+6*a^2+4*a^3+12*b^3-27*c-54*c^2-36*c^3
[0,3,3]:	unknown -> [3] -3+4*a^3+9*b+18*b^2+12*b^3-27*c-54*c^2-36*c^3
----------------
expanding queue[1]^0,meter=[6,6,1]*36: 2 + 3*a + 6*a^2 + 4*a^3 + 9*b + 18*b^2 + 12*b^3 - 36*c^3
[9,9,0]:	unknown -> [4] 3+9*a+36*a^2+48*a^3+27*b+108*b^2+144*b^3-2*c^3
[27,27,0]:	unknown -> [5] 81+81*a+108*a^2+48*a^3+243*b+324*b^2+144*b^3-2*c^3
expanding queue[2]^0,meter=[6,1,6]*36:  - 4 + 3*a + 6*a^2 + 4*a^3 + 12*b^3 - 27*c - 54*c^2 - 36*c^3
[27,0,3]:	unknown -> [6] 60+243*a+324*a^2+144*a^3+2*b^3-27*c-324*c^2-1296*c^3
[9,0,9]:	unknown -> [7] -18+27*a+108*a^2+144*a^3+2*b^3-243*c-972*c^2-1296*c^3
[27,0,15]:	unknown -> [8] -33+243*a+324*a^2+144*a^3+2*b^3-675*c-1620*c^2-1296*c^3
[9,0,21]:	unknown -> [9] -255+27*a+108*a^2+144*a^3+2*b^3-1323*c-2268*c^2-1296*c^3
[27,0,27]:	unknown -> [10] -486+243*a+324*a^2+144*a^3+2*b^3-2187*c-2916*c^2-1296*c^3
[9,0,33]:	unknown -> [11] -996+27*a+108*a^2+144*a^3+2*b^3-3267*c-3564*c^2-1296*c^3
expanding queue[3]^0,meter=[6,6,6]*36:  - 3 + 4*a^3 + 9*b + 18*b^2 + 12*b^3 - 27*c - 54*c^2 - 36*c^3
[0,27,9]:	unknown -> [12] 18+16*a^3+81*b+108*b^2+48*b^3-27*c-108*c^2-144*c^3
[18,27,9]:	unknown -> [13] 20+12*a+24*a^2+16*a^3+81*b+108*b^2+48*b^3-27*c-108*c^2-144*c^3
[0,9,27]:	unknown -> [14] -60+16*a^3+9*b+36*b^2+48*b^3-243*c-324*c^2-144*c^3
[18,9,27]:	unknown -> [15] -58+12*a+24*a^2+16*a^3+9*b+36*b^2+48*b^3-243*c-324*c^2-144*c^3
----------------
expanding queue[4]^1,meter=[6,6,6]*216: 3 + 9*a + 36*a^2 + 48*a^3 + 27*b + 108*b^2 + 144*b^3 - 2*c^3
[189,81,0]:	unknown -> [16] 159+441*a+504*a^2+192*a^3+243*b+648*b^2+576*b^3-8*c^3
[81,189,0]:	unknown -> [17] 396+81*a+216*a^2+192*a^3+1323*b+1512*b^2+576*b^3-8*c^3
[189,81,18]:	unknown -> [18] 158+441*a+504*a^2+192*a^3+243*b+648*b^2+576*b^3-6*c-12*c^2-8*c^3
[81,189,18]:	unknown -> [19] 395+81*a+216*a^2+192*a^3+1323*b+1512*b^2+576*b^3-6*c-12*c^2-8*c^3
expanding queue[5]^1,meter=[6,6,6]*216: 81 + 81*a + 108*a^2 + 48*a^3 + 243*b + 324*b^2 + 144*b^3 - 2*c^3
[135,27,0]:	unknown -> [20] 48+225*a+360*a^2+192*a^3+27*b+216*b^2+576*b^3-8*c^3
[27,135,0]:	unknown -> [21] 141+9*a+72*a^2+192*a^3+675*b+1080*b^2+576*b^3-8*c^3
[135,27,18]:	unknown -> [22] 47+225*a+360*a^2+192*a^3+27*b+216*b^2+576*b^3-6*c-12*c^2-8*c^3
[27,135,18]:	unknown -> [23] 140+9*a+72*a^2+192*a^3+675*b+1080*b^2+576*b^3-6*c-12*c^2-8*c^3
expanding queue[6]^2,meter=[6,6,6]*216: 60 + 243*a + 324*a^2 + 144*a^3 + 2*b^3 - 27*c - 324*c^2 - 1296*c^3
expanding queue[7]^2,meter=[6,6,6]*216:  - 18 + 27*a + 108*a^2 + 144*a^3 + 2*b^3 - 243*c - 972*c^2 - 1296*c^3
[81,0,9]:	unknown -> [24] 30+243*a+648*a^2+576*a^3+8*b^3-27*c-648*c^2-5184*c^3
[81,18,9]:	unknown -> [25] 31+243*a+648*a^2+576*a^3+6*b+12*b^2+8*b^3-27*c-648*c^2-5184*c^3
[189,0,45]:	unknown -> [26] 339+1323*a+1512*a^2+576*a^3+8*b^3-675*c-3240*c^2-5184*c^3
[189,18,45]:	unknown -> [27] 340+1323*a+1512*a^2+576*a^3+6*b+12*b^2+8*b^3-675*c-3240*c^2-5184*c^3
[81,0,81]:	unknown -> [28] -243+243*a+648*a^2+576*a^3+8*b^3-2187*c-5832*c^2-5184*c^3
[81,18,81]:	unknown -> [29] -242+243*a+648*a^2+576*a^3+6*b+12*b^2+8*b^3-2187*c-5832*c^2-5184*c^3
[189,0,117]:	unknown -> [30] -438+1323*a+1512*a^2+576*a^3+8*b^3-4563*c-8424*c^2-5184*c^3
[189,18,117]:	unknown -> [31] -437+1323*a+1512*a^2+576*a^3+6*b+12*b^2+8*b^3-4563*c-8424*c^2-5184*c^3
[81,0,153]:	unknown -> [32] -1812+243*a+648*a^2+576*a^3+8*b^3-7803*c-11016*c^2-5184*c^3
[81,18,153]:	unknown -> [33] -1811+243*a+648*a^2+576*a^3+6*b+12*b^2+8*b^3-7803*c-11016*c^2-5184*c^3
[189,0,189]:	unknown -> [34] -3087+1323*a+1512*a^2+576*a^3+8*b^3-11907*c-13608*c^2-5184*c^3
[189,18,189]:	unknown -> [35] -3086+1323*a+1512*a^2+576*a^3+6*b+12*b^2+8*b^3-11907*c-13608*c^2-5184*c^3
expanding queue[8]^2,meter=[6,6,6]*216:  - 33 + 243*a + 324*a^2 + 144*a^3 + 2*b^3 - 675*c - 1620*c^2 - 1296*c^3
expanding queue[9]^2,meter=[6,6,6]*216:  - 255 + 27*a + 108*a^2 + 144*a^3 + 2*b^3 - 1323*c - 2268*c^2 - 1296*c^3
expanding queue[10]^2,meter=[6,6,6]*216:  - 486 + 243*a + 324*a^2 + 144*a^3 + 2*b^3 - 2187*c - 2916*c^2 - 1296*c^3
[27,0,27]:	unknown -> [36] -9+27*a+216*a^2+576*a^3+8*b^3-243*c-1944*c^2-5184*c^3
[27,18,27]:	unknown -> [37] -8+27*a+216*a^2+576*a^3+6*b+12*b^2+8*b^3-243*c-1944*c^2-5184*c^3
[135,0,63]:	unknown -> [38] 12+675*a+1080*a^2+576*a^3+8*b^3-1323*c-4536*c^2-5184*c^3
[135,18,63]:	unknown -> [39] 13+675*a+1080*a^2+576*a^3+6*b+12*b^2+8*b^3-1323*c-4536*c^2-5184*c^3
[27,0,99]:	unknown -> [40] -498+27*a+216*a^2+576*a^3+8*b^3-3267*c-7128*c^2-5184*c^3
[27,18,99]:	unknown -> [41] -497+27*a+216*a^2+576*a^3+6*b+12*b^2+8*b^3-3267*c-7128*c^2-5184*c^3
[135,0,135]:	unknown -> [42] -1125+675*a+1080*a^2+576*a^3+8*b^3-6075*c-9720*c^2-5184*c^3
[135,18,135]:	unknown -> [43] -1124+675*a+1080*a^2+576*a^3+6*b+12*b^2+8*b^3-6075*c-9720*c^2-5184*c^3
[27,0,171]:	unknown -> [44] -2571+27*a+216*a^2+576*a^3+8*b^3-9747*c-12312*c^2-5184*c^3
[27,18,171]:	unknown -> [45] -2570+27*a+216*a^2+576*a^3+6*b+12*b^2+8*b^3-9747*c-12312*c^2-5184*c^3
[135,0,207]:	unknown -> [46] -4422+675*a+1080*a^2+576*a^3+8*b^3-14283*c-14904*c^2-5184*c^3
[135,18,207]:	unknown -> [47] -4421+675*a+1080*a^2+576*a^3+6*b+12*b^2+8*b^3-14283*c-14904*c^2-5184*c^3
expanding queue[11]^2,meter=[6,6,6]*216:  - 996 + 27*a + 108*a^2 + 144*a^3 + 2*b^3 - 3267*c - 3564*c^2 - 1296*c^3
expanding queue[12]^3,meter=[6,6,6]*216: 18 + 16*a^3 + 81*b + 108*b^2 + 48*b^3 - 27*c - 108*c^2 - 144*c^3
[0,27,81]:	unknown -> [48] -30+64*a^3+9*b+72*b^2+192*b^3-243*c-648*c^2-576*c^3
[108,27,81]:	unknown -> [49] -22+48*a+96*a^2+64*a^3+9*b+72*b^2+192*b^3-243*c-648*c^2-576*c^3
[0,135,189]:	unknown -> [50] -339+64*a^3+225*b+360*b^2+192*b^3-1323*c-1512*c^2-576*c^3
[108,135,189]:	unknown -> [51] -331+48*a+96*a^2+64*a^3+225*b+360*b^2+192*b^3-1323*c-1512*c^2-576*c^3
expanding queue[13]^3,meter=[6,6,6]*216: 20 + 12*a + 24*a^2 + 16*a^3 + 81*b + 108*b^2 + 48*b^3 - 27*c - 108*c^2 - 144*c^3
[54,27,81]:	unknown -> [52] -29+12*a+48*a^2+64*a^3+9*b+72*b^2+192*b^3-243*c-648*c^2-576*c^3
[162,27,81]:	unknown -> [53] -3+108*a+144*a^2+64*a^3+9*b+72*b^2+192*b^3-243*c-648*c^2-576*c^3
[54,135,189]:	unknown -> [54] -338+12*a+48*a^2+64*a^3+225*b+360*b^2+192*b^3-1323*c-1512*c^2-576*c^3
[162,135,189]:	unknown -> [55] -312+108*a+144*a^2+64*a^3+225*b+360*b^2+192*b^3-1323*c-1512*c^2-576*c^3
expanding queue[14]^3,meter=[6,6,6]*216:  - 60 + 16*a^3 + 9*b + 36*b^2 + 48*b^3 - 243*c - 324*c^2 - 144*c^3
[0,81,27]:	unknown -> [56] 9+64*a^3+81*b+216*b^2+192*b^3-27*c-216*c^2-576*c^3
[108,81,27]:	unknown -> [57] 17+48*a+96*a^2+64*a^3+81*b+216*b^2+192*b^3-27*c-216*c^2-576*c^3
[0,189,135]:	unknown -> [58] -12+64*a^3+441*b+504*b^2+192*b^3-675*c-1080*c^2-576*c^3
[108,189,135]:	unknown -> [59] -4+48*a+96*a^2+64*a^3+441*b+504*b^2+192*b^3-675*c-1080*c^2-576*c^3
expanding queue[15]^3,meter=[6,6,6]*216:  - 58 + 12*a + 24*a^2 + 16*a^3 + 9*b + 36*b^2 + 48*b^3 - 243*c - 324*c^2 - 144*c^3
[54,81,27]:	unknown -> [60] 10+12*a+48*a^2+64*a^3+81*b+216*b^2+192*b^3-27*c-216*c^2-576*c^3
[162,81,27]:	unknown -> [61] 36+108*a+144*a^2+64*a^3+81*b+216*b^2+192*b^3-27*c-216*c^2-576*c^3
[54,189,135]:	unknown -> [62] -11+12*a+48*a^2+64*a^3+441*b+504*b^2+192*b^3-675*c-1080*c^2-576*c^3
[162,189,135]:	unknown -> [63] 15+108*a+144*a^2+64*a^3+441*b+504*b^2+192*b^3-675*c-1080*c^2-576*c^3
Maximum level 2 reached at [64]: a^3 + 3*b^3 - 9*c^3
