TranspositionSet={[1,0,2]}
isHomogeneous
ExponentGCDs=[2,2,2]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar,evenexp igtriv,norm,invall
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
expanding queue[2]^1,meter=[2,2,2]*8: a+2a^2+2b^2-c-2c^2
[1+8a,0+8b,1+8c]:	unknown -> [3] a+4a^2+4b^2-c-4c^2
[1+8a,4+8b,1+8c]:	unknown -> [4] 1+a+4a^2+4b+4b^2-c-4c^2
[5+8a,0+8b,5+8c]:	unknown -> [5] 5a+4a^2+4b^2-5c-4c^2
[5+8a,4+8b,5+8c]:	unknown -> [6] 1+5a+4a^2+4b+4b^2-5c-4c^2
-> solution [5,12,13],NONTRIVIAL
----------------
expanding queue[3]^2,meter=[2,2,2]*16: a+4a^2+4b^2-c-4c^2
[1+16a,0+16b,1+16c]:	unknown -> [7] a+8a^2+8b^2-c-8c^2
[1+16a,8+16b,1+16c]:	unknown -> [8] 2+a+8a^2+8b+8b^2-c-8c^2
[9+16a,0+16b,9+16c]:	unknown -> [9] 9a+8a^2+8b^2-9c-8c^2
[9+16a,8+16b,9+16c]:	unknown -> [10] 2+9a+8a^2+8b+8b^2-9c-8c^2
expanding queue[4]^2,meter=[2,2,2]*16: 1+a+4a^2+4b+4b^2-c-4c^2
[9+16a,4+16b,1+16c]:	unknown -> [11] 3+9a+8a^2+4b+8b^2-c-8c^2
[9+16a,12+16b,1+16c]:	negative-1 [11] by {b=>-b-1}
[1+16a,4+16b,9+16c]:	unknown -> [12] -2+a+8a^2+4b+8b^2-9c-8c^2
[1+16a,12+16b,9+16c]:	negative-1 [12] by {b=>-b-1}
expanding queue[5]^2,meter=[2,2,2]*16: 5a+4a^2+4b^2-5c-4c^2
[5+16a,0+16b,5+16c]:	unknown -> [13] 5a+8a^2+8b^2-5c-8c^2
[5+16a,8+16b,5+16c]:	unknown -> [14] 2+5a+8a^2+8b+8b^2-5c-8c^2
[13+16a,0+16b,13+16c]:	unknown -> [15] 13a+8a^2+8b^2-13c-8c^2
[13+16a,8+16b,13+16c]:	unknown -> [16] 2+13a+8a^2+8b+8b^2-13c-8c^2
expanding queue[6]^2,meter=[2,2,2]*16: 1+5a+4a^2+4b+4b^2-5c-4c^2
[13+16a,4+16b,5+16c]:	unknown -> [17] 5+13a+8a^2+4b+8b^2-5c-8c^2
[13+16a,12+16b,5+16c]:	negative-1 [17] by {b=>-b-1}
[5+16a,4+16b,13+16c]:	unknown -> [18] -4+5a+8a^2+4b+8b^2-13c-8c^2
-> solution [21,20,29],NONTRIVIAL
[5+16a,12+16b,13+16c]:	negative-1 [18] by {b=>-b-1}
-> solution [5,12,13],NONTRIVIAL
----------------
expanding queue[7]^3,meter=[2,2,2]*32: a+8a^2+8b^2-c-8c^2
[1+32a,0+32b,1+32c]:	unknown -> [19] a+16a^2+16b^2-c-16c^2
[1+32a,16+32b,1+32c]:	unknown -> [20] 4+a+16a^2+16b+16b^2-c-16c^2
[17+32a,0+32b,17+32c]:	unknown -> [21] 17a+16a^2+16b^2-17c-16c^2
[17+32a,16+32b,17+32c]:	unknown -> [22] 4+17a+16a^2+16b+16b^2-17c-16c^2
expanding queue[8]^3,meter=[2,2,2]*32: 2+a+8a^2+8b+8b^2-c-8c^2
[1+32a,8+32b,1+32c]:	unknown -> [23] 1+a+16a^2+8b+16b^2-c-16c^2
[1+32a,24+32b,1+32c]:	negative-1 [23] by {b=>-b-1}
[17+32a,8+32b,17+32c]:	unknown -> [24] 1+17a+16a^2+8b+16b^2-17c-16c^2
[17+32a,24+32b,17+32c]:	negative-1 [24] by {b=>-b-1}
expanding queue[9]^3,meter=[2,2,2]*32: 9a+8a^2+8b^2-9c-8c^2
[9+32a,0+32b,9+32c]:	unknown -> [25] 9a+16a^2+16b^2-9c-16c^2
[9+32a,16+32b,9+32c]:	unknown -> [26] 4+9a+16a^2+16b+16b^2-9c-16c^2
[25+32a,0+32b,25+32c]:	unknown -> [27] 25a+16a^2+16b^2-25c-16c^2
[25+32a,16+32b,25+32c]:	unknown -> [28] 4+25a+16a^2+16b+16b^2-25c-16c^2
expanding queue[10]^3,meter=[2,2,2]*32: 2+9a+8a^2+8b+8b^2-9c-8c^2
[9+32a,8+32b,9+32c]:	unknown -> [29] 1+9a+16a^2+8b+16b^2-9c-16c^2
-> solution [9,40,41],NONTRIVIAL
[9+32a,24+32b,9+32c]:	negative-1 [29] by {b=>-b-1}
[25+32a,8+32b,25+32c]:	unknown -> [30] 1+25a+16a^2+8b+16b^2-25c-16c^2
[25+32a,24+32b,25+32c]:	negative-1 [30] by {b=>-b-1}
expanding queue[11]^4,meter=[2,2,2]*32: 3+9a+8a^2+4b+8b^2-c-8c^2
[25+32a,4+32b,1+32c]:	unknown -> [31] 10+25a+16a^2+4b+16b^2-c-16c^2
[25+32a,20+32b,1+32c]:	unknown -> [32] 16+25a+16a^2+20b+16b^2-c-16c^2
[9+32a,4+32b,17+32c]:	unknown -> [33] -3+9a+16a^2+4b+16b^2-17c-16c^2
[9+32a,20+32b,17+32c]:	unknown -> [34] 3+9a+16a^2+20b+16b^2-17c-16c^2
expanding queue[12]^4,meter=[2,2,2]*32: -2+a+8a^2+4b+8b^2-9c-8c^2
[1+32a,4+32b,9+32c]:	unknown -> [35] -1+a+16a^2+4b+16b^2-9c-16c^2
[1+32a,20+32b,9+32c]:	unknown -> [36] 5+a+16a^2+20b+16b^2-9c-16c^2
[17+32a,4+32b,25+32c]:	unknown -> [37] -5+17a+16a^2+4b+16b^2-25c-16c^2
[17+32a,20+32b,25+32c]:	unknown -> [38] 1+17a+16a^2+20b+16b^2-25c-16c^2
expanding queue[13]^5,meter=[2,2,2]*32: 5a+8a^2+8b^2-5c-8c^2
[5+32a,0+32b,5+32c]:	unknown -> [39] 5a+16a^2+16b^2-5c-16c^2
[5+32a,16+32b,5+32c]:	unknown -> [40] 4+5a+16a^2+16b+16b^2-5c-16c^2
[21+32a,0+32b,21+32c]:	unknown -> [41] 21a+16a^2+16b^2-21c-16c^2
[21+32a,16+32b,21+32c]:	unknown -> [42] 4+21a+16a^2+16b+16b^2-21c-16c^2
expanding queue[14]^5,meter=[2,2,2]*32: 2+5a+8a^2+8b+8b^2-5c-8c^2
[5+32a,8+32b,5+32c]:	unknown -> [43] 1+5a+16a^2+8b+16b^2-5c-16c^2
[5+32a,24+32b,5+32c]:	negative-1 [43] by {b=>-b-1}
[21+32a,8+32b,21+32c]:	unknown -> [44] 1+21a+16a^2+8b+16b^2-21c-16c^2
[21+32a,24+32b,21+32c]:	negative-1 [44] by {b=>-b-1}
expanding queue[15]^5,meter=[2,2,2]*32: 13a+8a^2+8b^2-13c-8c^2
[13+32a,0+32b,13+32c]:	unknown -> [45] 13a+16a^2+16b^2-13c-16c^2
[13+32a,16+32b,13+32c]:	unknown -> [46] 4+13a+16a^2+16b+16b^2-13c-16c^2
[29+32a,0+32b,29+32c]:	unknown -> [47] 29a+16a^2+16b^2-29c-16c^2
[29+32a,16+32b,29+32c]:	unknown -> [48] 4+29a+16a^2+16b+16b^2-29c-16c^2
expanding queue[16]^5,meter=[2,2,2]*32: 2+13a+8a^2+8b+8b^2-13c-8c^2
[13+32a,8+32b,13+32c]:	unknown -> [49] 1+13a+16a^2+8b+16b^2-13c-16c^2
[13+32a,24+32b,13+32c]:	negative-1 [49] by {b=>-b-1}
[29+32a,8+32b,29+32c]:	unknown -> [50] 1+29a+16a^2+8b+16b^2-29c-16c^2
[29+32a,24+32b,29+32c]:	negative-1 [50] by {b=>-b-1}
expanding queue[17]^6,meter=[2,2,2]*32: 5+13a+8a^2+4b+8b^2-5c-8c^2
[29+32a,4+32b,5+32c]:	unknown -> [51] 13+29a+16a^2+4b+16b^2-5c-16c^2
[29+32a,20+32b,5+32c]:	unknown -> [52] 19+29a+16a^2+20b+16b^2-5c-16c^2
[13+32a,4+32b,21+32c]:	unknown -> [53] -4+13a+16a^2+4b+16b^2-21c-16c^2
[13+32a,20+32b,21+32c]:	unknown -> [54] 2+13a+16a^2+20b+16b^2-21c-16c^2
expanding queue[18]^6,meter=[2,2,2]*32: -4+5a+8a^2+4b+8b^2-13c-8c^2
[5+32a,4+32b,13+32c]:	unknown -> [55] -2+5a+16a^2+4b+16b^2-13c-16c^2
[5+32a,20+32b,13+32c]:	unknown -> [56] 4+5a+16a^2+20b+16b^2-13c-16c^2
[21+32a,4+32b,29+32c]:	unknown -> [57] -6+21a+16a^2+4b+16b^2-29c-16c^2
[21+32a,20+32b,29+32c]:	unknown -> [58] 21a+16a^2+20b+16b^2-29c-16c^2
-> solution [21,20,29],NONTRIVIAL
Maximum level 4 at [59]: a^2+b^2-c^2
