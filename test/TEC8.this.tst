ExponentGCDs=[1,1]
Expanding for base=2, reasons+features=base,same,similiar invall,norm
Refined variables=a,b
[0+1a,0+1b]:	unknown -> [1] [0,0] a²-a³+2a*b+3a²*b+b²-3a*b²+b³+2
----------------
expanding queue[0]^-1,meter=[2,2]: a²-a³+2a*b+3a²*b+b²-3a*b²+b³+2
[1+2a,0+2b]:	unknown -> [1] [1,0] a+4a²+4a³-5b-16a*b-12a²*b+4b²+12a*b²-4b³-1
[0+2a,1+2b]:	unknown -> [2] [0,1] a-8a²+4a³-5b+8a*b-12a²*b-8b²+12a*b²-4b³-2
----------------
expanding queue[1]^0,meter=[2,2]: a+4a²+4a³-5b-16a*b-12a²*b+4b²+12a*b²-4b³-1
[3+4a,0+4b]:	unknown -> [3] [1,0] 21a+32a²+16a³-33b-80a*b-48a²*b+32b²+48a*b²-16b³+4
[1+4a,2+4b]:	unknown -> [4] [0,1] 3a+16a²-16a³+9b-16a*b+48a²*b+16b²-48a*b²+16b³+3
expanding queue[2]^0,meter=[2,2]: a-8a²+4a³-5b+8a*b-12a²*b-8b²+12a*b²-4b³-2
[0+4a,1+4b]:	unknown -> [5] [0,0] a-16a²+16a³-5b+16a*b-48a²*b-16b²+48a*b²-16b³-1
-> solution [4,1],NONTRIVIAL
[2+4a,3+4b]:	unknown -> [6] [1,1] 7a+16a²-16a³+13b-16a*b+48a²*b+16b²-48a*b²+16b³+7
----------------
expanding queue[3]^1,meter=[2,2]: 21a+32a²+16a³-33b-80a*b-48a²*b+32b²+48a*b²-16b³+4
[3+8a,0+8b]:	unknown -> [7] [0,0] 21a+64a²+64a³-33b-160a*b-192a²*b+64b²+192a*b²-64b³+2
[7+8a,4+8b]:	unknown -> [8] [1,1] 5a+64a²+64a³-49b-160a*b-192a²*b+64b²+192a*b²-64b³-12
expanding queue[4]^1,meter=[2,2]: 3a+16a²-16a³+9b-16a*b+48a²*b+16b²-48a*b²+16b³+3
[5+8a,2+8b]:	unknown -> [9] [1,0] 13a+64a²+64a³-41b-160a*b-192a²*b+64b²+192a*b²-64b³-3
[1+8a,6+8b]:	unknown -> [10] [0,1] 61a-128a²+64a³-89b+224a*b-192a²*b-128b²+192a*b²-64b³-22
expanding queue[5]^2,meter=[2,2]: a-16a²+16a³-5b+16a*b-48a²*b-16b²+48a*b²-16b³-1
[4+8a,1+8b]:	unknown -> [11] [1,0] 17a+64a²+64a³-37b-160a*b-192a²*b+64b²+192a*b²-64b³
-> solution [4,1],NONTRIVIAL
[0+8a,5+8b]:	unknown -> [12] [0,1] 65a-128a²+64a³-85b+224a*b-192a²*b-128b²+192a*b²-64b³-19
expanding queue[6]^2,meter=[2,2]: 7a+16a²-16a³+13b-16a*b+48a²*b+16b²-48a*b²+16b³+7
[6+8a,3+8b]:	unknown -> [13] [1,0] 9a+64a²+64a³-45b-160a*b-192a²*b+64b²+192a*b²-64b³-7
[2+8a,7+8b]:	unknown -> [14] [0,1] 57a-128a²+64a³-93b+224a*b-192a²*b-128b²+192a*b²-64b³-26
----------------
expanding queue[7]^3,meter=[2,2]: 21a+64a²+64a³-33b-160a*b-192a²*b+64b²+192a*b²-64b³+2
[3+16a,0+16b]:	unknown -> [15] [0,0] 21a+128a²+256a³-33b-320a*b-768a²*b+128b²+768a*b²-256b³+1
[11+16a,8+16b]:	unknown -> [16] [1,1] 11a-128a²-256a³+65b+320a*b+768a²*b-128b²-768a*b²+256b³+21
expanding queue[8]^3,meter=[2,2]: 5a+64a²+64a³-49b-160a*b-192a²*b+64b²+192a*b²-64b³-12
[7+16a,4+16b]:	unknown -> [17] [0,0] 5a+128a²+256a³-49b-320a*b-768a²*b+128b²+768a*b²-256b³-6
[15+16a,12+16b]:	unknown -> [18] [1,1] 27a-128a²-256a³+81b+320a*b+768a²*b-128b²-768a*b²+256b³+44
expanding queue[9]^4,meter=[2,2]: 13a+64a²+64a³-41b-160a*b-192a²*b+64b²+192a*b²-64b³-3
[13+16a,2+16b]:	unknown -> [19] [1,0] 333a+512a²+256a³-393b-1088a*b-768a²*b+512b²+768a*b²-256b³+69
[5+16a,10+16b]:	unknown -> [20] [0,1] 45a-256a²+256a³-105b+448a*b-768a²*b-256b²+768a*b²-256b³-22
expanding queue[10]^4,meter=[2,2]: 61a-128a²+64a³-89b+224a*b-192a²*b-128b²+192a*b²-64b³-22
[1+16a,6+16b]:	unknown -> [21] [0,0] 61a-256a²+256a³-89b+448a*b-768a²*b-256b²+768a*b²-256b³-11
[9+16a,14+16b]:	unknown -> [22] [1,1] 29a-256a²+256a³-121b+448a*b-768a²*b-256b²+768a*b²-256b³-41
expanding queue[11]^5,meter=[2,2]: 17a+64a²+64a³-37b-160a*b-192a²*b+64b²+192a*b²-64b³
[4+16a,1+16b]:	unknown -> [23] [0,0] 17a+128a²+256a³-37b-320a*b-768a²*b+128b²+768a*b²-256b³
-> solution [4,1],NONTRIVIAL
[12+16a,9+16b]:	unknown -> [24] [1,1] 15a-128a²-256a³+69b+320a*b+768a²*b-128b²-768a*b²+256b³+26
expanding queue[12]^5,meter=[2,2]: 65a-128a²+64a³-85b+224a*b-192a²*b-128b²+192a*b²-64b³-19
[8+16a,5+16b]:	unknown -> [25] [1,0] a+128a²+256a³-53b-320a*b-768a²*b+128b²+768a*b²-256b³-9
[0+16a,13+16b]:	unknown -> [26] [0,1] 481a-640a²+256a³-533b+1216a*b-768a²*b-640b²+768a*b²-256b³-148
expanding queue[13]^6,meter=[2,2]: 9a+64a²+64a³-45b-160a*b-192a²*b+64b²+192a*b²-64b³-7
[14+16a,3+16b]:	unknown -> [27] [1,0] 329a+512a²+256a³-397b-1088a*b-768a²*b+512b²+768a*b²-256b³+65
[6+16a,11+16b]:	unknown -> [28] [0,1] 41a-256a²+256a³-109b+448a*b-768a²*b-256b²+768a*b²-256b³-26
expanding queue[14]^6,meter=[2,2]: 57a-128a²+64a³-93b+224a*b-192a²*b-128b²+192a*b²-64b³-26
[2+16a,7+16b]:	unknown -> [29] [0,0] 57a-256a²+256a³-93b+448a*b-768a²*b-256b²+768a*b²-256b³-13
[10+16a,15+16b]:	unknown -> [30] [1,1] 25a-256a²+256a³-125b+448a*b-768a²*b-256b²+768a*b²-256b³-47
----------------
expanding queue[15]^7,meter=[2,2]: 21a+128a²+256a³-33b-320a*b-768a²*b+128b²+768a*b²-256b³+1
[19+32a,0+32b]:	unknown -> [31] [1,0] 1045a+1792a²+1024a³-1121b-3712a*b-3072a²*b+1792b²+3072a*b²-1024b³+203
[3+32a,16+32b]:	unknown -> [32] [0,1] 469a-1280a²+1024a³-545b+2432a*b-3072a²*b-1280b²+3072a*b²-1024b³-80
expanding queue[16]^7,meter=[2,2]: 11a-128a²-256a³+65b+320a*b+768a²*b-128b²-768a*b²+256b³+21
[27+32a,8+32b]:	unknown -> [33] [1,0] 1013a+1792a²+1024a³-1153b-3712a*b-3072a²*b+1792b²+3072a*b²-1024b³+176
[11+32a,24+32b]:	unknown -> [34] [0,1] 437a-1280a²+1024a³-577b+2432a*b-3072a²*b-1280b²+3072a*b²-1024b³-107
expanding queue[17]^8,meter=[2,2]: 5a+128a²+256a³-49b-320a*b-768a²*b+128b²+768a*b²-256b³-6
[7+32a,4+32b]:	unknown -> [35] [0,0] 5a+256a²+1024a³-49b-640a*b-3072a²*b+256b²+3072a*b²-1024b³-3
[23+32a,20+32b]:	unknown -> [36] [1,1] 59a-256a²-1024a³+113b+640a*b+3072a²*b-256b²-3072a*b²+1024b³+57
expanding queue[18]^8,meter=[2,2]: 27a-128a²-256a³+81b+320a*b+768a²*b-128b²-768a*b²+256b³+44
[15+32a,12+32b]:	unknown -> [37] [0,0] 27a-256a²-1024a³+81b+640a*b+3072a²*b-256b²-3072a*b²+1024b³+22
[31+32a,28+32b]:	unknown -> [38] [1,1] 91a-256a²-1024a³+145b+640a*b+3072a²*b-256b²-3072a*b²+1024b³+108
expanding queue[19]^9,meter=[2,2]: 333a+512a²+256a³-393b-1088a*b-768a²*b+512b²+768a*b²-256b³+69
[29+32a,2+32b]:	unknown -> [39] [1,0] 2125a+2560a²+1024a³-2249b-5248a*b-3072a²*b+2560b²+3072a*b²-1024b³+585
[13+32a,18+32b]:	unknown -> [40] [0,1] 13a-512a²+1024a³-137b+896a*b-3072a²*b-512b²+3072a*b²-1024b³-34
expanding queue[20]^9,meter=[2,2]: 45a-256a²+256a³-105b+448a*b-768a²*b-256b²+768a*b²-256b³-22
[5+32a,10+32b]:	unknown -> [41] [0,0] 45a-512a²+1024a³-105b+896a*b-3072a²*b-512b²+3072a*b²-1024b³-11
[21+32a,26+32b]:	unknown -> [42] [1,1] 19a+512a²-1024a³+169b-896a*b+3072a²*b+512b²-3072a*b²+1024b³+73
expanding queue[21]^10,meter=[2,2]: 61a-256a²+256a³-89b+448a*b-768a²*b-256b²+768a*b²-256b³-11
[17+32a,6+32b]:	unknown -> [43] [1,0] 317a+1024a²+1024a³-409b-2176a*b-3072a²*b+1024b²+3072a*b²-1024b³+25
[1+32a,22+32b]:	unknown -> [44] [0,1] 1277a-2048a²+1024a³-1369b+3968a*b-3072a²*b-2048b²+3072a*b²-1024b³-306
expanding queue[22]^10,meter=[2,2]: 29a-256a²+256a³-121b+448a*b-768a²*b-256b²+768a*b²-256b³-41
[25+32a,14+32b]:	unknown -> [45] [1,0] 285a+1024a²+1024a³-441b-2176a*b-3072a²*b+1024b²+3072a*b²-1024b³-6
[9+32a,30+32b]:	unknown -> [46] [0,1] 1245a-2048a²+1024a³-1401b+3968a*b-3072a²*b-2048b²+3072a*b²-1024b³-337
expanding queue[23]^11,meter=[2,2]: 17a+128a²+256a³-37b-320a*b-768a²*b+128b²+768a*b²-256b³
[4+32a,1+32b]:	unknown -> [47] [0,0] 17a+256a²+1024a³-37b-640a*b-3072a²*b+256b²+3072a*b²-1024b³
-> solution [4,1],NONTRIVIAL
[20+32a,17+32b]:	unknown -> [48] [1,1] 47a-256a²-1024a³+101b+640a*b+3072a²*b-256b²-3072a*b²+1024b³+42
expanding queue[24]^11,meter=[2,2]: 15a-128a²-256a³+69b+320a*b+768a²*b-128b²-768a*b²+256b³+26
[12+32a,9+32b]:	unknown -> [49] [0,0] 15a-256a²-1024a³+69b+640a*b+3072a²*b-256b²-3072a*b²+1024b³+13
[28+32a,25+32b]:	unknown -> [50] [1,1] 79a-256a²-1024a³+133b+640a*b+3072a²*b-256b²-3072a*b²+1024b³+87
expanding queue[25]^12,meter=[2,2]: a+128a²+256a³-53b-320a*b-768a²*b+128b²+768a*b²-256b³-9
[24+32a,5+32b]:	unknown -> [51] [1,0] 1025a+1792a²+1024a³-1141b-3712a*b-3072a²*b+1792b²+3072a*b²-1024b³+188
[8+32a,21+32b]:	unknown -> [52] [0,1] 449a-1280a²+1024a³-565b+2432a*b-3072a²*b-1280b²+3072a*b²-1024b³-95
expanding queue[26]^12,meter=[2,2]: 481a-640a²+256a³-533b+1216a*b-768a²*b-640b²+768a*b²-256b³-148
[0+32a,13+32b]:	unknown -> [53] [0,0] 481a-1280a²+1024a³-533b+2432a*b-3072a²*b-1280b²+3072a*b²-1024b³-74
[16+32a,29+32b]:	unknown -> [54] [1,1] 417a-1280a²+1024a³-597b+2432a*b-3072a²*b-1280b²+3072a*b²-1024b³-132
expanding queue[27]^13,meter=[2,2]: 329a+512a²+256a³-397b-1088a*b-768a²*b+512b²+768a*b²-256b³+65
[30+32a,3+32b]:	unknown -> [55] [1,0] 2121a+2560a²+1024a³-2253b-5248a*b-3072a²*b+2560b²+3072a*b²-1024b³+581
[14+32a,19+32b]:	unknown -> [56] [0,1] 9a-512a²+1024a³-141b+896a*b-3072a²*b-512b²+3072a*b²-1024b³-38
expanding queue[28]^13,meter=[2,2]: 41a-256a²+256a³-109b+448a*b-768a²*b-256b²+768a*b²-256b³-26
[6+32a,11+32b]:	unknown -> [57] [0,0] 41a-512a²+1024a³-109b+896a*b-3072a²*b-512b²+3072a*b²-1024b³-13
[22+32a,27+32b]:	unknown -> [58] [1,1] 23a+512a²-1024a³+173b-896a*b+3072a²*b+512b²-3072a*b²+1024b³+79
expanding queue[29]^14,meter=[2,2]: 57a-256a²+256a³-93b+448a*b-768a²*b-256b²+768a*b²-256b³-13
[18+32a,7+32b]:	unknown -> [59] [1,0] 313a+1024a²+1024a³-413b-2176a*b-3072a²*b+1024b²+3072a*b²-1024b³+22
[2+32a,23+32b]:	unknown -> [60] [0,1] 1273a-2048a²+1024a³-1373b+3968a*b-3072a²*b-2048b²+3072a*b²-1024b³-309
expanding queue[30]^14,meter=[2,2]: 25a-256a²+256a³-125b+448a*b-768a²*b-256b²+768a*b²-256b³-47
[26+32a,15+32b]:	unknown -> [61] [1,0] 281a+1024a²+1024a³-445b-2176a*b-3072a²*b+1024b²+3072a*b²-1024b³-11
[10+32a,31+32b]:	unknown -> [62] [0,1] 1241a-2048a²+1024a³-1405b+3968a*b-3072a²*b-2048b²+3072a*b²-1024b³-342
Maximum level 4 [63] mod 2: a²-a³+2a*b+3a²*b+b²-3a*b²+b³+2
