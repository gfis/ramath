Expanding for base=2, transposables={{a,b},{c}}, reasons+features=base,same,transpose norm,igtriv
----------------
expanding queue[0]^-1: a^3 + b^3 - c^3 = 0 meter=[2,2,2] *2
[0+2*a,0+2*b,0+2*c]: same form as a^3+b^3-c^3=0 success [0,0,0],trivial(3) success [2,0,2],trivial(3) success [0,2,2],trivial(3) 
[1+2*a,1+2*b,0+2*c]: unknown 1+3*a+6*a^2+4*a^3+3*b+6*b^2+4*b^3-4*c^3=0 -> [1]
[1+2*a,0+2*b,1+2*c]: unknown 3*a+6*a^2+4*a^3+4*b^3-3*c-6*c^2-4*c^3=0 -> [2]
[0+2*a,1+2*b,1+2*c]: transposition of [2] {0/0+2*b,0/1+2*a,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b success [0,1,1],trivial(3) success [0,3,3],trivial(3) 
----------------
expanding queue[1]^0: 1 + 3*a + 6*a^2 + 4*a^3 + 3*b + 6*b^2 + 4*b^3 - 4*c^3 = 0 meter=[2,2,1] *4
[3+4*a,1+4*b,0+2*c]: unknown 7+27*a+36*a^2+16*a^3+3*b+12*b^2+16*b^3-2*c^3=0 -> [3]
[1+4*a,3+4*b,0+2*c]: transposition of [3] {0/1+4*b,0/3+4*a,2/0+2*c} by 1+4*b|1+4*a 3+4*a|3+4*b
expanding queue[2]^0: 3*a + 6*a^2 + 4*a^3 + 4*b^3 - 3*c - 6*c^2 - 4*c^3 = 0 meter=[2,1,2] *4
[1+4*a,0+2*b,1+4*c]: unknown 3*a+12*a^2+16*a^3+2*b^3-3*c-12*c^2-16*c^3=0 -> [4]
[3+4*a,0+2*b,3+4*c]: unknown 27*a+36*a^2+16*a^3+2*b^3-27*c-36*c^2-16*c^3=0 -> [5]
----------------
expanding queue[3]^1: 7 + 27*a + 36*a^2 + 16*a^3 + 3*b + 12*b^2 + 16*b^3 - 2*c^3 = 0 meter=[2,2,1] *8
[7+8*a,1+8*b,0+2*c]: unknown 43+147*a+168*a^2+64*a^3+3*b+24*b^2+64*b^3-c^3=0 -> [6]
[3+8*a,5+8*b,0+2*c]: unknown 19+27*a+72*a^2+64*a^3+75*b+120*b^2+64*b^3-c^3=0 -> [7]
expanding queue[4]^2: 3*a + 12*a^2 + 16*a^3 + 2*b^3 - 3*c - 12*c^2 - 16*c^3 = 0 meter=[2,1,2] *8
[1+8*a,0+2*b,1+8*c]: unknown 3*a+24*a^2+64*a^3+b^3-3*c-24*c^2-64*c^3=0 -> [8]
[5+8*a,0+2*b,5+8*c]: unknown 75*a+120*a^2+64*a^3+b^3-75*c-120*c^2-64*c^3=0 -> [9]
expanding queue[5]^2: 27*a + 36*a^2 + 16*a^3 + 2*b^3 - 27*c - 36*c^2 - 16*c^3 = 0 meter=[2,1,2] *8
[3+8*a,0+2*b,3+8*c]: unknown 27*a+72*a^2+64*a^3+b^3-27*c-72*c^2-64*c^3=0 -> [10]
[7+8*a,0+2*b,7+8*c]: unknown 147*a+168*a^2+64*a^3+b^3-147*c-168*c^2-64*c^3=0 -> [11]
----------------
expanding queue[6]^3: 43 + 147*a + 168*a^2 + 64*a^3 + 3*b + 24*b^2 + 64*b^3 - c^3 = 0 meter=[2,2,2] *16
[15+16*a,1+16*b,0+4*c]: unknown 211+675*a+720*a^2+256*a^3+3*b+48*b^2+256*b^3-4*c^3=0 -> [12]
[7+16*a,9+16*b,0+4*c]: unknown 67+147*a+336*a^2+256*a^3+243*b+432*b^2+256*b^3-4*c^3=0 -> [13]
[7+16*a,1+16*b,2+4*c]: unknown 21+147*a+336*a^2+256*a^3+3*b+48*b^2+256*b^3-3*c-6*c^2-4*c^3=0 -> [14]
[15+16*a,9+16*b,2+4*c]: unknown 256+675*a+720*a^2+256*a^3+243*b+432*b^2+256*b^3-3*c-6*c^2-4*c^3=0 -> [15]
expanding queue[7]^3: 19 + 27*a + 72*a^2 + 64*a^3 + 75*b + 120*b^2 + 64*b^3 - c^3 = 0 meter=[2,2,2] *16
[11+16*a,5+16*b,0+4*c]: unknown 91+363*a+528*a^2+256*a^3+75*b+240*b^2+256*b^3-4*c^3=0 -> [16]
[3+16*a,13+16*b,0+4*c]: unknown 139+27*a+144*a^2+256*a^3+507*b+624*b^2+256*b^3-4*c^3=0 -> [17]
[3+16*a,5+16*b,2+4*c]: unknown 9+27*a+144*a^2+256*a^3+75*b+240*b^2+256*b^3-3*c-6*c^2-4*c^3=0 -> [18]
[11+16*a,13+16*b,2+4*c]: unknown 220+363*a+528*a^2+256*a^3+507*b+624*b^2+256*b^3-3*c-6*c^2-4*c^3=0 -> [19]
expanding queue[8]^4: 3*a + 24*a^2 + 64*a^3 + b^3 - 3*c - 24*c^2 - 64*c^3 = 0 meter=[2,2,2] *16
[1+16*a,0+4*b,1+16*c]: unknown 3*a+48*a^2+256*a^3+4*b^3-3*c-48*c^2-256*c^3=0 -> [20]
[9+16*a,2+4*b,1+16*c]: unknown 46+243*a+432*a^2+256*a^3+3*b+6*b^2+4*b^3-3*c-48*c^2-256*c^3=0 -> [21]
[9+16*a,0+4*b,9+16*c]: unknown 243*a+432*a^2+256*a^3+4*b^3-243*c-432*c^2-256*c^3=0 -> [22]
[1+16*a,2+4*b,9+16*c]: unknown -45+3*a+48*a^2+256*a^3+3*b+6*b^2+4*b^3-243*c-432*c^2-256*c^3=0 -> [23]
expanding queue[9]^4: 75*a + 120*a^2 + 64*a^3 + b^3 - 75*c - 120*c^2 - 64*c^3 = 0 meter=[2,2,2] *16
[5+16*a,0+4*b,5+16*c]: unknown 75*a+240*a^2+256*a^3+4*b^3-75*c-240*c^2-256*c^3=0 -> [24]
[13+16*a,2+4*b,5+16*c]: unknown 130+507*a+624*a^2+256*a^3+3*b+6*b^2+4*b^3-75*c-240*c^2-256*c^3=0 -> [25]
[13+16*a,0+4*b,13+16*c]: unknown 507*a+624*a^2+256*a^3+4*b^3-507*c-624*c^2-256*c^3=0 -> [26]
[5+16*a,2+4*b,13+16*c]: unknown -129+75*a+240*a^2+256*a^3+3*b+6*b^2+4*b^3-507*c-624*c^2-256*c^3=0 -> [27]
expanding queue[10]^5: 27*a + 72*a^2 + 64*a^3 + b^3 - 27*c - 72*c^2 - 64*c^3 = 0 meter=[2,2,2] *16
[3+16*a,0+4*b,3+16*c]: unknown 27*a+144*a^2+256*a^3+4*b^3-27*c-144*c^2-256*c^3=0 -> [28]
[11+16*a,2+4*b,3+16*c]: unknown 82+363*a+528*a^2+256*a^3+3*b+6*b^2+4*b^3-27*c-144*c^2-256*c^3=0 -> [29]
[11+16*a,0+4*b,11+16*c]: unknown 363*a+528*a^2+256*a^3+4*b^3-363*c-528*c^2-256*c^3=0 -> [30]
[3+16*a,2+4*b,11+16*c]: unknown -81+27*a+144*a^2+256*a^3+3*b+6*b^2+4*b^3-363*c-528*c^2-256*c^3=0 -> [31]
expanding queue[11]^5: 147*a + 168*a^2 + 64*a^3 + b^3 - 147*c - 168*c^2 - 64*c^3 = 0 meter=[2,2,2] *16
[7+16*a,0+4*b,7+16*c]: unknown 147*a+336*a^2+256*a^3+4*b^3-147*c-336*c^2-256*c^3=0 -> [32]
[15+16*a,2+4*b,7+16*c]: unknown 190+675*a+720*a^2+256*a^3+3*b+6*b^2+4*b^3-147*c-336*c^2-256*c^3=0 -> [33]
[15+16*a,0+4*b,15+16*c]: unknown 675*a+720*a^2+256*a^3+4*b^3-675*c-720*c^2-256*c^3=0 -> [34]
[7+16*a,2+4*b,15+16*c]: unknown -189+147*a+336*a^2+256*a^3+3*b+6*b^2+4*b^3-675*c-720*c^2-256*c^3=0 -> [35]
----------------
expanding queue[12]^6: 211 + 675*a + 720*a^2 + 256*a^3 + 3*b + 48*b^2 + 256*b^3 - 4*c^3 = 0 meter=[2,2,1] *32
[31+32*a,1+32*b,0+4*c]: unknown 931+2883*a+2976*a^2+1024*a^3+3*b+96*b^2+1024*b^3-2*c^3=0 -> [36]
[15+32*a,17+32*b,0+4*c]: unknown 259+675*a+1440*a^2+1024*a^3+867*b+1632*b^2+1024*b^3-2*c^3=0 -> [37]
expanding queue[13]^6: 67 + 147*a + 336*a^2 + 256*a^3 + 243*b + 432*b^2 + 256*b^3 - 4*c^3 = 0 meter=[2,2,1] *32
[23+32*a,9+32*b,0+4*c]: unknown 403+1587*a+2208*a^2+1024*a^3+243*b+864*b^2+1024*b^3-2*c^3=0 -> [38]
[7+32*a,25+32*b,0+4*c]: unknown 499+147*a+672*a^2+1024*a^3+1875*b+2400*b^2+1024*b^3-2*c^3=0 -> [39]
expanding queue[14]^6: 21 + 147*a + 336*a^2 + 256*a^3 + 3*b + 48*b^2 + 256*b^3 - 3*c - 6*c^2 - 4*c^3 = 0 meter=[2,2,2] *32
[23+32*a,1+32*b,2+8*c]: unknown 380+1587*a+2208*a^2+1024*a^3+3*b+96*b^2+1024*b^3-3*c-12*c^2-16*c^3=0 -> [40]
[7+32*a,17+32*b,2+8*c]: unknown 164+147*a+672*a^2+1024*a^3+867*b+1632*b^2+1024*b^3-3*c-12*c^2-16*c^3=0 -> [41]
[7+32*a,1+32*b,6+8*c]: unknown 4+147*a+672*a^2+1024*a^3+3*b+96*b^2+1024*b^3-27*c-36*c^2-16*c^3=0 -> [42]
[23+32*a,17+32*b,6+8*c]: unknown 527+1587*a+2208*a^2+1024*a^3+867*b+1632*b^2+1024*b^3-27*c-36*c^2-16*c^3=0 -> [43]
expanding queue[15]^6: 256 + 675*a + 720*a^2 + 256*a^3 + 243*b + 432*b^2 + 256*b^3 - 3*c - 6*c^2 - 4*c^3 = 0 meter=[2,2,2] *32
[15+32*a,9+32*b,2+8*c]: unknown 128+675*a+1440*a^2+1024*a^3+243*b+864*b^2+1024*b^3-3*c-12*c^2-16*c^3=0 -> [44]
[31+32*a,25+32*b,2+8*c]: unknown 1419+2883*a+2976*a^2+1024*a^3+1875*b+2400*b^2+1024*b^3-3*c-12*c^2-16*c^3=0 -> [45]
[31+32*a,9+32*b,6+8*c]: unknown 947+2883*a+2976*a^2+1024*a^3+243*b+864*b^2+1024*b^3-27*c-36*c^2-16*c^3=0 -> [46]
[15+32*a,25+32*b,6+8*c]: unknown 587+675*a+1440*a^2+1024*a^3+1875*b+2400*b^2+1024*b^3-27*c-36*c^2-16*c^3=0 -> [47]
expanding queue[16]^7: 91 + 363*a + 528*a^2 + 256*a^3 + 75*b + 240*b^2 + 256*b^3 - 4*c^3 = 0 meter=[2,2,1] *32
[27+32*a,5+32*b,0+4*c]: unknown 619+2187*a+2592*a^2+1024*a^3+75*b+480*b^2+1024*b^3-2*c^3=0 -> [48]
[11+32*a,21+32*b,0+4*c]: unknown 331+363*a+1056*a^2+1024*a^3+1323*b+2016*b^2+1024*b^3-2*c^3=0 -> [49]
expanding queue[17]^7: 139 + 27*a + 144*a^2 + 256*a^3 + 507*b + 624*b^2 + 256*b^3 - 4*c^3 = 0 meter=[2,2,1] *32
[19+32*a,13+32*b,0+4*c]: unknown 283+1083*a+1824*a^2+1024*a^3+507*b+1248*b^2+1024*b^3-2*c^3=0 -> [50]
[3+32*a,29+32*b,0+4*c]: unknown 763+27*a+288*a^2+1024*a^3+2523*b+2784*b^2+1024*b^3-2*c^3=0 -> [51]
expanding queue[18]^7: 9 + 27*a + 144*a^2 + 256*a^3 + 75*b + 240*b^2 + 256*b^3 - 3*c - 6*c^2 - 4*c^3 = 0 meter=[2,2,2] *32
[19+32*a,5+32*b,2+8*c]: unknown 218+1083*a+1824*a^2+1024*a^3+75*b+480*b^2+1024*b^3-3*c-12*c^2-16*c^3=0 -> [52]
[3+32*a,21+32*b,2+8*c]: unknown 290+27*a+288*a^2+1024*a^3+1323*b+2016*b^2+1024*b^3-3*c-12*c^2-16*c^3=0 -> [53]
[3+32*a,5+32*b,6+8*c]: unknown -2+27*a+288*a^2+1024*a^3+75*b+480*b^2+1024*b^3-27*c-36*c^2-16*c^3=0 -> [54]
[19+32*a,21+32*b,6+8*c]: unknown 497+1083*a+1824*a^2+1024*a^3+1323*b+2016*b^2+1024*b^3-27*c-36*c^2-16*c^3=0 -> [55]
expanding queue[19]^7: 220 + 363*a + 528*a^2 + 256*a^3 + 507*b + 624*b^2 + 256*b^3 - 3*c - 6*c^2 - 4*c^3 = 0 meter=[2,2,2] *32
[11+32*a,13+32*b,2+8*c]: unknown 110+363*a+1056*a^2+1024*a^3+507*b+1248*b^2+1024*b^3-3*c-12*c^2-16*c^3=0 -> [56]
[27+32*a,29+32*b,2+8*c]: unknown 1377+2187*a+2592*a^2+1024*a^3+2523*b+2784*b^2+1024*b^3-3*c-12*c^2-16*c^3=0 -> [57]
[27+32*a,13+32*b,6+8*c]: unknown 677+2187*a+2592*a^2+1024*a^3+507*b+1248*b^2+1024*b^3-27*c-36*c^2-16*c^3=0 -> [58]
[11+32*a,29+32*b,6+8*c]: unknown 797+363*a+1056*a^2+1024*a^3+2523*b+2784*b^2+1024*b^3-27*c-36*c^2-16*c^3=0 -> [59]
expanding queue[20]^8: 3*a + 48*a^2 + 256*a^3 + 4*b^3 - 3*c - 48*c^2 - 256*c^3 = 0 meter=[2,1,2] *32
[1+32*a,0+4*b,1+32*c]: unknown 3*a+96*a^2+1024*a^3+2*b^3-3*c-96*c^2-1024*c^3=0 -> [60]
[17+32*a,0+4*b,17+32*c]: unknown 867*a+1632*a^2+1024*a^3+2*b^3-867*c-1632*c^2-1024*c^3=0 -> [61]
expanding queue[21]^8: 46 + 243*a + 432*a^2 + 256*a^3 + 3*b + 6*b^2 + 4*b^3 - 3*c - 48*c^2 - 256*c^3 = 0 meter=[2,2,2] *32
[9+32*a,2+8*b,1+32*c]: unknown 23+243*a+864*a^2+1024*a^3+3*b+12*b^2+16*b^3-3*c-96*c^2-1024*c^3=0 -> [62]
[25+32*a,6+8*b,1+32*c]: unknown 495+1875*a+2400*a^2+1024*a^3+27*b+36*b^2+16*b^3-3*c-96*c^2-1024*c^3=0 -> [63]
[25+32*a,2+8*b,17+32*c]: unknown 335+1875*a+2400*a^2+1024*a^3+3*b+12*b^2+16*b^3-867*c-1632*c^2-1024*c^3=0 -> [64]
[9+32*a,6+8*b,17+32*c]: unknown -124+243*a+864*a^2+1024*a^3+27*b+36*b^2+16*b^3-867*c-1632*c^2-1024*c^3=0 -> [65]
expanding queue[22]^8: 243*a + 432*a^2 + 256*a^3 + 4*b^3 - 243*c - 432*c^2 - 256*c^3 = 0 meter=[2,1,2] *32
[9+32*a,0+4*b,9+32*c]: unknown 243*a+864*a^2+1024*a^3+2*b^3-243*c-864*c^2-1024*c^3=0 -> [66]
[25+32*a,0+4*b,25+32*c]: unknown 1875*a+2400*a^2+1024*a^3+2*b^3-1875*c-2400*c^2-1024*c^3=0 -> [67]
expanding queue[23]^8:  - 45 + 3*a + 48*a^2 + 256*a^3 + 3*b + 6*b^2 + 4*b^3 - 243*c - 432*c^2 - 256*c^3 = 0 meter=[2,2,2] *32
[17+32*a,2+8*b,9+32*c]: unknown 131+867*a+1632*a^2+1024*a^3+3*b+12*b^2+16*b^3-243*c-864*c^2-1024*c^3=0 -> [68]
[1+32*a,6+8*b,9+32*c]: unknown -16+3*a+96*a^2+1024*a^3+27*b+36*b^2+16*b^3-243*c-864*c^2-1024*c^3=0 -> [69]
[1+32*a,2+8*b,25+32*c]: unknown -488+3*a+96*a^2+1024*a^3+3*b+12*b^2+16*b^3-1875*c-2400*c^2-1024*c^3=0 -> [70]
[17+32*a,6+8*b,25+32*c]: unknown -328+867*a+1632*a^2+1024*a^3+27*b+36*b^2+16*b^3-1875*c-2400*c^2-1024*c^3=0 -> [71]
expanding queue[24]^9: 75*a + 240*a^2 + 256*a^3 + 4*b^3 - 75*c - 240*c^2 - 256*c^3 = 0 meter=[2,1,2] *32
[5+32*a,0+4*b,5+32*c]: unknown 75*a+480*a^2+1024*a^3+2*b^3-75*c-480*c^2-1024*c^3=0 -> [72]
[21+32*a,0+4*b,21+32*c]: unknown 1323*a+2016*a^2+1024*a^3+2*b^3-1323*c-2016*c^2-1024*c^3=0 -> [73]
expanding queue[25]^9: 130 + 507*a + 624*a^2 + 256*a^3 + 3*b + 6*b^2 + 4*b^3 - 75*c - 240*c^2 - 256*c^3 = 0 meter=[2,2,2] *32
[13+32*a,2+8*b,5+32*c]: unknown 65+507*a+1248*a^2+1024*a^3+3*b+12*b^2+16*b^3-75*c-480*c^2-1024*c^3=0 -> [74]
[29+32*a,6+8*b,5+32*c]: unknown 765+2523*a+2784*a^2+1024*a^3+27*b+36*b^2+16*b^3-75*c-480*c^2-1024*c^3=0 -> [75]
[29+32*a,2+8*b,21+32*c]: unknown 473+2523*a+2784*a^2+1024*a^3+3*b+12*b^2+16*b^3-1323*c-2016*c^2-1024*c^3=0 -> [76]
[13+32*a,6+8*b,21+32*c]: unknown -214+507*a+1248*a^2+1024*a^3+27*b+36*b^2+16*b^3-1323*c-2016*c^2-1024*c^3=0 -> [77]
expanding queue[26]^9: 507*a + 624*a^2 + 256*a^3 + 4*b^3 - 507*c - 624*c^2 - 256*c^3 = 0 meter=[2,1,2] *32
[13+32*a,0+4*b,13+32*c]: unknown 507*a+1248*a^2+1024*a^3+2*b^3-507*c-1248*c^2-1024*c^3=0 -> [78]
[29+32*a,0+4*b,29+32*c]: unknown 2523*a+2784*a^2+1024*a^3+2*b^3-2523*c-2784*c^2-1024*c^3=0 -> [79]
expanding queue[27]^9:  - 129 + 75*a + 240*a^2 + 256*a^3 + 3*b + 6*b^2 + 4*b^3 - 507*c - 624*c^2 - 256*c^3 = 0 meter=[2,2,2] *32
[21+32*a,2+8*b,13+32*c]: unknown 221+1323*a+2016*a^2+1024*a^3+3*b+12*b^2+16*b^3-507*c-1248*c^2-1024*c^3=0 -> [80]
[5+32*a,6+8*b,13+32*c]: unknown -58+75*a+480*a^2+1024*a^3+27*b+36*b^2+16*b^3-507*c-1248*c^2-1024*c^3=0 -> [81]
[5+32*a,2+8*b,29+32*c]: unknown -758+75*a+480*a^2+1024*a^3+3*b+12*b^2+16*b^3-2523*c-2784*c^2-1024*c^3=0 -> [82]
[21+32*a,6+8*b,29+32*c]: unknown -466+1323*a+2016*a^2+1024*a^3+27*b+36*b^2+16*b^3-2523*c-2784*c^2-1024*c^3=0 -> [83]
expanding queue[28]^10: 27*a + 144*a^2 + 256*a^3 + 4*b^3 - 27*c - 144*c^2 - 256*c^3 = 0 meter=[2,1,2] *32
[3+32*a,0+4*b,3+32*c]: unknown 27*a+288*a^2+1024*a^3+2*b^3-27*c-288*c^2-1024*c^3=0 -> [84]
[19+32*a,0+4*b,19+32*c]: unknown 1083*a+1824*a^2+1024*a^3+2*b^3-1083*c-1824*c^2-1024*c^3=0 -> [85]
expanding queue[29]^10: 82 + 363*a + 528*a^2 + 256*a^3 + 3*b + 6*b^2 + 4*b^3 - 27*c - 144*c^2 - 256*c^3 = 0 meter=[2,2,2] *32
[11+32*a,2+8*b,3+32*c]: unknown 41+363*a+1056*a^2+1024*a^3+3*b+12*b^2+16*b^3-27*c-288*c^2-1024*c^3=0 -> [86]
[27+32*a,6+8*b,3+32*c]: unknown 621+2187*a+2592*a^2+1024*a^3+27*b+36*b^2+16*b^3-27*c-288*c^2-1024*c^3=0 -> [87]
[27+32*a,2+8*b,19+32*c]: unknown 401+2187*a+2592*a^2+1024*a^3+3*b+12*b^2+16*b^3-1083*c-1824*c^2-1024*c^3=0 -> [88]
[11+32*a,6+8*b,19+32*c]: unknown -166+363*a+1056*a^2+1024*a^3+27*b+36*b^2+16*b^3-1083*c-1824*c^2-1024*c^3=0 -> [89]
expanding queue[30]^10: 363*a + 528*a^2 + 256*a^3 + 4*b^3 - 363*c - 528*c^2 - 256*c^3 = 0 meter=[2,1,2] *32
[11+32*a,0+4*b,11+32*c]: unknown 363*a+1056*a^2+1024*a^3+2*b^3-363*c-1056*c^2-1024*c^3=0 -> [90]
[27+32*a,0+4*b,27+32*c]: unknown 2187*a+2592*a^2+1024*a^3+2*b^3-2187*c-2592*c^2-1024*c^3=0 -> [91]
expanding queue[31]^10:  - 81 + 27*a + 144*a^2 + 256*a^3 + 3*b + 6*b^2 + 4*b^3 - 363*c - 528*c^2 - 256*c^3 = 0 meter=[2,2,2] *32
[19+32*a,2+8*b,11+32*c]: unknown 173+1083*a+1824*a^2+1024*a^3+3*b+12*b^2+16*b^3-363*c-1056*c^2-1024*c^3=0 -> [92]
[3+32*a,6+8*b,11+32*c]: unknown -34+27*a+288*a^2+1024*a^3+27*b+36*b^2+16*b^3-363*c-1056*c^2-1024*c^3=0 -> [93]
[3+32*a,2+8*b,27+32*c]: unknown -614+27*a+288*a^2+1024*a^3+3*b+12*b^2+16*b^3-2187*c-2592*c^2-1024*c^3=0 -> [94]
[19+32*a,6+8*b,27+32*c]: unknown -394+1083*a+1824*a^2+1024*a^3+27*b+36*b^2+16*b^3-2187*c-2592*c^2-1024*c^3=0 -> [95]
expanding queue[32]^11: 147*a + 336*a^2 + 256*a^3 + 4*b^3 - 147*c - 336*c^2 - 256*c^3 = 0 meter=[2,1,2] *32
[7+32*a,0+4*b,7+32*c]: unknown 147*a+672*a^2+1024*a^3+2*b^3-147*c-672*c^2-1024*c^3=0 -> [96]
[23+32*a,0+4*b,23+32*c]: unknown 1587*a+2208*a^2+1024*a^3+2*b^3-1587*c-2208*c^2-1024*c^3=0 -> [97]
expanding queue[33]^11: 190 + 675*a + 720*a^2 + 256*a^3 + 3*b + 6*b^2 + 4*b^3 - 147*c - 336*c^2 - 256*c^3 = 0 meter=[2,2,2] *32
[15+32*a,2+8*b,7+32*c]: unknown 95+675*a+1440*a^2+1024*a^3+3*b+12*b^2+16*b^3-147*c-672*c^2-1024*c^3=0 -> [98]
[31+32*a,6+8*b,7+32*c]: unknown 927+2883*a+2976*a^2+1024*a^3+27*b+36*b^2+16*b^3-147*c-672*c^2-1024*c^3=0 -> [99]
[31+32*a,2+8*b,23+32*c]: unknown 551+2883*a+2976*a^2+1024*a^3+3*b+12*b^2+16*b^3-1587*c-2208*c^2-1024*c^3=0 -> [100]
[15+32*a,6+8*b,23+32*c]: unknown -268+675*a+1440*a^2+1024*a^3+27*b+36*b^2+16*b^3-1587*c-2208*c^2-1024*c^3=0 -> [101]
expanding queue[34]^11: 675*a + 720*a^2 + 256*a^3 + 4*b^3 - 675*c - 720*c^2 - 256*c^3 = 0 meter=[2,1,2] *32
[15+32*a,0+4*b,15+32*c]: unknown 675*a+1440*a^2+1024*a^3+2*b^3-675*c-1440*c^2-1024*c^3=0 -> [102]
[31+32*a,0+4*b,31+32*c]: unknown 2883*a+2976*a^2+1024*a^3+2*b^3-2883*c-2976*c^2-1024*c^3=0 -> [103]
expanding queue[35]^11:  - 189 + 147*a + 336*a^2 + 256*a^3 + 3*b + 6*b^2 + 4*b^3 - 675*c - 720*c^2 - 256*c^3 = 0 meter=[2,2,2] *32
[23+32*a,2+8*b,15+32*c]: unknown 275+1587*a+2208*a^2+1024*a^3+3*b+12*b^2+16*b^3-675*c-1440*c^2-1024*c^3=0 -> [104]
[7+32*a,6+8*b,15+32*c]: unknown -88+147*a+672*a^2+1024*a^3+27*b+36*b^2+16*b^3-675*c-1440*c^2-1024*c^3=0 -> [105]
[7+32*a,2+8*b,31+32*c]: unknown -920+147*a+672*a^2+1024*a^3+3*b+12*b^2+16*b^3-2883*c-2976*c^2-1024*c^3=0 -> [106]
[23+32*a,6+8*b,31+32*c]: unknown -544+1587*a+2208*a^2+1024*a^3+27*b+36*b^2+16*b^3-2883*c-2976*c^2-1024*c^3=0 -> [107]
Maximum level 4 reached, queue size = 108
