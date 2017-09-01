Expanding for base=2, level=5, reasons+features=base,same,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 2x²-4y³
-> solution [0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: 2x²-4y³
[0+2x,0+2y]:	unknown -> [1] [0,0] x²-4y³
-> solution [0,0],trivial(3)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: x²-4y³
[0+4x,0+4y]:	unknown -> [2] [0,0] x²-8y³
-> solution [0,0],trivial(3)
[0+4x,2+4y]:	unknown -> [3] [0,1] x²-6y-12y²-8y³-1
-> solution [4,2],NONTRIVIAL
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[2,2]: x²-8y³
[0+8x,0+8y]:	same x²-16y³ map {y=>y/2} -> [0] 2x²-4y³
-> solution [0,0],trivial(3)
[0+8x,4+8y]:	unknown -> [4] [0,1] x²-12y-24y²-16y³-2
endexp[2]
expanding queue[3]^1,meter=[2,2]: x²-6y-12y²-8y³-1
[4+8x,2+8y]:	unknown -> [5] [1,0] x+x²-3y-12y²-16y³
-> solution [4,2],NONTRIVIAL
endexp[3]
---------------- level 3
expanding queue[4]^2,meter=[2,2]: x²-12y-24y²-16y³-2
endexp[4]
expanding queue[5]^3,meter=[2,2]: x+x²-3y-12y²-16y³
[4+16x,2+16y]:	unknown -> [6] [0,0] x+2x²-3y-24y²-64y³
-> solution [4,2],NONTRIVIAL
[12+16x,2+16y]:	unknown -> [7] [1,0] 3x+2x²-3y-24y²-64y³+1
endexp[5]
---------------- level 4
expanding queue[6]^5,meter=[2,2]: x+2x²-3y-24y²-64y³
[4+32x,2+32y]:	unknown -> [8] [0,0] x+4x²-3y-48y²-256y³
-> solution [4,2],NONTRIVIAL
[20+32x,18+32y]:	unknown -> [9] [1,1] 5x+4x²-243y-432y²-256y³-44
endexp[6]
expanding queue[7]^5,meter=[2,2]: 3x+2x²-3y-24y²-64y³+1
[28+32x,2+32y]:	unknown -> [10] [1,0] 7x+4x²-3y-48y²-256y³+3
[12+32x,18+32y]:	unknown -> [11] [0,1] 3x+4x²-243y-432y²-256y³-45
endexp[7]
---------------- level 5
Maximum level 5 [12] mod 2: 2x²-4y³
