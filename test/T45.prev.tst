Expanding for base=2, reasons+features=base,similiar,evenexp norm,showfail
exponentGCDs=[2,2], transposables={{x},{y}}
----------------
expanding queue[0]^-1:  - 9 + 15*x^2 - 7*y^2 meter=[2,2] *2
[0+2*x,0+2*y]:	failure constant=-9, vgcd=4
[1+2*x,0+2*y]:	failure constant=3, vgcd=2
[0+2*x,1+2*y]:	unknown -> [1] -4+15*x^2-7*y-7*y^2
[1+2*x,1+2*y]:	failure constant=-1, vgcd=4
----------------
expanding queue[1]^0:  - 4 + 15*x^2 - 7*y - 7*y^2 meter=[2,2] *4
[0+4*x,1+4*y]:	unknown -> [2] -2+30*x^2-7*y-14*y^2
[2+4*x,1+4*y]:	failure constant=11, vgcd=2
[0+4*x,3+4*y]:	negative-1 [2] by {y=>-y-1}
[2+4*x,3+4*y]:	failure constant=-3, vgcd=2
----------------
expanding queue[2]^1:  - 2 + 30*x^2 - 7*y - 14*y^2 meter=[1,2] *8
[0+4*x,1+8*y]:	unknown -> [3] -1+15*x^2-7*y-28*y^2
[0+4*x,5+8*y]:	failure constant=-23, vgcd=2
----------------
expanding queue[3]^2:  - 1 + 15*x^2 - 7*y - 28*y^2 meter=[2,2] *16
[0+8*x,1+16*y]:	failure constant=-1, vgcd=2
[4+8*x,1+16*y]:	unknown -> [4] 7+30*x+30*x^2-7*y-56*y^2
[0+8*x,9+16*y]:	unknown -> [5] -18+30*x^2-63*y-56*y^2
[4+8*x,9+16*y]:	failure constant=-21, vgcd=2
----------------
expanding queue[4]^3: 7 + 30*x + 30*x^2 - 7*y - 56*y^2 meter=[1,2] *32
[4+8*x,1+32*y]:	failure constant=7, vgcd=2
[4+8*x,17+32*y]:	unknown -> [6] -28+15*x+15*x^2-119*y-112*y^2
expanding queue[5]^3:  - 18 + 30*x^2 - 63*y - 56*y^2 meter=[1,2] *32
[0+8*x,9+32*y]:	unknown -> [7] -9+15*x^2-63*y-112*y^2
[0+8*x,25+32*y]:	failure constant=-137, vgcd=2
----------------
expanding queue[6]^4:  - 28 + 15*x + 15*x^2 - 119*y - 112*y^2 meter=[2,2] *64
[4+16*x,17+64*y]:	unknown -> [8] -14+15*x+30*x^2-119*y-224*y^2
[12+16*x,17+64*y]:	negative-1 [8] by {x=>-x-1}
[4+16*x,49+64*y]:	failure constant=-259, vgcd=2
[12+16*x,49+64*y]:	failure constant=-229, vgcd=2
expanding queue[7]^5:  - 9 + 15*x^2 - 63*y - 112*y^2 meter=[2,2] *64
[0+16*x,9+64*y]:	failure constant=-9, vgcd=2
[8+16*x,9+64*y]:	unknown -> [9] 3+30*x+30*x^2-63*y-224*y^2
[0+16*x,41+64*y]:	unknown -> [10] -92+30*x^2-287*y-224*y^2
[8+16*x,41+64*y]:	failure constant=-169, vgcd=2
Maximum level 5 reached at [11]:  - 9 + 15*x^2 - 7*y^2
