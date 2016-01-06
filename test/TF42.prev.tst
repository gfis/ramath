TranspositionSet={[1,0,2]}
ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x⁴+y⁴-z²
----------------
expanding queue[0]^-1,meter=[2,2,2]: x⁴+y⁴-z²
[0+2x,0+2y,0+2z]:	unknown -> [1] 4x⁴+4y⁴-z²
[1+2x,0+2y,1+2z]:	unknown -> [2] 2x+6x²+8x³+4x⁴+4y⁴-z-z²
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[1,1,2]: 4x⁴+4y⁴-z²
[0+2x,0+2y,0+4z]:	same form as x⁴+y⁴-z²
expanding queue[2]^0,meter=[1,1,2]: 2x+6x²+8x³+4x⁴+4y⁴-z-z²
[1+2x,0+2y,1+4z]:	unknown -> [3] x+3x²+4x³+2x⁴+2y⁴-z-2z²
[1+2x,0+2y,3+4z]:	negative-1 [3] by {z=>-z-1}
----------------
expanding queue[3]^2,meter=[2,1,2]: x+3x²+4x³+2x⁴+2y⁴-z-2z²
[1+4x,0+2y,1+8z]:	unknown -> [4] x+6x²+16x³+16x⁴+y⁴-z-4z²
[3+4x,0+2y,1+8z]:	negative-1 [4] by {x=>-x-1}
----------------
expanding queue[4]^3,meter=[2,2,2]: x+6x²+16x³+16x⁴+y⁴-z-4z²
[1+8x,0+4y,1+16z]:	unknown -> [5] x+12x²+64x³+128x⁴+8y⁴-z-8z²
[5+8x,2+4y,1+16z]:	unknown -> [6] 125x+300x²+320x³+128x⁴+4y+12y²+16y³+8y⁴-z-8z²+20
[5+8x,0+4y,9+16z]:	unknown -> [7] 125x+300x²+320x³+128x⁴+8y⁴-9z-8z²+17
[1+8x,2+4y,9+16z]:	unknown -> [8] x+12x²+64x³+128x⁴+4y+12y²+16y³+8y⁴-9z-8z²-2
Maximum level 3 [9] mod 2: x⁴+y⁴-z²
