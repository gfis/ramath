TranspositionSet={[1,0,2]}
Expanding for base=2, level=3, reasons+features=base,transpose,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x⁴+y⁴-z²-1
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x⁴+y⁴-z²-1
[1+2x,0+2y,0+2z]:	unknown -> [1] [1,0,0] 2x+6x²+8x³+4x⁴+4y⁴-z²
[0+2x,1+2y,0+2z]:	transposed [1] by [1,0,2]
[1+2x,1+2y,1+2z]:	unknown -> [2] [1,1,1] 2x+6x²+8x³+4x⁴+2y+6y²+8y³+4y⁴-z-z²
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[1,1,2]: 2x+6x²+8x³+4x⁴+4y⁴-z²
[1+2x,0+2y,0+4z]:	unknown -> [3] [0,0,0] x+3x²+4x³+2x⁴+2y⁴-2z²
-> solution [1,2,4],NONTRIVIAL
endexp[1]
expanding queue[2]^0,meter=[1,1,2]: 2x+6x²+8x³+4x⁴+2y+6y²+8y³+4y⁴-z-z²
[1+2x,1+2y,1+4z]:	unknown -> [4] [0,0,0] x+3x²+4x³+2x⁴+y+3y²+4y³+2y⁴-z-2z²
[1+2x,1+2y,3+4z]:	negative-1 [4] by {z=>-z-1}
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,1,1]: x+3x²+4x³+2x⁴+2y⁴-2z²
[1+4x,0+2y,0+4z]:	unknown -> [5] [0,0,0] x+6x²+16x³+16x⁴+y⁴-z²
-> solution [1,2,4],NONTRIVIAL
[3+4x,0+2y,0+4z]:	negative-1 [5] by {x=>-x-1}
endexp[3]
expanding queue[4]^2,meter=[2,2,2]: x+3x²+4x³+2x⁴+y+3y²+4y³+2y⁴-z-2z²
[1+4x,1+4y,1+8z]:	unknown -> [6] [0,0,0] x+6x²+16x³+16x⁴+y+6y²+16y³+16y⁴-z-4z²
[3+4x,1+4y,1+8z]:	negative-1 [6] by {x=>-x-1}
-> solution [3,1,9],NONTRIVIAL
[1+4x,3+4y,1+8z]:	negative-1 [6] by {y=>-y-1}
-> solution [1,3,9],NONTRIVIAL
[3+4x,3+4y,1+8z]:	negative-1 [6] by {x=>-x-1,y=>-y-1}
endexp[4]
---------------- level 3
Maximum level 3 [7] mod 2: x⁴+y⁴-z²-1
