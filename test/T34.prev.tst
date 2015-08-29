Expanding for base=2, reasons+features=base,evenexp,similiar norm,invall
exponentGCDs=[1,2], transposables={{x},{y}}
----------------
expanding queue[0]^-1: 4*x - x^3 + y^2 meter=[2,2] *2
solution [0,0],trivial(3)
[0+2*x,0+2*y]:	unknown -> [1] 2*x-2*x^3+y^2
[1+2*x,1+2*y]:	unknown -> [2] 2+x-6*x^2-4*x^3+2*y+2*y^2
----------------
expanding queue[1]^0: 2*x - 2*x^3 + y^2 meter=[2,2] *4
solution [0,0],trivial(3)
[0+4*x,0+4*y]:	unknown -> [3] x-4*x^3+y^2
[2+4*x,0+4*y]:	unknown -> [4] -2*x-6*x^2-4*x^3+y^2
expanding queue[2]^0: 2 + x - 6*x^2 - 4*x^3 + 2*y + 2*y^2 meter=[2,2] *4
[1+4*x,1+4*y]:	unknown -> [5] 1+x-12*x^2-16*x^3+2*y+4*y^2
[1+4*x,3+4*y]:	negative-1 [5] by {y=>-y-1}
----------------
expanding queue[3]^1: x - 4*x^3 + y^2 meter=[2,2] *8
solution [0,0],trivial(3)
[0+8*x,0+8*y]:	unknown -> [6] x-16*x^3+2*y^2
[4+8*x,4+8*y]:	unknown -> [7] -1-11*x-24*x^2-16*x^3+2*y+2*y^2
expanding queue[4]^1:  - 2*x - 6*x^2 - 4*x^3 + y^2 meter=[2,2] *8
solution [2,0],trivial(1)
[2+8*x,0+8*y]:	unknown -> [8] -x-6*x^2-8*x^3+y^2
[6+8*x,0+8*y]:	unknown -> [9] -3-13*x-18*x^2-8*x^3+y^2
expanding queue[5]^2: 1 + x - 12*x^2 - 16*x^3 + 2*y + 4*y^2 meter=[2,2] *8
[5+8*x,1+8*y]:	unknown -> [10] -13-71*x-120*x^2-64*x^3+2*y+8*y^2
[5+8*x,5+8*y]:	unknown -> [11] -10-71*x-120*x^2-64*x^3+10*y+8*y^2
----------------
expanding queue[6]^3: x - 16*x^3 + 2*y^2 meter=[2,2] *16
solution [0,0],trivial(3)
[0+16*x,0+16*y]:	unknown -> [12] x-64*x^3+4*y^2
[0+16*x,8+16*y]:	unknown -> [13] 1+x-64*x^3+4*y+4*y^2
expanding queue[7]^3:  - 1 - 11*x - 24*x^2 - 16*x^3 + 2*y + 2*y^2 meter=[2,2] *16
[12+16*x,4+16*y]:	unknown -> [14] -26-107*x-144*x^2-64*x^3+2*y+4*y^2
[12+16*x,12+16*y]:	negative-1 [14] by {y=>-y-1}
expanding queue[8]^4:  - x - 6*x^2 - 8*x^3 + y^2 meter=[2,2] *16
solution [2,0],trivial(1)
[2+16*x,0+16*y]:	unknown -> [15] -x-12*x^2-32*x^3+2*y^2
[10+16*x,8+16*y]:	unknown -> [16] -7-37*x-60*x^2-32*x^3+2*y+2*y^2
expanding queue[9]^4:  - 3 - 13*x - 18*x^2 - 8*x^3 + y^2 meter=[2,2] *16
[14+16*x,0+16*y]:	unknown -> [17] -21-73*x-84*x^2-32*x^3+2*y^2
[6+16*x,8+16*y]:	unknown -> [18] -1-13*x-36*x^2-32*x^3+2*y+2*y^2
expanding queue[10]^5:  - 13 - 71*x - 120*x^2 - 64*x^3 + 2*y + 8*y^2 meter=[2,2] *16
[13+16*x,1+16*y]:	unknown -> [19] -134-503*x-624*x^2-256*x^3+2*y+16*y^2
[13+16*x,9+16*y]:	unknown -> [20] -129-503*x-624*x^2-256*x^3+18*y+16*y^2
expanding queue[11]^5:  - 10 - 71*x - 120*x^2 - 64*x^3 + 10*y + 8*y^2 meter=[2,2] *16
[5+16*x,5+16*y]:	unknown -> [21] -5-71*x-240*x^2-256*x^3+10*y+16*y^2
[5+16*x,13+16*y]:	unknown -> [22] 4-71*x-240*x^2-256*x^3+26*y+16*y^2
Maximum level 3 reached at [23]: 4*x - x^3 + y^2
