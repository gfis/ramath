TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
Expanding for base=5, level=2, reasons+features=base,transpose,same,similiar norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-5x*y*z+z²
-> solution [0,0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[5,5,5]: x²+y²-5x*y*z+z²
[0+5x,0+5y,0+5z]:	unknown -> [1] [0,0,0] x²+y²-25x*y*z+z²
-> solution [0,0,0],trivial(3)
[2+5x,1+5y,0+5z]:	unknown -> [2] [2,1,0] 4x+5x²+2y+5y²-10z-25x*z-50y*z-125x*y*z+5z²+1
[3+5x,1+5y,0+5z]:	unknown -> [3] [3,1,0] 6x+5x²+2y+5y²-15z-25x*z-75y*z-125x*y*z+5z²+2
[1+5x,2+5y,0+5z]:	transposed [2] by [1,0,2]
[4+5x,2+5y,0+5z]:	unknown -> [4] [4,2,0] 8x+5x²+4y+5y²-40z-50x*z-100y*z-125x*y*z+5z²+4
[1+5x,3+5y,0+5z]:	transposed [3] by [1,0,2]
[4+5x,3+5y,0+5z]:	unknown -> [5] [4,3,0] 8x+5x²+6y+5y²-60z-75x*z-100y*z-125x*y*z+5z²+5
[2+5x,4+5y,0+5z]:	transposed [4] by [1,0,2]
[3+5x,4+5y,0+5z]:	transposed [5] by [1,0,2]
[2+5x,0+5y,1+5z]:	transposed [2] by [0,2,1]
[3+5x,0+5y,1+5z]:	transposed [3] by [0,2,1]
[0+5x,2+5y,1+5z]:	transposed [2] by [2,0,1]
[0+5x,3+5y,1+5z]:	transposed [3] by [2,0,1]
[1+5x,0+5y,2+5z]:	transposed [2] by [1,2,0]
[4+5x,0+5y,2+5z]:	transposed [4] by [0,2,1]
[0+5x,1+5y,2+5z]:	transposed [2] by [2,1,0]
[0+5x,4+5y,2+5z]:	transposed [4] by [2,0,1]
[1+5x,0+5y,3+5z]:	transposed [3] by [1,2,0]
[4+5x,0+5y,3+5z]:	transposed [5] by [0,2,1]
[0+5x,1+5y,3+5z]:	transposed [3] by [2,1,0]
[0+5x,4+5y,3+5z]:	transposed [5] by [2,0,1]
[2+5x,0+5y,4+5z]:	transposed [4] by [1,2,0]
[3+5x,0+5y,4+5z]:	transposed [5] by [1,2,0]
[0+5x,2+5y,4+5z]:	transposed [4] by [2,1,0]
[0+5x,3+5y,4+5z]:	transposed [5] by [2,1,0]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[5,5,5]: x²+y²-25x*y*z+z²
[0+25x,0+25y,0+25z]:	unknown -> [6] [0,0,0] x²+y²-125x*y*z+z²
-> solution [0,0,0],trivial(3)
[10+25x,5+25y,0+25z]:	unknown -> [7] [2,1,0] 4x+5x²+2y+5y²-50z-125x*z-250y*z-625x*y*z+5z²+1
[15+25x,5+25y,0+25z]:	unknown -> [8] [3,1,0] 6x+5x²+2y+5y²-75z-125x*z-375y*z-625x*y*z+5z²+2
[5+25x,10+25y,0+25z]:	transposed [7] by [1,0,2]
[20+25x,10+25y,0+25z]:	unknown -> [9] [4,2,0] 8x+5x²+4y+5y²-200z-250x*z-500y*z-625x*y*z+5z²+4
[5+25x,15+25y,0+25z]:	transposed [8] by [1,0,2]
[20+25x,15+25y,0+25z]:	unknown -> [10] [4,3,0] 8x+5x²+6y+5y²-300z-375x*z-500y*z-625x*y*z+5z²+5
[10+25x,20+25y,0+25z]:	transposed [9] by [1,0,2]
[15+25x,20+25y,0+25z]:	transposed [10] by [1,0,2]
[10+25x,0+25y,5+25z]:	transposed [7] by [0,2,1]
[15+25x,0+25y,5+25z]:	transposed [8] by [0,2,1]
[0+25x,10+25y,5+25z]:	transposed [7] by [2,0,1]
[0+25x,15+25y,5+25z]:	transposed [8] by [2,0,1]
[5+25x,0+25y,10+25z]:	transposed [7] by [1,2,0]
[20+25x,0+25y,10+25z]:	transposed [9] by [0,2,1]
[0+25x,5+25y,10+25z]:	transposed [7] by [2,1,0]
[0+25x,20+25y,10+25z]:	transposed [9] by [2,0,1]
[5+25x,0+25y,15+25z]:	transposed [8] by [1,2,0]
[20+25x,0+25y,15+25z]:	transposed [10] by [0,2,1]
[0+25x,5+25y,15+25z]:	transposed [8] by [2,1,0]
[0+25x,20+25y,15+25z]:	transposed [10] by [2,0,1]
[10+25x,0+25y,20+25z]:	transposed [9] by [1,2,0]
[15+25x,0+25y,20+25z]:	transposed [10] by [1,2,0]
[0+25x,10+25y,20+25z]:	transposed [9] by [2,1,0]
[0+25x,15+25y,20+25z]:	transposed [10] by [2,1,0]
endexp[1]
expanding queue[2]^0,meter=[5,5,1]: 4x+5x²+2y+5y²-10z-25x*z-50y*z-125x*y*z+5z²+1
[7+25x,1+25y,0+5z]:	unknown -> [11] [1,0,0] 14x+25x²+2y+25y²-7z-25x*z-175y*z-625x*y*z+z²+2
[17+25x,6+25y,0+5z]:	unknown -> [12] [3,1,0] 34x+25x²+12y+25y²-102z-150x*z-425y*z-625x*y*z+z²+13
[2+25x,11+25y,0+5z]:	unknown -> [13] [0,2,0] 4x+25x²+22y+25y²-22z-275x*z-50y*z-625x*y*z+z²+5
[12+25x,16+25y,0+5z]:	unknown -> [14] [2,3,0] 24x+25x²+32y+25y²-192z-400x*z-300y*z-625x*y*z+z²+16
[22+25x,21+25y,0+5z]:	unknown -> [15] [4,4,0] 44x+25x²+42y+25y²-462z-525x*z-550y*z-625x*y*z+z²+37
endexp[2]
expanding queue[3]^0,meter=[5,5,1]: 6x+5x²+2y+5y²-15z-25x*z-75y*z-125x*y*z+5z²+2
[18+25x,1+25y,0+5z]:	unknown -> [16] [3,0,0] 36x+25x²+2y+25y²-18z-25x*z-450y*z-625x*y*z+z²+13
[8+25x,6+25y,0+5z]:	unknown -> [17] [1,1,0] 16x+25x²+12y+25y²-48z-150x*z-200y*z-625x*y*z+z²+4
[23+25x,11+25y,0+5z]:	unknown -> [18] [4,2,0] 46x+25x²+22y+25y²-253z-275x*z-575y*z-625x*y*z+z²+26
[13+25x,16+25y,0+5z]:	unknown -> [19] [2,3,0] 26x+25x²+32y+25y²-208z-400x*z-325y*z-625x*y*z+z²+17
[3+25x,21+25y,0+5z]:	unknown -> [20] [0,4,0] 6x+25x²+42y+25y²-63z-525x*z-75y*z-625x*y*z+z²+18
endexp[3]
expanding queue[4]^0,meter=[5,5,1]: 8x+5x²+4y+5y²-40z-50x*z-100y*z-125x*y*z+5z²+4
[14+25x,2+25y,0+5z]:	unknown -> [21] [2,0,0] 28x+25x²+4y+25y²-28z-50x*z-350y*z-625x*y*z+z²+8
[24+25x,7+25y,0+5z]:	unknown -> [22] [4,1,0] 48x+25x²+14y+25y²-168z-175x*z-600y*z-625x*y*z+z²+25
[9+25x,12+25y,0+5z]:	unknown -> [23] [1,2,0] 18x+25x²+24y+25y²-108z-300x*z-225y*z-625x*y*z+z²+9
[19+25x,17+25y,0+5z]:	unknown -> [24] [3,3,0] 38x+25x²+34y+25y²-323z-425x*z-475y*z-625x*y*z+z²+26
[4+25x,22+25y,0+5z]:	unknown -> [25] [0,4,0] 8x+25x²+44y+25y²-88z-550x*z-100y*z-625x*y*z+z²+20
endexp[4]
expanding queue[5]^0,meter=[5,5,1]: 8x+5x²+6y+5y²-60z-75x*z-100y*z-125x*y*z+5z²+5
[4+25x,3+25y,0+5z]:	unknown -> [26] [0,0,0] 8x+25x²+6y+25y²-12z-75x*z-100y*z-625x*y*z+z²+1
[19+25x,8+25y,0+5z]:	unknown -> [27] [3,1,0] 38x+25x²+16y+25y²-152z-200x*z-475y*z-625x*y*z+z²+17
[9+25x,13+25y,0+5z]:	unknown -> [28] [1,2,0] 18x+25x²+26y+25y²-117z-325x*z-225y*z-625x*y*z+z²+10
[24+25x,18+25y,0+5z]:	unknown -> [29] [4,3,0] 48x+25x²+36y+25y²-432z-450x*z-600y*z-625x*y*z+z²+36
[14+25x,23+25y,0+5z]:	unknown -> [30] [2,4,0] 28x+25x²+46y+25y²-322z-575x*z-350y*z-625x*y*z+z²+29
endexp[5]
---------------- level 2
Maximum level 2 [31] mod 5: x²+y²-5x*y*z+z²
