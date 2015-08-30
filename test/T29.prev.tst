Expanding for base=2, reasons+features=base,similiar,evenexp norm,invall
exponentGCDs=[2,3], transposables={{x},{y}}
----------------
expanding queue[0]^-1: 4 + x^2 - y^3 meter=[2,2] *2
[0+2*x,0+2*y]:	unknown -> [1] 1+x^2-2*y^3
[1+2*x,1+2*y]:	unknown -> [2] 2+2*x+2*x^2-3*y-6*y^2-4*y^3
----------------
expanding queue[1]^0: 1 + x^2 - 2*y^3 meter=[2,2] *4
[2+4*x,2+4*y]:	unknown -> [3] x+x^2-3*y-6*y^2-4*y^3
expanding queue[2]^0: 2 + 2*x + 2*x^2 - 3*y - 6*y^2 - 4*y^3 meter=[2,2] *4
[1+4*x,1+4*y]:	unknown -> [4] 1+2*x+4*x^2-3*y-12*y^2-16*y^3
[3+4*x,1+4*y]:	negative-1 [4] by {x=>-x-1}
----------------
expanding queue[3]^1: x + x^2 - 3*y - 6*y^2 - 4*y^3 meter=[2,2] *8
solution [2,2],trivial(2)
[2+8*x,2+8*y]:	unknown -> [5] x+2*x^2-3*y-12*y^2-16*y^3
[6+8*x,2+8*y]:	negative-1 [5] by {x=>-x-1}
expanding queue[4]^2: 1 + 2*x + 4*x^2 - 3*y - 12*y^2 - 16*y^3 meter=[2,2] *8
[1+8*x,5+8*y]:	unknown -> [6] -15+2*x+8*x^2-75*y-120*y^2-64*y^3
[5+8*x,5+8*y]:	unknown -> [7] -12+10*x+8*x^2-75*y-120*y^2-64*y^3
----------------
expanding queue[5]^3: x + 2*x^2 - 3*y - 12*y^2 - 16*y^3 meter=[2,2] *16
solution [2,2],trivial(2)
[2+16*x,2+16*y]:	unknown -> [8] x+4*x^2-3*y-24*y^2-64*y^3
[10+16*x,10+16*y]:	unknown -> [9] -14+5*x+4*x^2-75*y-120*y^2-64*y^3
expanding queue[6]^4:  - 15 + 2*x + 8*x^2 - 75*y - 120*y^2 - 64*y^3 meter=[2,2] *16
[1+16*x,13+16*y]:	unknown -> [10] -137+2*x+16*x^2-507*y-624*y^2-256*y^3
[9+16*x,13+16*y]:	unknown -> [11] -132+18*x+16*x^2-507*y-624*y^2-256*y^3
expanding queue[7]^4:  - 12 + 10*x + 8*x^2 - 75*y - 120*y^2 - 64*y^3 meter=[2,2] *16
[5+16*x,5+16*y]:	unknown -> [12] -6+10*x+16*x^2-75*y-240*y^2-256*y^3
[13+16*x,5+16*y]:	unknown -> [13] 3+26*x+16*x^2-75*y-240*y^2-256*y^3
----------------
expanding queue[8]^5: x + 4*x^2 - 3*y - 24*y^2 - 64*y^3 meter=[2,2] *32
solution [2,2],trivial(2)
[2+32*x,2+32*y]:	unknown -> [14] x+8*x^2-3*y-48*y^2-256*y^3
[18+32*x,18+32*y]:	unknown -> [15] -43+9*x+8*x^2-243*y-432*y^2-256*y^3
expanding queue[9]^5:  - 14 + 5*x + 4*x^2 - 75*y - 120*y^2 - 64*y^3 meter=[2,2] *32
[10+32*x,10+32*y]:	unknown -> [16] -7+5*x+8*x^2-75*y-240*y^2-256*y^3
[26+32*x,26+32*y]:	unknown -> [17] -132+13*x+8*x^2-507*y-624*y^2-256*y^3
expanding queue[10]^6:  - 137 + 2*x + 16*x^2 - 507*y - 624*y^2 - 256*y^3 meter=[2,2] *32
[1+32*x,29+32*y]:	unknown -> [18] -762+2*x+32*x^2-2523*y-2784*y^2-1024*y^3
[17+32*x,29+32*y]:	unknown -> [19] -753+34*x+32*x^2-2523*y-2784*y^2-1024*y^3
expanding queue[11]^6:  - 132 + 18*x + 16*x^2 - 507*y - 624*y^2 - 256*y^3 meter=[2,2] *32
[9+32*x,13+32*y]:	unknown -> [20] -66+18*x+32*x^2-507*y-1248*y^2-1024*y^3
[25+32*x,13+32*y]:	unknown -> [21] -49+50*x+32*x^2-507*y-1248*y^2-1024*y^3
expanding queue[12]^7:  - 6 + 10*x + 16*x^2 - 75*y - 240*y^2 - 256*y^3 meter=[2,2] *32
[5+32*x,5+32*y]:	unknown -> [22] -3+10*x+32*x^2-75*y-480*y^2-1024*y^3
[21+32*x,5+32*y]:	unknown -> [23] 10+42*x+32*x^2-75*y-480*y^2-1024*y^3
expanding queue[13]^7: 3 + 26*x + 16*x^2 - 75*y - 240*y^2 - 256*y^3 meter=[2,2] *32
[13+32*x,21+32*y]:	unknown -> [24] -284+26*x+32*x^2-1323*y-2016*y^2-1024*y^3
[29+32*x,21+32*y]:	unknown -> [25] -263+58*x+32*x^2-1323*y-2016*y^2-1024*y^3
Maximum level 4 reached at [26]: 4 + x^2 - y^3
