Expanding for base=4, level=3, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 15x²-7y²-9
---------------- level 0
expanding queue[0]^-1,meter=[4,4]: 15x²-7y²-9
[0+4x,1+4y]:	unknown -> [1] [0,1] 30x²-7y-14y²-2
[0+4x,3+4y]:	negative-1 [1] by {y=>-y-1}
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[4,4]: 30x²-7y-14y²-2
[4+16x,1+16y]:	unknown -> [2] [1,0] 60x+120x²-7y-56y²+7
[12+16x,1+16y]:	negative-1 [2] by {x=>-x-1}
[0+16x,9+16y]:	unknown -> [3] [0,2] 120x²-63y-56y²-18
[8+16x,9+16y]:	unknown -> [4] [2,2] 120x+120x²-63y-56y²+12
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[1,4]: 60x+120x²-7y-56y²+7
[4+16x,17+64y]:	unknown -> [5] [0,1] 15x+30x²-119y-224y²-14
endexp[2]
expanding queue[3]^1,meter=[1,4]: 120x²-63y-56y²-18
[0+16x,41+64y]:	unknown -> [6] [0,2] 30x²-287y-224y²-92
endexp[3]
expanding queue[4]^1,meter=[1,4]: 120x+120x²-63y-56y²+12
[8+16x,9+64y]:	unknown -> [7] [0,0] 30x+30x²-63y-224y²+3
endexp[4]
---------------- level 3
Maximum level 3 [8] mod 4: 15x²-7y²-9
