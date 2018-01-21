TranspositionSet={[1,0,2]}
isHomogeneous
Expanding for base=2, level=3, reasons+features=base,transpose,primitive,same,similiar norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x³+y³-2z³
-> solution [0,0,0],trivial(3) [1,1,1],trivial(2)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,1]: x³+y³-2z³
[0+2x,0+2y,0+1z]:	unknown -> [1] [0,0,0] 4x³+4y³-z³
-> solution [0,0,0],trivial(3)
[1+2x,1+2y,0+1z]:	unknown -> [2] [1,1,0] 3x+6x²+4x³+3y+6y²+4y³-z³+1
-> solution [1,1,1],trivial(2)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[1,1,2]: 4x³+4y³-z³
[0+2x,0+2y,0+2z]:	non-primitive
-> solution [0,0,0],trivial(3) [2,2,2],trivial(2)
endexp[1]
expanding queue[2]^0,meter=[2,2,2]: 3x+6x²+4x³+3y+6y²+4y³-z³+1
[3+4x,1+4y,0+2z]:	unknown -> [3] [1,0,0] 27x+36x²+16x³+3y+12y²+16y³-4z³+7
[1+4x,3+4y,0+2z]:	transposed [3] by [1,0,2]
[1+4x,1+4y,1+2z]:	unknown -> [4] [0,0,1] 3x+12x²+16x³+3y+12y²+16y³-3z-6z²-4z³
-> solution [1,1,1],trivial(2)
[3+4x,3+4y,1+2z]:	unknown -> [5] [1,1,1] 27x+36x²+16x³+27y+36y²+16y³-3z-6z²-4z³+13
-> solution [3,3,3],trivial(2)
endexp[2]
---------------- level 2
expanding queue[3]^2,meter=[2,2,1]: 27x+36x²+16x³+3y+12y²+16y³-4z³+7
[7+8x,1+8y,0+2z]:	unknown -> [6] [1,0,0] 147x+168x²+64x³+3y+24y²+64y³-2z³+43
[3+8x,5+8y,0+2z]:	unknown -> [7] [0,1,0] 27x+72x²+64x³+75y+120y²+64y³-2z³+19
endexp[3]
expanding queue[4]^2,meter=[2,2,2]: 3x+12x²+16x³+3y+12y²+16y³-3z-6z²-4z³
[1+8x,1+8y,1+4z]:	unknown -> [8] [0,0,0] 3x+24x²+64x³+3y+24y²+64y³-3z-12z²-16z³
-> solution [1,1,1],trivial(2)
[5+8x,5+8y,1+4z]:	unknown -> [9] [1,1,0] 75x+120x²+64x³+75y+120y²+64y³-3z-12z²-16z³+31
-> solution [5,5,5],trivial(2)
[5+8x,1+8y,3+4z]:	unknown -> [10] [1,0,1] 75x+120x²+64x³+3y+24y²+64y³-27z-36z²-16z³+9
[1+8x,5+8y,3+4z]:	transposed [10] by [1,0,2]
endexp[4]
expanding queue[5]^2,meter=[2,2,2]: 27x+36x²+16x³+27y+36y²+16y³-3z-6z²-4z³+13
[7+8x,3+8y,1+4z]:	unknown -> [11] [1,0,0] 147x+168x²+64x³+27y+72y²+64y³-3z-12z²-16z³+46
[3+8x,7+8y,1+4z]:	transposed [11] by [1,0,2]
[3+8x,3+8y,3+4z]:	unknown -> [12] [0,0,1] 27x+72x²+64x³+27y+72y²+64y³-27z-36z²-16z³
-> solution [3,3,3],trivial(2)
[7+8x,7+8y,3+4z]:	unknown -> [13] [1,1,1] 147x+168x²+64x³+147y+168y²+64y³-27z-36z²-16z³+79
-> solution [7,7,7],trivial(2)
endexp[5]
---------------- level 3
Maximum level 3 [14] mod 2: x³+y³-2z³
