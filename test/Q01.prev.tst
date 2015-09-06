TranspositionSet={[1,0,2]}
ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp norm
Refined variables=x,y,z
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^4+y^4-z^2
solution [0,0,0],trivial(3)
[0+2x,0+2y,0+2z]:	unknown -> [1] 4x^4+4y^4-z^2
[1+2x,0+2y,1+2z]:	unknown -> [2] 2x+6x^2+8x^3+4x^4+4y^4-z-z^2
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[1,1,2]*4: 4x^4+4y^4-z^2
solution [0,0,0],trivial(3)
[0+2x,0+2y,0+4z]:	same form as x^4+y^4-z^2
expanding queue[2]^0,meter=[1,1,2]*4: 2x+6x^2+8x^3+4x^4+4y^4-z-z^2
solution [1,0,1],trivial(3)
[1+2x,0+2y,1+4z]:	unknown -> [3] x+3x^2+4x^3+2x^4+2y^4-z-2z^2
[1+2x,0+2y,3+4z]:	negative-1 [3] by {z=>-z-1}
----------------
expanding queue[3]^2,meter=[2,1,2]*8: x+3x^2+4x^3+2x^4+2y^4-z-2z^2
solution [1,0,1],trivial(3)
[1+4x,0+2y,1+8z]:	unknown -> [4] x+6x^2+16x^3+16x^4+y^4-z-4z^2
[3+4x,0+2y,1+8z]:	negative-1 [4] by {x=>-x-1}
----------------
expanding queue[4]^3,meter=[2,2,2]*16: x+6x^2+16x^3+16x^4+y^4-z-4z^2
solution [1,0,1],trivial(3)
[1+8x,0+4y,1+16z]:	unknown -> [5] x+12x^2+64x^3+128x^4+8y^4-z-8z^2
[5+8x,2+4y,1+16z]:	unknown -> [6] 20+125x+300x^2+320x^3+128x^4+4y+12y^2+16y^3+8y^4-z-8z^2
[5+8x,0+4y,9+16z]:	unknown -> [7] 17+125x+300x^2+320x^3+128x^4+8y^4-9z-8z^2
[1+8x,2+4y,9+16z]:	unknown -> [8] -2+x+12x^2+64x^3+128x^4+4y+12y^2+16y^3+8y^4-9z-8z^2
Maximum level 3 reached at [9]: x^4+y^4-z^2
