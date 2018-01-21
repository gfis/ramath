TranspositionSet={[3,2,1,0],[2,3,1,0],[3,2,0,1],[2,3,0,1],[1,0,3,2],[0,1,3,2],[1,0,2,3]}
isHomogeneous
Expanding for base=2, level=2, reasons+features=base,transpose,primitive,same,similiar,evenexp invall,norm
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a²+b²-c²-d²
-> solution [0,0,0,0],trivial(3) [1,0,1,0],trivial(3) [0,1,1,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [1,1,1,1],trivial(2)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2,2]: a²+b²-c²-d²
[0+2a,0+2b,0+2c,0+2d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [2,0,2,0],trivial(3) [0,2,2,0],trivial(3) [2,0,0,2],trivial(3) [0,2,0,2],trivial(3) [2,2,2,2],trivial(2)
[1+2a,0+2b,1+2c,0+2d]:	unknown -> [1] [1,0,1,0] a+a²+b²-c-c²-d²
-> solution [1,0,1,0],trivial(3) [3,0,3,0],trivial(3) [1,2,1,2],trivial(2) [3,2,3,2],trivial(2)
[0+2a,1+2b,1+2c,0+2d]:	transposed [1] by [1,0,2,3]
[1+2a,0+2b,0+2c,1+2d]:	transposed [1] by [0,1,3,2]
[0+2a,1+2b,0+2c,1+2d]:	transposed [1] by [1,0,3,2]
[1+2a,1+2b,1+2c,1+2d]:	unknown -> [2] [1,1,1,1] a+a²+b+b²-c-c²-d-d²
-> solution [1,1,1,1],trivial(2) [3,1,3,1],trivial(2) [1,3,3,1],trivial(2) [3,1,1,3],trivial(2) [1,3,1,3],trivial(2) [3,3,3,3],trivial(2)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2,2]: a+a²+b²-c-c²-d²
[1+4a,0+4b,1+4c,0+4d]:	unknown -> [3] [0,0,0,0] a+2a²+2b²-c-2c²-2d²
-> solution [1,0,1,0],trivial(3) [5,0,5,0],trivial(3) [1,4,1,4],trivial(2) [5,4,5,4],trivial(2)
[3+4a,0+4b,1+4c,0+4d]:	negative-1 [3] by {a=>-a-1}
-> solution [3,4,5,0],trivial(1)
[1+4a,0+4b,3+4c,0+4d]:	negative-1 [3] by {c=>-c-1}
-> solution [5,0,3,4],trivial(1)
[3+4a,0+4b,3+4c,0+4d]:	negative-1 [3] by {a=>-a-1,c=>-c-1}
-> solution [3,0,3,0],trivial(3) [7,0,7,0],trivial(3) [3,4,3,4],trivial(2) [7,4,7,4],trivial(2)
[1+4a,2+4b,1+4c,2+4d]:	unknown -> [4] [0,1,0,1] a+2a²+2b+2b²-c-2c²-2d-2d²
-> solution [1,2,1,2],trivial(2) [5,2,5,2],trivial(2) [1,6,1,6],trivial(2) [5,6,5,6],trivial(2)
[3+4a,2+4b,1+4c,2+4d]:	negative-1 [4] by {a=>-a-1}
[1+4a,2+4b,3+4c,2+4d]:	negative-1 [4] by {c=>-c-1}
[3+4a,2+4b,3+4c,2+4d]:	negative-1 [4] by {a=>-a-1,c=>-c-1}
-> solution [3,2,3,2],trivial(2) [7,2,7,2],trivial(2) [3,6,3,6],trivial(2) [7,6,7,6],trivial(2)
endexp[1]
expanding queue[2]^0,meter=[2,2,2,2]: a+a²+b+b²-c-c²-d-d²
[1+4a,1+4b,1+4c,1+4d]:	unknown -> [5] [0,0,0,0] a+2a²+b+2b²-c-2c²-d-2d²
-> solution [1,1,1,1],trivial(2) [5,1,5,1],trivial(2) [1,5,5,1],trivial(2) [5,1,1,5],trivial(2) [1,5,1,5],trivial(2) [5,5,5,5],trivial(2)
[3+4a,1+4b,1+4c,1+4d]:	negative-1 [5] by {a=>-a-1}
-> solution [7,1,5,5],trivial(2)
[1+4a,3+4b,1+4c,1+4d]:	negative-1 [5] by {b=>-b-1}
-> solution [1,7,5,5],trivial(2)
[3+4a,3+4b,1+4c,1+4d]:	negative-1 [5] by {a=>-a-1,b=>-b-1}
[1+4a,1+4b,3+4c,1+4d]:	negative-1 [5] by {c=>-c-1}
-> solution [5,5,7,1],trivial(2)
[3+4a,1+4b,3+4c,1+4d]:	negative-1 [5] by {a=>-a-1,c=>-c-1}
-> solution [3,1,3,1],trivial(2) [7,1,7,1],trivial(2) [3,5,3,5],trivial(2) [7,5,7,5],trivial(2)
[1+4a,3+4b,3+4c,1+4d]:	negative-1 [5] by {b=>-b-1,c=>-c-1}
-> solution [1,3,3,1],trivial(2) [1,7,7,1],trivial(2) [5,3,3,5],trivial(2) [5,7,7,5],trivial(2)
[3+4a,3+4b,3+4c,1+4d]:	negative-1 [5] by {a=>-a-1,b=>-b-1,c=>-c-1}
[1+4a,1+4b,1+4c,3+4d]:	negative-1 [5] by {d=>-d-1}
-> solution [5,5,1,7],trivial(2)
[3+4a,1+4b,1+4c,3+4d]:	negative-1 [5] by {a=>-a-1,d=>-d-1}
-> solution [3,1,1,3],trivial(2) [3,5,5,3],trivial(2) [7,1,1,7],trivial(2) [7,5,5,7],trivial(2)
[1+4a,3+4b,1+4c,3+4d]:	negative-1 [5] by {b=>-b-1,d=>-d-1}
-> solution [1,3,1,3],trivial(2) [5,3,5,3],trivial(2) [1,7,1,7],trivial(2) [5,7,5,7],trivial(2)
[3+4a,3+4b,1+4c,3+4d]:	negative-1 [5] by {a=>-a-1,b=>-b-1,d=>-d-1}
[1+4a,1+4b,3+4c,3+4d]:	negative-1 [5] by {c=>-c-1,d=>-d-1}
[3+4a,1+4b,3+4c,3+4d]:	negative-1 [5] by {a=>-a-1,c=>-c-1,d=>-d-1}
[1+4a,3+4b,3+4c,3+4d]:	negative-1 [5] by {b=>-b-1,c=>-c-1,d=>-d-1}
[3+4a,3+4b,3+4c,3+4d]:	negative-1 [5] by {a=>-a-1,b=>-b-1,c=>-c-1,d=>-d-1}
-> solution [3,3,3,3],trivial(2) [7,3,7,3],trivial(2) [3,7,7,3],trivial(2) [7,3,3,7],trivial(2) [3,7,3,7],trivial(2) [7,7,7,7],trivial(2)
endexp[2]
---------------- level 2
Maximum level 2 [6] mod 2: a²+b²-c²-d²
