TranspositionSet={[1,0,2,3]}
considerNonPrimitive
Expanding for base=2, level=3, reasons+features=base,transpose,primitive,same,similiar,evenexp igtriv,invall,norm
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a²+b²-c²; a*b-2d²
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2,2]: a²+b²-c²; a*b-2d²
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
[1+2a,0+2b,1+2c,0+2d]:	unknown -> [1] [1,0,1,0] a+a²+b²-c-c²; b+2a*b-4d²
[0+2a,1+2b,1+2c,0+2d]:	transposed [1] by [1,0,2,3]
[1+2a,0+2b,1+2c,1+2d]:	unknown -> [2] [1,0,1,1] a+a²+b²-c-c²; b+2a*b-4d-4d²-1
[0+2a,1+2b,1+2c,1+2d]:	transposed [2] by [1,0,2,3]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2,2]: a+a²+b²-c-c²; b+2a*b-4d²
[1+4a,0+4b,1+4c,0+4d]:	unknown -> [3] [0,0,0,0] a+2a²+2b²-c-2c²; b+4a*b-8d²
[3+4a,0+4b,1+4c,0+4d]:	unknown -> [4] [1,0,0,0] 3a+2a²+2b²-c-2c²+1; 3b+4a*b-8d²
[1+4a,0+4b,3+4c,0+4d]:	negative-1 [3] by {c=>-c-1}
[3+4a,0+4b,3+4c,0+4d]:	negative-1 [4] by {c=>-c-1}
[1+4a,0+4b,1+4c,2+4d]:	unknown -> [5] [0,0,0,1] a+2a²+2b²-c-2c²; b+4a*b-8d-8d²-2
[3+4a,0+4b,1+4c,2+4d]:	unknown -> [6] [1,0,0,1] 3a+2a²+2b²-c-2c²+1; 3b+4a*b-8d-8d²-2
[1+4a,0+4b,3+4c,2+4d]:	negative-1 [5] by {c=>-c-1}
[3+4a,0+4b,3+4c,2+4d]:	negative-1 [6] by {c=>-c-1}
endexp[1]
expanding queue[2]^0,meter=[2,2,2,2]: a+a²+b²-c-c²; b+2a*b-4d-4d²-1
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2,2,2]: a+2a²+2b²-c-2c²; b+4a*b-8d²
[1+8a,0+8b,1+8c,0+8d]:	unknown -> [7] [0,0,0,0] a+4a²+4b²-c-4c²; b+8a*b-16d²
[5+8a,0+8b,5+8c,0+8d]:	unknown -> [8] [1,0,1,0] 5a+4a²+4b²-5c-4c²; 5b+8a*b-16d²
[1+8a,0+8b,1+8c,4+8d]:	unknown -> [9] [0,0,0,1] a+4a²+4b²-c-4c²; b+8a*b-16d-16d²-4
[5+8a,0+8b,5+8c,4+8d]:	unknown -> [10] [1,0,1,1] 5a+4a²+4b²-5c-4c²; 5b+8a*b-16d-16d²-4
endexp[3]
expanding queue[4]^1,meter=[2,2,2,2]: 3a+2a²+2b²-c-2c²+1; 3b+4a*b-8d²
[7+8a,0+8b,1+8c,0+8d]:	unknown -> [11] [1,0,0,0] 7a+4a²+4b²-c-4c²+3; 7b+8a*b-16d²
[3+8a,0+8b,5+8c,0+8d]:	unknown -> [12] [0,0,1,0] 3a+4a²+4b²-5c-4c²-1; 3b+8a*b-16d²
[7+8a,0+8b,1+8c,4+8d]:	unknown -> [13] [1,0,0,1] 7a+4a²+4b²-c-4c²+3; 7b+8a*b-16d-16d²-4
[3+8a,0+8b,5+8c,4+8d]:	unknown -> [14] [0,0,1,1] 3a+4a²+4b²-5c-4c²-1; 3b+8a*b-16d-16d²-4
endexp[4]
expanding queue[5]^1,meter=[2,2,2,2]: a+2a²+2b²-c-2c²; b+4a*b-8d-8d²-2
[1+8a,0+8b,1+8c,2+8d]:	unknown -> [15] [0,0,0,0] a+4a²+4b²-c-4c²; b+8a*b-8d-16d²-1
[5+8a,0+8b,5+8c,2+8d]:	unknown -> [16] [1,0,1,0] 5a+4a²+4b²-5c-4c²; 5b+8a*b-8d-16d²-1
[1+8a,0+8b,1+8c,6+8d]:	negative-1 [15] by {d=>-d-1}
[5+8a,0+8b,5+8c,6+8d]:	negative-1 [16] by {d=>-d-1}
endexp[5]
expanding queue[6]^1,meter=[2,2,2,2]: 3a+2a²+2b²-c-2c²+1; 3b+4a*b-8d-8d²-2
[7+8a,0+8b,1+8c,2+8d]:	unknown -> [17] [1,0,0,0] 7a+4a²+4b²-c-4c²+3; 7b+8a*b-8d-16d²-1
[3+8a,0+8b,5+8c,2+8d]:	unknown -> [18] [0,0,1,0] 3a+4a²+4b²-5c-4c²-1; 3b+8a*b-8d-16d²-1
[7+8a,0+8b,1+8c,6+8d]:	negative-1 [17] by {d=>-d-1}
[3+8a,0+8b,5+8c,6+8d]:	negative-1 [18] by {d=>-d-1}
endexp[6]
---------------- level 3
Maximum level 3 [19] mod 2: a²+b²-c²; a*b-2d²
