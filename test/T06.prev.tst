TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar igtriv,norm,invall
Refined variables=x,y,z
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^2+y^2-3x*y*z+z^2
[0+2x,0+2y,0+2z]:	unknown -> [1] x^2+y^2-6x*y*z+z^2
[1+2x,1+2y,0+2z]:	unknown -> [2] 1+2x+2x^2+2y+2y^2-3z-6x*z-6y*z-12x*y*z+2z^2
[1+2x,0+2y,1+2z]:	transposed [2] by [0,2,1]
[0+2x,1+2y,1+2z]:	transposed [2] by [2,0,1]
[1+2x,1+2y,1+2z]:	unknown -> [3] -x+2x^2-y-6x*y+2y^2-z-6x*z-6y*z-12x*y*z+2z^2
----------------
expanding queue[1]^0,meter=[2,2,2]*4: x^2+y^2-6x*y*z+z^2
[0+4x,0+4y,0+4z]:	unknown -> [4] x^2+y^2-12x*y*z+z^2
expanding queue[2]^0,meter=[2,2,2]*4: 1+2x+2x^2+2y+2y^2-3z-6x*z-6y*z-12x*y*z+2z^2
[1+4x,1+4y,2+4z]:	unknown -> [5] -4x+4x^2-4y-24x*y+4y^2+z-12x*z-12y*z-48x*y*z+4z^2
[3+4x,1+4y,2+4z]:	unknown -> [6] -1+4x^2-16y-24x*y+4y^2-5z-12x*z-36y*z-48x*y*z+4z^2
[1+4x,3+4y,2+4z]:	transposed [6] by [1,0,2]
[3+4x,3+4y,2+4z]:	unknown -> [7] -8-12x+4x^2-12y-24x*y+4y^2-23z-36x*z-36y*z-48x*y*z+4z^2
expanding queue[3]^0,meter=[2,2,2]*4: -x+2x^2-y-6x*y+2y^2-z-6x*z-6y*z-12x*y*z+2z^2
[1+4x,1+4y,1+4z]:	unknown -> [8] -x+4x^2-y-12x*y+4y^2-z-12x*z-12y*z-48x*y*z+4z^2
[3+4x,3+4y,1+4z]:	unknown -> [9] -2-3x+4x^2-3y-12x*y+4y^2-25z-36x*z-36y*z-48x*y*z+4z^2
[3+4x,1+4y,3+4z]:	transposed [9] by [0,2,1]
[1+4x,3+4y,3+4z]:	transposed [9] by [2,0,1]
----------------
expanding queue[4]^1,meter=[2,2,2]*8: x^2+y^2-12x*y*z+z^2
[0+8x,0+8y,0+8z]:	unknown -> [10] x^2+y^2-24x*y*z+z^2
expanding queue[5]^2,meter=[2,2,2]*8: -4x+4x^2-4y-24x*y+4y^2+z-12x*z-12y*z-48x*y*z+4z^2
[1+8x,1+8y,2+8z]:	unknown -> [11] -4x+8x^2-4y-48x*y+8y^2+z-24x*z-24y*z-192x*y*z+8z^2
[5+8x,1+8y,2+8z]:	unknown -> [12] 4x+8x^2-28y-48x*y+8y^2-11z-24x*z-120y*z-192x*y*z+8z^2
[1+8x,5+8y,2+8z]:	transposed [12] by [1,0,2]
[5+8x,5+8y,2+8z]:	unknown -> [13] -12-20x+8x^2-20y-48x*y+8y^2-71z-120x*z-120y*z-192x*y*z+8z^2
expanding queue[6]^2,meter=[2,2,2]*8: -1+4x^2-16y-24x*y+4y^2-5z-12x*z-36y*z-48x*y*z+4z^2
[3+8x,1+8y,6+8z]:	unknown -> [14] -1-12x+8x^2-52y-144x*y+8y^2+3z-24x*z-72y*z-192x*y*z+8z^2
[7+8x,1+8y,6+8z]:	unknown -> [15] -5-4x+8x^2-124y-144x*y+8y^2-9z-24x*z-168y*z-192x*y*z+8z^2
[3+8x,5+8y,6+8z]:	unknown -> [16] -25-84x+8x^2-44y-144x*y+8y^2-33z-120x*z-72y*z-192x*y*z+8z^2
[7+8x,5+8y,6+8z]:	unknown -> [17] -65-76x+8x^2-116y-144x*y+8y^2-93z-120x*z-168y*z-192x*y*z+8z^2
expanding queue[7]^2,meter=[2,2,2]*8: -8-12x+4x^2-12y-24x*y+4y^2-23z-36x*z-36y*z-48x*y*z+4z^2
[3+8x,3+8y,2+8z]:	unknown -> [18] -4-12x+8x^2-12y-48x*y+8y^2-23z-72x*z-72y*z-192x*y*z+8z^2
[7+8x,3+8y,2+8z]:	unknown -> [19] -8-4x+8x^2-36y-48x*y+8y^2-59z-72x*z-168y*z-192x*y*z+8z^2
[3+8x,7+8y,2+8z]:	transposed [19] by [1,0,2]
[7+8x,7+8y,2+8z]:	unknown -> [20] -24-28x+8x^2-28y-48x*y+8y^2-143z-168x*z-168y*z-192x*y*z+8z^2
expanding queue[8]^3,meter=[2,2,2]*8: -x+4x^2-y-12x*y+4y^2-z-12x*z-12y*z-48x*y*z+4z^2
[1+8x,1+8y,1+8z]:	unknown -> [21] -x+8x^2-y-24x*y+8y^2-z-24x*z-24y*z-192x*y*z+8z^2
[5+8x,5+8y,1+8z]:	unknown -> [22] -3-5x+8x^2-5y-24x*y+8y^2-73z-120x*z-120y*z-192x*y*z+8z^2
[5+8x,1+8y,5+8z]:	transposed [22] by [0,2,1]
[1+8x,5+8y,5+8z]:	transposed [22] by [2,0,1]
expanding queue[9]^3,meter=[2,2,2]*8: -2-3x+4x^2-3y-12x*y+4y^2-25z-36x*z-36y*z-48x*y*z+4z^2
[3+8x,3+8y,1+8z]:	unknown -> [23] -1-3x+8x^2-3y-24x*y+8y^2-25z-72x*z-72y*z-192x*y*z+8z^2
[7+8x,7+8y,1+8z]:	unknown -> [24] -6-7x+8x^2-7y-24x*y+8y^2-145z-168x*z-168y*z-192x*y*z+8z^2
[7+8x,3+8y,5+8z]:	unknown -> [25] -29-31x+8x^2-99y-120x*y+8y^2-53z-72x*z-168y*z-192x*y*z+8z^2
[3+8x,7+8y,5+8z]:	transposed [25] by [1,0,2]
----------------
expanding queue[10]^4,meter=[2,2,2]*16: x^2+y^2-24x*y*z+z^2
[0+16x,0+16y,0+16z]:	unknown -> [26] x^2+y^2-48x*y*z+z^2
expanding queue[11]^5,meter=[2,2,2]*16: -4x+8x^2-4y-48x*y+8y^2+z-24x*z-24y*z-192x*y*z+8z^2
[1+16x,1+16y,2+16z]:	unknown -> [27] -4x+16x^2-4y-96x*y+16y^2+z-48x*z-48y*z-768x*y*z+16z^2
[9+16x,1+16y,2+16z]:	unknown -> [28] 2+12x+16x^2-52y-96x*y+16y^2-23z-48x*z-432y*z-768x*y*z+16z^2
[1+16x,9+16y,2+16z]:	transposed [28] by [1,0,2]
[9+16x,9+16y,2+16z]:	unknown -> [29] -20-36x+16x^2-36y-96x*y+16y^2-239z-432x*z-432y*z-768x*y*z+16z^2
expanding queue[12]^5,meter=[2,2,2]*16: 4x+8x^2-28y-48x*y+8y^2-11z-24x*z-120y*z-192x*y*z+8z^2
solution [5,1,2],NONTRIVIAL
[5+16x,1+16y,2+16z]:	unknown -> [30] 4x+16x^2-28y-96x*y+16y^2-11z-48x*z-240y*z-768x*y*z+16z^2
[13+16x,1+16y,2+16z]:	unknown -> [31] 6+20x+16x^2-76y-96x*y+16y^2-35z-48x*z-624y*z-768x*y*z+16z^2
[5+16x,9+16y,2+16z]:	unknown -> [32] -10-44x+16x^2-12y-96x*y+16y^2-131z-432x*z-240y*z-768x*y*z+16z^2
[13+16x,9+16y,2+16z]:	unknown -> [33] -28-28x+16x^2-60y-96x*y+16y^2-347z-432x*z-624y*z-768x*y*z+16z^2
expanding queue[13]^5,meter=[2,2,2]*16: -12-20x+8x^2-20y-48x*y+8y^2-71z-120x*z-120y*z-192x*y*z+8z^2
[5+16x,5+16y,2+16z]:	unknown -> [34] -6-20x+16x^2-20y-96x*y+16y^2-71z-240x*z-240y*z-768x*y*z+16z^2
[13+16x,5+16y,2+16z]:	unknown -> [35] -12-4x+16x^2-68y-96x*y+16y^2-191z-240x*z-624y*z-768x*y*z+16z^2
[5+16x,13+16y,2+16z]:	transposed [35] by [1,0,2]
[13+16x,13+16y,2+16z]:	unknown -> [36] -42-52x+16x^2-52y-96x*y+16y^2-503z-624x*z-624y*z-768x*y*z+16z^2
expanding queue[14]^6,meter=[2,2,2]*16: -1-12x+8x^2-52y-144x*y+8y^2+3z-24x*z-72y*z-192x*y*z+8z^2
[3+16x,1+16y,14+16z]:	unknown -> [37] 5-36x+16x^2-124y-672x*y+16y^2+19z-48x*z-144y*z-768x*y*z+16z^2
[11+16x,1+16y,14+16z]:	unknown -> [38] -9-20x+16x^2-460y-672x*y+16y^2-5z-48x*z-528y*z-768x*y*z+16z^2
[3+16x,9+16y,14+16z]:	unknown -> [39] -53-372x+16x^2-108y-672x*y+16y^2-53z-432x*z-144y*z-768x*y*z+16z^2
[11+16x,9+16y,14+16z]:	unknown -> [40] -235-356x+16x^2-444y-672x*y+16y^2-269z-432x*z-528y*z-768x*y*z+16z^2
expanding queue[15]^6,meter=[2,2,2]*16: -5-4x+8x^2-124y-144x*y+8y^2-9z-24x*z-168y*z-192x*y*z+8z^2
[7+16x,1+16y,14+16z]:	unknown -> [41] -3-28x+16x^2-292y-672x*y+16y^2+7z-48x*z-336y*z-768x*y*z+16z^2
[15+16x,1+16y,14+16z]:	unknown -> [42] -13-12x+16x^2-628y-672x*y+16y^2-17z-48x*z-720y*z-768x*y*z+16z^2
[7+16x,9+16y,14+16z]:	unknown -> [43] -145-364x+16x^2-276y-672x*y+16y^2-161z-432x*z-336y*z-768x*y*z+16z^2
[15+16x,9+16y,14+16z]:	unknown -> [44] -323-348x+16x^2-612y-672x*y+16y^2-377z-432x*z-720y*z-768x*y*z+16z^2
expanding queue[16]^6,meter=[2,2,2]*16: -25-84x+8x^2-44y-144x*y+8y^2-33z-120x*z-72y*z-192x*y*z+8z^2
[3+16x,5+16y,14+16z]:	unknown -> [45] -25-204x+16x^2-116y-672x*y+16y^2-17z-240x*z-144y*z-768x*y*z+16z^2
[11+16x,5+16y,14+16z]:	unknown -> [46] -123-188x+16x^2-452y-672x*y+16y^2-137z-240x*z-528y*z-768x*y*z+16z^2
[3+16x,13+16y,14+16z]:	unknown -> [47] -79-540x+16x^2-100y-672x*y+16y^2-89z-624x*z-144y*z-768x*y*z+16z^2
[11+16x,13+16y,14+16z]:	unknown -> [48] -345-524x+16x^2-436y-672x*y+16y^2-401z-624x*z-528y*z-768x*y*z+16z^2
expanding queue[17]^6,meter=[2,2,2]*16: -65-76x+8x^2-116y-144x*y+8y^2-93z-120x*z-168y*z-192x*y*z+8z^2
[7+16x,5+16y,14+16z]:	unknown -> [49] -75-196x+16x^2-284y-672x*y+16y^2-77z-240x*z-336y*z-768x*y*z+16z^2
[15+16x,5+16y,14+16z]:	unknown -> [50] -169-180x+16x^2-620y-672x*y+16y^2-197z-240x*z-720y*z-768x*y*z+16z^2
[7+16x,13+16y,14+16z]:	unknown -> [51] -213-532x+16x^2-268y-672x*y+16y^2-245z-624x*z-336y*z-768x*y*z+16z^2
[15+16x,13+16y,14+16z]:	unknown -> [52] -475-516x+16x^2-604y-672x*y+16y^2-557z-624x*z-720y*z-768x*y*z+16z^2
expanding queue[18]^7,meter=[2,2,2]*16: -4-12x+8x^2-12y-48x*y+8y^2-23z-72x*z-72y*z-192x*y*z+8z^2
[3+16x,3+16y,2+16z]:	unknown -> [53] -2-12x+16x^2-12y-96x*y+16y^2-23z-144x*z-144y*z-768x*y*z+16z^2
[11+16x,3+16y,2+16z]:	unknown -> [54] -4+4x+16x^2-60y-96x*y+16y^2-95z-144x*z-528y*z-768x*y*z+16z^2
[3+16x,11+16y,2+16z]:	transposed [54] by [1,0,2]
[11+16x,11+16y,2+16z]:	unknown -> [55] -30-44x+16x^2-44y-96x*y+16y^2-359z-528x*z-528y*z-768x*y*z+16z^2
expanding queue[19]^7,meter=[2,2,2]*16: -8-4x+8x^2-36y-48x*y+8y^2-59z-72x*z-168y*z-192x*y*z+8z^2
[7+16x,3+16y,2+16z]:	unknown -> [56] -4-4x+16x^2-36y-96x*y+16y^2-59z-144x*z-336y*z-768x*y*z+16z^2
[15+16x,3+16y,2+16z]:	unknown -> [57] -2+12x+16x^2-84y-96x*y+16y^2-131z-144x*z-720y*z-768x*y*z+16z^2
[7+16x,11+16y,2+16z]:	unknown -> [58] -18-52x+16x^2-20y-96x*y+16y^2-227z-528x*z-336y*z-768x*y*z+16z^2
[15+16x,11+16y,2+16z]:	unknown -> [59] -40-36x+16x^2-68y-96x*y+16y^2-491z-528x*z-720y*z-768x*y*z+16z^2
expanding queue[20]^7,meter=[2,2,2]*16: -24-28x+8x^2-28y-48x*y+8y^2-143z-168x*z-168y*z-192x*y*z+8z^2
[7+16x,7+16y,2+16z]:	unknown -> [60] -12-28x+16x^2-28y-96x*y+16y^2-143z-336x*z-336y*z-768x*y*z+16z^2
[15+16x,7+16y,2+16z]:	unknown -> [61] -22-12x+16x^2-76y-96x*y+16y^2-311z-336x*z-720y*z-768x*y*z+16z^2
[7+16x,15+16y,2+16z]:	transposed [61] by [1,0,2]
[15+16x,15+16y,2+16z]:	unknown -> [62] -56-60x+16x^2-60y-96x*y+16y^2-671z-720x*z-720y*z-768x*y*z+16z^2
expanding queue[21]^8,meter=[2,2,2]*16: -x+8x^2-y-24x*y+8y^2-z-24x*z-24y*z-192x*y*z+8z^2
[1+16x,1+16y,1+16z]:	unknown -> [63] -x+16x^2-y-48x*y+16y^2-z-48x*z-48y*z-768x*y*z+16z^2
[9+16x,9+16y,1+16z]:	unknown -> [64] -5-9x+16x^2-9y-48x*y+16y^2-241z-432x*z-432y*z-768x*y*z+16z^2
[9+16x,1+16y,9+16z]:	transposed [64] by [0,2,1]
[1+16x,9+16y,9+16z]:	transposed [64] by [2,0,1]
expanding queue[22]^8,meter=[2,2,2]*16: -3-5x+8x^2-5y-24x*y+8y^2-73z-120x*z-120y*z-192x*y*z+8z^2
[13+16x,5+16y,1+16z]:	unknown -> [65] 11x+16x^2-29y-48x*y+16y^2-193z-240x*z-624y*z-768x*y*z+16z^2
[5+16x,13+16y,1+16z]:	transposed [65] by [1,0,2]
[5+16x,5+16y,9+16z]:	unknown -> [66] -34-125x+16x^2-125y-432x*y+16y^2-57z-240x*z-240y*z-768x*y*z+16z^2
[13+16x,13+16y,9+16z]:	unknown -> [67] -259-325x+16x^2-325y-432x*y+16y^2-489z-624x*z-624y*z-768x*y*z+16z^2
expanding queue[23]^9,meter=[2,2,2]*16: -1-3x+8x^2-3y-24x*y+8y^2-25z-72x*z-72y*z-192x*y*z+8z^2
[11+16x,3+16y,1+16z]:	unknown -> [68] 2+13x+16x^2-27y-48x*y+16y^2-97z-144x*z-528y*z-768x*y*z+16z^2
[3+16x,11+16y,1+16z]:	transposed [68] by [1,0,2]
[3+16x,3+16y,9+16z]:	unknown -> [69] -9-75x+16x^2-75y-432x*y+16y^2-9z-144x*z-144y*z-768x*y*z+16z^2
[11+16x,11+16y,9+16z]:	unknown -> [70] -184-275x+16x^2-275y-432x*y+16y^2-345z-528x*z-528y*z-768x*y*z+16z^2
expanding queue[24]^9,meter=[2,2,2]*16: -6-7x+8x^2-7y-24x*y+8y^2-145z-168x*z-168y*z-192x*y*z+8z^2
[7+16x,7+16y,1+16z]:	unknown -> [71] -3-7x+16x^2-7y-48x*y+16y^2-145z-336x*z-336y*z-768x*y*z+16z^2
[15+16x,15+16y,1+16z]:	unknown -> [72] -14-15x+16x^2-15y-48x*y+16y^2-673z-720x*z-720y*z-768x*y*z+16z^2
[15+16x,7+16y,9+16z]:	unknown -> [73] -155-159x+16x^2-391y-432x*y+16y^2-297z-336x*z-720y*z-768x*y*z+16z^2
[7+16x,15+16y,9+16z]:	transposed [73] by [1,0,2]
expanding queue[25]^9,meter=[2,2,2]*16: -29-31x+8x^2-99y-120x*y+8y^2-53z-72x*z-168y*z-192x*y*z+8z^2
[15+16x,3+16y,5+16z]:	unknown -> [74] -26-15x+16x^2-219y-240x*y+16y^2-125z-144x*z-720y*z-768x*y*z+16z^2
[7+16x,11+16y,5+16z]:	unknown -> [75] -60-151x+16x^2-83y-240x*y+16y^2-221z-528x*z-336y*z-768x*y*z+16z^2
[7+16x,3+16y,13+16z]:	unknown -> [76] -37-103x+16x^2-267y-624x*y+16y^2-37z-144x*z-336y*z-768x*y*z+16z^2
[15+16x,11+16y,13+16z]:	unknown -> [77] -370-399x+16x^2-563y-624x*y+16y^2-469z-528x*z-720y*z-768x*y*z+16z^2
Maximum level 3 reached at [78]: x^2+y^2-3x*y*z+z^2
