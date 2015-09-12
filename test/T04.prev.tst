ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp,pythagoras 
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] -x^4+y^4+z^2
-> solution [0,0,0],trivial(3) [1,1,0],trivial(3) [1,0,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: -x^4+y^4+z^2
[0+2x,0+2y,0+2z]:	same -16x^4+16y^4+4z^2 map {x=>x/2,y=>y/2,z=>z/2} -> [0] -x^4+y^4+z^2
-> solution [0,0,0],trivial(3) [2,2,0],trivial(3)
[1+2x,1+2y,0+2z]:	unknown -> [1] -8x-24x^2-32x^3-16x^4+8y+24y^2+32y^3+16y^4+4z^2
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
[1+2x,0+2y,1+2z]:	unknown -> [2] 8x+24x^2+32x^3+16x^4-16y^4-4z-4z^2
-> solution [1,0,1],trivial(3)
----------------
expanding queue[1]^0,meter=[1,1,2]*4: -8x-24x^2-32x^3-16x^4+8y+24y^2+32y^3+16y^4+4z^2
[1+2x,1+2y,0+4z]:	unknown -> [3] -8x-24x^2-32x^3-16x^4+8y+24y^2+32y^3+16y^4+16z^2
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
expanding queue[2]^0,meter=[1,1,2]*4: 8x+24x^2+32x^3+16x^4-16y^4-4z-4z^2
[1+2x,0+2y,1+4z]:	unknown -> [4] 8x+24x^2+32x^3+16x^4-16y^4-8z-16z^2
-> solution [1,0,1],trivial(3)
[1+2x,0+2y,3+4z]:	negative-1 [4] by {z=>-z-1}
----------------
expanding queue[3]^1,meter=[2,2,1]*8: -8x-24x^2-32x^3-16x^4+8y+24y^2+32y^3+16y^4+16z^2
[1+4x,1+4y,0+4z]:	unknown -> [5] -16x-96x^2-256x^3-256x^4+16y+96y^2+256y^3+256y^4+16z^2
-> solution [1,1,0],trivial(3) [5,5,0],trivial(3)
[3+4x,1+4y,0+4z]:	negative-1 [5] by {x=>-x-1}
[1+4x,3+4y,0+4z]:	negative-1 [5] by {y=>-y-1}
[3+4x,3+4y,0+4z]:	negative-1 [5] by {x=>-x-1,y=>-y-1}
-> solution [3,3,0],trivial(3) [7,7,0],trivial(3)
expanding queue[4]^2,meter=[2,1,2]*8: 8x+24x^2+32x^3+16x^4-16y^4-8z-16z^2
[1+4x,0+2y,1+8z]:	unknown -> [6] 16x+96x^2+256x^3+256x^4-16y^4-16z-64z^2
-> solution [1,0,1],trivial(3)
[3+4x,0+2y,1+8z]:	negative-1 [6] by {x=>-x-1}
-> solution [3,0,9],trivial(1)
----------------
expanding queue[5]^3,meter=[2,2,2]*16: -16x-96x^2-256x^3-256x^4+16y+96y^2+256y^3+256y^4+16z^2
[1+8x,1+8y,0+8z]:	same -32x-384x^2-2048x^3-4096x^4+32y+384y^2+2048y^3+4096y^4+64z^2 map {x=>x/4,y=>y/4,z=>z/4} -> [1] -8x-24x^2-32x^3-16x^4+8y+24y^2+32y^3+16y^4+4z^2
-> solution [1,1,0],trivial(3) [9,9,0],trivial(3)
[5+8x,5+8y,0+8z]:	unknown -> [7] -4000x-9600x^2-10240x^3-4096x^4+4000y+9600y^2+10240y^3+4096y^4+64z^2
-> solution [5,5,0],trivial(3) [13,13,0],trivial(3)
[5+8x,1+8y,4+8z]:	unknown -> [8] -608-4000x-9600x^2-10240x^3-4096x^4+32y+384y^2+2048y^3+4096y^4+64z+64z^2
[1+8x,5+8y,4+8z]:	unknown -> [9] 640-32x-384x^2-2048x^3-4096x^4+4000y+9600y^2+10240y^3+4096y^4+64z+64z^2
expanding queue[6]^4,meter=[2,2,2]*16: 16x+96x^2+256x^3+256x^4-16y^4-16z-64z^2
[1+8x,0+4y,1+16z]:	unknown -> [10] 32x+384x^2+2048x^3+4096x^4-256y^4-32z-256z^2
-> solution [1,0,1],trivial(3)
[5+8x,2+4y,1+16z]:	unknown -> [11] -608-4000x-9600x^2-10240x^3-4096x^4+128y+384y^2+512y^3+256y^4+32z+256z^2
[5+8x,0+4y,9+16z]:	unknown -> [12] -544-4000x-9600x^2-10240x^3-4096x^4+256y^4+288z+256z^2
-> solution [5,0,25],trivial(1)
[1+8x,2+4y,9+16z]:	unknown -> [13] 96-32x-384x^2-2048x^3-4096x^4+128y+384y^2+512y^3+256y^4+288z+256z^2
Maximum level 3 at [14]: -x^4+y^4+z^2
