TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar norm,showfail
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-8x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-8x*y*z+z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] x²+y²-16x*y*z+z²
-> solution [0,0,0],trivial(3)
[1+2x,0+2y,0+2z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-32y*z-64x*y*z+4z²+1
[0+2x,1+2y,0+2z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-32x*z-64x*y*z+4z²+1
[1+2x,1+2y,0+2z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-8z-16x*z-16y*z-32x*y*z+2z²+1
[0+2x,0+2y,1+2z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-32x*y+4y²+4z-64x*y*z+4z²+1
[1+2x,0+2y,1+2z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-8y-16x*y+2y²+2z-16y*z-32x*y*z+2z²+1
[0+2x,1+2y,1+2z]:	failure constant=-1, vgcd=2 [0,1,1] 8x-2x²-2y+16x*y-2y²-2z+16x*z+32x*y*z-2z²-1
[1+2x,1+2y,1+2z]:	failure constant=5, vgcd=4 [1,1,1] 12x-4x²+12y+32x*y-4y²+12z+32x*z+32y*z+64x*y*z-4z²+5
----------------
expanding queue[1]^0,meter=[2,2,2]: x²+y²-16x*y*z+z²
[0+4x,0+4y,0+4z]:	unknown -> [2] [0,0,0] x²+y²-32x*y*z+z²
-> solution [0,0,0],trivial(3)
[2+4x,0+4y,0+4z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-64y*z-128x*y*z+4z²+1
[0+4x,2+4y,0+4z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-64x*z-128x*y*z+4z²+1
[2+4x,2+4y,0+4z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-16z-32x*z-32y*z-64x*y*z+2z²+1
[0+4x,0+4y,2+4z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-64x*y+4y²+4z-128x*y*z+4z²+1
[2+4x,0+4y,2+4z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-16y-32x*y+2y²+2z-32y*z-64x*y*z+2z²+1
[0+4x,2+4y,2+4z]:	failure constant=-1, vgcd=2 [0,1,1] 16x-2x²-2y+32x*y-2y²-2z+32x*z+64x*y*z-2z²-1
[2+4x,2+4y,2+4z]:	failure constant=13, vgcd=4 [1,1,1] 28x-4x²+28y+64x*y-4y²+28z+64x*z+64y*z+128x*y*z-4z²+13
----------------
expanding queue[2]^1,meter=[2,2,2]: x²+y²-32x*y*z+z²
[0+8x,0+8y,0+8z]:	unknown -> [3] [0,0,0] x²+y²-64x*y*z+z²
-> solution [0,0,0],trivial(3)
[4+8x,0+8y,0+8z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-128y*z-256x*y*z+4z²+1
[0+8x,4+8y,0+8z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-128x*z-256x*y*z+4z²+1
[4+8x,4+8y,0+8z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-32z-64x*z-64y*z-128x*y*z+2z²+1
[0+8x,0+8y,4+8z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-128x*y+4y²+4z-256x*y*z+4z²+1
[4+8x,0+8y,4+8z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-32y-64x*y+2y²+2z-64y*z-128x*y*z+2z²+1
[0+8x,4+8y,4+8z]:	failure constant=-1, vgcd=2 [0,1,1] 32x-2x²-2y+64x*y-2y²-2z+64x*z+128x*y*z-2z²-1
[4+8x,4+8y,4+8z]:	failure constant=29, vgcd=4 [1,1,1] 60x-4x²+60y+128x*y-4y²+60z+128x*z+128y*z+256x*y*z-4z²+29
----------------
expanding queue[3]^2,meter=[2,2,2]: x²+y²-64x*y*z+z²
[0+16x,0+16y,0+16z]:	unknown -> [4] [0,0,0] x²+y²-128x*y*z+z²
-> solution [0,0,0],trivial(3)
[8+16x,0+16y,0+16z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-256y*z-512x*y*z+4z²+1
[0+16x,8+16y,0+16z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-256x*z-512x*y*z+4z²+1
[8+16x,8+16y,0+16z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-64z-128x*z-128y*z-256x*y*z+2z²+1
[0+16x,0+16y,8+16z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-256x*y+4y²+4z-512x*y*z+4z²+1
[8+16x,0+16y,8+16z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-64y-128x*y+2y²+2z-128y*z-256x*y*z+2z²+1
[0+16x,8+16y,8+16z]:	failure constant=-1, vgcd=2 [0,1,1] 64x-2x²-2y+128x*y-2y²-2z+128x*z+256x*y*z-2z²-1
[8+16x,8+16y,8+16z]:	failure constant=61, vgcd=4 [1,1,1] 124x-4x²+124y+256x*y-4y²+124z+256x*z+256y*z+512x*y*z-4z²+61
----------------
expanding queue[4]^3,meter=[2,2,2]: x²+y²-128x*y*z+z²
[0+32x,0+32y,0+32z]:	unknown -> [5] [0,0,0] x²+y²-256x*y*z+z²
-> solution [0,0,0],trivial(3)
[16+32x,0+32y,0+32z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-512y*z-1024x*y*z+4z²+1
[0+32x,16+32y,0+32z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-512x*z-1024x*y*z+4z²+1
[16+32x,16+32y,0+32z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-128z-256x*z-256y*z-512x*y*z+2z²+1
[0+32x,0+32y,16+32z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-512x*y+4y²+4z-1024x*y*z+4z²+1
[16+32x,0+32y,16+32z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-128y-256x*y+2y²+2z-256y*z-512x*y*z+2z²+1
[0+32x,16+32y,16+32z]:	failure constant=-1, vgcd=2 [0,1,1] 128x-2x²-2y+256x*y-2y²-2z+256x*z+512x*y*z-2z²-1
[16+32x,16+32y,16+32z]:	failure constant=125, vgcd=4 [1,1,1] 252x-4x²+252y+512x*y-4y²+252z+512x*z+512y*z+1024x*y*z-4z²+125
----------------
expanding queue[5]^4,meter=[2,2,2]: x²+y²-256x*y*z+z²
[0+64x,0+64y,0+64z]:	unknown -> [6] [0,0,0] x²+y²-512x*y*z+z²
-> solution [0,0,0],trivial(3)
[32+64x,0+64y,0+64z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-1024y*z-2048x*y*z+4z²+1
[0+64x,32+64y,0+64z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-1024x*z-2048x*y*z+4z²+1
[32+64x,32+64y,0+64z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-256z-512x*z-512y*z-1024x*y*z+2z²+1
[0+64x,0+64y,32+64z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-1024x*y+4y²+4z-2048x*y*z+4z²+1
[32+64x,0+64y,32+64z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-256y-512x*y+2y²+2z-512y*z-1024x*y*z+2z²+1
[0+64x,32+64y,32+64z]:	failure constant=-1, vgcd=2 [0,1,1] 256x-2x²-2y+512x*y-2y²-2z+512x*z+1024x*y*z-2z²-1
[32+64x,32+64y,32+64z]:	failure constant=253, vgcd=4 [1,1,1] 508x-4x²+508y+1024x*y-4y²+508z+1024x*z+1024y*z+2048x*y*z-4z²+253
----------------
expanding queue[6]^5,meter=[2,2,2]: x²+y²-512x*y*z+z²
[0+128x,0+128y,0+128z]:	unknown -> [7] [0,0,0] x²+y²-1024x*y*z+z²
-> solution [0,0,0],trivial(3)
[64+128x,0+128y,0+128z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-2048y*z-4096x*y*z+4z²+1
[0+128x,64+128y,0+128z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-2048x*z-4096x*y*z+4z²+1
[64+128x,64+128y,0+128z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-512z-1024x*z-1024y*z-2048x*y*z+2z²+1
[0+128x,0+128y,64+128z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-2048x*y+4y²+4z-4096x*y*z+4z²+1
[64+128x,0+128y,64+128z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-512y-1024x*y+2y²+2z-1024y*z-2048x*y*z+2z²+1
[0+128x,64+128y,64+128z]:	failure constant=-1, vgcd=2 [0,1,1] 512x-2x²-2y+1024x*y-2y²-2z+1024x*z+2048x*y*z-2z²-1
[64+128x,64+128y,64+128z]:	failure constant=509, vgcd=4 [1,1,1] 1020x-4x²+1020y+2048x*y-4y²+1020z+2048x*z+2048y*z+4096x*y*z-4z²+509
----------------
expanding queue[7]^6,meter=[2,2,2]: x²+y²-1024x*y*z+z²
[0+256x,0+256y,0+256z]:	unknown -> [8] [0,0,0] x²+y²-2048x*y*z+z²
-> solution [0,0,0],trivial(3)
[128+256x,0+256y,0+256z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-4096y*z-8192x*y*z+4z²+1
[0+256x,128+256y,0+256z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-4096x*z-8192x*y*z+4z²+1
[128+256x,128+256y,0+256z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-1024z-2048x*z-2048y*z-4096x*y*z+2z²+1
[0+256x,0+256y,128+256z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-4096x*y+4y²+4z-8192x*y*z+4z²+1
[128+256x,0+256y,128+256z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-1024y-2048x*y+2y²+2z-2048y*z-4096x*y*z+2z²+1
[0+256x,128+256y,128+256z]:	failure constant=-1, vgcd=2 [0,1,1] 1024x-2x²-2y+2048x*y-2y²-2z+2048x*z+4096x*y*z-2z²-1
[128+256x,128+256y,128+256z]:	failure constant=1021, vgcd=4 [1,1,1] 2044x-4x²+2044y+4096x*y-4y²+2044z+4096x*z+4096y*z+8192x*y*z-4z²+1021
----------------
expanding queue[8]^7,meter=[2,2,2]: x²+y²-2048x*y*z+z²
[0+512x,0+512y,0+512z]:	unknown -> [9] [0,0,0] x²+y²-4096x*y*z+z²
-> solution [0,0,0],trivial(3)
[256+512x,0+512y,0+512z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-8192y*z-16384x*y*z+4z²+1
[0+512x,256+512y,0+512z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-8192x*z-16384x*y*z+4z²+1
[256+512x,256+512y,0+512z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-2048z-4096x*z-4096y*z-8192x*y*z+2z²+1
[0+512x,0+512y,256+512z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-8192x*y+4y²+4z-16384x*y*z+4z²+1
[256+512x,0+512y,256+512z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-2048y-4096x*y+2y²+2z-4096y*z-8192x*y*z+2z²+1
[0+512x,256+512y,256+512z]:	failure constant=-1, vgcd=2 [0,1,1] 2048x-2x²-2y+4096x*y-2y²-2z+4096x*z+8192x*y*z-2z²-1
[256+512x,256+512y,256+512z]:	failure constant=2045, vgcd=4 [1,1,1] 4092x-4x²+4092y+8192x*y-4y²+4092z+8192x*z+8192y*z+16384x*y*z-4z²+2045
Maximum level 8 [10] mod 2: x²+y²-8x*y*z+z²
