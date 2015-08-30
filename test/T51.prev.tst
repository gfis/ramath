Expanding for base=2, reasons+features=base,similiar,evenexp norm
exponentGCDs=[4,4,2], transposables={{x},{y},{z}}
----------------
expanding queue[0]^-1: x^4 - y^4 - 2*z^2 meter=[2,2,1] *2
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+1*z]:	unknown -> [1] 8*x^4-8*y^4-z^2
[1+2*x,1+2*y,0+1*z]:	unknown -> [2] 4*x+12*x^2+16*x^3+8*x^4-4*y-12*y^2-16*y^3-8*y^4-z^2
----------------
expanding queue[1]^0: 8*x^4 - 8*y^4 - z^2 meter=[1,1,2] *4
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+2*z]:	unknown -> [3] 2*x^4-2*y^4-z^2
expanding queue[2]^0: 4*x + 12*x^2 + 16*x^3 + 8*x^4 - 4*y - 12*y^2 - 16*y^3 - 8*y^4 - z^2 meter=[1,1,2] *4
solution [1,1,0],trivial(3)
[1+2*x,1+2*y,0+2*z]:	unknown -> [4] x+3*x^2+4*x^3+2*x^4-y-3*y^2-4*y^3-2*y^4-z^2
----------------
expanding queue[3]^1: 2*x^4 - 2*y^4 - z^2 meter=[1,1,2] *8
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+4*z]:	similiar to [0], same  x^4-y^4-2*z^2
expanding queue[4]^2: x + 3*x^2 + 4*x^3 + 2*x^4 - y - 3*y^2 - 4*y^3 - 2*y^4 - z^2 meter=[2,2,2] *8
solution [1,1,0],trivial(3)
[1+4*x,1+4*y,0+4*z]:	unknown -> [5] x+6*x^2+16*x^3+16*x^4-y-6*y^2-16*y^3-16*y^4-2*z^2
[3+4*x,1+4*y,0+4*z]:	negative-1 [5] by {x=>-x-1}
[1+4*x,3+4*y,0+4*z]:	negative-1 [5] by {y=>-y-1}
[3+4*x,3+4*y,0+4*z]:	negative-1 [5] by {x=>-x-1,y=>-y-1}
----------------
expanding queue[5]^4: x + 6*x^2 + 16*x^3 + 16*x^4 - y - 6*y^2 - 16*y^3 - 16*y^4 - 2*z^2 meter=[2,2,1] *16
solution [1,1,0],trivial(3)
[1+8*x,1+8*y,0+4*z]:	unknown -> [6] x+12*x^2+64*x^3+128*x^4-y-12*y^2-64*y^3-128*y^4-z^2
[5+8*x,5+8*y,0+4*z]:	unknown -> [7] 125*x+300*x^2+320*x^3+128*x^4-125*y-300*y^2-320*y^3-128*y^4-z^2
----------------
expanding queue[6]^5: x + 12*x^2 + 64*x^3 + 128*x^4 - y - 12*y^2 - 64*y^3 - 128*y^4 - z^2 meter=[2,2,2] *32
solution [1,1,0],trivial(3)
[1+16*x,1+16*y,0+8*z]:	unknown -> [8] x+24*x^2+256*x^3+1024*x^4-y-24*y^2-256*y^3-1024*y^4-2*z^2
[9+16*x,9+16*y,0+8*z]:	unknown -> [9] 729*x+1944*x^2+2304*x^3+1024*x^4-729*y-1944*y^2-2304*y^3-1024*y^4-2*z^2
[9+16*x,1+16*y,4+8*z]:	unknown -> [10] 102+729*x+1944*x^2+2304*x^3+1024*x^4-y-24*y^2-256*y^3-1024*y^4-2*z-2*z^2
[1+16*x,9+16*y,4+8*z]:	unknown -> [11] -103+x+24*x^2+256*x^3+1024*x^4-729*y-1944*y^2-2304*y^3-1024*y^4-2*z-2*z^2
expanding queue[7]^5: 125*x + 300*x^2 + 320*x^3 + 128*x^4 - 125*y - 300*y^2 - 320*y^3 - 128*y^4 - z^2 meter=[2,2,2] *32
solution [5,5,0],trivial(3)
[5+16*x,5+16*y,0+8*z]:	unknown -> [12] 125*x+600*x^2+1280*x^3+1024*x^4-125*y-600*y^2-1280*y^3-1024*y^4-2*z^2
[13+16*x,13+16*y,0+8*z]:	unknown -> [13] 2197*x+4056*x^2+3328*x^3+1024*x^4-2197*y-4056*y^2-3328*y^3-1024*y^4-2*z^2
[13+16*x,5+16*y,4+8*z]:	unknown -> [14] 436+2197*x+4056*x^2+3328*x^3+1024*x^4-125*y-600*y^2-1280*y^3-1024*y^4-2*z-2*z^2
[5+16*x,13+16*y,4+8*z]:	unknown -> [15] -437+125*x+600*x^2+1280*x^3+1024*x^4-2197*y-4056*y^2-3328*y^3-1024*y^4-2*z-2*z^2
----------------
expanding queue[8]^6: x + 24*x^2 + 256*x^3 + 1024*x^4 - y - 24*y^2 - 256*y^3 - 1024*y^4 - 2*z^2 meter=[2,2,1] *64
solution [1,1,0],trivial(3)
[1+32*x,1+32*y,0+8*z]:	unknown -> [16] x+48*x^2+1024*x^3+8192*x^4-y-48*y^2-1024*y^3-8192*y^4-z^2
[17+32*x,17+32*y,0+8*z]:	unknown -> [17] 4913*x+13872*x^2+17408*x^3+8192*x^4-4913*y-13872*y^2-17408*y^3-8192*y^4-z^2
expanding queue[9]^6: 729*x + 1944*x^2 + 2304*x^3 + 1024*x^4 - 729*y - 1944*y^2 - 2304*y^3 - 1024*y^4 - 2*z^2 meter=[2,2,1] *64
solution [9,9,0],trivial(3)
[9+32*x,9+32*y,0+8*z]:	unknown -> [18] 729*x+3888*x^2+9216*x^3+8192*x^4-729*y-3888*y^2-9216*y^3-8192*y^4-z^2
[25+32*x,25+32*y,0+8*z]:	unknown -> [19] 15625*x+30000*x^2+25600*x^3+8192*x^4-15625*y-30000*y^2-25600*y^3-8192*y^4-z^2
expanding queue[10]^6: 102 + 729*x + 1944*x^2 + 2304*x^3 + 1024*x^4 - y - 24*y^2 - 256*y^3 - 1024*y^4 - 2*z - 2*z^2 meter=[2,2,1] *64
[9+32*x,1+32*y,4+8*z]:	unknown -> [20] 51+729*x+3888*x^2+9216*x^3+8192*x^4-y-48*y^2-1024*y^3-8192*y^4-z-z^2
[25+32*x,17+32*y,4+8*z]:	unknown -> [21] 2399+15625*x+30000*x^2+25600*x^3+8192*x^4-4913*y-13872*y^2-17408*y^3-8192*y^4-z-z^2
expanding queue[11]^6:  - 103 + x + 24*x^2 + 256*x^3 + 1024*x^4 - 729*y - 1944*y^2 - 2304*y^3 - 1024*y^4 - 2*z - 2*z^2 meter=[2,2,1] *64
[17+32*x,9+32*y,4+8*z]:	unknown -> [22] 601+4913*x+13872*x^2+17408*x^3+8192*x^4-729*y-3888*y^2-9216*y^3-8192*y^4-z-z^2
[1+32*x,25+32*y,4+8*z]:	unknown -> [23] -3052+x+48*x^2+1024*x^3+8192*x^4-15625*y-30000*y^2-25600*y^3-8192*y^4-z-z^2
expanding queue[12]^7: 125*x + 600*x^2 + 1280*x^3 + 1024*x^4 - 125*y - 600*y^2 - 1280*y^3 - 1024*y^4 - 2*z^2 meter=[2,2,1] *64
solution [5,5,0],trivial(3)
[5+32*x,5+32*y,0+8*z]:	unknown -> [24] 125*x+1200*x^2+5120*x^3+8192*x^4-125*y-1200*y^2-5120*y^3-8192*y^4-z^2
[21+32*x,21+32*y,0+8*z]:	unknown -> [25] 9261*x+21168*x^2+21504*x^3+8192*x^4-9261*y-21168*y^2-21504*y^3-8192*y^4-z^2
expanding queue[13]^7: 2197*x + 4056*x^2 + 3328*x^3 + 1024*x^4 - 2197*y - 4056*y^2 - 3328*y^3 - 1024*y^4 - 2*z^2 meter=[2,2,1] *64
solution [13,13,0],trivial(3)
[13+32*x,13+32*y,0+8*z]:	unknown -> [26] 2197*x+8112*x^2+13312*x^3+8192*x^4-2197*y-8112*y^2-13312*y^3-8192*y^4-z^2
[29+32*x,29+32*y,0+8*z]:	unknown -> [27] 24389*x+40368*x^2+29696*x^3+8192*x^4-24389*y-40368*y^2-29696*y^3-8192*y^4-z^2
expanding queue[14]^7: 436 + 2197*x + 4056*x^2 + 3328*x^3 + 1024*x^4 - 125*y - 600*y^2 - 1280*y^3 - 1024*y^4 - 2*z - 2*z^2 meter=[2,2,1] *64
[13+32*x,5+32*y,4+8*z]:	unknown -> [28] 218+2197*x+8112*x^2+13312*x^3+8192*x^4-125*y-1200*y^2-5120*y^3-8192*y^4-z-z^2
[29+32*x,21+32*y,4+8*z]:	unknown -> [29] 4006+24389*x+40368*x^2+29696*x^3+8192*x^4-9261*y-21168*y^2-21504*y^3-8192*y^4-z-z^2
expanding queue[15]^7:  - 437 + 125*x + 600*x^2 + 1280*x^3 + 1024*x^4 - 2197*y - 4056*y^2 - 3328*y^3 - 1024*y^4 - 2*z - 2*z^2 meter=[2,2,1] *64
[21+32*x,13+32*y,4+8*z]:	unknown -> [30] 1296+9261*x+21168*x^2+21504*x^3+8192*x^4-2197*y-8112*y^2-13312*y^3-8192*y^4-z-z^2
[5+32*x,29+32*y,4+8*z]:	unknown -> [31] -5521+125*x+1200*x^2+5120*x^3+8192*x^4-24389*y-40368*y^2-29696*y^3-8192*y^4-z-z^2
Maximum level 5 reached at [32]: x^4 - y^4 - 2*z^2
