ExponentGCDs=[2,3]
Expanding for base=9, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] x²-y³+2
----------------
expanding queue[0]^-1,meter=[9,9]*9: x²-y³+2
[4+9x,0+9y]:	unknown -> [1] 8x+9x²-81y³+2
[5+9x,0+9y]:	negative-1 [1] by {x=>-x-1}
[4+9x,3+9y]:	unknown -> [2] 8x+9x²-27y-81y²-81y³-1
[5+9x,3+9y]:	negative-1 [2] by {x=>-x-1}
-> solution [5,3],NONTRIVIAL
[4+9x,6+9y]:	unknown -> [3] 8x+9x²-108y-162y²-81y³-22
[5+9x,6+9y]:	negative-1 [3] by {x=>-x-1}
----------------
expanding queue[1]^0,meter=[9,1]*81: 8x+9x²-81y³+2
[22+81x,0+9y]:	unknown -> [4] 44x+81x²-9y³+6
expanding queue[2]^0,meter=[9,1]*81: 8x+9x²-27y-81y²-81y³-1
[76+81x,3+9y]:	unknown -> [5] 152x+81x²-3y-9y²-9y³+71
expanding queue[3]^0,meter=[9,1]*81: 8x+9x²-108y-162y²-81y³-22
[49+81x,6+9y]:	unknown -> [6] 98x+81x²-12y-18y²-9y³+27
----------------
expanding queue[4]^1,meter=[9,1]*729: 44x+81x²-9y³+6
[508+729x,0+9y]:	unknown -> [7] 1016x+729x²-y³+354
expanding queue[5]^2,meter=[9,9]*729: 152x+81x²-3y-9y²-9y³+71
[724+729x,3+81y]:	unknown -> [8] 1448x+729x²-3y-81y²-729y³+719
[481+729x,12+81y]:	unknown -> [9] 962x+729x²-48y-324y²-729y³+315
[238+729x,21+81y]:	unknown -> [10] 476x+729x²-147y-567y²-729y³+65
[724+729x,30+81y]:	unknown -> [11] 1448x+729x²-300y-810y²-729y³+682
[481+729x,39+81y]:	unknown -> [12] 962x+729x²-507y-1053y²-729y³+236
[238+729x,48+81y]:	unknown -> [13] 476x+729x²-768y-1296y²-729y³-74
[724+729x,57+81y]:	unknown -> [14] 1448x+729x²-1083y-1539y²-729y³+465
[481+729x,66+81y]:	unknown -> [15] 962x+729x²-1452y-1782y²-729y³-77
[238+729x,75+81y]:	unknown -> [16] 476x+729x²-1875y-2025y²-729y³-501
expanding queue[6]^3,meter=[9,9]*729: 98x+81x²-12y-18y²-9y³+27
[49+729x,6+81y]:	unknown -> [17] 98x+729x²-12y-162y²-729y³+3
[535+729x,15+81y]:	unknown -> [18] 1070x+729x²-75y-405y²-729y³+388
[292+729x,24+81y]:	unknown -> [19] 584x+729x²-192y-648y²-729y³+98
[49+729x,33+81y]:	unknown -> [20] 98x+729x²-363y-891y²-729y³-46
[535+729x,42+81y]:	unknown -> [21] 1070x+729x²-588y-1134y²-729y³+291
[292+729x,51+81y]:	unknown -> [22] 584x+729x²-867y-1377y²-729y³-65
[49+729x,60+81y]:	unknown -> [23] 98x+729x²-1200y-1620y²-729y³-293
[535+729x,69+81y]:	unknown -> [24] 1070x+729x²-1587y-1863y²-729y³-58
[292+729x,78+81y]:	unknown -> [25] 584x+729x²-2028y-2106y²-729y³-534
Maximum level 2 [26] mod 9: x²-y³+2
