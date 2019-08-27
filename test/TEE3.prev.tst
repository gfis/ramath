TranspositionSet={[0,2,1,3],[1,0,2,3],[1,2,0,3],[2,1,0,3],[2,0,1,3]}
considerNonPrimitive
Expanding for base=6, level=1, reasons+features=base,transpose,primitive,same,similiar,evenexp invall,norm
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a⁴+b⁴+c⁴-d⁴
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[6,6,6,6]: a⁴+b⁴+c⁴-d⁴
[0+6a,0+6b,0+6c,0+6d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [6,0,0,6],trivial(3) [0,6,0,6],trivial(3) [0,0,6,6],trivial(3)
[2+6a,2+6b,2+6c,0+6d]:	non-primitive
[4+6a,2+6b,2+6c,0+6d]:	non-primitive
[2+6a,4+6b,2+6c,0+6d]:	non-primitive
[4+6a,4+6b,2+6c,0+6d]:	non-primitive
[2+6a,2+6b,4+6c,0+6d]:	non-primitive
[4+6a,2+6b,4+6c,0+6d]:	non-primitive
[2+6a,4+6b,4+6c,0+6d]:	non-primitive
[4+6a,4+6b,4+6c,0+6d]:	non-primitive
[1+6a,0+6b,0+6c,1+6d]:	unknown -> [1] [1,0,0,1] a+9a²+36a³+54a⁴+54b⁴+54c⁴-d-9d²-36d³-54d⁴
-> solution [1,0,0,1],trivial(3) [7,0,0,7],trivial(3)
[5+6a,0+6b,0+6c,1+6d]:	negative-1 [1] by {a=>-a-1}
[0+6a,1+6b,0+6c,1+6d]:	transposed [1] by [2,0,1,3]
[3+6a,2+6b,0+6c,1+6d]:	unknown -> [2] [3,2,0,1] 27a+81a²+108a³+54a⁴+8b+36b²+72b³+54b⁴+54c⁴-d-9d²-36d³-54d⁴+4
[2+6a,3+6b,0+6c,1+6d]:	transposed [2] by [1,0,2,3]
[4+6a,3+6b,0+6c,1+6d]:	unknown -> [3] [4,3,0,1] 64a+144a²+144a³+54a⁴+27b+81b²+108b³+54b⁴+54c⁴-d-9d²-36d³-54d⁴+14
[3+6a,4+6b,0+6c,1+6d]:	transposed [3] by [1,0,2,3]
[0+6a,5+6b,0+6c,1+6d]:	unknown -> [4] [0,5,0,1] 54a⁴+125b+225b²+180b³+54b⁴+54c⁴-d-9d²-36d³-54d⁴+26
[0+6a,0+6b,1+6c,1+6d]:	transposed [1] by [2,1,0,3]
[3+6a,0+6b,2+6c,1+6d]:	transposed [2] by [0,2,1,3]
[0+6a,3+6b,2+6c,1+6d]:	transposed [2] by [2,0,1,3]
[2+6a,0+6b,3+6c,1+6d]:	transposed [2] by [1,2,0,3]
[4+6a,0+6b,3+6c,1+6d]:	transposed [3] by [0,2,1,3]
[0+6a,2+6b,3+6c,1+6d]:	transposed [2] by [2,1,0,3]
[0+6a,4+6b,3+6c,1+6d]:	transposed [3] by [2,0,1,3]
[3+6a,0+6b,4+6c,1+6d]:	transposed [3] by [1,2,0,3]
[0+6a,3+6b,4+6c,1+6d]:	transposed [3] by [2,1,0,3]
[0+6a,0+6b,5+6c,1+6d]:	transposed [4] by [2,0,1,3]
[2+6a,0+6b,0+6c,2+6d]:	non-primitive
-> solution [2,0,0,2],trivial(3) [8,0,0,8],trivial(3)
[4+6a,0+6b,0+6c,2+6d]:	non-primitive
[0+6a,2+6b,0+6c,2+6d]:	non-primitive
-> solution [0,2,0,2],trivial(3) [0,8,0,8],trivial(3)
[0+6a,4+6b,0+6c,2+6d]:	non-primitive
[0+6a,0+6b,2+6c,2+6d]:	non-primitive
-> solution [0,0,2,2],trivial(3) [0,0,8,8],trivial(3)
[0+6a,0+6b,4+6c,2+6d]:	non-primitive
[3+6a,0+6b,0+6c,3+6d]:	non-primitive
-> solution [3,0,0,3],trivial(3) [9,0,0,9],trivial(3)
[0+6a,3+6b,0+6c,3+6d]:	non-primitive
-> solution [0,3,0,3],trivial(3) [0,9,0,9],trivial(3)
[2+6a,2+6b,1+6c,3+6d]:	negative-1 [3] by {a=>-a-1}
[4+6a,2+6b,1+6c,3+6d]:	unknown -> [5] [4,2,1,3] 64a+144a²+144a³+54a⁴+8b+36b²+72b³+54b⁴+c+9c²+36c³+54c⁴-27d-81d²-108d³-54d⁴+8
[2+6a,4+6b,1+6c,3+6d]:	transposed [5] by [1,0,2,3]
[4+6a,4+6b,1+6c,3+6d]:	negative-1 [5] by {b=>-b-1}
[2+6a,1+6b,2+6c,3+6d]:	negative-1 [5] by {a=>-a-1}
[4+6a,1+6b,2+6c,3+6d]:	transposed [5] by [0,2,1,3]
[1+6a,2+6b,2+6c,3+6d]:	unknown -> [6] [1,2,2,3] a+9a²+36a³+54a⁴+8b+36b²+72b³+54b⁴+8c+36c²+72c³+54c⁴-27d-81d²-108d³-54d⁴-2
[5+6a,2+6b,2+6c,3+6d]:	negative-1 [6] by {a=>-a-1}
[1+6a,4+6b,2+6c,3+6d]:	transposed [5] by [2,0,1,3]
[5+6a,4+6b,2+6c,3+6d]:	negative-1 [6] by {a=>-a-1,b=>-b-1}
[2+6a,5+6b,2+6c,3+6d]:	negative-1 [5] by {a=>-a-1}
[4+6a,5+6b,2+6c,3+6d]:	unknown -> [7] [4,5,2,3] 64a+144a²+144a³+54a⁴+125b+225b²+180b³+54b⁴+8c+36c²+72c³+54c⁴-27d-81d²-108d³-54d⁴+34
[0+6a,0+6b,3+6c,3+6d]:	non-primitive
-> solution [0,0,3,3],trivial(3) [0,0,9,9],trivial(3)
[2+6a,1+6b,4+6c,3+6d]:	transposed [5] by [1,2,0,3]
[4+6a,1+6b,4+6c,3+6d]:	negative-1 [7] by {b=>-b-1,c=>-c-1}
[1+6a,2+6b,4+6c,3+6d]:	transposed [5] by [2,1,0,3]
[5+6a,2+6b,4+6c,3+6d]:	transposed [7] by [1,2,0,3]
[1+6a,4+6b,4+6c,3+6d]:	negative-1 [7] by {c=>-c-1}
[5+6a,4+6b,4+6c,3+6d]:	negative-1 [7] by {c=>-c-1}
[2+6a,5+6b,4+6c,3+6d]:	transposed [7] by [2,1,0,3]
[4+6a,5+6b,4+6c,3+6d]:	negative-1 [7] by {c=>-c-1}
[2+6a,2+6b,5+6c,3+6d]:	negative-1 [7] by {a=>-a-1}
[4+6a,2+6b,5+6c,3+6d]:	transposed [7] by [0,2,1,3]
[2+6a,4+6b,5+6c,3+6d]:	transposed [7] by [2,0,1,3]
[4+6a,4+6b,5+6c,3+6d]:	negative-1 [6] by {b=>-b-1}
[2+6a,0+6b,0+6c,4+6d]:	non-primitive
[4+6a,0+6b,0+6c,4+6d]:	non-primitive
-> solution [4,0,0,4],trivial(3) [10,0,0,10],trivial(3)
[0+6a,2+6b,0+6c,4+6d]:	non-primitive
[0+6a,4+6b,0+6c,4+6d]:	non-primitive
-> solution [0,4,0,4],trivial(3) [0,10,0,10],trivial(3)
[0+6a,0+6b,2+6c,4+6d]:	non-primitive
[0+6a,0+6b,4+6c,4+6d]:	non-primitive
-> solution [0,0,4,4],trivial(3) [0,0,10,10],trivial(3)
[1+6a,0+6b,0+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[5+6a,0+6b,0+6c,5+6d]:	negative-1 [6] by {a=>-a-1}
-> solution [5,0,0,5],trivial(3) [11,0,0,11],trivial(3)
[0+6a,1+6b,0+6c,5+6d]:	negative-1 [7] by {b=>-b-1}
[3+6a,2+6b,0+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[2+6a,3+6b,0+6c,5+6d]:	negative-1 [7] by {a=>-a-1}
[4+6a,3+6b,0+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[3+6a,4+6b,0+6c,5+6d]:	negative-1 [6] by {b=>-b-1}
[0+6a,5+6b,0+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
-> solution [0,5,0,5],trivial(3) [0,11,0,11],trivial(3)
[0+6a,0+6b,1+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[3+6a,0+6b,2+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[0+6a,3+6b,2+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[2+6a,0+6b,3+6c,5+6d]:	negative-1 [7] by {a=>-a-1}
[4+6a,0+6b,3+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[0+6a,2+6b,3+6c,5+6d]:	negative-1 [4] by {d=>-d-1}
[0+6a,4+6b,3+6c,5+6d]:	negative-1 [6] by {b=>-b-1}
[3+6a,0+6b,4+6c,5+6d]:	negative-1 [7] by {c=>-c-1}
[0+6a,3+6b,4+6c,5+6d]:	negative-1 [7] by {c=>-c-1}
[0+6a,0+6b,5+6c,5+6d]:	negative-1 [5] by {c=>-c-1}
-> solution [0,0,5,5],trivial(3) [0,0,11,11],trivial(3)
endexp[0]
---------------- level 1
Maximum level 1 [8] mod 6: a⁴+b⁴+c⁴-d⁴
