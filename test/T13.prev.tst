ExponentGCDs=[3,3,3]
Expanding for base=2, reasons+features=base,same,similiar norm
Refined variables=a,b,c
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a^3+3b^3-9c^3
solution [0,0,0],trivial(3)
[0+2a,0+2b,0+2c]:	same form as a^3+3b^3-9c^3
[1+2a,1+2b,0+2c]:	unknown -> [1] 2+3a+6a^2+4a^3+9b+18b^2+12b^3-36c^3
[1+2a,0+2b,1+2c]:	unknown -> [2] -4+3a+6a^2+4a^3+12b^3-27c-54c^2-36c^3
[0+2a,1+2b,1+2c]:	unknown -> [3] -3+4a^3+9b+18b^2+12b^3-27c-54c^2-36c^3
----------------
expanding queue[1]^0,meter=[2,2,1]*4: 2+3a+6a^2+4a^3+9b+18b^2+12b^3-36c^3
[1+4a,1+4b,0+2c]:	unknown -> [4] 1+3a+12a^2+16a^3+9b+36b^2+48b^3-18c^3
[3+4a,3+4b,0+2c]:	unknown -> [5] 27+27a+36a^2+16a^3+81b+108b^2+48b^3-18c^3
expanding queue[2]^0,meter=[2,1,2]*4: -4+3a+6a^2+4a^3+12b^3-27c-54c^2-36c^3
[1+4a,0+2b,1+4c]:	unknown -> [6] -2+3a+12a^2+16a^3+6b^3-27c-108c^2-144c^3
[3+4a,0+2b,3+4c]:	unknown -> [7] -54+27a+36a^2+16a^3+6b^3-243c-324c^2-144c^3
expanding queue[3]^0,meter=[1,2,2]*4: -3+4a^3+9b+18b^2+12b^3-27c-54c^2-36c^3
[0+2a,3+4b,1+4c]:	unknown -> [8] 18+2a^3+81b+108b^2+48b^3-27c-108c^2-144c^3
[0+2a,1+4b,3+4c]:	unknown -> [9] -60+2a^3+9b+36b^2+48b^3-243c-324c^2-144c^3
----------------
expanding queue[4]^1,meter=[2,2,1]*8: 1+3a+12a^2+16a^3+9b+36b^2+48b^3-18c^3
[5+8a,1+8b,0+2c]:	unknown -> [10] 16+75a+120a^2+64a^3+9b+72b^2+192b^3-9c^3
[1+8a,5+8b,0+2c]:	unknown -> [11] 47+3a+24a^2+64a^3+225b+360b^2+192b^3-9c^3
expanding queue[5]^1,meter=[2,2,1]*8: 27+27a+36a^2+16a^3+81b+108b^2+48b^3-18c^3
[7+8a,3+8b,0+2c]:	unknown -> [12] 53+147a+168a^2+64a^3+81b+216b^2+192b^3-9c^3
[3+8a,7+8b,0+2c]:	unknown -> [13] 132+27a+72a^2+64a^3+441b+504b^2+192b^3-9c^3
expanding queue[6]^2,meter=[2,1,2]*8: -2+3a+12a^2+16a^3+6b^3-27c-108c^2-144c^3
[1+8a,0+2b,1+8c]:	unknown -> [14] -1+3a+24a^2+64a^3+3b^3-27c-216c^2-576c^3
[5+8a,0+2b,5+8c]:	unknown -> [15] -125+75a+120a^2+64a^3+3b^3-675c-1080c^2-576c^3
expanding queue[7]^2,meter=[2,1,2]*8: -54+27a+36a^2+16a^3+6b^3-243c-324c^2-144c^3
[3+8a,0+2b,3+8c]:	unknown -> [16] -27+27a+72a^2+64a^3+3b^3-243c-648c^2-576c^3
[7+8a,0+2b,7+8c]:	unknown -> [17] -343+147a+168a^2+64a^3+3b^3-1323c-1512c^2-576c^3
expanding queue[8]^3,meter=[1,2,2]*8: 18+2a^3+81b+108b^2+48b^3-27c-108c^2-144c^3
[0+2a,3+8b,1+8c]:	unknown -> [18] 9+a^3+81b+216b^2+192b^3-27c-216c^2-576c^3
[0+2a,7+8b,5+8c]:	unknown -> [19] -12+a^3+441b+504b^2+192b^3-675c-1080c^2-576c^3
expanding queue[9]^3,meter=[1,2,2]*8: -60+2a^3+9b+36b^2+48b^3-243c-324c^2-144c^3
[0+2a,1+8b,3+8c]:	unknown -> [20] -30+a^3+9b+72b^2+192b^3-243c-648c^2-576c^3
[0+2a,5+8b,7+8c]:	unknown -> [21] -339+a^3+225b+360b^2+192b^3-1323c-1512c^2-576c^3
----------------
expanding queue[10]^4,meter=[2,2,2]*16: 16+75a+120a^2+64a^3+9b+72b^2+192b^3-9c^3
[5+16a,1+16b,0+4c]:	unknown -> [22] 8+75a+240a^2+256a^3+9b+144b^2+768b^3-36c^3
[13+16a,9+16b,0+4c]:	unknown -> [23] 274+507a+624a^2+256a^3+729b+1296b^2+768b^3-36c^3
[13+16a,1+16b,2+4c]:	unknown -> [24] 133+507a+624a^2+256a^3+9b+144b^2+768b^3-27c-54c^2-36c^3
[5+16a,9+16b,2+4c]:	unknown -> [25] 140+75a+240a^2+256a^3+729b+1296b^2+768b^3-27c-54c^2-36c^3
expanding queue[11]^4,meter=[2,2,2]*16: 47+3a+24a^2+64a^3+225b+360b^2+192b^3-9c^3
[9+16a,5+16b,0+4c]:	unknown -> [26] 69+243a+432a^2+256a^3+225b+720b^2+768b^3-36c^3
[1+16a,13+16b,0+4c]:	unknown -> [27] 412+3a+48a^2+256a^3+1521b+1872b^2+768b^3-36c^3
[1+16a,5+16b,2+4c]:	unknown -> [28] 19+3a+48a^2+256a^3+225b+720b^2+768b^3-27c-54c^2-36c^3
[9+16a,13+16b,2+4c]:	unknown -> [29] 453+243a+432a^2+256a^3+1521b+1872b^2+768b^3-27c-54c^2-36c^3
expanding queue[12]^5,meter=[2,2,2]*16: 53+147a+168a^2+64a^3+81b+216b^2+192b^3-9c^3
[15+16a,3+16b,0+4c]:	unknown -> [30] 216+675a+720a^2+256a^3+81b+432b^2+768b^3-36c^3
[7+16a,11+16b,0+4c]:	unknown -> [31] 271+147a+336a^2+256a^3+1089b+1584b^2+768b^3-36c^3
[7+16a,3+16b,2+4c]:	unknown -> [32] 22+147a+336a^2+256a^3+81b+432b^2+768b^3-27c-54c^2-36c^3
[15+16a,11+16b,2+4c]:	unknown -> [33] 456+675a+720a^2+256a^3+1089b+1584b^2+768b^3-27c-54c^2-36c^3
expanding queue[13]^5,meter=[2,2,2]*16: 132+27a+72a^2+64a^3+441b+504b^2+192b^3-9c^3
[3+16a,7+16b,0+4c]:	unknown -> [34] 66+27a+144a^2+256a^3+441b+1008b^2+768b^3-36c^3
[11+16a,15+16b,0+4c]:	unknown -> [35] 716+363a+528a^2+256a^3+2025b+2160b^2+768b^3-36c^3
[11+16a,7+16b,2+4c]:	unknown -> [36] 143+363a+528a^2+256a^3+441b+1008b^2+768b^3-27c-54c^2-36c^3
[3+16a,15+16b,2+4c]:	unknown -> [37] 630+27a+144a^2+256a^3+2025b+2160b^2+768b^3-27c-54c^2-36c^3
expanding queue[14]^6,meter=[2,2,2]*16: -1+3a+24a^2+64a^3+3b^3-27c-216c^2-576c^3
[9+16a,0+4b,1+16c]:	unknown -> [38] 45+243a+432a^2+256a^3+12b^3-27c-432c^2-2304c^3
[1+16a,2+4b,1+16c]:	unknown -> [39] 1+3a+48a^2+256a^3+9b+18b^2+12b^3-27c-432c^2-2304c^3
[1+16a,0+4b,9+16c]:	unknown -> [40] -410+3a+48a^2+256a^3+12b^3-2187c-3888c^2-2304c^3
[9+16a,2+4b,9+16c]:	unknown -> [41] -363+243a+432a^2+256a^3+9b+18b^2+12b^3-2187c-3888c^2-2304c^3
expanding queue[15]^6,meter=[2,2,2]*16: -125+75a+120a^2+64a^3+3b^3-675c-1080c^2-576c^3
[13+16a,0+4b,5+16c]:	unknown -> [42] 67+507a+624a^2+256a^3+12b^3-675c-2160c^2-2304c^3
[5+16a,2+4b,5+16c]:	unknown -> [43] -61+75a+240a^2+256a^3+9b+18b^2+12b^3-675c-2160c^2-2304c^3
[5+16a,0+4b,13+16c]:	unknown -> [44] -1228+75a+240a^2+256a^3+12b^3-4563c-5616c^2-2304c^3
[13+16a,2+4b,13+16c]:	unknown -> [45] -1097+507a+624a^2+256a^3+9b+18b^2+12b^3-4563c-5616c^2-2304c^3
expanding queue[16]^7,meter=[2,2,2]*16: -27+27a+72a^2+64a^3+3b^3-243c-648c^2-576c^3
[11+16a,0+4b,3+16c]:	unknown -> [46] 68+363a+528a^2+256a^3+12b^3-243c-1296c^2-2304c^3
[3+16a,2+4b,3+16c]:	unknown -> [47] -12+27a+144a^2+256a^3+9b+18b^2+12b^3-243c-1296c^2-2304c^3
[3+16a,0+4b,11+16c]:	unknown -> [48] -747+27a+144a^2+256a^3+12b^3-3267c-4752c^2-2304c^3
[11+16a,2+4b,11+16c]:	unknown -> [49] -664+363a+528a^2+256a^3+9b+18b^2+12b^3-3267c-4752c^2-2304c^3
expanding queue[17]^7,meter=[2,2,2]*16: -343+147a+168a^2+64a^3+3b^3-1323c-1512c^2-576c^3
[15+16a,0+4b,7+16c]:	unknown -> [50] 18+675a+720a^2+256a^3+12b^3-1323c-3024c^2-2304c^3
[7+16a,2+4b,7+16c]:	unknown -> [51] -170+147a+336a^2+256a^3+9b+18b^2+12b^3-1323c-3024c^2-2304c^3
[7+16a,0+4b,15+16c]:	unknown -> [52] -1877+147a+336a^2+256a^3+12b^3-6075c-6480c^2-2304c^3
[15+16a,2+4b,15+16c]:	unknown -> [53] -1686+675a+720a^2+256a^3+9b+18b^2+12b^3-6075c-6480c^2-2304c^3
expanding queue[18]^8,meter=[2,2,2]*16: 9+a^3+81b+216b^2+192b^3-27c-216c^2-576c^3
[2+4a,3+16b,1+16c]:	unknown -> [54] 5+3a+6a^2+4a^3+81b+432b^2+768b^3-27c-432c^2-2304c^3
[0+4a,11+16b,1+16c]:	unknown -> [55] 249+4a^3+1089b+1584b^2+768b^3-27c-432c^2-2304c^3
[0+4a,3+16b,9+16c]:	unknown -> [56] -405+4a^3+81b+432b^2+768b^3-2187c-3888c^2-2304c^3
[2+4a,11+16b,9+16c]:	unknown -> [57] -160+3a+6a^2+4a^3+1089b+1584b^2+768b^3-2187c-3888c^2-2304c^3
expanding queue[19]^8,meter=[2,2,2]*16: -12+a^3+441b+504b^2+192b^3-675c-1080c^2-576c^3
[0+4a,7+16b,5+16c]:	unknown -> [58] -6+4a^3+441b+1008b^2+768b^3-675c-2160c^2-2304c^3
[2+4a,15+16b,5+16c]:	unknown -> [59] 563+3a+6a^2+4a^3+2025b+2160b^2+768b^3-675c-2160c^2-2304c^3
[2+4a,7+16b,13+16c]:	unknown -> [60] -1171+3a+6a^2+4a^3+441b+1008b^2+768b^3-4563c-5616c^2-2304c^3
[0+4a,15+16b,13+16c]:	unknown -> [61] -603+4a^3+2025b+2160b^2+768b^3-4563c-5616c^2-2304c^3
expanding queue[20]^9,meter=[2,2,2]*16: -30+a^3+9b+72b^2+192b^3-243c-648c^2-576c^3
[0+4a,1+16b,3+16c]:	unknown -> [62] -15+4a^3+9b+144b^2+768b^3-243c-1296c^2-2304c^3
[2+4a,9+16b,3+16c]:	unknown -> [63] 122+3a+6a^2+4a^3+729b+1296b^2+768b^3-243c-1296c^2-2304c^3
[2+4a,1+16b,11+16c]:	unknown -> [64] -748+3a+6a^2+4a^3+9b+144b^2+768b^3-3267c-4752c^2-2304c^3
[0+4a,9+16b,11+16c]:	unknown -> [65] -612+4a^3+729b+1296b^2+768b^3-3267c-4752c^2-2304c^3
expanding queue[21]^9,meter=[2,2,2]*16: -339+a^3+225b+360b^2+192b^3-1323c-1512c^2-576c^3
[2+4a,5+16b,7+16c]:	unknown -> [66] -169+3a+6a^2+4a^3+225b+720b^2+768b^3-1323c-3024c^2-2304c^3
[0+4a,13+16b,7+16c]:	unknown -> [67] 219+4a^3+1521b+1872b^2+768b^3-1323c-3024c^2-2304c^3
[0+4a,5+16b,15+16c]:	unknown -> [68] -1875+4a^3+225b+720b^2+768b^3-6075c-6480c^2-2304c^3
[2+4a,13+16b,15+16c]:	unknown -> [69] -1486+3a+6a^2+4a^3+1521b+1872b^2+768b^3-6075c-6480c^2-2304c^3
Maximum level 3 reached at [70]: a^3+3b^3-9c^3
