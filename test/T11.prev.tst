TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar 
Refined variables=x,y,z
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^2+y^2-4x*y*z+z^2
solution [0,0,0],trivial(3)
[0+2x,0+2y,0+2z]:	unknown -> [1] 4x^2+4y^2-32x*y*z+4z^2
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 4x^2+4y^2-32x*y*z+4z^2
solution [0,0,0],trivial(3)
[0+4x,0+4y,0+4z]:	unknown -> [2] 16x^2+16y^2-256x*y*z+16z^2
----------------
expanding queue[2]^1,meter=[2,2,2]*8: 16x^2+16y^2-256x*y*z+16z^2
solution [0,0,0],trivial(3)
[0+8x,0+8y,0+8z]:	unknown -> [3] 64x^2+64y^2-2048x*y*z+64z^2
----------------
expanding queue[3]^2,meter=[2,2,2]*16: 64x^2+64y^2-2048x*y*z+64z^2
solution [0,0,0],trivial(3)
[0+16x,0+16y,0+16z]:	unknown -> [4] 256x^2+256y^2-16384x*y*z+256z^2
----------------
expanding queue[4]^3,meter=[2,2,2]*32: 256x^2+256y^2-16384x*y*z+256z^2
solution [0,0,0],trivial(3)
[0+32x,0+32y,0+32z]:	unknown -> [5] 1024x^2+1024y^2-131072x*y*z+1024z^2
----------------
expanding queue[5]^4,meter=[2,2,2]*64: 1024x^2+1024y^2-131072x*y*z+1024z^2
solution [0,0,0],trivial(3)
[0+64x,0+64y,0+64z]:	unknown -> [6] 4096x^2+4096y^2-1048576x*y*z+4096z^2
----------------
expanding queue[6]^5,meter=[2,2,2]*128: 4096x^2+4096y^2-1048576x*y*z+4096z^2
solution [0,0,0],trivial(3)
[0+128x,0+128y,0+128z]:	unknown -> [7] 16384x^2+16384y^2-8388608x*y*z+16384z^2
----------------
expanding queue[7]^6,meter=[2,2,2]*256: 16384x^2+16384y^2-8388608x*y*z+16384z^2
solution [0,0,0],trivial(3)
[0+256x,0+256y,0+256z]:	unknown -> [8] 65536x^2+65536y^2-67108864x*y*z+65536z^2
----------------
expanding queue[8]^7,meter=[2,2,2]*512: 65536x^2+65536y^2-67108864x*y*z+65536z^2
solution [0,0,0],trivial(3)
[0+512x,0+512y,0+512z]:	unknown -> [9] 262144x^2+262144y^2-536870912x*y*z+262144z^2
Maximum level 8 reached at [10]: x^2 + y^2 - 4*x*y*z + z^2
