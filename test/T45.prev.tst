ExponentGCDs=[2,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm,showfail
Refined variables=x,y
----------------
expanding queue[0]^-1,meter=[2,2]*2: -9+15x^2-7y^2
[0+2x,0+2y]:	failure constant=-9, vgcd=4
[1+2x,0+2y]:	failure constant=3, vgcd=2
[0+2x,1+2y]:	unknown -> [1] -4+15x^2-7y-7y^2
[1+2x,1+2y]:	failure constant=-1, vgcd=4
----------------
expanding queue[1]^0,meter=[2,2]*4: -4+15x^2-7y-7y^2
[0+4x,1+4y]:	unknown -> [2] -2+30x^2-7y-14y^2
[2+4x,1+4y]:	failure constant=11, vgcd=2
[0+4x,3+4y]:	negative-1 [2] by {y=>-y-1}
[2+4x,3+4y]:	failure constant=-3, vgcd=2
----------------
expanding queue[2]^1,meter=[1,2]*8: -2+30x^2-7y-14y^2
[0+4x,1+8y]:	unknown -> [3] -1+15x^2-7y-28y^2
[0+4x,5+8y]:	failure constant=-23, vgcd=2
----------------
expanding queue[3]^2,meter=[2,2]*16: -1+15x^2-7y-28y^2
[0+8x,1+16y]:	failure constant=-1, vgcd=2
[4+8x,1+16y]:	unknown -> [4] 7+30x+30x^2-7y-56y^2
[0+8x,9+16y]:	unknown -> [5] -18+30x^2-63y-56y^2
[4+8x,9+16y]:	failure constant=-21, vgcd=2
----------------
expanding queue[4]^3,meter=[1,2]*32: 7+30x+30x^2-7y-56y^2
[4+8x,1+32y]:	failure constant=7, vgcd=2
[4+8x,17+32y]:	unknown -> [6] -28+15x+15x^2-119y-112y^2
expanding queue[5]^3,meter=[1,2]*32: -18+30x^2-63y-56y^2
[0+8x,9+32y]:	unknown -> [7] -9+15x^2-63y-112y^2
[0+8x,25+32y]:	failure constant=-137, vgcd=2
----------------
expanding queue[6]^4,meter=[2,2]*64: -28+15x+15x^2-119y-112y^2
[4+16x,17+64y]:	unknown -> [8] -14+15x+30x^2-119y-224y^2
[12+16x,17+64y]:	negative-1 [8] by {x=>-x-1}
[4+16x,49+64y]:	failure constant=-259, vgcd=2
[12+16x,49+64y]:	failure constant=-229, vgcd=2
expanding queue[7]^5,meter=[2,2]*64: -9+15x^2-63y-112y^2
[0+16x,9+64y]:	failure constant=-9, vgcd=2
[8+16x,9+64y]:	unknown -> [9] 3+30x+30x^2-63y-224y^2
[0+16x,41+64y]:	unknown -> [10] -92+30x^2-287y-224y^2
[8+16x,41+64y]:	failure constant=-169, vgcd=2
Maximum level 5 reached at [11]:  - 9 + 15*x^2 - 7*y^2
