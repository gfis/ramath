Expanding for base=2, level=3, reasons+features=base,same,similiar,evenexp invall,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x⁴-y⁴-2z²
-> solution [0,0,0],trivial(3) [1,1,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: x⁴-y⁴-2z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] 2x⁴-2y⁴-z²
-> solution [0,0,0],trivial(3) [2,2,0],trivial(3)
[1+2x,1+2y,0+2z]:	unknown -> [2] [1,1,0] x+3x²+4x³+2x⁴-y-3y²-4y³-2y⁴-z²
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
----------------
expanding queue[1]^0,meter=[2,2,2]: 2x⁴-2y⁴-z²
[0+4x,0+4y,0+4z]:	unknown -> [3] [0,0,0] 8x⁴-8y⁴-z²
-> solution [0,0,0],trivial(3) [4,4,0],trivial(3)
[2+4x,2+4y,0+4z]:	unknown -> [4] [1,1,0] 4x+12x²+16x³+8x⁴-4y-12y²-16y³-8y⁴-z²
-> solution [2,2,0],trivial(3) [6,6,0],trivial(3)
expanding queue[2]^0,meter=[2,2,2]: x+3x²+4x³+2x⁴-y-3y²-4y³-2y⁴-z²
[1+4x,1+4y,0+4z]:	unknown -> [5] [0,0,0] x+6x²+16x³+16x⁴-y-6y²-16y³-16y⁴-2z²
-> solution [1,1,0],trivial(3) [5,5,0],trivial(3)
[3+4x,1+4y,0+4z]:	negative-1 [5] by {x=>-x-1}
[1+4x,3+4y,0+4z]:	negative-1 [5] by {y=>-y-1}
[3+4x,3+4y,0+4z]:	negative-1 [5] by {x=>-x-1,y=>-y-1}
-> solution [3,3,0],trivial(3) [7,7,0],trivial(3)
----------------
expanding queue[3]^1,meter=[2,2,2]: 8x⁴-8y⁴-z²
[0+8x,0+8y,0+8z]:	same 32x⁴-32y⁴-z² map {x=>x/2,y=>y/2} -> [1] 2x⁴-2y⁴-z²
-> solution [0,0,0],trivial(3) [8,8,0],trivial(3)
[4+8x,0+8y,0+8z]:	unknown -> [6] [1,0,0] 16x+48x²+64x³+32x⁴-32y⁴-z²+2
[0+8x,4+8y,0+8z]:	unknown -> [7] [0,1,0] 32x⁴-16y-48y²-64y³-32y⁴-z²-2
[4+8x,4+8y,0+8z]:	unknown -> [8] [1,1,0] 16x+48x²+64x³+32x⁴-16y-48y²-64y³-32y⁴-z²
-> solution [4,4,0],trivial(3) [12,12,0],trivial(3)
expanding queue[4]^1,meter=[2,2,2]: 4x+12x²+16x³+8x⁴-4y-12y²-16y³-8y⁴-z²
[2+8x,2+8y,0+8z]:	unknown -> [9] [0,0,0] 2x+12x²+32x³+32x⁴-2y-12y²-32y³-32y⁴-z²
-> solution [2,2,0],trivial(3) [10,10,0],trivial(3)
[6+8x,2+8y,0+8z]:	negative-1 [9] by {x=>-x-1}
[2+8x,6+8y,0+8z]:	negative-1 [9] by {y=>-y-1}
[6+8x,6+8y,0+8z]:	negative-1 [9] by {x=>-x-1,y=>-y-1}
-> solution [6,6,0],trivial(3) [14,14,0],trivial(3)
expanding queue[5]^2,meter=[2,2,2]: x+6x²+16x³+16x⁴-y-6y²-16y³-16y⁴-2z²
[1+8x,1+8y,0+8z]:	unknown -> [10] [0,0,0] x+12x²+64x³+128x⁴-y-12y²-64y³-128y⁴-4z²
-> solution [1,1,0],trivial(3) [9,9,0],trivial(3)
[5+8x,5+8y,0+8z]:	unknown -> [11] [1,1,0] 125x+300x²+320x³+128x⁴-125y-300y²-320y³-128y⁴-4z²
-> solution [5,5,0],trivial(3) [13,13,0],trivial(3)
[1+8x,1+8y,4+8z]:	unknown -> [12] [0,0,1] x+12x²+64x³+128x⁴-y-12y²-64y³-128y⁴-4z-4z²-1
[5+8x,5+8y,4+8z]:	unknown -> [13] [1,1,1] 125x+300x²+320x³+128x⁴-125y-300y²-320y³-128y⁴-4z-4z²-1
----------------
expanding queue[6]^3,meter=[2,2,2]: 16x+48x²+64x³+32x⁴-32y⁴-z²+2
expanding queue[7]^3,meter=[2,2,2]: 32x⁴-16y-48y²-64y³-32y⁴-z²-2
expanding queue[8]^3,meter=[2,2,2]: 16x+48x²+64x³+32x⁴-16y-48y²-64y³-32y⁴-z²
[4+16x,4+16y,0+16z]:	unknown -> [14] [0,0,0] 8x+48x²+128x³+128x⁴-8y-48y²-128y³-128y⁴-z²
-> solution [4,4,0],trivial(3) [20,20,0],trivial(3)
[12+16x,4+16y,0+16z]:	negative-1 [14] by {x=>-x-1}
[4+16x,12+16y,0+16z]:	negative-1 [14] by {y=>-y-1}
[12+16x,12+16y,0+16z]:	negative-1 [14] by {x=>-x-1,y=>-y-1}
-> solution [12,12,0],trivial(3) [28,28,0],trivial(3)
expanding queue[9]^4,meter=[2,2,2]: 2x+12x²+32x³+32x⁴-2y-12y²-32y³-32y⁴-z²
[2+16x,2+16y,0+16z]:	unknown -> [15] [0,0,0] x+12x²+64x³+128x⁴-y-12y²-64y³-128y⁴-z²
-> solution [2,2,0],trivial(3) [18,18,0],trivial(3)
[10+16x,10+16y,0+16z]:	unknown -> [16] [1,1,0] 125x+300x²+320x³+128x⁴-125y-300y²-320y³-128y⁴-z²
-> solution [10,10,0],trivial(3) [26,26,0],trivial(3)
expanding queue[10]^5,meter=[2,2,2]: x+12x²+64x³+128x⁴-y-12y²-64y³-128y⁴-4z²
[1+16x,1+16y,0+16z]:	unknown -> [17] [0,0,0] x+24x²+256x³+1024x⁴-y-24y²-256y³-1024y⁴-8z²
-> solution [1,1,0],trivial(3) [17,17,0],trivial(3)
[9+16x,9+16y,0+16z]:	unknown -> [18] [1,1,0] 729x+1944x²+2304x³+1024x⁴-729y-1944y²-2304y³-1024y⁴-8z²
-> solution [9,9,0],trivial(3) [25,25,0],trivial(3)
[1+16x,1+16y,8+16z]:	unknown -> [19] [0,0,1] x+24x²+256x³+1024x⁴-y-24y²-256y³-1024y⁴-8z-8z²-2
[9+16x,9+16y,8+16z]:	unknown -> [20] [1,1,1] 729x+1944x²+2304x³+1024x⁴-729y-1944y²-2304y³-1024y⁴-8z-8z²-2
expanding queue[11]^5,meter=[2,2,2]: 125x+300x²+320x³+128x⁴-125y-300y²-320y³-128y⁴-4z²
[5+16x,5+16y,0+16z]:	unknown -> [21] [0,0,0] 125x+600x²+1280x³+1024x⁴-125y-600y²-1280y³-1024y⁴-8z²
-> solution [5,5,0],trivial(3) [21,21,0],trivial(3)
[13+16x,13+16y,0+16z]:	unknown -> [22] [1,1,0] 2197x+4056x²+3328x³+1024x⁴-2197y-4056y²-3328y³-1024y⁴-8z²
-> solution [13,13,0],trivial(3) [29,29,0],trivial(3)
[5+16x,5+16y,8+16z]:	unknown -> [23] [0,0,1] 125x+600x²+1280x³+1024x⁴-125y-600y²-1280y³-1024y⁴-8z-8z²-2
[13+16x,13+16y,8+16z]:	unknown -> [24] [1,1,1] 2197x+4056x²+3328x³+1024x⁴-2197y-4056y²-3328y³-1024y⁴-8z-8z²-2
expanding queue[12]^5,meter=[2,2,2]: x+12x²+64x³+128x⁴-y-12y²-64y³-128y⁴-4z-4z²-1
[9+16x,1+16y,4+16z]:	unknown -> [25] [1,0,0] 729x+1944x²+2304x³+1024x⁴-y-24y²-256y³-1024y⁴-4z-8z²+102
[1+16x,9+16y,4+16z]:	unknown -> [26] [0,1,0] x+24x²+256x³+1024x⁴-729y-1944y²-2304y³-1024y⁴-4z-8z²-103
[9+16x,1+16y,12+16z]:	negative-1 [26] by {z=>-z-1}
[1+16x,9+16y,12+16z]:	negative-1 [26] by {z=>-z-1}
expanding queue[13]^5,meter=[2,2,2]: 125x+300x²+320x³+128x⁴-125y-300y²-320y³-128y⁴-4z-4z²-1
[13+16x,5+16y,4+16z]:	unknown -> [27] [1,0,0] 2197x+4056x²+3328x³+1024x⁴-125y-600y²-1280y³-1024y⁴-4z-8z²+436
[5+16x,13+16y,4+16z]:	unknown -> [28] [0,1,0] 125x+600x²+1280x³+1024x⁴-2197y-4056y²-3328y³-1024y⁴-4z-8z²-437
[13+16x,5+16y,12+16z]:	negative-1 [28] by {z=>-z-1}
[5+16x,13+16y,12+16z]:	negative-1 [28] by {z=>-z-1}
Maximum level 3 [29] mod 2: x⁴-y⁴-2z²
