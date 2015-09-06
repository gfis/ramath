ExponentGCDs=[2,3]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm,invall
Refined variables=x,y
----------------
expanding queue[0]^-1,meter=[2,2]*2: 4+x^2-y^3
[0+2x,0+2y]:	unknown -> [1] 1+x^2-2y^3
[1+2x,1+2y]:	unknown -> [2] 2+2x+2x^2-3y-6y^2-4y^3
----------------
expanding queue[1]^0,meter=[2,2]*4: 1+x^2-2y^3
[2+4x,2+4y]:	unknown -> [3] x+x^2-3y-6y^2-4y^3
expanding queue[2]^0,meter=[2,2]*4: 2+2x+2x^2-3y-6y^2-4y^3
[1+4x,1+4y]:	unknown -> [4] 1+2x+4x^2-3y-12y^2-16y^3
[3+4x,1+4y]:	negative-1 [4] by {x=>-x-1}
----------------
expanding queue[3]^1,meter=[2,2]*8: x+x^2-3y-6y^2-4y^3
solution [2,2],trivial(2)
[2+8x,2+8y]:	unknown -> [5] x+2x^2-3y-12y^2-16y^3
[6+8x,2+8y]:	negative-1 [5] by {x=>-x-1}
expanding queue[4]^2,meter=[2,2]*8: 1+2x+4x^2-3y-12y^2-16y^3
[1+8x,5+8y]:	unknown -> [6] -15+2x+8x^2-75y-120y^2-64y^3
[5+8x,5+8y]:	unknown -> [7] -12+10x+8x^2-75y-120y^2-64y^3
----------------
expanding queue[5]^3,meter=[2,2]*16: x+2x^2-3y-12y^2-16y^3
solution [2,2],trivial(2)
[2+16x,2+16y]:	unknown -> [8] x+4x^2-3y-24y^2-64y^3
[10+16x,10+16y]:	unknown -> [9] -14+5x+4x^2-75y-120y^2-64y^3
expanding queue[6]^4,meter=[2,2]*16: -15+2x+8x^2-75y-120y^2-64y^3
[1+16x,13+16y]:	unknown -> [10] -137+2x+16x^2-507y-624y^2-256y^3
[9+16x,13+16y]:	unknown -> [11] -132+18x+16x^2-507y-624y^2-256y^3
expanding queue[7]^4,meter=[2,2]*16: -12+10x+8x^2-75y-120y^2-64y^3
[5+16x,5+16y]:	unknown -> [12] -6+10x+16x^2-75y-240y^2-256y^3
[13+16x,5+16y]:	unknown -> [13] 3+26x+16x^2-75y-240y^2-256y^3
----------------
expanding queue[8]^5,meter=[2,2]*32: x+4x^2-3y-24y^2-64y^3
solution [2,2],trivial(2)
[2+32x,2+32y]:	unknown -> [14] x+8x^2-3y-48y^2-256y^3
[18+32x,18+32y]:	unknown -> [15] -43+9x+8x^2-243y-432y^2-256y^3
expanding queue[9]^5,meter=[2,2]*32: -14+5x+4x^2-75y-120y^2-64y^3
[10+32x,10+32y]:	unknown -> [16] -7+5x+8x^2-75y-240y^2-256y^3
[26+32x,26+32y]:	unknown -> [17] -132+13x+8x^2-507y-624y^2-256y^3
expanding queue[10]^6,meter=[2,2]*32: -137+2x+16x^2-507y-624y^2-256y^3
[1+32x,29+32y]:	unknown -> [18] -762+2x+32x^2-2523y-2784y^2-1024y^3
[17+32x,29+32y]:	unknown -> [19] -753+34x+32x^2-2523y-2784y^2-1024y^3
expanding queue[11]^6,meter=[2,2]*32: -132+18x+16x^2-507y-624y^2-256y^3
[9+32x,13+32y]:	unknown -> [20] -66+18x+32x^2-507y-1248y^2-1024y^3
[25+32x,13+32y]:	unknown -> [21] -49+50x+32x^2-507y-1248y^2-1024y^3
expanding queue[12]^7,meter=[2,2]*32: -6+10x+16x^2-75y-240y^2-256y^3
[5+32x,5+32y]:	unknown -> [22] -3+10x+32x^2-75y-480y^2-1024y^3
[21+32x,5+32y]:	unknown -> [23] 10+42x+32x^2-75y-480y^2-1024y^3
expanding queue[13]^7,meter=[2,2]*32: 3+26x+16x^2-75y-240y^2-256y^3
[13+32x,21+32y]:	unknown -> [24] -284+26x+32x^2-1323y-2016y^2-1024y^3
[29+32x,21+32y]:	unknown -> [25] -263+58x+32x^2-1323y-2016y^2-1024y^3
Maximum level 4 reached at [26]: 4+x^2-y^3
