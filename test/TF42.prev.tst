TranspositionSet={[1,0,2]}
Expanding for base=2, level=3, reasons+features=base,transpose,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x⁴+y⁴-z²
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x⁴+y⁴-z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] 4x⁴+4y⁴-z²
[1+2x,0+2y,1+2z]:	unknown -> [2] [1,0,1] 2x+6x²+8x³+4x⁴+4y⁴-z-z²
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[1,1,2]: 4x⁴+4y⁴-z²
[0+2x,0+2y,0+4z]:	same form as x⁴+y⁴-z²
endexp[1]
expanding queue[2]^0,meter=[1,1,2]: 2x+6x²+8x³+4x⁴+4y⁴-z-z²
[1+2x,0+2y,1+4z]:	unknown -> [3] [0,0,0] x+3x²+4x³+2x⁴+2y⁴-z-2z²
[1+2x,0+2y,3+4z]:	negative-1 [3] by {z=>-z-1}
endexp[2]
---------------- level 2
expanding queue[3]^2,meter=[2,1,2]: x+3x²+4x³+2x⁴+2y⁴-z-2z²
[1+4x,0+2y,1+8z]:	unknown -> [4] [0,0,0] x+6x²+16x³+16x⁴+y⁴-z-4z²
[3+4x,0+2y,1+8z]:	negative-1 [4] by {x=>-x-1}
endexp[3]
---------------- level 3
Maximum level 3 [5] mod 2: x⁴+y⁴-z²
