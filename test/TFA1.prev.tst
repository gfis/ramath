TranspositionSet={[1,0,2,3]}
isHomogeneous
Expanding for base=2, level=3, reasons+features=base,transpose,primitive,same,similiar,evenexp igtriv,invall,norm
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a²+b²-c²; a*b-2d²
----------------
expanding queue[0]^-1,meter=[2,2,2,2]: a²+b²-c²; a*b-2d²
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
[1+2a,0+2b,1+2c,0+2d]:	unknown -> [1] [1,0,1,0] a+a²+b²-c-c²; b+2a*b-4d²
[0+2a,1+2b,1+2c,0+2d]:	transposed [1] by [1,0,2,3]
[1+2a,0+2b,1+2c,1+2d]:	unknown -> [2] [1,0,1,1] a+a²+b²-c-c²; b+2a*b-4d-4d²-1
[0+2a,1+2b,1+2c,1+2d]:	transposed [2] by [1,0,2,3]
----------------
expanding queue[1]^0,meter=[2,2,2,2]: a+a²+b²-c-c²; b+2a*b-4d²
[1+4a,0+4b,1+4c,0+4d]:	unknown -> [3] [0,0,0,0] a+2a²+2b²-c-2c²; b+4a*b-8d²
[3+4a,0+4b,1+4c,0+4d]:	unknown -> [4] [1,0,0,0] 3a+2a²+2b²-c-2c²+1; 3b+4a*b-8d²
[1+4a,0+4b,3+4c,0+4d]:	negative-1 [3] by {c=>-c-1}
[3+4a,0+4b,3+4c,0+4d]:	negative-1 [4] by {c=>-c-1}
[1+4a,0+4b,1+4c,2+4d]:	unknown -> [5] [0,0,0,1] a+2a²+2b²-c-2c²; b+4a*b-8d-8d²-2
[3+4a,0+4b,1+4c,2+4d]:	unknown -> [6] [1,0,0,1] 3a+2a²+2b²-c-2c²+1; 3b+4a*b-8d-8d²-2
[1+4a,0+4b,3+4c,2+4d]:	negative-1 [5] by {c=>-c-1}
[3+4a,0+4b,3+4c,2+4d]:	negative-1 [6] by {c=>-c-1}
expanding queue[2]^0,meter=[2,2,2,2]: a+a²+b²-c-c²; b+2a*b-4d-4d²-1
----------------
expanding queue[3]^1,meter=[2,2,2,2]: a+2a²+2b²-c-2c²; b+4a*b-8d²
[1+8a,0+8b,1+8c,0+8d]:	unknown -> [7] [0,0,0,0] a+4a²+4b²-c-4c²; b+8a*b-16d²
[5+8a,0+8b,5+8c,0+8d]:	unknown -> [8] [1,0,1,0] 5a+4a²+4b²-5c-4c²; 5b+8a*b-16d²
[1+8a,0+8b,1+8c,4+8d]:	unknown -> [9] [0,0,0,1] a+4a²+4b²-c-4c²; b+8a*b-16d-16d²-4
[5+8a,0+8b,5+8c,4+8d]:	unknown -> [10] [1,0,1,1] 5a+4a²+4b²-5c-4c²; 5b+8a*b-16d-16d²-4
expanding queue[4]^1,meter=[2,2,2,2]: 3a+2a²+2b²-c-2c²+1; 3b+4a*b-8d²
[7+8a,0+8b,1+8c,0+8d]:	unknown -> [11] [1,0,0,0] 7a+4a²+4b²-c-4c²+3; 7b+8a*b-16d²
[3+8a,0+8b,5+8c,0+8d]:	unknown -> [12] [0,0,1,0] 3a+4a²+4b²-5c-4c²-1; 3b+8a*b-16d²
[7+8a,0+8b,1+8c,4+8d]:	unknown -> [13] [1,0,0,1] 7a+4a²+4b²-c-4c²+3; 7b+8a*b-16d-16d²-4
[3+8a,0+8b,5+8c,4+8d]:	unknown -> [14] [0,0,1,1] 3a+4a²+4b²-5c-4c²-1; 3b+8a*b-16d-16d²-4
expanding queue[5]^1,meter=[2,2,2,2]: a+2a²+2b²-c-2c²; b+4a*b-8d-8d²-2
[1+8a,0+8b,1+8c,2+8d]:	unknown -> [15] [0,0,0,0] a+4a²+4b²-c-4c²; b+8a*b-8d-16d²-1
[5+8a,0+8b,5+8c,2+8d]:	unknown -> [16] [1,0,1,0] 5a+4a²+4b²-5c-4c²; 5b+8a*b-8d-16d²-1
[1+8a,0+8b,1+8c,6+8d]:	negative-1 [15] by {d=>-d-1}
[5+8a,0+8b,5+8c,6+8d]:	negative-1 [16] by {d=>-d-1}
expanding queue[6]^1,meter=[2,2,2,2]: 3a+2a²+2b²-c-2c²+1; 3b+4a*b-8d-8d²-2
[7+8a,0+8b,1+8c,2+8d]:	unknown -> [17] [1,0,0,0] 7a+4a²+4b²-c-4c²+3; 7b+8a*b-8d-16d²-1
[3+8a,0+8b,5+8c,2+8d]:	unknown -> [18] [0,0,1,0] 3a+4a²+4b²-5c-4c²-1; 3b+8a*b-8d-16d²-1
[7+8a,0+8b,1+8c,6+8d]:	negative-1 [17] by {d=>-d-1}
[3+8a,0+8b,5+8c,6+8d]:	negative-1 [18] by {d=>-d-1}
----------------
expanding queue[7]^3,meter=[2,2,2,2]: a+4a²+4b²-c-4c²; b+8a*b-16d²
[1+16a,0+16b,1+16c,0+16d]:	unknown -> [19] [0,0,0,0] a+8a²+8b²-c-8c²; b+16a*b-32d²
[9+16a,0+16b,9+16c,0+16d]:	unknown -> [20] [1,0,1,0] 9a+8a²+8b²-9c-8c²; 9b+16a*b-32d²
[1+16a,0+16b,1+16c,8+16d]:	unknown -> [21] [0,0,0,1] a+8a²+8b²-c-8c²; b+16a*b-32d-32d²-8
[9+16a,0+16b,9+16c,8+16d]:	unknown -> [22] [1,0,1,1] 9a+8a²+8b²-9c-8c²; 9b+16a*b-32d-32d²-8
expanding queue[8]^3,meter=[2,2,2,2]: 5a+4a²+4b²-5c-4c²; 5b+8a*b-16d²
[5+16a,0+16b,5+16c,0+16d]:	unknown -> [23] [0,0,0,0] 5a+8a²+8b²-5c-8c²; 5b+16a*b-32d²
[13+16a,0+16b,13+16c,0+16d]:	unknown -> [24] [1,0,1,0] 13a+8a²+8b²-13c-8c²; 13b+16a*b-32d²
[5+16a,0+16b,5+16c,8+16d]:	unknown -> [25] [0,0,0,1] 5a+8a²+8b²-5c-8c²; 5b+16a*b-32d-32d²-8
[13+16a,0+16b,13+16c,8+16d]:	unknown -> [26] [1,0,1,1] 13a+8a²+8b²-13c-8c²; 13b+16a*b-32d-32d²-8
expanding queue[9]^3,meter=[2,2,2,2]: a+4a²+4b²-c-4c²; b+8a*b-16d-16d²-4
[1+16a,0+16b,1+16c,4+16d]:	unknown -> [27] [0,0,0,0] a+8a²+8b²-c-8c²; b+16a*b-16d-32d²-2
[9+16a,0+16b,9+16c,4+16d]:	unknown -> [28] [1,0,1,0] 9a+8a²+8b²-9c-8c²; 9b+16a*b-16d-32d²-2
[1+16a,0+16b,1+16c,12+16d]:	negative-1 [27] by {d=>-d-1}
[9+16a,0+16b,9+16c,12+16d]:	negative-1 [28] by {d=>-d-1}
expanding queue[10]^3,meter=[2,2,2,2]: 5a+4a²+4b²-5c-4c²; 5b+8a*b-16d-16d²-4
[5+16a,0+16b,5+16c,4+16d]:	unknown -> [29] [0,0,0,0] 5a+8a²+8b²-5c-8c²; 5b+16a*b-16d-32d²-2
[13+16a,0+16b,13+16c,4+16d]:	unknown -> [30] [1,0,1,0] 13a+8a²+8b²-13c-8c²; 13b+16a*b-16d-32d²-2
[5+16a,0+16b,5+16c,12+16d]:	negative-1 [29] by {d=>-d-1}
[13+16a,0+16b,13+16c,12+16d]:	negative-1 [30] by {d=>-d-1}
expanding queue[11]^4,meter=[2,2,2,2]: 7a+4a²+4b²-c-4c²+3; 7b+8a*b-16d²
[15+16a,0+16b,1+16c,0+16d]:	unknown -> [31] [1,0,0,0] 15a+8a²+8b²-c-8c²+7; 15b+16a*b-32d²
[7+16a,0+16b,9+16c,0+16d]:	unknown -> [32] [0,0,1,0] 7a+8a²+8b²-9c-8c²-1; 7b+16a*b-32d²
[15+16a,0+16b,1+16c,8+16d]:	unknown -> [33] [1,0,0,1] 15a+8a²+8b²-c-8c²+7; 15b+16a*b-32d-32d²-8
[7+16a,0+16b,9+16c,8+16d]:	unknown -> [34] [0,0,1,1] 7a+8a²+8b²-9c-8c²-1; 7b+16a*b-32d-32d²-8
expanding queue[12]^4,meter=[2,2,2,2]: 3a+4a²+4b²-5c-4c²-1; 3b+8a*b-16d²
[11+16a,0+16b,5+16c,0+16d]:	unknown -> [35] [1,0,0,0] 11a+8a²+8b²-5c-8c²+3; 11b+16a*b-32d²
[3+16a,0+16b,13+16c,0+16d]:	unknown -> [36] [0,0,1,0] 3a+8a²+8b²-13c-8c²-5; 3b+16a*b-32d²
[11+16a,0+16b,5+16c,8+16d]:	unknown -> [37] [1,0,0,1] 11a+8a²+8b²-5c-8c²+3; 11b+16a*b-32d-32d²-8
[3+16a,0+16b,13+16c,8+16d]:	unknown -> [38] [0,0,1,1] 3a+8a²+8b²-13c-8c²-5; 3b+16a*b-32d-32d²-8
expanding queue[13]^4,meter=[2,2,2,2]: 7a+4a²+4b²-c-4c²+3; 7b+8a*b-16d-16d²-4
[15+16a,0+16b,1+16c,4+16d]:	unknown -> [39] [1,0,0,0] 15a+8a²+8b²-c-8c²+7; 15b+16a*b-16d-32d²-2
[7+16a,0+16b,9+16c,4+16d]:	unknown -> [40] [0,0,1,0] 7a+8a²+8b²-9c-8c²-1; 7b+16a*b-16d-32d²-2
[15+16a,0+16b,1+16c,12+16d]:	negative-1 [39] by {d=>-d-1}
[7+16a,0+16b,9+16c,12+16d]:	negative-1 [40] by {d=>-d-1}
expanding queue[14]^4,meter=[2,2,2,2]: 3a+4a²+4b²-5c-4c²-1; 3b+8a*b-16d-16d²-4
[11+16a,0+16b,5+16c,4+16d]:	unknown -> [41] [1,0,0,0] 11a+8a²+8b²-5c-8c²+3; 11b+16a*b-16d-32d²-2
[3+16a,0+16b,13+16c,4+16d]:	unknown -> [42] [0,0,1,0] 3a+8a²+8b²-13c-8c²-5; 3b+16a*b-16d-32d²-2
[11+16a,0+16b,5+16c,12+16d]:	negative-1 [41] by {d=>-d-1}
[3+16a,0+16b,13+16c,12+16d]:	negative-1 [42] by {d=>-d-1}
expanding queue[15]^5,meter=[2,2,2,2]: a+4a²+4b²-c-4c²; b+8a*b-8d-16d²-1
[1+16a,8+16b,1+16c,2+16d]:	unknown -> [43] [0,1,0,0] a+8a²+8b+8b²-c-8c²+2; 8a+b+16a*b-8d-32d²
[9+16a,8+16b,9+16c,2+16d]:	unknown -> [44] [1,1,1,0] 9a+8a²+8b+8b²-9c-8c²+2; 8a+9b+16a*b-8d-32d²+4
[1+16a,8+16b,1+16c,10+16d]:	unknown -> [45] [0,1,0,1] a+8a²+8b+8b²-c-8c²+2; 8a+b+16a*b-40d-32d²-12
[9+16a,8+16b,9+16c,10+16d]:	unknown -> [46] [1,1,1,1] 9a+8a²+8b+8b²-9c-8c²+2; 8a+9b+16a*b-40d-32d²-8
expanding queue[16]^5,meter=[2,2,2,2]: 5a+4a²+4b²-5c-4c²; 5b+8a*b-8d-16d²-1
[5+16a,8+16b,5+16c,2+16d]:	unknown -> [47] [0,1,0,0] 5a+8a²+8b+8b²-5c-8c²+2; 8a+5b+16a*b-8d-32d²+2
[13+16a,8+16b,13+16c,2+16d]:	unknown -> [48] [1,1,1,0] 13a+8a²+8b+8b²-13c-8c²+2; 8a+13b+16a*b-8d-32d²+6
[5+16a,8+16b,5+16c,10+16d]:	unknown -> [49] [0,1,0,1] 5a+8a²+8b+8b²-5c-8c²+2; 8a+5b+16a*b-40d-32d²-10
[13+16a,8+16b,13+16c,10+16d]:	unknown -> [50] [1,1,1,1] 13a+8a²+8b+8b²-13c-8c²+2; 8a+13b+16a*b-40d-32d²-6
expanding queue[17]^6,meter=[2,2,2,2]: 7a+4a²+4b²-c-4c²+3; 7b+8a*b-8d-16d²-1
[15+16a,8+16b,1+16c,2+16d]:	unknown -> [51] [1,1,0,0] 15a+8a²+8b+8b²-c-8c²+9; 8a+15b+16a*b-8d-32d²+7
[7+16a,8+16b,9+16c,2+16d]:	unknown -> [52] [0,1,1,0] 7a+8a²+8b+8b²-9c-8c²+1; 8a+7b+16a*b-8d-32d²+3
[15+16a,8+16b,1+16c,10+16d]:	unknown -> [53] [1,1,0,1] 15a+8a²+8b+8b²-c-8c²+9; 8a+15b+16a*b-40d-32d²-5
[7+16a,8+16b,9+16c,10+16d]:	unknown -> [54] [0,1,1,1] 7a+8a²+8b+8b²-9c-8c²+1; 8a+7b+16a*b-40d-32d²-9
expanding queue[18]^6,meter=[2,2,2,2]: 3a+4a²+4b²-5c-4c²-1; 3b+8a*b-8d-16d²-1
[11+16a,8+16b,5+16c,2+16d]:	unknown -> [55] [1,1,0,0] 11a+8a²+8b+8b²-5c-8c²+5; 8a+11b+16a*b-8d-32d²+5
[3+16a,8+16b,13+16c,2+16d]:	unknown -> [56] [0,1,1,0] 3a+8a²+8b+8b²-13c-8c²-3; 8a+3b+16a*b-8d-32d²+1
[11+16a,8+16b,5+16c,10+16d]:	unknown -> [57] [1,1,0,1] 11a+8a²+8b+8b²-5c-8c²+5; 8a+11b+16a*b-40d-32d²-7
[3+16a,8+16b,13+16c,10+16d]:	unknown -> [58] [0,1,1,1] 3a+8a²+8b+8b²-13c-8c²-3; 8a+3b+16a*b-40d-32d²-11
Maximum level 3 [59] mod 2: a²+b²-c²; a*b-2d²
