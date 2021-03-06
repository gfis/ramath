TranspositionSet={[0,2,1,3],[1,0,2,3],[1,2,0,3],[2,1,0,3],[2,0,1,3]}
considerNonPrimitive
Expanding for base=5, level=1, reasons+features=base,transpose,primitive,same,similiar 
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a³+b³+c³-d³
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[5,5,5,5]: a³+b³+c³-d³
[0+5a,0+5b,0+5c,0+5d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [5,0,0,5],trivial(3) [0,5,0,5],trivial(3) [0,0,5,5],trivial(3)
[4+5a,1+5b,0+5c,0+5d]:	unknown -> [1] [4,1,0,0] 240a+300a²+125a³+15b+75b²+125b³+125c³-125d³+65
[3+5a,2+5b,0+5c,0+5d]:	unknown -> [2] [3,2,0,0] 135a+225a²+125a³+60b+150b²+125b³+125c³-125d³+35
[2+5a,3+5b,0+5c,0+5d]:	transposed [2] by [1,0,2,3]
[1+5a,4+5b,0+5c,0+5d]:	transposed [1] by [1,0,2,3]
[4+5a,0+5b,1+5c,0+5d]:	transposed [1] by [0,2,1,3]
[2+5a,1+5b,1+5c,0+5d]:	unknown -> [3] [2,1,1,0] 60a+150a²+125a³+15b+75b²+125b³+15c+75c²+125c³-125d³+10
[1+5a,2+5b,1+5c,0+5d]:	transposed [3] by [2,0,1,3]
[3+5a,3+5b,1+5c,0+5d]:	unknown -> [4] [3,3,1,0] 135a+225a²+125a³+135b+225b²+125b³+15c+75c²+125c³-125d³+55
[0+5a,4+5b,1+5c,0+5d]:	transposed [1] by [2,0,1,3]
[3+5a,0+5b,2+5c,0+5d]:	transposed [2] by [0,2,1,3]
[1+5a,1+5b,2+5c,0+5d]:	transposed [3] by [2,1,0,3]
[4+5a,2+5b,2+5c,0+5d]:	unknown -> [5] [4,2,2,0] 240a+300a²+125a³+60b+150b²+125b³+60c+150c²+125c³-125d³+80
[0+5a,3+5b,2+5c,0+5d]:	transposed [2] by [2,0,1,3]
[2+5a,4+5b,2+5c,0+5d]:	transposed [5] by [2,0,1,3]
[2+5a,0+5b,3+5c,0+5d]:	transposed [2] by [1,2,0,3]
[3+5a,1+5b,3+5c,0+5d]:	transposed [4] by [1,2,0,3]
[0+5a,2+5b,3+5c,0+5d]:	transposed [2] by [2,1,0,3]
[1+5a,3+5b,3+5c,0+5d]:	transposed [4] by [2,0,1,3]
[4+5a,4+5b,3+5c,0+5d]:	unknown -> [6] [4,4,3,0] 240a+300a²+125a³+240b+300b²+125b³+135c+225c²+125c³-125d³+155
[1+5a,0+5b,4+5c,0+5d]:	transposed [1] by [1,2,0,3]
[0+5a,1+5b,4+5c,0+5d]:	transposed [1] by [2,1,0,3]
[2+5a,2+5b,4+5c,0+5d]:	transposed [5] by [2,1,0,3]
[4+5a,3+5b,4+5c,0+5d]:	transposed [6] by [1,2,0,3]
[3+5a,4+5b,4+5c,0+5d]:	transposed [6] by [2,0,1,3]
[1+5a,0+5b,0+5c,1+5d]:	unknown -> [7] [1,0,0,1] 15a+75a²+125a³+125b³+125c³-15d-75d²-125d³
-> solution [1,0,0,1],trivial(3) [6,0,0,6],trivial(3)
[0+5a,1+5b,0+5c,1+5d]:	transposed [7] by [2,0,1,3]
[2+5a,2+5b,0+5c,1+5d]:	unknown -> [8] [2,2,0,1] 60a+150a²+125a³+60b+150b²+125b³+125c³-15d-75d²-125d³+15
[4+5a,3+5b,0+5c,1+5d]:	unknown -> [9] [4,3,0,1] 240a+300a²+125a³+135b+225b²+125b³+125c³-15d-75d²-125d³+90
-> solution [4,3,5,6],NONTRIVIAL
[3+5a,4+5b,0+5c,1+5d]:	transposed [9] by [1,0,2,3]
[0+5a,0+5b,1+5c,1+5d]:	transposed [7] by [2,1,0,3]
[4+5a,1+5b,1+5c,1+5d]:	unknown -> [10] [4,1,1,1] 240a+300a²+125a³+15b+75b²+125b³+15c+75c²+125c³-15d-75d²-125d³+65
[3+5a,2+5b,1+5c,1+5d]:	unknown -> [11] [3,2,1,1] 135a+225a²+125a³+60b+150b²+125b³+15c+75c²+125c³-15d-75d²-125d³+35
[2+5a,3+5b,1+5c,1+5d]:	transposed [11] by [1,0,2,3]
[1+5a,4+5b,1+5c,1+5d]:	transposed [10] by [2,0,1,3]
[2+5a,0+5b,2+5c,1+5d]:	transposed [8] by [1,2,0,3]
[3+5a,1+5b,2+5c,1+5d]:	transposed [11] by [0,2,1,3]
[0+5a,2+5b,2+5c,1+5d]:	transposed [8] by [2,0,1,3]
[1+5a,3+5b,2+5c,1+5d]:	transposed [11] by [2,0,1,3]
[4+5a,4+5b,2+5c,1+5d]:	unknown -> [12] [4,4,2,1] 240a+300a²+125a³+240b+300b²+125b³+60c+150c²+125c³-15d-75d²-125d³+135
[4+5a,0+5b,3+5c,1+5d]:	transposed [9] by [0,2,1,3]
[2+5a,1+5b,3+5c,1+5d]:	transposed [11] by [1,2,0,3]
[1+5a,2+5b,3+5c,1+5d]:	transposed [11] by [2,1,0,3]
[3+5a,3+5b,3+5c,1+5d]:	unknown -> [13] [3,3,3,1] 135a+225a²+125a³+135b+225b²+125b³+135c+225c²+125c³-15d-75d²-125d³+80
[0+5a,4+5b,3+5c,1+5d]:	transposed [9] by [2,0,1,3]
[3+5a,0+5b,4+5c,1+5d]:	transposed [9] by [1,2,0,3]
[1+5a,1+5b,4+5c,1+5d]:	transposed [10] by [2,1,0,3]
[4+5a,2+5b,4+5c,1+5d]:	transposed [12] by [1,2,0,3]
[0+5a,3+5b,4+5c,1+5d]:	transposed [9] by [2,1,0,3]
[2+5a,4+5b,4+5c,1+5d]:	transposed [12] by [2,0,1,3]
[2+5a,0+5b,0+5c,2+5d]:	unknown -> [14] [2,0,0,2] 60a+150a²+125a³+125b³+125c³-60d-150d²-125d³
-> solution [2,0,0,2],trivial(3) [7,0,0,7],trivial(3)
[3+5a,1+5b,0+5c,2+5d]:	unknown -> [15] [3,1,0,2] 135a+225a²+125a³+15b+75b²+125b³+125c³-60d-150d²-125d³+20
[0+5a,2+5b,0+5c,2+5d]:	transposed [14] by [2,0,1,3]
[1+5a,3+5b,0+5c,2+5d]:	transposed [15] by [1,0,2,3]
[4+5a,4+5b,0+5c,2+5d]:	unknown -> [16] [4,4,0,2] 240a+300a²+125a³+240b+300b²+125b³+125c³-60d-150d²-125d³+120
[3+5a,0+5b,1+5c,2+5d]:	transposed [15] by [0,2,1,3]
[1+5a,1+5b,1+5c,2+5d]:	unknown -> [17] [1,1,1,2] 15a+75a²+125a³+15b+75b²+125b³+15c+75c²+125c³-60d-150d²-125d³-5
[4+5a,2+5b,1+5c,2+5d]:	unknown -> [18] [4,2,1,2] 240a+300a²+125a³+60b+150b²+125b³+15c+75c²+125c³-60d-150d²-125d³+65
[0+5a,3+5b,1+5c,2+5d]:	transposed [15] by [2,0,1,3]
[2+5a,4+5b,1+5c,2+5d]:	transposed [18] by [1,0,2,3]
[0+5a,0+5b,2+5c,2+5d]:	transposed [14] by [2,1,0,3]
[4+5a,1+5b,2+5c,2+5d]:	transposed [18] by [0,2,1,3]
[3+5a,2+5b,2+5c,2+5d]:	unknown -> [19] [3,2,2,2] 135a+225a²+125a³+60b+150b²+125b³+60c+150c²+125c³-60d-150d²-125d³+35
[2+5a,3+5b,2+5c,2+5d]:	transposed [19] by [2,0,1,3]
[1+5a,4+5b,2+5c,2+5d]:	transposed [18] by [2,0,1,3]
[1+5a,0+5b,3+5c,2+5d]:	transposed [15] by [1,2,0,3]
[0+5a,1+5b,3+5c,2+5d]:	transposed [15] by [2,1,0,3]
[2+5a,2+5b,3+5c,2+5d]:	transposed [19] by [2,1,0,3]
[4+5a,3+5b,3+5c,2+5d]:	unknown -> [20] [4,3,3,2] 240a+300a²+125a³+135b+225b²+125b³+135c+225c²+125c³-60d-150d²-125d³+110
[3+5a,4+5b,3+5c,2+5d]:	transposed [20] by [2,0,1,3]
[4+5a,0+5b,4+5c,2+5d]:	transposed [16] by [1,2,0,3]
[2+5a,1+5b,4+5c,2+5d]:	transposed [18] by [1,2,0,3]
[1+5a,2+5b,4+5c,2+5d]:	transposed [18] by [2,1,0,3]
[3+5a,3+5b,4+5c,2+5d]:	transposed [20] by [2,1,0,3]
[0+5a,4+5b,4+5c,2+5d]:	transposed [16] by [2,0,1,3]
[3+5a,0+5b,0+5c,3+5d]:	unknown -> [21] [3,0,0,3] 135a+225a²+125a³+125b³+125c³-135d-225d²-125d³
-> solution [3,0,0,3],trivial(3) [8,0,0,8],trivial(3)
[1+5a,1+5b,0+5c,3+5d]:	unknown -> [22] [1,1,0,3] 15a+75a²+125a³+15b+75b²+125b³+125c³-135d-225d²-125d³-25
[4+5a,2+5b,0+5c,3+5d]:	unknown -> [23] [4,2,0,3] 240a+300a²+125a³+60b+150b²+125b³+125c³-135d-225d²-125d³+45
[0+5a,3+5b,0+5c,3+5d]:	transposed [21] by [2,0,1,3]
[2+5a,4+5b,0+5c,3+5d]:	transposed [23] by [1,0,2,3]
[1+5a,0+5b,1+5c,3+5d]:	transposed [22] by [1,2,0,3]
[0+5a,1+5b,1+5c,3+5d]:	transposed [22] by [2,0,1,3]
[2+5a,2+5b,1+5c,3+5d]:	unknown -> [24] [2,2,1,3] 60a+150a²+125a³+60b+150b²+125b³+15c+75c²+125c³-135d-225d²-125d³-10
[4+5a,3+5b,1+5c,3+5d]:	unknown -> [25] [4,3,1,3] 240a+300a²+125a³+135b+225b²+125b³+15c+75c²+125c³-135d-225d²-125d³+65
[3+5a,4+5b,1+5c,3+5d]:	transposed [25] by [1,0,2,3]
[4+5a,0+5b,2+5c,3+5d]:	transposed [23] by [0,2,1,3]
[2+5a,1+5b,2+5c,3+5d]:	transposed [24] by [1,2,0,3]
[1+5a,2+5b,2+5c,3+5d]:	transposed [24] by [2,0,1,3]
[3+5a,3+5b,2+5c,3+5d]:	unknown -> [26] [3,3,2,3] 135a+225a²+125a³+135b+225b²+125b³+60c+150c²+125c³-135d-225d²-125d³+35
[0+5a,4+5b,2+5c,3+5d]:	transposed [23] by [2,0,1,3]
[0+5a,0+5b,3+5c,3+5d]:	transposed [21] by [2,1,0,3]
[4+5a,1+5b,3+5c,3+5d]:	transposed [25] by [0,2,1,3]
[3+5a,2+5b,3+5c,3+5d]:	transposed [26] by [1,2,0,3]
[2+5a,3+5b,3+5c,3+5d]:	transposed [26] by [2,0,1,3]
[1+5a,4+5b,3+5c,3+5d]:	transposed [25] by [2,0,1,3]
[2+5a,0+5b,4+5c,3+5d]:	transposed [23] by [1,2,0,3]
[3+5a,1+5b,4+5c,3+5d]:	transposed [25] by [1,2,0,3]
[0+5a,2+5b,4+5c,3+5d]:	transposed [23] by [2,1,0,3]
[1+5a,3+5b,4+5c,3+5d]:	transposed [25] by [2,1,0,3]
[4+5a,4+5b,4+5c,3+5d]:	unknown -> [27] [4,4,4,3] 240a+300a²+125a³+240b+300b²+125b³+240c+300c²+125c³-135d-225d²-125d³+165
[4+5a,0+5b,0+5c,4+5d]:	unknown -> [28] [4,0,0,4] 240a+300a²+125a³+125b³+125c³-240d-300d²-125d³
-> solution [4,0,0,4],trivial(3) [9,0,0,9],trivial(3)
[2+5a,1+5b,0+5c,4+5d]:	unknown -> [29] [2,1,0,4] 60a+150a²+125a³+15b+75b²+125b³+125c³-240d-300d²-125d³-55
[1+5a,2+5b,0+5c,4+5d]:	transposed [29] by [1,0,2,3]
[3+5a,3+5b,0+5c,4+5d]:	unknown -> [30] [3,3,0,4] 135a+225a²+125a³+135b+225b²+125b³+125c³-240d-300d²-125d³-10
[0+5a,4+5b,0+5c,4+5d]:	transposed [28] by [2,0,1,3]
[2+5a,0+5b,1+5c,4+5d]:	transposed [29] by [0,2,1,3]
[3+5a,1+5b,1+5c,4+5d]:	unknown -> [31] [3,1,1,4] 135a+225a²+125a³+15b+75b²+125b³+15c+75c²+125c³-240d-300d²-125d³-35
-> solution [8,6,1,9],NONTRIVIAL [8,1,6,9],NONTRIVIAL
[0+5a,2+5b,1+5c,4+5d]:	transposed [29] by [2,0,1,3]
[1+5a,3+5b,1+5c,4+5d]:	transposed [31] by [2,0,1,3]
[4+5a,4+5b,1+5c,4+5d]:	unknown -> [32] [4,4,1,4] 240a+300a²+125a³+240b+300b²+125b³+15c+75c²+125c³-240d-300d²-125d³+65
[1+5a,0+5b,2+5c,4+5d]:	transposed [29] by [1,2,0,3]
[0+5a,1+5b,2+5c,4+5d]:	transposed [29] by [2,1,0,3]
[2+5a,2+5b,2+5c,4+5d]:	unknown -> [33] [2,2,2,4] 60a+150a²+125a³+60b+150b²+125b³+60c+150c²+125c³-240d-300d²-125d³-40
[4+5a,3+5b,2+5c,4+5d]:	unknown -> [34] [4,3,2,4] 240a+300a²+125a³+135b+225b²+125b³+60c+150c²+125c³-240d-300d²-125d³+35
[3+5a,4+5b,2+5c,4+5d]:	transposed [34] by [1,0,2,3]
[3+5a,0+5b,3+5c,4+5d]:	transposed [30] by [1,2,0,3]
[1+5a,1+5b,3+5c,4+5d]:	transposed [31] by [2,1,0,3]
[4+5a,2+5b,3+5c,4+5d]:	transposed [34] by [0,2,1,3]
[0+5a,3+5b,3+5c,4+5d]:	transposed [30] by [2,0,1,3]
[2+5a,4+5b,3+5c,4+5d]:	transposed [34] by [2,0,1,3]
[0+5a,0+5b,4+5c,4+5d]:	transposed [28] by [2,1,0,3]
[4+5a,1+5b,4+5c,4+5d]:	transposed [32] by [1,2,0,3]
[3+5a,2+5b,4+5c,4+5d]:	transposed [34] by [1,2,0,3]
[2+5a,3+5b,4+5c,4+5d]:	transposed [34] by [2,1,0,3]
[1+5a,4+5b,4+5c,4+5d]:	transposed [32] by [2,0,1,3]
endexp[0]
---------------- level 1
Maximum level 1 [35] mod 5: a³+b³+c³-d³
