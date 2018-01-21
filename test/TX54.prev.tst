TranspositionSet={[1,0,2]}
isHomogeneous
Expanding for base=2, level=4, reasons+features=base,transpose,primitive,same,similiar norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] -x³-3x²*y-3x*y²-y³+3x²*z+5x*y*z+3y²*z-3x*z²-3y*z²+z³
-> solution [0,0,0],trivial(3) [1,0,1],trivial(3) [0,1,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: -x³-3x²*y-3x*y²-y³+3x²*z+5x*y*z+3y²*z-3x*z²-3y*z²+z³
[0+2x,0+2y,0+2z]:	non-primitive
-> solution [0,0,0],trivial(3) [2,0,2],trivial(3) [0,2,2],trivial(3)
[1+2x,1+2y,0+2z]:	unknown -> [1] [1,1,0] 12x+12x²+4x³+12y+24x*y+12x²*y+12y²+12x*y²+4y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+12z²+12x*z²+12y*z²-4z³+4
[1+2x,0+2y,1+2z]:	unknown -> [2] [1,0,1] 4x³+y+2x*y+12x²*y+12x*y²+4y³-12x²*z+2y*z-20x*y*z-12y²*z+12x*z²+12y*z²-4z³
-> solution [1,0,1],trivial(3) [3,0,3],trivial(3)
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[1,1,2]: 12x+12x²+4x³+12y+24x*y+12x²*y+12y²+12x*y²+4y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+12z²+12x*z²+12y*z²-4z³+4
[1+2x,1+2y,0+4z]:	unknown -> [3] [0,0,0] 6x+6x²+2x³+6y+12x*y+6x²*y+6y²+6x*y²+2y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+24z²+24x*z²+24y*z²-16z³+2
endexp[1]
expanding queue[2]^0,meter=[1,2,1]: 4x³+y+2x*y+12x²*y+12x*y²+4y³-12x²*z+2y*z-20x*y*z-12y²*z+12x*z²+12y*z²-4z³
[1+2x,0+4y,1+2z]:	unknown -> [4] [0,0,0] 2x³+y+2x*y+12x²*y+24x*y²+16y³-6x²*z+2y*z-20x*y*z-24y²*z+6x*z²+12y*z²-2z³
-> solution [1,0,1],trivial(3) [3,0,3],trivial(3)
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[1,1,2]: 6x+6x²+2x³+6y+12x*y+6x²*y+6y²+6x*y²+2y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+24z²+24x*z²+24y*z²-16z³+2
[1+2x,1+2y,0+8z]:	unknown -> [5] [0,0,0] 3x+3x²+x³+3y+6x*y+3x²*y+3y²+3x*y²+y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+48z²+48x*z²+48y*z²-64z³+1
endexp[3]
expanding queue[4]^2,meter=[1,2,1]: 2x³+y+2x*y+12x²*y+24x*y²+16y³-6x²*z+2y*z-20x*y*z-24y²*z+6x*z²+12y*z²-2z³
[1+2x,0+8y,1+2z]:	unknown -> [6] [0,0,0] x³+y+2x*y+12x²*y+48x*y²+64y³-3x²*z+2y*z-20x*y*z-48y²*z+3x*z²+12y*z²-z³
-> solution [1,0,1],trivial(3) [3,0,3],trivial(3)
endexp[4]
---------------- level 3
expanding queue[5]^3,meter=[2,2,2]: 3x+3x²+x³+3y+6x*y+3x²*y+3y²+3x*y²+y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+48z²+48x*z²+48y*z²-64z³+1
[3+4x,1+4y,0+16z]:	unknown -> [7] [1,0,0] 12x+12x²+4x³+12y+24x*y+12x²*y+12y²+12x*y²+4y³-45z-92x*z-48x²*z-84y*z-80x*y*z-48y²*z+192z²+192x*z²+192y*z²-256z³+4
[1+4x,3+4y,0+16z]:	transposed [7] by [1,0,2]
[1+4x,1+4y,8+16z]:	unknown -> [8] [0,0,1] 29x-18x²+4x³+29y-28x*y+12x²*y-18y²+12x*y²+4y³-107z+148x*z-48x²*z+148y*z-80x*y*z-48y²*z-288z²+192x*z²+192y*z²-256z³-13
[3+4x,3+4y,8+16z]:	unknown -> [9] [1,1,1] 9x-6x²+4x³+9y-4x*y+12x²*y-6y²+12x*y²+4y³-3z+60x*z-48x²*z+60y*z-80x*y*z-48y²*z-96z²+192x*z²+192y*z²-256z³+4
endexp[5]
expanding queue[6]^4,meter=[2,2,2]: x³+y+2x*y+12x²*y+48x*y²+64y³-3x²*z+2y*z-20x*y*z-48y²*z+3x*z²+12y*z²-z³
[1+4x,0+16y,1+4z]:	unknown -> [10] [0,0,0] 4x³+y+4x*y+48x²*y+192x*y²+256y³-12x²*z+4y*z-80x*y*z-192y²*z+12x*z²+48y*z²-4z³
-> solution [1,0,1],trivial(3) [5,0,5],trivial(3)
[3+4x,8+16y,1+4z]:	unknown -> [11] [1,1,0] 77x+30x²+4x³+303y+244x*y+48x²*y+480y²+192x*y²+256y³-69z-52x*z-12x²*z-228y*z-80x*y*z-192y²*z+30z²+12x*z²+48y*z²-4z³+64
[3+4x,0+16y,3+4z]:	unknown -> [12] [1,0,1] 4x³+9y+12x*y+48x²*y+192x*y²+256y³-12x²*z+12y*z-80x*y*z-192y²*z+12x*z²+48y*z²-4z³
-> solution [3,0,3],trivial(3) [7,0,7],trivial(3)
[1+4x,8+16y,3+4z]:	unknown -> [13] [0,1,1] 33x+18x²+4x³+111y+156x*y+48x²*y+288y²+192x*y²+256y³-25z-28x*z-12x²*z-140y*z-80x*y*z-192y²*z+18z²+12x*z²+48y*z²-4z³+15
endexp[6]
---------------- level 4
Maximum level 4 [14] mod 2: -x³-3x²*y-3x*y²-y³+3x²*z+5x*y*z+3y²*z-3x*z²-3y*z²+z³
