TranspositionSet={[1,0,2]}
isHomogeneous
Expanding for base=2, level=3, reasons+features=base,transpose,primitive,same,similiar invall,norm
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] [0,0,0] a³+b³-c³
-> solution [0,0,0],trivial(3) [1,0,1],trivial(3) [0,1,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: a³+b³-c³
[0+2a,0+2b,0+2c]:	non-primitive
-> solution [0,0,0],trivial(3) [2,0,2],trivial(3) [0,2,2],trivial(3)
[1+2a,1+2b,0+2c]:	unknown -> [1] [1,1,0] 3a+6a²+4a³+3b+6b²+4b³-4c³+1
[1+2a,0+2b,1+2c]:	unknown -> [2] [1,0,1] 3a+6a²+4a³+4b³-3c-6c²-4c³
-> solution [1,0,1],trivial(3) [3,0,3],trivial(3)
[0+2a,1+2b,1+2c]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]: 3a+6a²+4a³+3b+6b²+4b³-4c³+1
[3+4a,1+4b,0+4c]:	unknown -> [3] [1,0,0] 27a+36a²+16a³+3b+12b²+16b³-16c³+7
[1+4a,3+4b,0+4c]:	transposed [3] by [1,0,2]
[3+4a,1+4b,2+4c]:	unknown -> [4] [1,0,1] 27a+36a²+16a³+3b+12b²+16b³-12c-24c²-16c³+5
[1+4a,3+4b,2+4c]:	transposed [4] by [1,0,2]
expanding queue[2]^0,meter=[2,2,2]: 3a+6a²+4a³+4b³-3c-6c²-4c³
[1+4a,0+4b,1+4c]:	unknown -> [5] [0,0,0] 3a+12a²+16a³+16b³-3c-12c²-16c³
-> solution [1,0,1],trivial(3) [5,0,5],trivial(3)
[1+4a,2+4b,1+4c]:	unknown -> [6] [0,1,0] 3a+12a²+16a³+12b+24b²+16b³-3c-12c²-16c³+2
[3+4a,0+4b,3+4c]:	unknown -> [7] [1,0,1] 27a+36a²+16a³+16b³-27c-36c²-16c³
-> solution [3,0,3],trivial(3) [7,0,7],trivial(3)
[3+4a,2+4b,3+4c]:	unknown -> [8] [1,1,1] 27a+36a²+16a³+12b+24b²+16b³-27c-36c²-16c³+2
----------------
expanding queue[3]^1,meter=[2,2,2]: 27a+36a²+16a³+3b+12b²+16b³-16c³+7
[7+8a,1+8b,0+8c]:	unknown -> [9] [1,0,0] 147a+168a²+64a³+3b+24b²+64b³-64c³+43
[3+8a,5+8b,0+8c]:	unknown -> [10] [0,1,0] 27a+72a²+64a³+75b+120b²+64b³-64c³+19
[7+8a,1+8b,4+8c]:	unknown -> [11] [1,0,1] 147a+168a²+64a³+3b+24b²+64b³-48c-96c²-64c³+35
[3+8a,5+8b,4+8c]:	unknown -> [12] [0,1,1] 27a+72a²+64a³+75b+120b²+64b³-48c-96c²-64c³+11
expanding queue[4]^1,meter=[2,2,2]: 27a+36a²+16a³+3b+12b²+16b³-12c-24c²-16c³+5
[7+8a,1+8b,2+8c]:	unknown -> [13] [1,0,0] 147a+168a²+64a³+3b+24b²+64b³-12c-48c²-64c³+42
[3+8a,5+8b,2+8c]:	unknown -> [14] [0,1,0] 27a+72a²+64a³+75b+120b²+64b³-12c-48c²-64c³+18
[7+8a,1+8b,6+8c]:	unknown -> [15] [1,0,1] 147a+168a²+64a³+3b+24b²+64b³-108c-144c²-64c³+16
[3+8a,5+8b,6+8c]:	unknown -> [16] [0,1,1] 27a+72a²+64a³+75b+120b²+64b³-108c-144c²-64c³-8
expanding queue[5]^2,meter=[2,2,2]: 3a+12a²+16a³+16b³-3c-12c²-16c³
[1+8a,0+8b,1+8c]:	unknown -> [17] [0,0,0] 3a+24a²+64a³+64b³-3c-24c²-64c³
-> solution [1,0,1],trivial(3) [9,0,9],trivial(3)
[1+8a,4+8b,1+8c]:	unknown -> [18] [0,1,0] 3a+24a²+64a³+48b+96b²+64b³-3c-24c²-64c³+8
[5+8a,0+8b,5+8c]:	unknown -> [19] [1,0,1] 75a+120a²+64a³+64b³-75c-120c²-64c³
-> solution [5,0,5],trivial(3) [13,0,13],trivial(3)
[5+8a,4+8b,5+8c]:	unknown -> [20] [1,1,1] 75a+120a²+64a³+48b+96b²+64b³-75c-120c²-64c³+8
expanding queue[6]^2,meter=[2,2,2]: 3a+12a²+16a³+12b+24b²+16b³-3c-12c²-16c³+2
[1+8a,2+8b,1+8c]:	unknown -> [21] [0,0,0] 3a+24a²+64a³+12b+48b²+64b³-3c-24c²-64c³+1
[1+8a,6+8b,1+8c]:	unknown -> [22] [0,1,0] 3a+24a²+64a³+108b+144b²+64b³-3c-24c²-64c³+27
[5+8a,2+8b,5+8c]:	unknown -> [23] [1,0,1] 75a+120a²+64a³+12b+48b²+64b³-75c-120c²-64c³+1
[5+8a,6+8b,5+8c]:	unknown -> [24] [1,1,1] 75a+120a²+64a³+108b+144b²+64b³-75c-120c²-64c³+27
expanding queue[7]^2,meter=[2,2,2]: 27a+36a²+16a³+16b³-27c-36c²-16c³
[3+8a,0+8b,3+8c]:	unknown -> [25] [0,0,0] 27a+72a²+64a³+64b³-27c-72c²-64c³
-> solution [3,0,3],trivial(3) [11,0,11],trivial(3)
[3+8a,4+8b,3+8c]:	unknown -> [26] [0,1,0] 27a+72a²+64a³+48b+96b²+64b³-27c-72c²-64c³+8
[7+8a,0+8b,7+8c]:	unknown -> [27] [1,0,1] 147a+168a²+64a³+64b³-147c-168c²-64c³
-> solution [7,0,7],trivial(3) [15,0,15],trivial(3)
[7+8a,4+8b,7+8c]:	unknown -> [28] [1,1,1] 147a+168a²+64a³+48b+96b²+64b³-147c-168c²-64c³+8
expanding queue[8]^2,meter=[2,2,2]: 27a+36a²+16a³+12b+24b²+16b³-27c-36c²-16c³+2
[3+8a,2+8b,3+8c]:	unknown -> [29] [0,0,0] 27a+72a²+64a³+12b+48b²+64b³-27c-72c²-64c³+1
[3+8a,6+8b,3+8c]:	unknown -> [30] [0,1,0] 27a+72a²+64a³+108b+144b²+64b³-27c-72c²-64c³+27
[7+8a,2+8b,7+8c]:	unknown -> [31] [1,0,1] 147a+168a²+64a³+12b+48b²+64b³-147c-168c²-64c³+1
[7+8a,6+8b,7+8c]:	unknown -> [32] [1,1,1] 147a+168a²+64a³+108b+144b²+64b³-147c-168c²-64c³+27
----------------
expanding queue[9]^3,meter=[2,2,2]: 147a+168a²+64a³+3b+24b²+64b³-64c³+43
[15+16a,1+16b,0+16c]:	unknown -> [33] [1,0,0] 675a+720a²+256a³+3b+48b²+256b³-256c³+211
[7+16a,9+16b,0+16c]:	unknown -> [34] [0,1,0] 147a+336a²+256a³+243b+432b²+256b³-256c³+67
[15+16a,1+16b,8+16c]:	unknown -> [35] [1,0,1] 675a+720a²+256a³+3b+48b²+256b³-192c-384c²-256c³+179
[7+16a,9+16b,8+16c]:	unknown -> [36] [0,1,1] 147a+336a²+256a³+243b+432b²+256b³-192c-384c²-256c³+35
expanding queue[10]^3,meter=[2,2,2]: 27a+72a²+64a³+75b+120b²+64b³-64c³+19
[11+16a,5+16b,0+16c]:	unknown -> [37] [1,0,0] 363a+528a²+256a³+75b+240b²+256b³-256c³+91
[3+16a,13+16b,0+16c]:	unknown -> [38] [0,1,0] 27a+144a²+256a³+507b+624b²+256b³-256c³+139
[11+16a,5+16b,8+16c]:	unknown -> [39] [1,0,1] 363a+528a²+256a³+75b+240b²+256b³-192c-384c²-256c³+59
[3+16a,13+16b,8+16c]:	unknown -> [40] [0,1,1] 27a+144a²+256a³+507b+624b²+256b³-192c-384c²-256c³+107
expanding queue[11]^3,meter=[2,2,2]: 147a+168a²+64a³+3b+24b²+64b³-48c-96c²-64c³+35
[15+16a,1+16b,4+16c]:	unknown -> [41] [1,0,0] 675a+720a²+256a³+3b+48b²+256b³-48c-192c²-256c³+207
[7+16a,9+16b,4+16c]:	unknown -> [42] [0,1,0] 147a+336a²+256a³+243b+432b²+256b³-48c-192c²-256c³+63
[15+16a,1+16b,12+16c]:	unknown -> [43] [1,0,1] 675a+720a²+256a³+3b+48b²+256b³-432c-576c²-256c³+103
[7+16a,9+16b,12+16c]:	unknown -> [44] [0,1,1] 147a+336a²+256a³+243b+432b²+256b³-432c-576c²-256c³-41
expanding queue[12]^3,meter=[2,2,2]: 27a+72a²+64a³+75b+120b²+64b³-48c-96c²-64c³+11
[11+16a,5+16b,4+16c]:	unknown -> [45] [1,0,0] 363a+528a²+256a³+75b+240b²+256b³-48c-192c²-256c³+87
[3+16a,13+16b,4+16c]:	unknown -> [46] [0,1,0] 27a+144a²+256a³+507b+624b²+256b³-48c-192c²-256c³+135
[11+16a,5+16b,12+16c]:	unknown -> [47] [1,0,1] 363a+528a²+256a³+75b+240b²+256b³-432c-576c²-256c³-17
[3+16a,13+16b,12+16c]:	unknown -> [48] [0,1,1] 27a+144a²+256a³+507b+624b²+256b³-432c-576c²-256c³+31
expanding queue[13]^4,meter=[2,2,2]: 147a+168a²+64a³+3b+24b²+64b³-12c-48c²-64c³+42
[7+16a,1+16b,2+16c]:	unknown -> [49] [0,0,0] 147a+336a²+256a³+3b+48b²+256b³-12c-96c²-256c³+21
[15+16a,9+16b,2+16c]:	unknown -> [50] [1,1,0] 675a+720a²+256a³+243b+432b²+256b³-12c-96c²-256c³+256
[7+16a,1+16b,10+16c]:	unknown -> [51] [0,0,1] 147a+336a²+256a³+3b+48b²+256b³-300c-480c²-256c³-41
[15+16a,9+16b,10+16c]:	unknown -> [52] [1,1,1] 675a+720a²+256a³+243b+432b²+256b³-300c-480c²-256c³+194
expanding queue[14]^4,meter=[2,2,2]: 27a+72a²+64a³+75b+120b²+64b³-12c-48c²-64c³+18
[3+16a,5+16b,2+16c]:	unknown -> [53] [0,0,0] 27a+144a²+256a³+75b+240b²+256b³-12c-96c²-256c³+9
[11+16a,13+16b,2+16c]:	unknown -> [54] [1,1,0] 363a+528a²+256a³+507b+624b²+256b³-12c-96c²-256c³+220
[3+16a,5+16b,10+16c]:	unknown -> [55] [0,0,1] 27a+144a²+256a³+75b+240b²+256b³-300c-480c²-256c³-53
[11+16a,13+16b,10+16c]:	unknown -> [56] [1,1,1] 363a+528a²+256a³+507b+624b²+256b³-300c-480c²-256c³+158
expanding queue[15]^4,meter=[2,2,2]: 147a+168a²+64a³+3b+24b²+64b³-108c-144c²-64c³+16
[7+16a,1+16b,6+16c]:	unknown -> [57] [0,0,0] 147a+336a²+256a³+3b+48b²+256b³-108c-288c²-256c³+8
[15+16a,9+16b,6+16c]:	unknown -> [58] [1,1,0] 675a+720a²+256a³+243b+432b²+256b³-108c-288c²-256c³+243
[7+16a,1+16b,14+16c]:	unknown -> [59] [0,0,1] 147a+336a²+256a³+3b+48b²+256b³-588c-672c²-256c³-150
[15+16a,9+16b,14+16c]:	unknown -> [60] [1,1,1] 675a+720a²+256a³+243b+432b²+256b³-588c-672c²-256c³+85
expanding queue[16]^4,meter=[2,2,2]: 27a+72a²+64a³+75b+120b²+64b³-108c-144c²-64c³-8
[3+16a,5+16b,6+16c]:	unknown -> [61] [0,0,0] 27a+144a²+256a³+75b+240b²+256b³-108c-288c²-256c³-4
[11+16a,13+16b,6+16c]:	unknown -> [62] [1,1,0] 363a+528a²+256a³+507b+624b²+256b³-108c-288c²-256c³+207
[3+16a,5+16b,14+16c]:	unknown -> [63] [0,0,1] 27a+144a²+256a³+75b+240b²+256b³-588c-672c²-256c³-162
[11+16a,13+16b,14+16c]:	unknown -> [64] [1,1,1] 363a+528a²+256a³+507b+624b²+256b³-588c-672c²-256c³+49
expanding queue[17]^5,meter=[2,2,2]: 3a+24a²+64a³+64b³-3c-24c²-64c³
[1+16a,0+16b,1+16c]:	unknown -> [65] [0,0,0] 3a+48a²+256a³+256b³-3c-48c²-256c³
-> solution [1,0,1],trivial(3) [17,0,17],trivial(3)
[1+16a,8+16b,1+16c]:	unknown -> [66] [0,1,0] 3a+48a²+256a³+192b+384b²+256b³-3c-48c²-256c³+32
[9+16a,0+16b,9+16c]:	unknown -> [67] [1,0,1] 243a+432a²+256a³+256b³-243c-432c²-256c³
-> solution [9,0,9],trivial(3) [25,0,25],trivial(3)
[9+16a,8+16b,9+16c]:	unknown -> [68] [1,1,1] 243a+432a²+256a³+192b+384b²+256b³-243c-432c²-256c³+32
expanding queue[18]^5,meter=[2,2,2]: 3a+24a²+64a³+48b+96b²+64b³-3c-24c²-64c³+8
[1+16a,4+16b,1+16c]:	unknown -> [69] [0,0,0] 3a+48a²+256a³+48b+192b²+256b³-3c-48c²-256c³+4
[1+16a,12+16b,1+16c]:	unknown -> [70] [0,1,0] 3a+48a²+256a³+432b+576b²+256b³-3c-48c²-256c³+108
[9+16a,4+16b,9+16c]:	unknown -> [71] [1,0,1] 243a+432a²+256a³+48b+192b²+256b³-243c-432c²-256c³+4
[9+16a,12+16b,9+16c]:	unknown -> [72] [1,1,1] 243a+432a²+256a³+432b+576b²+256b³-243c-432c²-256c³+108
expanding queue[19]^5,meter=[2,2,2]: 75a+120a²+64a³+64b³-75c-120c²-64c³
[5+16a,0+16b,5+16c]:	unknown -> [73] [0,0,0] 75a+240a²+256a³+256b³-75c-240c²-256c³
-> solution [5,0,5],trivial(3) [21,0,21],trivial(3)
[5+16a,8+16b,5+16c]:	unknown -> [74] [0,1,0] 75a+240a²+256a³+192b+384b²+256b³-75c-240c²-256c³+32
[13+16a,0+16b,13+16c]:	unknown -> [75] [1,0,1] 507a+624a²+256a³+256b³-507c-624c²-256c³
-> solution [13,0,13],trivial(3) [29,0,29],trivial(3)
[13+16a,8+16b,13+16c]:	unknown -> [76] [1,1,1] 507a+624a²+256a³+192b+384b²+256b³-507c-624c²-256c³+32
expanding queue[20]^5,meter=[2,2,2]: 75a+120a²+64a³+48b+96b²+64b³-75c-120c²-64c³+8
[5+16a,4+16b,5+16c]:	unknown -> [77] [0,0,0] 75a+240a²+256a³+48b+192b²+256b³-75c-240c²-256c³+4
[5+16a,12+16b,5+16c]:	unknown -> [78] [0,1,0] 75a+240a²+256a³+432b+576b²+256b³-75c-240c²-256c³+108
[13+16a,4+16b,13+16c]:	unknown -> [79] [1,0,1] 507a+624a²+256a³+48b+192b²+256b³-507c-624c²-256c³+4
[13+16a,12+16b,13+16c]:	unknown -> [80] [1,1,1] 507a+624a²+256a³+432b+576b²+256b³-507c-624c²-256c³+108
expanding queue[21]^6,meter=[2,2,2]: 3a+24a²+64a³+12b+48b²+64b³-3c-24c²-64c³+1
[9+16a,2+16b,1+16c]:	unknown -> [81] [1,0,0] 243a+432a²+256a³+12b+96b²+256b³-3c-48c²-256c³+46
[9+16a,10+16b,1+16c]:	unknown -> [82] [1,1,0] 243a+432a²+256a³+300b+480b²+256b³-3c-48c²-256c³+108
[1+16a,2+16b,9+16c]:	unknown -> [83] [0,0,1] 3a+48a²+256a³+12b+96b²+256b³-243c-432c²-256c³-45
[1+16a,10+16b,9+16c]:	unknown -> [84] [0,1,1] 3a+48a²+256a³+300b+480b²+256b³-243c-432c²-256c³+17
expanding queue[22]^6,meter=[2,2,2]: 3a+24a²+64a³+108b+144b²+64b³-3c-24c²-64c³+27
[9+16a,6+16b,1+16c]:	unknown -> [85] [1,0,0] 243a+432a²+256a³+108b+288b²+256b³-3c-48c²-256c³+59
[9+16a,14+16b,1+16c]:	unknown -> [86] [1,1,0] 243a+432a²+256a³+588b+672b²+256b³-3c-48c²-256c³+217
[1+16a,6+16b,9+16c]:	unknown -> [87] [0,0,1] 3a+48a²+256a³+108b+288b²+256b³-243c-432c²-256c³-32
[1+16a,14+16b,9+16c]:	unknown -> [88] [0,1,1] 3a+48a²+256a³+588b+672b²+256b³-243c-432c²-256c³+126
expanding queue[23]^6,meter=[2,2,2]: 75a+120a²+64a³+12b+48b²+64b³-75c-120c²-64c³+1
[13+16a,2+16b,5+16c]:	unknown -> [89] [1,0,0] 507a+624a²+256a³+12b+96b²+256b³-75c-240c²-256c³+130
[13+16a,10+16b,5+16c]:	unknown -> [90] [1,1,0] 507a+624a²+256a³+300b+480b²+256b³-75c-240c²-256c³+192
[5+16a,2+16b,13+16c]:	unknown -> [91] [0,0,1] 75a+240a²+256a³+12b+96b²+256b³-507c-624c²-256c³-129
[5+16a,10+16b,13+16c]:	unknown -> [92] [0,1,1] 75a+240a²+256a³+300b+480b²+256b³-507c-624c²-256c³-67
expanding queue[24]^6,meter=[2,2,2]: 75a+120a²+64a³+108b+144b²+64b³-75c-120c²-64c³+27
[13+16a,6+16b,5+16c]:	unknown -> [93] [1,0,0] 507a+624a²+256a³+108b+288b²+256b³-75c-240c²-256c³+143
[13+16a,14+16b,5+16c]:	unknown -> [94] [1,1,0] 507a+624a²+256a³+588b+672b²+256b³-75c-240c²-256c³+301
[5+16a,6+16b,13+16c]:	unknown -> [95] [0,0,1] 75a+240a²+256a³+108b+288b²+256b³-507c-624c²-256c³-116
[5+16a,14+16b,13+16c]:	unknown -> [96] [0,1,1] 75a+240a²+256a³+588b+672b²+256b³-507c-624c²-256c³+42
expanding queue[25]^7,meter=[2,2,2]: 27a+72a²+64a³+64b³-27c-72c²-64c³
[3+16a,0+16b,3+16c]:	unknown -> [97] [0,0,0] 27a+144a²+256a³+256b³-27c-144c²-256c³
-> solution [3,0,3],trivial(3) [19,0,19],trivial(3)
[3+16a,8+16b,3+16c]:	unknown -> [98] [0,1,0] 27a+144a²+256a³+192b+384b²+256b³-27c-144c²-256c³+32
[11+16a,0+16b,11+16c]:	unknown -> [99] [1,0,1] 363a+528a²+256a³+256b³-363c-528c²-256c³
-> solution [11,0,11],trivial(3) [27,0,27],trivial(3)
[11+16a,8+16b,11+16c]:	unknown -> [100] [1,1,1] 363a+528a²+256a³+192b+384b²+256b³-363c-528c²-256c³+32
expanding queue[26]^7,meter=[2,2,2]: 27a+72a²+64a³+48b+96b²+64b³-27c-72c²-64c³+8
[3+16a,4+16b,3+16c]:	unknown -> [101] [0,0,0] 27a+144a²+256a³+48b+192b²+256b³-27c-144c²-256c³+4
[3+16a,12+16b,3+16c]:	unknown -> [102] [0,1,0] 27a+144a²+256a³+432b+576b²+256b³-27c-144c²-256c³+108
[11+16a,4+16b,11+16c]:	unknown -> [103] [1,0,1] 363a+528a²+256a³+48b+192b²+256b³-363c-528c²-256c³+4
[11+16a,12+16b,11+16c]:	unknown -> [104] [1,1,1] 363a+528a²+256a³+432b+576b²+256b³-363c-528c²-256c³+108
expanding queue[27]^7,meter=[2,2,2]: 147a+168a²+64a³+64b³-147c-168c²-64c³
[7+16a,0+16b,7+16c]:	unknown -> [105] [0,0,0] 147a+336a²+256a³+256b³-147c-336c²-256c³
-> solution [7,0,7],trivial(3) [23,0,23],trivial(3)
[7+16a,8+16b,7+16c]:	unknown -> [106] [0,1,0] 147a+336a²+256a³+192b+384b²+256b³-147c-336c²-256c³+32
[15+16a,0+16b,15+16c]:	unknown -> [107] [1,0,1] 675a+720a²+256a³+256b³-675c-720c²-256c³
-> solution [15,0,15],trivial(3) [31,0,31],trivial(3)
[15+16a,8+16b,15+16c]:	unknown -> [108] [1,1,1] 675a+720a²+256a³+192b+384b²+256b³-675c-720c²-256c³+32
expanding queue[28]^7,meter=[2,2,2]: 147a+168a²+64a³+48b+96b²+64b³-147c-168c²-64c³+8
[7+16a,4+16b,7+16c]:	unknown -> [109] [0,0,0] 147a+336a²+256a³+48b+192b²+256b³-147c-336c²-256c³+4
[7+16a,12+16b,7+16c]:	unknown -> [110] [0,1,0] 147a+336a²+256a³+432b+576b²+256b³-147c-336c²-256c³+108
[15+16a,4+16b,15+16c]:	unknown -> [111] [1,0,1] 675a+720a²+256a³+48b+192b²+256b³-675c-720c²-256c³+4
[15+16a,12+16b,15+16c]:	unknown -> [112] [1,1,1] 675a+720a²+256a³+432b+576b²+256b³-675c-720c²-256c³+108
expanding queue[29]^8,meter=[2,2,2]: 27a+72a²+64a³+12b+48b²+64b³-27c-72c²-64c³+1
[11+16a,2+16b,3+16c]:	unknown -> [113] [1,0,0] 363a+528a²+256a³+12b+96b²+256b³-27c-144c²-256c³+82
[11+16a,10+16b,3+16c]:	unknown -> [114] [1,1,0] 363a+528a²+256a³+300b+480b²+256b³-27c-144c²-256c³+144
[3+16a,2+16b,11+16c]:	unknown -> [115] [0,0,1] 27a+144a²+256a³+12b+96b²+256b³-363c-528c²-256c³-81
[3+16a,10+16b,11+16c]:	unknown -> [116] [0,1,1] 27a+144a²+256a³+300b+480b²+256b³-363c-528c²-256c³-19
expanding queue[30]^8,meter=[2,2,2]: 27a+72a²+64a³+108b+144b²+64b³-27c-72c²-64c³+27
[11+16a,6+16b,3+16c]:	unknown -> [117] [1,0,0] 363a+528a²+256a³+108b+288b²+256b³-27c-144c²-256c³+95
[11+16a,14+16b,3+16c]:	unknown -> [118] [1,1,0] 363a+528a²+256a³+588b+672b²+256b³-27c-144c²-256c³+253
[3+16a,6+16b,11+16c]:	unknown -> [119] [0,0,1] 27a+144a²+256a³+108b+288b²+256b³-363c-528c²-256c³-68
[3+16a,14+16b,11+16c]:	unknown -> [120] [0,1,1] 27a+144a²+256a³+588b+672b²+256b³-363c-528c²-256c³+90
expanding queue[31]^8,meter=[2,2,2]: 147a+168a²+64a³+12b+48b²+64b³-147c-168c²-64c³+1
[15+16a,2+16b,7+16c]:	unknown -> [121] [1,0,0] 675a+720a²+256a³+12b+96b²+256b³-147c-336c²-256c³+190
[15+16a,10+16b,7+16c]:	unknown -> [122] [1,1,0] 675a+720a²+256a³+300b+480b²+256b³-147c-336c²-256c³+252
[7+16a,2+16b,15+16c]:	unknown -> [123] [0,0,1] 147a+336a²+256a³+12b+96b²+256b³-675c-720c²-256c³-189
[7+16a,10+16b,15+16c]:	unknown -> [124] [0,1,1] 147a+336a²+256a³+300b+480b²+256b³-675c-720c²-256c³-127
expanding queue[32]^8,meter=[2,2,2]: 147a+168a²+64a³+108b+144b²+64b³-147c-168c²-64c³+27
[15+16a,6+16b,7+16c]:	unknown -> [125] [1,0,0] 675a+720a²+256a³+108b+288b²+256b³-147c-336c²-256c³+203
[15+16a,14+16b,7+16c]:	unknown -> [126] [1,1,0] 675a+720a²+256a³+588b+672b²+256b³-147c-336c²-256c³+361
[7+16a,6+16b,15+16c]:	unknown -> [127] [0,0,1] 147a+336a²+256a³+108b+288b²+256b³-675c-720c²-256c³-176
[7+16a,14+16b,15+16c]:	unknown -> [128] [0,1,1] 147a+336a²+256a³+588b+672b²+256b³-675c-720c²-256c³-18
Maximum level 3 [129] mod 2: a³+b³-c³
