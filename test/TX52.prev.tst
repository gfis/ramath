TranspositionSet={[1,0,2]}
isHomogeneous
ExponentGCDs=[3,3,3]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x³+y³-2z³
-> solution [0,0,0],trivial(3) [1,1,1],trivial(2)
----------------
expanding queue[0]^-1,meter=[2,2,1]*2: x³+y³-2z³
[0+2x,0+2y,0+1z]:	unknown -> [1] 4x³+4y³-z³
-> solution [0,0,0],trivial(3)
[1+2x,1+2y,0+1z]:	unknown -> [2] 3x+6x²+4x³+3y+6y²+4y³-z³+1
-> solution [1,1,1],trivial(2)
----------------
expanding queue[1]^0,meter=[1,1,2]*4: 4x³+4y³-z³
[0+2x,0+2y,0+2z]:	non-primitive
-> solution [0,0,0],trivial(3) [2,2,2],trivial(2)
expanding queue[2]^0,meter=[2,2,2]*4: 3x+6x²+4x³+3y+6y²+4y³-z³+1
[3+4x,1+4y,0+2z]:	unknown -> [3] 27x+36x²+16x³+3y+12y²+16y³-4z³+7
[1+4x,3+4y,0+2z]:	transposed [3] by [1,0,2]
[1+4x,1+4y,1+2z]:	unknown -> [4] 3x+12x²+16x³+3y+12y²+16y³-3z-6z²-4z³
-> solution [1,1,1],trivial(2)
[3+4x,3+4y,1+2z]:	unknown -> [5] 27x+36x²+16x³+27y+36y²+16y³-3z-6z²-4z³+13
-> solution [3,3,3],trivial(2)
----------------
expanding queue[3]^2,meter=[2,2,1]*8: 27x+36x²+16x³+3y+12y²+16y³-4z³+7
[7+8x,1+8y,0+2z]:	unknown -> [6] 147x+168x²+64x³+3y+24y²+64y³-2z³+43
[3+8x,5+8y,0+2z]:	unknown -> [7] 27x+72x²+64x³+75y+120y²+64y³-2z³+19
expanding queue[4]^2,meter=[2,2,2]*8: 3x+12x²+16x³+3y+12y²+16y³-3z-6z²-4z³
[1+8x,1+8y,1+4z]:	unknown -> [8] 3x+24x²+64x³+3y+24y²+64y³-3z-12z²-16z³
-> solution [1,1,1],trivial(2)
[5+8x,5+8y,1+4z]:	unknown -> [9] 75x+120x²+64x³+75y+120y²+64y³-3z-12z²-16z³+31
-> solution [5,5,5],trivial(2)
[5+8x,1+8y,3+4z]:	unknown -> [10] 75x+120x²+64x³+3y+24y²+64y³-27z-36z²-16z³+9
[1+8x,5+8y,3+4z]:	transposed [10] by [1,0,2]
expanding queue[5]^2,meter=[2,2,2]*8: 27x+36x²+16x³+27y+36y²+16y³-3z-6z²-4z³+13
[7+8x,3+8y,1+4z]:	unknown -> [11] 147x+168x²+64x³+27y+72y²+64y³-3z-12z²-16z³+46
[3+8x,7+8y,1+4z]:	transposed [11] by [1,0,2]
[3+8x,3+8y,3+4z]:	unknown -> [12] 27x+72x²+64x³+27y+72y²+64y³-27z-36z²-16z³
-> solution [3,3,3],trivial(2)
[7+8x,7+8y,3+4z]:	unknown -> [13] 147x+168x²+64x³+147y+168y²+64y³-27z-36z²-16z³+79
-> solution [7,7,7],trivial(2)
----------------
expanding queue[6]^3,meter=[2,2,1]*16: 147x+168x²+64x³+3y+24y²+64y³-2z³+43
[15+16x,1+16y,0+2z]:	unknown -> [14] 675x+720x²+256x³+3y+48y²+256y³-z³+211
[7+16x,9+16y,0+2z]:	unknown -> [15] 147x+336x²+256x³+243y+432y²+256y³-z³+67
expanding queue[7]^3,meter=[2,2,1]*16: 27x+72x²+64x³+75y+120y²+64y³-2z³+19
[11+16x,5+16y,0+2z]:	unknown -> [16] 363x+528x²+256x³+75y+240y²+256y³-z³+91
[3+16x,13+16y,0+2z]:	unknown -> [17] 27x+144x²+256x³+507y+624y²+256y³-z³+139
expanding queue[8]^4,meter=[2,2,2]*16: 3x+24x²+64x³+3y+24y²+64y³-3z-12z²-16z³
[1+16x,1+16y,1+8z]:	unknown -> [18] 3x+48x²+256x³+3y+48y²+256y³-3z-24z²-64z³
-> solution [1,1,1],trivial(2)
[9+16x,9+16y,1+8z]:	unknown -> [19] 243x+432x²+256x³+243y+432y²+256y³-3z-24z²-64z³+91
-> solution [9,9,9],trivial(2)
[9+16x,1+16y,5+8z]:	unknown -> [20] 243x+432x²+256x³+3y+48y²+256y³-75z-120z²-64z³+30
[1+16x,9+16y,5+8z]:	transposed [20] by [1,0,2]
expanding queue[9]^4,meter=[2,2,2]*16: 75x+120x²+64x³+75y+120y²+64y³-3z-12z²-16z³+31
[13+16x,5+16y,1+8z]:	unknown -> [21] 507x+624x²+256x³+75y+240y²+256y³-3z-24z²-64z³+145
[5+16x,13+16y,1+8z]:	transposed [21] by [1,0,2]
[5+16x,5+16y,5+8z]:	unknown -> [22] 75x+240x²+256x³+75y+240y²+256y³-75z-120z²-64z³
-> solution [5,5,5],trivial(2)
[13+16x,13+16y,5+8z]:	unknown -> [23] 507x+624x²+256x³+507y+624y²+256y³-75z-120z²-64z³+259
-> solution [13,13,13],trivial(2)
expanding queue[10]^4,meter=[2,2,2]*16: 75x+120x²+64x³+3y+24y²+64y³-27z-36z²-16z³+9
[13+16x,1+16y,3+8z]:	unknown -> [24] 507x+624x²+256x³+3y+48y²+256y³-27z-72z²-64z³+134
[5+16x,9+16y,3+8z]:	unknown -> [25] 75x+240x²+256x³+243y+432y²+256y³-27z-72z²-64z³+50
[5+16x,1+16y,7+8z]:	unknown -> [26] 75x+240x²+256x³+3y+48y²+256y³-147z-168z²-64z³-35
[13+16x,9+16y,7+8z]:	unknown -> [27] 507x+624x²+256x³+243y+432y²+256y³-147z-168z²-64z³+140
expanding queue[11]^5,meter=[2,2,2]*16: 147x+168x²+64x³+27y+72y²+64y³-3z-12z²-16z³+46
[7+16x,3+16y,1+8z]:	unknown -> [28] 147x+336x²+256x³+27y+144y²+256y³-3z-24z²-64z³+23
[15+16x,11+16y,1+8z]:	unknown -> [29] 675x+720x²+256x³+363y+528y²+256y³-3z-24z²-64z³+294
[15+16x,3+16y,5+8z]:	unknown -> [30] 675x+720x²+256x³+27y+144y²+256y³-75z-120z²-64z³+197
[7+16x,11+16y,5+8z]:	unknown -> [31] 147x+336x²+256x³+363y+528y²+256y³-75z-120z²-64z³+89
expanding queue[12]^5,meter=[2,2,2]*16: 27x+72x²+64x³+27y+72y²+64y³-27z-36z²-16z³
[3+16x,3+16y,3+8z]:	unknown -> [32] 27x+144x²+256x³+27y+144y²+256y³-27z-72z²-64z³
-> solution [3,3,3],trivial(2)
[11+16x,11+16y,3+8z]:	unknown -> [33] 363x+528x²+256x³+363y+528y²+256y³-27z-72z²-64z³+163
-> solution [11,11,11],trivial(2)
[11+16x,3+16y,7+8z]:	unknown -> [34] 363x+528x²+256x³+27y+144y²+256y³-147z-168z²-64z³+42
[3+16x,11+16y,7+8z]:	transposed [34] by [1,0,2]
expanding queue[13]^5,meter=[2,2,2]*16: 147x+168x²+64x³+147y+168y²+64y³-27z-36z²-16z³+79
[15+16x,7+16y,3+8z]:	unknown -> [35] 675x+720x²+256x³+147y+336y²+256y³-27z-72z²-64z³+229
[7+16x,15+16y,3+8z]:	transposed [35] by [1,0,2]
[7+16x,7+16y,7+8z]:	unknown -> [36] 147x+336x²+256x³+147y+336y²+256y³-147z-168z²-64z³
-> solution [7,7,7],trivial(2)
[15+16x,15+16y,7+8z]:	unknown -> [37] 675x+720x²+256x³+675y+720y²+256y³-147z-168z²-64z³+379
-> solution [15,15,15],trivial(2)
Maximum level 3 [38] mod 2: x³+y³-2z³
