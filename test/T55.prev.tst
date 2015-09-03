Expanding for base=2, reasons+features=base,transpose,similiar,evenexp norm,invall
exponentGCDs=[4,4,2,2], transposables={{a,b},{c,d}}
----------------
expanding queue[0]^-1,meter=[2,2,2,2]*2: a^4 + b^4 - c^2 - d^2
solution [0,0,0,0],trivial(3)
[0,0,0,0]:	unknown -> [1] 4*a^4+4*b^4-c^2-d^2
[1,0,1,0]:	unknown -> [2] 2*a+6*a^2+8*a^3+4*a^4+4*b^4-c-c^2-d^2
[0,1,1,0]:	transposed [2] {0/0+2*b,0/1+2*a,2/0+2*d,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b
[1,0,0,1]:	transposed [2] {0/0+2*b,0/1+2*a,2/0+2*d,2/1+2*c} by 0+2*d|0+2*c 1+2*c|1+2*d
[0,1,0,1]:	transposed [2] {0/0+2*b,0/1+2*a,2/0+2*d,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b 0+2*d|0+2*c 1+2*c|1+2*d
[1,1,1,1]:	unknown -> [3] 2*a+6*a^2+8*a^3+4*a^4+2*b+6*b^2+8*b^3+4*b^4-c-c^2-d-d^2
----------------
expanding queue[1]^0,meter=[2,2,2,2]*4: 4*a^4 + 4*b^4 - c^2 - d^2
solution [0,0,0,0],trivial(3)
[0,0,0,0]:	unknown -> [4] 16*a^4+16*b^4-c^2-d^2
[2,0,0,0]:	unknown -> [5] 1+8*a+24*a^2+32*a^3+16*a^4+16*b^4-c^2-d^2
[0,2,0,0]:	transposed [5] {0/0+4*b,0/2+4*a,2/0+4*c,2/0+4*d} by 0+4*b|0+4*a 2+4*a|2+4*b
[2,2,0,0]:	unknown -> [6] 2+8*a+24*a^2+32*a^3+16*a^4+8*b+24*b^2+32*b^3+16*b^4-c^2-d^2
expanding queue[2]^0,meter=[2,2,2,2]*4: 2*a + 6*a^2 + 8*a^3 + 4*a^4 + 4*b^4 - c - c^2 - d^2
solution [1,0,1,0],trivial(3)
[1,0,1,0]:	unknown -> [7] 2*a+12*a^2+32*a^3+32*a^4+32*b^4-c-2*c^2-2*d^2
[3,0,1,0]:	negative-1 [7] by {a=>-a-1}
[1,2,1,0]:	unknown -> [8] 2+2*a+12*a^2+32*a^3+32*a^4+16*b+48*b^2+64*b^3+32*b^4-c-2*c^2-2*d^2
[3,2,1,0]:	negative-1 [8] by {a=>-a-1}
[1,0,3,0]:	negative-1 [8] by {c=>-c-1}
[3,0,3,0]:	negative-1 [8] by {a=>-a-1,c=>-c-1}
[1,2,3,0]:	negative-1 [8] by {c=>-c-1}
[3,2,3,0]:	negative-1 [8] by {a=>-a-1,c=>-c-1}
expanding queue[3]^0,meter=[2,2,2,2]*4: 2*a + 6*a^2 + 8*a^3 + 4*a^4 + 2*b + 6*b^2 + 8*b^3 + 4*b^4 - c - c^2 - d - d^2
solution [1,1,1,1],trivial(2)
[1,1,1,1]:	unknown -> [9] 2*a+12*a^2+32*a^3+32*a^4+2*b+12*b^2+32*b^3+32*b^4-c-2*c^2-d-2*d^2
[3,1,1,1]:	negative-1 [9] by {a=>-a-1}
[1,3,1,1]:	negative-1 [9] by {b=>-b-1}
[3,3,1,1]:	negative-1 [9] by {a=>-a-1,b=>-b-1}
[1,1,3,1]:	negative-1 [9] by {c=>-c-1}
[3,1,3,1]:	negative-1 [9] by {a=>-a-1,c=>-c-1}
[1,3,3,1]:	negative-1 [9] by {b=>-b-1,c=>-c-1}
[3,3,3,1]:	negative-1 [9] by {a=>-a-1,b=>-b-1,c=>-c-1}
[1,1,1,3]:	negative-1 [9] by {d=>-d-1}
[3,1,1,3]:	negative-1 [9] by {a=>-a-1,d=>-d-1}
[1,3,1,3]:	negative-1 [9] by {b=>-b-1,d=>-d-1}
[3,3,1,3]:	negative-1 [9] by {a=>-a-1,b=>-b-1,d=>-d-1}
[1,1,3,3]:	negative-1 [9] by {c=>-c-1,d=>-d-1}
[3,1,3,3]:	negative-1 [9] by {a=>-a-1,c=>-c-1,d=>-d-1}
[1,3,3,3]:	negative-1 [9] by {b=>-b-1,c=>-c-1,d=>-d-1}
[3,3,3,3]:	negative-1 [9] by {a=>-a-1,b=>-b-1,c=>-c-1,d=>-d-1}
----------------
expanding queue[4]^1,meter=[2,2,2,2]*8: 16*a^4 + 16*b^4 - c^2 - d^2
solution [0,0,0,0],trivial(3)
[0,0,0,0]:	unknown -> [10] 64*a^4+64*b^4-c^2-d^2
[4,0,0,0]:	unknown -> [11] 4+32*a+96*a^2+128*a^3+64*a^4+64*b^4-c^2-d^2
[0,4,0,0]:	transposed [11] {0/0+8*b,0/4+8*a,2/0+8*c,2/0+8*d} by 0+8*b|0+8*a 4+8*a|4+8*b
[4,4,0,0]:	unknown -> [12] 8+32*a+96*a^2+128*a^3+64*a^4+32*b+96*b^2+128*b^3+64*b^4-c^2-d^2
expanding queue[5]^1,meter=[2,2,2,2]*8: 1 + 8*a + 24*a^2 + 32*a^3 + 16*a^4 + 16*b^4 - c^2 - d^2
[2,0,4,0]:	unknown -> [13] 4*a+24*a^2+64*a^3+64*a^4+64*b^4-c-c^2-d^2
[6,0,4,0]:	negative-1 [13] by {a=>-a-1}
[2,4,4,0]:	unknown -> [14] 4+4*a+24*a^2+64*a^3+64*a^4+32*b+96*b^2+128*b^3+64*b^4-c-c^2-d^2
[6,4,4,0]:	negative-1 [14] by {a=>-a-1}
[2,0,0,4]:	transposed [13] {0/0+8*b,0/2+8*a,2/0+8*d,2/4+8*c} by 0+8*d|0+8*c 4+8*c|4+8*d
[6,0,0,4]:	negative-1 [14] by {a=>-a-1}
[2,4,0,4]:	transposed [14] {0/2+8*a,0/4+8*b,2/0+8*d,2/4+8*c} by 0+8*d|0+8*c 4+8*c|4+8*d
[6,4,0,4]:	negative-1 [14] by {a=>-a-1}
expanding queue[6]^1,meter=[2,2,2,2]*8: 2 + 8*a + 24*a^2 + 32*a^3 + 16*a^4 + 8*b + 24*b^2 + 32*b^3 + 16*b^4 - c^2 - d^2
[2,2,4,4]:	unknown -> [15] 4*a+24*a^2+64*a^3+64*a^4+4*b+24*b^2+64*b^3+64*b^4-c-c^2-d-d^2
[6,2,4,4]:	negative-1 [15] by {a=>-a-1}
[2,6,4,4]:	negative-1 [15] by {b=>-b-1}
[6,6,4,4]:	negative-1 [15] by {a=>-a-1,b=>-b-1}
expanding queue[7]^2,meter=[2,2,2,2]*8: 2*a + 12*a^2 + 32*a^3 + 32*a^4 + 32*b^4 - c - 2*c^2 - 2*d^2
solution [1,0,1,0],trivial(3)
[1,0,1,0]:	unknown -> [16] 2*a+24*a^2+128*a^3+256*a^4+256*b^4-c-4*c^2-4*d^2
[5,0,1,0]:	unknown -> [17] 39+250*a+600*a^2+640*a^3+256*a^4+256*b^4-c-4*c^2-4*d^2
[1,4,1,0]:	unknown -> [18] 16+2*a+24*a^2+128*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4-c-4*c^2-4*d^2
[5,4,1,0]:	unknown -> [19] 55+250*a+600*a^2+640*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4-c-4*c^2-4*d^2
[1,0,1,4]:	unknown -> [20] -1+2*a+24*a^2+128*a^3+256*a^4+256*b^4-c-4*c^2-4*d-4*d^2
[5,0,1,4]:	unknown -> [21] 38+250*a+600*a^2+640*a^3+256*a^4+256*b^4-c-4*c^2-4*d-4*d^2
[1,4,1,4]:	unknown -> [22] 15+2*a+24*a^2+128*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4-c-4*c^2-4*d-4*d^2
[5,4,1,4]:	unknown -> [23] 54+250*a+600*a^2+640*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4-c-4*c^2-4*d-4*d^2
expanding queue[8]^2,meter=[2,2,2,2]*8: 2 + 2*a + 12*a^2 + 32*a^3 + 32*a^4 + 16*b + 48*b^2 + 64*b^3 + 32*b^4 - c - 2*c^2 - 2*d^2
[1,2,1,0]:	unknown -> [24] 1+2*a+24*a^2+128*a^3+256*a^4+16*b+96*b^2+256*b^3+256*b^4-c-4*c^2-4*d^2
[5,2,1,0]:	unknown -> [25] 40+250*a+600*a^2+640*a^3+256*a^4+16*b+96*b^2+256*b^3+256*b^4-c-4*c^2-4*d^2
[1,6,1,0]:	negative-1 [25] by {b=>-b-1}
[5,6,1,0]:	negative-1 [25] by {b=>-b-1}
[1,2,1,4]:	unknown -> [26] 2*a+24*a^2+128*a^3+256*a^4+16*b+96*b^2+256*b^3+256*b^4-c-4*c^2-4*d-4*d^2
[5,2,1,4]:	unknown -> [27] 39+250*a+600*a^2+640*a^3+256*a^4+16*b+96*b^2+256*b^3+256*b^4-c-4*c^2-4*d-4*d^2
[1,6,1,4]:	negative-1 [27] by {b=>-b-1}
[5,6,1,4]:	negative-1 [27] by {b=>-b-1}
expanding queue[9]^3,meter=[2,2,2,2]*8: 2*a + 12*a^2 + 32*a^3 + 32*a^4 + 2*b + 12*b^2 + 32*b^3 + 32*b^4 - c - 2*c^2 - d - 2*d^2
solution [1,1,1,1],trivial(2)
[1,1,1,1]:	unknown -> [28] 2*a+24*a^2+128*a^3+256*a^4+2*b+24*b^2+128*b^3+256*b^4-c-4*c^2-d-4*d^2
[5,1,1,1]:	unknown -> [29] 39+250*a+600*a^2+640*a^3+256*a^4+2*b+24*b^2+128*b^3+256*b^4-c-4*c^2-d-4*d^2
[1,5,1,1]:	transposed [29] {0/1+8*b,0/5+8*a,2/1+8*c,2/1+8*d} by 1+8*b|1+8*a 5+8*a|5+8*b
[5,5,1,1]:	unknown -> [30] 78+250*a+600*a^2+640*a^3+256*a^4+250*b+600*b^2+640*b^3+256*b^4-c-4*c^2-d-4*d^2
[1,1,5,5]:	unknown -> [31] -3+2*a+24*a^2+128*a^3+256*a^4+2*b+24*b^2+128*b^3+256*b^4-5*c-4*c^2-5*d-4*d^2
[5,1,5,5]:	unknown -> [32] 36+250*a+600*a^2+640*a^3+256*a^4+2*b+24*b^2+128*b^3+256*b^4-5*c-4*c^2-5*d-4*d^2
[1,5,5,5]:	transposed [32] {0/1+8*b,0/5+8*a,2/5+8*c,2/5+8*d} by 1+8*b|1+8*a 5+8*a|5+8*b
[5,5,5,5]:	unknown -> [33] 75+250*a+600*a^2+640*a^3+256*a^4+250*b+600*b^2+640*b^3+256*b^4-5*c-4*c^2-5*d-4*d^2
Maximum level 2 reached at [34]: a^4 + b^4 - c^2 - d^2
