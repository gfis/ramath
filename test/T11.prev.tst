TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar 
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^2 + y^2 - 4*x*y*z + z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [1] 4*x^2+4*y^2-32*x*y*z+4*z^2
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 4*x^2 + 4*y^2 - 32*x*y*z + 4*z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [2] 16*x^2+16*y^2-256*x*y*z+16*z^2
----------------
expanding queue[2]^1,meter=[2,2,2]*8: 16*x^2 + 16*y^2 - 256*x*y*z + 16*z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [3] 64*x^2+64*y^2-2048*x*y*z+64*z^2
----------------
expanding queue[3]^2,meter=[2,2,2]*16: 64*x^2 + 64*y^2 - 2048*x*y*z + 64*z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [4] 256*x^2+256*y^2-16384*x*y*z+256*z^2
----------------
expanding queue[4]^3,meter=[2,2,2]*32: 256*x^2 + 256*y^2 - 16384*x*y*z + 256*z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [5] 1024*x^2+1024*y^2-131072*x*y*z+1024*z^2
----------------
expanding queue[5]^4,meter=[2,2,2]*64: 1024*x^2 + 1024*y^2 - 131072*x*y*z + 1024*z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [6] 4096*x^2+4096*y^2-1048576*x*y*z+4096*z^2
----------------
expanding queue[6]^5,meter=[2,2,2]*128: 4096*x^2 + 4096*y^2 - 1048576*x*y*z + 4096*z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [7] 16384*x^2+16384*y^2-8388608*x*y*z+16384*z^2
----------------
expanding queue[7]^6,meter=[2,2,2]*256: 16384*x^2 + 16384*y^2 - 8388608*x*y*z + 16384*z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [8] 65536*x^2+65536*y^2-67108864*x*y*z+65536*z^2
----------------
expanding queue[8]^7,meter=[2,2,2]*512: 65536*x^2 + 65536*y^2 - 67108864*x*y*z + 65536*z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [9] 262144*x^2+262144*y^2-536870912*x*y*z+262144*z^2
Maximum level 8 reached at [10]: x^2 + y^2 - 4*x*y*z + z^2
