ExponentGCDs=[1,1]
Expanding for base=2, reasons+features=base,same,similiar norm,invall
Refined variables=a,b
[0+1a,0+1b]:	unknown -> [1] 2+a^2-a^3+2a*b+3a^2*b+b^2-3a*b^2+b^3
----------------
expanding queue[0]^-1,meter=[2,2]*2: 2+a^2-a^3+2a*b+3a^2*b+b^2-3a*b^2+b^3
[1+2a,0+2b]:	unknown -> [1] 1-a-4a^2-4a^3+5b+16a*b+12a^2*b-4b^2-12a*b^2+4b^3
[0+2a,1+2b]:	unknown -> [2] 2-a+8a^2-4a^3+5b-8a*b+12a^2*b+8b^2-12a*b^2+4b^3
----------------
expanding queue[1]^0,meter=[2,2]*4: 1-a-4a^2-4a^3+5b+16a*b+12a^2*b-4b^2-12a*b^2+4b^3
[3+4a,0+4b]:	unknown -> [3] -4-21a-32a^2-16a^3+33b+80a*b+48a^2*b-32b^2-48a*b^2+16b^3
[1+4a,2+4b]:	unknown -> [4] 3+3a+16a^2-16a^3+9b-16a*b+48a^2*b+16b^2-48a*b^2+16b^3
expanding queue[2]^0,meter=[2,2]*4: 2-a+8a^2-4a^3+5b-8a*b+12a^2*b+8b^2-12a*b^2+4b^3
[0+4a,1+4b]:	unknown -> [5] 1-a+16a^2-16a^3+5b-16a*b+48a^2*b+16b^2-48a*b^2+16b^3
-> solution [4,1],NONTRIVIAL
[2+4a,3+4b]:	unknown -> [6] 7+7a+16a^2-16a^3+13b-16a*b+48a^2*b+16b^2-48a*b^2+16b^3
----------------
expanding queue[3]^1,meter=[2,2]*8: -4-21a-32a^2-16a^3+33b+80a*b+48a^2*b-32b^2-48a*b^2+16b^3
[3+8a,0+8b]:	unknown -> [7] -2-21a-64a^2-64a^3+33b+160a*b+192a^2*b-64b^2-192a*b^2+64b^3
[7+8a,4+8b]:	unknown -> [8] 12-5a-64a^2-64a^3+49b+160a*b+192a^2*b-64b^2-192a*b^2+64b^3
expanding queue[4]^1,meter=[2,2]*8: 3+3a+16a^2-16a^3+9b-16a*b+48a^2*b+16b^2-48a*b^2+16b^3
[5+8a,2+8b]:	unknown -> [9] 3-13a-64a^2-64a^3+41b+160a*b+192a^2*b-64b^2-192a*b^2+64b^3
[1+8a,6+8b]:	unknown -> [10] 22-61a+128a^2-64a^3+89b-224a*b+192a^2*b+128b^2-192a*b^2+64b^3
expanding queue[5]^2,meter=[2,2]*8: 1-a+16a^2-16a^3+5b-16a*b+48a^2*b+16b^2-48a*b^2+16b^3
[4+8a,1+8b]:	unknown -> [11] -17a-64a^2-64a^3+37b+160a*b+192a^2*b-64b^2-192a*b^2+64b^3
-> solution [4,1],NONTRIVIAL
[0+8a,5+8b]:	unknown -> [12] 19-65a+128a^2-64a^3+85b-224a*b+192a^2*b+128b^2-192a*b^2+64b^3
expanding queue[6]^2,meter=[2,2]*8: 7+7a+16a^2-16a^3+13b-16a*b+48a^2*b+16b^2-48a*b^2+16b^3
[6+8a,3+8b]:	unknown -> [13] 7-9a-64a^2-64a^3+45b+160a*b+192a^2*b-64b^2-192a*b^2+64b^3
[2+8a,7+8b]:	unknown -> [14] 26-57a+128a^2-64a^3+93b-224a*b+192a^2*b+128b^2-192a*b^2+64b^3
----------------
expanding queue[7]^3,meter=[2,2]*16: -2-21a-64a^2-64a^3+33b+160a*b+192a^2*b-64b^2-192a*b^2+64b^3
[3+16a,0+16b]:	unknown -> [15] -1-21a-128a^2-256a^3+33b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
[11+16a,8+16b]:	unknown -> [16] 21+11a-128a^2-256a^3+65b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
expanding queue[8]^3,meter=[2,2]*16: 12-5a-64a^2-64a^3+49b+160a*b+192a^2*b-64b^2-192a*b^2+64b^3
[7+16a,4+16b]:	unknown -> [17] 6-5a-128a^2-256a^3+49b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
[15+16a,12+16b]:	unknown -> [18] 44+27a-128a^2-256a^3+81b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
expanding queue[9]^4,meter=[2,2]*16: 3-13a-64a^2-64a^3+41b+160a*b+192a^2*b-64b^2-192a*b^2+64b^3
[13+16a,2+16b]:	unknown -> [19] -69-333a-512a^2-256a^3+393b+1088a*b+768a^2*b-512b^2-768a*b^2+256b^3
[5+16a,10+16b]:	unknown -> [20] 22-45a+256a^2-256a^3+105b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
expanding queue[10]^4,meter=[2,2]*16: 22-61a+128a^2-64a^3+89b-224a*b+192a^2*b+128b^2-192a*b^2+64b^3
[1+16a,6+16b]:	unknown -> [21] 11-61a+256a^2-256a^3+89b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
[9+16a,14+16b]:	unknown -> [22] 41-29a+256a^2-256a^3+121b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
expanding queue[11]^5,meter=[2,2]*16: -17a-64a^2-64a^3+37b+160a*b+192a^2*b-64b^2-192a*b^2+64b^3
[4+16a,1+16b]:	unknown -> [23] -17a-128a^2-256a^3+37b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
-> solution [4,1],NONTRIVIAL
[12+16a,9+16b]:	unknown -> [24] 26+15a-128a^2-256a^3+69b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
expanding queue[12]^5,meter=[2,2]*16: 19-65a+128a^2-64a^3+85b-224a*b+192a^2*b+128b^2-192a*b^2+64b^3
[8+16a,5+16b]:	unknown -> [25] 9-a-128a^2-256a^3+53b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
[0+16a,13+16b]:	unknown -> [26] 148-481a+640a^2-256a^3+533b-1216a*b+768a^2*b+640b^2-768a*b^2+256b^3
expanding queue[13]^6,meter=[2,2]*16: 7-9a-64a^2-64a^3+45b+160a*b+192a^2*b-64b^2-192a*b^2+64b^3
[14+16a,3+16b]:	unknown -> [27] -65-329a-512a^2-256a^3+397b+1088a*b+768a^2*b-512b^2-768a*b^2+256b^3
[6+16a,11+16b]:	unknown -> [28] 26-41a+256a^2-256a^3+109b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
expanding queue[14]^6,meter=[2,2]*16: 26-57a+128a^2-64a^3+93b-224a*b+192a^2*b+128b^2-192a*b^2+64b^3
[2+16a,7+16b]:	unknown -> [29] 13-57a+256a^2-256a^3+93b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
[10+16a,15+16b]:	unknown -> [30] 47-25a+256a^2-256a^3+125b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
----------------
expanding queue[15]^7,meter=[2,2]*32: -1-21a-128a^2-256a^3+33b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
[19+32a,0+32b]:	unknown -> [31] -203-1045a-1792a^2-1024a^3+1121b+3712a*b+3072a^2*b-1792b^2-3072a*b^2+1024b^3
[3+32a,16+32b]:	unknown -> [32] 80-469a+1280a^2-1024a^3+545b-2432a*b+3072a^2*b+1280b^2-3072a*b^2+1024b^3
expanding queue[16]^7,meter=[2,2]*32: 21+11a-128a^2-256a^3+65b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
[27+32a,8+32b]:	unknown -> [33] -176-1013a-1792a^2-1024a^3+1153b+3712a*b+3072a^2*b-1792b^2-3072a*b^2+1024b^3
[11+32a,24+32b]:	unknown -> [34] 107-437a+1280a^2-1024a^3+577b-2432a*b+3072a^2*b+1280b^2-3072a*b^2+1024b^3
expanding queue[17]^8,meter=[2,2]*32: 6-5a-128a^2-256a^3+49b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
[7+32a,4+32b]:	unknown -> [35] 3-5a-256a^2-1024a^3+49b+640a*b+3072a^2*b-256b^2-3072a*b^2+1024b^3
[23+32a,20+32b]:	unknown -> [36] 57+59a-256a^2-1024a^3+113b+640a*b+3072a^2*b-256b^2-3072a*b^2+1024b^3
expanding queue[18]^8,meter=[2,2]*32: 44+27a-128a^2-256a^3+81b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
[15+32a,12+32b]:	unknown -> [37] 22+27a-256a^2-1024a^3+81b+640a*b+3072a^2*b-256b^2-3072a*b^2+1024b^3
[31+32a,28+32b]:	unknown -> [38] 108+91a-256a^2-1024a^3+145b+640a*b+3072a^2*b-256b^2-3072a*b^2+1024b^3
expanding queue[19]^9,meter=[2,2]*32: -69-333a-512a^2-256a^3+393b+1088a*b+768a^2*b-512b^2-768a*b^2+256b^3
[29+32a,2+32b]:	unknown -> [39] -585-2125a-2560a^2-1024a^3+2249b+5248a*b+3072a^2*b-2560b^2-3072a*b^2+1024b^3
[13+32a,18+32b]:	unknown -> [40] 34-13a+512a^2-1024a^3+137b-896a*b+3072a^2*b+512b^2-3072a*b^2+1024b^3
expanding queue[20]^9,meter=[2,2]*32: 22-45a+256a^2-256a^3+105b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
[5+32a,10+32b]:	unknown -> [41] 11-45a+512a^2-1024a^3+105b-896a*b+3072a^2*b+512b^2-3072a*b^2+1024b^3
[21+32a,26+32b]:	unknown -> [42] 73+19a+512a^2-1024a^3+169b-896a*b+3072a^2*b+512b^2-3072a*b^2+1024b^3
expanding queue[21]^10,meter=[2,2]*32: 11-61a+256a^2-256a^3+89b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
[17+32a,6+32b]:	unknown -> [43] -25-317a-1024a^2-1024a^3+409b+2176a*b+3072a^2*b-1024b^2-3072a*b^2+1024b^3
[1+32a,22+32b]:	unknown -> [44] 306-1277a+2048a^2-1024a^3+1369b-3968a*b+3072a^2*b+2048b^2-3072a*b^2+1024b^3
expanding queue[22]^10,meter=[2,2]*32: 41-29a+256a^2-256a^3+121b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
[25+32a,14+32b]:	unknown -> [45] 6-285a-1024a^2-1024a^3+441b+2176a*b+3072a^2*b-1024b^2-3072a*b^2+1024b^3
[9+32a,30+32b]:	unknown -> [46] 337-1245a+2048a^2-1024a^3+1401b-3968a*b+3072a^2*b+2048b^2-3072a*b^2+1024b^3
expanding queue[23]^11,meter=[2,2]*32: -17a-128a^2-256a^3+37b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
[4+32a,1+32b]:	unknown -> [47] -17a-256a^2-1024a^3+37b+640a*b+3072a^2*b-256b^2-3072a*b^2+1024b^3
-> solution [4,1],NONTRIVIAL
[20+32a,17+32b]:	unknown -> [48] 42+47a-256a^2-1024a^3+101b+640a*b+3072a^2*b-256b^2-3072a*b^2+1024b^3
expanding queue[24]^11,meter=[2,2]*32: 26+15a-128a^2-256a^3+69b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
[12+32a,9+32b]:	unknown -> [49] 13+15a-256a^2-1024a^3+69b+640a*b+3072a^2*b-256b^2-3072a*b^2+1024b^3
[28+32a,25+32b]:	unknown -> [50] 87+79a-256a^2-1024a^3+133b+640a*b+3072a^2*b-256b^2-3072a*b^2+1024b^3
expanding queue[25]^12,meter=[2,2]*32: 9-a-128a^2-256a^3+53b+320a*b+768a^2*b-128b^2-768a*b^2+256b^3
[24+32a,5+32b]:	unknown -> [51] -188-1025a-1792a^2-1024a^3+1141b+3712a*b+3072a^2*b-1792b^2-3072a*b^2+1024b^3
[8+32a,21+32b]:	unknown -> [52] 95-449a+1280a^2-1024a^3+565b-2432a*b+3072a^2*b+1280b^2-3072a*b^2+1024b^3
expanding queue[26]^12,meter=[2,2]*32: 148-481a+640a^2-256a^3+533b-1216a*b+768a^2*b+640b^2-768a*b^2+256b^3
[0+32a,13+32b]:	unknown -> [53] 74-481a+1280a^2-1024a^3+533b-2432a*b+3072a^2*b+1280b^2-3072a*b^2+1024b^3
[16+32a,29+32b]:	unknown -> [54] 132-417a+1280a^2-1024a^3+597b-2432a*b+3072a^2*b+1280b^2-3072a*b^2+1024b^3
expanding queue[27]^13,meter=[2,2]*32: -65-329a-512a^2-256a^3+397b+1088a*b+768a^2*b-512b^2-768a*b^2+256b^3
[30+32a,3+32b]:	unknown -> [55] -581-2121a-2560a^2-1024a^3+2253b+5248a*b+3072a^2*b-2560b^2-3072a*b^2+1024b^3
[14+32a,19+32b]:	unknown -> [56] 38-9a+512a^2-1024a^3+141b-896a*b+3072a^2*b+512b^2-3072a*b^2+1024b^3
expanding queue[28]^13,meter=[2,2]*32: 26-41a+256a^2-256a^3+109b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
[6+32a,11+32b]:	unknown -> [57] 13-41a+512a^2-1024a^3+109b-896a*b+3072a^2*b+512b^2-3072a*b^2+1024b^3
[22+32a,27+32b]:	unknown -> [58] 79+23a+512a^2-1024a^3+173b-896a*b+3072a^2*b+512b^2-3072a*b^2+1024b^3
expanding queue[29]^14,meter=[2,2]*32: 13-57a+256a^2-256a^3+93b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
[18+32a,7+32b]:	unknown -> [59] -22-313a-1024a^2-1024a^3+413b+2176a*b+3072a^2*b-1024b^2-3072a*b^2+1024b^3
[2+32a,23+32b]:	unknown -> [60] 309-1273a+2048a^2-1024a^3+1373b-3968a*b+3072a^2*b+2048b^2-3072a*b^2+1024b^3
expanding queue[30]^14,meter=[2,2]*32: 47-25a+256a^2-256a^3+125b-448a*b+768a^2*b+256b^2-768a*b^2+256b^3
[26+32a,15+32b]:	unknown -> [61] 11-281a-1024a^2-1024a^3+445b+2176a*b+3072a^2*b-1024b^2-3072a*b^2+1024b^3
[10+32a,31+32b]:	unknown -> [62] 342-1241a+2048a^2-1024a^3+1405b-3968a*b+3072a^2*b+2048b^2-3072a*b^2+1024b^3
Maximum level 4 [63] mod 2: 2+a^2-a^3+2a*b+3a^2*b+b^2-3a*b^2+b^3
