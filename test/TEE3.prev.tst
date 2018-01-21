TranspositionSet={[2,1,0,3],[1,2,0,3],[2,0,1,3],[0,2,1,3],[1,0,2,3]}
isHomogeneous
Expanding for base=6, level=1, reasons+features=base,transpose,primitive,same,similiar,evenexp invall,norm
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a⁴+b⁴+c⁴-d⁴
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[6,6,6,6]: a⁴+b⁴+c⁴-d⁴
[0+6a,0+6b,0+6c,0+6d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [6,0,0,6],trivial(3) [0,6,0,6],trivial(3) [0,0,6,6],trivial(3)
[2+6a,2+6b,2+6c,0+6d]:	unknown -> [1] [2,2,2,0] 4a+18a²+36a³+27a⁴+4b+18b²+36b³+27b⁴+4c+18c²+36c³+27c⁴-27d⁴+1
[4+6a,2+6b,2+6c,0+6d]:	negative-1 [1] by {a=>-a-1}
[2+6a,4+6b,2+6c,0+6d]:	negative-1 [1] by {b=>-b-1}
[4+6a,4+6b,2+6c,0+6d]:	negative-1 [1] by {a=>-a-1,b=>-b-1}
[2+6a,2+6b,4+6c,0+6d]:	negative-1 [1] by {c=>-c-1}
[4+6a,2+6b,4+6c,0+6d]:	negative-1 [1] by {a=>-a-1,c=>-c-1}
[2+6a,4+6b,4+6c,0+6d]:	negative-1 [1] by {b=>-b-1,c=>-c-1}
[4+6a,4+6b,4+6c,0+6d]:	negative-1 [1] by {a=>-a-1,b=>-b-1,c=>-c-1}
[1+6a,0+6b,0+6c,1+6d]:	unknown -> [2] [1,0,0,1] a+9a²+36a³+54a⁴+54b⁴+54c⁴-d-9d²-36d³-54d⁴
-> solution [1,0,0,1],trivial(3) [7,0,0,7],trivial(3)
[5+6a,0+6b,0+6c,1+6d]:	negative-1 [2] by {a=>-a-1}
[0+6a,1+6b,0+6c,1+6d]:	transposed [2] by [1,0,2,3]
[3+6a,2+6b,0+6c,1+6d]:	unknown -> [3] [3,2,0,1] 27a+81a²+108a³+54a⁴+8b+36b²+72b³+54b⁴+54c⁴-d-9d²-36d³-54d⁴+4
[2+6a,3+6b,0+6c,1+6d]:	transposed [3] by [1,0,2,3]
[4+6a,3+6b,0+6c,1+6d]:	negative-1 [1] by {a=>-a-1}
[3+6a,4+6b,0+6c,1+6d]:	negative-1 [3] by {b=>-b-1}
[0+6a,5+6b,0+6c,1+6d]:	unknown -> [4] [0,5,0,1] 54a⁴+125b+225b²+180b³+54b⁴+54c⁴-d-9d²-36d³-54d⁴+26
[0+6a,0+6b,1+6c,1+6d]:	transposed [2] by [1,2,0,3]
[3+6a,0+6b,2+6c,1+6d]:	transposed [3] by [0,2,1,3]
[0+6a,3+6b,2+6c,1+6d]:	transposed [3] by [2,0,1,3]
[2+6a,0+6b,3+6c,1+6d]:	transposed [3] by [1,2,0,3]
[4+6a,0+6b,3+6c,1+6d]:	negative-1 [1] by {a=>-a-1}
[0+6a,2+6b,3+6c,1+6d]:	transposed [3] by [2,1,0,3]
[0+6a,4+6b,3+6c,1+6d]:	negative-1 [3] by {b=>-b-1}
[3+6a,0+6b,4+6c,1+6d]:	negative-1 [1] by {c=>-c-1}
[0+6a,3+6b,4+6c,1+6d]:	negative-1 [1] by {c=>-c-1}
[0+6a,0+6b,5+6c,1+6d]:	transposed [4] by [0,2,1,3]
[2+6a,0+6b,0+6c,2+6d]:	unknown -> [5] [2,0,0,2] 4a+18a²+36a³+27a⁴+27b⁴+27c⁴-4d-18d²-36d³-27d⁴
-> solution [2,0,0,2],trivial(3) [8,0,0,8],trivial(3)
[4+6a,0+6b,0+6c,2+6d]:	negative-1 [5] by {a=>-a-1}
[0+6a,2+6b,0+6c,2+6d]:	transposed [5] by [1,0,2,3]
[0+6a,4+6b,0+6c,2+6d]:	negative-1 [3] by {b=>-b-1}
[0+6a,0+6b,2+6c,2+6d]:	transposed [5] by [1,2,0,3]
[0+6a,0+6b,4+6c,2+6d]:	negative-1 [1] by {c=>-c-1}
[3+6a,0+6b,0+6c,3+6d]:	unknown -> [6] [3,0,0,3] a+3a²+4a³+2a⁴+2b⁴+2c⁴-d-3d²-4d³-2d⁴
-> solution [3,0,0,3],trivial(3) [9,0,0,9],trivial(3)
[0+6a,3+6b,0+6c,3+6d]:	transposed [6] by [1,0,2,3]
[2+6a,2+6b,1+6c,3+6d]:	unknown -> [7] [2,2,1,3] 8a+36a²+72a³+54a⁴+8b+36b²+72b³+54b⁴+c+9c²+36c³+54c⁴-27d-81d²-108d³-54d⁴-2
[4+6a,2+6b,1+6c,3+6d]:	negative-1 [7] by {a=>-a-1}
[2+6a,4+6b,1+6c,3+6d]:	negative-1 [7] by {b=>-b-1}
[4+6a,4+6b,1+6c,3+6d]:	negative-1 [7] by {a=>-a-1,b=>-b-1}
[2+6a,1+6b,2+6c,3+6d]:	transposed [7] by [0,2,1,3]
[4+6a,1+6b,2+6c,3+6d]:	negative-1 [7] by {a=>-a-1}
[1+6a,2+6b,2+6c,3+6d]:	transposed [7] by [2,0,1,3]
[5+6a,2+6b,2+6c,3+6d]:	negative-1 [2] by {a=>-a-1}
[1+6a,4+6b,2+6c,3+6d]:	negative-1 [7] by {b=>-b-1}
[5+6a,4+6b,2+6c,3+6d]:	negative-1 [7] by {b=>-b-1}
[2+6a,5+6b,2+6c,3+6d]:	unknown -> [8] [2,5,2,3] 8a+36a²+72a³+54a⁴+125b+225b²+180b³+54b⁴+8c+36c²+72c³+54c⁴-27d-81d²-108d³-54d⁴+24
[4+6a,5+6b,2+6c,3+6d]:	negative-1 [8] by {a=>-a-1}
[0+6a,0+6b,3+6c,3+6d]:	transposed [6] by [1,2,0,3]
[2+6a,1+6b,4+6c,3+6d]:	negative-1 [8] by {b=>-b-1,c=>-c-1}
[4+6a,1+6b,4+6c,3+6d]:	negative-1 [8] by {a=>-a-1,b=>-b-1,c=>-c-1}
[1+6a,2+6b,4+6c,3+6d]:	negative-1 [8] by {c=>-c-1}
[5+6a,2+6b,4+6c,3+6d]:	negative-1 [8] by {c=>-c-1}
[1+6a,4+6b,4+6c,3+6d]:	negative-1 [8] by {c=>-c-1}
[5+6a,4+6b,4+6c,3+6d]:	negative-1 [8] by {c=>-c-1}
[2+6a,5+6b,4+6c,3+6d]:	negative-1 [8] by {c=>-c-1}
[4+6a,5+6b,4+6c,3+6d]:	negative-1 [8] by {a=>-a-1,c=>-c-1}
[2+6a,2+6b,5+6c,3+6d]:	transposed [8] by [0,2,1,3]
[4+6a,2+6b,5+6c,3+6d]:	negative-1 [8] by {a=>-a-1}
[2+6a,4+6b,5+6c,3+6d]:	negative-1 [7] by {b=>-b-1,c=>-c-1}
[4+6a,4+6b,5+6c,3+6d]:	negative-1 [8] by {a=>-a-1}
[2+6a,0+6b,0+6c,4+6d]:	negative-1 [5] by {d=>-d-1}
[4+6a,0+6b,0+6c,4+6d]:	negative-1 [8] by {a=>-a-1}
-> solution [4,0,0,4],trivial(3) [10,0,0,10],trivial(3)
[0+6a,2+6b,0+6c,4+6d]:	negative-1 [5] by {d=>-d-1}
[0+6a,4+6b,0+6c,4+6d]:	negative-1 [7] by {b=>-b-1}
-> solution [0,4,0,4],trivial(3) [0,10,0,10],trivial(3)
[0+6a,0+6b,2+6c,4+6d]:	negative-1 [5] by {d=>-d-1}
[0+6a,0+6b,4+6c,4+6d]:	negative-1 [8] by {c=>-c-1}
-> solution [0,0,4,4],trivial(3) [0,0,10,10],trivial(3)
[1+6a,0+6b,0+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[5+6a,0+6b,0+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
-> solution [5,0,0,5],trivial(3) [11,0,0,11],trivial(3)
[0+6a,1+6b,0+6c,5+6d]:	negative-1 [8] by {b=>-b-1}
[3+6a,2+6b,0+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[2+6a,3+6b,0+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[4+6a,3+6b,0+6c,5+6d]:	negative-1 [8] by {a=>-a-1}
[3+6a,4+6b,0+6c,5+6d]:	negative-1 [7] by {b=>-b-1}
[0+6a,5+6b,0+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
-> solution [0,5,0,5],trivial(3) [0,11,0,11],trivial(3)
[0+6a,0+6b,1+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[3+6a,0+6b,2+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[0+6a,3+6b,2+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[2+6a,0+6b,3+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[4+6a,0+6b,3+6c,5+6d]:	negative-1 [8] by {a=>-a-1}
[0+6a,2+6b,3+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[0+6a,4+6b,3+6c,5+6d]:	negative-1 [7] by {b=>-b-1}
[3+6a,0+6b,4+6c,5+6d]:	negative-1 [8] by {c=>-c-1}
[0+6a,3+6b,4+6c,5+6d]:	negative-1 [8] by {c=>-c-1}
[0+6a,0+6b,5+6c,5+6d]:	negative-1 [7] by {c=>-c-1}
-> solution [0,0,5,5],trivial(3) [0,0,11,11],trivial(3)
endexp[0]
---------------- level 1
Maximum level 1 [9] mod 6: a⁴+b⁴+c⁴-d⁴
