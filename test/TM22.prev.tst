TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar 
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] 1+x^2-2x*y+y^2-2x*z-2y*z-2x*y*z+z^2
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: 1+x^2-2x*y+y^2-2x*z-2y*z-2x*y*z+z^2
[1+2x,1+2y,1+2z]:	unknown -> [1] -4-8x+4x^2-8y-16x*y+4y^2-8z-16x*z-16y*z-16x*y*z+4z^2
----------------
expanding queue[1]^0,meter=[2,2,2]*4: -4-8x+4x^2-8y-16x*y+4y^2-8z-16x*z-16y*z-16x*y*z+4z^2
[3+4x,3+4y,3+4z]:	unknown -> [2] -80-96x+16x^2-96y-128x*y+16y^2-96z-128x*z-128y*z-128x*y*z+16z^2
----------------
expanding queue[2]^1,meter=[2,2,2]*8: -80-96x+16x^2-96y-128x*y+16y^2-96z-128x*z-128y*z-128x*y*z+16z^2
[7+8x,7+8y,7+8z]:	unknown -> [3] -832-896x+64x^2-896y-1024x*y+64y^2-896z-1024x*z-1024y*z-1024x*y*z+64z^2
----------------
expanding queue[3]^2,meter=[2,2,2]*16: -832-896x+64x^2-896y-1024x*y+64y^2-896z-1024x*z-1024y*z-1024x*y*z+64z^2
[15+16x,15+16y,15+16z]:	unknown -> [4] -7424-7680x+256x^2-7680y-8192x*y+256y^2-7680z-8192x*z-8192y*z-8192x*y*z+256z^2
----------------
expanding queue[4]^3,meter=[2,2,2]*32: -7424-7680x+256x^2-7680y-8192x*y+256y^2-7680z-8192x*z-8192y*z-8192x*y*z+256z^2
[31+32x,31+32y,31+32z]:	unknown -> [5] -62464-63488x+1024x^2-63488y-65536x*y+1024y^2-63488z-65536x*z-65536y*z-65536x*y*z+1024z^2
----------------
expanding queue[5]^4,meter=[2,2,2]*64: -62464-63488x+1024x^2-63488y-65536x*y+1024y^2-63488z-65536x*z-65536y*z-65536x*y*z+1024z^2
[63+64x,63+64y,63+64z]:	unknown -> [6] -512000-516096x+4096x^2-516096y-524288x*y+4096y^2-516096z-524288x*z-524288y*z-524288x*y*z+4096z^2
----------------
expanding queue[6]^5,meter=[2,2,2]*128: -512000-516096x+4096x^2-516096y-524288x*y+4096y^2-516096z-524288x*z-524288y*z-524288x*y*z+4096z^2
[127+128x,127+128y,127+128z]:	unknown -> [7] -4145152-4161536x+16384x^2-4161536y-4194304x*y+16384y^2-4161536z-4194304x*z-4194304y*z-4194304x*y*z+16384z^2
Maximum level 6 [8] mod 2: 1+x^2-2x*y+y^2-2x*z-2y*z-2x*y*z+z^2
