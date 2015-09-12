TranspositionSet={[1,0,2]}
isHomogeneous
ExponentGCDs=[3,3,3]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar norm,invall
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] a^3+b^3-c^3
-> solution [0,0,0],trivial(3) [1,0,1],trivial(3) [0,1,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a^3+b^3-c^3
[0+2a,0+2b,0+2c]:	non-primitive
-> solution [0,0,0],trivial(3) [2,0,2],trivial(3) [0,2,2],trivial(3)
[1+2a,1+2b,0+2c]:	unknown -> [1] 1+3a+6a^2+4a^3+3b+6b^2+4b^3-4c^3
[1+2a,0+2b,1+2c]:	unknown -> [2] 3a+6a^2+4a^3+4b^3-3c-6c^2-4c^3
-> solution [1,0,1],trivial(3) [3,0,3],trivial(3)
[0+2a,1+2b,1+2c]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 1+3a+6a^2+4a^3+3b+6b^2+4b^3-4c^3
[3+4a,1+4b,0+4c]:	unknown -> [3] 7+27a+36a^2+16a^3+3b+12b^2+16b^3-16c^3
[1+4a,3+4b,0+4c]:	transposed [3] by [1,0,2]
[3+4a,1+4b,2+4c]:	unknown -> [4] 5+27a+36a^2+16a^3+3b+12b^2+16b^3-12c-24c^2-16c^3
[1+4a,3+4b,2+4c]:	transposed [4] by [1,0,2]
expanding queue[2]^0,meter=[2,2,2]*4: 3a+6a^2+4a^3+4b^3-3c-6c^2-4c^3
[1+4a,0+4b,1+4c]:	unknown -> [5] 3a+12a^2+16a^3+16b^3-3c-12c^2-16c^3
-> solution [1,0,1],trivial(3) [5,0,5],trivial(3)
[1+4a,2+4b,1+4c]:	unknown -> [6] 2+3a+12a^2+16a^3+12b+24b^2+16b^3-3c-12c^2-16c^3
[3+4a,0+4b,3+4c]:	unknown -> [7] 27a+36a^2+16a^3+16b^3-27c-36c^2-16c^3
-> solution [3,0,3],trivial(3) [7,0,7],trivial(3)
[3+4a,2+4b,3+4c]:	unknown -> [8] 2+27a+36a^2+16a^3+12b+24b^2+16b^3-27c-36c^2-16c^3
----------------
expanding queue[3]^1,meter=[2,2,2]*8: 7+27a+36a^2+16a^3+3b+12b^2+16b^3-16c^3
[7+8a,1+8b,0+8c]:	unknown -> [9] 43+147a+168a^2+64a^3+3b+24b^2+64b^3-64c^3
[3+8a,5+8b,0+8c]:	unknown -> [10] 19+27a+72a^2+64a^3+75b+120b^2+64b^3-64c^3
[7+8a,1+8b,4+8c]:	unknown -> [11] 35+147a+168a^2+64a^3+3b+24b^2+64b^3-48c-96c^2-64c^3
[3+8a,5+8b,4+8c]:	unknown -> [12] 11+27a+72a^2+64a^3+75b+120b^2+64b^3-48c-96c^2-64c^3
expanding queue[4]^1,meter=[2,2,2]*8: 5+27a+36a^2+16a^3+3b+12b^2+16b^3-12c-24c^2-16c^3
[7+8a,1+8b,2+8c]:	unknown -> [13] 42+147a+168a^2+64a^3+3b+24b^2+64b^3-12c-48c^2-64c^3
[3+8a,5+8b,2+8c]:	unknown -> [14] 18+27a+72a^2+64a^3+75b+120b^2+64b^3-12c-48c^2-64c^3
[7+8a,1+8b,6+8c]:	unknown -> [15] 16+147a+168a^2+64a^3+3b+24b^2+64b^3-108c-144c^2-64c^3
[3+8a,5+8b,6+8c]:	unknown -> [16] -8+27a+72a^2+64a^3+75b+120b^2+64b^3-108c-144c^2-64c^3
expanding queue[5]^2,meter=[2,2,2]*8: 3a+12a^2+16a^3+16b^3-3c-12c^2-16c^3
[1+8a,0+8b,1+8c]:	unknown -> [17] 3a+24a^2+64a^3+64b^3-3c-24c^2-64c^3
-> solution [1,0,1],trivial(3) [9,0,9],trivial(3)
[1+8a,4+8b,1+8c]:	unknown -> [18] 8+3a+24a^2+64a^3+48b+96b^2+64b^3-3c-24c^2-64c^3
[5+8a,0+8b,5+8c]:	unknown -> [19] 75a+120a^2+64a^3+64b^3-75c-120c^2-64c^3
-> solution [5,0,5],trivial(3) [13,0,13],trivial(3)
[5+8a,4+8b,5+8c]:	unknown -> [20] 8+75a+120a^2+64a^3+48b+96b^2+64b^3-75c-120c^2-64c^3
expanding queue[6]^2,meter=[2,2,2]*8: 2+3a+12a^2+16a^3+12b+24b^2+16b^3-3c-12c^2-16c^3
[1+8a,2+8b,1+8c]:	unknown -> [21] 1+3a+24a^2+64a^3+12b+48b^2+64b^3-3c-24c^2-64c^3
[1+8a,6+8b,1+8c]:	unknown -> [22] 27+3a+24a^2+64a^3+108b+144b^2+64b^3-3c-24c^2-64c^3
[5+8a,2+8b,5+8c]:	unknown -> [23] 1+75a+120a^2+64a^3+12b+48b^2+64b^3-75c-120c^2-64c^3
[5+8a,6+8b,5+8c]:	unknown -> [24] 27+75a+120a^2+64a^3+108b+144b^2+64b^3-75c-120c^2-64c^3
expanding queue[7]^2,meter=[2,2,2]*8: 27a+36a^2+16a^3+16b^3-27c-36c^2-16c^3
[3+8a,0+8b,3+8c]:	unknown -> [25] 27a+72a^2+64a^3+64b^3-27c-72c^2-64c^3
-> solution [3,0,3],trivial(3) [11,0,11],trivial(3)
[3+8a,4+8b,3+8c]:	unknown -> [26] 8+27a+72a^2+64a^3+48b+96b^2+64b^3-27c-72c^2-64c^3
[7+8a,0+8b,7+8c]:	unknown -> [27] 147a+168a^2+64a^3+64b^3-147c-168c^2-64c^3
-> solution [7,0,7],trivial(3) [15,0,15],trivial(3)
[7+8a,4+8b,7+8c]:	unknown -> [28] 8+147a+168a^2+64a^3+48b+96b^2+64b^3-147c-168c^2-64c^3
expanding queue[8]^2,meter=[2,2,2]*8: 2+27a+36a^2+16a^3+12b+24b^2+16b^3-27c-36c^2-16c^3
[3+8a,2+8b,3+8c]:	unknown -> [29] 1+27a+72a^2+64a^3+12b+48b^2+64b^3-27c-72c^2-64c^3
[3+8a,6+8b,3+8c]:	unknown -> [30] 27+27a+72a^2+64a^3+108b+144b^2+64b^3-27c-72c^2-64c^3
[7+8a,2+8b,7+8c]:	unknown -> [31] 1+147a+168a^2+64a^3+12b+48b^2+64b^3-147c-168c^2-64c^3
[7+8a,6+8b,7+8c]:	unknown -> [32] 27+147a+168a^2+64a^3+108b+144b^2+64b^3-147c-168c^2-64c^3
----------------
expanding queue[9]^3,meter=[2,2,2]*16: 43+147a+168a^2+64a^3+3b+24b^2+64b^3-64c^3
[15+16a,1+16b,0+16c]:	unknown -> [33] 211+675a+720a^2+256a^3+3b+48b^2+256b^3-256c^3
[7+16a,9+16b,0+16c]:	unknown -> [34] 67+147a+336a^2+256a^3+243b+432b^2+256b^3-256c^3
[15+16a,1+16b,8+16c]:	unknown -> [35] 179+675a+720a^2+256a^3+3b+48b^2+256b^3-192c-384c^2-256c^3
[7+16a,9+16b,8+16c]:	unknown -> [36] 35+147a+336a^2+256a^3+243b+432b^2+256b^3-192c-384c^2-256c^3
expanding queue[10]^3,meter=[2,2,2]*16: 19+27a+72a^2+64a^3+75b+120b^2+64b^3-64c^3
[11+16a,5+16b,0+16c]:	unknown -> [37] 91+363a+528a^2+256a^3+75b+240b^2+256b^3-256c^3
[3+16a,13+16b,0+16c]:	unknown -> [38] 139+27a+144a^2+256a^3+507b+624b^2+256b^3-256c^3
[11+16a,5+16b,8+16c]:	unknown -> [39] 59+363a+528a^2+256a^3+75b+240b^2+256b^3-192c-384c^2-256c^3
[3+16a,13+16b,8+16c]:	unknown -> [40] 107+27a+144a^2+256a^3+507b+624b^2+256b^3-192c-384c^2-256c^3
expanding queue[11]^3,meter=[2,2,2]*16: 35+147a+168a^2+64a^3+3b+24b^2+64b^3-48c-96c^2-64c^3
[15+16a,1+16b,4+16c]:	unknown -> [41] 207+675a+720a^2+256a^3+3b+48b^2+256b^3-48c-192c^2-256c^3
[7+16a,9+16b,4+16c]:	unknown -> [42] 63+147a+336a^2+256a^3+243b+432b^2+256b^3-48c-192c^2-256c^3
[15+16a,1+16b,12+16c]:	unknown -> [43] 103+675a+720a^2+256a^3+3b+48b^2+256b^3-432c-576c^2-256c^3
[7+16a,9+16b,12+16c]:	unknown -> [44] -41+147a+336a^2+256a^3+243b+432b^2+256b^3-432c-576c^2-256c^3
expanding queue[12]^3,meter=[2,2,2]*16: 11+27a+72a^2+64a^3+75b+120b^2+64b^3-48c-96c^2-64c^3
[11+16a,5+16b,4+16c]:	unknown -> [45] 87+363a+528a^2+256a^3+75b+240b^2+256b^3-48c-192c^2-256c^3
[3+16a,13+16b,4+16c]:	unknown -> [46] 135+27a+144a^2+256a^3+507b+624b^2+256b^3-48c-192c^2-256c^3
[11+16a,5+16b,12+16c]:	unknown -> [47] -17+363a+528a^2+256a^3+75b+240b^2+256b^3-432c-576c^2-256c^3
[3+16a,13+16b,12+16c]:	unknown -> [48] 31+27a+144a^2+256a^3+507b+624b^2+256b^3-432c-576c^2-256c^3
expanding queue[13]^4,meter=[2,2,2]*16: 42+147a+168a^2+64a^3+3b+24b^2+64b^3-12c-48c^2-64c^3
[7+16a,1+16b,2+16c]:	unknown -> [49] 21+147a+336a^2+256a^3+3b+48b^2+256b^3-12c-96c^2-256c^3
[15+16a,9+16b,2+16c]:	unknown -> [50] 256+675a+720a^2+256a^3+243b+432b^2+256b^3-12c-96c^2-256c^3
[7+16a,1+16b,10+16c]:	unknown -> [51] -41+147a+336a^2+256a^3+3b+48b^2+256b^3-300c-480c^2-256c^3
[15+16a,9+16b,10+16c]:	unknown -> [52] 194+675a+720a^2+256a^3+243b+432b^2+256b^3-300c-480c^2-256c^3
expanding queue[14]^4,meter=[2,2,2]*16: 18+27a+72a^2+64a^3+75b+120b^2+64b^3-12c-48c^2-64c^3
[3+16a,5+16b,2+16c]:	unknown -> [53] 9+27a+144a^2+256a^3+75b+240b^2+256b^3-12c-96c^2-256c^3
[11+16a,13+16b,2+16c]:	unknown -> [54] 220+363a+528a^2+256a^3+507b+624b^2+256b^3-12c-96c^2-256c^3
[3+16a,5+16b,10+16c]:	unknown -> [55] -53+27a+144a^2+256a^3+75b+240b^2+256b^3-300c-480c^2-256c^3
[11+16a,13+16b,10+16c]:	unknown -> [56] 158+363a+528a^2+256a^3+507b+624b^2+256b^3-300c-480c^2-256c^3
expanding queue[15]^4,meter=[2,2,2]*16: 16+147a+168a^2+64a^3+3b+24b^2+64b^3-108c-144c^2-64c^3
[7+16a,1+16b,6+16c]:	unknown -> [57] 8+147a+336a^2+256a^3+3b+48b^2+256b^3-108c-288c^2-256c^3
[15+16a,9+16b,6+16c]:	unknown -> [58] 243+675a+720a^2+256a^3+243b+432b^2+256b^3-108c-288c^2-256c^3
[7+16a,1+16b,14+16c]:	unknown -> [59] -150+147a+336a^2+256a^3+3b+48b^2+256b^3-588c-672c^2-256c^3
[15+16a,9+16b,14+16c]:	unknown -> [60] 85+675a+720a^2+256a^3+243b+432b^2+256b^3-588c-672c^2-256c^3
expanding queue[16]^4,meter=[2,2,2]*16: -8+27a+72a^2+64a^3+75b+120b^2+64b^3-108c-144c^2-64c^3
[3+16a,5+16b,6+16c]:	unknown -> [61] -4+27a+144a^2+256a^3+75b+240b^2+256b^3-108c-288c^2-256c^3
[11+16a,13+16b,6+16c]:	unknown -> [62] 207+363a+528a^2+256a^3+507b+624b^2+256b^3-108c-288c^2-256c^3
[3+16a,5+16b,14+16c]:	unknown -> [63] -162+27a+144a^2+256a^3+75b+240b^2+256b^3-588c-672c^2-256c^3
[11+16a,13+16b,14+16c]:	unknown -> [64] 49+363a+528a^2+256a^3+507b+624b^2+256b^3-588c-672c^2-256c^3
expanding queue[17]^5,meter=[2,2,2]*16: 3a+24a^2+64a^3+64b^3-3c-24c^2-64c^3
[1+16a,0+16b,1+16c]:	unknown -> [65] 3a+48a^2+256a^3+256b^3-3c-48c^2-256c^3
-> solution [1,0,1],trivial(3) [17,0,17],trivial(3)
[1+16a,8+16b,1+16c]:	unknown -> [66] 32+3a+48a^2+256a^3+192b+384b^2+256b^3-3c-48c^2-256c^3
[9+16a,0+16b,9+16c]:	unknown -> [67] 243a+432a^2+256a^3+256b^3-243c-432c^2-256c^3
-> solution [9,0,9],trivial(3) [25,0,25],trivial(3)
[9+16a,8+16b,9+16c]:	unknown -> [68] 32+243a+432a^2+256a^3+192b+384b^2+256b^3-243c-432c^2-256c^3
expanding queue[18]^5,meter=[2,2,2]*16: 8+3a+24a^2+64a^3+48b+96b^2+64b^3-3c-24c^2-64c^3
[1+16a,4+16b,1+16c]:	unknown -> [69] 4+3a+48a^2+256a^3+48b+192b^2+256b^3-3c-48c^2-256c^3
[1+16a,12+16b,1+16c]:	unknown -> [70] 108+3a+48a^2+256a^3+432b+576b^2+256b^3-3c-48c^2-256c^3
[9+16a,4+16b,9+16c]:	unknown -> [71] 4+243a+432a^2+256a^3+48b+192b^2+256b^3-243c-432c^2-256c^3
[9+16a,12+16b,9+16c]:	unknown -> [72] 108+243a+432a^2+256a^3+432b+576b^2+256b^3-243c-432c^2-256c^3
expanding queue[19]^5,meter=[2,2,2]*16: 75a+120a^2+64a^3+64b^3-75c-120c^2-64c^3
[5+16a,0+16b,5+16c]:	unknown -> [73] 75a+240a^2+256a^3+256b^3-75c-240c^2-256c^3
-> solution [5,0,5],trivial(3) [21,0,21],trivial(3)
[5+16a,8+16b,5+16c]:	unknown -> [74] 32+75a+240a^2+256a^3+192b+384b^2+256b^3-75c-240c^2-256c^3
[13+16a,0+16b,13+16c]:	unknown -> [75] 507a+624a^2+256a^3+256b^3-507c-624c^2-256c^3
-> solution [13,0,13],trivial(3) [29,0,29],trivial(3)
[13+16a,8+16b,13+16c]:	unknown -> [76] 32+507a+624a^2+256a^3+192b+384b^2+256b^3-507c-624c^2-256c^3
expanding queue[20]^5,meter=[2,2,2]*16: 8+75a+120a^2+64a^3+48b+96b^2+64b^3-75c-120c^2-64c^3
[5+16a,4+16b,5+16c]:	unknown -> [77] 4+75a+240a^2+256a^3+48b+192b^2+256b^3-75c-240c^2-256c^3
[5+16a,12+16b,5+16c]:	unknown -> [78] 108+75a+240a^2+256a^3+432b+576b^2+256b^3-75c-240c^2-256c^3
[13+16a,4+16b,13+16c]:	unknown -> [79] 4+507a+624a^2+256a^3+48b+192b^2+256b^3-507c-624c^2-256c^3
[13+16a,12+16b,13+16c]:	unknown -> [80] 108+507a+624a^2+256a^3+432b+576b^2+256b^3-507c-624c^2-256c^3
expanding queue[21]^6,meter=[2,2,2]*16: 1+3a+24a^2+64a^3+12b+48b^2+64b^3-3c-24c^2-64c^3
[9+16a,2+16b,1+16c]:	unknown -> [81] 46+243a+432a^2+256a^3+12b+96b^2+256b^3-3c-48c^2-256c^3
[9+16a,10+16b,1+16c]:	unknown -> [82] 108+243a+432a^2+256a^3+300b+480b^2+256b^3-3c-48c^2-256c^3
[1+16a,2+16b,9+16c]:	unknown -> [83] -45+3a+48a^2+256a^3+12b+96b^2+256b^3-243c-432c^2-256c^3
[1+16a,10+16b,9+16c]:	unknown -> [84] 17+3a+48a^2+256a^3+300b+480b^2+256b^3-243c-432c^2-256c^3
expanding queue[22]^6,meter=[2,2,2]*16: 27+3a+24a^2+64a^3+108b+144b^2+64b^3-3c-24c^2-64c^3
[9+16a,6+16b,1+16c]:	unknown -> [85] 59+243a+432a^2+256a^3+108b+288b^2+256b^3-3c-48c^2-256c^3
[9+16a,14+16b,1+16c]:	unknown -> [86] 217+243a+432a^2+256a^3+588b+672b^2+256b^3-3c-48c^2-256c^3
[1+16a,6+16b,9+16c]:	unknown -> [87] -32+3a+48a^2+256a^3+108b+288b^2+256b^3-243c-432c^2-256c^3
[1+16a,14+16b,9+16c]:	unknown -> [88] 126+3a+48a^2+256a^3+588b+672b^2+256b^3-243c-432c^2-256c^3
expanding queue[23]^6,meter=[2,2,2]*16: 1+75a+120a^2+64a^3+12b+48b^2+64b^3-75c-120c^2-64c^3
[13+16a,2+16b,5+16c]:	unknown -> [89] 130+507a+624a^2+256a^3+12b+96b^2+256b^3-75c-240c^2-256c^3
[13+16a,10+16b,5+16c]:	unknown -> [90] 192+507a+624a^2+256a^3+300b+480b^2+256b^3-75c-240c^2-256c^3
[5+16a,2+16b,13+16c]:	unknown -> [91] -129+75a+240a^2+256a^3+12b+96b^2+256b^3-507c-624c^2-256c^3
[5+16a,10+16b,13+16c]:	unknown -> [92] -67+75a+240a^2+256a^3+300b+480b^2+256b^3-507c-624c^2-256c^3
expanding queue[24]^6,meter=[2,2,2]*16: 27+75a+120a^2+64a^3+108b+144b^2+64b^3-75c-120c^2-64c^3
[13+16a,6+16b,5+16c]:	unknown -> [93] 143+507a+624a^2+256a^3+108b+288b^2+256b^3-75c-240c^2-256c^3
[13+16a,14+16b,5+16c]:	unknown -> [94] 301+507a+624a^2+256a^3+588b+672b^2+256b^3-75c-240c^2-256c^3
[5+16a,6+16b,13+16c]:	unknown -> [95] -116+75a+240a^2+256a^3+108b+288b^2+256b^3-507c-624c^2-256c^3
[5+16a,14+16b,13+16c]:	unknown -> [96] 42+75a+240a^2+256a^3+588b+672b^2+256b^3-507c-624c^2-256c^3
expanding queue[25]^7,meter=[2,2,2]*16: 27a+72a^2+64a^3+64b^3-27c-72c^2-64c^3
[3+16a,0+16b,3+16c]:	unknown -> [97] 27a+144a^2+256a^3+256b^3-27c-144c^2-256c^3
-> solution [3,0,3],trivial(3) [19,0,19],trivial(3)
[3+16a,8+16b,3+16c]:	unknown -> [98] 32+27a+144a^2+256a^3+192b+384b^2+256b^3-27c-144c^2-256c^3
[11+16a,0+16b,11+16c]:	unknown -> [99] 363a+528a^2+256a^3+256b^3-363c-528c^2-256c^3
-> solution [11,0,11],trivial(3) [27,0,27],trivial(3)
[11+16a,8+16b,11+16c]:	unknown -> [100] 32+363a+528a^2+256a^3+192b+384b^2+256b^3-363c-528c^2-256c^3
expanding queue[26]^7,meter=[2,2,2]*16: 8+27a+72a^2+64a^3+48b+96b^2+64b^3-27c-72c^2-64c^3
[3+16a,4+16b,3+16c]:	unknown -> [101] 4+27a+144a^2+256a^3+48b+192b^2+256b^3-27c-144c^2-256c^3
[3+16a,12+16b,3+16c]:	unknown -> [102] 108+27a+144a^2+256a^3+432b+576b^2+256b^3-27c-144c^2-256c^3
[11+16a,4+16b,11+16c]:	unknown -> [103] 4+363a+528a^2+256a^3+48b+192b^2+256b^3-363c-528c^2-256c^3
[11+16a,12+16b,11+16c]:	unknown -> [104] 108+363a+528a^2+256a^3+432b+576b^2+256b^3-363c-528c^2-256c^3
expanding queue[27]^7,meter=[2,2,2]*16: 147a+168a^2+64a^3+64b^3-147c-168c^2-64c^3
[7+16a,0+16b,7+16c]:	unknown -> [105] 147a+336a^2+256a^3+256b^3-147c-336c^2-256c^3
-> solution [7,0,7],trivial(3) [23,0,23],trivial(3)
[7+16a,8+16b,7+16c]:	unknown -> [106] 32+147a+336a^2+256a^3+192b+384b^2+256b^3-147c-336c^2-256c^3
[15+16a,0+16b,15+16c]:	unknown -> [107] 675a+720a^2+256a^3+256b^3-675c-720c^2-256c^3
-> solution [15,0,15],trivial(3) [31,0,31],trivial(3)
[15+16a,8+16b,15+16c]:	unknown -> [108] 32+675a+720a^2+256a^3+192b+384b^2+256b^3-675c-720c^2-256c^3
expanding queue[28]^7,meter=[2,2,2]*16: 8+147a+168a^2+64a^3+48b+96b^2+64b^3-147c-168c^2-64c^3
[7+16a,4+16b,7+16c]:	unknown -> [109] 4+147a+336a^2+256a^3+48b+192b^2+256b^3-147c-336c^2-256c^3
[7+16a,12+16b,7+16c]:	unknown -> [110] 108+147a+336a^2+256a^3+432b+576b^2+256b^3-147c-336c^2-256c^3
[15+16a,4+16b,15+16c]:	unknown -> [111] 4+675a+720a^2+256a^3+48b+192b^2+256b^3-675c-720c^2-256c^3
[15+16a,12+16b,15+16c]:	unknown -> [112] 108+675a+720a^2+256a^3+432b+576b^2+256b^3-675c-720c^2-256c^3
expanding queue[29]^8,meter=[2,2,2]*16: 1+27a+72a^2+64a^3+12b+48b^2+64b^3-27c-72c^2-64c^3
[11+16a,2+16b,3+16c]:	unknown -> [113] 82+363a+528a^2+256a^3+12b+96b^2+256b^3-27c-144c^2-256c^3
[11+16a,10+16b,3+16c]:	unknown -> [114] 144+363a+528a^2+256a^3+300b+480b^2+256b^3-27c-144c^2-256c^3
[3+16a,2+16b,11+16c]:	unknown -> [115] -81+27a+144a^2+256a^3+12b+96b^2+256b^3-363c-528c^2-256c^3
[3+16a,10+16b,11+16c]:	unknown -> [116] -19+27a+144a^2+256a^3+300b+480b^2+256b^3-363c-528c^2-256c^3
expanding queue[30]^8,meter=[2,2,2]*16: 27+27a+72a^2+64a^3+108b+144b^2+64b^3-27c-72c^2-64c^3
[11+16a,6+16b,3+16c]:	unknown -> [117] 95+363a+528a^2+256a^3+108b+288b^2+256b^3-27c-144c^2-256c^3
[11+16a,14+16b,3+16c]:	unknown -> [118] 253+363a+528a^2+256a^3+588b+672b^2+256b^3-27c-144c^2-256c^3
[3+16a,6+16b,11+16c]:	unknown -> [119] -68+27a+144a^2+256a^3+108b+288b^2+256b^3-363c-528c^2-256c^3
[3+16a,14+16b,11+16c]:	unknown -> [120] 90+27a+144a^2+256a^3+588b+672b^2+256b^3-363c-528c^2-256c^3
expanding queue[31]^8,meter=[2,2,2]*16: 1+147a+168a^2+64a^3+12b+48b^2+64b^3-147c-168c^2-64c^3
[15+16a,2+16b,7+16c]:	unknown -> [121] 190+675a+720a^2+256a^3+12b+96b^2+256b^3-147c-336c^2-256c^3
[15+16a,10+16b,7+16c]:	unknown -> [122] 252+675a+720a^2+256a^3+300b+480b^2+256b^3-147c-336c^2-256c^3
[7+16a,2+16b,15+16c]:	unknown -> [123] -189+147a+336a^2+256a^3+12b+96b^2+256b^3-675c-720c^2-256c^3
[7+16a,10+16b,15+16c]:	unknown -> [124] -127+147a+336a^2+256a^3+300b+480b^2+256b^3-675c-720c^2-256c^3
expanding queue[32]^8,meter=[2,2,2]*16: 27+147a+168a^2+64a^3+108b+144b^2+64b^3-147c-168c^2-64c^3
[15+16a,6+16b,7+16c]:	unknown -> [125] 203+675a+720a^2+256a^3+108b+288b^2+256b^3-147c-336c^2-256c^3
[15+16a,14+16b,7+16c]:	unknown -> [126] 361+675a+720a^2+256a^3+588b+672b^2+256b^3-147c-336c^2-256c^3
[7+16a,6+16b,15+16c]:	unknown -> [127] -176+147a+336a^2+256a^3+108b+288b^2+256b^3-675c-720c^2-256c^3
[7+16a,14+16b,15+16c]:	unknown -> [128] -18+147a+336a^2+256a^3+588b+672b^2+256b^3-675c-720c^2-256c^3
Maximum level 3 at [129]: a^3+b^3-c^3
