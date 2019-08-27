TranspositionSet={[0,1,3,2],[0,2,1,3],[0,2,3,1],[0,3,2,1],[0,3,1,2]}
Expanding for base=2, level=6, reasons+features=base,transpose,same,similiar invall,norm,showfail
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-2N*x*y*z+z²
-> solution [0,0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-2N*x*y*z+z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] x²+y²-4N*x*y*z+z²
-> solution [0,0,0],trivial(3)
[1+2x,0+2y,0+2z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-8N*y*z-16N*x*y*z+4z²+1
[0+2x,1+2y,0+2z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-8N*x*z-16N*x*y*z+4z²+1
[1+2x,1+2y,0+2z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-2N*z-4N*x*z-4N*y*z-8N*x*y*z+2z²+1
[0+2x,0+2y,1+2z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-8N*x*y+4y²+4z-16N*x*y*z+4z²+1
[1+2x,0+2y,1+2z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-2N*y-4N*x*y+2y²+2z-4N*y*z-8N*x*y*z+2z²+1
[0+2x,1+2y,1+2z]:	failure constant=-1, vgcd=2 [0,1,1] 2N*x-2x²-2y+4N*x*y-2y²-2z+4N*x*z+8N*x*y*z-2z²-1
[1+2x,1+2y,1+2z]:	failure constant=-3, vgcd=2 [1,1,1] 2N-4x+4N*x-4x²-4y+4N*y+8N*x*y-4y²-4z+4N*z+8N*x*z+8N*y*z+16N*x*y*z-4z²-3
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2]: x²+y²-4N*x*y*z+z²
[0+4x,0+4y,0+4z]:	unknown -> [2] [0,0,0] x²+y²-8N*x*y*z+z²
-> solution [0,0,0],trivial(3)
[2+4x,0+4y,0+4z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-16N*y*z-32N*x*y*z+4z²+1
[0+4x,2+4y,0+4z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-16N*x*z-32N*x*y*z+4z²+1
[2+4x,2+4y,0+4z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-4N*z-8N*x*z-8N*y*z-16N*x*y*z+2z²+1
[0+4x,0+4y,2+4z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-16N*x*y+4y²+4z-32N*x*y*z+4z²+1
[2+4x,0+4y,2+4z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-4N*y-8N*x*y+2y²+2z-8N*y*z-16N*x*y*z+2z²+1
[0+4x,2+4y,2+4z]:	failure constant=-1, vgcd=2 [0,1,1] 4N*x-2x²-2y+8N*x*y-2y²-2z+8N*x*z+16N*x*y*z-2z²-1
[2+4x,2+4y,2+4z]:	failure constant=-3, vgcd=4 [1,1,1] 4N-4x+8N*x-4x²-4y+8N*y+16N*x*y-4y²-4z+8N*z+16N*x*z+16N*y*z+32N*x*y*z-4z²-3
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[2,2,2]: x²+y²-8N*x*y*z+z²
[0+8x,0+8y,0+8z]:	unknown -> [3] [0,0,0] x²+y²-16N*x*y*z+z²
-> solution [0,0,0],trivial(3)
[4+8x,0+8y,0+8z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-32N*y*z-64N*x*y*z+4z²+1
[0+8x,4+8y,0+8z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-32N*x*z-64N*x*y*z+4z²+1
[4+8x,4+8y,0+8z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-8N*z-16N*x*z-16N*y*z-32N*x*y*z+2z²+1
[0+8x,0+8y,4+8z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-32N*x*y+4y²+4z-64N*x*y*z+4z²+1
[4+8x,0+8y,4+8z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-8N*y-16N*x*y+2y²+2z-16N*y*z-32N*x*y*z+2z²+1
[0+8x,4+8y,4+8z]:	failure constant=-1, vgcd=2 [0,1,1] 8N*x-2x²-2y+16N*x*y-2y²-2z+16N*x*z+32N*x*y*z-2z²-1
[4+8x,4+8y,4+8z]:	failure constant=-3, vgcd=4 [1,1,1] 8N-4x+16N*x-4x²-4y+16N*y+32N*x*y-4y²-4z+16N*z+32N*x*z+32N*y*z+64N*x*y*z-4z²-3
endexp[2]
---------------- level 3
expanding queue[3]^2,meter=[2,2,2]: x²+y²-16N*x*y*z+z²
[0+16x,0+16y,0+16z]:	unknown -> [4] [0,0,0] x²+y²-32N*x*y*z+z²
-> solution [0,0,0],trivial(3)
[8+16x,0+16y,0+16z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-64N*y*z-128N*x*y*z+4z²+1
[0+16x,8+16y,0+16z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-64N*x*z-128N*x*y*z+4z²+1
[8+16x,8+16y,0+16z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-16N*z-32N*x*z-32N*y*z-64N*x*y*z+2z²+1
[0+16x,0+16y,8+16z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-64N*x*y+4y²+4z-128N*x*y*z+4z²+1
[8+16x,0+16y,8+16z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-16N*y-32N*x*y+2y²+2z-32N*y*z-64N*x*y*z+2z²+1
[0+16x,8+16y,8+16z]:	failure constant=-1, vgcd=2 [0,1,1] 16N*x-2x²-2y+32N*x*y-2y²-2z+32N*x*z+64N*x*y*z-2z²-1
[8+16x,8+16y,8+16z]:	failure constant=-3, vgcd=4 [1,1,1] 16N-4x+32N*x-4x²-4y+32N*y+64N*x*y-4y²-4z+32N*z+64N*x*z+64N*y*z+128N*x*y*z-4z²-3
endexp[3]
---------------- level 4
expanding queue[4]^3,meter=[2,2,2]: x²+y²-32N*x*y*z+z²
[0+32x,0+32y,0+32z]:	unknown -> [5] [0,0,0] x²+y²-64N*x*y*z+z²
-> solution [0,0,0],trivial(3)
[16+32x,0+32y,0+32z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-128N*y*z-256N*x*y*z+4z²+1
[0+32x,16+32y,0+32z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-128N*x*z-256N*x*y*z+4z²+1
[16+32x,16+32y,0+32z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-32N*z-64N*x*z-64N*y*z-128N*x*y*z+2z²+1
[0+32x,0+32y,16+32z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-128N*x*y+4y²+4z-256N*x*y*z+4z²+1
[16+32x,0+32y,16+32z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-32N*y-64N*x*y+2y²+2z-64N*y*z-128N*x*y*z+2z²+1
[0+32x,16+32y,16+32z]:	failure constant=-1, vgcd=2 [0,1,1] 32N*x-2x²-2y+64N*x*y-2y²-2z+64N*x*z+128N*x*y*z-2z²-1
[16+32x,16+32y,16+32z]:	failure constant=-3, vgcd=4 [1,1,1] 32N-4x+64N*x-4x²-4y+64N*y+128N*x*y-4y²-4z+64N*z+128N*x*z+128N*y*z+256N*x*y*z-4z²-3
endexp[4]
---------------- level 5
expanding queue[5]^4,meter=[2,2,2]: x²+y²-64N*x*y*z+z²
[0+64x,0+64y,0+64z]:	unknown -> [6] [0,0,0] x²+y²-128N*x*y*z+z²
-> solution [0,0,0],trivial(3)
[32+64x,0+64y,0+64z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-256N*y*z-512N*x*y*z+4z²+1
[0+64x,32+64y,0+64z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-256N*x*z-512N*x*y*z+4z²+1
[32+64x,32+64y,0+64z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-64N*z-128N*x*z-128N*y*z-256N*x*y*z+2z²+1
[0+64x,0+64y,32+64z]:	failure constant=1, vgcd=4 [0,0,1] 4x²-256N*x*y+4y²+4z-512N*x*y*z+4z²+1
[32+64x,0+64y,32+64z]:	failure constant=1, vgcd=2 [1,0,1] 2x+2x²-64N*y-128N*x*y+2y²+2z-128N*y*z-256N*x*y*z+2z²+1
[0+64x,32+64y,32+64z]:	failure constant=-1, vgcd=2 [0,1,1] 64N*x-2x²-2y+128N*x*y-2y²-2z+128N*x*z+256N*x*y*z-2z²-1
[32+64x,32+64y,32+64z]:	failure constant=-3, vgcd=4 [1,1,1] 64N-4x+128N*x-4x²-4y+128N*y+256N*x*y-4y²-4z+128N*z+256N*x*z+256N*y*z+512N*x*y*z-4z²-3
endexp[5]
---------------- level 6
Maximum level 6 [7] mod 2: x²+y²-2N*x*y*z+z²
