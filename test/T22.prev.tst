TranspositionSet={[1,0,2]}
ExponentGCDs=[3,3,3]
Expanding for base=2, reasons+features=base,transpose,same,similiar norm,igtriv
Refined variables=a,b,c
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a^3+b^3-c^3
[0+2a,0+2b,0+2c]:	same form as a^3+b^3-c^3
[1+2a,1+2b,0+2c]:	unknown -> [1] 1+3a+6a^2+4a^3+3b+6b^2+4b^3-4c^3
[1+2a,0+2b,1+2c]:	unknown -> [2] 3a+6a^2+4a^3+4b^3-3c-6c^2-4c^3
[0+2a,1+2b,1+2c]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,1]*4: 1+3a+6a^2+4a^3+3b+6b^2+4b^3-4c^3
[3+4a,1+4b,0+2c]:	unknown -> [3] 7+27a+36a^2+16a^3+3b+12b^2+16b^3-2c^3
[1+4a,3+4b,0+2c]:	transposed [3] by [1,0,2]
expanding queue[2]^0,meter=[2,1,2]*4: 3a+6a^2+4a^3+4b^3-3c-6c^2-4c^3
[1+4a,0+2b,1+4c]:	unknown -> [4] 3a+12a^2+16a^3+2b^3-3c-12c^2-16c^3
[3+4a,0+2b,3+4c]:	unknown -> [5] 27a+36a^2+16a^3+2b^3-27c-36c^2-16c^3
----------------
expanding queue[3]^1,meter=[2,2,1]*8: 7+27a+36a^2+16a^3+3b+12b^2+16b^3-2c^3
[7+8a,1+8b,0+2c]:	unknown -> [6] 43+147a+168a^2+64a^3+3b+24b^2+64b^3-c^3
[3+8a,5+8b,0+2c]:	unknown -> [7] 19+27a+72a^2+64a^3+75b+120b^2+64b^3-c^3
expanding queue[4]^2,meter=[2,1,2]*8: 3a+12a^2+16a^3+2b^3-3c-12c^2-16c^3
[1+8a,0+2b,1+8c]:	unknown -> [8] 3a+24a^2+64a^3+b^3-3c-24c^2-64c^3
[5+8a,0+2b,5+8c]:	unknown -> [9] 75a+120a^2+64a^3+b^3-75c-120c^2-64c^3
expanding queue[5]^2,meter=[2,1,2]*8: 27a+36a^2+16a^3+2b^3-27c-36c^2-16c^3
[3+8a,0+2b,3+8c]:	unknown -> [10] 27a+72a^2+64a^3+b^3-27c-72c^2-64c^3
[7+8a,0+2b,7+8c]:	unknown -> [11] 147a+168a^2+64a^3+b^3-147c-168c^2-64c^3
----------------
expanding queue[6]^3,meter=[2,2,2]*16: 43+147a+168a^2+64a^3+3b+24b^2+64b^3-c^3
[15+16a,1+16b,0+4c]:	unknown -> [12] 211+675a+720a^2+256a^3+3b+48b^2+256b^3-4c^3
[7+16a,9+16b,0+4c]:	unknown -> [13] 67+147a+336a^2+256a^3+243b+432b^2+256b^3-4c^3
[7+16a,1+16b,2+4c]:	unknown -> [14] 21+147a+336a^2+256a^3+3b+48b^2+256b^3-3c-6c^2-4c^3
[15+16a,9+16b,2+4c]:	unknown -> [15] 256+675a+720a^2+256a^3+243b+432b^2+256b^3-3c-6c^2-4c^3
expanding queue[7]^3,meter=[2,2,2]*16: 19+27a+72a^2+64a^3+75b+120b^2+64b^3-c^3
[11+16a,5+16b,0+4c]:	unknown -> [16] 91+363a+528a^2+256a^3+75b+240b^2+256b^3-4c^3
[3+16a,13+16b,0+4c]:	unknown -> [17] 139+27a+144a^2+256a^3+507b+624b^2+256b^3-4c^3
[3+16a,5+16b,2+4c]:	unknown -> [18] 9+27a+144a^2+256a^3+75b+240b^2+256b^3-3c-6c^2-4c^3
[11+16a,13+16b,2+4c]:	unknown -> [19] 220+363a+528a^2+256a^3+507b+624b^2+256b^3-3c-6c^2-4c^3
expanding queue[8]^4,meter=[2,2,2]*16: 3a+24a^2+64a^3+b^3-3c-24c^2-64c^3
[1+16a,0+4b,1+16c]:	unknown -> [20] 3a+48a^2+256a^3+4b^3-3c-48c^2-256c^3
[9+16a,2+4b,1+16c]:	unknown -> [21] 46+243a+432a^2+256a^3+3b+6b^2+4b^3-3c-48c^2-256c^3
[9+16a,0+4b,9+16c]:	unknown -> [22] 243a+432a^2+256a^3+4b^3-243c-432c^2-256c^3
[1+16a,2+4b,9+16c]:	unknown -> [23] -45+3a+48a^2+256a^3+3b+6b^2+4b^3-243c-432c^2-256c^3
expanding queue[9]^4,meter=[2,2,2]*16: 75a+120a^2+64a^3+b^3-75c-120c^2-64c^3
[5+16a,0+4b,5+16c]:	unknown -> [24] 75a+240a^2+256a^3+4b^3-75c-240c^2-256c^3
[13+16a,2+4b,5+16c]:	unknown -> [25] 130+507a+624a^2+256a^3+3b+6b^2+4b^3-75c-240c^2-256c^3
[13+16a,0+4b,13+16c]:	unknown -> [26] 507a+624a^2+256a^3+4b^3-507c-624c^2-256c^3
[5+16a,2+4b,13+16c]:	unknown -> [27] -129+75a+240a^2+256a^3+3b+6b^2+4b^3-507c-624c^2-256c^3
expanding queue[10]^5,meter=[2,2,2]*16: 27a+72a^2+64a^3+b^3-27c-72c^2-64c^3
[3+16a,0+4b,3+16c]:	unknown -> [28] 27a+144a^2+256a^3+4b^3-27c-144c^2-256c^3
[11+16a,2+4b,3+16c]:	unknown -> [29] 82+363a+528a^2+256a^3+3b+6b^2+4b^3-27c-144c^2-256c^3
[11+16a,0+4b,11+16c]:	unknown -> [30] 363a+528a^2+256a^3+4b^3-363c-528c^2-256c^3
[3+16a,2+4b,11+16c]:	unknown -> [31] -81+27a+144a^2+256a^3+3b+6b^2+4b^3-363c-528c^2-256c^3
expanding queue[11]^5,meter=[2,2,2]*16: 147a+168a^2+64a^3+b^3-147c-168c^2-64c^3
[7+16a,0+4b,7+16c]:	unknown -> [32] 147a+336a^2+256a^3+4b^3-147c-336c^2-256c^3
[15+16a,2+4b,7+16c]:	unknown -> [33] 190+675a+720a^2+256a^3+3b+6b^2+4b^3-147c-336c^2-256c^3
[15+16a,0+4b,15+16c]:	unknown -> [34] 675a+720a^2+256a^3+4b^3-675c-720c^2-256c^3
[7+16a,2+4b,15+16c]:	unknown -> [35] -189+147a+336a^2+256a^3+3b+6b^2+4b^3-675c-720c^2-256c^3
----------------
expanding queue[12]^6,meter=[2,2,1]*32: 211+675a+720a^2+256a^3+3b+48b^2+256b^3-4c^3
[31+32a,1+32b,0+4c]:	unknown -> [36] 931+2883a+2976a^2+1024a^3+3b+96b^2+1024b^3-2c^3
[15+32a,17+32b,0+4c]:	unknown -> [37] 259+675a+1440a^2+1024a^3+867b+1632b^2+1024b^3-2c^3
expanding queue[13]^6,meter=[2,2,1]*32: 67+147a+336a^2+256a^3+243b+432b^2+256b^3-4c^3
[23+32a,9+32b,0+4c]:	unknown -> [38] 403+1587a+2208a^2+1024a^3+243b+864b^2+1024b^3-2c^3
[7+32a,25+32b,0+4c]:	unknown -> [39] 499+147a+672a^2+1024a^3+1875b+2400b^2+1024b^3-2c^3
expanding queue[14]^6,meter=[2,2,2]*32: 21+147a+336a^2+256a^3+3b+48b^2+256b^3-3c-6c^2-4c^3
[23+32a,1+32b,2+8c]:	unknown -> [40] 380+1587a+2208a^2+1024a^3+3b+96b^2+1024b^3-3c-12c^2-16c^3
[7+32a,17+32b,2+8c]:	unknown -> [41] 164+147a+672a^2+1024a^3+867b+1632b^2+1024b^3-3c-12c^2-16c^3
[7+32a,1+32b,6+8c]:	unknown -> [42] 4+147a+672a^2+1024a^3+3b+96b^2+1024b^3-27c-36c^2-16c^3
[23+32a,17+32b,6+8c]:	unknown -> [43] 527+1587a+2208a^2+1024a^3+867b+1632b^2+1024b^3-27c-36c^2-16c^3
expanding queue[15]^6,meter=[2,2,2]*32: 256+675a+720a^2+256a^3+243b+432b^2+256b^3-3c-6c^2-4c^3
[15+32a,9+32b,2+8c]:	unknown -> [44] 128+675a+1440a^2+1024a^3+243b+864b^2+1024b^3-3c-12c^2-16c^3
[31+32a,25+32b,2+8c]:	unknown -> [45] 1419+2883a+2976a^2+1024a^3+1875b+2400b^2+1024b^3-3c-12c^2-16c^3
[31+32a,9+32b,6+8c]:	unknown -> [46] 947+2883a+2976a^2+1024a^3+243b+864b^2+1024b^3-27c-36c^2-16c^3
[15+32a,25+32b,6+8c]:	unknown -> [47] 587+675a+1440a^2+1024a^3+1875b+2400b^2+1024b^3-27c-36c^2-16c^3
expanding queue[16]^7,meter=[2,2,1]*32: 91+363a+528a^2+256a^3+75b+240b^2+256b^3-4c^3
[27+32a,5+32b,0+4c]:	unknown -> [48] 619+2187a+2592a^2+1024a^3+75b+480b^2+1024b^3-2c^3
[11+32a,21+32b,0+4c]:	unknown -> [49] 331+363a+1056a^2+1024a^3+1323b+2016b^2+1024b^3-2c^3
expanding queue[17]^7,meter=[2,2,1]*32: 139+27a+144a^2+256a^3+507b+624b^2+256b^3-4c^3
[19+32a,13+32b,0+4c]:	unknown -> [50] 283+1083a+1824a^2+1024a^3+507b+1248b^2+1024b^3-2c^3
[3+32a,29+32b,0+4c]:	unknown -> [51] 763+27a+288a^2+1024a^3+2523b+2784b^2+1024b^3-2c^3
expanding queue[18]^7,meter=[2,2,2]*32: 9+27a+144a^2+256a^3+75b+240b^2+256b^3-3c-6c^2-4c^3
[19+32a,5+32b,2+8c]:	unknown -> [52] 218+1083a+1824a^2+1024a^3+75b+480b^2+1024b^3-3c-12c^2-16c^3
[3+32a,21+32b,2+8c]:	unknown -> [53] 290+27a+288a^2+1024a^3+1323b+2016b^2+1024b^3-3c-12c^2-16c^3
[3+32a,5+32b,6+8c]:	unknown -> [54] -2+27a+288a^2+1024a^3+75b+480b^2+1024b^3-27c-36c^2-16c^3
[19+32a,21+32b,6+8c]:	unknown -> [55] 497+1083a+1824a^2+1024a^3+1323b+2016b^2+1024b^3-27c-36c^2-16c^3
expanding queue[19]^7,meter=[2,2,2]*32: 220+363a+528a^2+256a^3+507b+624b^2+256b^3-3c-6c^2-4c^3
[11+32a,13+32b,2+8c]:	unknown -> [56] 110+363a+1056a^2+1024a^3+507b+1248b^2+1024b^3-3c-12c^2-16c^3
[27+32a,29+32b,2+8c]:	unknown -> [57] 1377+2187a+2592a^2+1024a^3+2523b+2784b^2+1024b^3-3c-12c^2-16c^3
[27+32a,13+32b,6+8c]:	unknown -> [58] 677+2187a+2592a^2+1024a^3+507b+1248b^2+1024b^3-27c-36c^2-16c^3
[11+32a,29+32b,6+8c]:	unknown -> [59] 797+363a+1056a^2+1024a^3+2523b+2784b^2+1024b^3-27c-36c^2-16c^3
expanding queue[20]^8,meter=[2,1,2]*32: 3a+48a^2+256a^3+4b^3-3c-48c^2-256c^3
[1+32a,0+4b,1+32c]:	unknown -> [60] 3a+96a^2+1024a^3+2b^3-3c-96c^2-1024c^3
[17+32a,0+4b,17+32c]:	unknown -> [61] 867a+1632a^2+1024a^3+2b^3-867c-1632c^2-1024c^3
expanding queue[21]^8,meter=[2,2,2]*32: 46+243a+432a^2+256a^3+3b+6b^2+4b^3-3c-48c^2-256c^3
[9+32a,2+8b,1+32c]:	unknown -> [62] 23+243a+864a^2+1024a^3+3b+12b^2+16b^3-3c-96c^2-1024c^3
[25+32a,6+8b,1+32c]:	unknown -> [63] 495+1875a+2400a^2+1024a^3+27b+36b^2+16b^3-3c-96c^2-1024c^3
[25+32a,2+8b,17+32c]:	unknown -> [64] 335+1875a+2400a^2+1024a^3+3b+12b^2+16b^3-867c-1632c^2-1024c^3
[9+32a,6+8b,17+32c]:	unknown -> [65] -124+243a+864a^2+1024a^3+27b+36b^2+16b^3-867c-1632c^2-1024c^3
expanding queue[22]^8,meter=[2,1,2]*32: 243a+432a^2+256a^3+4b^3-243c-432c^2-256c^3
[9+32a,0+4b,9+32c]:	unknown -> [66] 243a+864a^2+1024a^3+2b^3-243c-864c^2-1024c^3
[25+32a,0+4b,25+32c]:	unknown -> [67] 1875a+2400a^2+1024a^3+2b^3-1875c-2400c^2-1024c^3
expanding queue[23]^8,meter=[2,2,2]*32: -45+3a+48a^2+256a^3+3b+6b^2+4b^3-243c-432c^2-256c^3
[17+32a,2+8b,9+32c]:	unknown -> [68] 131+867a+1632a^2+1024a^3+3b+12b^2+16b^3-243c-864c^2-1024c^3
[1+32a,6+8b,9+32c]:	unknown -> [69] -16+3a+96a^2+1024a^3+27b+36b^2+16b^3-243c-864c^2-1024c^3
[1+32a,2+8b,25+32c]:	unknown -> [70] -488+3a+96a^2+1024a^3+3b+12b^2+16b^3-1875c-2400c^2-1024c^3
[17+32a,6+8b,25+32c]:	unknown -> [71] -328+867a+1632a^2+1024a^3+27b+36b^2+16b^3-1875c-2400c^2-1024c^3
expanding queue[24]^9,meter=[2,1,2]*32: 75a+240a^2+256a^3+4b^3-75c-240c^2-256c^3
[5+32a,0+4b,5+32c]:	unknown -> [72] 75a+480a^2+1024a^3+2b^3-75c-480c^2-1024c^3
[21+32a,0+4b,21+32c]:	unknown -> [73] 1323a+2016a^2+1024a^3+2b^3-1323c-2016c^2-1024c^3
expanding queue[25]^9,meter=[2,2,2]*32: 130+507a+624a^2+256a^3+3b+6b^2+4b^3-75c-240c^2-256c^3
[13+32a,2+8b,5+32c]:	unknown -> [74] 65+507a+1248a^2+1024a^3+3b+12b^2+16b^3-75c-480c^2-1024c^3
[29+32a,6+8b,5+32c]:	unknown -> [75] 765+2523a+2784a^2+1024a^3+27b+36b^2+16b^3-75c-480c^2-1024c^3
[29+32a,2+8b,21+32c]:	unknown -> [76] 473+2523a+2784a^2+1024a^3+3b+12b^2+16b^3-1323c-2016c^2-1024c^3
[13+32a,6+8b,21+32c]:	unknown -> [77] -214+507a+1248a^2+1024a^3+27b+36b^2+16b^3-1323c-2016c^2-1024c^3
expanding queue[26]^9,meter=[2,1,2]*32: 507a+624a^2+256a^3+4b^3-507c-624c^2-256c^3
[13+32a,0+4b,13+32c]:	unknown -> [78] 507a+1248a^2+1024a^3+2b^3-507c-1248c^2-1024c^3
[29+32a,0+4b,29+32c]:	unknown -> [79] 2523a+2784a^2+1024a^3+2b^3-2523c-2784c^2-1024c^3
expanding queue[27]^9,meter=[2,2,2]*32: -129+75a+240a^2+256a^3+3b+6b^2+4b^3-507c-624c^2-256c^3
[21+32a,2+8b,13+32c]:	unknown -> [80] 221+1323a+2016a^2+1024a^3+3b+12b^2+16b^3-507c-1248c^2-1024c^3
[5+32a,6+8b,13+32c]:	unknown -> [81] -58+75a+480a^2+1024a^3+27b+36b^2+16b^3-507c-1248c^2-1024c^3
[5+32a,2+8b,29+32c]:	unknown -> [82] -758+75a+480a^2+1024a^3+3b+12b^2+16b^3-2523c-2784c^2-1024c^3
[21+32a,6+8b,29+32c]:	unknown -> [83] -466+1323a+2016a^2+1024a^3+27b+36b^2+16b^3-2523c-2784c^2-1024c^3
expanding queue[28]^10,meter=[2,1,2]*32: 27a+144a^2+256a^3+4b^3-27c-144c^2-256c^3
[3+32a,0+4b,3+32c]:	unknown -> [84] 27a+288a^2+1024a^3+2b^3-27c-288c^2-1024c^3
[19+32a,0+4b,19+32c]:	unknown -> [85] 1083a+1824a^2+1024a^3+2b^3-1083c-1824c^2-1024c^3
expanding queue[29]^10,meter=[2,2,2]*32: 82+363a+528a^2+256a^3+3b+6b^2+4b^3-27c-144c^2-256c^3
[11+32a,2+8b,3+32c]:	unknown -> [86] 41+363a+1056a^2+1024a^3+3b+12b^2+16b^3-27c-288c^2-1024c^3
[27+32a,6+8b,3+32c]:	unknown -> [87] 621+2187a+2592a^2+1024a^3+27b+36b^2+16b^3-27c-288c^2-1024c^3
[27+32a,2+8b,19+32c]:	unknown -> [88] 401+2187a+2592a^2+1024a^3+3b+12b^2+16b^3-1083c-1824c^2-1024c^3
[11+32a,6+8b,19+32c]:	unknown -> [89] -166+363a+1056a^2+1024a^3+27b+36b^2+16b^3-1083c-1824c^2-1024c^3
expanding queue[30]^10,meter=[2,1,2]*32: 363a+528a^2+256a^3+4b^3-363c-528c^2-256c^3
[11+32a,0+4b,11+32c]:	unknown -> [90] 363a+1056a^2+1024a^3+2b^3-363c-1056c^2-1024c^3
[27+32a,0+4b,27+32c]:	unknown -> [91] 2187a+2592a^2+1024a^3+2b^3-2187c-2592c^2-1024c^3
expanding queue[31]^10,meter=[2,2,2]*32: -81+27a+144a^2+256a^3+3b+6b^2+4b^3-363c-528c^2-256c^3
[19+32a,2+8b,11+32c]:	unknown -> [92] 173+1083a+1824a^2+1024a^3+3b+12b^2+16b^3-363c-1056c^2-1024c^3
[3+32a,6+8b,11+32c]:	unknown -> [93] -34+27a+288a^2+1024a^3+27b+36b^2+16b^3-363c-1056c^2-1024c^3
[3+32a,2+8b,27+32c]:	unknown -> [94] -614+27a+288a^2+1024a^3+3b+12b^2+16b^3-2187c-2592c^2-1024c^3
[19+32a,6+8b,27+32c]:	unknown -> [95] -394+1083a+1824a^2+1024a^3+27b+36b^2+16b^3-2187c-2592c^2-1024c^3
expanding queue[32]^11,meter=[2,1,2]*32: 147a+336a^2+256a^3+4b^3-147c-336c^2-256c^3
[7+32a,0+4b,7+32c]:	unknown -> [96] 147a+672a^2+1024a^3+2b^3-147c-672c^2-1024c^3
[23+32a,0+4b,23+32c]:	unknown -> [97] 1587a+2208a^2+1024a^3+2b^3-1587c-2208c^2-1024c^3
expanding queue[33]^11,meter=[2,2,2]*32: 190+675a+720a^2+256a^3+3b+6b^2+4b^3-147c-336c^2-256c^3
[15+32a,2+8b,7+32c]:	unknown -> [98] 95+675a+1440a^2+1024a^3+3b+12b^2+16b^3-147c-672c^2-1024c^3
[31+32a,6+8b,7+32c]:	unknown -> [99] 927+2883a+2976a^2+1024a^3+27b+36b^2+16b^3-147c-672c^2-1024c^3
[31+32a,2+8b,23+32c]:	unknown -> [100] 551+2883a+2976a^2+1024a^3+3b+12b^2+16b^3-1587c-2208c^2-1024c^3
[15+32a,6+8b,23+32c]:	unknown -> [101] -268+675a+1440a^2+1024a^3+27b+36b^2+16b^3-1587c-2208c^2-1024c^3
expanding queue[34]^11,meter=[2,1,2]*32: 675a+720a^2+256a^3+4b^3-675c-720c^2-256c^3
[15+32a,0+4b,15+32c]:	unknown -> [102] 675a+1440a^2+1024a^3+2b^3-675c-1440c^2-1024c^3
[31+32a,0+4b,31+32c]:	unknown -> [103] 2883a+2976a^2+1024a^3+2b^3-2883c-2976c^2-1024c^3
expanding queue[35]^11,meter=[2,2,2]*32: -189+147a+336a^2+256a^3+3b+6b^2+4b^3-675c-720c^2-256c^3
[23+32a,2+8b,15+32c]:	unknown -> [104] 275+1587a+2208a^2+1024a^3+3b+12b^2+16b^3-675c-1440c^2-1024c^3
[7+32a,6+8b,15+32c]:	unknown -> [105] -88+147a+672a^2+1024a^3+27b+36b^2+16b^3-675c-1440c^2-1024c^3
[7+32a,2+8b,31+32c]:	unknown -> [106] -920+147a+672a^2+1024a^3+3b+12b^2+16b^3-2883c-2976c^2-1024c^3
[23+32a,6+8b,31+32c]:	unknown -> [107] -544+1587a+2208a^2+1024a^3+27b+36b^2+16b^3-2883c-2976c^2-1024c^3
Maximum level 4 reached at [108]: a^3+b^3-c^3
