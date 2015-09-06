TranspositionSet={[1,0,2]}
ExponentGCDs=[2,2,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp 
Refined variables=a,b,c
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a^2+b^2-c^2
solution [0,0,0],trivial(3)
[0+2a,0+2b,0+2c]:	same form as 4a^2+4b^2-4c^2
[1+2a,0+2b,1+2c]:	unknown -> [1] 4a+4a^2+4b^2-4c-4c^2
[0+2a,1+2b,1+2c]:	transposed [1] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 4a+4a^2+4b^2-4c-4c^2
solution [1,0,1],trivial(3)
[1+4a,0+4b,1+4c]:	unknown -> [2] 8a+16a^2+16b^2-8c-16c^2
[3+4a,0+4b,1+4c]:	negative-1 [2] by {a=>-a-1}
[1+4a,0+4b,3+4c]:	negative-1 [2] by {c=>-c-1}
[3+4a,0+4b,3+4c]:	negative-1 [2] by {a=>-a-1,c=>-c-1}
----------------
expanding queue[2]^1,meter=[2,1,2]*8: 8a+16a^2+16b^2-8c-16c^2
solution [1,0,1],trivial(3)
[1+8a,0+4b,1+8c]:	unknown -> [3] 16a+64a^2+16b^2-16c-64c^2
[5+8a,0+4b,5+8c]:	unknown -> [4] 80a+64a^2+16b^2-80c-64c^2
----------------
expanding queue[3]^2,meter=[2,2,2]*16: 16a+64a^2+16b^2-16c-64c^2
solution [1,0,1],trivial(3)
[1+16a,0+8b,1+16c]:	unknown -> [5] 32a+256a^2+64b^2-32c-256c^2
[9+16a,4+8b,1+16c]:	unknown -> [6] 96+288a+256a^2+64b+64b^2-32c-256c^2
[9+16a,0+8b,9+16c]:	unknown -> [7] 288a+256a^2+64b^2-288c-256c^2
[1+16a,4+8b,9+16c]:	unknown -> [8] -64+32a+256a^2+64b+64b^2-288c-256c^2
expanding queue[4]^2,meter=[2,2,2]*16: 80a+64a^2+16b^2-80c-64c^2
solution [5,0,5],trivial(3)
[5+16a,0+8b,5+16c]:	unknown -> [9] 160a+256a^2+64b^2-160c-256c^2
[13+16a,4+8b,5+16c]:	unknown -> [10] 160+416a+256a^2+64b+64b^2-160c-256c^2
[13+16a,0+8b,13+16c]:	unknown -> [11] 416a+256a^2+64b^2-416c-256c^2
[5+16a,4+8b,13+16c]:	unknown -> [12] -128+160a+256a^2+64b+64b^2-416c-256c^2
----------------
expanding queue[5]^3,meter=[2,1,2]*32: 32a+256a^2+64b^2-32c-256c^2
solution [1,0,1],trivial(3)
[1+32a,0+8b,1+32c]:	unknown -> [13] 64a+1024a^2+64b^2-64c-1024c^2
[17+32a,0+8b,17+32c]:	unknown -> [14] 1088a+1024a^2+64b^2-1088c-1024c^2
expanding queue[6]^3,meter=[2,1,2]*32: 96+288a+256a^2+64b+64b^2-32c-256c^2
[25+32a,4+8b,1+32c]:	unknown -> [15] 640+1600a+1024a^2+64b+64b^2-64c-1024c^2
[9+32a,4+8b,17+32c]:	unknown -> [16] -192+576a+1024a^2+64b+64b^2-1088c-1024c^2
expanding queue[7]^3,meter=[2,1,2]*32: 288a+256a^2+64b^2-288c-256c^2
solution [9,0,9],trivial(3)
[9+32a,0+8b,9+32c]:	unknown -> [17] 576a+1024a^2+64b^2-576c-1024c^2
[25+32a,0+8b,25+32c]:	unknown -> [18] 1600a+1024a^2+64b^2-1600c-1024c^2
expanding queue[8]^3,meter=[2,1,2]*32: -64+32a+256a^2+64b+64b^2-288c-256c^2
[1+32a,4+8b,9+32c]:	unknown -> [19] -64+64a+1024a^2+64b+64b^2-576c-1024c^2
[17+32a,4+8b,25+32c]:	unknown -> [20] -320+1088a+1024a^2+64b+64b^2-1600c-1024c^2
expanding queue[9]^4,meter=[2,1,2]*32: 160a+256a^2+64b^2-160c-256c^2
solution [5,0,5],trivial(3)
[5+32a,0+8b,5+32c]:	unknown -> [21] 320a+1024a^2+64b^2-320c-1024c^2
[21+32a,0+8b,21+32c]:	unknown -> [22] 1344a+1024a^2+64b^2-1344c-1024c^2
expanding queue[10]^4,meter=[2,1,2]*32: 160+416a+256a^2+64b+64b^2-160c-256c^2
[29+32a,4+8b,5+32c]:	unknown -> [23] 832+1856a+1024a^2+64b+64b^2-320c-1024c^2
[13+32a,4+8b,21+32c]:	unknown -> [24] -256+832a+1024a^2+64b+64b^2-1344c-1024c^2
expanding queue[11]^4,meter=[2,1,2]*32: 416a+256a^2+64b^2-416c-256c^2
solution [13,0,13],trivial(3)
[13+32a,0+8b,13+32c]:	unknown -> [25] 832a+1024a^2+64b^2-832c-1024c^2
[29+32a,0+8b,29+32c]:	unknown -> [26] 1856a+1024a^2+64b^2-1856c-1024c^2
expanding queue[12]^4,meter=[2,1,2]*32: -128+160a+256a^2+64b+64b^2-416c-256c^2
[5+32a,4+8b,13+32c]:	unknown -> [27] -128+320a+1024a^2+64b+64b^2-832c-1024c^2
[21+32a,4+8b,29+32c]:	unknown -> [28] -384+1344a+1024a^2+64b+64b^2-1856c-1024c^2
Maximum level 4 reached at [29]: a^2+b^2-c^2
