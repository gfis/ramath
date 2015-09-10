TranspositionSet={[1,0,2]}
ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
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
----------------
expanding queue[4]^3,meter=[2,2,2]*16: x+6x^2+16x^3+16x^4+y^4-z-4z^2
[1+8x,0+4y,1+16z]:	unknown -> [5] x+12x^2+64x^3+128x^4+8y^4-z-8z^2
[5+8x,2+4y,1+16z]:	unknown -> [6] 20+125x+300x^2+320x^3+128x^4+4y+12y^2+16y^3+8y^4-z-8z^2
[5+8x,0+4y,9+16z]:	unknown -> [7] 17+125x+300x^2+320x^3+128x^4+8y^4-9z-8z^2
[1+8x,2+4y,9+16z]:	unknown -> [8] -2+x+12x^2+64x^3+128x^4+4y+12y^2+16y^3+8y^4-9z-8z^2
----------------
expanding queue[5]^4,meter=[2,1,2]*32: x+12x^2+64x^3+128x^4+8y^4-z-8z^2
[1+16x,0+4y,1+32z]:	unknown -> [9] x+24x^2+256x^3+1024x^4+4y^4-z-16z^2
[9+16x,0+4y,17+32z]:	unknown -> [10] 98+729x+1944x^2+2304x^3+1024x^4+4y^4-17z-16z^2
expanding queue[6]^4,meter=[2,1,2]*32: 20+125x+300x^2+320x^3+128x^4+4y+12y^2+16y^3+8y^4-z-8z^2
[5+16x,2+4y,1+32z]:	unknown -> [11] 10+125x+600x^2+1280x^3+1024x^4+2y+6y^2+8y^3+4y^4-z-16z^2
[13+16x,2+4y,17+32z]:	unknown -> [12] 442+2197x+4056x^2+3328x^3+1024x^4+2y+6y^2+8y^3+4y^4-17z-16z^2
expanding queue[7]^4,meter=[2,1,2]*32: 17+125x+300x^2+320x^3+128x^4+8y^4-9z-8z^2
[13+16x,0+4y,9+32z]:	unknown -> [13] 445+2197x+4056x^2+3328x^3+1024x^4+4y^4-9z-16z^2
[5+16x,0+4y,25+32z]:	unknown -> [14] 125x+600x^2+1280x^3+1024x^4+4y^4-25z-16z^2
expanding queue[8]^4,meter=[2,1,2]*32: -2+x+12x^2+64x^3+128x^4+4y+12y^2+16y^3+8y^4-9z-8z^2
[1+16x,2+4y,9+32z]:	unknown -> [15] -1+x+24x^2+256x^3+1024x^4+2y+6y^2+8y^3+4y^4-9z-16z^2
[9+16x,2+4y,25+32z]:	unknown -> [16] 93+729x+1944x^2+2304x^3+1024x^4+2y+6y^2+8y^3+4y^4-25z-16z^2
Maximum level 4 at [17]: x^4+y^4-z^2
