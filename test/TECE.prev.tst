Expanding for base=2, level=4, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] -4x²+4x⁴-2y²+2
-> solution [0,1],trivial(1) [1,1],trivial(2)
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: -4x²+4x⁴-2y²+2
[0+2x,1+2y]:	unknown -> [1] [0,1] 2x²-8x⁴+y+y²
-> solution [0,1],trivial(1)
[1+2x,1+2y]:	unknown -> [2] [1,1] 2x+10x²+16x³+8x⁴-y-y²
-> solution [1,1],trivial(2)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[1,2]: 2x²-8x⁴+y+y²
[0+2x,1+4y]:	unknown -> [3] [0,0] x²-4x⁴+y+2y²
-> solution [0,1],trivial(1) [2,5],NONTRIVIAL
[0+2x,3+4y]:	negative-1 [3] by {y=>-y-1}
endexp[1]
expanding queue[2]^0,meter=[1,2]: 2x+10x²+16x³+8x⁴-y-y²
[1+2x,1+4y]:	unknown -> [4] [0,0] x+5x²+8x³+4x⁴-y-2y²
-> solution [1,1],trivial(2)
[1+2x,3+4y]:	negative-1 [4] by {y=>-y-1}
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2]: x²-4x⁴+y+2y²
[0+4x,1+8y]:	unknown -> [5] [0,0] 2x²-32x⁴+y+4y²
-> solution [0,1],trivial(1)
[2+4x,5+8y]:	unknown -> [6] [1,1] 14x+46x²+64x³+32x⁴-5y-4y²
-> solution [2,5],NONTRIVIAL
endexp[3]
expanding queue[4]^2,meter=[2,2]: x+5x²+8x³+4x⁴-y-2y²
[1+4x,1+8y]:	unknown -> [7] [0,0] x+10x²+32x³+32x⁴-y-4y²
-> solution [1,1],trivial(2)
[3+4x,1+8y]:	negative-1 [7] by {x=>-x-1}
endexp[4]
---------------- level 3
expanding queue[5]^3,meter=[1,2]: 2x²-32x⁴+y+4y²
[0+4x,1+16y]:	unknown -> [8] [0,0] x²-16x⁴+y+8y²
-> solution [0,1],trivial(1)
endexp[5]
expanding queue[6]^3,meter=[1,2]: 14x+46x²+64x³+32x⁴-5y-4y²
[2+4x,5+16y]:	unknown -> [9] [0,0] 7x+23x²+32x³+16x⁴-5y-8y²
-> solution [2,5],NONTRIVIAL
endexp[6]
expanding queue[7]^4,meter=[2,2]: x+10x²+32x³+32x⁴-y-4y²
[1+8x,1+16y]:	unknown -> [10] [0,0] x+20x²+128x³+256x⁴-y-8y²
-> solution [1,1],trivial(2)
[5+8x,9+16y]:	unknown -> [11] [1,1] 245x+596x²+640x³+256x⁴-9y-8y²+35
endexp[7]
---------------- level 4
Maximum level 4 [12] mod 2: -4x²+4x⁴-2y²+2
