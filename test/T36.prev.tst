Expanding for base=2, reasons+features=base,evenexp,similiar,transpose igtriv,norm,invall
exponentGCDs=[1,1,2,2], transposables={{a,b},{c},{d}}
----------------
expanding queue[0]^-1: a^2 + b^2 - c^2; a*b - 2*d^2 meter=[2,2,2,2] *2
[0+2*a,0+2*b,0+2*c,0+2*d]:	similiar to [0], same same  a^2+b^2-c^2;a*b-2*d^2
[1+2*a,0+2*b,1+2*c,0+2*d]:	unknown -> [1] a+a^2+b^2-c-c^2;b+2*a*b-4*d^2
[0+2*a,1+2*b,1+2*c,0+2*d]:	transposed [1] {0/0+2*b,0/1+2*a,2/1+2*c,3/0+2*d} by 0+2*b|0+2*a 1+2*a|1+2*b
[1+2*a,0+2*b,1+2*c,1+2*d]:	unknown -> [2] a+a^2+b^2-c-c^2;-1+b+2*a*b-4*d-4*d^2
[0+2*a,1+2*b,1+2*c,1+2*d]:	transposed [2] {0/0+2*b,0/1+2*a,2/1+2*c,3/1+2*d} by 0+2*b|0+2*a 1+2*a|1+2*b
----------------
expanding queue[1]^0: a + a^2 + b^2 - c - c^2; b + 2*a*b - 4*d^2 meter=[2,2,2,2] *4
[1+4*a,0+4*b,1+4*c,0+4*d]:	unknown -> [3] a+2*a^2+2*b^2-c-2*c^2;b+4*a*b-8*d^2
[3+4*a,0+4*b,1+4*c,0+4*d]:	unknown -> [4] 1+3*a+2*a^2+2*b^2-c-2*c^2;3*b+4*a*b-8*d^2
[1+4*a,0+4*b,3+4*c,0+4*d]:	negative-1 [3] by {c=>-c-1}
[3+4*a,0+4*b,3+4*c,0+4*d]:	negative-1 [4] by {c=>-c-1}
[1+4*a,0+4*b,1+4*c,2+4*d]:	unknown -> [5] a+2*a^2+2*b^2-c-2*c^2;-2+b+4*a*b-8*d-8*d^2
[3+4*a,0+4*b,1+4*c,2+4*d]:	unknown -> [6] 1+3*a+2*a^2+2*b^2-c-2*c^2;-2+3*b+4*a*b-8*d-8*d^2
[1+4*a,0+4*b,3+4*c,2+4*d]:	negative-1 [5] by {c=>-c-1}
[3+4*a,0+4*b,3+4*c,2+4*d]:	negative-1 [6] by {c=>-c-1}
expanding queue[2]^0: a + a^2 + b^2 - c - c^2;  - 1 + b + 2*a*b - 4*d - 4*d^2 meter=[2,2,2,2] *4
----------------
expanding queue[3]^1: a + 2*a^2 + 2*b^2 - c - 2*c^2; b + 4*a*b - 8*d^2 meter=[2,2,2,2] *8
[1+8*a,0+8*b,1+8*c,0+8*d]:	unknown -> [7] a+4*a^2+4*b^2-c-4*c^2;b+8*a*b-16*d^2
[5+8*a,0+8*b,5+8*c,0+8*d]:	unknown -> [8] 5*a+4*a^2+4*b^2-5*c-4*c^2;5*b+8*a*b-16*d^2
[1+8*a,0+8*b,1+8*c,4+8*d]:	unknown -> [9] a+4*a^2+4*b^2-c-4*c^2;-4+b+8*a*b-16*d-16*d^2
[5+8*a,0+8*b,5+8*c,4+8*d]:	unknown -> [10] 5*a+4*a^2+4*b^2-5*c-4*c^2;-4+5*b+8*a*b-16*d-16*d^2
expanding queue[4]^1: 1 + 3*a + 2*a^2 + 2*b^2 - c - 2*c^2; 3*b + 4*a*b - 8*d^2 meter=[2,2,2,2] *8
[7+8*a,0+8*b,1+8*c,0+8*d]:	unknown -> [11] 3+7*a+4*a^2+4*b^2-c-4*c^2;7*b+8*a*b-16*d^2
[3+8*a,0+8*b,5+8*c,0+8*d]:	unknown -> [12] -1+3*a+4*a^2+4*b^2-5*c-4*c^2;3*b+8*a*b-16*d^2
[7+8*a,0+8*b,1+8*c,4+8*d]:	unknown -> [13] 3+7*a+4*a^2+4*b^2-c-4*c^2;-4+7*b+8*a*b-16*d-16*d^2
[3+8*a,0+8*b,5+8*c,4+8*d]:	unknown -> [14] -1+3*a+4*a^2+4*b^2-5*c-4*c^2;-4+3*b+8*a*b-16*d-16*d^2
expanding queue[5]^1: a + 2*a^2 + 2*b^2 - c - 2*c^2;  - 2 + b + 4*a*b - 8*d - 8*d^2 meter=[2,2,2,2] *8
[1+8*a,0+8*b,1+8*c,2+8*d]:	unknown -> [15] a+4*a^2+4*b^2-c-4*c^2;-1+b+8*a*b-8*d-16*d^2
[5+8*a,0+8*b,5+8*c,2+8*d]:	unknown -> [16] 5*a+4*a^2+4*b^2-5*c-4*c^2;-1+5*b+8*a*b-8*d-16*d^2
[1+8*a,0+8*b,1+8*c,6+8*d]:	negative-1 [15] by {d=>-d-1}
[5+8*a,0+8*b,5+8*c,6+8*d]:	negative-1 [16] by {d=>-d-1}
expanding queue[6]^1: 1 + 3*a + 2*a^2 + 2*b^2 - c - 2*c^2;  - 2 + 3*b + 4*a*b - 8*d - 8*d^2 meter=[2,2,2,2] *8
[7+8*a,0+8*b,1+8*c,2+8*d]:	unknown -> [17] 3+7*a+4*a^2+4*b^2-c-4*c^2;-1+7*b+8*a*b-8*d-16*d^2
[3+8*a,0+8*b,5+8*c,2+8*d]:	unknown -> [18] -1+3*a+4*a^2+4*b^2-5*c-4*c^2;-1+3*b+8*a*b-8*d-16*d^2
[7+8*a,0+8*b,1+8*c,6+8*d]:	negative-1 [17] by {d=>-d-1}
[3+8*a,0+8*b,5+8*c,6+8*d]:	negative-1 [18] by {d=>-d-1}
----------------
expanding queue[7]^3: a + 4*a^2 + 4*b^2 - c - 4*c^2; b + 8*a*b - 16*d^2 meter=[2,2,2,2] *16
[1+16*a,0+16*b,1+16*c,0+16*d]:	unknown -> [19] a+8*a^2+8*b^2-c-8*c^2;b+16*a*b-32*d^2
[9+16*a,0+16*b,9+16*c,0+16*d]:	unknown -> [20] 9*a+8*a^2+8*b^2-9*c-8*c^2;9*b+16*a*b-32*d^2
[1+16*a,0+16*b,1+16*c,8+16*d]:	unknown -> [21] a+8*a^2+8*b^2-c-8*c^2;-8+b+16*a*b-32*d-32*d^2
[9+16*a,0+16*b,9+16*c,8+16*d]:	unknown -> [22] 9*a+8*a^2+8*b^2-9*c-8*c^2;-8+9*b+16*a*b-32*d-32*d^2
expanding queue[8]^3: 5*a + 4*a^2 + 4*b^2 - 5*c - 4*c^2; 5*b + 8*a*b - 16*d^2 meter=[2,2,2,2] *16
[5+16*a,0+16*b,5+16*c,0+16*d]:	unknown -> [23] 5*a+8*a^2+8*b^2-5*c-8*c^2;5*b+16*a*b-32*d^2
[13+16*a,0+16*b,13+16*c,0+16*d]:	unknown -> [24] 13*a+8*a^2+8*b^2-13*c-8*c^2;13*b+16*a*b-32*d^2
[5+16*a,0+16*b,5+16*c,8+16*d]:	unknown -> [25] 5*a+8*a^2+8*b^2-5*c-8*c^2;-8+5*b+16*a*b-32*d-32*d^2
[13+16*a,0+16*b,13+16*c,8+16*d]:	unknown -> [26] 13*a+8*a^2+8*b^2-13*c-8*c^2;-8+13*b+16*a*b-32*d-32*d^2
expanding queue[9]^3: a + 4*a^2 + 4*b^2 - c - 4*c^2;  - 4 + b + 8*a*b - 16*d - 16*d^2 meter=[2,2,2,2] *16
[1+16*a,0+16*b,1+16*c,4+16*d]:	unknown -> [27] a+8*a^2+8*b^2-c-8*c^2;-2+b+16*a*b-16*d-32*d^2
[9+16*a,0+16*b,9+16*c,4+16*d]:	unknown -> [28] 9*a+8*a^2+8*b^2-9*c-8*c^2;-2+9*b+16*a*b-16*d-32*d^2
[1+16*a,0+16*b,1+16*c,12+16*d]:	negative-1 [27] by {d=>-d-1}
[9+16*a,0+16*b,9+16*c,12+16*d]:	negative-1 [28] by {d=>-d-1}
expanding queue[10]^3: 5*a + 4*a^2 + 4*b^2 - 5*c - 4*c^2;  - 4 + 5*b + 8*a*b - 16*d - 16*d^2 meter=[2,2,2,2] *16
[5+16*a,0+16*b,5+16*c,4+16*d]:	unknown -> [29] 5*a+8*a^2+8*b^2-5*c-8*c^2;-2+5*b+16*a*b-16*d-32*d^2
[13+16*a,0+16*b,13+16*c,4+16*d]:	unknown -> [30] 13*a+8*a^2+8*b^2-13*c-8*c^2;-2+13*b+16*a*b-16*d-32*d^2
[5+16*a,0+16*b,5+16*c,12+16*d]:	negative-1 [29] by {d=>-d-1}
[13+16*a,0+16*b,13+16*c,12+16*d]:	negative-1 [30] by {d=>-d-1}
expanding queue[11]^4: 3 + 7*a + 4*a^2 + 4*b^2 - c - 4*c^2; 7*b + 8*a*b - 16*d^2 meter=[2,2,2,2] *16
[15+16*a,0+16*b,1+16*c,0+16*d]:	unknown -> [31] 7+15*a+8*a^2+8*b^2-c-8*c^2;15*b+16*a*b-32*d^2
[7+16*a,0+16*b,9+16*c,0+16*d]:	unknown -> [32] -1+7*a+8*a^2+8*b^2-9*c-8*c^2;7*b+16*a*b-32*d^2
[15+16*a,0+16*b,1+16*c,8+16*d]:	unknown -> [33] 7+15*a+8*a^2+8*b^2-c-8*c^2;-8+15*b+16*a*b-32*d-32*d^2
[7+16*a,0+16*b,9+16*c,8+16*d]:	unknown -> [34] -1+7*a+8*a^2+8*b^2-9*c-8*c^2;-8+7*b+16*a*b-32*d-32*d^2
expanding queue[12]^4:  - 1 + 3*a + 4*a^2 + 4*b^2 - 5*c - 4*c^2; 3*b + 8*a*b - 16*d^2 meter=[2,2,2,2] *16
[11+16*a,0+16*b,5+16*c,0+16*d]:	unknown -> [35] 3+11*a+8*a^2+8*b^2-5*c-8*c^2;11*b+16*a*b-32*d^2
[3+16*a,0+16*b,13+16*c,0+16*d]:	unknown -> [36] -5+3*a+8*a^2+8*b^2-13*c-8*c^2;3*b+16*a*b-32*d^2
[11+16*a,0+16*b,5+16*c,8+16*d]:	unknown -> [37] 3+11*a+8*a^2+8*b^2-5*c-8*c^2;-8+11*b+16*a*b-32*d-32*d^2
[3+16*a,0+16*b,13+16*c,8+16*d]:	unknown -> [38] -5+3*a+8*a^2+8*b^2-13*c-8*c^2;-8+3*b+16*a*b-32*d-32*d^2
expanding queue[13]^4: 3 + 7*a + 4*a^2 + 4*b^2 - c - 4*c^2;  - 4 + 7*b + 8*a*b - 16*d - 16*d^2 meter=[2,2,2,2] *16
[15+16*a,0+16*b,1+16*c,4+16*d]:	unknown -> [39] 7+15*a+8*a^2+8*b^2-c-8*c^2;-2+15*b+16*a*b-16*d-32*d^2
[7+16*a,0+16*b,9+16*c,4+16*d]:	unknown -> [40] -1+7*a+8*a^2+8*b^2-9*c-8*c^2;-2+7*b+16*a*b-16*d-32*d^2
[15+16*a,0+16*b,1+16*c,12+16*d]:	negative-1 [39] by {d=>-d-1}
[7+16*a,0+16*b,9+16*c,12+16*d]:	negative-1 [40] by {d=>-d-1}
expanding queue[14]^4:  - 1 + 3*a + 4*a^2 + 4*b^2 - 5*c - 4*c^2;  - 4 + 3*b + 8*a*b - 16*d - 16*d^2 meter=[2,2,2,2] *16
[11+16*a,0+16*b,5+16*c,4+16*d]:	unknown -> [41] 3+11*a+8*a^2+8*b^2-5*c-8*c^2;-2+11*b+16*a*b-16*d-32*d^2
[3+16*a,0+16*b,13+16*c,4+16*d]:	unknown -> [42] -5+3*a+8*a^2+8*b^2-13*c-8*c^2;-2+3*b+16*a*b-16*d-32*d^2
[11+16*a,0+16*b,5+16*c,12+16*d]:	negative-1 [41] by {d=>-d-1}
[3+16*a,0+16*b,13+16*c,12+16*d]:	negative-1 [42] by {d=>-d-1}
expanding queue[15]^5: a + 4*a^2 + 4*b^2 - c - 4*c^2;  - 1 + b + 8*a*b - 8*d - 16*d^2 meter=[2,2,2,2] *16
[1+16*a,8+16*b,1+16*c,2+16*d]:	unknown -> [43] 2+a+8*a^2+8*b+8*b^2-c-8*c^2;8*a+b+16*a*b-8*d-32*d^2
[9+16*a,8+16*b,9+16*c,2+16*d]:	unknown -> [44] 2+9*a+8*a^2+8*b+8*b^2-9*c-8*c^2;4+8*a+9*b+16*a*b-8*d-32*d^2
[1+16*a,8+16*b,1+16*c,10+16*d]:	unknown -> [45] 2+a+8*a^2+8*b+8*b^2-c-8*c^2;-12+8*a+b+16*a*b-40*d-32*d^2
[9+16*a,8+16*b,9+16*c,10+16*d]:	unknown -> [46] 2+9*a+8*a^2+8*b+8*b^2-9*c-8*c^2;-8+8*a+9*b+16*a*b-40*d-32*d^2
expanding queue[16]^5: 5*a + 4*a^2 + 4*b^2 - 5*c - 4*c^2;  - 1 + 5*b + 8*a*b - 8*d - 16*d^2 meter=[2,2,2,2] *16
[5+16*a,8+16*b,5+16*c,2+16*d]:	unknown -> [47] 2+5*a+8*a^2+8*b+8*b^2-5*c-8*c^2;2+8*a+5*b+16*a*b-8*d-32*d^2
[13+16*a,8+16*b,13+16*c,2+16*d]:	unknown -> [48] 2+13*a+8*a^2+8*b+8*b^2-13*c-8*c^2;6+8*a+13*b+16*a*b-8*d-32*d^2
[5+16*a,8+16*b,5+16*c,10+16*d]:	unknown -> [49] 2+5*a+8*a^2+8*b+8*b^2-5*c-8*c^2;-10+8*a+5*b+16*a*b-40*d-32*d^2
[13+16*a,8+16*b,13+16*c,10+16*d]:	unknown -> [50] 2+13*a+8*a^2+8*b+8*b^2-13*c-8*c^2;-6+8*a+13*b+16*a*b-40*d-32*d^2
expanding queue[17]^6: 3 + 7*a + 4*a^2 + 4*b^2 - c - 4*c^2;  - 1 + 7*b + 8*a*b - 8*d - 16*d^2 meter=[2,2,2,2] *16
[15+16*a,8+16*b,1+16*c,2+16*d]:	unknown -> [51] 9+15*a+8*a^2+8*b+8*b^2-c-8*c^2;7+8*a+15*b+16*a*b-8*d-32*d^2
[7+16*a,8+16*b,9+16*c,2+16*d]:	unknown -> [52] 1+7*a+8*a^2+8*b+8*b^2-9*c-8*c^2;3+8*a+7*b+16*a*b-8*d-32*d^2
[15+16*a,8+16*b,1+16*c,10+16*d]:	unknown -> [53] 9+15*a+8*a^2+8*b+8*b^2-c-8*c^2;-5+8*a+15*b+16*a*b-40*d-32*d^2
[7+16*a,8+16*b,9+16*c,10+16*d]:	unknown -> [54] 1+7*a+8*a^2+8*b+8*b^2-9*c-8*c^2;-9+8*a+7*b+16*a*b-40*d-32*d^2
expanding queue[18]^6:  - 1 + 3*a + 4*a^2 + 4*b^2 - 5*c - 4*c^2;  - 1 + 3*b + 8*a*b - 8*d - 16*d^2 meter=[2,2,2,2] *16
[11+16*a,8+16*b,5+16*c,2+16*d]:	unknown -> [55] 5+11*a+8*a^2+8*b+8*b^2-5*c-8*c^2;5+8*a+11*b+16*a*b-8*d-32*d^2
[3+16*a,8+16*b,13+16*c,2+16*d]:	unknown -> [56] -3+3*a+8*a^2+8*b+8*b^2-13*c-8*c^2;1+8*a+3*b+16*a*b-8*d-32*d^2
[11+16*a,8+16*b,5+16*c,10+16*d]:	unknown -> [57] 5+11*a+8*a^2+8*b+8*b^2-5*c-8*c^2;-7+8*a+11*b+16*a*b-40*d-32*d^2
[3+16*a,8+16*b,13+16*c,10+16*d]:	unknown -> [58] -3+3*a+8*a^2+8*b+8*b^2-13*c-8*c^2;-11+8*a+3*b+16*a*b-40*d-32*d^2
Maximum level 3 reached at [59]: a^2 + b^2 - c^2; a*b - 2*d^2
