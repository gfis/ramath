ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x⁴-y⁴-z²
----------------
expanding queue[0]^-1,meter=[2,2,2]: x⁴-y⁴-z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] 4x⁴-4y⁴-z²
[1+2x,1+2y,0+2z]:	unknown -> [2] [1,1,0] 2x+6x²+8x³+4x⁴-2y-6y²-8y³-4y⁴-z²
[1+2x,0+2y,1+2z]:	unknown -> [3] [1,0,1] 2x+6x²+8x³+4x⁴-4y⁴-z-z²
----------------
expanding queue[1]^0,meter=[1,1,2]: 4x⁴-4y⁴-z²
[0+2x,0+2y,0+4z]:	same form as x⁴-y⁴-z²
expanding queue[2]^0,meter=[1,1,2]: 2x+6x²+8x³+4x⁴-2y-6y²-8y³-4y⁴-z²
[1+2x,1+2y,0+4z]:	unknown -> [4] [0,0,0] x+3x²+4x³+2x⁴-y-3y²-4y³-2y⁴-2z²
expanding queue[3]^0,meter=[1,1,2]: 2x+6x²+8x³+4x⁴-4y⁴-z-z²
[1+2x,0+2y,1+4z]:	unknown -> [5] [0,0,0] x+3x²+4x³+2x⁴-2y⁴-z-2z²
[1+2x,0+2y,3+4z]:	negative-1 [5] by {z=>-z-1}
----------------
expanding queue[4]^2,meter=[2,2,1]: x+3x²+4x³+2x⁴-y-3y²-4y³-2y⁴-2z²
[1+4x,1+4y,0+4z]:	unknown -> [6] [0,0,0] x+6x²+16x³+16x⁴-y-6y²-16y³-16y⁴-z²
[3+4x,1+4y,0+4z]:	negative-1 [6] by {x=>-x-1}
[1+4x,3+4y,0+4z]:	negative-1 [6] by {y=>-y-1}
[3+4x,3+4y,0+4z]:	negative-1 [6] by {x=>-x-1,y=>-y-1}
expanding queue[5]^3,meter=[2,1,2]: x+3x²+4x³+2x⁴-2y⁴-z-2z²
[1+4x,0+2y,1+8z]:	unknown -> [7] [0,0,0] x+6x²+16x³+16x⁴-y⁴-z-4z²
[3+4x,0+2y,1+8z]:	negative-1 [7] by {x=>-x-1}
----------------
expanding queue[6]^4,meter=[2,2,2]: x+6x²+16x³+16x⁴-y-6y²-16y³-16y⁴-z²
[1+8x,1+8y,0+8z]:	unknown -> [8] [0,0,0] x+12x²+64x³+128x⁴-y-12y²-64y³-128y⁴-2z²
[5+8x,5+8y,0+8z]:	unknown -> [9] [1,1,0] 125x+300x²+320x³+128x⁴-125y-300y²-320y³-128y⁴-2z²
[5+8x,1+8y,4+8z]:	unknown -> [10] [1,0,1] 125x+300x²+320x³+128x⁴-y-12y²-64y³-128y⁴-2z-2z²+19
[1+8x,5+8y,4+8z]:	unknown -> [11] [0,1,1] x+12x²+64x³+128x⁴-125y-300y²-320y³-128y⁴-2z-2z²-20
expanding queue[7]^5,meter=[2,2,2]: x+6x²+16x³+16x⁴-y⁴-z-4z²
[1+8x,0+4y,1+16z]:	unknown -> [12] [0,0,0] x+12x²+64x³+128x⁴-8y⁴-z-8z²
[5+8x,2+4y,1+16z]:	unknown -> [13] [1,1,0] 125x+300x²+320x³+128x⁴-4y-12y²-16y³-8y⁴-z-8z²+19
[5+8x,0+4y,9+16z]:	unknown -> [14] [1,0,1] 125x+300x²+320x³+128x⁴-8y⁴-9z-8z²+17
[1+8x,2+4y,9+16z]:	unknown -> [15] [0,1,1] x+12x²+64x³+128x⁴-4y-12y²-16y³-8y⁴-9z-8z²-3
----------------
expanding queue[8]^6,meter=[2,2,1]: x+12x²+64x³+128x⁴-y-12y²-64y³-128y⁴-2z²
[1+16x,1+16y,0+8z]:	unknown -> [16] [0,0,0] x+24x²+256x³+1024x⁴-y-24y²-256y³-1024y⁴-z²
[9+16x,9+16y,0+8z]:	unknown -> [17] [1,1,0] 729x+1944x²+2304x³+1024x⁴-729y-1944y²-2304y³-1024y⁴-z²
expanding queue[9]^6,meter=[2,2,1]: 125x+300x²+320x³+128x⁴-125y-300y²-320y³-128y⁴-2z²
[5+16x,5+16y,0+8z]:	unknown -> [18] [0,0,0] 125x+600x²+1280x³+1024x⁴-125y-600y²-1280y³-1024y⁴-z²
[13+16x,13+16y,0+8z]:	unknown -> [19] [1,1,0] 2197x+4056x²+3328x³+1024x⁴-2197y-4056y²-3328y³-1024y⁴-z²
expanding queue[10]^6,meter=[2,2,1]: 125x+300x²+320x³+128x⁴-y-12y²-64y³-128y⁴-2z-2z²+19
[13+16x,1+16y,4+8z]:	unknown -> [20] [1,0,0] 2197x+4056x²+3328x³+1024x⁴-y-24y²-256y³-1024y⁴-z-z²+446
[5+16x,9+16y,4+8z]:	unknown -> [21] [0,1,0] 125x+600x²+1280x³+1024x⁴-729y-1944y²-2304y³-1024y⁴-z-z²-93
expanding queue[11]^6,meter=[2,2,1]: x+12x²+64x³+128x⁴-125y-300y²-320y³-128y⁴-2z-2z²-20
[1+16x,5+16y,4+8z]:	unknown -> [22] [0,0,0] x+24x²+256x³+1024x⁴-125y-600y²-1280y³-1024y⁴-z-z²-10
[9+16x,13+16y,4+8z]:	unknown -> [23] [1,1,0] 729x+1944x²+2304x³+1024x⁴-2197y-4056y²-3328y³-1024y⁴-z-z²-344
expanding queue[12]^7,meter=[2,1,2]: x+12x²+64x³+128x⁴-8y⁴-z-8z²
[1+16x,0+4y,1+32z]:	unknown -> [24] [0,0,0] x+24x²+256x³+1024x⁴-4y⁴-z-16z²
[9+16x,0+4y,17+32z]:	unknown -> [25] [1,0,1] 729x+1944x²+2304x³+1024x⁴-4y⁴-17z-16z²+98
expanding queue[13]^7,meter=[2,1,2]: 125x+300x²+320x³+128x⁴-4y-12y²-16y³-8y⁴-z-8z²+19
[13+16x,2+4y,1+32z]:	unknown -> [26] [1,0,0] 2197x+4056x²+3328x³+1024x⁴-2y-6y²-8y³-4y⁴-z-16z²+446
[5+16x,2+4y,17+32z]:	unknown -> [27] [0,0,1] 125x+600x²+1280x³+1024x⁴-2y-6y²-8y³-4y⁴-17z-16z²+5
expanding queue[14]^7,meter=[2,1,2]: 125x+300x²+320x³+128x⁴-8y⁴-9z-8z²+17
[13+16x,0+4y,9+32z]:	unknown -> [28] [1,0,0] 2197x+4056x²+3328x³+1024x⁴-4y⁴-9z-16z²+445
[5+16x,0+4y,25+32z]:	unknown -> [29] [0,0,1] 125x+600x²+1280x³+1024x⁴-4y⁴-25z-16z²
expanding queue[15]^7,meter=[2,1,2]: x+12x²+64x³+128x⁴-4y-12y²-16y³-8y⁴-9z-8z²-3
[9+16x,2+4y,9+32z]:	unknown -> [30] [1,0,0] 729x+1944x²+2304x³+1024x⁴-2y-6y²-8y³-4y⁴-9z-16z²+101
[1+16x,2+4y,25+32z]:	unknown -> [31] [0,0,1] x+24x²+256x³+1024x⁴-2y-6y²-8y³-4y⁴-25z-16z²-10
Maximum level 4 [32] mod 2: x⁴-y⁴-z²
