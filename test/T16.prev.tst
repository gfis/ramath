TranspositionSet={[1,0,2]}
isHomogeneous
ExponentGCDs=[2,2,2]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar,evenexp,pythagoras igtriv,norm
Refined variables=a,b,c
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a^2+b^2-c^2
[0+2a,0+2b,0+2c]:	non-primitive
[1+2a,0+2b,1+2c]:	unknown -> [1] a+a^2+b^2-c-c^2
[0+2a,1+2b,1+2c]:	transposed [1] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]*4: a+a^2+b^2-c-c^2
[1+4a,0+4b,1+4c]:	unknown -> [2] a+2a^2+2b^2-c-2c^2
[3+4a,0+4b,1+4c]:	negative-1 [2] by {a=>-a-1}
-> solution [3,4,5],NONTRIVIAL
[1+4a,0+4b,3+4c]:	negative-1 [2] by {c=>-c-1}
[3+4a,0+4b,3+4c]:	negative-1 [2] by {a=>-a-1,c=>-c-1}
----------------
expanding queue[2]^1,meter=[2,1,2]*8: a+2a^2+2b^2-c-2c^2
[1+8a,0+4b,1+8c]:	unknown -> [3] a+4a^2+b^2-c-4c^2
[5+8a,0+4b,5+8c]:	unknown -> [4] 5a+4a^2+b^2-5c-4c^2
----------------
expanding queue[3]^2,meter=[2,2,2]*16: a+4a^2+b^2-c-4c^2
[1+16a,0+8b,1+16c]:	unknown -> [5] a+8a^2+2b^2-c-8c^2
[9+16a,4+8b,1+16c]:	unknown -> [6] 3+9a+8a^2+2b+2b^2-c-8c^2
[9+16a,0+8b,9+16c]:	unknown -> [7] 9a+8a^2+2b^2-9c-8c^2
[1+16a,4+8b,9+16c]:	unknown -> [8] -2+a+8a^2+2b+2b^2-9c-8c^2
expanding queue[4]^2,meter=[2,2,2]*16: 5a+4a^2+b^2-5c-4c^2
[5+16a,0+8b,5+16c]:	unknown -> [9] 5a+8a^2+2b^2-5c-8c^2
[13+16a,4+8b,5+16c]:	unknown -> [10] 5+13a+8a^2+2b+2b^2-5c-8c^2
[13+16a,0+8b,13+16c]:	unknown -> [11] 13a+8a^2+2b^2-13c-8c^2
[5+16a,4+8b,13+16c]:	unknown -> [12] -4+5a+8a^2+2b+2b^2-13c-8c^2
-> solution [5,12,13],NONTRIVIAL
----------------
expanding queue[5]^3,meter=[2,1,2]*32: a+8a^2+2b^2-c-8c^2
[1+32a,0+8b,1+32c]:	unknown -> [13] a+16a^2+b^2-c-16c^2
[17+32a,0+8b,17+32c]:	unknown -> [14] 17a+16a^2+b^2-17c-16c^2
expanding queue[6]^3,meter=[2,1,2]*32: 3+9a+8a^2+2b+2b^2-c-8c^2
[25+32a,4+8b,1+32c]:	unknown -> [15] 10+25a+16a^2+b+b^2-c-16c^2
[9+32a,4+8b,17+32c]:	unknown -> [16] -3+9a+16a^2+b+b^2-17c-16c^2
expanding queue[7]^3,meter=[2,1,2]*32: 9a+8a^2+2b^2-9c-8c^2
[9+32a,0+8b,9+32c]:	unknown -> [17] 9a+16a^2+b^2-9c-16c^2
[25+32a,0+8b,25+32c]:	unknown -> [18] 25a+16a^2+b^2-25c-16c^2
expanding queue[8]^3,meter=[2,1,2]*32: -2+a+8a^2+2b+2b^2-9c-8c^2
[1+32a,4+8b,9+32c]:	unknown -> [19] -1+a+16a^2+b+b^2-9c-16c^2
[17+32a,4+8b,25+32c]:	unknown -> [20] -5+17a+16a^2+b+b^2-25c-16c^2
expanding queue[9]^4,meter=[2,1,2]*32: 5a+8a^2+2b^2-5c-8c^2
[5+32a,0+8b,5+32c]:	unknown -> [21] 5a+16a^2+b^2-5c-16c^2
[21+32a,0+8b,21+32c]:	unknown -> [22] 21a+16a^2+b^2-21c-16c^2
expanding queue[10]^4,meter=[2,1,2]*32: 5+13a+8a^2+2b+2b^2-5c-8c^2
[29+32a,4+8b,5+32c]:	unknown -> [23] 13+29a+16a^2+b+b^2-5c-16c^2
[13+32a,4+8b,21+32c]:	unknown -> [24] -4+13a+16a^2+b+b^2-21c-16c^2
expanding queue[11]^4,meter=[2,1,2]*32: 13a+8a^2+2b^2-13c-8c^2
[13+32a,0+8b,13+32c]:	unknown -> [25] 13a+16a^2+b^2-13c-16c^2
[29+32a,0+8b,29+32c]:	unknown -> [26] 29a+16a^2+b^2-29c-16c^2
expanding queue[12]^4,meter=[2,1,2]*32: -4+5a+8a^2+2b+2b^2-13c-8c^2
[5+32a,4+8b,13+32c]:	unknown -> [27] -2+5a+16a^2+b+b^2-13c-16c^2
-> solution [5,12,13],NONTRIVIAL
[21+32a,4+8b,29+32c]:	unknown -> [28] -6+21a+16a^2+b+b^2-29c-16c^2
----------------
expanding queue[13]^5,meter=[2,2,2]*64: a+16a^2+b^2-c-16c^2
[1+64a,0+16b,1+64c]:	unknown -> [29] a+32a^2+2b^2-c-32c^2
[33+64a,8+16b,1+64c]:	unknown -> [30] 9+33a+32a^2+2b+2b^2-c-32c^2
[33+64a,0+16b,33+64c]:	unknown -> [31] 33a+32a^2+2b^2-33c-32c^2
[1+64a,8+16b,33+64c]:	unknown -> [32] -8+a+32a^2+2b+2b^2-33c-32c^2
expanding queue[14]^5,meter=[2,2,2]*64: 17a+16a^2+b^2-17c-16c^2
[17+64a,0+16b,17+64c]:	unknown -> [33] 17a+32a^2+2b^2-17c-32c^2
[49+64a,8+16b,17+64c]:	unknown -> [34] 17+49a+32a^2+2b+2b^2-17c-32c^2
[49+64a,0+16b,49+64c]:	unknown -> [35] 49a+32a^2+2b^2-49c-32c^2
[17+64a,8+16b,49+64c]:	unknown -> [36] -16+17a+32a^2+2b+2b^2-49c-32c^2
expanding queue[15]^6,meter=[2,2,2]*64: 10+25a+16a^2+b+b^2-c-16c^2
[25+64a,4+16b,1+64c]:	unknown -> [37] 5+25a+32a^2+b+2b^2-c-32c^2
[25+64a,12+16b,1+64c]:	negative-1 [37] by {b=>-b-1}
[57+64a,4+16b,33+64c]:	unknown -> [38] 17+57a+32a^2+b+2b^2-33c-32c^2
[57+64a,12+16b,33+64c]:	negative-1 [38] by {b=>-b-1}
expanding queue[16]^6,meter=[2,2,2]*64: -3+9a+16a^2+b+b^2-17c-16c^2
[41+64a,4+16b,17+64c]:	unknown -> [39] 11+41a+32a^2+b+2b^2-17c-32c^2
[41+64a,12+16b,17+64c]:	negative-1 [39] by {b=>-b-1}
[9+64a,4+16b,49+64c]:	unknown -> [40] -18+9a+32a^2+b+2b^2-49c-32c^2
[9+64a,12+16b,49+64c]:	negative-1 [40] by {b=>-b-1}
expanding queue[17]^7,meter=[2,2,2]*64: 9a+16a^2+b^2-9c-16c^2
[9+64a,0+16b,9+64c]:	unknown -> [41] 9a+32a^2+2b^2-9c-32c^2
[41+64a,8+16b,9+64c]:	unknown -> [42] 13+41a+32a^2+2b+2b^2-9c-32c^2
[41+64a,0+16b,41+64c]:	unknown -> [43] 41a+32a^2+2b^2-41c-32c^2
[9+64a,8+16b,41+64c]:	unknown -> [44] -12+9a+32a^2+2b+2b^2-41c-32c^2
expanding queue[18]^7,meter=[2,2,2]*64: 25a+16a^2+b^2-25c-16c^2
[25+64a,0+16b,25+64c]:	unknown -> [45] 25a+32a^2+2b^2-25c-32c^2
[57+64a,8+16b,25+64c]:	unknown -> [46] 21+57a+32a^2+2b+2b^2-25c-32c^2
[57+64a,0+16b,57+64c]:	unknown -> [47] 57a+32a^2+2b^2-57c-32c^2
[25+64a,8+16b,57+64c]:	unknown -> [48] -20+25a+32a^2+2b+2b^2-57c-32c^2
expanding queue[19]^8,meter=[2,2,2]*64: -1+a+16a^2+b+b^2-9c-16c^2
[33+64a,4+16b,9+64c]:	unknown -> [49] 8+33a+32a^2+b+2b^2-9c-32c^2
[33+64a,12+16b,9+64c]:	negative-1 [49] by {b=>-b-1}
[1+64a,4+16b,41+64c]:	unknown -> [50] -13+a+32a^2+b+2b^2-41c-32c^2
[1+64a,12+16b,41+64c]:	negative-1 [50] by {b=>-b-1}
expanding queue[20]^8,meter=[2,2,2]*64: -5+17a+16a^2+b+b^2-25c-16c^2
[49+64a,4+16b,25+64c]:	unknown -> [51] 14+49a+32a^2+b+2b^2-25c-32c^2
[49+64a,12+16b,25+64c]:	negative-1 [51] by {b=>-b-1}
[17+64a,4+16b,57+64c]:	unknown -> [52] -23+17a+32a^2+b+2b^2-57c-32c^2
[17+64a,12+16b,57+64c]:	negative-1 [52] by {b=>-b-1}
expanding queue[21]^9,meter=[2,2,2]*64: 5a+16a^2+b^2-5c-16c^2
[5+64a,0+16b,5+64c]:	unknown -> [53] 5a+32a^2+2b^2-5c-32c^2
[37+64a,8+16b,5+64c]:	unknown -> [54] 11+37a+32a^2+2b+2b^2-5c-32c^2
[37+64a,0+16b,37+64c]:	unknown -> [55] 37a+32a^2+2b^2-37c-32c^2
[5+64a,8+16b,37+64c]:	unknown -> [56] -10+5a+32a^2+2b+2b^2-37c-32c^2
expanding queue[22]^9,meter=[2,2,2]*64: 21a+16a^2+b^2-21c-16c^2
[21+64a,0+16b,21+64c]:	unknown -> [57] 21a+32a^2+2b^2-21c-32c^2
[53+64a,8+16b,21+64c]:	unknown -> [58] 19+53a+32a^2+2b+2b^2-21c-32c^2
[53+64a,0+16b,53+64c]:	unknown -> [59] 53a+32a^2+2b^2-53c-32c^2
[21+64a,8+16b,53+64c]:	unknown -> [60] -18+21a+32a^2+2b+2b^2-53c-32c^2
expanding queue[23]^10,meter=[2,2,2]*64: 13+29a+16a^2+b+b^2-5c-16c^2
[61+64a,4+16b,5+64c]:	unknown -> [61] 29+61a+32a^2+b+2b^2-5c-32c^2
[61+64a,12+16b,5+64c]:	negative-1 [61] by {b=>-b-1}
[29+64a,4+16b,37+64c]:	unknown -> [62] -4+29a+32a^2+b+2b^2-37c-32c^2
[29+64a,12+16b,37+64c]:	negative-1 [62] by {b=>-b-1}
expanding queue[24]^10,meter=[2,2,2]*64: -4+13a+16a^2+b+b^2-21c-16c^2
[13+64a,4+16b,21+64c]:	unknown -> [63] -2+13a+32a^2+b+2b^2-21c-32c^2
[13+64a,12+16b,21+64c]:	negative-1 [63] by {b=>-b-1}
[45+64a,4+16b,53+64c]:	unknown -> [64] -6+45a+32a^2+b+2b^2-53c-32c^2
[45+64a,12+16b,53+64c]:	negative-1 [64] by {b=>-b-1}
-> solution [45,28,53],NONTRIVIAL
expanding queue[25]^11,meter=[2,2,2]*64: 13a+16a^2+b^2-13c-16c^2
[13+64a,0+16b,13+64c]:	unknown -> [65] 13a+32a^2+2b^2-13c-32c^2
[45+64a,8+16b,13+64c]:	unknown -> [66] 15+45a+32a^2+2b+2b^2-13c-32c^2
[45+64a,0+16b,45+64c]:	unknown -> [67] 45a+32a^2+2b^2-45c-32c^2
[13+64a,8+16b,45+64c]:	unknown -> [68] -14+13a+32a^2+2b+2b^2-45c-32c^2
expanding queue[26]^11,meter=[2,2,2]*64: 29a+16a^2+b^2-29c-16c^2
[29+64a,0+16b,29+64c]:	unknown -> [69] 29a+32a^2+2b^2-29c-32c^2
[61+64a,8+16b,29+64c]:	unknown -> [70] 23+61a+32a^2+2b+2b^2-29c-32c^2
[61+64a,0+16b,61+64c]:	unknown -> [71] 61a+32a^2+2b^2-61c-32c^2
[29+64a,8+16b,61+64c]:	unknown -> [72] -22+29a+32a^2+2b+2b^2-61c-32c^2
expanding queue[27]^12,meter=[2,2,2]*64: -2+5a+16a^2+b+b^2-13c-16c^2
[5+64a,4+16b,13+64c]:	unknown -> [73] -1+5a+32a^2+b+2b^2-13c-32c^2
[5+64a,12+16b,13+64c]:	negative-1 [73] by {b=>-b-1}
-> solution [5,12,13],NONTRIVIAL
[37+64a,4+16b,45+64c]:	unknown -> [74] -5+37a+32a^2+b+2b^2-45c-32c^2
[37+64a,12+16b,45+64c]:	negative-1 [74] by {b=>-b-1}
expanding queue[28]^12,meter=[2,2,2]*64: -6+21a+16a^2+b+b^2-29c-16c^2
[21+64a,4+16b,29+64c]:	unknown -> [75] -3+21a+32a^2+b+2b^2-29c-32c^2
-> solution [21,20,29],NONTRIVIAL
[21+64a,12+16b,29+64c]:	negative-1 [75] by {b=>-b-1}
[53+64a,4+16b,61+64c]:	unknown -> [76] -7+53a+32a^2+b+2b^2-61c-32c^2
[53+64a,12+16b,61+64c]:	negative-1 [76] by {b=>-b-1}
Maximum level 5 at [77]: a^2+b^2-c^2
