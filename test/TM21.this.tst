TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar invall,norm,showfail
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-2x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-2x*y*z+z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] x²+y²-4x*y*z+z²
-> solution [0,0,0],trivial(3)
[1+2x,0+2y,0+2z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-8y*z-16x*y*z+4z²+1
[0+2x,1+2y,0+2z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-8x*z-16x*y*z+4z²+1
[1+2x,1+2y,0+2z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-2z-4x*z-4y*z-8x*y*z+2z²+1
[0+2x,0+2y,1+2z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-8x*y+4y²+4z-16x*y*z+4z²+1
[1+2x,0+2y,1+2z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-2y-4x*y+2y²+2z-4y*z-8x*y*z+2z²+1
[0+2x,1+2y,1+2z]:	failure constant=-1, vgcd=2 [0,1,1] 2x-2x²-2y+4x*y-2y²-2z+4x*z+8x*y*z-2z²-1
[1+2x,1+2y,1+2z]:	failure constant=1, vgcd=4 [1,1,1] 4x²-8x*y+4y²-8x*z-8y*z-16x*y*z+4z²+1
----------------
expanding queue[1]^0,meter=[2,2,2]: x²+y²-4x*y*z+z²
[0+4x,0+4y,0+4z]:	unknown -> [2] [0,0,0] x²+y²-8x*y*z+z²
-> solution [0,0,0],trivial(3)
[2+4x,0+4y,0+4z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-16y*z-32x*y*z+4z²+1
[0+4x,2+4y,0+4z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-16x*z-32x*y*z+4z²+1
[2+4x,2+4y,0+4z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-4z-8x*z-8y*z-16x*y*z+2z²+1
[0+4x,0+4y,2+4z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-16x*y+4y²+4z-32x*y*z+4z²+1
[2+4x,0+4y,2+4z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-4y-8x*y+2y²+2z-8y*z-16x*y*z+2z²+1
[0+4x,2+4y,2+4z]:	failure constant=-1, vgcd=2 [0,1,1] 4x-2x²-2y+8x*y-2y²-2z+8x*z+16x*y*z-2z²-1
[2+4x,2+4y,2+4z]:	failure constant=1, vgcd=4 [1,1,1] 4x-4x²+4y+16x*y-4y²+4z+16x*z+16y*z+32x*y*z-4z²+1
----------------
expanding queue[2]^1,meter=[2,2,2]: x²+y²-8x*y*z+z²
[0+8x,0+8y,0+8z]:	unknown -> [3] [0,0,0] x²+y²-16x*y*z+z²
-> solution [0,0,0],trivial(3)
[4+8x,0+8y,0+8z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-32y*z-64x*y*z+4z²+1
[0+8x,4+8y,0+8z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-32x*z-64x*y*z+4z²+1
[4+8x,4+8y,0+8z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-8z-16x*z-16y*z-32x*y*z+2z²+1
[0+8x,0+8y,4+8z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-32x*y+4y²+4z-64x*y*z+4z²+1
[4+8x,0+8y,4+8z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-8y-16x*y+2y²+2z-16y*z-32x*y*z+2z²+1
[0+8x,4+8y,4+8z]:	failure constant=-1, vgcd=2 [0,1,1] 8x-2x²-2y+16x*y-2y²-2z+16x*z+32x*y*z-2z²-1
[4+8x,4+8y,4+8z]:	failure constant=5, vgcd=4 [1,1,1] 12x-4x²+12y+32x*y-4y²+12z+32x*z+32y*z+64x*y*z-4z²+5
----------------
expanding queue[3]^2,meter=[2,2,2]: x²+y²-16x*y*z+z²
[0+16x,0+16y,0+16z]:	unknown -> [4] [0,0,0] x²+y²-32x*y*z+z²
-> solution [0,0,0],trivial(3)
[8+16x,0+16y,0+16z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-64y*z-128x*y*z+4z²+1
[0+16x,8+16y,0+16z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-64x*z-128x*y*z+4z²+1
[8+16x,8+16y,0+16z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-16z-32x*z-32y*z-64x*y*z+2z²+1
[0+16x,0+16y,8+16z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-64x*y+4y²+4z-128x*y*z+4z²+1
[8+16x,0+16y,8+16z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-16y-32x*y+2y²+2z-32y*z-64x*y*z+2z²+1
[0+16x,8+16y,8+16z]:	failure constant=-1, vgcd=2 [0,1,1] 16x-2x²-2y+32x*y-2y²-2z+32x*z+64x*y*z-2z²-1
[8+16x,8+16y,8+16z]:	failure constant=13, vgcd=4 [1,1,1] 28x-4x²+28y+64x*y-4y²+28z+64x*z+64y*z+128x*y*z-4z²+13
----------------
expanding queue[4]^3,meter=[2,2,2]: x²+y²-32x*y*z+z²
[0+32x,0+32y,0+32z]:	unknown -> [5] [0,0,0] x²+y²-64x*y*z+z²
-> solution [0,0,0],trivial(3)
[16+32x,0+32y,0+32z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-128y*z-256x*y*z+4z²+1
[0+32x,16+32y,0+32z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-128x*z-256x*y*z+4z²+1
[16+32x,16+32y,0+32z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-32z-64x*z-64y*z-128x*y*z+2z²+1
[0+32x,0+32y,16+32z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-128x*y+4y²+4z-256x*y*z+4z²+1
[16+32x,0+32y,16+32z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-32y-64x*y+2y²+2z-64y*z-128x*y*z+2z²+1
[0+32x,16+32y,16+32z]:	failure constant=-1, vgcd=2 [0,1,1] 32x-2x²-2y+64x*y-2y²-2z+64x*z+128x*y*z-2z²-1
[16+32x,16+32y,16+32z]:	failure constant=29, vgcd=4 [1,1,1] 60x-4x²+60y+128x*y-4y²+60z+128x*z+128y*z+256x*y*z-4z²+29
----------------
expanding queue[5]^4,meter=[2,2,2]: x²+y²-64x*y*z+z²
[0+64x,0+64y,0+64z]:	unknown -> [6] [0,0,0] x²+y²-128x*y*z+z²
-> solution [0,0,0],trivial(3)
[32+64x,0+64y,0+64z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-256y*z-512x*y*z+4z²+1
[0+64x,32+64y,0+64z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-256x*z-512x*y*z+4z²+1
[32+64x,32+64y,0+64z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-64z-128x*z-128y*z-256x*y*z+2z²+1
[0+64x,0+64y,32+64z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-256x*y+4y²+4z-512x*y*z+4z²+1
[32+64x,0+64y,32+64z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-64y-128x*y+2y²+2z-128y*z-256x*y*z+2z²+1
[0+64x,32+64y,32+64z]:	failure constant=-1, vgcd=2 [0,1,1] 64x-2x²-2y+128x*y-2y²-2z+128x*z+256x*y*z-2z²-1
[32+64x,32+64y,32+64z]:	failure constant=61, vgcd=4 [1,1,1] 124x-4x²+124y+256x*y-4y²+124z+256x*z+256y*z+512x*y*z-4z²+61
----------------
expanding queue[6]^5,meter=[2,2,2]: x²+y²-128x*y*z+z²
[0+128x,0+128y,0+128z]:	unknown -> [7] [0,0,0] x²+y²-256x*y*z+z²
-> solution [0,0,0],trivial(3)
[64+128x,0+128y,0+128z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-512y*z-1024x*y*z+4z²+1
[0+128x,64+128y,0+128z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-512x*z-1024x*y*z+4z²+1
[64+128x,64+128y,0+128z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-128z-256x*z-256y*z-512x*y*z+2z²+1
[0+128x,0+128y,64+128z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-512x*y+4y²+4z-1024x*y*z+4z²+1
[64+128x,0+128y,64+128z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-128y-256x*y+2y²+2z-256y*z-512x*y*z+2z²+1
[0+128x,64+128y,64+128z]:	failure constant=-1, vgcd=2 [0,1,1] 128x-2x²-2y+256x*y-2y²-2z+256x*z+512x*y*z-2z²-1
[64+128x,64+128y,64+128z]:	failure constant=125, vgcd=4 [1,1,1] 252x-4x²+252y+512x*y-4y²+252z+512x*z+512y*z+1024x*y*z-4z²+125
Maximum level 6 [8] mod 2: x²+y²-2x*y*z+z²
