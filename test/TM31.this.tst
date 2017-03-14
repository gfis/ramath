TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar igtriv,invall,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-3x*y*z+z²
----------------
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-3x*y*z+z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] x²+y²-6x*y*z+z²
[1+2x,1+2y,0+2z]:	unknown -> [2] [1,1,0] 2x+2x²+2y+2y²-3z-6x*z-6y*z-12x*y*z+2z²+1
[1+2x,0+2y,1+2z]:	transposed [2] by [0,2,1]
[0+2x,1+2y,1+2z]:	transposed [2] by [2,0,1]
[1+2x,1+2y,1+2z]:	unknown -> [3] [1,1,1] x-2x²+y+6x*y-2y²+z+6x*z+6y*z+12x*y*z-2z²
----------------
expanding queue[1]^0,meter=[2,2,2]: x²+y²-6x*y*z+z²
[0+4x,0+4y,0+4z]:	unknown -> [4] [0,0,0] x²+y²-12x*y*z+z²
expanding queue[2]^0,meter=[2,2,2]: 2x+2x²+2y+2y²-3z-6x*z-6y*z-12x*y*z+2z²+1
[1+4x,1+4y,2+4z]:	unknown -> [5] [0,0,1] 4x-4x²+4y+24x*y-4y²-z+12x*z+12y*z+48x*y*z-4z²
-> solution [5,1,2],NONTRIVIAL [1,5,2],NONTRIVIAL
[3+4x,1+4y,2+4z]:	unknown -> [6] [1,0,1] 4x²-16y-24x*y+4y²-5z-12x*z-36y*z-48x*y*z+4z²-1
[1+4x,3+4y,2+4z]:	transposed [6] by [1,0,2]
[3+4x,3+4y,2+4z]:	unknown -> [7] [1,1,1] 12x-4x²+12y+24x*y-4y²+23z+36x*z+36y*z+48x*y*z-4z²+8
expanding queue[3]^0,meter=[2,2,2]: x-2x²+y+6x*y-2y²+z+6x*z+6y*z+12x*y*z-2z²
[1+4x,1+4y,1+4z]:	unknown -> [8] [0,0,0] x-4x²+y+12x*y-4y²+z+12x*z+12y*z+48x*y*z-4z²
[3+4x,3+4y,1+4z]:	unknown -> [9] [1,1,0] 3x-4x²+3y+12x*y-4y²+25z+36x*z+36y*z+48x*y*z-4z²+2
[3+4x,1+4y,3+4z]:	transposed [9] by [0,2,1]
[1+4x,3+4y,3+4z]:	transposed [9] by [2,0,1]
----------------
expanding queue[4]^1,meter=[2,2,2]: x²+y²-12x*y*z+z²
[0+8x,0+8y,0+8z]:	unknown -> [10] [0,0,0] x²+y²-24x*y*z+z²
expanding queue[5]^2,meter=[2,2,2]: 4x-4x²+4y+24x*y-4y²-z+12x*z+12y*z+48x*y*z-4z²
[1+8x,1+8y,2+8z]:	unknown -> [11] [0,0,0] 4x-8x²+4y+48x*y-8y²-z+24x*z+24y*z+192x*y*z-8z²
[5+8x,1+8y,2+8z]:	unknown -> [12] [1,0,0] 4x+8x²-28y-48x*y+8y²-11z-24x*z-120y*z-192x*y*z+8z²
-> solution [5,1,2],NONTRIVIAL
[1+8x,5+8y,2+8z]:	transposed [12] by [1,0,2]
[5+8x,5+8y,2+8z]:	unknown -> [13] [1,1,0] 20x-8x²+20y+48x*y-8y²+71z+120x*z+120y*z+192x*y*z-8z²+12
expanding queue[6]^2,meter=[2,2,2]: 4x²-16y-24x*y+4y²-5z-12x*z-36y*z-48x*y*z+4z²-1
[3+8x,1+8y,6+8z]:	unknown -> [14] [0,0,1] 12x-8x²+52y+144x*y-8y²-3z+24x*z+72y*z+192x*y*z-8z²+1
[7+8x,1+8y,6+8z]:	unknown -> [15] [1,0,1] 4x-8x²+124y+144x*y-8y²+9z+24x*z+168y*z+192x*y*z-8z²+5
[3+8x,5+8y,6+8z]:	unknown -> [16] [0,1,1] 84x-8x²+44y+144x*y-8y²+33z+120x*z+72y*z+192x*y*z-8z²+25
[7+8x,5+8y,6+8z]:	unknown -> [17] [1,1,1] 76x-8x²+116y+144x*y-8y²+93z+120x*z+168y*z+192x*y*z-8z²+65
expanding queue[7]^2,meter=[2,2,2]: 12x-4x²+12y+24x*y-4y²+23z+36x*z+36y*z+48x*y*z-4z²+8
[3+8x,3+8y,2+8z]:	unknown -> [18] [0,0,0] 12x-8x²+12y+48x*y-8y²+23z+72x*z+72y*z+192x*y*z-8z²+4
[7+8x,3+8y,2+8z]:	unknown -> [19] [1,0,0] 4x-8x²+36y+48x*y-8y²+59z+72x*z+168y*z+192x*y*z-8z²+8
[3+8x,7+8y,2+8z]:	transposed [19] by [1,0,2]
[7+8x,7+8y,2+8z]:	unknown -> [20] [1,1,0] 28x-8x²+28y+48x*y-8y²+143z+168x*z+168y*z+192x*y*z-8z²+24
expanding queue[8]^3,meter=[2,2,2]: x-4x²+y+12x*y-4y²+z+12x*z+12y*z+48x*y*z-4z²
[1+8x,1+8y,1+8z]:	unknown -> [21] [0,0,0] x-8x²+y+24x*y-8y²+z+24x*z+24y*z+192x*y*z-8z²
[5+8x,5+8y,1+8z]:	unknown -> [22] [1,1,0] 5x-8x²+5y+24x*y-8y²+73z+120x*z+120y*z+192x*y*z-8z²+3
-> solution [13,5,1],NONTRIVIAL [5,13,1],NONTRIVIAL
[5+8x,1+8y,5+8z]:	transposed [22] by [0,2,1]
[1+8x,5+8y,5+8z]:	transposed [22] by [2,0,1]
expanding queue[9]^3,meter=[2,2,2]: 3x-4x²+3y+12x*y-4y²+25z+36x*z+36y*z+48x*y*z-4z²+2
[3+8x,3+8y,1+8z]:	unknown -> [23] [0,0,0] 3x-8x²+3y+24x*y-8y²+25z+72x*z+72y*z+192x*y*z-8z²+1
[7+8x,7+8y,1+8z]:	unknown -> [24] [1,1,0] 7x-8x²+7y+24x*y-8y²+145z+168x*z+168y*z+192x*y*z-8z²+6
[7+8x,3+8y,5+8z]:	unknown -> [25] [1,0,1] 31x-8x²+99y+120x*y-8y²+53z+72x*z+168y*z+192x*y*z-8z²+29
[3+8x,7+8y,5+8z]:	transposed [25] by [1,0,2]
----------------
expanding queue[10]^4,meter=[2,2,2]: x²+y²-24x*y*z+z²
[0+16x,0+16y,0+16z]:	unknown -> [26] [0,0,0] x²+y²-48x*y*z+z²
expanding queue[11]^5,meter=[2,2,2]: 4x-8x²+4y+48x*y-8y²-z+24x*z+24y*z+192x*y*z-8z²
[1+16x,1+16y,2+16z]:	unknown -> [27] [0,0,0] 4x-16x²+4y+96x*y-16y²-z+48x*z+48y*z+768x*y*z-16z²
[9+16x,1+16y,2+16z]:	unknown -> [28] [1,0,0] 12x+16x²-52y-96x*y+16y²-23z-48x*z-432y*z-768x*y*z+16z²+2
[1+16x,9+16y,2+16z]:	transposed [28] by [1,0,2]
[9+16x,9+16y,2+16z]:	unknown -> [29] [1,1,0] 36x-16x²+36y+96x*y-16y²+239z+432x*z+432y*z+768x*y*z-16z²+20
expanding queue[12]^5,meter=[2,2,2]: 4x+8x²-28y-48x*y+8y²-11z-24x*z-120y*z-192x*y*z+8z²
[5+16x,1+16y,2+16z]:	unknown -> [30] [0,0,0] 4x+16x²-28y-96x*y+16y²-11z-48x*z-240y*z-768x*y*z+16z²
-> solution [5,1,2],NONTRIVIAL
[13+16x,1+16y,2+16z]:	unknown -> [31] [1,0,0] 20x+16x²-76y-96x*y+16y²-35z-48x*z-624y*z-768x*y*z+16z²+6
[5+16x,9+16y,2+16z]:	unknown -> [32] [0,1,0] 44x-16x²+12y+96x*y-16y²+131z+432x*z+240y*z+768x*y*z-16z²+10
[13+16x,9+16y,2+16z]:	unknown -> [33] [1,1,0] 28x-16x²+60y+96x*y-16y²+347z+432x*z+624y*z+768x*y*z-16z²+28
expanding queue[13]^5,meter=[2,2,2]: 20x-8x²+20y+48x*y-8y²+71z+120x*z+120y*z+192x*y*z-8z²+12
[5+16x,5+16y,2+16z]:	unknown -> [34] [0,0,0] 20x-16x²+20y+96x*y-16y²+71z+240x*z+240y*z+768x*y*z-16z²+6
[13+16x,5+16y,2+16z]:	unknown -> [35] [1,0,0] 4x-16x²+68y+96x*y-16y²+191z+240x*z+624y*z+768x*y*z-16z²+12
-> solution [29,5,2],NONTRIVIAL
[5+16x,13+16y,2+16z]:	transposed [35] by [1,0,2]
[13+16x,13+16y,2+16z]:	unknown -> [36] [1,1,0] 52x-16x²+52y+96x*y-16y²+503z+624x*z+624y*z+768x*y*z-16z²+42
expanding queue[14]^6,meter=[2,2,2]: 12x-8x²+52y+144x*y-8y²-3z+24x*z+72y*z+192x*y*z-8z²+1
[3+16x,1+16y,14+16z]:	unknown -> [37] [0,0,1] 36x-16x²+124y+672x*y-16y²-19z+48x*z+144y*z+768x*y*z-16z²-5
[11+16x,1+16y,14+16z]:	unknown -> [38] [1,0,1] 20x-16x²+460y+672x*y-16y²+5z+48x*z+528y*z+768x*y*z-16z²+9
[3+16x,9+16y,14+16z]:	unknown -> [39] [0,1,1] 372x-16x²+108y+672x*y-16y²+53z+432x*z+144y*z+768x*y*z-16z²+53
[11+16x,9+16y,14+16z]:	unknown -> [40] [1,1,1] 356x-16x²+444y+672x*y-16y²+269z+432x*z+528y*z+768x*y*z-16z²+235
expanding queue[15]^6,meter=[2,2,2]: 4x-8x²+124y+144x*y-8y²+9z+24x*z+168y*z+192x*y*z-8z²+5
[7+16x,1+16y,14+16z]:	unknown -> [41] [0,0,1] 28x-16x²+292y+672x*y-16y²-7z+48x*z+336y*z+768x*y*z-16z²+3
[15+16x,1+16y,14+16z]:	unknown -> [42] [1,0,1] 12x-16x²+628y+672x*y-16y²+17z+48x*z+720y*z+768x*y*z-16z²+13
[7+16x,9+16y,14+16z]:	unknown -> [43] [0,1,1] 364x-16x²+276y+672x*y-16y²+161z+432x*z+336y*z+768x*y*z-16z²+145
[15+16x,9+16y,14+16z]:	unknown -> [44] [1,1,1] 348x-16x²+612y+672x*y-16y²+377z+432x*z+720y*z+768x*y*z-16z²+323
expanding queue[16]^6,meter=[2,2,2]: 84x-8x²+44y+144x*y-8y²+33z+120x*z+72y*z+192x*y*z-8z²+25
[3+16x,5+16y,14+16z]:	unknown -> [45] [0,0,1] 204x-16x²+116y+672x*y-16y²+17z+240x*z+144y*z+768x*y*z-16z²+25
[11+16x,5+16y,14+16z]:	unknown -> [46] [1,0,1] 188x-16x²+452y+672x*y-16y²+137z+240x*z+528y*z+768x*y*z-16z²+123
[3+16x,13+16y,14+16z]:	unknown -> [47] [0,1,1] 540x-16x²+100y+672x*y-16y²+89z+624x*z+144y*z+768x*y*z-16z²+79
[11+16x,13+16y,14+16z]:	unknown -> [48] [1,1,1] 524x-16x²+436y+672x*y-16y²+401z+624x*z+528y*z+768x*y*z-16z²+345
expanding queue[17]^6,meter=[2,2,2]: 76x-8x²+116y+144x*y-8y²+93z+120x*z+168y*z+192x*y*z-8z²+65
[7+16x,5+16y,14+16z]:	unknown -> [49] [0,0,1] 196x-16x²+284y+672x*y-16y²+77z+240x*z+336y*z+768x*y*z-16z²+75
[15+16x,5+16y,14+16z]:	unknown -> [50] [1,0,1] 180x-16x²+620y+672x*y-16y²+197z+240x*z+720y*z+768x*y*z-16z²+169
[7+16x,13+16y,14+16z]:	unknown -> [51] [0,1,1] 532x-16x²+268y+672x*y-16y²+245z+624x*z+336y*z+768x*y*z-16z²+213
[15+16x,13+16y,14+16z]:	unknown -> [52] [1,1,1] 516x-16x²+604y+672x*y-16y²+557z+624x*z+720y*z+768x*y*z-16z²+475
expanding queue[18]^7,meter=[2,2,2]: 12x-8x²+12y+48x*y-8y²+23z+72x*z+72y*z+192x*y*z-8z²+4
[3+16x,3+16y,2+16z]:	unknown -> [53] [0,0,0] 12x-16x²+12y+96x*y-16y²+23z+144x*z+144y*z+768x*y*z-16z²+2
[11+16x,3+16y,2+16z]:	unknown -> [54] [1,0,0] 4x+16x²-60y-96x*y+16y²-95z-144x*z-528y*z-768x*y*z+16z²-4
[3+16x,11+16y,2+16z]:	transposed [54] by [1,0,2]
[11+16x,11+16y,2+16z]:	unknown -> [55] [1,1,0] 44x-16x²+44y+96x*y-16y²+359z+528x*z+528y*z+768x*y*z-16z²+30
expanding queue[19]^7,meter=[2,2,2]: 4x-8x²+36y+48x*y-8y²+59z+72x*z+168y*z+192x*y*z-8z²+8
[7+16x,3+16y,2+16z]:	unknown -> [56] [0,0,0] 4x-16x²+36y+96x*y-16y²+59z+144x*z+336y*z+768x*y*z-16z²+4
[15+16x,3+16y,2+16z]:	unknown -> [57] [1,0,0] 12x+16x²-84y-96x*y+16y²-131z-144x*z-720y*z-768x*y*z+16z²-2
[7+16x,11+16y,2+16z]:	unknown -> [58] [0,1,0] 52x-16x²+20y+96x*y-16y²+227z+528x*z+336y*z+768x*y*z-16z²+18
[15+16x,11+16y,2+16z]:	unknown -> [59] [1,1,0] 36x-16x²+68y+96x*y-16y²+491z+528x*z+720y*z+768x*y*z-16z²+40
expanding queue[20]^7,meter=[2,2,2]: 28x-8x²+28y+48x*y-8y²+143z+168x*z+168y*z+192x*y*z-8z²+24
[7+16x,7+16y,2+16z]:	unknown -> [60] [0,0,0] 28x-16x²+28y+96x*y-16y²+143z+336x*z+336y*z+768x*y*z-16z²+12
[15+16x,7+16y,2+16z]:	unknown -> [61] [1,0,0] 12x-16x²+76y+96x*y-16y²+311z+336x*z+720y*z+768x*y*z-16z²+22
[7+16x,15+16y,2+16z]:	transposed [61] by [1,0,2]
[15+16x,15+16y,2+16z]:	unknown -> [62] [1,1,0] 60x-16x²+60y+96x*y-16y²+671z+720x*z+720y*z+768x*y*z-16z²+56
expanding queue[21]^8,meter=[2,2,2]: x-8x²+y+24x*y-8y²+z+24x*z+24y*z+192x*y*z-8z²
[1+16x,1+16y,1+16z]:	unknown -> [63] [0,0,0] x-16x²+y+48x*y-16y²+z+48x*z+48y*z+768x*y*z-16z²
[9+16x,9+16y,1+16z]:	unknown -> [64] [1,1,0] 9x-16x²+9y+48x*y-16y²+241z+432x*z+432y*z+768x*y*z-16z²+5
[9+16x,1+16y,9+16z]:	transposed [64] by [0,2,1]
[1+16x,9+16y,9+16z]:	transposed [64] by [2,0,1]
expanding queue[22]^8,meter=[2,2,2]: 5x-8x²+5y+24x*y-8y²+73z+120x*z+120y*z+192x*y*z-8z²+3
[13+16x,5+16y,1+16z]:	unknown -> [65] [1,0,0] 11x+16x²-29y-48x*y+16y²-193z-240x*z-624y*z-768x*y*z+16z²
-> solution [13,5,1],NONTRIVIAL
[5+16x,13+16y,1+16z]:	transposed [65] by [1,0,2]
[5+16x,5+16y,9+16z]:	unknown -> [66] [0,0,1] 125x-16x²+125y+432x*y-16y²+57z+240x*z+240y*z+768x*y*z-16z²+34
[13+16x,13+16y,9+16z]:	unknown -> [67] [1,1,1] 325x-16x²+325y+432x*y-16y²+489z+624x*z+624y*z+768x*y*z-16z²+259
expanding queue[23]^9,meter=[2,2,2]: 3x-8x²+3y+24x*y-8y²+25z+72x*z+72y*z+192x*y*z-8z²+1
[11+16x,3+16y,1+16z]:	unknown -> [68] [1,0,0] 13x+16x²-27y-48x*y+16y²-97z-144x*z-528y*z-768x*y*z+16z²+2
[3+16x,11+16y,1+16z]:	transposed [68] by [1,0,2]
[3+16x,3+16y,9+16z]:	unknown -> [69] [0,0,1] 75x-16x²+75y+432x*y-16y²+9z+144x*z+144y*z+768x*y*z-16z²+9
[11+16x,11+16y,9+16z]:	unknown -> [70] [1,1,1] 275x-16x²+275y+432x*y-16y²+345z+528x*z+528y*z+768x*y*z-16z²+184
expanding queue[24]^9,meter=[2,2,2]: 7x-8x²+7y+24x*y-8y²+145z+168x*z+168y*z+192x*y*z-8z²+6
[7+16x,7+16y,1+16z]:	unknown -> [71] [0,0,0] 7x-16x²+7y+48x*y-16y²+145z+336x*z+336y*z+768x*y*z-16z²+3
[15+16x,15+16y,1+16z]:	unknown -> [72] [1,1,0] 15x-16x²+15y+48x*y-16y²+673z+720x*z+720y*z+768x*y*z-16z²+14
[15+16x,7+16y,9+16z]:	unknown -> [73] [1,0,1] 159x-16x²+391y+432x*y-16y²+297z+336x*z+720y*z+768x*y*z-16z²+155
[7+16x,15+16y,9+16z]:	transposed [73] by [1,0,2]
expanding queue[25]^9,meter=[2,2,2]: 31x-8x²+99y+120x*y-8y²+53z+72x*z+168y*z+192x*y*z-8z²+29
[15+16x,3+16y,5+16z]:	unknown -> [74] [1,0,0] 15x-16x²+219y+240x*y-16y²+125z+144x*z+720y*z+768x*y*z-16z²+26
[7+16x,11+16y,5+16z]:	unknown -> [75] [0,1,0] 151x-16x²+83y+240x*y-16y²+221z+528x*z+336y*z+768x*y*z-16z²+60
[7+16x,3+16y,13+16z]:	unknown -> [76] [0,0,1] 103x-16x²+267y+624x*y-16y²+37z+144x*z+336y*z+768x*y*z-16z²+37
[15+16x,11+16y,13+16z]:	unknown -> [77] [1,1,1] 399x-16x²+563y+624x*y-16y²+469z+528x*z+720y*z+768x*y*z-16z²+370
Maximum level 3 [78] mod 2: x²+y²-3x*y*z+z²
