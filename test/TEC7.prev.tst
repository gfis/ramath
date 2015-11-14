ExponentGCDs=[2,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp 
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] -4x²+4x⁴-2y²+2
-> solution [0,1],trivial(1) [1,1],trivial(2)
----------------
expanding queue[0]^-1,meter=[1,2]*2: -4x²+4x⁴-2y²+2
[0+1x,1+2y]:	unknown -> [1] -4x²+4x⁴-8y-8y²
-> solution [0,1],trivial(1) [1,1],trivial(2)
----------------
expanding queue[1]^0,meter=[2,1]*4: -4x²+4x⁴-8y-8y²
[0+2x,1+2y]:	unknown -> [2] -16x²+64x⁴-8y-8y²
-> solution [0,1],trivial(1)
[1+2x,1+2y]:	unknown -> [3] 16x+80x²+128x³+64x⁴-8y-8y²
-> solution [1,1],trivial(2)
----------------
expanding queue[2]^1,meter=[1,2]*8: -16x²+64x⁴-8y-8y²
[0+2x,1+4y]:	unknown -> [4] -16x²+64x⁴-16y-32y²
-> solution [0,1],trivial(1) [2,5],NONTRIVIAL
[0+2x,3+4y]:	negative-1 [4] by {y=>-y-1}
expanding queue[3]^1,meter=[1,2]*8: 16x+80x²+128x³+64x⁴-8y-8y²
[1+2x,1+4y]:	unknown -> [5] 16x+80x²+128x³+64x⁴-16y-32y²
-> solution [1,1],trivial(2)
[1+2x,3+4y]:	negative-1 [5] by {y=>-y-1}
----------------
expanding queue[4]^2,meter=[2,2]*16: -16x²+64x⁴-16y-32y²
[0+4x,1+8y]:	same -64x²+1024x⁴-32y-128y² map {x=>x/4,y=>y/4} -> [1] -4x²+4x⁴-8y-8y²
-> solution [0,1],trivial(1)
[2+4x,5+8y]:	unknown -> [6] 448x+1472x²+2048x³+1024x⁴-160y-128y²
-> solution [2,5],NONTRIVIAL
expanding queue[5]^3,meter=[2,2]*16: 16x+80x²+128x³+64x⁴-16y-32y²
[1+4x,1+8y]:	unknown -> [7] 32x+320x²+1024x³+1024x⁴-32y-128y²
-> solution [1,1],trivial(2)
[3+4x,1+8y]:	negative-1 [7] by {x=>-x-1}
----------------
expanding queue[6]^4,meter=[1,2]*32: 448x+1472x²+2048x³+1024x⁴-160y-128y²
[2+4x,5+16y]:	unknown -> [8] 448x+1472x²+2048x³+1024x⁴-320y-512y²
-> solution [2,5],NONTRIVIAL
expanding queue[7]^5,meter=[2,2]*32: 32x+320x²+1024x³+1024x⁴-32y-128y²
[1+8x,1+16y]:	same 64x+1280x²+8192x³+16384x⁴-64y-512y² map {x=>x/4,y=>y/8} -> [3] 16x+80x²+128x³+64x⁴-8y-8y²
-> solution [1,1],trivial(2)
[5+8x,9+16y]:	unknown -> [9] 15680x+38144x²+40960x³+16384x⁴-576y-512y²+2240
Maximum level 4 [10] mod 2: -4x²+4x⁴-2y²+2
