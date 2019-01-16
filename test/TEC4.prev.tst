Expanding for base=3, level=7, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] x²-y³+2
---------------- level 0
expanding queue[0]^-1,meter=[3,3]: x²-y³+2
[1+3x,0+3y]:	unknown -> [1] [1,0] 2x+3x²-9y³+1
[2+3x,0+3y]:	negative-1 [1] by {x=>-x-1}
-> solution [5,3],NONTRIVIAL
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[3,1]: 2x+3x²-9y³+1
[4+9x,0+3y]:	unknown -> [2] [1,0] 8x+9x²-3y³+2
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[3,1]: 8x+9x²-3y³+2
[22+27x,0+3y]:	unknown -> [3] [2,0] 44x+27x²-y³+18
endexp[2]
---------------- level 3
expanding queue[3]^2,meter=[3,3]: 44x+27x²-y³+18
[22+81x,0+9y]:	unknown -> [4] [0,0] 44x+81x²-9y³+6
[76+81x,3+9y]:	unknown -> [5] [2,1] 152x+81x²-3y-9y²-9y³+71
[49+81x,6+9y]:	unknown -> [6] [1,2] 98x+81x²-12y-18y²-9y³+27
endexp[3]
---------------- level 4
expanding queue[4]^3,meter=[3,1]: 44x+81x²-9y³+6
[22+243x,0+9y]:	unknown -> [7] [0,0] 44x+243x²-3y³+2
endexp[4]
expanding queue[5]^3,meter=[3,1]: 152x+81x²-3y-9y²-9y³+71
[238+243x,3+9y]:	unknown -> [8] [2,0] 476x+243x²-y-3y²-3y³+233
endexp[5]
expanding queue[6]^3,meter=[3,1]: 98x+81x²-12y-18y²-9y³+27
[49+243x,6+9y]:	unknown -> [9] [0,0] 98x+243x²-4y-6y²-3y³+9
endexp[6]
---------------- level 5
expanding queue[7]^4,meter=[3,1]: 44x+243x²-3y³+2
[508+729x,0+9y]:	unknown -> [10] [2,0] 1016x+729x²-y³+354
endexp[7]
expanding queue[8]^5,meter=[3,3]: 476x+243x²-y-3y²-3y³+233
[724+729x,3+27y]:	unknown -> [11] [2,0] 1448x+729x²-y-9y²-27y³+719
[481+729x,12+27y]:	unknown -> [12] [1,1] 962x+729x²-16y-36y²-27y³+315
[238+729x,21+27y]:	unknown -> [13] [0,2] 476x+729x²-49y-63y²-27y³+65
endexp[8]
expanding queue[9]^6,meter=[3,3]: 98x+243x²-4y-6y²-3y³+9
[49+729x,6+27y]:	unknown -> [14] [0,0] 98x+729x²-4y-18y²-27y³+3
[535+729x,15+27y]:	unknown -> [15] [2,1] 1070x+729x²-25y-45y²-27y³+388
[292+729x,24+27y]:	unknown -> [16] [1,2] 584x+729x²-64y-72y²-27y³+98
endexp[9]
---------------- level 6
expanding queue[10]^7,meter=[3,3]: 1016x+729x²-y³+354
[508+2187x,0+27y]:	unknown -> [17] [0,0] 1016x+2187x²-9y³+118
[1966+2187x,9+27y]:	unknown -> [18] [2,1] 3932x+2187x²-3y-9y²-9y³+1767
[1237+2187x,18+27y]:	unknown -> [19] [1,2] 2474x+2187x²-12y-18y²-9y³+697
endexp[10]
expanding queue[11]^8,meter=[3,3]: 1448x+729x²-y-9y²-27y³+719
[2182+2187x,3+81y]:	unknown -> [20] [2,0] 4364x+2187x²-y-27y²-243y³+2177
[1453+2187x,30+81y]:	unknown -> [21] [1,1] 2906x+2187x²-100y-270y²-243y³+953
[724+2187x,57+81y]:	unknown -> [22] [0,2] 1448x+2187x²-361y-513y²-243y³+155
endexp[11]
expanding queue[12]^8,meter=[3,3]: 962x+729x²-16y-36y²-27y³+315
[481+2187x,12+81y]:	unknown -> [23] [0,0] 962x+2187x²-16y-108y²-243y³+105
[1939+2187x,39+81y]:	unknown -> [24] [2,1] 3878x+2187x²-169y-351y²-243y³+1692
[1210+2187x,66+81y]:	unknown -> [25] [1,2] 2420x+2187x²-484y-594y²-243y³+538
endexp[12]
expanding queue[13]^8,meter=[3,3]: 476x+729x²-49y-63y²-27y³+65
[1696+2187x,21+81y]:	unknown -> [26] [2,0] 3392x+2187x²-49y-189y²-243y³+1311
[967+2187x,48+81y]:	unknown -> [27] [1,1] 1934x+2187x²-256y-432y²-243y³+377
[238+2187x,75+81y]:	unknown -> [28] [0,2] 476x+2187x²-625y-675y²-243y³-167
endexp[13]
expanding queue[14]^9,meter=[3,3]: 98x+729x²-4y-18y²-27y³+3
[49+2187x,6+81y]:	unknown -> [29] [0,0] 98x+2187x²-4y-54y²-243y³+1
[1507+2187x,33+81y]:	unknown -> [30] [2,1] 3014x+2187x²-121y-297y²-243y³+1022
[778+2187x,60+81y]:	unknown -> [31] [1,2] 1556x+2187x²-400y-540y²-243y³+178
endexp[14]
expanding queue[15]^9,meter=[3,3]: 1070x+729x²-25y-45y²-27y³+388
[1264+2187x,15+81y]:	unknown -> [32] [1,0] 2528x+2187x²-25y-135y²-243y³+729
[535+2187x,42+81y]:	unknown -> [33] [0,1] 1070x+2187x²-196y-378y²-243y³+97
[1993+2187x,69+81y]:	unknown -> [34] [2,2] 3986x+2187x²-529y-621y²-243y³+1666
endexp[15]
expanding queue[16]^9,meter=[3,3]: 584x+729x²-64y-72y²-27y³+98
[1750+2187x,24+81y]:	unknown -> [35] [2,0] 3500x+2187x²-64y-216y²-243y³+1394
[1021+2187x,51+81y]:	unknown -> [36] [1,1] 2042x+2187x²-289y-459y²-243y³+416
[292+2187x,78+81y]:	unknown -> [37] [0,2] 584x+2187x²-676y-702y²-243y³-178
endexp[16]
---------------- level 7
Maximum level 7 [38] mod 3: x²-y³+2
