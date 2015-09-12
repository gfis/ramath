ExponentGCDs=[1,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm,invall
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] 4x-x^3+y^2
-> solution [0,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2]*2: 4x-x^3+y^2
[0+2x,0+2y]:	unknown -> [1] 2x-2x^3+y^2
-> solution [0,0],trivial(3) [2,0],trivial(1)
[1+2x,1+2y]:	unknown -> [2] 2+x-6x^2-4x^3+2y+2y^2
----------------
expanding queue[1]^0,meter=[2,2]*4: 2x-2x^3+y^2
[0+4x,0+4y]:	unknown -> [3] x-4x^3+y^2
-> solution [0,0],trivial(3)
[2+4x,0+4y]:	unknown -> [4] -2x-6x^2-4x^3+y^2
-> solution [2,0],trivial(1)
expanding queue[2]^0,meter=[2,2]*4: 2+x-6x^2-4x^3+2y+2y^2
[1+4x,1+4y]:	unknown -> [5] 1+x-12x^2-16x^3+2y+4y^2
[1+4x,3+4y]:	negative-1 [5] by {y=>-y-1}
----------------
expanding queue[3]^1,meter=[2,2]*8: x-4x^3+y^2
[0+8x,0+8y]:	unknown -> [6] x-16x^3+2y^2
-> solution [0,0],trivial(3)
[4+8x,4+8y]:	unknown -> [7] -1-11x-24x^2-16x^3+2y+2y^2
expanding queue[4]^1,meter=[2,2]*8: -2x-6x^2-4x^3+y^2
[2+8x,0+8y]:	unknown -> [8] -x-6x^2-8x^3+y^2
-> solution [2,0],trivial(1)
[6+8x,0+8y]:	unknown -> [9] -3-13x-18x^2-8x^3+y^2
expanding queue[5]^2,meter=[2,2]*8: 1+x-12x^2-16x^3+2y+4y^2
[5+8x,1+8y]:	unknown -> [10] -13-71x-120x^2-64x^3+2y+8y^2
[5+8x,5+8y]:	unknown -> [11] -10-71x-120x^2-64x^3+10y+8y^2
----------------
expanding queue[6]^3,meter=[2,2]*16: x-16x^3+2y^2
[0+16x,0+16y]:	unknown -> [12] x-64x^3+4y^2
-> solution [0,0],trivial(3)
[0+16x,8+16y]:	unknown -> [13] 1+x-64x^3+4y+4y^2
expanding queue[7]^3,meter=[2,2]*16: -1-11x-24x^2-16x^3+2y+2y^2
[12+16x,4+16y]:	unknown -> [14] -26-107x-144x^2-64x^3+2y+4y^2
[12+16x,12+16y]:	negative-1 [14] by {y=>-y-1}
expanding queue[8]^4,meter=[2,2]*16: -x-6x^2-8x^3+y^2
[2+16x,0+16y]:	unknown -> [15] -x-12x^2-32x^3+2y^2
-> solution [2,0],trivial(1)
[10+16x,8+16y]:	unknown -> [16] -7-37x-60x^2-32x^3+2y+2y^2
expanding queue[9]^4,meter=[2,2]*16: -3-13x-18x^2-8x^3+y^2
[14+16x,0+16y]:	unknown -> [17] -21-73x-84x^2-32x^3+2y^2
[6+16x,8+16y]:	unknown -> [18] -1-13x-36x^2-32x^3+2y+2y^2
expanding queue[10]^5,meter=[2,2]*16: -13-71x-120x^2-64x^3+2y+8y^2
[13+16x,1+16y]:	unknown -> [19] -134-503x-624x^2-256x^3+2y+16y^2
[13+16x,9+16y]:	unknown -> [20] -129-503x-624x^2-256x^3+18y+16y^2
expanding queue[11]^5,meter=[2,2]*16: -10-71x-120x^2-64x^3+10y+8y^2
[5+16x,5+16y]:	unknown -> [21] -5-71x-240x^2-256x^3+10y+16y^2
[5+16x,13+16y]:	unknown -> [22] 4-71x-240x^2-256x^3+26y+16y^2
Maximum level 3 at [23]: 4x-x^3+y^2
