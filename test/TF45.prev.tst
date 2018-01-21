TranspositionSet={[1,0,2]}
Expanding for base=2, level=3, reasons+features=base,transpose,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x⁴+y⁴-z²+1
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x⁴+y⁴-z²+1
[0+2x,0+2y,1+2z]:	unknown -> [1] [0,0,1] 4x⁴+4y⁴-z-z²
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[1,1,2]: 4x⁴+4y⁴-z-z²
[0+2x,0+2y,1+4z]:	unknown -> [2] [0,0,0] 2x⁴+2y⁴-z-2z²
[0+2x,0+2y,3+4z]:	negative-1 [2] by {z=>-z-1}
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[1,1,2]: 2x⁴+2y⁴-z-2z²
[0+2x,0+2y,1+8z]:	unknown -> [3] [0,0,0] x⁴+y⁴-z-4z²
endexp[2]
---------------- level 3
Maximum level 3 [4] mod 2: x⁴+y⁴-z²+1
