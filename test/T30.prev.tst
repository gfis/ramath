ExponentGCDs=[2,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp 
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] 2-4x^2+4x^4-2y^2
-> solution [0,1],trivial(1) [1,1],trivial(2)
----------------
expanding queue[0]^-1,meter=[1,2]*2: 2-4x^2+4x^4-2y^2
[0+1x,1+2y]:	unknown -> [1] -4x^2+4x^4-8y-8y^2
-> solution [0,1],trivial(1) [1,1],trivial(2)
----------------
expanding queue[1]^0,meter=[2,1]*4: -4x^2+4x^4-8y-8y^2
[0+2x,1+2y]:	unknown -> [2] -16x^2+64x^4-8y-8y^2
-> solution [0,1],trivial(1)
[1+2x,1+2y]:	unknown -> [3] 16x+80x^2+128x^3+64x^4-8y-8y^2
-> solution [1,1],trivial(2)
----------------
expanding queue[2]^1,meter=[1,2]*8: -16x^2+64x^4-8y-8y^2
[0+2x,1+4y]:	unknown -> [4] -16x^2+64x^4-16y-32y^2
-> solution [0,1],trivial(1) [2,5],NONTRIVIAL
[0+2x,3+4y]:	negative-1 [4] by {y=>-y-1}
expanding queue[3]^1,meter=[1,2]*8: 16x+80x^2+128x^3+64x^4-8y-8y^2
[1+2x,1+4y]:	unknown -> [5] 16x+80x^2+128x^3+64x^4-16y-32y^2
-> solution [1,1],trivial(2)
[1+2x,3+4y]:	negative-1 [5] by {y=>-y-1}
----------------
expanding queue[4]^2,meter=[2,2]*16: -16x^2+64x^4-16y-32y^2
[0+4x,1+8y]:	same -64x^2+1024x^4-32y-128y^2 map {x=>x/4,y=>y/4} -> [1] -4x^2+4x^4-8y-8y^2
-> solution [0,1],trivial(1)
[2+4x,5+8y]:	unknown -> [6] 448x+1472x^2+2048x^3+1024x^4-160y-128y^2
-> solution [2,5],NONTRIVIAL
expanding queue[5]^3,meter=[2,2]*16: 16x+80x^2+128x^3+64x^4-16y-32y^2
[1+4x,1+8y]:	unknown -> [7] 32x+320x^2+1024x^3+1024x^4-32y-128y^2
-> solution [1,1],trivial(2)
[3+4x,1+8y]:	negative-1 [7] by {x=>-x-1}
----------------
expanding queue[6]^4,meter=[1,2]*32: 448x+1472x^2+2048x^3+1024x^4-160y-128y^2
[2+4x,5+16y]:	unknown -> [8] 448x+1472x^2+2048x^3+1024x^4-320y-512y^2
-> solution [2,5],NONTRIVIAL
expanding queue[7]^5,meter=[2,2]*32: 32x+320x^2+1024x^3+1024x^4-32y-128y^2
[1+8x,1+16y]:	same 64x+1280x^2+8192x^3+16384x^4-64y-512y^2 map {x=>x/4,y=>y/8} -> [3] 16x+80x^2+128x^3+64x^4-8y-8y^2
-> solution [1,1],trivial(2)
[5+8x,9+16y]:	unknown -> [9] 2240+15680x+38144x^2+40960x^3+16384x^4-576y-512y^2
Maximum level 4 at [10]: 2-4x^2+4x^4-2y^2
