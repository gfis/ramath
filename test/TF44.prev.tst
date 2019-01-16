Expanding for base=2, level=3, reasons+features=base,same,similiar,evenexp invall,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x⁴-y⁴-2z²
-> solution [0,0,0],trivial(3) [1,1,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x⁴-y⁴-2z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] 2x⁴-2y⁴-z²
-> solution [0,0,0],trivial(3) [2,2,0],trivial(3)
[1+2x,1+2y,0+2z]:	unknown -> [2] [1,1,0] x+3x²+4x³+2x⁴-y-3y²-4y³-2y⁴-z²
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2]: 2x⁴-2y⁴-z²
[0+4x,0+4y,0+4z]:	unknown -> [3] [0,0,0] 8x⁴-8y⁴-z²
-> solution [0,0,0],trivial(3) [4,4,0],trivial(3)
[2+4x,2+4y,0+4z]:	unknown -> [4] [1,1,0] 4x+12x²+16x³+8x⁴-4y-12y²-16y³-8y⁴-z²
-> solution [2,2,0],trivial(3) [6,6,0],trivial(3)
endexp[1]
expanding queue[2]^0,meter=[2,2,2]: x+3x²+4x³+2x⁴-y-3y²-4y³-2y⁴-z²
[1+4x,1+4y,0+4z]:	unknown -> [5] [0,0,0] x+6x²+16x³+16x⁴-y-6y²-16y³-16y⁴-2z²
-> solution [1,1,0],trivial(3) [5,5,0],trivial(3)
[3+4x,1+4y,0+4z]:	negative-1 [5] by {x=>-x-1}
[1+4x,3+4y,0+4z]:	negative-1 [5] by {y=>-y-1}
[3+4x,3+4y,0+4z]:	negative-1 [5] by {x=>-x-1,y=>-y-1}
-> solution [3,3,0],trivial(3) [7,7,0],trivial(3)
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2,2]: 8x⁴-8y⁴-z²
[0+8x,0+8y,0+8z]:	same 32x⁴-32y⁴-z² map {x=>x/2,y=>y/2} -> [1] 2x⁴-2y⁴-z²
-> solution [0,0,0],trivial(3) [8,8,0],trivial(3)
[4+8x,0+8y,0+8z]:	unknown -> [6] [1,0,0] 16x+48x²+64x³+32x⁴-32y⁴-z²+2
[0+8x,4+8y,0+8z]:	unknown -> [7] [0,1,0] 32x⁴-16y-48y²-64y³-32y⁴-z²-2
[4+8x,4+8y,0+8z]:	unknown -> [8] [1,1,0] 16x+48x²+64x³+32x⁴-16y-48y²-64y³-32y⁴-z²
-> solution [4,4,0],trivial(3) [12,12,0],trivial(3)
endexp[3]
expanding queue[4]^1,meter=[2,2,2]: 4x+12x²+16x³+8x⁴-4y-12y²-16y³-8y⁴-z²
[2+8x,2+8y,0+8z]:	unknown -> [9] [0,0,0] 2x+12x²+32x³+32x⁴-2y-12y²-32y³-32y⁴-z²
-> solution [2,2,0],trivial(3) [10,10,0],trivial(3)
[6+8x,2+8y,0+8z]:	negative-1 [9] by {x=>-x-1}
[2+8x,6+8y,0+8z]:	negative-1 [9] by {y=>-y-1}
[6+8x,6+8y,0+8z]:	negative-1 [9] by {x=>-x-1,y=>-y-1}
-> solution [6,6,0],trivial(3) [14,14,0],trivial(3)
endexp[4]
expanding queue[5]^2,meter=[2,2,2]: x+6x²+16x³+16x⁴-y-6y²-16y³-16y⁴-2z²
[1+8x,1+8y,0+8z]:	unknown -> [10] [0,0,0] x+12x²+64x³+128x⁴-y-12y²-64y³-128y⁴-4z²
-> solution [1,1,0],trivial(3) [9,9,0],trivial(3)
[5+8x,5+8y,0+8z]:	unknown -> [11] [1,1,0] 125x+300x²+320x³+128x⁴-125y-300y²-320y³-128y⁴-4z²
-> solution [5,5,0],trivial(3) [13,13,0],trivial(3)
[1+8x,1+8y,4+8z]:	unknown -> [12] [0,0,1] x+12x²+64x³+128x⁴-y-12y²-64y³-128y⁴-4z-4z²-1
[5+8x,5+8y,4+8z]:	unknown -> [13] [1,1,1] 125x+300x²+320x³+128x⁴-125y-300y²-320y³-128y⁴-4z-4z²-1
endexp[5]
---------------- level 3
Maximum level 3 [14] mod 2: x⁴-y⁴-2z²
