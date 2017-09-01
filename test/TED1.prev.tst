Expanding for base=3, level=3, reasons+features=base,same,similiar invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 2x²-4y³
-> solution [0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[3,3]: 2x²-4y³
[0+3x,0+3y]:	unknown -> [1] [0,0] x²-6y³
-> solution [0,0],trivial(3)
[1+3x,2+3y]:	unknown -> [2] [1,2] 2x+3x²-24y-36y²-18y³-5
-> solution [4,2],NONTRIVIAL
[2+3x,2+3y]:	unknown -> [3] [2,2] 4x+3x²-24y-36y²-18y³-4
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[3,3]: x²-6y³
[0+9x,0+9y]:	unknown -> [4] [0,0] x²-18y³
-> solution [0,0],trivial(3)
endexp[1]
expanding queue[2]^0,meter=[3,3]: 2x+3x²-24y-36y²-18y³-5
[4+9x,2+9y]:	unknown -> [5] [1,0] 8x+9x²-24y-108y²-162y³
-> solution [4,2],NONTRIVIAL
[4+9x,5+9y]:	unknown -> [6] [1,1] 8x+9x²-150y-270y²-162y³-26
[4+9x,8+9y]:	unknown -> [7] [1,2] 8x+9x²-384y-432y²-162y³-112
endexp[2]
expanding queue[3]^0,meter=[3,3]: 4x+3x²-24y-36y²-18y³-4
[5+9x,2+9y]:	unknown -> [8] [1,0] 10x+9x²-24y-108y²-162y³+1
[5+9x,5+9y]:	unknown -> [9] [1,1] 10x+9x²-150y-270y²-162y³-25
[5+9x,8+9y]:	unknown -> [10] [1,2] 10x+9x²-384y-432y²-162y³-111
endexp[3]
---------------- level 2
expanding queue[4]^1,meter=[3,3]: x²-18y³
[0+27x,0+27y]:	same x²-54y³ map {y=>y/3} -> [0] 2x²-4y³
-> solution [0,0],trivial(3)
[0+27x,9+27y]:	unknown -> [11] [0,1] x²-18y-54y²-54y³-2
[0+27x,18+27y]:	unknown -> [12] [0,2] x²-72y-108y²-54y³-16
endexp[4]
expanding queue[5]^2,meter=[3,3]: 8x+9x²-24y-108y²-162y³
[4+27x,2+27y]:	unknown -> [13] [0,0] 8x+27x²-24y-324y²-1458y³
-> solution [4,2],NONTRIVIAL
[4+27x,11+27y]:	unknown -> [14] [0,1] 8x+27x²-726y-1782y²-1458y³-98
[4+27x,20+27y]:	unknown -> [15] [0,2] 8x+27x²-2400y-3240y²-1458y³-592
endexp[5]
expanding queue[6]^2,meter=[3,3]: 8x+9x²-150y-270y²-162y³-26
[13+27x,5+27y]:	unknown -> [16] [1,0] 26x+27x²-150y-810y²-1458y³-3
[13+27x,14+27y]:	unknown -> [17] [1,1] 26x+27x²-1176y-2268y²-1458y³-197
[13+27x,23+27y]:	unknown -> [18] [1,2] 26x+27x²-3174y-3726y²-1458y³-895
endexp[6]
expanding queue[7]^2,meter=[3,3]: 8x+9x²-384y-432y²-162y³-112
[22+27x,8+27y]:	unknown -> [19] [2,0] 44x+27x²-384y-1296y²-1458y³-20
[22+27x,17+27y]:	unknown -> [20] [2,1] 44x+27x²-1734y-2754y²-1458y³-346
[22+27x,26+27y]:	unknown -> [21] [2,2] 44x+27x²-4056y-4212y²-1458y³-1284
endexp[7]
expanding queue[8]^3,meter=[3,3]: 10x+9x²-24y-108y²-162y³+1
[23+27x,2+27y]:	unknown -> [22] [2,0] 46x+27x²-24y-324y²-1458y³+19
[23+27x,11+27y]:	unknown -> [23] [2,1] 46x+27x²-726y-1782y²-1458y³-79
[23+27x,20+27y]:	unknown -> [24] [2,2] 46x+27x²-2400y-3240y²-1458y³-573
endexp[8]
expanding queue[9]^3,meter=[3,3]: 10x+9x²-150y-270y²-162y³-25
[14+27x,5+27y]:	unknown -> [25] [1,0] 28x+27x²-150y-810y²-1458y³-2
[14+27x,14+27y]:	unknown -> [26] [1,1] 28x+27x²-1176y-2268y²-1458y³-196
[14+27x,23+27y]:	unknown -> [27] [1,2] 28x+27x²-3174y-3726y²-1458y³-894
endexp[9]
expanding queue[10]^3,meter=[3,3]: 10x+9x²-384y-432y²-162y³-111
[5+27x,8+27y]:	unknown -> [28] [0,0] 10x+27x²-384y-1296y²-1458y³-37
-> solution [32,8],NONTRIVIAL
[5+27x,17+27y]:	unknown -> [29] [0,1] 10x+27x²-1734y-2754y²-1458y³-363
[5+27x,26+27y]:	unknown -> [30] [0,2] 10x+27x²-4056y-4212y²-1458y³-1301
endexp[10]
---------------- level 3
Maximum level 3 [31] mod 3: 2x²-4y³
