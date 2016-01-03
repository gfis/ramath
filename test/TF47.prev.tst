TranspositionSet={[1,0,2]}
ExponentGCDs=[2,2,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x⁴+18x²*y²+y⁴-z²
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x⁴+18x²*y²+y⁴-z²
[0+2x,0+2y,0+2z]:	unknown -> [1] 4x⁴+72x²*y²+4y⁴-z²
[1+2x,1+2y,0+2z]:	unknown -> [2] 20x+24x²+8x³+4x⁴+20y+72x*y+72x²*y+24y²+72x*y²+72x²*y²+8y³+4y⁴-z²+5
[1+2x,0+2y,1+2z]:	unknown -> [3] 2x+6x²+8x³+4x⁴+18y²+72x*y²+72x²*y²+4y⁴-z-z²
[0+2x,1+2y,1+2z]:	transposed [3] by [1,0,2]
----------------
expanding queue[1]^0,meter=[1,1,2]*4: 4x⁴+72x²*y²+4y⁴-z²
[0+2x,0+2y,0+4z]:	same form as x⁴+18x²*y²+y⁴-z²
expanding queue[2]^0,meter=[1,1,2]*4: 20x+24x²+8x³+4x⁴+20y+72x*y+72x²*y+24y²+72x*y²+72x²*y²+8y³+4y⁴-z²+5
[1+2x,1+2y,2+4z]:	unknown -> [4] 5x+6x²+2x³+x⁴+5y+18x*y+18x²*y+6y²+18x*y²+18x²*y²+2y³+y⁴-z-z²+1
expanding queue[3]^0,meter=[1,1,2]*4: 2x+6x²+8x³+4x⁴+18y²+72x*y²+72x²*y²+4y⁴-z-z²
[1+2x,0+2y,1+4z]:	unknown -> [5] x+3x²+4x³+2x⁴+9y²+36x*y²+36x²*y²+2y⁴-z-2z²
[1+2x,0+2y,3+4z]:	negative-1 [5] by {z=>-z-1}
----------------
expanding queue[4]^2,meter=[2,2,2]*8: 5x+6x²+2x³+x⁴+5y+18x*y+18x²*y+6y²+18x*y²+18x²*y²+2y³+y⁴-z-z²+1
expanding queue[5]^3,meter=[2,2,2]*8: x+3x²+4x³+2x⁴+9y²+36x*y²+36x²*y²+2y⁴-z-2z²
[1+4x,0+4y,1+8z]:	unknown -> [6] x+6x²+16x³+16x⁴+18y²+144x*y²+288x²*y²+16y⁴-z-4z²
[3+4x,0+4y,1+8z]:	negative-1 [6] by {x=>-x-1}
[1+4x,2+4y,5+8z]:	unknown -> [7] 37x+78x²+16x³+16x⁴+26y+144x*y+288x²*y+42y²+144x*y²+288x²*y²+32y³+16y⁴-5z-4z²+4
[3+4x,2+4y,5+8z]:	negative-1 [7] by {x=>-x-1}
----------------
expanding queue[6]^5,meter=[2,1,2]*16: x+6x²+16x³+16x⁴+18y²+144x*y²+288x²*y²+16y⁴-z-4z²
[1+8x,0+4y,1+16z]:	unknown -> [8] x+12x²+64x³+128x⁴+9y²+144x*y²+576x²*y²+8y⁴-z-8z²
[5+8x,0+4y,9+16z]:	unknown -> [9] 125x+300x²+320x³+128x⁴+225y²+720x*y²+576x²*y²+8y⁴-9z-8z²+17
expanding queue[7]^5,meter=[2,1,2]*16: 37x+78x²+16x³+16x⁴+26y+144x*y+288x²*y+42y²+144x*y²+288x²*y²+32y³+16y⁴-5z-4z²+4
[1+8x,2+4y,5+16z]:	unknown -> [10] 37x+156x²+64x³+128x⁴+13y+144x*y+576x²*y+21y²+144x*y²+576x²*y²+16y³+8y⁴-5z-8z²+2
[5+8x,2+4y,13+16z]:	unknown -> [11] 305x+444x²+320x³+128x⁴+229y+720x*y+576x²*y+237y²+720x*y²+576x²*y²+16y³+8y⁴-13z-8z²+71
Maximum level 3 [12] mod 2: x⁴+18x²*y²+y⁴-z²
