TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar norm,invall
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x²+y²-2x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x²+y²-2x*y*z+z²
[0+2x,0+2y,0+2z]:	unknown -> [1] x²+y²-4x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[1]^0,meter=[2,2,2]*4: x²+y²-4x*y*z+z²
[0+4x,0+4y,0+4z]:	unknown -> [2] x²+y²-8x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[2]^1,meter=[2,2,2]*8: x²+y²-8x*y*z+z²
[0+8x,0+8y,0+8z]:	unknown -> [3] x²+y²-16x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[3]^2,meter=[2,2,2]*16: x²+y²-16x*y*z+z²
[0+16x,0+16y,0+16z]:	unknown -> [4] x²+y²-32x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[4]^3,meter=[2,2,2]*32: x²+y²-32x*y*z+z²
[0+32x,0+32y,0+32z]:	unknown -> [5] x²+y²-64x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[5]^4,meter=[2,2,2]*64: x²+y²-64x*y*z+z²
[0+64x,0+64y,0+64z]:	unknown -> [6] x²+y²-128x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[6]^5,meter=[2,2,2]*128: x²+y²-128x*y*z+z²
[0+128x,0+128y,0+128z]:	unknown -> [7] x²+y²-256x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[7]^6,meter=[2,2,2]*256: x²+y²-256x*y*z+z²
[0+256x,0+256y,0+256z]:	unknown -> [8] x²+y²-512x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[8]^7,meter=[2,2,2]*512: x²+y²-512x*y*z+z²
[0+512x,0+512y,0+512z]:	unknown -> [9] x²+y²-1024x*y*z+z²
-> solution [0,0,0],trivial(3)
Maximum level 8 [10] mod 2: x²+y²-2x*y*z+z²