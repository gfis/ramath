Expanding for base=2, transposables={{a},{b},{c}}, reasons+features=base,same,similiar norm
----------------
expanding queue[0]^-1: a^3 + 3*b^3 - 9*c^3 = 0 meter=[2,2,2] *2
solution [0,0,0],trivial(3)
[0+2*a,0+2*b,0+2*c]: same form as a^3+3*b^3-9*c^3=0
[1+2*a,1+2*b,0+2*c]: unknown 2+3*a+6*a^2+4*a^3+9*b+18*b^2+12*b^3-36*c^3=0 -> [1]
[1+2*a,0+2*b,1+2*c]: unknown -4+3*a+6*a^2+4*a^3+12*b^3-27*c-54*c^2-36*c^3=0 -> [2]
[0+2*a,1+2*b,1+2*c]: unknown -3+4*a^3+9*b+18*b^2+12*b^3-27*c-54*c^2-36*c^3=0 -> [3]
----------------
expanding queue[1]^0: 2 + 3*a + 6*a^2 + 4*a^3 + 9*b + 18*b^2 + 12*b^3 - 36*c^3 = 0 meter=[2,2,1] *4
[1+4*a,1+4*b,0+2*c]: unknown 1+3*a+12*a^2+16*a^3+9*b+36*b^2+48*b^3-18*c^3=0 -> [4]
[3+4*a,3+4*b,0+2*c]: unknown 27+27*a+36*a^2+16*a^3+81*b+108*b^2+48*b^3-18*c^3=0 -> [5]
expanding queue[2]^0:  - 4 + 3*a + 6*a^2 + 4*a^3 + 12*b^3 - 27*c - 54*c^2 - 36*c^3 = 0 meter=[2,1,2] *4
[1+4*a,0+2*b,1+4*c]: unknown -2+3*a+12*a^2+16*a^3+6*b^3-27*c-108*c^2-144*c^3=0 -> [6]
[3+4*a,0+2*b,3+4*c]: unknown -54+27*a+36*a^2+16*a^3+6*b^3-243*c-324*c^2-144*c^3=0 -> [7]
expanding queue[3]^0:  - 3 + 4*a^3 + 9*b + 18*b^2 + 12*b^3 - 27*c - 54*c^2 - 36*c^3 = 0 meter=[1,2,2] *4
[0+2*a,3+4*b,1+4*c]: unknown 18+2*a^3+81*b+108*b^2+48*b^3-27*c-108*c^2-144*c^3=0 -> [8]
[0+2*a,1+4*b,3+4*c]: unknown -60+2*a^3+9*b+36*b^2+48*b^3-243*c-324*c^2-144*c^3=0 -> [9]
----------------
expanding queue[4]^1: 1 + 3*a + 12*a^2 + 16*a^3 + 9*b + 36*b^2 + 48*b^3 - 18*c^3 = 0 meter=[2,2,1] *8
[5+8*a,1+8*b,0+2*c]: unknown 16+75*a+120*a^2+64*a^3+9*b+72*b^2+192*b^3-9*c^3=0 -> [10]
[1+8*a,5+8*b,0+2*c]: unknown 47+3*a+24*a^2+64*a^3+225*b+360*b^2+192*b^3-9*c^3=0 -> [11]
expanding queue[5]^1: 27 + 27*a + 36*a^2 + 16*a^3 + 81*b + 108*b^2 + 48*b^3 - 18*c^3 = 0 meter=[2,2,1] *8
[7+8*a,3+8*b,0+2*c]: unknown 53+147*a+168*a^2+64*a^3+81*b+216*b^2+192*b^3-9*c^3=0 -> [12]
[3+8*a,7+8*b,0+2*c]: unknown 132+27*a+72*a^2+64*a^3+441*b+504*b^2+192*b^3-9*c^3=0 -> [13]
expanding queue[6]^2:  - 2 + 3*a + 12*a^2 + 16*a^3 + 6*b^3 - 27*c - 108*c^2 - 144*c^3 = 0 meter=[2,1,2] *8
[1+8*a,0+2*b,1+8*c]: unknown -1+3*a+24*a^2+64*a^3+3*b^3-27*c-216*c^2-576*c^3=0 -> [14]
[5+8*a,0+2*b,5+8*c]: unknown -125+75*a+120*a^2+64*a^3+3*b^3-675*c-1080*c^2-576*c^3=0 -> [15]
expanding queue[7]^2:  - 54 + 27*a + 36*a^2 + 16*a^3 + 6*b^3 - 243*c - 324*c^2 - 144*c^3 = 0 meter=[2,1,2] *8
[3+8*a,0+2*b,3+8*c]: unknown -27+27*a+72*a^2+64*a^3+3*b^3-243*c-648*c^2-576*c^3=0 -> [16]
[7+8*a,0+2*b,7+8*c]: unknown -343+147*a+168*a^2+64*a^3+3*b^3-1323*c-1512*c^2-576*c^3=0 -> [17]
expanding queue[8]^3: 18 + 2*a^3 + 81*b + 108*b^2 + 48*b^3 - 27*c - 108*c^2 - 144*c^3 = 0 meter=[1,2,2] *8
[0+2*a,3+8*b,1+8*c]: unknown 9+a^3+81*b+216*b^2+192*b^3-27*c-216*c^2-576*c^3=0 -> [18]
[0+2*a,7+8*b,5+8*c]: unknown -12+a^3+441*b+504*b^2+192*b^3-675*c-1080*c^2-576*c^3=0 -> [19]
expanding queue[9]^3:  - 60 + 2*a^3 + 9*b + 36*b^2 + 48*b^3 - 243*c - 324*c^2 - 144*c^3 = 0 meter=[1,2,2] *8
[0+2*a,1+8*b,3+8*c]: unknown -30+a^3+9*b+72*b^2+192*b^3-243*c-648*c^2-576*c^3=0 -> [20]
[0+2*a,5+8*b,7+8*c]: unknown -339+a^3+225*b+360*b^2+192*b^3-1323*c-1512*c^2-576*c^3=0 -> [21]
----------------
expanding queue[10]^4: 16 + 75*a + 120*a^2 + 64*a^3 + 9*b + 72*b^2 + 192*b^3 - 9*c^3 = 0 meter=[2,2,2] *16
[5+16*a,1+16*b,0+4*c]: unknown 8+75*a+240*a^2+256*a^3+9*b+144*b^2+768*b^3-36*c^3=0 -> [22]
[13+16*a,9+16*b,0+4*c]: unknown 274+507*a+624*a^2+256*a^3+729*b+1296*b^2+768*b^3-36*c^3=0 -> [23]
[13+16*a,1+16*b,2+4*c]: unknown 133+507*a+624*a^2+256*a^3+9*b+144*b^2+768*b^3-27*c-54*c^2-36*c^3=0 -> [24]
[5+16*a,9+16*b,2+4*c]: unknown 140+75*a+240*a^2+256*a^3+729*b+1296*b^2+768*b^3-27*c-54*c^2-36*c^3=0 -> [25]
expanding queue[11]^4: 47 + 3*a + 24*a^2 + 64*a^3 + 225*b + 360*b^2 + 192*b^3 - 9*c^3 = 0 meter=[2,2,2] *16
[9+16*a,5+16*b,0+4*c]: unknown 69+243*a+432*a^2+256*a^3+225*b+720*b^2+768*b^3-36*c^3=0 -> [26]
[1+16*a,13+16*b,0+4*c]: unknown 412+3*a+48*a^2+256*a^3+1521*b+1872*b^2+768*b^3-36*c^3=0 -> [27]
[1+16*a,5+16*b,2+4*c]: unknown 19+3*a+48*a^2+256*a^3+225*b+720*b^2+768*b^3-27*c-54*c^2-36*c^3=0 -> [28]
[9+16*a,13+16*b,2+4*c]: unknown 453+243*a+432*a^2+256*a^3+1521*b+1872*b^2+768*b^3-27*c-54*c^2-36*c^3=0 -> [29]
expanding queue[12]^5: 53 + 147*a + 168*a^2 + 64*a^3 + 81*b + 216*b^2 + 192*b^3 - 9*c^3 = 0 meter=[2,2,2] *16
[15+16*a,3+16*b,0+4*c]: unknown 216+675*a+720*a^2+256*a^3+81*b+432*b^2+768*b^3-36*c^3=0 -> [30]
[7+16*a,11+16*b,0+4*c]: unknown 271+147*a+336*a^2+256*a^3+1089*b+1584*b^2+768*b^3-36*c^3=0 -> [31]
[7+16*a,3+16*b,2+4*c]: unknown 22+147*a+336*a^2+256*a^3+81*b+432*b^2+768*b^3-27*c-54*c^2-36*c^3=0 -> [32]
[15+16*a,11+16*b,2+4*c]: unknown 456+675*a+720*a^2+256*a^3+1089*b+1584*b^2+768*b^3-27*c-54*c^2-36*c^3=0 -> [33]
expanding queue[13]^5: 132 + 27*a + 72*a^2 + 64*a^3 + 441*b + 504*b^2 + 192*b^3 - 9*c^3 = 0 meter=[2,2,2] *16
[3+16*a,7+16*b,0+4*c]: unknown 66+27*a+144*a^2+256*a^3+441*b+1008*b^2+768*b^3-36*c^3=0 -> [34]
[11+16*a,15+16*b,0+4*c]: unknown 716+363*a+528*a^2+256*a^3+2025*b+2160*b^2+768*b^3-36*c^3=0 -> [35]
[11+16*a,7+16*b,2+4*c]: unknown 143+363*a+528*a^2+256*a^3+441*b+1008*b^2+768*b^3-27*c-54*c^2-36*c^3=0 -> [36]
[3+16*a,15+16*b,2+4*c]: unknown 630+27*a+144*a^2+256*a^3+2025*b+2160*b^2+768*b^3-27*c-54*c^2-36*c^3=0 -> [37]
expanding queue[14]^6:  - 1 + 3*a + 24*a^2 + 64*a^3 + 3*b^3 - 27*c - 216*c^2 - 576*c^3 = 0 meter=[2,2,2] *16
[9+16*a,0+4*b,1+16*c]: unknown 45+243*a+432*a^2+256*a^3+12*b^3-27*c-432*c^2-2304*c^3=0 -> [38]
[1+16*a,2+4*b,1+16*c]: unknown 1+3*a+48*a^2+256*a^3+9*b+18*b^2+12*b^3-27*c-432*c^2-2304*c^3=0 -> [39]
[1+16*a,0+4*b,9+16*c]: unknown -410+3*a+48*a^2+256*a^3+12*b^3-2187*c-3888*c^2-2304*c^3=0 -> [40]
[9+16*a,2+4*b,9+16*c]: unknown -363+243*a+432*a^2+256*a^3+9*b+18*b^2+12*b^3-2187*c-3888*c^2-2304*c^3=0 -> [41]
expanding queue[15]^6:  - 125 + 75*a + 120*a^2 + 64*a^3 + 3*b^3 - 675*c - 1080*c^2 - 576*c^3 = 0 meter=[2,2,2] *16
[13+16*a,0+4*b,5+16*c]: unknown 67+507*a+624*a^2+256*a^3+12*b^3-675*c-2160*c^2-2304*c^3=0 -> [42]
[5+16*a,2+4*b,5+16*c]: unknown -61+75*a+240*a^2+256*a^3+9*b+18*b^2+12*b^3-675*c-2160*c^2-2304*c^3=0 -> [43]
[5+16*a,0+4*b,13+16*c]: unknown -1228+75*a+240*a^2+256*a^3+12*b^3-4563*c-5616*c^2-2304*c^3=0 -> [44]
[13+16*a,2+4*b,13+16*c]: unknown -1097+507*a+624*a^2+256*a^3+9*b+18*b^2+12*b^3-4563*c-5616*c^2-2304*c^3=0 -> [45]
expanding queue[16]^7:  - 27 + 27*a + 72*a^2 + 64*a^3 + 3*b^3 - 243*c - 648*c^2 - 576*c^3 = 0 meter=[2,2,2] *16
[11+16*a,0+4*b,3+16*c]: unknown 68+363*a+528*a^2+256*a^3+12*b^3-243*c-1296*c^2-2304*c^3=0 -> [46]
[3+16*a,2+4*b,3+16*c]: unknown -12+27*a+144*a^2+256*a^3+9*b+18*b^2+12*b^3-243*c-1296*c^2-2304*c^3=0 -> [47]
[3+16*a,0+4*b,11+16*c]: unknown -747+27*a+144*a^2+256*a^3+12*b^3-3267*c-4752*c^2-2304*c^3=0 -> [48]
[11+16*a,2+4*b,11+16*c]: unknown -664+363*a+528*a^2+256*a^3+9*b+18*b^2+12*b^3-3267*c-4752*c^2-2304*c^3=0 -> [49]
expanding queue[17]^7:  - 343 + 147*a + 168*a^2 + 64*a^3 + 3*b^3 - 1323*c - 1512*c^2 - 576*c^3 = 0 meter=[2,2,2] *16
[15+16*a,0+4*b,7+16*c]: unknown 18+675*a+720*a^2+256*a^3+12*b^3-1323*c-3024*c^2-2304*c^3=0 -> [50]
[7+16*a,2+4*b,7+16*c]: unknown -170+147*a+336*a^2+256*a^3+9*b+18*b^2+12*b^3-1323*c-3024*c^2-2304*c^3=0 -> [51]
[7+16*a,0+4*b,15+16*c]: unknown -1877+147*a+336*a^2+256*a^3+12*b^3-6075*c-6480*c^2-2304*c^3=0 -> [52]
[15+16*a,2+4*b,15+16*c]: unknown -1686+675*a+720*a^2+256*a^3+9*b+18*b^2+12*b^3-6075*c-6480*c^2-2304*c^3=0 -> [53]
expanding queue[18]^8: 9 + a^3 + 81*b + 216*b^2 + 192*b^3 - 27*c - 216*c^2 - 576*c^3 = 0 meter=[2,2,2] *16
[2+4*a,3+16*b,1+16*c]: unknown 5+3*a+6*a^2+4*a^3+81*b+432*b^2+768*b^3-27*c-432*c^2-2304*c^3=0 -> [54]
[0+4*a,11+16*b,1+16*c]: unknown 249+4*a^3+1089*b+1584*b^2+768*b^3-27*c-432*c^2-2304*c^3=0 -> [55]
[0+4*a,3+16*b,9+16*c]: unknown -405+4*a^3+81*b+432*b^2+768*b^3-2187*c-3888*c^2-2304*c^3=0 -> [56]
[2+4*a,11+16*b,9+16*c]: unknown -160+3*a+6*a^2+4*a^3+1089*b+1584*b^2+768*b^3-2187*c-3888*c^2-2304*c^3=0 -> [57]
expanding queue[19]^8:  - 12 + a^3 + 441*b + 504*b^2 + 192*b^3 - 675*c - 1080*c^2 - 576*c^3 = 0 meter=[2,2,2] *16
[0+4*a,7+16*b,5+16*c]: unknown -6+4*a^3+441*b+1008*b^2+768*b^3-675*c-2160*c^2-2304*c^3=0 -> [58]
[2+4*a,15+16*b,5+16*c]: unknown 563+3*a+6*a^2+4*a^3+2025*b+2160*b^2+768*b^3-675*c-2160*c^2-2304*c^3=0 -> [59]
[2+4*a,7+16*b,13+16*c]: unknown -1171+3*a+6*a^2+4*a^3+441*b+1008*b^2+768*b^3-4563*c-5616*c^2-2304*c^3=0 -> [60]
[0+4*a,15+16*b,13+16*c]: unknown -603+4*a^3+2025*b+2160*b^2+768*b^3-4563*c-5616*c^2-2304*c^3=0 -> [61]
expanding queue[20]^9:  - 30 + a^3 + 9*b + 72*b^2 + 192*b^3 - 243*c - 648*c^2 - 576*c^3 = 0 meter=[2,2,2] *16
[0+4*a,1+16*b,3+16*c]: unknown -15+4*a^3+9*b+144*b^2+768*b^3-243*c-1296*c^2-2304*c^3=0 -> [62]
[2+4*a,9+16*b,3+16*c]: unknown 122+3*a+6*a^2+4*a^3+729*b+1296*b^2+768*b^3-243*c-1296*c^2-2304*c^3=0 -> [63]
[2+4*a,1+16*b,11+16*c]: unknown -748+3*a+6*a^2+4*a^3+9*b+144*b^2+768*b^3-3267*c-4752*c^2-2304*c^3=0 -> [64]
[0+4*a,9+16*b,11+16*c]: unknown -612+4*a^3+729*b+1296*b^2+768*b^3-3267*c-4752*c^2-2304*c^3=0 -> [65]
expanding queue[21]^9:  - 339 + a^3 + 225*b + 360*b^2 + 192*b^3 - 1323*c - 1512*c^2 - 576*c^3 = 0 meter=[2,2,2] *16
[2+4*a,5+16*b,7+16*c]: unknown -169+3*a+6*a^2+4*a^3+225*b+720*b^2+768*b^3-1323*c-3024*c^2-2304*c^3=0 -> [66]
[0+4*a,13+16*b,7+16*c]: unknown 219+4*a^3+1521*b+1872*b^2+768*b^3-1323*c-3024*c^2-2304*c^3=0 -> [67]
[0+4*a,5+16*b,15+16*c]: unknown -1875+4*a^3+225*b+720*b^2+768*b^3-6075*c-6480*c^2-2304*c^3=0 -> [68]
[2+4*a,13+16*b,15+16*c]: unknown -1486+3*a+6*a^2+4*a^3+1521*b+1872*b^2+768*b^3-6075*c-6480*c^2-2304*c^3=0 -> [69]
Maximum level 3 reached, queue size = 70
