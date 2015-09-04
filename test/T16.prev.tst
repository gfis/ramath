TranspositionSet={[1,0,2]}
ExponentGCDs=[2,2,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp 
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a^2 + b^2 - c^2
solution [0,0,0],trivial(3)
[0,0,0]:	same form as 4*a^2+4*b^2-4*c^2
[1,0,1]:	unknown -> [1] 4*a+4*a^2+4*b^2-4*c-4*c^2
[0,1,1]:	transposed [1] {a=>1+2*a,b=>2*b,c=>1+2*c} by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 4*a + 4*a^2 + 4*b^2 - 4*c - 4*c^2
solution [1,0,1],trivial(3)
[1,0,1]:	unknown -> [2] 8*a+16*a^2+16*b^2-8*c-16*c^2
[3,0,1]:	negative-1 [2] by {a=>-a-1}
[1,0,3]:	negative-1 [2] by {c=>-c-1}
[3,0,3]:	negative-1 [2] by {a=>-a-1,c=>-c-1}
----------------
expanding queue[2]^1,meter=[2,1,2]*8: 8*a + 16*a^2 + 16*b^2 - 8*c - 16*c^2
solution [1,0,1],trivial(3)
[1,0,1]:	unknown -> [3] 16*a+64*a^2+16*b^2-16*c-64*c^2
[5,0,5]:	unknown -> [4] 80*a+64*a^2+16*b^2-80*c-64*c^2
----------------
expanding queue[3]^2,meter=[2,2,2]*16: 16*a + 64*a^2 + 16*b^2 - 16*c - 64*c^2
solution [1,0,1],trivial(3)
[1,0,1]:	unknown -> [5] 32*a+256*a^2+64*b^2-32*c-256*c^2
[9,4,1]:	unknown -> [6] 96+288*a+256*a^2+64*b+64*b^2-32*c-256*c^2
[9,0,9]:	unknown -> [7] 288*a+256*a^2+64*b^2-288*c-256*c^2
[1,4,9]:	unknown -> [8] -64+32*a+256*a^2+64*b+64*b^2-288*c-256*c^2
expanding queue[4]^2,meter=[2,2,2]*16: 80*a + 64*a^2 + 16*b^2 - 80*c - 64*c^2
solution [5,0,5],trivial(3)
[5,0,5]:	unknown -> [9] 160*a+256*a^2+64*b^2-160*c-256*c^2
[13,4,5]:	unknown -> [10] 160+416*a+256*a^2+64*b+64*b^2-160*c-256*c^2
[13,0,13]:	unknown -> [11] 416*a+256*a^2+64*b^2-416*c-256*c^2
[5,4,13]:	unknown -> [12] -128+160*a+256*a^2+64*b+64*b^2-416*c-256*c^2
----------------
expanding queue[5]^3,meter=[2,1,2]*32: 32*a + 256*a^2 + 64*b^2 - 32*c - 256*c^2
solution [1,0,1],trivial(3)
[1,0,1]:	unknown -> [13] 64*a+1024*a^2+64*b^2-64*c-1024*c^2
[17,0,17]:	unknown -> [14] 1088*a+1024*a^2+64*b^2-1088*c-1024*c^2
expanding queue[6]^3,meter=[2,1,2]*32: 96 + 288*a + 256*a^2 + 64*b + 64*b^2 - 32*c - 256*c^2
[25,4,1]:	unknown -> [15] 640+1600*a+1024*a^2+64*b+64*b^2-64*c-1024*c^2
[9,4,17]:	unknown -> [16] -192+576*a+1024*a^2+64*b+64*b^2-1088*c-1024*c^2
expanding queue[7]^3,meter=[2,1,2]*32: 288*a + 256*a^2 + 64*b^2 - 288*c - 256*c^2
solution [9,0,9],trivial(3)
[9,0,9]:	unknown -> [17] 576*a+1024*a^2+64*b^2-576*c-1024*c^2
[25,0,25]:	unknown -> [18] 1600*a+1024*a^2+64*b^2-1600*c-1024*c^2
expanding queue[8]^3,meter=[2,1,2]*32:  - 64 + 32*a + 256*a^2 + 64*b + 64*b^2 - 288*c - 256*c^2
[1,4,9]:	unknown -> [19] -64+64*a+1024*a^2+64*b+64*b^2-576*c-1024*c^2
[17,4,25]:	unknown -> [20] -320+1088*a+1024*a^2+64*b+64*b^2-1600*c-1024*c^2
expanding queue[9]^4,meter=[2,1,2]*32: 160*a + 256*a^2 + 64*b^2 - 160*c - 256*c^2
solution [5,0,5],trivial(3)
[5,0,5]:	unknown -> [21] 320*a+1024*a^2+64*b^2-320*c-1024*c^2
[21,0,21]:	unknown -> [22] 1344*a+1024*a^2+64*b^2-1344*c-1024*c^2
expanding queue[10]^4,meter=[2,1,2]*32: 160 + 416*a + 256*a^2 + 64*b + 64*b^2 - 160*c - 256*c^2
[29,4,5]:	unknown -> [23] 832+1856*a+1024*a^2+64*b+64*b^2-320*c-1024*c^2
[13,4,21]:	unknown -> [24] -256+832*a+1024*a^2+64*b+64*b^2-1344*c-1024*c^2
expanding queue[11]^4,meter=[2,1,2]*32: 416*a + 256*a^2 + 64*b^2 - 416*c - 256*c^2
solution [13,0,13],trivial(3)
[13,0,13]:	unknown -> [25] 832*a+1024*a^2+64*b^2-832*c-1024*c^2
[29,0,29]:	unknown -> [26] 1856*a+1024*a^2+64*b^2-1856*c-1024*c^2
expanding queue[12]^4,meter=[2,1,2]*32:  - 128 + 160*a + 256*a^2 + 64*b + 64*b^2 - 416*c - 256*c^2
[5,4,13]:	unknown -> [27] -128+320*a+1024*a^2+64*b+64*b^2-832*c-1024*c^2
[21,4,29]:	unknown -> [28] -384+1344*a+1024*a^2+64*b+64*b^2-1856*c-1024*c^2
Maximum level 4 reached at [29]: a^2 + b^2 - c^2
