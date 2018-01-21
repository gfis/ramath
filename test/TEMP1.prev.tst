Expanding for base=2, level=4, reasons+features=base,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] x²-y³-1
-> solution [1,0],trivial(1)
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: x²-y³-1
[1+2x,0+2y]:	unknown -> [1] [1,0] x+x²-2y³
-> solution [1,0],trivial(1) [3,2],NONTRIVIAL
[0+2x,1+2y]:	unknown -> [2] [0,1] 2x²-3y-6y²-4y³-1
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: x+x²-2y³
[1+4x,0+4y]:	unknown -> [3] [0,0] x+2x²-8y³
-> solution [1,0],trivial(1)
[3+4x,0+4y]:	unknown -> [4] [1,0] 3x+2x²-8y³+1
[1+4x,2+4y]:	unknown -> [5] [0,1] x+2x²-6y-12y²-8y³-1
[3+4x,2+4y]:	unknown -> [6] [1,1] 3x+2x²-6y-12y²-8y³
-> solution [3,2],NONTRIVIAL
endexp[1]
expanding queue[2]^0,meter=[2,2]: 2x²-3y-6y²-4y³-1
[0+4x,3+4y]:	unknown -> [7] [0,1] 4x²-27y-36y²-16y³-7
[2+4x,3+4y]:	unknown -> [8] [1,1] 4x+4x²-27y-36y²-16y³-6
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2]: x+2x²-8y³
[1+8x,0+8y]:	unknown -> [9] [0,0] x+4x²-32y³
-> solution [1,0],trivial(1)
[1+8x,4+8y]:	unknown -> [10] [0,1] x+4x²-24y-48y²-32y³-4
endexp[3]
expanding queue[4]^1,meter=[2,2]: 3x+2x²-8y³+1
[7+8x,0+8y]:	unknown -> [11] [1,0] 7x+4x²-32y³+3
[7+8x,4+8y]:	unknown -> [12] [1,1] 7x+4x²-24y-48y²-32y³-1
endexp[4]
expanding queue[5]^1,meter=[2,2]: x+2x²-6y-12y²-8y³-1
[5+8x,2+8y]:	unknown -> [13] [1,0] 5x+4x²-6y-24y²-32y³+1
[5+8x,6+8y]:	unknown -> [14] [1,1] 5x+4x²-54y-72y²-32y³-12
endexp[5]
expanding queue[6]^1,meter=[2,2]: 3x+2x²-6y-12y²-8y³
[3+8x,2+8y]:	unknown -> [15] [0,0] 3x+4x²-6y-24y²-32y³
-> solution [3,2],NONTRIVIAL
[3+8x,6+8y]:	unknown -> [16] [0,1] 3x+4x²-54y-72y²-32y³-13
endexp[6]
expanding queue[7]^2,meter=[2,2]: 4x²-27y-36y²-16y³-7
[0+8x,7+8y]:	unknown -> [17] [0,1] 8x²-147y-168y²-64y³-43
[4+8x,7+8y]:	unknown -> [18] [1,1] 8x+8x²-147y-168y²-64y³-41
endexp[7]
expanding queue[8]^2,meter=[2,2]: 4x+4x²-27y-36y²-16y³-6
[2+8x,3+8y]:	unknown -> [19] [0,0] 4x+8x²-27y-72y²-64y³-3
[6+8x,3+8y]:	unknown -> [20] [1,0] 12x+8x²-27y-72y²-64y³+1
endexp[8]
---------------- level 3
expanding queue[9]^3,meter=[2,2]: x+4x²-32y³
[1+16x,0+16y]:	unknown -> [21] [0,0] x+8x²-128y³
-> solution [1,0],trivial(1)
[1+16x,8+16y]:	unknown -> [22] [0,1] x+8x²-96y-192y²-128y³-16
endexp[9]
expanding queue[10]^3,meter=[2,2]: x+4x²-24y-48y²-32y³-4
[1+16x,4+16y]:	unknown -> [23] [0,0] x+8x²-24y-96y²-128y³-2
[1+16x,12+16y]:	unknown -> [24] [0,1] x+8x²-216y-288y²-128y³-54
endexp[10]
expanding queue[11]^4,meter=[2,2]: 7x+4x²-32y³+3
[15+16x,0+16y]:	unknown -> [25] [1,0] 15x+8x²-128y³+7
[15+16x,8+16y]:	unknown -> [26] [1,1] 15x+8x²-96y-192y²-128y³-9
endexp[11]
expanding queue[12]^4,meter=[2,2]: 7x+4x²-24y-48y²-32y³-1
[15+16x,4+16y]:	unknown -> [27] [1,0] 15x+8x²-24y-96y²-128y³+5
[15+16x,12+16y]:	unknown -> [28] [1,1] 15x+8x²-216y-288y²-128y³-47
endexp[12]
expanding queue[13]^5,meter=[2,2]: 5x+4x²-6y-24y²-32y³+1
[13+16x,2+16y]:	unknown -> [29] [1,0] 13x+8x²-6y-48y²-128y³+5
[13+16x,10+16y]:	unknown -> [30] [1,1] 13x+8x²-150y-240y²-128y³-26
endexp[13]
expanding queue[14]^5,meter=[2,2]: 5x+4x²-54y-72y²-32y³-12
[5+16x,6+16y]:	unknown -> [31] [0,0] 5x+8x²-54y-144y²-128y³-6
[5+16x,14+16y]:	unknown -> [32] [0,1] 5x+8x²-294y-336y²-128y³-85
endexp[14]
expanding queue[15]^6,meter=[2,2]: 3x+4x²-6y-24y²-32y³
[3+16x,2+16y]:	unknown -> [33] [0,0] 3x+8x²-6y-48y²-128y³
-> solution [3,2],NONTRIVIAL
[3+16x,10+16y]:	unknown -> [34] [0,1] 3x+8x²-150y-240y²-128y³-31
endexp[15]
expanding queue[16]^6,meter=[2,2]: 3x+4x²-54y-72y²-32y³-13
[11+16x,6+16y]:	unknown -> [35] [1,0] 11x+8x²-54y-144y²-128y³-3
[11+16x,14+16y]:	unknown -> [36] [1,1] 11x+8x²-294y-336y²-128y³-82
endexp[16]
expanding queue[17]^7,meter=[2,2]: 8x²-147y-168y²-64y³-43
[0+16x,15+16y]:	unknown -> [37] [0,1] 16x²-675y-720y²-256y³-211
[8+16x,15+16y]:	unknown -> [38] [1,1] 16x+16x²-675y-720y²-256y³-207
endexp[17]
expanding queue[18]^7,meter=[2,2]: 8x+8x²-147y-168y²-64y³-41
[4+16x,15+16y]:	unknown -> [39] [0,1] 8x+16x²-675y-720y²-256y³-210
[12+16x,15+16y]:	unknown -> [40] [1,1] 24x+16x²-675y-720y²-256y³-202
endexp[18]
expanding queue[19]^8,meter=[2,2]: 4x+8x²-27y-72y²-64y³-3
[2+16x,11+16y]:	unknown -> [41] [0,1] 4x+16x²-363y-528y²-256y³-83
[10+16x,11+16y]:	unknown -> [42] [1,1] 20x+16x²-363y-528y²-256y³-77
endexp[19]
expanding queue[20]^8,meter=[2,2]: 12x+8x²-27y-72y²-64y³+1
[6+16x,11+16y]:	unknown -> [43] [0,1] 12x+16x²-363y-528y²-256y³-81
[14+16x,11+16y]:	unknown -> [44] [1,1] 28x+16x²-363y-528y²-256y³-71
endexp[20]
---------------- level 4
Maximum level 4 [45] mod 2: x²-y³-1
