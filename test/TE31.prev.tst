TranspositionSet={[2,1,0,3],[1,2,0,3],[2,0,1,3],[0,2,1,3],[1,0,2,3]}
isHomogeneous
Expanding for base=2, level=2, reasons+features=base,transpose,primitive,same,similiar 
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a³+b³+c³-d³
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2,2]: a³+b³+c³-d³
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [2,0,0,2],trivial(3) [0,2,0,2],trivial(3) [0,0,2,2],trivial(3)
[1+2a,1+2b,0+2c,0+2d]:	unknown -> [1] [1,1,0,0] 6a+12a²+8a³+6b+12b²+8b³+8c³-8d³+2
[1+2a,0+2b,1+2c,0+2d]:	transposed [1] by [0,2,1,3]
[0+2a,1+2b,1+2c,0+2d]:	transposed [1] by [2,0,1,3]
[1+2a,0+2b,0+2c,1+2d]:	unknown -> [2] [1,0,0,1] 6a+12a²+8a³+8b³+8c³-6d-12d²-8d³
-> solution [1,0,0,1],trivial(3) [3,0,0,3],trivial(3)
[0+2a,1+2b,0+2c,1+2d]:	transposed [2] by [1,0,2,3]
[0+2a,0+2b,1+2c,1+2d]:	transposed [2] by [1,2,0,3]
[1+2a,1+2b,1+2c,1+2d]:	unknown -> [3] [1,1,1,1] 6a+12a²+8a³+6b+12b²+8b³+6c+12c²+8c³-6d-12d²-8d³+2
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,1,1]: 6a+12a²+8a³+6b+12b²+8b³+8c³-8d³+2
[3+4a,1+4b,0+2c,0+2d]:	unknown -> [4] [1,0,0,0] 108a+144a²+64a³+12b+48b²+64b³+8c³-8d³+28
[1+4a,3+4b,0+2c,0+2d]:	transposed [4] by [1,0,2,3]
endexp[1]
expanding queue[2]^0,meter=[2,1,1,2]: 6a+12a²+8a³+8b³+8c³-6d-12d²-8d³
[1+4a,0+2b,0+2c,1+4d]:	unknown -> [5] [0,0,0,0] 12a+48a²+64a³+8b³+8c³-12d-48d²-64d³
-> solution [1,0,0,1],trivial(3) [5,0,0,5],trivial(3)
[3+4a,0+2b,0+2c,3+4d]:	unknown -> [6] [1,0,0,1] 108a+144a²+64a³+8b³+8c³-108d-144d²-64d³
-> solution [3,0,0,3],trivial(3) [7,0,0,7],trivial(3)
endexp[2]
expanding queue[3]^0,meter=[2,2,2,2]: 6a+12a²+8a³+6b+12b²+8b³+6c+12c²+8c³-6d-12d²-8d³+2
[3+4a,1+4b,1+4c,1+4d]:	unknown -> [7] [1,0,0,0] 108a+144a²+64a³+12b+48b²+64b³+12c+48c²+64c³-12d-48d²-64d³+28
[1+4a,3+4b,1+4c,1+4d]:	transposed [7] by [1,0,2,3]
[1+4a,1+4b,3+4c,1+4d]:	transposed [7] by [1,2,0,3]
[3+4a,3+4b,3+4c,1+4d]:	unknown -> [8] [1,1,1,0] 108a+144a²+64a³+108b+144b²+64b³+108c+144c²+64c³-12d-48d²-64d³+80
[1+4a,1+4b,1+4c,3+4d]:	unknown -> [9] [0,0,0,1] 12a+48a²+64a³+12b+48b²+64b³+12c+48c²+64c³-108d-144d²-64d³-24
[3+4a,3+4b,1+4c,3+4d]:	unknown -> [10] [1,1,0,1] 108a+144a²+64a³+108b+144b²+64b³+12c+48c²+64c³-108d-144d²-64d³+28
[3+4a,1+4b,3+4c,3+4d]:	transposed [10] by [0,2,1,3]
[1+4a,3+4b,3+4c,3+4d]:	transposed [10] by [2,0,1,3]
endexp[3]
---------------- level 2
Maximum level 2 [11] mod 2: a³+b³+c³-d³
