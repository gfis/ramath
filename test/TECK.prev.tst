Expanding for base=6, level=2, reasons+features=base,same,similiar,evenexp invall,norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] x²-y³+4
---------------- level 0
expanding queue[0]^-1,meter=[6,6]: x²-y³+4
[2+6x,2+6y]:	unknown -> [1] [2,2] 2x+3x²-6y-18y²-18y³
-> solution [2,2],trivial(2)
[4+6x,2+6y]:	negative-1 [1] by {x=>-x-1}
[1+6x,5+6y]:	unknown -> [2] [1,5] 2x+6x²-75y-90y²-36y³-20
[5+6x,5+6y]:	negative-1 [2] by {x=>-x-1}
-> solution [11,5],NONTRIVIAL
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[6,6]: 2x+3x²-6y-18y²-18y³
[2+36x,2+36y]:	unknown -> [3] [0,0] x+9x²-3y-54y²-324y³
-> solution [2,2],trivial(2)
[2+36x,14+36y]:	unknown -> [4] [0,2] x+9x²-147y-378y²-324y³-19
[2+36x,26+36y]:	unknown -> [5] [0,4] x+9x²-507y-702y²-324y³-122
endexp[1]
expanding queue[2]^0,meter=[6,6]: 2x+6x²-75y-90y²-36y³-20
[7+36x,5+36y]:	unknown -> [6] [1,0] 14x+36x²-75y-540y²-1296y³-2
[25+36x,5+36y]:	unknown -> [7] [4,0] 50x+36x²-75y-540y²-1296y³+14
[7+36x,17+36y]:	unknown -> [8] [1,2] 14x+36x²-867y-1836y²-1296y³-135
[25+36x,17+36y]:	unknown -> [9] [4,2] 50x+36x²-867y-1836y²-1296y³-119
[7+36x,29+36y]:	unknown -> [10] [1,4] 14x+36x²-2523y-3132y²-1296y³-676
[25+36x,29+36y]:	unknown -> [11] [4,4] 50x+36x²-2523y-3132y²-1296y³-660
endexp[2]
---------------- level 2
Maximum level 2 [12] mod 6: x²-y³+4
