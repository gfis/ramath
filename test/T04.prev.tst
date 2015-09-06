ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp 
Refined variables=x,y,z
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^4-y^4-z^2
solution [0,0,0],trivial(3)
[0+2x,0+2y,0+2z]:	unknown -> [1] 16x^4-16y^4-4z^2
[1+2x,1+2y,0+2z]:	unknown -> [2] 8x+24x^2+32x^3+16x^4-8y-24y^2-32y^3-16y^4-4z^2
[1+2x,0+2y,1+2z]:	unknown -> [3] 8x+24x^2+32x^3+16x^4-16y^4-4z-4z^2
----------------
expanding queue[1]^0,meter=[1,1,2]*4: 16x^4-16y^4-4z^2
solution [0,0,0],trivial(3)
[0+2x,0+2y,0+4z]:	same form as 16x^4-16y^4-16z^2
expanding queue[2]^0,meter=[1,1,2]*4: 8x+24x^2+32x^3+16x^4-8y-24y^2-32y^3-16y^4-4z^2
solution [1,1,0],trivial(3)
[1+2x,1+2y,0+4z]:	unknown -> [4] 8x+24x^2+32x^3+16x^4-8y-24y^2-32y^3-16y^4-16z^2
expanding queue[3]^0,meter=[1,1,2]*4: 8x+24x^2+32x^3+16x^4-16y^4-4z-4z^2
solution [1,0,1],trivial(3)
[1+2x,0+2y,1+4z]:	unknown -> [5] 8x+24x^2+32x^3+16x^4-16y^4-8z-16z^2
[1+2x,0+2y,3+4z]:	negative-1 [5] by {z=>-z-1}
----------------
expanding queue[4]^2,meter=[2,2,1]*8: 8x+24x^2+32x^3+16x^4-8y-24y^2-32y^3-16y^4-16z^2
solution [1,1,0],trivial(3)
[1+4x,1+4y,0+4z]:	unknown -> [6] 16x+96x^2+256x^3+256x^4-16y-96y^2-256y^3-256y^4-16z^2
[3+4x,1+4y,0+4z]:	negative-1 [6] by {x=>-x-1}
[1+4x,3+4y,0+4z]:	negative-1 [6] by {y=>-y-1}
[3+4x,3+4y,0+4z]:	negative-1 [6] by {x=>-x-1,y=>-y-1}
expanding queue[5]^3,meter=[2,1,2]*8: 8x+24x^2+32x^3+16x^4-16y^4-8z-16z^2
solution [1,0,1],trivial(3)
[1+4x,0+2y,1+8z]:	unknown -> [7] 16x+96x^2+256x^3+256x^4-16y^4-16z-64z^2
[3+4x,0+2y,1+8z]:	negative-1 [7] by {x=>-x-1}
----------------
expanding queue[6]^4,meter=[2,2,2]*16: 16x+96x^2+256x^3+256x^4-16y-96y^2-256y^3-256y^4-16z^2
solution [1,1,0],trivial(3)
[1+8x,1+8y,0+8z]:	unknown -> [8] 32x+384x^2+2048x^3+4096x^4-32y-384y^2-2048y^3-4096y^4-64z^2
[5+8x,5+8y,0+8z]:	unknown -> [9] 4000x+9600x^2+10240x^3+4096x^4-4000y-9600y^2-10240y^3-4096y^4-64z^2
[5+8x,1+8y,4+8z]:	unknown -> [10] 608+4000x+9600x^2+10240x^3+4096x^4-32y-384y^2-2048y^3-4096y^4-64z-64z^2
[1+8x,5+8y,4+8z]:	unknown -> [11] -640+32x+384x^2+2048x^3+4096x^4-4000y-9600y^2-10240y^3-4096y^4-64z-64z^2
expanding queue[7]^5,meter=[2,2,2]*16: 16x+96x^2+256x^3+256x^4-16y^4-16z-64z^2
solution [1,0,1],trivial(3)
[1+8x,0+4y,1+16z]:	unknown -> [12] 32x+384x^2+2048x^3+4096x^4-256y^4-32z-256z^2
[5+8x,2+4y,1+16z]:	unknown -> [13] 608+4000x+9600x^2+10240x^3+4096x^4-128y-384y^2-512y^3-256y^4-32z-256z^2
[5+8x,0+4y,9+16z]:	unknown -> [14] 544+4000x+9600x^2+10240x^3+4096x^4-256y^4-288z-256z^2
[1+8x,2+4y,9+16z]:	unknown -> [15] -96+32x+384x^2+2048x^3+4096x^4-128y-384y^2-512y^3-256y^4-288z-256z^2
Maximum level 3 reached at [16]: x^4-y^4-z^2
