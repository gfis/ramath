TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
Expanding for base=2, level=3, reasons+features=base,transpose,same,similiar norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-5x*y*z+z²
-> solution [0,0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-5x*y*z+z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] x²+y²-10x*y*z+z²
-> solution [0,0,0],trivial(3)
[1+2x,1+2y,0+2z]:	unknown -> [2] [1,1,0] 2x+2x²+2y+2y²-5z-10x*z-10y*z-20x*y*z+2z²+1
[1+2x,0+2y,1+2z]:	transposed [2] by [0,2,1]
[0+2x,1+2y,1+2z]:	transposed [2] by [2,0,1]
[1+2x,1+2y,1+2z]:	unknown -> [3] [1,1,1] 3x-2x²+3y+10x*y-2y²+3z+10x*z+10y*z+20x*y*z-2z²+1
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2]: x²+y²-10x*y*z+z²
[0+4x,0+4y,0+4z]:	unknown -> [4] [0,0,0] x²+y²-20x*y*z+z²
-> solution [0,0,0],trivial(3)
endexp[1]
expanding queue[2]^0,meter=[1,1,2]: 2x+2x²+2y+2y²-5z-10x*z-10y*z-20x*y*z+2z²+1
[1+2x,1+2y,2+4z]:	unknown -> [5] [0,0,1] 4x-x²+4y+10x*y-y²+z+10x*z+10y*z+20x*y*z-4z²+1
endexp[2]
expanding queue[3]^0,meter=[2,2,2]: 3x-2x²+3y+10x*y-2y²+3z+10x*z+10y*z+20x*y*z-2z²+1
[3+4x,1+4y,1+4z]:	unknown -> [6] [1,0,0] x+4x²-13y-20x*y+4y²-13z-20x*z-60y*z-80x*y*z+4z²-1
[1+4x,3+4y,1+4z]:	transposed [6] by [1,0,2]
[1+4x,1+4y,3+4z]:	transposed [6] by [1,2,0]
[3+4x,3+4y,3+4z]:	unknown -> [7] [1,1,1] 39x-4x²+39y+60x*y-4y²+39z+60x*z+60y*z+80x*y*z-4z²+27
endexp[3]
---------------- level 2
expanding queue[4]^1,meter=[2,2,2]: x²+y²-20x*y*z+z²
[0+8x,0+8y,0+8z]:	unknown -> [8] [0,0,0] x²+y²-40x*y*z+z²
-> solution [0,0,0],trivial(3)
endexp[4]
expanding queue[5]^2,meter=[2,2,2]: 4x-x²+4y+10x*y-y²+z+10x*z+10y*z+20x*y*z-4z²+1
[3+4x,1+4y,2+8z]:	unknown -> [9] [1,0,0] 2x-2x²+14y+20x*y-2y²+11z+20x*z+60y*z+80x*y*z-8z²+2
[1+4x,3+4y,2+8z]:	transposed [9] by [1,0,2]
[1+4x,1+4y,6+8z]:	unknown -> [10] [0,0,1] 14x-2x²+14y+60x*y-2y²-7z+20x*z+20y*z+80x*y*z-8z²-1
[3+4x,3+4y,6+8z]:	unknown -> [11] [1,1,1] 42x-2x²+42y+60x*y-2y²+33z+60x*z+60y*z+80x*y*z-8z²+27
endexp[5]
expanding queue[6]^3,meter=[2,2,2]: x+4x²-13y-20x*y+4y²-13z-20x*z-60y*z-80x*y*z+4z²-1
[7+8x,1+8y,1+8z]:	unknown -> [12] [1,0,0] 9x+8x²-33y-40x*y+8y²-33z-40x*z-280y*z-320x*y*z+8z²+2
[3+8x,5+8y,1+8z]:	unknown -> [13] [0,1,0] 19x-8x²+5y+40x*y-8y²+73z+200x*z+120y*z+320x*y*z-8z²+5
[3+8x,1+8y,5+8z]:	transposed [13] by [0,2,1]
[7+8x,5+8y,5+8z]:	unknown -> [14] [1,1,1] 111x-8x²+165y+200x*y-8y²+165z+200x*z+280y*z+320x*y*z-8z²+97
endexp[6]
expanding queue[7]^3,meter=[2,2,2]: 39x-4x²+39y+60x*y-4y²+39z+60x*z+60y*z+80x*y*z-4z²+27
[7+8x,3+8y,3+8z]:	unknown -> [15] [1,0,0] 31x-8x²+99y+120x*y-8y²+99z+120x*z+280y*z+320x*y*z-8z²+31
[3+8x,7+8y,3+8z]:	transposed [15] by [1,0,2]
[3+8x,3+8y,7+8z]:	transposed [15] by [1,2,0]
[7+8x,7+8y,7+8z]:	unknown -> [16] [1,1,1] 231x-8x²+231y+280x*y-8y²+231z+280x*z+280y*z+320x*y*z-8z²+196
endexp[7]
---------------- level 3
Maximum level 3 [17] mod 2: x²+y²-5x*y*z+z²
