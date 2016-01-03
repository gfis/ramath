TranspositionSet={[1,0,2]}
ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x⁴+y⁴-z²-1
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x⁴+y⁴-z²-1
[1+2x,0+2y,0+2z]:	unknown -> [1] 2x+6x²+8x³+4x⁴+4y⁴-z²
[0+2x,1+2y,0+2z]:	transposed [1] by [1,0,2]
[1+2x,1+2y,1+2z]:	unknown -> [2] 2x+6x²+8x³+4x⁴+2y+6y²+8y³+4y⁴-z-z²
----------------
expanding queue[1]^0,meter=[1,1,2]*4: 2x+6x²+8x³+4x⁴+4y⁴-z²
[1+2x,0+2y,0+4z]:	unknown -> [3] x+3x²+4x³+2x⁴+2y⁴-2z²
-> solution [1,2,4],NONTRIVIAL
expanding queue[2]^0,meter=[1,1,2]*4: 2x+6x²+8x³+4x⁴+2y+6y²+8y³+4y⁴-z-z²
[1+2x,1+2y,1+4z]:	unknown -> [4] x+3x²+4x³+2x⁴+y+3y²+4y³+2y⁴-z-2z²
[1+2x,1+2y,3+4z]:	negative-1 [4] by {z=>-z-1}
----------------
expanding queue[3]^1,meter=[2,1,1]*8: x+3x²+4x³+2x⁴+2y⁴-2z²
[1+4x,0+2y,0+4z]:	unknown -> [5] x+6x²+16x³+16x⁴+y⁴-z²
-> solution [1,2,4],NONTRIVIAL
[3+4x,0+2y,0+4z]:	negative-1 [5] by {x=>-x-1}
expanding queue[4]^2,meter=[2,2,2]*8: x+3x²+4x³+2x⁴+y+3y²+4y³+2y⁴-z-2z²
[1+4x,1+4y,1+8z]:	unknown -> [6] x+6x²+16x³+16x⁴+y+6y²+16y³+16y⁴-z-4z²
[3+4x,1+4y,1+8z]:	negative-1 [6] by {x=>-x-1}
-> solution [3,1,9],NONTRIVIAL
[1+4x,3+4y,1+8z]:	negative-1 [6] by {y=>-y-1}
-> solution [1,3,9],NONTRIVIAL
[3+4x,3+4y,1+8z]:	negative-1 [6] by {x=>-x-1,y=>-y-1}
----------------
expanding queue[5]^3,meter=[2,2,2]*16: x+6x²+16x³+16x⁴+y⁴-z²
[1+8x,0+4y,0+8z]:	unknown -> [7] x+12x²+64x³+128x⁴+8y⁴-2z²
[5+8x,2+4y,0+8z]:	unknown -> [8] 125x+300x²+320x³+128x⁴+4y+12y²+16y³+8y⁴-2z²+20
[5+8x,0+4y,4+8z]:	unknown -> [9] 125x+300x²+320x³+128x⁴+8y⁴-2z-2z²+19
[1+8x,2+4y,4+8z]:	unknown -> [10] x+12x²+64x³+128x⁴+4y+12y²+16y³+8y⁴-2z-2z²
-> solution [1,2,4],NONTRIVIAL
expanding queue[6]^4,meter=[2,2,2]*16: x+6x²+16x³+16x⁴+y+6y²+16y³+16y⁴-z-4z²
[1+8x,1+8y,1+16z]:	unknown -> [11] x+12x²+64x³+128x⁴+y+12y²+64y³+128y⁴-z-8z²
[5+8x,5+8y,1+16z]:	unknown -> [12] 125x+300x²+320x³+128x⁴+125y+300y²+320y³+128y⁴-z-8z²+39
[5+8x,1+8y,9+16z]:	unknown -> [13] 125x+300x²+320x³+128x⁴+y+12y²+64y³+128y⁴-9z-8z²+17
-> solution [5,1,25],NONTRIVIAL
[1+8x,5+8y,9+16z]:	transposed [13] by [1,0,2]
Maximum level 3 [14] mod 2: x⁴+y⁴-z²-1
