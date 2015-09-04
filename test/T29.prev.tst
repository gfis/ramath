ExponentGCDs=[2,3]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm,invall
----------------
expanding queue[0]^-1,meter=[2,2]*2: 4 + x^2 - y^3
[0,0]:	unknown -> [1] 1+x^2-2*y^3
[1,1]:	unknown -> [2] 2+2*x+2*x^2-3*y-6*y^2-4*y^3
----------------
expanding queue[1]^0,meter=[2,2]*4: 1 + x^2 - 2*y^3
[2,2]:	unknown -> [3] x+x^2-3*y-6*y^2-4*y^3
expanding queue[2]^0,meter=[2,2]*4: 2 + 2*x + 2*x^2 - 3*y - 6*y^2 - 4*y^3
[1,1]:	unknown -> [4] 1+2*x+4*x^2-3*y-12*y^2-16*y^3
[3,1]:	negative-1 [4] by {x=>-x-1}
----------------
expanding queue[3]^1,meter=[2,2]*8: x + x^2 - 3*y - 6*y^2 - 4*y^3
solution [2,2],trivial(2)
[2,2]:	unknown -> [5] x+2*x^2-3*y-12*y^2-16*y^3
[6,2]:	negative-1 [5] by {x=>-x-1}
expanding queue[4]^2,meter=[2,2]*8: 1 + 2*x + 4*x^2 - 3*y - 12*y^2 - 16*y^3
[1,5]:	unknown -> [6] -15+2*x+8*x^2-75*y-120*y^2-64*y^3
[5,5]:	unknown -> [7] -12+10*x+8*x^2-75*y-120*y^2-64*y^3
----------------
expanding queue[5]^3,meter=[2,2]*16: x + 2*x^2 - 3*y - 12*y^2 - 16*y^3
solution [2,2],trivial(2)
[2,2]:	unknown -> [8] x+4*x^2-3*y-24*y^2-64*y^3
[10,10]:	unknown -> [9] -14+5*x+4*x^2-75*y-120*y^2-64*y^3
expanding queue[6]^4,meter=[2,2]*16:  - 15 + 2*x + 8*x^2 - 75*y - 120*y^2 - 64*y^3
[1,13]:	unknown -> [10] -137+2*x+16*x^2-507*y-624*y^2-256*y^3
[9,13]:	unknown -> [11] -132+18*x+16*x^2-507*y-624*y^2-256*y^3
expanding queue[7]^4,meter=[2,2]*16:  - 12 + 10*x + 8*x^2 - 75*y - 120*y^2 - 64*y^3
[5,5]:	unknown -> [12] -6+10*x+16*x^2-75*y-240*y^2-256*y^3
[13,5]:	unknown -> [13] 3+26*x+16*x^2-75*y-240*y^2-256*y^3
----------------
expanding queue[8]^5,meter=[2,2]*32: x + 4*x^2 - 3*y - 24*y^2 - 64*y^3
solution [2,2],trivial(2)
[2,2]:	unknown -> [14] x+8*x^2-3*y-48*y^2-256*y^3
[18,18]:	unknown -> [15] -43+9*x+8*x^2-243*y-432*y^2-256*y^3
expanding queue[9]^5,meter=[2,2]*32:  - 14 + 5*x + 4*x^2 - 75*y - 120*y^2 - 64*y^3
[10,10]:	unknown -> [16] -7+5*x+8*x^2-75*y-240*y^2-256*y^3
[26,26]:	unknown -> [17] -132+13*x+8*x^2-507*y-624*y^2-256*y^3
expanding queue[10]^6,meter=[2,2]*32:  - 137 + 2*x + 16*x^2 - 507*y - 624*y^2 - 256*y^3
[1,29]:	unknown -> [18] -762+2*x+32*x^2-2523*y-2784*y^2-1024*y^3
[17,29]:	unknown -> [19] -753+34*x+32*x^2-2523*y-2784*y^2-1024*y^3
expanding queue[11]^6,meter=[2,2]*32:  - 132 + 18*x + 16*x^2 - 507*y - 624*y^2 - 256*y^3
[9,13]:	unknown -> [20] -66+18*x+32*x^2-507*y-1248*y^2-1024*y^3
[25,13]:	unknown -> [21] -49+50*x+32*x^2-507*y-1248*y^2-1024*y^3
expanding queue[12]^7,meter=[2,2]*32:  - 6 + 10*x + 16*x^2 - 75*y - 240*y^2 - 256*y^3
[5,5]:	unknown -> [22] -3+10*x+32*x^2-75*y-480*y^2-1024*y^3
[21,5]:	unknown -> [23] 10+42*x+32*x^2-75*y-480*y^2-1024*y^3
expanding queue[13]^7,meter=[2,2]*32: 3 + 26*x + 16*x^2 - 75*y - 240*y^2 - 256*y^3
[13,21]:	unknown -> [24] -284+26*x+32*x^2-1323*y-2016*y^2-1024*y^3
[29,21]:	unknown -> [25] -263+58*x+32*x^2-1323*y-2016*y^2-1024*y^3
Maximum level 4 reached at [26]: 4 + x^2 - y^3
