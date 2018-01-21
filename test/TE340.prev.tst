TranspositionSet={[2,1,0,3],[1,2,0,3],[2,0,1,3],[0,2,1,3],[1,0,2,3]}
isHomogeneous
Expanding for base=4, level=1, reasons+features=base,transpose,primitive,same,similiar 
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a³+b³+c³-d³
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[4,4,4,4]: a³+b³+c³-d³
[0+4a,0+4b,0+4c,0+4d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [4,0,0,4],trivial(3) [0,4,0,4],trivial(3) [0,0,4,4],trivial(3)
[3+4a,1+4b,0+4c,0+4d]:	unknown -> [1] [3,1,0,0] 108a+144a²+64a³+12b+48b²+64b³+64c³-64d³+28
[2+4a,2+4b,0+4c,0+4d]:	unknown -> [2] [2,2,0,0] 48a+96a²+64a³+48b+96b²+64b³+64c³-64d³+16
[1+4a,3+4b,0+4c,0+4d]:	transposed [1] by [1,0,2,3]
[3+4a,0+4b,1+4c,0+4d]:	transposed [1] by [0,2,1,3]
[3+4a,2+4b,1+4c,0+4d]:	unknown -> [3] [3,2,1,0] 108a+144a²+64a³+48b+96b²+64b³+12c+48c²+64c³-64d³+36
[0+4a,3+4b,1+4c,0+4d]:	transposed [1] by [2,0,1,3]
[2+4a,3+4b,1+4c,0+4d]:	transposed [3] by [1,0,2,3]
[2+4a,0+4b,2+4c,0+4d]:	transposed [2] by [0,2,1,3]
[3+4a,1+4b,2+4c,0+4d]:	transposed [3] by [0,2,1,3]
[0+4a,2+4b,2+4c,0+4d]:	transposed [2] by [2,0,1,3]
[1+4a,3+4b,2+4c,0+4d]:	transposed [3] by [2,0,1,3]
[1+4a,0+4b,3+4c,0+4d]:	transposed [1] by [1,2,0,3]
[0+4a,1+4b,3+4c,0+4d]:	transposed [1] by [2,1,0,3]
[2+4a,1+4b,3+4c,0+4d]:	transposed [3] by [1,2,0,3]
[1+4a,2+4b,3+4c,0+4d]:	transposed [3] by [2,1,0,3]
[1+4a,0+4b,0+4c,1+4d]:	unknown -> [4] [1,0,0,1] 12a+48a²+64a³+64b³+64c³-12d-48d²-64d³
-> solution [1,0,0,1],trivial(3) [5,0,0,5],trivial(3)
[0+4a,1+4b,0+4c,1+4d]:	transposed [4] by [1,0,2,3]
[2+4a,1+4b,0+4c,1+4d]:	unknown -> [5] [2,1,0,1] 48a+96a²+64a³+12b+48b²+64b³+64c³-12d-48d²-64d³+8
[1+4a,2+4b,0+4c,1+4d]:	transposed [5] by [1,0,2,3]
[0+4a,0+4b,1+4c,1+4d]:	transposed [4] by [1,2,0,3]
[2+4a,0+4b,1+4c,1+4d]:	transposed [5] by [0,2,1,3]
[3+4a,1+4b,1+4c,1+4d]:	unknown -> [6] [3,1,1,1] 108a+144a²+64a³+12b+48b²+64b³+12c+48c²+64c³-12d-48d²-64d³+28
[0+4a,2+4b,1+4c,1+4d]:	transposed [5] by [2,0,1,3]
[2+4a,2+4b,1+4c,1+4d]:	unknown -> [7] [2,2,1,1] 48a+96a²+64a³+48b+96b²+64b³+12c+48c²+64c³-12d-48d²-64d³+16
[1+4a,3+4b,1+4c,1+4d]:	transposed [6] by [1,0,2,3]
[1+4a,0+4b,2+4c,1+4d]:	transposed [5] by [1,2,0,3]
[0+4a,1+4b,2+4c,1+4d]:	transposed [5] by [2,1,0,3]
[2+4a,1+4b,2+4c,1+4d]:	transposed [7] by [0,2,1,3]
[1+4a,2+4b,2+4c,1+4d]:	transposed [7] by [2,0,1,3]
[1+4a,1+4b,3+4c,1+4d]:	transposed [6] by [1,2,0,3]
[3+4a,3+4b,3+4c,1+4d]:	unknown -> [8] [3,3,3,1] 108a+144a²+64a³+108b+144b²+64b³+108c+144c²+64c³-12d-48d²-64d³+80
[2+4a,0+4b,0+4c,2+4d]:	unknown -> [9] [2,0,0,2] 48a+96a²+64a³+64b³+64c³-48d-96d²-64d³
-> solution [2,0,0,2],trivial(3) [6,0,0,6],trivial(3)
[3+4a,1+4b,0+4c,2+4d]:	unknown -> [10] [3,1,0,2] 108a+144a²+64a³+12b+48b²+64b³+64c³-48d-96d²-64d³+20
-> solution [3,5,4,6],NONTRIVIAL
[0+4a,2+4b,0+4c,2+4d]:	transposed [9] by [1,0,2,3]
[1+4a,3+4b,0+4c,2+4d]:	transposed [10] by [1,0,2,3]
[3+4a,0+4b,1+4c,2+4d]:	transposed [10] by [0,2,1,3]
[3+4a,2+4b,1+4c,2+4d]:	unknown -> [11] [3,2,1,2] 108a+144a²+64a³+48b+96b²+64b³+12c+48c²+64c³-48d-96d²-64d³+28
[0+4a,3+4b,1+4c,2+4d]:	transposed [10] by [2,0,1,3]
[2+4a,3+4b,1+4c,2+4d]:	transposed [11] by [1,0,2,3]
[0+4a,0+4b,2+4c,2+4d]:	transposed [9] by [1,2,0,3]
[3+4a,1+4b,2+4c,2+4d]:	transposed [11] by [0,2,1,3]
[2+4a,2+4b,2+4c,2+4d]:	unknown -> [12] [2,2,2,2] 48a+96a²+64a³+48b+96b²+64b³+48c+96c²+64c³-48d-96d²-64d³+16
[1+4a,3+4b,2+4c,2+4d]:	transposed [11] by [2,0,1,3]
[1+4a,0+4b,3+4c,2+4d]:	transposed [10] by [1,2,0,3]
[0+4a,1+4b,3+4c,2+4d]:	transposed [10] by [2,1,0,3]
[2+4a,1+4b,3+4c,2+4d]:	transposed [11] by [1,2,0,3]
[1+4a,2+4b,3+4c,2+4d]:	transposed [11] by [2,1,0,3]
[3+4a,0+4b,0+4c,3+4d]:	unknown -> [13] [3,0,0,3] 108a+144a²+64a³+64b³+64c³-108d-144d²-64d³
-> solution [3,0,0,3],trivial(3) [7,0,0,7],trivial(3)
[3+4a,2+4b,0+4c,3+4d]:	unknown -> [14] [3,2,0,3] 108a+144a²+64a³+48b+96b²+64b³+64c³-108d-144d²-64d³+8
[0+4a,3+4b,0+4c,3+4d]:	transposed [13] by [1,0,2,3]
[2+4a,3+4b,0+4c,3+4d]:	transposed [14] by [1,0,2,3]
[1+4a,1+4b,1+4c,3+4d]:	unknown -> [15] [1,1,1,3] 12a+48a²+64a³+12b+48b²+64b³+12c+48c²+64c³-108d-144d²-64d³-24
[3+4a,3+4b,1+4c,3+4d]:	unknown -> [16] [3,3,1,3] 108a+144a²+64a³+108b+144b²+64b³+12c+48c²+64c³-108d-144d²-64d³+28
[3+4a,0+4b,2+4c,3+4d]:	transposed [14] by [0,2,1,3]
[3+4a,2+4b,2+4c,3+4d]:	unknown -> [17] [3,2,2,3] 108a+144a²+64a³+48b+96b²+64b³+48c+96c²+64c³-108d-144d²-64d³+16
[0+4a,3+4b,2+4c,3+4d]:	transposed [14] by [2,0,1,3]
[2+4a,3+4b,2+4c,3+4d]:	transposed [17] by [1,0,2,3]
[0+4a,0+4b,3+4c,3+4d]:	transposed [13] by [1,2,0,3]
[2+4a,0+4b,3+4c,3+4d]:	transposed [14] by [1,2,0,3]
[3+4a,1+4b,3+4c,3+4d]:	transposed [16] by [0,2,1,3]
[0+4a,2+4b,3+4c,3+4d]:	transposed [14] by [2,1,0,3]
[2+4a,2+4b,3+4c,3+4d]:	transposed [17] by [1,2,0,3]
[1+4a,3+4b,3+4c,3+4d]:	transposed [16] by [2,0,1,3]
endexp[0]
---------------- level 1
Maximum level 1 [18] mod 4: a³+b³+c³-d³
