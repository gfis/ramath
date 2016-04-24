ExponentGCDs=[1,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] 4x-x³+y²
-> solution [0,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2]: 4x-x³+y²
[0+2x,0+2y]:	unknown -> [1] 2x-2x³+y²
-> solution [0,0],trivial(3) [2,0],trivial(1)
[1+2x,1+2y]:	unknown -> [2] x-6x²-4x³+2y+2y²+2
----------------
expanding queue[1]^0,meter=[2,2]: 2x-2x³+y²
[0+4x,0+4y]:	unknown -> [3] x-4x³+y²
-> solution [0,0],trivial(3)
[2+4x,0+4y]:	unknown -> [4] 2x+6x²+4x³-y²
-> solution [2,0],trivial(1)
expanding queue[2]^0,meter=[2,2]: x-6x²-4x³+2y+2y²+2
[1+4x,1+4y]:	unknown -> [5] x-12x²-16x³+2y+4y²+1
[1+4x,3+4y]:	negative-1 [5] by {y=>-y-1}
----------------
expanding queue[3]^1,meter=[2,2]: x-4x³+y²
[0+8x,0+8y]:	unknown -> [6] x-16x³+2y²
-> solution [0,0],trivial(3)
[4+8x,4+8y]:	unknown -> [7] 11x+24x²+16x³-2y-2y²+1
expanding queue[4]^1,meter=[2,2]: 2x+6x²+4x³-y²
[2+8x,0+8y]:	unknown -> [8] x+6x²+8x³-y²
-> solution [2,0],trivial(1)
[6+8x,0+8y]:	unknown -> [9] 13x+18x²+8x³-y²+3
expanding queue[5]^2,meter=[2,2]: x-12x²-16x³+2y+4y²+1
[5+8x,1+8y]:	unknown -> [10] 71x+120x²+64x³-2y-8y²+13
[5+8x,5+8y]:	unknown -> [11] 71x+120x²+64x³-10y-8y²+10
----------------
expanding queue[6]^3,meter=[2,2]: x-16x³+2y²
[0+16x,0+16y]:	unknown -> [12] x-64x³+4y²
-> solution [0,0],trivial(3)
[0+16x,8+16y]:	unknown -> [13] x-64x³+4y+4y²+1
expanding queue[7]^3,meter=[2,2]: 11x+24x²+16x³-2y-2y²+1
[12+16x,4+16y]:	unknown -> [14] 107x+144x²+64x³-2y-4y²+26
[12+16x,12+16y]:	negative-1 [14] by {y=>-y-1}
expanding queue[8]^4,meter=[2,2]: x+6x²+8x³-y²
[2+16x,0+16y]:	unknown -> [15] x+12x²+32x³-2y²
-> solution [2,0],trivial(1)
[10+16x,8+16y]:	unknown -> [16] 37x+60x²+32x³-2y-2y²+7
expanding queue[9]^4,meter=[2,2]: 13x+18x²+8x³-y²+3
[14+16x,0+16y]:	unknown -> [17] 73x+84x²+32x³-2y²+21
[6+16x,8+16y]:	unknown -> [18] 13x+36x²+32x³-2y-2y²+1
expanding queue[10]^5,meter=[2,2]: 71x+120x²+64x³-2y-8y²+13
[13+16x,1+16y]:	unknown -> [19] 503x+624x²+256x³-2y-16y²+134
[13+16x,9+16y]:	unknown -> [20] 503x+624x²+256x³-18y-16y²+129
expanding queue[11]^5,meter=[2,2]: 71x+120x²+64x³-10y-8y²+10
[5+16x,5+16y]:	unknown -> [21] 71x+240x²+256x³-10y-16y²+5
[5+16x,13+16y]:	unknown -> [22] 71x+240x²+256x³-26y-16y²-4
Maximum level 3 [23] mod 2: 4x-x³+y²
