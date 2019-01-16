TranspositionSet={[1,0,2]}
Expanding for base=2, level=3, reasons+features=base,transpose,same,similiar,evenexp invall
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-4z-1
-> solution [1,0,0],trivial(3) [0,1,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-4z-1
[1+2x,0+2y,0+2z]:	unknown -> [1] [1,0,0] 4x+4x²+4y²-8z
-> solution [1,0,0],trivial(3) [3,0,2],trivial(1)
[0+2x,1+2y,0+2z]:	transposed [1] by [1,0,2]
[1+2x,0+2y,1+2z]:	unknown -> [2] [1,0,1] 4x+4x²+4y²-8z-4
-> solution [1,2,1],trivial(2) [3,2,3],trivial(2)
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2]: 4x+4x²+4y²-8z
[1+4x,0+4y,0+4z]:	unknown -> [3] [0,0,0] 8x+16x²+16y²-16z
-> solution [1,0,0],trivial(3) [1,4,4],trivial(2)
[3+4x,0+4y,0+4z]:	negative-1 [3] by {x=>-x-1}
[1+4x,0+4y,2+4z]:	unknown -> [4] [0,0,1] 8x+16x²+16y²-16z-8
-> solution [5,0,6],trivial(1)
[3+4x,0+4y,2+4z]:	negative-1 [4] by {x=>-x-1}
-> solution [3,0,2],trivial(1) [3,4,6],NONTRIVIAL
endexp[1]
expanding queue[2]^0,meter=[2,2,2]: 4x+4x²+4y²-8z-4
[1+4x,2+4y,1+4z]:	unknown -> [5] [0,1,0] 8x+16x²+16y+16y²-16z
-> solution [1,2,1],trivial(2)
[3+4x,2+4y,1+4z]:	negative-1 [5] by {x=>-x-1}
[1+4x,2+4y,3+4z]:	unknown -> [6] [0,1,1] 8x+16x²+16y+16y²-16z-8
-> solution [5,2,7],NONTRIVIAL
[3+4x,2+4y,3+4z]:	negative-1 [6] by {x=>-x-1}
-> solution [3,2,3],trivial(2)
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2,2]: 8x+16x²+16y²-16z
[1+8x,0+8y,0+8z]:	unknown -> [7] [0,0,0] 16x+64x²+64y²-32z
-> solution [1,0,0],trivial(3)
[1+8x,4+8y,0+8z]:	unknown -> [8] [0,1,0] 16x+64x²+64y+64y²-32z+16
[1+8x,0+8y,4+8z]:	unknown -> [9] [0,0,1] 16x+64x²+64y²-32z-16
[1+8x,4+8y,4+8z]:	unknown -> [10] [0,1,1] 16x+64x²+64y+64y²-32z
-> solution [1,4,4],trivial(2)
endexp[3]
expanding queue[4]^1,meter=[2,2,2]: 8x+16x²+16y²-16z-8
[5+8x,0+8y,2+8z]:	unknown -> [11] [1,0,0] 80x+64x²+64y²-32z+16
[5+8x,4+8y,2+8z]:	unknown -> [12] [1,1,0] 80x+64x²+64y+64y²-32z+32
-> solution [5,4,10],NONTRIVIAL
[5+8x,0+8y,6+8z]:	unknown -> [13] [1,0,1] 80x+64x²+64y²-32z
-> solution [5,0,6],trivial(1)
[5+8x,4+8y,6+8z]:	unknown -> [14] [1,1,1] 80x+64x²+64y+64y²-32z+16
endexp[4]
expanding queue[5]^2,meter=[2,2,2]: 8x+16x²+16y+16y²-16z
[1+8x,2+8y,1+8z]:	unknown -> [15] [0,0,0] 16x+64x²+32y+64y²-32z
-> solution [1,2,1],trivial(2)
[1+8x,6+8y,1+8z]:	negative-1 [15] by {y=>-y-1}
-> solution [1,6,9],NONTRIVIAL
[1+8x,2+8y,5+8z]:	unknown -> [16] [0,0,1] 16x+64x²+32y+64y²-32z-16
[1+8x,6+8y,5+8z]:	negative-1 [16] by {y=>-y-1}
endexp[5]
expanding queue[6]^2,meter=[2,2,2]: 8x+16x²+16y+16y²-16z-8
[5+8x,2+8y,3+8z]:	unknown -> [17] [1,0,0] 80x+64x²+32y+64y²-32z+16
[5+8x,6+8y,3+8z]:	negative-1 [17] by {y=>-y-1}
[5+8x,2+8y,7+8z]:	unknown -> [18] [1,0,1] 80x+64x²+32y+64y²-32z
-> solution [5,2,7],NONTRIVIAL
[5+8x,6+8y,7+8z]:	negative-1 [18] by {y=>-y-1}
-> solution [5,6,15],NONTRIVIAL
endexp[6]
---------------- level 3
Maximum level 3 [19] mod 2: x²+y²-4z-1
