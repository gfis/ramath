TranspositionSet={[1,0,2]}
ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x⁴+y⁴-z²+1
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x⁴+y⁴-z²+1
[0+2x,0+2y,1+2z]:	unknown -> [1] 4x⁴+4y⁴-z-z²
----------------
expanding queue[1]^0,meter=[1,1,2]*4: 4x⁴+4y⁴-z-z²
[0+2x,0+2y,1+4z]:	unknown -> [2] 2x⁴+2y⁴-z-2z²
[0+2x,0+2y,3+4z]:	negative-1 [2] by {z=>-z-1}
----------------
expanding queue[2]^1,meter=[1,1,2]*8: 2x⁴+2y⁴-z-2z²
[0+2x,0+2y,1+8z]:	unknown -> [3] x⁴+y⁴-z-4z²
----------------
expanding queue[3]^2,meter=[2,2,2]*16: x⁴+y⁴-z-4z²
[0+4x,0+4y,1+16z]:	unknown -> [4] 8x⁴+8y⁴-z-8z²
[2+4x,2+4y,1+16z]:	unknown -> [5] 4x+12x²+16x³+8x⁴+4y+12y²+16y³+8y⁴-z-8z²+1
[2+4x,0+4y,9+16z]:	unknown -> [6] 4x+12x²+16x³+8x⁴+8y⁴-9z-8z²-2
[0+4x,2+4y,9+16z]:	transposed [6] by [1,0,2]
Maximum level 3 [7] mod 2: x⁴+y⁴-z²+1
