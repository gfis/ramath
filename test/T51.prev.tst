ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm
----------------
expanding queue[0]^-1,meter=[2,2,1]*2: x^4 - y^4 - 2*z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [1] 8*x^4-8*y^4-z^2
[1,1,0]:	unknown -> [2] 4*x+12*x^2+16*x^3+8*x^4-4*y-12*y^2-16*y^3-8*y^4-z^2
----------------
expanding queue[1]^0,meter=[1,1,2]*4: 8*x^4 - 8*y^4 - z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [3] 2*x^4-2*y^4-z^2
expanding queue[2]^0,meter=[1,1,2]*4: 4*x + 12*x^2 + 16*x^3 + 8*x^4 - 4*y - 12*y^2 - 16*y^3 - 8*y^4 - z^2
solution [1,1,0],trivial(3)
[1,1,0]:	unknown -> [4] x+3*x^2+4*x^3+2*x^4-y-3*y^2-4*y^3-2*y^4-z^2
----------------
expanding queue[3]^1,meter=[1,1,2]*8: 2*x^4 - 2*y^4 - z^2
solution [0,0,0],trivial(3)
[0,0,0]:	same form as x^4-y^4-2*z^2
expanding queue[4]^2,meter=[2,2,2]*8: x + 3*x^2 + 4*x^3 + 2*x^4 - y - 3*y^2 - 4*y^3 - 2*y^4 - z^2
solution [1,1,0],trivial(3)
[1,1,0]:	unknown -> [5] x+6*x^2+16*x^3+16*x^4-y-6*y^2-16*y^3-16*y^4-2*z^2
[3,1,0]:	negative-1 [5] by {x=>-x-1}
[1,3,0]:	negative-1 [5] by {y=>-y-1}
[3,3,0]:	negative-1 [5] by {x=>-x-1,y=>-y-1}
----------------
expanding queue[5]^4,meter=[2,2,1]*16: x + 6*x^2 + 16*x^3 + 16*x^4 - y - 6*y^2 - 16*y^3 - 16*y^4 - 2*z^2
solution [1,1,0],trivial(3)
[1,1,0]:	unknown -> [6] x+12*x^2+64*x^3+128*x^4-y-12*y^2-64*y^3-128*y^4-z^2
[5,5,0]:	unknown -> [7] 125*x+300*x^2+320*x^3+128*x^4-125*y-300*y^2-320*y^3-128*y^4-z^2
----------------
expanding queue[6]^5,meter=[2,2,2]*32: x + 12*x^2 + 64*x^3 + 128*x^4 - y - 12*y^2 - 64*y^3 - 128*y^4 - z^2
solution [1,1,0],trivial(3)
[1,1,0]:	unknown -> [8] x+24*x^2+256*x^3+1024*x^4-y-24*y^2-256*y^3-1024*y^4-2*z^2
[9,9,0]:	unknown -> [9] 729*x+1944*x^2+2304*x^3+1024*x^4-729*y-1944*y^2-2304*y^3-1024*y^4-2*z^2
[9,1,4]:	unknown -> [10] 102+729*x+1944*x^2+2304*x^3+1024*x^4-y-24*y^2-256*y^3-1024*y^4-2*z-2*z^2
[1,9,4]:	unknown -> [11] -103+x+24*x^2+256*x^3+1024*x^4-729*y-1944*y^2-2304*y^3-1024*y^4-2*z-2*z^2
expanding queue[7]^5,meter=[2,2,2]*32: 125*x + 300*x^2 + 320*x^3 + 128*x^4 - 125*y - 300*y^2 - 320*y^3 - 128*y^4 - z^2
solution [5,5,0],trivial(3)
[5,5,0]:	unknown -> [12] 125*x+600*x^2+1280*x^3+1024*x^4-125*y-600*y^2-1280*y^3-1024*y^4-2*z^2
[13,13,0]:	unknown -> [13] 2197*x+4056*x^2+3328*x^3+1024*x^4-2197*y-4056*y^2-3328*y^3-1024*y^4-2*z^2
[13,5,4]:	unknown -> [14] 436+2197*x+4056*x^2+3328*x^3+1024*x^4-125*y-600*y^2-1280*y^3-1024*y^4-2*z-2*z^2
[5,13,4]:	unknown -> [15] -437+125*x+600*x^2+1280*x^3+1024*x^4-2197*y-4056*y^2-3328*y^3-1024*y^4-2*z-2*z^2
----------------
expanding queue[8]^6,meter=[2,2,1]*64: x + 24*x^2 + 256*x^3 + 1024*x^4 - y - 24*y^2 - 256*y^3 - 1024*y^4 - 2*z^2
solution [1,1,0],trivial(3)
[1,1,0]:	unknown -> [16] x+48*x^2+1024*x^3+8192*x^4-y-48*y^2-1024*y^3-8192*y^4-z^2
[17,17,0]:	unknown -> [17] 4913*x+13872*x^2+17408*x^3+8192*x^4-4913*y-13872*y^2-17408*y^3-8192*y^4-z^2
expanding queue[9]^6,meter=[2,2,1]*64: 729*x + 1944*x^2 + 2304*x^3 + 1024*x^4 - 729*y - 1944*y^2 - 2304*y^3 - 1024*y^4 - 2*z^2
solution [9,9,0],trivial(3)
[9,9,0]:	unknown -> [18] 729*x+3888*x^2+9216*x^3+8192*x^4-729*y-3888*y^2-9216*y^3-8192*y^4-z^2
[25,25,0]:	unknown -> [19] 15625*x+30000*x^2+25600*x^3+8192*x^4-15625*y-30000*y^2-25600*y^3-8192*y^4-z^2
expanding queue[10]^6,meter=[2,2,1]*64: 102 + 729*x + 1944*x^2 + 2304*x^3 + 1024*x^4 - y - 24*y^2 - 256*y^3 - 1024*y^4 - 2*z - 2*z^2
[9,1,4]:	unknown -> [20] 51+729*x+3888*x^2+9216*x^3+8192*x^4-y-48*y^2-1024*y^3-8192*y^4-z-z^2
[25,17,4]:	unknown -> [21] 2399+15625*x+30000*x^2+25600*x^3+8192*x^4-4913*y-13872*y^2-17408*y^3-8192*y^4-z-z^2
expanding queue[11]^6,meter=[2,2,1]*64:  - 103 + x + 24*x^2 + 256*x^3 + 1024*x^4 - 729*y - 1944*y^2 - 2304*y^3 - 1024*y^4 - 2*z - 2*z^2
[17,9,4]:	unknown -> [22] 601+4913*x+13872*x^2+17408*x^3+8192*x^4-729*y-3888*y^2-9216*y^3-8192*y^4-z-z^2
[1,25,4]:	unknown -> [23] -3052+x+48*x^2+1024*x^3+8192*x^4-15625*y-30000*y^2-25600*y^3-8192*y^4-z-z^2
expanding queue[12]^7,meter=[2,2,1]*64: 125*x + 600*x^2 + 1280*x^3 + 1024*x^4 - 125*y - 600*y^2 - 1280*y^3 - 1024*y^4 - 2*z^2
solution [5,5,0],trivial(3)
[5,5,0]:	unknown -> [24] 125*x+1200*x^2+5120*x^3+8192*x^4-125*y-1200*y^2-5120*y^3-8192*y^4-z^2
[21,21,0]:	unknown -> [25] 9261*x+21168*x^2+21504*x^3+8192*x^4-9261*y-21168*y^2-21504*y^3-8192*y^4-z^2
expanding queue[13]^7,meter=[2,2,1]*64: 2197*x + 4056*x^2 + 3328*x^3 + 1024*x^4 - 2197*y - 4056*y^2 - 3328*y^3 - 1024*y^4 - 2*z^2
solution [13,13,0],trivial(3)
[13,13,0]:	unknown -> [26] 2197*x+8112*x^2+13312*x^3+8192*x^4-2197*y-8112*y^2-13312*y^3-8192*y^4-z^2
[29,29,0]:	unknown -> [27] 24389*x+40368*x^2+29696*x^3+8192*x^4-24389*y-40368*y^2-29696*y^3-8192*y^4-z^2
expanding queue[14]^7,meter=[2,2,1]*64: 436 + 2197*x + 4056*x^2 + 3328*x^3 + 1024*x^4 - 125*y - 600*y^2 - 1280*y^3 - 1024*y^4 - 2*z - 2*z^2
[13,5,4]:	unknown -> [28] 218+2197*x+8112*x^2+13312*x^3+8192*x^4-125*y-1200*y^2-5120*y^3-8192*y^4-z-z^2
[29,21,4]:	unknown -> [29] 4006+24389*x+40368*x^2+29696*x^3+8192*x^4-9261*y-21168*y^2-21504*y^3-8192*y^4-z-z^2
expanding queue[15]^7,meter=[2,2,1]*64:  - 437 + 125*x + 600*x^2 + 1280*x^3 + 1024*x^4 - 2197*y - 4056*y^2 - 3328*y^3 - 1024*y^4 - 2*z - 2*z^2
[21,13,4]:	unknown -> [30] 1296+9261*x+21168*x^2+21504*x^3+8192*x^4-2197*y-8112*y^2-13312*y^3-8192*y^4-z-z^2
[5,29,4]:	unknown -> [31] -5521+125*x+1200*x^2+5120*x^3+8192*x^4-24389*y-40368*y^2-29696*y^3-8192*y^4-z-z^2
Maximum level 5 reached at [32]: x^4 - y^4 - 2*z^2
