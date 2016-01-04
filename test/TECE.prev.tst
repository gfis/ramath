ExponentGCDs=[2,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] -4x²+4x⁴-2y²+2
-> solution [0,1],trivial(1) [1,1],trivial(2)
----------------
expanding queue[0]^-1,meter=[2,2]*2: -4x²+4x⁴-2y²+2
[0+2x,1+2y]:	unknown -> [1] 2x²-8x⁴+y+y²
-> solution [0,1],trivial(1)
[1+2x,1+2y]:	unknown -> [2] 2x+10x²+16x³+8x⁴-y-y²
-> solution [1,1],trivial(2)
----------------
expanding queue[1]^0,meter=[1,2]*4: 2x²-8x⁴+y+y²
[0+2x,1+4y]:	unknown -> [3] x²-4x⁴+y+2y²
-> solution [0,1],trivial(1) [2,5],NONTRIVIAL
[0+2x,3+4y]:	negative-1 [3] by {y=>-y-1}
expanding queue[2]^0,meter=[1,2]*4: 2x+10x²+16x³+8x⁴-y-y²
[1+2x,1+4y]:	unknown -> [4] x+5x²+8x³+4x⁴-y-2y²
-> solution [1,1],trivial(2)
[1+2x,3+4y]:	negative-1 [4] by {y=>-y-1}
----------------
expanding queue[3]^1,meter=[2,2]*8: x²-4x⁴+y+2y²
[0+4x,1+8y]:	unknown -> [5] 2x²-32x⁴+y+4y²
-> solution [0,1],trivial(1)
[2+4x,5+8y]:	unknown -> [6] 14x+46x²+64x³+32x⁴-5y-4y²
-> solution [2,5],NONTRIVIAL
expanding queue[4]^2,meter=[2,2]*8: x+5x²+8x³+4x⁴-y-2y²
[1+4x,1+8y]:	unknown -> [7] x+10x²+32x³+32x⁴-y-4y²
-> solution [1,1],trivial(2)
[3+4x,1+8y]:	negative-1 [7] by {x=>-x-1}
----------------
expanding queue[5]^3,meter=[1,2]*16: 2x²-32x⁴+y+4y²
[0+4x,1+16y]:	unknown -> [8] x²-16x⁴+y+8y²
-> solution [0,1],trivial(1)
expanding queue[6]^3,meter=[1,2]*16: 14x+46x²+64x³+32x⁴-5y-4y²
[2+4x,5+16y]:	unknown -> [9] 7x+23x²+32x³+16x⁴-5y-8y²
-> solution [2,5],NONTRIVIAL
expanding queue[7]^4,meter=[2,2]*16: x+10x²+32x³+32x⁴-y-4y²
[1+8x,1+16y]:	unknown -> [10] x+20x²+128x³+256x⁴-y-8y²
-> solution [1,1],trivial(2)
[5+8x,9+16y]:	unknown -> [11] 245x+596x²+640x³+256x⁴-9y-8y²+35
----------------
expanding queue[8]^5,meter=[2,2]*32: x²-16x⁴+y+8y²
[0+8x,1+32y]:	unknown -> [12] 2x²-128x⁴+y+16y²
-> solution [0,1],trivial(1)
[4+8x,17+32y]:	unknown -> [13] 62x+190x²+256x³+128x⁴-17y-16y²+3
expanding queue[9]^6,meter=[2,2]*32: 7x+23x²+32x³+16x⁴-5y-8y²
[2+8x,5+32y]:	unknown -> [14] 7x+46x²+128x³+128x⁴-5y-16y²
-> solution [2,5],NONTRIVIAL
[6+8x,5+32y]:	negative-1 [14] by {x=>-x-1}
expanding queue[10]^7,meter=[2,2]*32: x+20x²+128x³+256x⁴-y-8y²
[1+16x,1+32y]:	unknown -> [15] x+40x²+512x³+2048x⁴-y-16y²
-> solution [1,1],trivial(2)
[9+16x,17+32y]:	unknown -> [16] 1449x+3880x²+4608x³+2048x⁴-17y-16y²+198
expanding queue[11]^7,meter=[2,2]*32: 245x+596x²+640x³+256x⁴-9y-8y²+35
[13+16x,9+32y]:	unknown -> [17] 4381x+8104x²+6656x³+2048x⁴-9y-16y²+886
[5+16x,25+32y]:	unknown -> [18] 245x+1192x²+2560x³+2048x⁴-25y-16y²+9
Maximum level 4 [19] mod 2: -4x²+4x⁴-2y²+2
