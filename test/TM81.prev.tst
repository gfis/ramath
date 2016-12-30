TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar norm,showfail
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x²+y²-8x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-8x*y*z+z²
[0+2x,0+2y,0+2z]:	unknown -> [1] x²+y²-16x*y*z+z²
-> solution [0,0,0],trivial(3)
[1+2x,0+2y,0+2z]:	failure constant=1, vgcd=4
[0+2x,1+2y,0+2z]:	failure constant=1, vgcd=4
[1+2x,1+2y,0+2z]:	failure constant=1, vgcd=2
[0+2x,0+2y,1+2z]:	failure constant=1, vgcd=4
[1+2x,0+2y,1+2z]:	failure constant=1, vgcd=2
[0+2x,1+2y,1+2z]:	failure constant=-1, vgcd=2
[1+2x,1+2y,1+2z]:	failure constant=5, vgcd=4
----------------
expanding queue[1]^0,meter=[2,2,2]: x²+y²-16x*y*z+z²
[0+4x,0+4y,0+4z]:	unknown -> [2] x²+y²-32x*y*z+z²
-> solution [0,0,0],trivial(3)
[2+4x,0+4y,0+4z]:	failure constant=1, vgcd=4
[0+4x,2+4y,0+4z]:	failure constant=1, vgcd=4
[2+4x,2+4y,0+4z]:	failure constant=1, vgcd=2
[0+4x,0+4y,2+4z]:	failure constant=1, vgcd=4
[2+4x,0+4y,2+4z]:	failure constant=1, vgcd=2
[0+4x,2+4y,2+4z]:	failure constant=-1, vgcd=2
[2+4x,2+4y,2+4z]:	failure constant=13, vgcd=4
----------------
expanding queue[2]^1,meter=[2,2,2]: x²+y²-32x*y*z+z²
[0+8x,0+8y,0+8z]:	unknown -> [3] x²+y²-64x*y*z+z²
-> solution [0,0,0],trivial(3)
[4+8x,0+8y,0+8z]:	failure constant=1, vgcd=4
[0+8x,4+8y,0+8z]:	failure constant=1, vgcd=4
[4+8x,4+8y,0+8z]:	failure constant=1, vgcd=2
[0+8x,0+8y,4+8z]:	failure constant=1, vgcd=4
[4+8x,0+8y,4+8z]:	failure constant=1, vgcd=2
[0+8x,4+8y,4+8z]:	failure constant=-1, vgcd=2
[4+8x,4+8y,4+8z]:	failure constant=29, vgcd=4
----------------
expanding queue[3]^2,meter=[2,2,2]: x²+y²-64x*y*z+z²
[0+16x,0+16y,0+16z]:	unknown -> [4] x²+y²-128x*y*z+z²
-> solution [0,0,0],trivial(3)
[8+16x,0+16y,0+16z]:	failure constant=1, vgcd=4
[0+16x,8+16y,0+16z]:	failure constant=1, vgcd=4
[8+16x,8+16y,0+16z]:	failure constant=1, vgcd=2
[0+16x,0+16y,8+16z]:	failure constant=1, vgcd=4
[8+16x,0+16y,8+16z]:	failure constant=1, vgcd=2
[0+16x,8+16y,8+16z]:	failure constant=-1, vgcd=2
[8+16x,8+16y,8+16z]:	failure constant=61, vgcd=4
----------------
expanding queue[4]^3,meter=[2,2,2]: x²+y²-128x*y*z+z²
[0+32x,0+32y,0+32z]:	unknown -> [5] x²+y²-256x*y*z+z²
-> solution [0,0,0],trivial(3)
[16+32x,0+32y,0+32z]:	failure constant=1, vgcd=4
[0+32x,16+32y,0+32z]:	failure constant=1, vgcd=4
[16+32x,16+32y,0+32z]:	failure constant=1, vgcd=2
[0+32x,0+32y,16+32z]:	failure constant=1, vgcd=4
[16+32x,0+32y,16+32z]:	failure constant=1, vgcd=2
[0+32x,16+32y,16+32z]:	failure constant=-1, vgcd=2
[16+32x,16+32y,16+32z]:	failure constant=125, vgcd=4
----------------
expanding queue[5]^4,meter=[2,2,2]: x²+y²-256x*y*z+z²
[0+64x,0+64y,0+64z]:	unknown -> [6] x²+y²-512x*y*z+z²
-> solution [0,0,0],trivial(3)
[32+64x,0+64y,0+64z]:	failure constant=1, vgcd=4
[0+64x,32+64y,0+64z]:	failure constant=1, vgcd=4
[32+64x,32+64y,0+64z]:	failure constant=1, vgcd=2
[0+64x,0+64y,32+64z]:	failure constant=1, vgcd=4
[32+64x,0+64y,32+64z]:	failure constant=1, vgcd=2
[0+64x,32+64y,32+64z]:	failure constant=-1, vgcd=2
[32+64x,32+64y,32+64z]:	failure constant=253, vgcd=4
----------------
expanding queue[6]^5,meter=[2,2,2]: x²+y²-512x*y*z+z²
[0+128x,0+128y,0+128z]:	unknown -> [7] x²+y²-1024x*y*z+z²
-> solution [0,0,0],trivial(3)
[64+128x,0+128y,0+128z]:	failure constant=1, vgcd=4
[0+128x,64+128y,0+128z]:	failure constant=1, vgcd=4
[64+128x,64+128y,0+128z]:	failure constant=1, vgcd=2
[0+128x,0+128y,64+128z]:	failure constant=1, vgcd=4
[64+128x,0+128y,64+128z]:	failure constant=1, vgcd=2
[0+128x,64+128y,64+128z]:	failure constant=-1, vgcd=2
[64+128x,64+128y,64+128z]:	failure constant=509, vgcd=4
----------------
expanding queue[7]^6,meter=[2,2,2]: x²+y²-1024x*y*z+z²
[0+256x,0+256y,0+256z]:	unknown -> [8] x²+y²-2048x*y*z+z²
-> solution [0,0,0],trivial(3)
[128+256x,0+256y,0+256z]:	failure constant=1, vgcd=4
[0+256x,128+256y,0+256z]:	failure constant=1, vgcd=4
[128+256x,128+256y,0+256z]:	failure constant=1, vgcd=2
[0+256x,0+256y,128+256z]:	failure constant=1, vgcd=4
[128+256x,0+256y,128+256z]:	failure constant=1, vgcd=2
[0+256x,128+256y,128+256z]:	failure constant=-1, vgcd=2
[128+256x,128+256y,128+256z]:	failure constant=1021, vgcd=4
----------------
expanding queue[8]^7,meter=[2,2,2]: x²+y²-2048x*y*z+z²
[0+512x,0+512y,0+512z]:	unknown -> [9] x²+y²-4096x*y*z+z²
-> solution [0,0,0],trivial(3)
[256+512x,0+512y,0+512z]:	failure constant=1, vgcd=4
[0+512x,256+512y,0+512z]:	failure constant=1, vgcd=4
[256+512x,256+512y,0+512z]:	failure constant=1, vgcd=2
[0+512x,0+512y,256+512z]:	failure constant=1, vgcd=4
[256+512x,0+512y,256+512z]:	failure constant=1, vgcd=2
[0+512x,256+512y,256+512z]:	failure constant=-1, vgcd=2
[256+512x,256+512y,256+512z]:	failure constant=2045, vgcd=4
Maximum level 8 [10] mod 2: x²+y²-8x*y*z+z²
