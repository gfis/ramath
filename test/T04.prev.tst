Expanding for base=2, reasons+features=base,similiar,evenexp,evenexp,similiar
exponentGCDs=[4,4,2], transposables={{x},{y},{z}}
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^4 - y^4 - z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [1] 16*x^4-16*y^4-4*z^2
[1,1,0]:	unknown -> [2] 8*x+24*x^2+32*x^3+16*x^4-8*y-24*y^2-32*y^3-16*y^4-4*z^2
[1,0,1]:	unknown -> [3] 8*x+24*x^2+32*x^3+16*x^4-16*y^4-4*z-4*z^2
----------------
expanding queue[1]^0,meter=[1,1,2]*4: 16*x^4 - 16*y^4 - 4*z^2
solution [0,0,0],trivial(3)
[0,0,0]:	similiar   [0], same  16*x^4-16*y^4-16*z^2
expanding queue[2]^0,meter=[1,1,2]*4: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 8*y - 24*y^2 - 32*y^3 - 16*y^4 - 4*z^2
solution [1,1,0],trivial(3)
[1,1,0]:	unknown -> [4] 8*x+24*x^2+32*x^3+16*x^4-8*y-24*y^2-32*y^3-16*y^4-16*z^2
expanding queue[3]^0,meter=[1,1,2]*4: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 16*y^4 - 4*z - 4*z^2
solution [1,0,1],trivial(3)
[1,0,1]:	unknown -> [5] 8*x+24*x^2+32*x^3+16*x^4-16*y^4-8*z-16*z^2
[1,0,3]:	negative-1 [5] by {z=>-z-1}
----------------
expanding queue[4]^2,meter=[2,2,1]*8: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 8*y - 24*y^2 - 32*y^3 - 16*y^4 - 16*z^2
solution [1,1,0],trivial(3)
[1,1,0]:	unknown -> [6] 16*x+96*x^2+256*x^3+256*x^4-16*y-96*y^2-256*y^3-256*y^4-16*z^2
[3,1,0]:	negative-1 [6] by {x=>-x-1}
[1,3,0]:	negative-1 [6] by {y=>-y-1}
[3,3,0]:	negative-1 [6] by {x=>-x-1,y=>-y-1}
expanding queue[5]^3,meter=[2,1,2]*8: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 16*y^4 - 8*z - 16*z^2
solution [1,0,1],trivial(3)
[1,0,1]:	unknown -> [7] 16*x+96*x^2+256*x^3+256*x^4-16*y^4-16*z-64*z^2
[3,0,1]:	negative-1 [7] by {x=>-x-1}
----------------
expanding queue[6]^4,meter=[2,2,2]*16: 16*x + 96*x^2 + 256*x^3 + 256*x^4 - 16*y - 96*y^2 - 256*y^3 - 256*y^4 - 16*z^2
solution [1,1,0],trivial(3)
[1,1,0]:	unknown -> [8] 32*x+384*x^2+2048*x^3+4096*x^4-32*y-384*y^2-2048*y^3-4096*y^4-64*z^2
[5,5,0]:	unknown -> [9] 4000*x+9600*x^2+10240*x^3+4096*x^4-4000*y-9600*y^2-10240*y^3-4096*y^4-64*z^2
[5,1,4]:	unknown -> [10] 608+4000*x+9600*x^2+10240*x^3+4096*x^4-32*y-384*y^2-2048*y^3-4096*y^4-64*z-64*z^2
[1,5,4]:	unknown -> [11] -640+32*x+384*x^2+2048*x^3+4096*x^4-4000*y-9600*y^2-10240*y^3-4096*y^4-64*z-64*z^2
expanding queue[7]^5,meter=[2,2,2]*16: 16*x + 96*x^2 + 256*x^3 + 256*x^4 - 16*y^4 - 16*z - 64*z^2
solution [1,0,1],trivial(3)
[1,0,1]:	unknown -> [12] 32*x+384*x^2+2048*x^3+4096*x^4-256*y^4-32*z-256*z^2
[5,2,1]:	unknown -> [13] 608+4000*x+9600*x^2+10240*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-32*z-256*z^2
[5,0,9]:	unknown -> [14] 544+4000*x+9600*x^2+10240*x^3+4096*x^4-256*y^4-288*z-256*z^2
[1,2,9]:	unknown -> [15] -96+32*x+384*x^2+2048*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-288*z-256*z^2
Maximum level 3 reached at [16]: x^4 - y^4 - z^2
