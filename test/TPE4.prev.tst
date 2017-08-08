Expanding for base=4, level=3, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 15x²-7y²-9
----------------
expanding queue[0]^-1,meter=[4,4]: 15x²-7y²-9
[0+4x,1+4y]:	unknown -> [1] [0,1] 30x²-7y-14y²-2
[0+4x,3+4y]:	negative-1 [1] by {y=>-y-1}
----------------
expanding queue[1]^0,meter=[4,4]: 30x²-7y-14y²-2
[4+16x,1+16y]:	unknown -> [2] [1,0] 60x+120x²-7y-56y²+7
[12+16x,1+16y]:	negative-1 [2] by {x=>-x-1}
[0+16x,9+16y]:	unknown -> [3] [0,2] 120x²-63y-56y²-18
[8+16x,9+16y]:	unknown -> [4] [2,2] 120x+120x²-63y-56y²+12
----------------
expanding queue[2]^1,meter=[1,4]: 60x+120x²-7y-56y²+7
[4+16x,17+64y]:	unknown -> [5] [0,1] 15x+30x²-119y-224y²-14
expanding queue[3]^1,meter=[1,4]: 120x²-63y-56y²-18
[0+16x,41+64y]:	unknown -> [6] [0,2] 30x²-287y-224y²-92
expanding queue[4]^1,meter=[1,4]: 120x+120x²-63y-56y²+12
[8+16x,9+64y]:	unknown -> [7] [0,0] 30x+30x²-63y-224y²+3
----------------
expanding queue[5]^2,meter=[4,4]: 15x+30x²-119y-224y²-14
[36+64x,17+256y]:	unknown -> [8] [2,0] 135x+120x²-119y-896y²+34
[20+64x,81+256y]:	unknown -> [9] [1,1] 75x+120x²-567y-896y²-78
[4+64x,145+256y]:	unknown -> [10] [0,2] 15x+120x²-1015y-896y²-287
[52+64x,209+256y]:	unknown -> [11] [3,3] 195x+120x²-1463y-896y²-518
expanding queue[6]^3,meter=[4,4]: 30x²-287y-224y²-92
[0+64x,41+256y]:	unknown -> [12] [0,0] 120x²-287y-896y²-23
[32+64x,41+256y]:	unknown -> [13] [2,0] 120x+120x²-287y-896y²+7
[16+64x,169+256y]:	unknown -> [14] [1,2] 60x+120x²-1183y-896y²-383
[48+64x,169+256y]:	negative-1 [14] by {x=>-x-1}
expanding queue[7]^4,meter=[4,4]: 30x+30x²-63y-224y²+3
[8+64x,73+256y]:	unknown -> [15] [0,1] 30x+120x²-511y-896y²-71
[24+64x,73+256y]:	unknown -> [16] [1,1] 90x+120x²-511y-896y²-56
[40+64x,73+256y]:	negative-1 [16] by {x=>-x-1}
[56+64x,73+256y]:	negative-1 [15] by {x=>-x-1}
Maximum level 3 [17] mod 4: 15x²-7y²-9
