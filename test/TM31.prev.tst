TranspositionSet={[0,2,1],[1,0,2],[1,2,0],[2,1,0],[2,0,1]}
Expanding for base=2, level=3, reasons+features=base,transpose,same,similiar igtriv,invall,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-3x*y*z+z²
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-3x*y*z+z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] x²+y²-6x*y*z+z²
[1+2x,1+2y,0+2z]:	unknown -> [2] [1,1,0] 2x+2x²+2y+2y²-3z-6x*z-6y*z-12x*y*z+2z²+1
[1+2x,0+2y,1+2z]:	transposed [2] by [1,2,0]
[0+2x,1+2y,1+2z]:	transposed [2] by [2,0,1]
[1+2x,1+2y,1+2z]:	unknown -> [3] [1,1,1] x-2x²+y+6x*y-2y²+z+6x*z+6y*z+12x*y*z-2z²
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2]: x²+y²-6x*y*z+z²
[0+4x,0+4y,0+4z]:	unknown -> [4] [0,0,0] x²+y²-12x*y*z+z²
endexp[1]
expanding queue[2]^0,meter=[2,2,2]: 2x+2x²+2y+2y²-3z-6x*z-6y*z-12x*y*z+2z²+1
[1+4x,1+4y,2+4z]:	unknown -> [5] [0,0,1] 4x-4x²+4y+24x*y-4y²-z+12x*z+12y*z+48x*y*z-4z²
-> solution [5,1,2],NONTRIVIAL [1,5,2],NONTRIVIAL
[3+4x,1+4y,2+4z]:	unknown -> [6] [1,0,1] 4x²-16y-24x*y+4y²-5z-12x*z-36y*z-48x*y*z+4z²-1
[1+4x,3+4y,2+4z]:	transposed [6] by [1,0,2]
[3+4x,3+4y,2+4z]:	unknown -> [7] [1,1,1] 12x-4x²+12y+24x*y-4y²+23z+36x*z+36y*z+48x*y*z-4z²+8
endexp[2]
expanding queue[3]^0,meter=[2,2,2]: x-2x²+y+6x*y-2y²+z+6x*z+6y*z+12x*y*z-2z²
[1+4x,1+4y,1+4z]:	unknown -> [8] [0,0,0] x-4x²+y+12x*y-4y²+z+12x*z+12y*z+48x*y*z-4z²
[3+4x,3+4y,1+4z]:	unknown -> [9] [1,1,0] 3x-4x²+3y+12x*y-4y²+25z+36x*z+36y*z+48x*y*z-4z²+2
[3+4x,1+4y,3+4z]:	transposed [9] by [1,2,0]
[1+4x,3+4y,3+4z]:	transposed [9] by [2,0,1]
endexp[3]
---------------- level 2
expanding queue[4]^1,meter=[2,2,2]: x²+y²-12x*y*z+z²
[0+8x,0+8y,0+8z]:	unknown -> [10] [0,0,0] x²+y²-24x*y*z+z²
endexp[4]
expanding queue[5]^2,meter=[2,2,2]: 4x-4x²+4y+24x*y-4y²-z+12x*z+12y*z+48x*y*z-4z²
[1+8x,1+8y,2+8z]:	unknown -> [11] [0,0,0] 4x-8x²+4y+48x*y-8y²-z+24x*z+24y*z+192x*y*z-8z²
[5+8x,1+8y,2+8z]:	unknown -> [12] [1,0,0] 4x+8x²-28y-48x*y+8y²-11z-24x*z-120y*z-192x*y*z+8z²
-> solution [5,1,2],NONTRIVIAL
[1+8x,5+8y,2+8z]:	transposed [12] by [1,0,2]
[5+8x,5+8y,2+8z]:	unknown -> [13] [1,1,0] 20x-8x²+20y+48x*y-8y²+71z+120x*z+120y*z+192x*y*z-8z²+12
endexp[5]
expanding queue[6]^2,meter=[2,2,2]: 4x²-16y-24x*y+4y²-5z-12x*z-36y*z-48x*y*z+4z²-1
[3+8x,1+8y,6+8z]:	unknown -> [14] [0,0,1] 12x-8x²+52y+144x*y-8y²-3z+24x*z+72y*z+192x*y*z-8z²+1
[7+8x,1+8y,6+8z]:	unknown -> [15] [1,0,1] 4x-8x²+124y+144x*y-8y²+9z+24x*z+168y*z+192x*y*z-8z²+5
[3+8x,5+8y,6+8z]:	unknown -> [16] [0,1,1] 84x-8x²+44y+144x*y-8y²+33z+120x*z+72y*z+192x*y*z-8z²+25
[7+8x,5+8y,6+8z]:	unknown -> [17] [1,1,1] 76x-8x²+116y+144x*y-8y²+93z+120x*z+168y*z+192x*y*z-8z²+65
endexp[6]
expanding queue[7]^2,meter=[2,2,2]: 12x-4x²+12y+24x*y-4y²+23z+36x*z+36y*z+48x*y*z-4z²+8
[3+8x,3+8y,2+8z]:	unknown -> [18] [0,0,0] 12x-8x²+12y+48x*y-8y²+23z+72x*z+72y*z+192x*y*z-8z²+4
[7+8x,3+8y,2+8z]:	unknown -> [19] [1,0,0] 4x-8x²+36y+48x*y-8y²+59z+72x*z+168y*z+192x*y*z-8z²+8
[3+8x,7+8y,2+8z]:	transposed [19] by [1,0,2]
[7+8x,7+8y,2+8z]:	unknown -> [20] [1,1,0] 28x-8x²+28y+48x*y-8y²+143z+168x*z+168y*z+192x*y*z-8z²+24
endexp[7]
expanding queue[8]^3,meter=[2,2,2]: x-4x²+y+12x*y-4y²+z+12x*z+12y*z+48x*y*z-4z²
[1+8x,1+8y,1+8z]:	unknown -> [21] [0,0,0] x-8x²+y+24x*y-8y²+z+24x*z+24y*z+192x*y*z-8z²
[5+8x,5+8y,1+8z]:	unknown -> [22] [1,1,0] 5x-8x²+5y+24x*y-8y²+73z+120x*z+120y*z+192x*y*z-8z²+3
-> solution [13,5,1],NONTRIVIAL [5,13,1],NONTRIVIAL
[5+8x,1+8y,5+8z]:	transposed [22] by [1,2,0]
[1+8x,5+8y,5+8z]:	transposed [22] by [2,0,1]
endexp[8]
expanding queue[9]^3,meter=[2,2,2]: 3x-4x²+3y+12x*y-4y²+25z+36x*z+36y*z+48x*y*z-4z²+2
[3+8x,3+8y,1+8z]:	unknown -> [23] [0,0,0] 3x-8x²+3y+24x*y-8y²+25z+72x*z+72y*z+192x*y*z-8z²+1
[7+8x,7+8y,1+8z]:	unknown -> [24] [1,1,0] 7x-8x²+7y+24x*y-8y²+145z+168x*z+168y*z+192x*y*z-8z²+6
[7+8x,3+8y,5+8z]:	unknown -> [25] [1,0,1] 31x-8x²+99y+120x*y-8y²+53z+72x*z+168y*z+192x*y*z-8z²+29
[3+8x,7+8y,5+8z]:	transposed [25] by [1,0,2]
endexp[9]
---------------- level 3
Maximum level 3 [26] mod 2: x²+y²-3x*y*z+z²
