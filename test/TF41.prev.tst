Expanding for base=2, level=4, reasons+features=base,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x⁴-y⁴-z²
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x⁴-y⁴-z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] 4x⁴-4y⁴-z²
[1+2x,1+2y,0+2z]:	unknown -> [2] [1,1,0] 2x+6x²+8x³+4x⁴-2y-6y²-8y³-4y⁴-z²
[1+2x,0+2y,1+2z]:	unknown -> [3] [1,0,1] 2x+6x²+8x³+4x⁴-4y⁴-z-z²
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[1,1,2]: 4x⁴-4y⁴-z²
[0+2x,0+2y,0+4z]:	same form as x⁴-y⁴-z²
endexp[1]
expanding queue[2]^0,meter=[1,1,2]: 2x+6x²+8x³+4x⁴-2y-6y²-8y³-4y⁴-z²
[1+2x,1+2y,0+4z]:	unknown -> [4] [0,0,0] x+3x²+4x³+2x⁴-y-3y²-4y³-2y⁴-2z²
endexp[2]
expanding queue[3]^0,meter=[1,1,2]: 2x+6x²+8x³+4x⁴-4y⁴-z-z²
[1+2x,0+2y,1+4z]:	unknown -> [5] [0,0,0] x+3x²+4x³+2x⁴-2y⁴-z-2z²
[1+2x,0+2y,3+4z]:	negative-1 [5] by {z=>-z-1}
endexp[3]
---------------- level 2
expanding queue[4]^2,meter=[2,2,1]: x+3x²+4x³+2x⁴-y-3y²-4y³-2y⁴-2z²
[1+4x,1+4y,0+4z]:	unknown -> [6] [0,0,0] x+6x²+16x³+16x⁴-y-6y²-16y³-16y⁴-z²
[3+4x,1+4y,0+4z]:	negative-1 [6] by {x=>-x-1}
[1+4x,3+4y,0+4z]:	negative-1 [6] by {y=>-y-1}
[3+4x,3+4y,0+4z]:	negative-1 [6] by {x=>-x-1,y=>-y-1}
endexp[4]
expanding queue[5]^3,meter=[2,1,2]: x+3x²+4x³+2x⁴-2y⁴-z-2z²
[1+4x,0+2y,1+8z]:	unknown -> [7] [0,0,0] x+6x²+16x³+16x⁴-y⁴-z-4z²
[3+4x,0+2y,1+8z]:	negative-1 [7] by {x=>-x-1}
endexp[5]
---------------- level 3
expanding queue[6]^4,meter=[2,2,2]: x+6x²+16x³+16x⁴-y-6y²-16y³-16y⁴-z²
[1+8x,1+8y,0+8z]:	unknown -> [8] [0,0,0] x+12x²+64x³+128x⁴-y-12y²-64y³-128y⁴-2z²
[5+8x,5+8y,0+8z]:	unknown -> [9] [1,1,0] 125x+300x²+320x³+128x⁴-125y-300y²-320y³-128y⁴-2z²
[5+8x,1+8y,4+8z]:	unknown -> [10] [1,0,1] 125x+300x²+320x³+128x⁴-y-12y²-64y³-128y⁴-2z-2z²+19
[1+8x,5+8y,4+8z]:	unknown -> [11] [0,1,1] x+12x²+64x³+128x⁴-125y-300y²-320y³-128y⁴-2z-2z²-20
endexp[6]
expanding queue[7]^5,meter=[2,2,2]: x+6x²+16x³+16x⁴-y⁴-z-4z²
[1+8x,0+4y,1+16z]:	unknown -> [12] [0,0,0] x+12x²+64x³+128x⁴-8y⁴-z-8z²
[5+8x,2+4y,1+16z]:	unknown -> [13] [1,1,0] 125x+300x²+320x³+128x⁴-4y-12y²-16y³-8y⁴-z-8z²+19
[5+8x,0+4y,9+16z]:	unknown -> [14] [1,0,1] 125x+300x²+320x³+128x⁴-8y⁴-9z-8z²+17
[1+8x,2+4y,9+16z]:	unknown -> [15] [0,1,1] x+12x²+64x³+128x⁴-4y-12y²-16y³-8y⁴-9z-8z²-3
endexp[7]
---------------- level 4
Maximum level 4 [16] mod 2: x⁴-y⁴-z²
