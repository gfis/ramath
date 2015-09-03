Expanding for base=2, reasons+features=base,transpose,similiar,evenexp norm,invall
exponentGCDs=[2,2,2,2], transposables={{a,b},{c,d}}
----------------
expanding queue[0]^-1,meter=[2,2,2,2]*2: a^2 + b^2 - c^2 - d^2
solution [0,0,0,0],trivial(3)
[0,0,0,0]:	similiar   [0], same  a^2+b^2-c^2-d^2
[1,0,1,0]:	unknown -> [1] a+a^2+b^2-c-c^2-d^2
[0,1,1,0]:	transposed [1] {0/0+2*b,0/1+2*a,2/0+2*d,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b
[1,0,0,1]:	transposed [1] {0/0+2*b,0/1+2*a,2/0+2*d,2/1+2*c} by 0+2*d|0+2*c 1+2*c|1+2*d
[0,1,0,1]:	transposed [1] {0/0+2*b,0/1+2*a,2/0+2*d,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b 0+2*d|0+2*c 1+2*c|1+2*d
[1,1,1,1]:	unknown -> [2] a+a^2+b+b^2-c-c^2-d-d^2
----------------
expanding queue[1]^0,meter=[2,2,2,2]*4: a + a^2 + b^2 - c - c^2 - d^2
solution [1,0,1,0],trivial(3)
[1,0,1,0]:	unknown -> [3] a+2*a^2+2*b^2-c-2*c^2-2*d^2
[3,0,1,0]:	negative-1 [3] by {a=>-a-1}
[1,0,3,0]:	negative-1 [3] by {c=>-c-1}
[3,0,3,0]:	negative-1 [3] by {a=>-a-1,c=>-c-1}
[1,2,1,2]:	unknown -> [4] a+2*a^2+2*b+2*b^2-c-2*c^2-2*d-2*d^2
[3,2,1,2]:	negative-1 [4] by {a=>-a-1}
[1,2,3,2]:	negative-1 [4] by {c=>-c-1}
[3,2,3,2]:	negative-1 [4] by {a=>-a-1,c=>-c-1}
expanding queue[2]^0,meter=[2,2,2,2]*4: a + a^2 + b + b^2 - c - c^2 - d - d^2
solution [1,1,1,1],trivial(2)
[1,1,1,1]:	unknown -> [5] a+2*a^2+b+2*b^2-c-2*c^2-d-2*d^2
[3,1,1,1]:	negative-1 [5] by {a=>-a-1}
[1,3,1,1]:	negative-1 [5] by {b=>-b-1}
[3,3,1,1]:	negative-1 [5] by {a=>-a-1,b=>-b-1}
[1,1,3,1]:	negative-1 [5] by {c=>-c-1}
[3,1,3,1]:	negative-1 [5] by {a=>-a-1,c=>-c-1}
[1,3,3,1]:	negative-1 [5] by {b=>-b-1,c=>-c-1}
[3,3,3,1]:	negative-1 [5] by {a=>-a-1,b=>-b-1,c=>-c-1}
[1,1,1,3]:	negative-1 [5] by {d=>-d-1}
[3,1,1,3]:	negative-1 [5] by {a=>-a-1,d=>-d-1}
[1,3,1,3]:	negative-1 [5] by {b=>-b-1,d=>-d-1}
[3,3,1,3]:	negative-1 [5] by {a=>-a-1,b=>-b-1,d=>-d-1}
[1,1,3,3]:	negative-1 [5] by {c=>-c-1,d=>-d-1}
[3,1,3,3]:	negative-1 [5] by {a=>-a-1,c=>-c-1,d=>-d-1}
[1,3,3,3]:	negative-1 [5] by {b=>-b-1,c=>-c-1,d=>-d-1}
[3,3,3,3]:	negative-1 [5] by {a=>-a-1,b=>-b-1,c=>-c-1,d=>-d-1}
----------------
expanding queue[3]^1,meter=[2,2,2,2]*8: a + 2*a^2 + 2*b^2 - c - 2*c^2 - 2*d^2
solution [1,0,1,0],trivial(3)
[1,0,1,0]:	unknown -> [6] a+4*a^2+4*b^2-c-4*c^2-4*d^2
[1,4,1,0]:	unknown -> [7] 1+a+4*a^2+4*b+4*b^2-c-4*c^2-4*d^2
[5,0,5,0]:	unknown -> [8] 5*a+4*a^2+4*b^2-5*c-4*c^2-4*d^2
[5,4,5,0]:	unknown -> [9] 1+5*a+4*a^2+4*b+4*b^2-5*c-4*c^2-4*d^2
[1,0,1,4]:	unknown -> [10] -1+a+4*a^2+4*b^2-c-4*c^2-4*d-4*d^2
[1,4,1,4]:	unknown -> [11] a+4*a^2+4*b+4*b^2-c-4*c^2-4*d-4*d^2
[5,0,5,4]:	unknown -> [12] -1+5*a+4*a^2+4*b^2-5*c-4*c^2-4*d-4*d^2
[5,4,5,4]:	unknown -> [13] 5*a+4*a^2+4*b+4*b^2-5*c-4*c^2-4*d-4*d^2
expanding queue[4]^1,meter=[2,2,2,2]*8: a + 2*a^2 + 2*b + 2*b^2 - c - 2*c^2 - 2*d - 2*d^2
solution [1,2,1,2],trivial(2)
[1,2,1,2]:	unknown -> [14] a+4*a^2+2*b+4*b^2-c-4*c^2-2*d-4*d^2
[1,6,1,2]:	negative-1 [14] by {b=>-b-1}
[5,2,5,2]:	unknown -> [15] 5*a+4*a^2+2*b+4*b^2-5*c-4*c^2-2*d-4*d^2
[5,6,5,2]:	negative-1 [15] by {b=>-b-1}
[1,2,1,6]:	negative-1 [15] by {d=>-d-1}
[1,6,1,6]:	negative-1 [15] by {b=>-b-1,d=>-d-1}
[5,2,5,6]:	negative-1 [15] by {d=>-d-1}
[5,6,5,6]:	negative-1 [15] by {b=>-b-1,d=>-d-1}
expanding queue[5]^2,meter=[2,2,2,2]*8: a + 2*a^2 + b + 2*b^2 - c - 2*c^2 - d - 2*d^2
solution [1,1,1,1],trivial(2)
[1,1,1,1]:	unknown -> [16] a+4*a^2+b+4*b^2-c-4*c^2-d-4*d^2
[5,5,1,1]:	unknown -> [17] 3+5*a+4*a^2+5*b+4*b^2-c-4*c^2-d-4*d^2
[5,1,5,1]:	unknown -> [18] 5*a+4*a^2+b+4*b^2-5*c-4*c^2-d-4*d^2
[1,5,5,1]:	transposed [18] {0/1+8*b,0/5+8*a,2/1+8*d,2/5+8*c} by 1+8*b|1+8*a 5+8*a|5+8*b
[5,1,1,5]:	transposed [18] {0/1+8*b,0/5+8*a,2/1+8*d,2/5+8*c} by 1+8*d|1+8*c 5+8*c|5+8*d
[1,5,1,5]:	transposed [18] {0/1+8*b,0/5+8*a,2/1+8*d,2/5+8*c} by 1+8*b|1+8*a 5+8*a|5+8*b 1+8*d|1+8*c 5+8*c|5+8*d
[1,1,5,5]:	unknown -> [19] -3+a+4*a^2+b+4*b^2-5*c-4*c^2-5*d-4*d^2
[5,5,5,5]:	unknown -> [20] 5*a+4*a^2+5*b+4*b^2-5*c-4*c^2-5*d-4*d^2
Maximum level 2 reached at [21]: a^2 + b^2 - c^2 - d^2
