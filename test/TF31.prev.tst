TranspositionSet={[1,0,2]}
isHomogeneous
Expanding for base=2, level=3, reasons+features=base,transpose,primitive,same,similiar invall,norm
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] [0,0,0] a³+b³-c³
-> solution [0,0,0],trivial(3) [1,0,1],trivial(3) [0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: a³+b³-c³
[0+2a,0+2b,0+2c]:	non-primitive
-> solution [0,0,0],trivial(3) [2,0,2],trivial(3) [0,2,2],trivial(3)
[1+2a,1+2b,0+2c]:	unknown -> [1] [1,1,0] 3a+6a²+4a³+3b+6b²+4b³-4c³+1
[1+2a,0+2b,1+2c]:	unknown -> [2] [1,0,1] 3a+6a²+4a³+4b³-3c-6c²-4c³
-> solution [1,0,1],trivial(3) [3,0,3],trivial(3)
[0+2a,1+2b,1+2c]:	transposed [2] by [1,0,2]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2]: 3a+6a²+4a³+3b+6b²+4b³-4c³+1
[3+4a,1+4b,0+4c]:	unknown -> [3] [1,0,0] 27a+36a²+16a³+3b+12b²+16b³-16c³+7
[1+4a,3+4b,0+4c]:	transposed [3] by [1,0,2]
[3+4a,1+4b,2+4c]:	unknown -> [4] [1,0,1] 27a+36a²+16a³+3b+12b²+16b³-12c-24c²-16c³+5
[1+4a,3+4b,2+4c]:	transposed [4] by [1,0,2]
endexp[1]
expanding queue[2]^0,meter=[2,2,2]: 3a+6a²+4a³+4b³-3c-6c²-4c³
[1+4a,0+4b,1+4c]:	unknown -> [5] [0,0,0] 3a+12a²+16a³+16b³-3c-12c²-16c³
-> solution [1,0,1],trivial(3) [5,0,5],trivial(3)
[1+4a,2+4b,1+4c]:	unknown -> [6] [0,1,0] 3a+12a²+16a³+12b+24b²+16b³-3c-12c²-16c³+2
[3+4a,0+4b,3+4c]:	unknown -> [7] [1,0,1] 27a+36a²+16a³+16b³-27c-36c²-16c³
-> solution [3,0,3],trivial(3) [7,0,7],trivial(3)
[3+4a,2+4b,3+4c]:	unknown -> [8] [1,1,1] 27a+36a²+16a³+12b+24b²+16b³-27c-36c²-16c³+2
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2,2]: 27a+36a²+16a³+3b+12b²+16b³-16c³+7
[7+8a,1+8b,0+8c]:	unknown -> [9] [1,0,0] 147a+168a²+64a³+3b+24b²+64b³-64c³+43
[3+8a,5+8b,0+8c]:	unknown -> [10] [0,1,0] 27a+72a²+64a³+75b+120b²+64b³-64c³+19
[7+8a,1+8b,4+8c]:	unknown -> [11] [1,0,1] 147a+168a²+64a³+3b+24b²+64b³-48c-96c²-64c³+35
[3+8a,5+8b,4+8c]:	unknown -> [12] [0,1,1] 27a+72a²+64a³+75b+120b²+64b³-48c-96c²-64c³+11
endexp[3]
expanding queue[4]^1,meter=[2,2,2]: 27a+36a²+16a³+3b+12b²+16b³-12c-24c²-16c³+5
[7+8a,1+8b,2+8c]:	unknown -> [13] [1,0,0] 147a+168a²+64a³+3b+24b²+64b³-12c-48c²-64c³+42
[3+8a,5+8b,2+8c]:	unknown -> [14] [0,1,0] 27a+72a²+64a³+75b+120b²+64b³-12c-48c²-64c³+18
[7+8a,1+8b,6+8c]:	unknown -> [15] [1,0,1] 147a+168a²+64a³+3b+24b²+64b³-108c-144c²-64c³+16
[3+8a,5+8b,6+8c]:	unknown -> [16] [0,1,1] 27a+72a²+64a³+75b+120b²+64b³-108c-144c²-64c³-8
endexp[4]
expanding queue[5]^2,meter=[2,2,2]: 3a+12a²+16a³+16b³-3c-12c²-16c³
[1+8a,0+8b,1+8c]:	unknown -> [17] [0,0,0] 3a+24a²+64a³+64b³-3c-24c²-64c³
-> solution [1,0,1],trivial(3) [9,0,9],trivial(3)
[1+8a,4+8b,1+8c]:	unknown -> [18] [0,1,0] 3a+24a²+64a³+48b+96b²+64b³-3c-24c²-64c³+8
[5+8a,0+8b,5+8c]:	unknown -> [19] [1,0,1] 75a+120a²+64a³+64b³-75c-120c²-64c³
-> solution [5,0,5],trivial(3) [13,0,13],trivial(3)
[5+8a,4+8b,5+8c]:	unknown -> [20] [1,1,1] 75a+120a²+64a³+48b+96b²+64b³-75c-120c²-64c³+8
endexp[5]
expanding queue[6]^2,meter=[2,2,2]: 3a+12a²+16a³+12b+24b²+16b³-3c-12c²-16c³+2
[1+8a,2+8b,1+8c]:	unknown -> [21] [0,0,0] 3a+24a²+64a³+12b+48b²+64b³-3c-24c²-64c³+1
[1+8a,6+8b,1+8c]:	unknown -> [22] [0,1,0] 3a+24a²+64a³+108b+144b²+64b³-3c-24c²-64c³+27
[5+8a,2+8b,5+8c]:	unknown -> [23] [1,0,1] 75a+120a²+64a³+12b+48b²+64b³-75c-120c²-64c³+1
[5+8a,6+8b,5+8c]:	unknown -> [24] [1,1,1] 75a+120a²+64a³+108b+144b²+64b³-75c-120c²-64c³+27
endexp[6]
expanding queue[7]^2,meter=[2,2,2]: 27a+36a²+16a³+16b³-27c-36c²-16c³
[3+8a,0+8b,3+8c]:	unknown -> [25] [0,0,0] 27a+72a²+64a³+64b³-27c-72c²-64c³
-> solution [3,0,3],trivial(3) [11,0,11],trivial(3)
[3+8a,4+8b,3+8c]:	unknown -> [26] [0,1,0] 27a+72a²+64a³+48b+96b²+64b³-27c-72c²-64c³+8
[7+8a,0+8b,7+8c]:	unknown -> [27] [1,0,1] 147a+168a²+64a³+64b³-147c-168c²-64c³
-> solution [7,0,7],trivial(3) [15,0,15],trivial(3)
[7+8a,4+8b,7+8c]:	unknown -> [28] [1,1,1] 147a+168a²+64a³+48b+96b²+64b³-147c-168c²-64c³+8
endexp[7]
expanding queue[8]^2,meter=[2,2,2]: 27a+36a²+16a³+12b+24b²+16b³-27c-36c²-16c³+2
[3+8a,2+8b,3+8c]:	unknown -> [29] [0,0,0] 27a+72a²+64a³+12b+48b²+64b³-27c-72c²-64c³+1
[3+8a,6+8b,3+8c]:	unknown -> [30] [0,1,0] 27a+72a²+64a³+108b+144b²+64b³-27c-72c²-64c³+27
[7+8a,2+8b,7+8c]:	unknown -> [31] [1,0,1] 147a+168a²+64a³+12b+48b²+64b³-147c-168c²-64c³+1
[7+8a,6+8b,7+8c]:	unknown -> [32] [1,1,1] 147a+168a²+64a³+108b+144b²+64b³-147c-168c²-64c³+27
endexp[8]
---------------- level 3
Maximum level 3 [33] mod 2: a³+b³-c³
