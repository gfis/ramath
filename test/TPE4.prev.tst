ExponentGCDs=[2,2]
Expanding for base=4, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] -9+15x^2-7y^2
----------------
expanding queue[0]^-1,meter=[4,4]*4: -9+15x^2-7y^2
[0+4x,1+4y]:	unknown -> [1] -2+30x^2-7y-14y^2
[0+4x,3+4y]:	negative-1 [1] by {y=>-y-1}
----------------
expanding queue[1]^0,meter=[4,4]*16: -2+30x^2-7y-14y^2
[4+16x,1+16y]:	unknown -> [2] 7+60x+120x^2-7y-56y^2
[12+16x,1+16y]:	negative-1 [2] by {x=>-x-1}
[0+16x,9+16y]:	unknown -> [3] -18+120x^2-63y-56y^2
[8+16x,9+16y]:	unknown -> [4] 12+120x+120x^2-63y-56y^2
----------------
expanding queue[2]^1,meter=[1,4]*64: 7+60x+120x^2-7y-56y^2
[4+16x,17+64y]:	unknown -> [5] -14+15x+30x^2-119y-224y^2
expanding queue[3]^1,meter=[1,4]*64: -18+120x^2-63y-56y^2
[0+16x,41+64y]:	unknown -> [6] -92+30x^2-287y-224y^2
expanding queue[4]^1,meter=[1,4]*64: 12+120x+120x^2-63y-56y^2
[8+16x,9+64y]:	unknown -> [7] 3+30x+30x^2-63y-224y^2
----------------
expanding queue[5]^2,meter=[4,4]*256: -14+15x+30x^2-119y-224y^2
[36+64x,17+256y]:	unknown -> [8] 34+135x+120x^2-119y-896y^2
[20+64x,81+256y]:	unknown -> [9] -78+75x+120x^2-567y-896y^2
[4+64x,145+256y]:	unknown -> [10] -287+15x+120x^2-1015y-896y^2
[52+64x,209+256y]:	unknown -> [11] -518+195x+120x^2-1463y-896y^2
expanding queue[6]^3,meter=[4,4]*256: -92+30x^2-287y-224y^2
[0+64x,41+256y]:	unknown -> [12] -23+120x^2-287y-896y^2
[32+64x,41+256y]:	unknown -> [13] 7+120x+120x^2-287y-896y^2
[16+64x,169+256y]:	unknown -> [14] -383+60x+120x^2-1183y-896y^2
[48+64x,169+256y]:	negative-1 [14] by {x=>-x-1}
expanding queue[7]^4,meter=[4,4]*256: 3+30x+30x^2-63y-224y^2
[8+64x,73+256y]:	unknown -> [15] -71+30x+120x^2-511y-896y^2
[24+64x,73+256y]:	unknown -> [16] -56+90x+120x^2-511y-896y^2
[40+64x,73+256y]:	negative-1 [16] by {x=>-x-1}
[56+64x,73+256y]:	negative-1 [15] by {x=>-x-1}
Maximum level 3 [17] mod 4: -9+15x^2-7y^2
