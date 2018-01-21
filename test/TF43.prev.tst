TranspositionSet={[1,0,2]}
Expanding for base=2, level=3, reasons+features=base,transpose,same,similiar,evenexp invall,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x⁴+x²*y²+y⁴-z²
-> solution [0,0,0],trivial(3) [1,0,1],trivial(3) [0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x⁴+x²*y²+y⁴-z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] 4x⁴+4x²*y²+4y⁴-z²
-> solution [0,0,0],trivial(3)
[1+2x,0+2y,1+2z]:	unknown -> [2] [1,0,1] 2x+6x²+8x³+4x⁴+y²+4x*y²+4x²*y²+4y⁴-z-z²
-> solution [1,0,1],trivial(3)
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2]: 4x⁴+4x²*y²+4y⁴-z²
[0+4x,0+4y,0+4z]:	same 16x⁴+16x²*y²+16y⁴-z² map {x=>x/2,y=>y/2} -> [0] x⁴+x²*y²+y⁴-z²
-> solution [0,0,0],trivial(3)
[2+4x,0+4y,0+4z]:	unknown -> [3] [1,0,0] 8x+24x²+32x³+16x⁴+4y²+16x*y²+16x²*y²+16y⁴-z²+1
-> solution [2,0,4],trivial(1)
[0+4x,2+4y,0+4z]:	transposed [3] by [1,0,2]
[2+4x,2+4y,0+4z]:	unknown -> [4] [1,1,0] 12x+28x²+32x³+16x⁴+12y+16x*y+16x²*y+28y²+16x*y²+16x²*y²+32y³+16y⁴-z²+3
endexp[1]
expanding queue[2]^0,meter=[2,2,2]: 2x+6x²+8x³+4x⁴+y²+4x*y²+4x²*y²+4y⁴-z-z²
[1+4x,0+4y,1+4z]:	unknown -> [5] [0,0,0] 2x+12x²+32x³+32x⁴+2y²+16x*y²+32x²*y²+32y⁴-z-2z²
-> solution [1,0,1],trivial(3)
[3+4x,0+4y,1+4z]:	negative-1 [5] by {x=>-x-1}
[1+4x,0+4y,3+4z]:	negative-1 [5] by {z=>-z-1}
[3+4x,0+4y,3+4z]:	negative-1 [5] by {x=>-x-1,z=>-z-1}
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2,2]: 8x+24x²+32x³+16x⁴+4y²+16x*y²+16x²*y²+16y⁴-z²+1
[2+8x,0+8y,4+8z]:	unknown -> [6] [0,0,1] 4x+24x²+64x³+64x⁴+4y²+32x*y²+64x²*y²+64y⁴-z-z²
-> solution [2,0,4],trivial(1)
[6+8x,0+8y,4+8z]:	negative-1 [6] by {x=>-x-1}
[2+8x,4+8y,4+8z]:	unknown -> [7] [0,1,1] 12x+40x²+64x³+64x⁴+36y+32x*y+64x²*y+100y²+32x*y²+64x²*y²+128y³+64y⁴-z-z²+5
[6+8x,4+8y,4+8z]:	negative-1 [7] by {x=>-x-1}
endexp[3]
expanding queue[4]^1,meter=[2,2,2]: 12x+28x²+32x³+16x⁴+12y+16x*y+16x²*y+28y²+16x*y²+16x²*y²+32y³+16y⁴-z²+3
endexp[4]
expanding queue[5]^2,meter=[2,2,2]: 2x+12x²+32x³+32x⁴+2y²+16x*y²+32x²*y²+32y⁴-z-2z²
[1+8x,0+8y,1+8z]:	unknown -> [8] [0,0,0] 2x+24x²+128x³+256x⁴+4y²+64x*y²+256x²*y²+256y⁴-z-4z²
-> solution [1,0,1],trivial(3)
[5+8x,0+8y,1+8z]:	unknown -> [9] [1,0,0] 250x+600x²+640x³+256x⁴+100y²+320x*y²+256x²*y²+256y⁴-z-4z²+39
[1+8x,4+8y,1+8z]:	unknown -> [10] [0,1,0] 18x+88x²+128x³+256x⁴+132y+64x*y+256x²*y+388y²+64x*y²+256x²*y²+512y³+256y⁴-z-4z²+17
[5+8x,4+8y,1+8z]:	unknown -> [11] [1,1,0] 330x+664x²+640x³+256x⁴+228y+320x*y+256x²*y+484y²+320x*y²+256x²*y²+512y³+256y⁴-z-4z²+80
endexp[5]
---------------- level 3
Maximum level 3 [12] mod 2: x⁴+x²*y²+y⁴-z²
