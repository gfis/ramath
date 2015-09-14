ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm,invall
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x^4-y^4-2z^2
-> solution [0,0,0],trivial(3) [1,1,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^4-y^4-2z^2
[0+2x,0+2y,0+2z]:	unknown -> [1] 2x^4-2y^4-z^2
-> solution [0,0,0],trivial(3) [2,2,0],trivial(3)
[1+2x,1+2y,0+2z]:	unknown -> [2] x+3x^2+4x^3+2x^4-y-3y^2-4y^3-2y^4-z^2
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 2x^4-2y^4-z^2
[0+4x,0+4y,0+4z]:	unknown -> [3] 8x^4-8y^4-z^2
-> solution [0,0,0],trivial(3) [4,4,0],trivial(3)
[2+4x,2+4y,0+4z]:	unknown -> [4] 4x+12x^2+16x^3+8x^4-4y-12y^2-16y^3-8y^4-z^2
-> solution [2,2,0],trivial(3) [6,6,0],trivial(3)
expanding queue[2]^0,meter=[2,2,2]*4: x+3x^2+4x^3+2x^4-y-3y^2-4y^3-2y^4-z^2
[1+4x,1+4y,0+4z]:	unknown -> [5] x+6x^2+16x^3+16x^4-y-6y^2-16y^3-16y^4-2z^2
-> solution [1,1,0],trivial(3) [5,5,0],trivial(3)
[3+4x,1+4y,0+4z]:	negative-1 [5] by {x=>-x-1}
[1+4x,3+4y,0+4z]:	negative-1 [5] by {y=>-y-1}
[3+4x,3+4y,0+4z]:	negative-1 [5] by {x=>-x-1,y=>-y-1}
-> solution [3,3,0],trivial(3) [7,7,0],trivial(3)
----------------
expanding queue[3]^1,meter=[2,2,2]*8: 8x^4-8y^4-z^2
[0+8x,0+8y,0+8z]:	same 32x^4-32y^4-z^2 map {x=>x/2,y=>y/2} -> [1] 2x^4-2y^4-z^2
-> solution [0,0,0],trivial(3) [8,8,0],trivial(3)
[4+8x,0+8y,0+8z]:	unknown -> [6] 2+16x+48x^2+64x^3+32x^4-32y^4-z^2
[0+8x,4+8y,0+8z]:	unknown -> [7] -2+32x^4-16y-48y^2-64y^3-32y^4-z^2
[4+8x,4+8y,0+8z]:	unknown -> [8] 16x+48x^2+64x^3+32x^4-16y-48y^2-64y^3-32y^4-z^2
-> solution [4,4,0],trivial(3) [12,12,0],trivial(3)
expanding queue[4]^1,meter=[2,2,2]*8: 4x+12x^2+16x^3+8x^4-4y-12y^2-16y^3-8y^4-z^2
[2+8x,2+8y,0+8z]:	unknown -> [9] 2x+12x^2+32x^3+32x^4-2y-12y^2-32y^3-32y^4-z^2
-> solution [2,2,0],trivial(3) [10,10,0],trivial(3)
[6+8x,2+8y,0+8z]:	negative-1 [9] by {x=>-x-1}
[2+8x,6+8y,0+8z]:	negative-1 [9] by {y=>-y-1}
[6+8x,6+8y,0+8z]:	negative-1 [9] by {x=>-x-1,y=>-y-1}
-> solution [6,6,0],trivial(3) [14,14,0],trivial(3)
expanding queue[5]^2,meter=[2,2,2]*8: x+6x^2+16x^3+16x^4-y-6y^2-16y^3-16y^4-2z^2
[1+8x,1+8y,0+8z]:	unknown -> [10] x+12x^2+64x^3+128x^4-y-12y^2-64y^3-128y^4-4z^2
-> solution [1,1,0],trivial(3) [9,9,0],trivial(3)
[5+8x,5+8y,0+8z]:	unknown -> [11] 125x+300x^2+320x^3+128x^4-125y-300y^2-320y^3-128y^4-4z^2
-> solution [5,5,0],trivial(3) [13,13,0],trivial(3)
[1+8x,1+8y,4+8z]:	unknown -> [12] -1+x+12x^2+64x^3+128x^4-y-12y^2-64y^3-128y^4-4z-4z^2
[5+8x,5+8y,4+8z]:	unknown -> [13] -1+125x+300x^2+320x^3+128x^4-125y-300y^2-320y^3-128y^4-4z-4z^2
----------------
expanding queue[6]^3,meter=[2,2,2]*16: 2+16x+48x^2+64x^3+32x^4-32y^4-z^2
expanding queue[7]^3,meter=[2,2,2]*16: -2+32x^4-16y-48y^2-64y^3-32y^4-z^2
expanding queue[8]^3,meter=[2,2,2]*16: 16x+48x^2+64x^3+32x^4-16y-48y^2-64y^3-32y^4-z^2
[4+16x,4+16y,0+16z]:	unknown -> [14] 8x+48x^2+128x^3+128x^4-8y-48y^2-128y^3-128y^4-z^2
-> solution [4,4,0],trivial(3) [20,20,0],trivial(3)
[12+16x,4+16y,0+16z]:	negative-1 [14] by {x=>-x-1}
[4+16x,12+16y,0+16z]:	negative-1 [14] by {y=>-y-1}
[12+16x,12+16y,0+16z]:	negative-1 [14] by {x=>-x-1,y=>-y-1}
-> solution [12,12,0],trivial(3) [28,28,0],trivial(3)
expanding queue[9]^4,meter=[2,2,2]*16: 2x+12x^2+32x^3+32x^4-2y-12y^2-32y^3-32y^4-z^2
[2+16x,2+16y,0+16z]:	unknown -> [15] x+12x^2+64x^3+128x^4-y-12y^2-64y^3-128y^4-z^2
-> solution [2,2,0],trivial(3) [18,18,0],trivial(3)
[10+16x,10+16y,0+16z]:	unknown -> [16] 125x+300x^2+320x^3+128x^4-125y-300y^2-320y^3-128y^4-z^2
-> solution [10,10,0],trivial(3) [26,26,0],trivial(3)
expanding queue[10]^5,meter=[2,2,2]*16: x+12x^2+64x^3+128x^4-y-12y^2-64y^3-128y^4-4z^2
[1+16x,1+16y,0+16z]:	unknown -> [17] x+24x^2+256x^3+1024x^4-y-24y^2-256y^3-1024y^4-8z^2
-> solution [1,1,0],trivial(3) [17,17,0],trivial(3)
[9+16x,9+16y,0+16z]:	unknown -> [18] 729x+1944x^2+2304x^3+1024x^4-729y-1944y^2-2304y^3-1024y^4-8z^2
-> solution [9,9,0],trivial(3) [25,25,0],trivial(3)
[1+16x,1+16y,8+16z]:	unknown -> [19] -2+x+24x^2+256x^3+1024x^4-y-24y^2-256y^3-1024y^4-8z-8z^2
[9+16x,9+16y,8+16z]:	unknown -> [20] -2+729x+1944x^2+2304x^3+1024x^4-729y-1944y^2-2304y^3-1024y^4-8z-8z^2
expanding queue[11]^5,meter=[2,2,2]*16: 125x+300x^2+320x^3+128x^4-125y-300y^2-320y^3-128y^4-4z^2
[5+16x,5+16y,0+16z]:	unknown -> [21] 125x+600x^2+1280x^3+1024x^4-125y-600y^2-1280y^3-1024y^4-8z^2
-> solution [5,5,0],trivial(3) [21,21,0],trivial(3)
[13+16x,13+16y,0+16z]:	unknown -> [22] 2197x+4056x^2+3328x^3+1024x^4-2197y-4056y^2-3328y^3-1024y^4-8z^2
-> solution [13,13,0],trivial(3) [29,29,0],trivial(3)
[5+16x,5+16y,8+16z]:	unknown -> [23] -2+125x+600x^2+1280x^3+1024x^4-125y-600y^2-1280y^3-1024y^4-8z-8z^2
[13+16x,13+16y,8+16z]:	unknown -> [24] -2+2197x+4056x^2+3328x^3+1024x^4-2197y-4056y^2-3328y^3-1024y^4-8z-8z^2
expanding queue[12]^5,meter=[2,2,2]*16: -1+x+12x^2+64x^3+128x^4-y-12y^2-64y^3-128y^4-4z-4z^2
[9+16x,1+16y,4+16z]:	unknown -> [25] 102+729x+1944x^2+2304x^3+1024x^4-y-24y^2-256y^3-1024y^4-4z-8z^2
[1+16x,9+16y,4+16z]:	unknown -> [26] -103+x+24x^2+256x^3+1024x^4-729y-1944y^2-2304y^3-1024y^4-4z-8z^2
[9+16x,1+16y,12+16z]:	negative-1 [26] by {z=>-z-1}
[1+16x,9+16y,12+16z]:	negative-1 [26] by {z=>-z-1}
expanding queue[13]^5,meter=[2,2,2]*16: -1+125x+300x^2+320x^3+128x^4-125y-300y^2-320y^3-128y^4-4z-4z^2
[13+16x,5+16y,4+16z]:	unknown -> [27] 436+2197x+4056x^2+3328x^3+1024x^4-125y-600y^2-1280y^3-1024y^4-4z-8z^2
[5+16x,13+16y,4+16z]:	unknown -> [28] -437+125x+600x^2+1280x^3+1024x^4-2197y-4056y^2-3328y^3-1024y^4-4z-8z^2
[13+16x,5+16y,12+16z]:	negative-1 [28] by {z=>-z-1}
[5+16x,13+16y,12+16z]:	negative-1 [28] by {z=>-z-1}
Maximum level 3 [29] mod 2: x^4-y^4-2z^2
