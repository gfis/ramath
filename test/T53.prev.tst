TranspositionSet={[3,2,1,0],[2,3,1,0],[3,2,0,1],[2,3,0,1],[1,0,3,2],[0,1,3,2],[1,0,2,3]}
ExponentGCDs=[2,2,2,2]
Expanding for base=2, reasons+features=base,transpose,similiar,evenexp norm,invall
----------------
expanding queue[0]^-1,meter=[2,2,2,2]*2: a^2 + b^2 - c^2 - d^2
solution [0,0,0,0],trivial(3)
[0,0,0,0]:	similiar   [0], same  a^2+b^2-c^2-d^2
[1,0,1,0]:	unknown -> [1] a+a^2+b^2-c-c^2-d^2
[0,1,1,0]:	transposed [1] {a=>1+2*a,b=>2*b,c=>1+2*c,d=>2*d} by [1,0,2,3]
[1,0,0,1]:	transposed [1] {a=>1+2*a,b=>2*b,c=>1+2*c,d=>2*d} by [0,1,3,2]
[0,1,0,1]:	transposed [1] {a=>1+2*a,b=>2*b,c=>1+2*c,d=>2*d} by [1,0,3,2]
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
[1,0,1,4]:	transposed [7] {a=>1+8*a,b=>4+8*b,c=>1+8*c,d=>8*d} by [2,3,0,1]
[1,4,1,4]:	unknown -> [10] a+4*a^2+4*b+4*b^2-c-4*c^2-4*d-4*d^2
[5,0,5,4]:	transposed [9] {a=>5+8*a,b=>4+8*b,c=>5+8*c,d=>8*d} by [2,3,0,1]
[5,4,5,4]:	unknown -> [11] 5*a+4*a^2+4*b+4*b^2-5*c-4*c^2-4*d-4*d^2
expanding queue[4]^1,meter=[2,2,2,2]*8: a + 2*a^2 + 2*b + 2*b^2 - c - 2*c^2 - 2*d - 2*d^2
solution [1,2,1,2],trivial(2)
[1,2,1,2]:	unknown -> [12] a+4*a^2+2*b+4*b^2-c-4*c^2-2*d-4*d^2
[1,6,1,2]:	negative-1 [12] by {b=>-b-1}
[5,2,5,2]:	unknown -> [13] 5*a+4*a^2+2*b+4*b^2-5*c-4*c^2-2*d-4*d^2
[5,6,5,2]:	negative-1 [13] by {b=>-b-1}
[1,2,1,6]:	negative-1 [13] by {d=>-d-1}
[1,6,1,6]:	negative-1 [13] by {b=>-b-1,d=>-d-1}
[5,2,5,6]:	negative-1 [13] by {d=>-d-1}
[5,6,5,6]:	negative-1 [13] by {b=>-b-1,d=>-d-1}
expanding queue[5]^2,meter=[2,2,2,2]*8: a + 2*a^2 + b + 2*b^2 - c - 2*c^2 - d - 2*d^2
solution [1,1,1,1],trivial(2)
[1,1,1,1]:	unknown -> [14] a+4*a^2+b+4*b^2-c-4*c^2-d-4*d^2
[5,5,1,1]:	unknown -> [15] 3+5*a+4*a^2+5*b+4*b^2-c-4*c^2-d-4*d^2
[5,1,5,1]:	unknown -> [16] 5*a+4*a^2+b+4*b^2-5*c-4*c^2-d-4*d^2
[1,5,5,1]:	transposed [16] {a=>5+8*a,b=>1+8*b,c=>5+8*c,d=>1+8*d} by [1,0,2,3]
[5,1,1,5]:	transposed [16] {a=>5+8*a,b=>1+8*b,c=>5+8*c,d=>1+8*d} by [0,1,3,2]
[1,5,1,5]:	transposed [16] {a=>5+8*a,b=>1+8*b,c=>5+8*c,d=>1+8*d} by [1,0,3,2]
[1,1,5,5]:	transposed [15] {a=>5+8*a,b=>5+8*b,c=>1+8*c,d=>1+8*d} by [2,3,0,1]
[5,5,5,5]:	unknown -> [17] 5*a+4*a^2+5*b+4*b^2-5*c-4*c^2-5*d-4*d^2
Maximum level 2 reached at [18]: a^2 + b^2 - c^2 - d^2
