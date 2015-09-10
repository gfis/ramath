TranspositionSet={[1,0,2,3]}
isHomogeneous
ExponentGCDs=[1,1,2,2]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar,evenexp igtriv,norm,invall
Refined variables=a,b,c,d
----------------
expanding queue[0]^-1,meter=[2,2,2,2]*2: a^2+b^2-c^2; a*b-2d^2
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
[1+2a,0+2b,1+2c,0+2d]:	unknown -> [1] a+a^2+b^2-c-c^2; b+2a*b-4d^2
[0+2a,1+2b,1+2c,0+2d]:	transposed [1] by [1,0,2,3]
[1+2a,0+2b,1+2c,1+2d]:	unknown -> [2] a+a^2+b^2-c-c^2; -1+b+2a*b-4d-4d^2
[0+2a,1+2b,1+2c,1+2d]:	transposed [2] by [1,0,2,3]
----------------
expanding queue[1]^0,meter=[2,2,2,2]*4: a+a^2+b^2-c-c^2; b+2a*b-4d^2
[1+4a,0+4b,1+4c,0+4d]:	unknown -> [3] a+2a^2+2b^2-c-2c^2; b+4a*b-8d^2
[3+4a,0+4b,1+4c,0+4d]:	unknown -> [4] 1+3a+2a^2+2b^2-c-2c^2; 3b+4a*b-8d^2
[1+4a,0+4b,3+4c,0+4d]:	negative-1 [3] by {c=>-c-1}
[3+4a,0+4b,3+4c,0+4d]:	negative-1 [4] by {c=>-c-1}
[1+4a,0+4b,1+4c,2+4d]:	unknown -> [5] a+2a^2+2b^2-c-2c^2; -2+b+4a*b-8d-8d^2
[3+4a,0+4b,1+4c,2+4d]:	unknown -> [6] 1+3a+2a^2+2b^2-c-2c^2; -2+3b+4a*b-8d-8d^2
[1+4a,0+4b,3+4c,2+4d]:	negative-1 [5] by {c=>-c-1}
[3+4a,0+4b,3+4c,2+4d]:	negative-1 [6] by {c=>-c-1}
expanding queue[2]^0,meter=[2,2,2,2]*4: a+a^2+b^2-c-c^2; -1+b+2a*b-4d-4d^2
----------------
expanding queue[3]^1,meter=[2,2,2,2]*8: a+2a^2+2b^2-c-2c^2; b+4a*b-8d^2
[1+8a,0+8b,1+8c,0+8d]:	unknown -> [7] a+4a^2+4b^2-c-4c^2; b+8a*b-16d^2
[5+8a,0+8b,5+8c,0+8d]:	unknown -> [8] 5a+4a^2+4b^2-5c-4c^2; 5b+8a*b-16d^2
[1+8a,0+8b,1+8c,4+8d]:	unknown -> [9] a+4a^2+4b^2-c-4c^2; -4+b+8a*b-16d-16d^2
[5+8a,0+8b,5+8c,4+8d]:	unknown -> [10] 5a+4a^2+4b^2-5c-4c^2; -4+5b+8a*b-16d-16d^2
expanding queue[4]^1,meter=[2,2,2,2]*8: 1+3a+2a^2+2b^2-c-2c^2; 3b+4a*b-8d^2
[7+8a,0+8b,1+8c,0+8d]:	unknown -> [11] 3+7a+4a^2+4b^2-c-4c^2; 7b+8a*b-16d^2
[3+8a,0+8b,5+8c,0+8d]:	unknown -> [12] -1+3a+4a^2+4b^2-5c-4c^2; 3b+8a*b-16d^2
[7+8a,0+8b,1+8c,4+8d]:	unknown -> [13] 3+7a+4a^2+4b^2-c-4c^2; -4+7b+8a*b-16d-16d^2
[3+8a,0+8b,5+8c,4+8d]:	unknown -> [14] -1+3a+4a^2+4b^2-5c-4c^2; -4+3b+8a*b-16d-16d^2
expanding queue[5]^1,meter=[2,2,2,2]*8: a+2a^2+2b^2-c-2c^2; -2+b+4a*b-8d-8d^2
[1+8a,0+8b,1+8c,2+8d]:	unknown -> [15] a+4a^2+4b^2-c-4c^2; -1+b+8a*b-8d-16d^2
[5+8a,0+8b,5+8c,2+8d]:	unknown -> [16] 5a+4a^2+4b^2-5c-4c^2; -1+5b+8a*b-8d-16d^2
[1+8a,0+8b,1+8c,6+8d]:	negative-1 [15] by {d=>-d-1}
[5+8a,0+8b,5+8c,6+8d]:	negative-1 [16] by {d=>-d-1}
expanding queue[6]^1,meter=[2,2,2,2]*8: 1+3a+2a^2+2b^2-c-2c^2; -2+3b+4a*b-8d-8d^2
[7+8a,0+8b,1+8c,2+8d]:	unknown -> [17] 3+7a+4a^2+4b^2-c-4c^2; -1+7b+8a*b-8d-16d^2
[3+8a,0+8b,5+8c,2+8d]:	unknown -> [18] -1+3a+4a^2+4b^2-5c-4c^2; -1+3b+8a*b-8d-16d^2
[7+8a,0+8b,1+8c,6+8d]:	negative-1 [17] by {d=>-d-1}
[3+8a,0+8b,5+8c,6+8d]:	negative-1 [18] by {d=>-d-1}
----------------
expanding queue[7]^3,meter=[2,2,2,2]*16: a+4a^2+4b^2-c-4c^2; b+8a*b-16d^2
[1+16a,0+16b,1+16c,0+16d]:	unknown -> [19] a+8a^2+8b^2-c-8c^2; b+16a*b-32d^2
[9+16a,0+16b,9+16c,0+16d]:	unknown -> [20] 9a+8a^2+8b^2-9c-8c^2; 9b+16a*b-32d^2
[1+16a,0+16b,1+16c,8+16d]:	unknown -> [21] a+8a^2+8b^2-c-8c^2; -8+b+16a*b-32d-32d^2
[9+16a,0+16b,9+16c,8+16d]:	unknown -> [22] 9a+8a^2+8b^2-9c-8c^2; -8+9b+16a*b-32d-32d^2
expanding queue[8]^3,meter=[2,2,2,2]*16: 5a+4a^2+4b^2-5c-4c^2; 5b+8a*b-16d^2
[5+16a,0+16b,5+16c,0+16d]:	unknown -> [23] 5a+8a^2+8b^2-5c-8c^2; 5b+16a*b-32d^2
[13+16a,0+16b,13+16c,0+16d]:	unknown -> [24] 13a+8a^2+8b^2-13c-8c^2; 13b+16a*b-32d^2
[5+16a,0+16b,5+16c,8+16d]:	unknown -> [25] 5a+8a^2+8b^2-5c-8c^2; -8+5b+16a*b-32d-32d^2
[13+16a,0+16b,13+16c,8+16d]:	unknown -> [26] 13a+8a^2+8b^2-13c-8c^2; -8+13b+16a*b-32d-32d^2
expanding queue[9]^3,meter=[2,2,2,2]*16: a+4a^2+4b^2-c-4c^2; -4+b+8a*b-16d-16d^2
[1+16a,0+16b,1+16c,4+16d]:	unknown -> [27] a+8a^2+8b^2-c-8c^2; -2+b+16a*b-16d-32d^2
[9+16a,0+16b,9+16c,4+16d]:	unknown -> [28] 9a+8a^2+8b^2-9c-8c^2; -2+9b+16a*b-16d-32d^2
[1+16a,0+16b,1+16c,12+16d]:	negative-1 [27] by {d=>-d-1}
[9+16a,0+16b,9+16c,12+16d]:	negative-1 [28] by {d=>-d-1}
expanding queue[10]^3,meter=[2,2,2,2]*16: 5a+4a^2+4b^2-5c-4c^2; -4+5b+8a*b-16d-16d^2
[5+16a,0+16b,5+16c,4+16d]:	unknown -> [29] 5a+8a^2+8b^2-5c-8c^2; -2+5b+16a*b-16d-32d^2
[13+16a,0+16b,13+16c,4+16d]:	unknown -> [30] 13a+8a^2+8b^2-13c-8c^2; -2+13b+16a*b-16d-32d^2
[5+16a,0+16b,5+16c,12+16d]:	negative-1 [29] by {d=>-d-1}
[13+16a,0+16b,13+16c,12+16d]:	negative-1 [30] by {d=>-d-1}
expanding queue[11]^4,meter=[2,2,2,2]*16: 3+7a+4a^2+4b^2-c-4c^2; 7b+8a*b-16d^2
[15+16a,0+16b,1+16c,0+16d]:	unknown -> [31] 7+15a+8a^2+8b^2-c-8c^2; 15b+16a*b-32d^2
[7+16a,0+16b,9+16c,0+16d]:	unknown -> [32] -1+7a+8a^2+8b^2-9c-8c^2; 7b+16a*b-32d^2
[15+16a,0+16b,1+16c,8+16d]:	unknown -> [33] 7+15a+8a^2+8b^2-c-8c^2; -8+15b+16a*b-32d-32d^2
[7+16a,0+16b,9+16c,8+16d]:	unknown -> [34] -1+7a+8a^2+8b^2-9c-8c^2; -8+7b+16a*b-32d-32d^2
expanding queue[12]^4,meter=[2,2,2,2]*16: -1+3a+4a^2+4b^2-5c-4c^2; 3b+8a*b-16d^2
[11+16a,0+16b,5+16c,0+16d]:	unknown -> [35] 3+11a+8a^2+8b^2-5c-8c^2; 11b+16a*b-32d^2
[3+16a,0+16b,13+16c,0+16d]:	unknown -> [36] -5+3a+8a^2+8b^2-13c-8c^2; 3b+16a*b-32d^2
[11+16a,0+16b,5+16c,8+16d]:	unknown -> [37] 3+11a+8a^2+8b^2-5c-8c^2; -8+11b+16a*b-32d-32d^2
[3+16a,0+16b,13+16c,8+16d]:	unknown -> [38] -5+3a+8a^2+8b^2-13c-8c^2; -8+3b+16a*b-32d-32d^2
expanding queue[13]^4,meter=[2,2,2,2]*16: 3+7a+4a^2+4b^2-c-4c^2; -4+7b+8a*b-16d-16d^2
[15+16a,0+16b,1+16c,4+16d]:	unknown -> [39] 7+15a+8a^2+8b^2-c-8c^2; -2+15b+16a*b-16d-32d^2
[7+16a,0+16b,9+16c,4+16d]:	unknown -> [40] -1+7a+8a^2+8b^2-9c-8c^2; -2+7b+16a*b-16d-32d^2
[15+16a,0+16b,1+16c,12+16d]:	negative-1 [39] by {d=>-d-1}
[7+16a,0+16b,9+16c,12+16d]:	negative-1 [40] by {d=>-d-1}
expanding queue[14]^4,meter=[2,2,2,2]*16: -1+3a+4a^2+4b^2-5c-4c^2; -4+3b+8a*b-16d-16d^2
[11+16a,0+16b,5+16c,4+16d]:	unknown -> [41] 3+11a+8a^2+8b^2-5c-8c^2; -2+11b+16a*b-16d-32d^2
[3+16a,0+16b,13+16c,4+16d]:	unknown -> [42] -5+3a+8a^2+8b^2-13c-8c^2; -2+3b+16a*b-16d-32d^2
[11+16a,0+16b,5+16c,12+16d]:	negative-1 [41] by {d=>-d-1}
[3+16a,0+16b,13+16c,12+16d]:	negative-1 [42] by {d=>-d-1}
expanding queue[15]^5,meter=[2,2,2,2]*16: a+4a^2+4b^2-c-4c^2; -1+b+8a*b-8d-16d^2
[1+16a,8+16b,1+16c,2+16d]:	unknown -> [43] 2+a+8a^2+8b+8b^2-c-8c^2; 8a+b+16a*b-8d-32d^2
[9+16a,8+16b,9+16c,2+16d]:	unknown -> [44] 2+9a+8a^2+8b+8b^2-9c-8c^2; 4+8a+9b+16a*b-8d-32d^2
[1+16a,8+16b,1+16c,10+16d]:	unknown -> [45] 2+a+8a^2+8b+8b^2-c-8c^2; -12+8a+b+16a*b-40d-32d^2
[9+16a,8+16b,9+16c,10+16d]:	unknown -> [46] 2+9a+8a^2+8b+8b^2-9c-8c^2; -8+8a+9b+16a*b-40d-32d^2
expanding queue[16]^5,meter=[2,2,2,2]*16: 5a+4a^2+4b^2-5c-4c^2; -1+5b+8a*b-8d-16d^2
[5+16a,8+16b,5+16c,2+16d]:	unknown -> [47] 2+5a+8a^2+8b+8b^2-5c-8c^2; 2+8a+5b+16a*b-8d-32d^2
[13+16a,8+16b,13+16c,2+16d]:	unknown -> [48] 2+13a+8a^2+8b+8b^2-13c-8c^2; 6+8a+13b+16a*b-8d-32d^2
[5+16a,8+16b,5+16c,10+16d]:	unknown -> [49] 2+5a+8a^2+8b+8b^2-5c-8c^2; -10+8a+5b+16a*b-40d-32d^2
[13+16a,8+16b,13+16c,10+16d]:	unknown -> [50] 2+13a+8a^2+8b+8b^2-13c-8c^2; -6+8a+13b+16a*b-40d-32d^2
expanding queue[17]^6,meter=[2,2,2,2]*16: 3+7a+4a^2+4b^2-c-4c^2; -1+7b+8a*b-8d-16d^2
[15+16a,8+16b,1+16c,2+16d]:	unknown -> [51] 9+15a+8a^2+8b+8b^2-c-8c^2; 7+8a+15b+16a*b-8d-32d^2
[7+16a,8+16b,9+16c,2+16d]:	unknown -> [52] 1+7a+8a^2+8b+8b^2-9c-8c^2; 3+8a+7b+16a*b-8d-32d^2
[15+16a,8+16b,1+16c,10+16d]:	unknown -> [53] 9+15a+8a^2+8b+8b^2-c-8c^2; -5+8a+15b+16a*b-40d-32d^2
[7+16a,8+16b,9+16c,10+16d]:	unknown -> [54] 1+7a+8a^2+8b+8b^2-9c-8c^2; -9+8a+7b+16a*b-40d-32d^2
expanding queue[18]^6,meter=[2,2,2,2]*16: -1+3a+4a^2+4b^2-5c-4c^2; -1+3b+8a*b-8d-16d^2
[11+16a,8+16b,5+16c,2+16d]:	unknown -> [55] 5+11a+8a^2+8b+8b^2-5c-8c^2; 5+8a+11b+16a*b-8d-32d^2
[3+16a,8+16b,13+16c,2+16d]:	unknown -> [56] -3+3a+8a^2+8b+8b^2-13c-8c^2; 1+8a+3b+16a*b-8d-32d^2
[11+16a,8+16b,5+16c,10+16d]:	unknown -> [57] 5+11a+8a^2+8b+8b^2-5c-8c^2; -7+8a+11b+16a*b-40d-32d^2
[3+16a,8+16b,13+16c,10+16d]:	unknown -> [58] -3+3a+8a^2+8b+8b^2-13c-8c^2; -11+8a+3b+16a*b-40d-32d^2
Maximum level 3 at [59]: a^2+b^2-c^2; a*b-2d^2
