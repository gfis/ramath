TranspositionSet={[1,0,2]}
ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x^4+y^4-z^2
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^4+y^4-z^2
[0+2x,0+2y,0+2z]:	unknown -> [1] 4x^4+4y^4-z^2
[1+2x,0+2y,1+2z]:	unknown -> [2] 2x+6x^2+8x^3+4x^4+4y^4-z-z^2
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[1,1,2]*4: 4x^4+4y^4-z^2
[0+2x,0+2y,0+4z]:	same form as x^4+y^4-z^2
expanding queue[2]^0,meter=[1,1,2]*4: 2x+6x^2+8x^3+4x^4+4y^4-z-z^2
[1+2x,0+2y,1+4z]:	unknown -> [3] x+3x^2+4x^3+2x^4+2y^4-z-2z^2
[1+2x,0+2y,3+4z]:	negative-1 [3] by {z=>-z-1}
----------------
expanding queue[3]^2,meter=[2,1,2]*8: x+3x^2+4x^3+2x^4+2y^4-z-2z^2
[1+4x,0+2y,1+8z]:	unknown -> [4] x+6x^2+16x^3+16x^4+y^4-z-4z^2
[3+4x,0+2y,1+8z]:	negative-1 [4] by {x=>-x-1}
Maximum level 2 at [5]: x^4+y^4-z^2
