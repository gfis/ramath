TranspositionSet={[1,0,3,2],[0,1,3,2],[1,0,2,3]}
ExponentGCDs=[4,4,2,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp norm,invall
Refined variables=a,b,c,d
----------------
expanding queue[0]^-1,meter=[2,2,2,2]*2: a^4+b^4-c^2-d^2
[0+2a,0+2b,0+2c,0+2d]:	unknown -> [1] 4a^4+4b^4-c^2-d^2
-> solution [0,0,0,0],trivial(3)
[1+2a,0+2b,1+2c,0+2d]:	unknown -> [2] 2a+6a^2+8a^3+4a^4+4b^4-c-c^2-d^2
-> solution [1,0,1,0],trivial(3)
[0+2a,1+2b,1+2c,0+2d]:	transposed [2] by [1,0,2,3]
[1+2a,0+2b,0+2c,1+2d]:	transposed [2] by [0,1,3,2]
[0+2a,1+2b,0+2c,1+2d]:	transposed [2] by [1,0,3,2]
[1+2a,1+2b,1+2c,1+2d]:	unknown -> [3] 2a+6a^2+8a^3+4a^4+2b+6b^2+8b^3+4b^4-c-c^2-d-d^2
-> solution [1,1,1,1],trivial(2)
----------------
expanding queue[1]^0,meter=[2,2,2,2]*4: 4a^4+4b^4-c^2-d^2
[0+4a,0+4b,0+4c,0+4d]:	same 16a^4+16b^4-c^2-d^2 map {a=>a/2,b=>b/2} -> [0] a^4+b^4-c^2-d^2
-> solution [0,0,0,0],trivial(3)
[2+4a,0+4b,0+4c,0+4d]:	unknown -> [4] 1+8a+24a^2+32a^3+16a^4+16b^4-c^2-d^2
-> solution [2,0,4,0],trivial(3) [2,0,0,4],trivial(3)
[0+4a,2+4b,0+4c,0+4d]:	transposed [4] by [1,0,2,3]
[2+4a,2+4b,0+4c,0+4d]:	unknown -> [5] 2+8a+24a^2+32a^3+16a^4+8b+24b^2+32b^3+16b^4-c^2-d^2
-> solution [2,2,4,4],trivial(2)
expanding queue[2]^0,meter=[2,2,2,2]*4: 2a+6a^2+8a^3+4a^4+4b^4-c-c^2-d^2
[1+4a,0+4b,1+4c,0+4d]:	unknown -> [6] 2a+12a^2+32a^3+32a^4+32b^4-c-2c^2-2d^2
-> solution [1,0,1,0],trivial(3)
[3+4a,0+4b,1+4c,0+4d]:	negative-1 [6] by {a=>-a-1}
[1+4a,2+4b,1+4c,0+4d]:	unknown -> [7] 2+2a+12a^2+32a^3+32a^4+16b+48b^2+64b^3+32b^4-c-2c^2-2d^2
-> solution [1,2,1,4],trivial(2)
[3+4a,2+4b,1+4c,0+4d]:	negative-1 [7] by {a=>-a-1}
[1+4a,0+4b,3+4c,0+4d]:	negative-1 [7] by {c=>-c-1}
[3+4a,0+4b,3+4c,0+4d]:	negative-1 [7] by {a=>-a-1,c=>-c-1}
[1+4a,2+4b,3+4c,0+4d]:	negative-1 [7] by {c=>-c-1}
[3+4a,2+4b,3+4c,0+4d]:	negative-1 [7] by {a=>-a-1,c=>-c-1}
expanding queue[3]^0,meter=[2,2,2,2]*4: 2a+6a^2+8a^3+4a^4+2b+6b^2+8b^3+4b^4-c-c^2-d-d^2
[1+4a,1+4b,1+4c,1+4d]:	unknown -> [8] 2a+12a^2+32a^3+32a^4+2b+12b^2+32b^3+32b^4-c-2c^2-d-2d^2
-> solution [1,1,1,1],trivial(2)
[3+4a,1+4b,1+4c,1+4d]:	negative-1 [8] by {a=>-a-1}
[1+4a,3+4b,1+4c,1+4d]:	negative-1 [8] by {b=>-b-1}
[3+4a,3+4b,1+4c,1+4d]:	negative-1 [8] by {a=>-a-1,b=>-b-1}
[1+4a,1+4b,3+4c,1+4d]:	negative-1 [8] by {c=>-c-1}
[3+4a,1+4b,3+4c,1+4d]:	negative-1 [8] by {a=>-a-1,c=>-c-1}
[1+4a,3+4b,3+4c,1+4d]:	negative-1 [8] by {b=>-b-1,c=>-c-1}
[3+4a,3+4b,3+4c,1+4d]:	negative-1 [8] by {a=>-a-1,b=>-b-1,c=>-c-1}
[1+4a,1+4b,1+4c,3+4d]:	negative-1 [8] by {d=>-d-1}
[3+4a,1+4b,1+4c,3+4d]:	negative-1 [8] by {a=>-a-1,d=>-d-1}
[1+4a,3+4b,1+4c,3+4d]:	negative-1 [8] by {b=>-b-1,d=>-d-1}
[3+4a,3+4b,1+4c,3+4d]:	negative-1 [8] by {a=>-a-1,b=>-b-1,d=>-d-1}
[1+4a,1+4b,3+4c,3+4d]:	negative-1 [8] by {c=>-c-1,d=>-d-1}
[3+4a,1+4b,3+4c,3+4d]:	negative-1 [8] by {a=>-a-1,c=>-c-1,d=>-d-1}
[1+4a,3+4b,3+4c,3+4d]:	negative-1 [8] by {b=>-b-1,c=>-c-1,d=>-d-1}
[3+4a,3+4b,3+4c,3+4d]:	negative-1 [8] by {a=>-a-1,b=>-b-1,c=>-c-1,d=>-d-1}
----------------
expanding queue[4]^1,meter=[2,2,2,2]*8: 1+8a+24a^2+32a^3+16a^4+16b^4-c^2-d^2
[2+8a,0+8b,4+8c,0+8d]:	same 4a+24a^2+64a^3+64a^4+64b^4-c-c^2-d^2 map {a=>a/2,b=>b/2} -> [2] 2a+6a^2+8a^3+4a^4+4b^4-c-c^2-d^2
-> solution [2,0,4,0],trivial(3)
[6+8a,0+8b,4+8c,0+8d]:	unknown -> [9] 20+108a+216a^2+192a^3+64a^4+64b^4-c-c^2-d^2
[2+8a,4+8b,4+8c,0+8d]:	negative-1 [9] by {a=>-a-1}
[6+8a,4+8b,4+8c,0+8d]:	unknown -> [10] 24+108a+216a^2+192a^3+64a^4+32b+96b^2+128b^3+64b^4-c-c^2-d^2
[2+8a,0+8b,0+8c,4+8d]:	negative-1 [10] by {a=>-a-1}
-> solution [2,0,0,4],trivial(3)
[6+8a,0+8b,0+8c,4+8d]:	transposed [9] by [0,1,3,2]
[2+8a,4+8b,0+8c,4+8d]:	negative-1 [10] by {a=>-a-1}
[6+8a,4+8b,0+8c,4+8d]:	transposed [10] by [0,1,3,2]
expanding queue[5]^1,meter=[2,2,2,2]*8: 2+8a+24a^2+32a^3+16a^4+8b+24b^2+32b^3+16b^4-c^2-d^2
[2+8a,2+8b,4+8c,4+8d]:	same 4a+24a^2+64a^3+64a^4+4b+24b^2+64b^3+64b^4-c-c^2-d-d^2 map {a=>a/2,b=>b/2} -> [3] 2a+6a^2+8a^3+4a^4+2b+6b^2+8b^3+4b^4-c-c^2-d-d^2
-> solution [2,2,4,4],trivial(2)
[6+8a,2+8b,4+8c,4+8d]:	unknown -> [11] 20+108a+216a^2+192a^3+64a^4+4b+24b^2+64b^3+64b^4-c-c^2-d-d^2
[2+8a,6+8b,4+8c,4+8d]:	transposed [11] by [1,0,2,3]
[6+8a,6+8b,4+8c,4+8d]:	negative-1 [11] by {b=>-b-1}
expanding queue[6]^2,meter=[2,2,2,2]*8: 2a+12a^2+32a^3+32a^4+32b^4-c-2c^2-2d^2
[1+8a,0+8b,1+8c,0+8d]:	unknown -> [12] 2a+24a^2+128a^3+256a^4+256b^4-c-4c^2-4d^2
-> solution [1,0,1,0],trivial(3)
[5+8a,0+8b,1+8c,0+8d]:	unknown -> [13] 39+250a+600a^2+640a^3+256a^4+256b^4-c-4c^2-4d^2
[1+8a,4+8b,1+8c,0+8d]:	unknown -> [14] 16+2a+24a^2+128a^3+256a^4+128b+384b^2+512b^3+256b^4-c-4c^2-4d^2
[5+8a,4+8b,1+8c,0+8d]:	unknown -> [15] 55+250a+600a^2+640a^3+256a^4+128b+384b^2+512b^3+256b^4-c-4c^2-4d^2
[1+8a,0+8b,1+8c,4+8d]:	unknown -> [16] -1+2a+24a^2+128a^3+256a^4+256b^4-c-4c^2-4d-4d^2
[5+8a,0+8b,1+8c,4+8d]:	unknown -> [17] 38+250a+600a^2+640a^3+256a^4+256b^4-c-4c^2-4d-4d^2
[1+8a,4+8b,1+8c,4+8d]:	unknown -> [18] 15+2a+24a^2+128a^3+256a^4+128b+384b^2+512b^3+256b^4-c-4c^2-4d-4d^2
[5+8a,4+8b,1+8c,4+8d]:	unknown -> [19] 54+250a+600a^2+640a^3+256a^4+128b+384b^2+512b^3+256b^4-c-4c^2-4d-4d^2
expanding queue[7]^2,meter=[2,2,2,2]*8: 2+2a+12a^2+32a^3+32a^4+16b+48b^2+64b^3+32b^4-c-2c^2-2d^2
[1+8a,2+8b,1+8c,0+8d]:	unknown -> [20] 1+2a+24a^2+128a^3+256a^4+16b+96b^2+256b^3+256b^4-c-4c^2-4d^2
[5+8a,2+8b,1+8c,0+8d]:	unknown -> [21] 40+250a+600a^2+640a^3+256a^4+16b+96b^2+256b^3+256b^4-c-4c^2-4d^2
[1+8a,6+8b,1+8c,0+8d]:	negative-1 [21] by {b=>-b-1}
[5+8a,6+8b,1+8c,0+8d]:	negative-1 [21] by {b=>-b-1}
[1+8a,2+8b,1+8c,4+8d]:	unknown -> [22] 2a+24a^2+128a^3+256a^4+16b+96b^2+256b^3+256b^4-c-4c^2-4d-4d^2
-> solution [1,2,1,4],trivial(2)
[5+8a,2+8b,1+8c,4+8d]:	unknown -> [23] 39+250a+600a^2+640a^3+256a^4+16b+96b^2+256b^3+256b^4-c-4c^2-4d-4d^2
[1+8a,6+8b,1+8c,4+8d]:	negative-1 [23] by {b=>-b-1}
[5+8a,6+8b,1+8c,4+8d]:	negative-1 [23] by {b=>-b-1}
expanding queue[8]^3,meter=[2,2,2,2]*8: 2a+12a^2+32a^3+32a^4+2b+12b^2+32b^3+32b^4-c-2c^2-d-2d^2
[1+8a,1+8b,1+8c,1+8d]:	unknown -> [24] 2a+24a^2+128a^3+256a^4+2b+24b^2+128b^3+256b^4-c-4c^2-d-4d^2
-> solution [1,1,1,1],trivial(2)
[5+8a,1+8b,1+8c,1+8d]:	unknown -> [25] 39+250a+600a^2+640a^3+256a^4+2b+24b^2+128b^3+256b^4-c-4c^2-d-4d^2
[1+8a,5+8b,1+8c,1+8d]:	transposed [25] by [1,0,2,3]
[5+8a,5+8b,1+8c,1+8d]:	unknown -> [26] 78+250a+600a^2+640a^3+256a^4+250b+600b^2+640b^3+256b^4-c-4c^2-d-4d^2
[1+8a,1+8b,5+8c,5+8d]:	unknown -> [27] -3+2a+24a^2+128a^3+256a^4+2b+24b^2+128b^3+256b^4-5c-4c^2-5d-4d^2
[5+8a,1+8b,5+8c,5+8d]:	unknown -> [28] 36+250a+600a^2+640a^3+256a^4+2b+24b^2+128b^3+256b^4-5c-4c^2-5d-4d^2
[1+8a,5+8b,5+8c,5+8d]:	transposed [28] by [1,0,2,3]
[5+8a,5+8b,5+8c,5+8d]:	unknown -> [29] 75+250a+600a^2+640a^3+256a^4+250b+600b^2+640b^3+256b^4-5c-4c^2-5d-4d^2
Maximum level 2 at [30]: a^4+b^4-c^2-d^2
