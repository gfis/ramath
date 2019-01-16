Expanding for base=3, level=4, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] x²-y³-6
---------------- level 0
expanding queue[0]^-1,meter=[3,3]: x²-y³-6
[1+3x,1+3y]:	unknown -> [1] [1,1] 2x+3x²-3y-9y²-9y³-2
[2+3x,1+3y]:	negative-1 [1] by {x=>-x-1}
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[3,1]: 2x+3x²-3y-9y²-9y³-2
[4+9x,1+3y]:	unknown -> [2] [1,0] 8x+9x²-y-3y²-3y³+1
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[3,3]: 8x+9x²-y-3y²-3y³+1
[13+27x,1+9y]:	unknown -> [3] [1,0] 26x+27x²-y-9y²-27y³+6
[4+27x,4+9y]:	unknown -> [4] [0,1] 8x+27x²-16y-36y²-27y³-2
[22+27x,7+9y]:	unknown -> [5] [2,2] 44x+27x²-49y-63y²-27y³+5
endexp[2]
---------------- level 3
expanding queue[3]^2,meter=[3,3]: 26x+27x²-y-9y²-27y³+6
[13+81x,1+27y]:	unknown -> [6] [0,0] 26x+81x²-y-27y²-243y³+2
[67+81x,10+27y]:	unknown -> [7] [2,1] 134x+81x²-100y-270y²-243y³+43
[40+81x,19+27y]:	unknown -> [8] [1,2] 80x+81x²-361y-513y²-243y³-65
endexp[3]
expanding queue[4]^2,meter=[3,3]: 8x+27x²-16y-36y²-27y³-2
[31+81x,4+27y]:	unknown -> [9] [1,0] 62x+81x²-16y-108y²-243y³+11
[4+81x,13+27y]:	unknown -> [10] [0,1] 8x+81x²-169y-351y²-243y³-27
[58+81x,22+27y]:	unknown -> [11] [2,2] 116x+81x²-484y-594y²-243y³-90
endexp[4]
expanding queue[5]^2,meter=[3,3]: 44x+27x²-49y-63y²-27y³+5
[76+81x,7+27y]:	unknown -> [12] [2,0] 152x+81x²-49y-189y²-243y³+67
[49+81x,16+27y]:	unknown -> [13] [1,1] 98x+81x²-256y-432y²-243y³-21
[22+81x,25+27y]:	unknown -> [14] [0,2] 44x+81x²-625y-675y²-243y³-187
endexp[5]
---------------- level 4
Maximum level 4 [15] mod 3: x²-y³-6
