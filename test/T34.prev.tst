ExponentGCDs=[1,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm,invall
----------------
expanding queue[0]^-1,meter=[2,2]*2: 4*x - x^3 + y^2
solution [0,0],trivial(3)
[0,0]:	unknown -> [1] 2*x-2*x^3+y^2
[1,1]:	unknown -> [2] 2+x-6*x^2-4*x^3+2*y+2*y^2
----------------
expanding queue[1]^0,meter=[2,2]*4: 2*x - 2*x^3 + y^2
solution [0,0],trivial(3)
[0,0]:	unknown -> [3] x-4*x^3+y^2
[2,0]:	unknown -> [4] -2*x-6*x^2-4*x^3+y^2
expanding queue[2]^0,meter=[2,2]*4: 2 + x - 6*x^2 - 4*x^3 + 2*y + 2*y^2
[1,1]:	unknown -> [5] 1+x-12*x^2-16*x^3+2*y+4*y^2
[1,3]:	negative-1 [5] by {y=>-y-1}
----------------
expanding queue[3]^1,meter=[2,2]*8: x - 4*x^3 + y^2
solution [0,0],trivial(3)
[0,0]:	unknown -> [6] x-16*x^3+2*y^2
[4,4]:	unknown -> [7] -1-11*x-24*x^2-16*x^3+2*y+2*y^2
expanding queue[4]^1,meter=[2,2]*8:  - 2*x - 6*x^2 - 4*x^3 + y^2
solution [2,0],trivial(1)
[2,0]:	unknown -> [8] -x-6*x^2-8*x^3+y^2
[6,0]:	unknown -> [9] -3-13*x-18*x^2-8*x^3+y^2
expanding queue[5]^2,meter=[2,2]*8: 1 + x - 12*x^2 - 16*x^3 + 2*y + 4*y^2
[5,1]:	unknown -> [10] -13-71*x-120*x^2-64*x^3+2*y+8*y^2
[5,5]:	unknown -> [11] -10-71*x-120*x^2-64*x^3+10*y+8*y^2
----------------
expanding queue[6]^3,meter=[2,2]*16: x - 16*x^3 + 2*y^2
solution [0,0],trivial(3)
[0,0]:	unknown -> [12] x-64*x^3+4*y^2
[0,8]:	unknown -> [13] 1+x-64*x^3+4*y+4*y^2
expanding queue[7]^3,meter=[2,2]*16:  - 1 - 11*x - 24*x^2 - 16*x^3 + 2*y + 2*y^2
[12,4]:	unknown -> [14] -26-107*x-144*x^2-64*x^3+2*y+4*y^2
[12,12]:	negative-1 [14] by {y=>-y-1}
expanding queue[8]^4,meter=[2,2]*16:  - x - 6*x^2 - 8*x^3 + y^2
solution [2,0],trivial(1)
[2,0]:	unknown -> [15] -x-12*x^2-32*x^3+2*y^2
[10,8]:	unknown -> [16] -7-37*x-60*x^2-32*x^3+2*y+2*y^2
expanding queue[9]^4,meter=[2,2]*16:  - 3 - 13*x - 18*x^2 - 8*x^3 + y^2
[14,0]:	unknown -> [17] -21-73*x-84*x^2-32*x^3+2*y^2
[6,8]:	unknown -> [18] -1-13*x-36*x^2-32*x^3+2*y+2*y^2
expanding queue[10]^5,meter=[2,2]*16:  - 13 - 71*x - 120*x^2 - 64*x^3 + 2*y + 8*y^2
[13,1]:	unknown -> [19] -134-503*x-624*x^2-256*x^3+2*y+16*y^2
[13,9]:	unknown -> [20] -129-503*x-624*x^2-256*x^3+18*y+16*y^2
expanding queue[11]^5,meter=[2,2]*16:  - 10 - 71*x - 120*x^2 - 64*x^3 + 10*y + 8*y^2
[5,5]:	unknown -> [21] -5-71*x-240*x^2-256*x^3+10*y+16*y^2
[5,13]:	unknown -> [22] 4-71*x-240*x^2-256*x^3+26*y+16*y^2
Maximum level 3 reached at [23]: 4*x - x^3 + y^2
