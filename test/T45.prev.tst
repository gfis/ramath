ExponentGCDs=[2,2]
Expanding for base=2, reasons+features=base,similiar,evenexp norm,showfail
----------------
expanding queue[0]^-1,meter=[2,2]*2:  - 9 + 15*x^2 - 7*y^2
[0,0]:	failure constant=-9, vgcd=4
[1,0]:	failure constant=3, vgcd=2
[0,1]:	unknown -> [1] -4+15*x^2-7*y-7*y^2
[1,1]:	failure constant=-1, vgcd=4
----------------
expanding queue[1]^0,meter=[2,2]*4:  - 4 + 15*x^2 - 7*y - 7*y^2
[0,1]:	unknown -> [2] -2+30*x^2-7*y-14*y^2
[2,1]:	failure constant=11, vgcd=2
[0,3]:	negative-1 [2] by {y=>-y-1}
[2,3]:	failure constant=-3, vgcd=2
----------------
expanding queue[2]^1,meter=[1,2]*8:  - 2 + 30*x^2 - 7*y - 14*y^2
[0,1]:	unknown -> [3] -1+15*x^2-7*y-28*y^2
[0,5]:	failure constant=-23, vgcd=2
----------------
expanding queue[3]^2,meter=[2,2]*16:  - 1 + 15*x^2 - 7*y - 28*y^2
[0,1]:	failure constant=-1, vgcd=2
[4,1]:	unknown -> [4] 7+30*x+30*x^2-7*y-56*y^2
[0,9]:	unknown -> [5] -18+30*x^2-63*y-56*y^2
[4,9]:	failure constant=-21, vgcd=2
----------------
expanding queue[4]^3,meter=[1,2]*32: 7 + 30*x + 30*x^2 - 7*y - 56*y^2
[4,1]:	failure constant=7, vgcd=2
[4,17]:	unknown -> [6] -28+15*x+15*x^2-119*y-112*y^2
expanding queue[5]^3,meter=[1,2]*32:  - 18 + 30*x^2 - 63*y - 56*y^2
[0,9]:	unknown -> [7] -9+15*x^2-63*y-112*y^2
[0,25]:	failure constant=-137, vgcd=2
----------------
expanding queue[6]^4,meter=[2,2]*64:  - 28 + 15*x + 15*x^2 - 119*y - 112*y^2
[4,17]:	unknown -> [8] -14+15*x+30*x^2-119*y-224*y^2
[12,17]:	negative-1 [8] by {x=>-x-1}
[4,49]:	failure constant=-259, vgcd=2
[12,49]:	failure constant=-229, vgcd=2
expanding queue[7]^5,meter=[2,2]*64:  - 9 + 15*x^2 - 63*y - 112*y^2
[0,9]:	failure constant=-9, vgcd=2
[8,9]:	unknown -> [9] 3+30*x+30*x^2-63*y-224*y^2
[0,41]:	unknown -> [10] -92+30*x^2-287*y-224*y^2
[8,41]:	failure constant=-169, vgcd=2
Maximum level 5 reached at [11]:  - 9 + 15*x^2 - 7*y^2
