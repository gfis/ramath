TranspositionSet={[0,2,1]}
isHomogeneous
Expanding for base=2, level=4, reasons+features=base,transpose,primitive,same,similiar norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] -x³+3x²*y-3x*y²+y³+3x²*z-5x*y*z+3y²*z-3x*z²+3y*z²+z³
-> solution [0,0,0],trivial(3) [1,1,0],trivial(3) [1,0,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: -x³+3x²*y-3x*y²+y³+3x²*z-5x*y*z+3y²*z-3x*z²+3y*z²+z³
[0+2x,0+2y,0+2z]:	non-primitive
-> solution [0,0,0],trivial(3) [2,2,0],trivial(3) [2,0,2],trivial(3)
[1+2x,1+2y,0+2z]:	unknown -> [1] [1,1,0] 4x³-12x²*y+12x*y²-4y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+12x*z²-12y*z²-4z³
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
[1+2x,0+2y,1+2z]:	transposed [1] by [0,2,1]
[0+2x,1+2y,1+2z]:	unknown -> [2] [0,1,1] 11x-12x²+4x³-12y+22x*y-12x²*y-12y²+12x*y²-4y³-12z+22x*z-12x²*z-24y*z+20x*y*z-12y²*z-12z²+12x*z²-12y*z²-4z³-4
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[1,1,2]: 4x³-12x²*y+12x*y²-4y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+12x*z²-12y*z²-4z³
[1+2x,1+2y,0+4z]:	unknown -> [3] [0,0,0] 2x³-6x²*y+6x*y²-2y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+24x*z²-24y*z²-16z³
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
endexp[1]
expanding queue[2]^0,meter=[2,1,1]: 11x-12x²+4x³-12y+22x*y-12x²*y-12y²+12x*y²-4y³-12z+22x*z-12x²*z-24y*z+20x*y*z-12y²*z-12z²+12x*z²-12y*z²-4z³-4
[0+4x,1+2y,1+2z]:	unknown -> [4] [0,0,0] 11x-24x²+16x³-6y+22x*y-24x²*y-6y²+12x*y²-2y³-6z+22x*z-24x²*z-12y*z+20x*y*z-6y²*z-6z²+12x*z²-6y*z²-2z³-2
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[1,1,2]: 2x³-6x²*y+6x*y²-2y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+24x*z²-24y*z²-16z³
[1+2x,1+2y,0+8z]:	unknown -> [5] [0,0,0] x³-3x²*y+3x*y²-y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+48x*z²-48y*z²-64z³
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
endexp[3]
expanding queue[4]^2,meter=[2,1,1]: 11x-24x²+16x³-6y+22x*y-24x²*y-6y²+12x*y²-2y³-6z+22x*z-24x²*z-12y*z+20x*y*z-6y²*z-6z²+12x*z²-6y*z²-2z³-2
[0+8x,1+2y,1+2z]:	unknown -> [6] [0,0,0] 11x-48x²+64x³-3y+22x*y-48x²*y-3y²+12x*y²-y³-3z+22x*z-48x²*z-6y*z+20x*y*z-3y²*z-3z²+12x*z²-3y*z²-z³-1
endexp[4]
---------------- level 3
expanding queue[5]^3,meter=[2,2,2]: x³-3x²*y+3x*y²-y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+48x*z²-48y*z²-64z³
[1+4x,1+4y,0+16z]:	unknown -> [7] [0,0,0] 4x³-12x²*y+12x*y²-4y³-z-4x*z-48x²*z-4y*z+80x*y*z-48y²*z+192x*z²-192y*z²-256z³
-> solution [1,1,0],trivial(3) [5,5,0],trivial(3)
[3+4x,3+4y,0+16z]:	unknown -> [8] [1,1,0] 4x³-12x²*y+12x*y²-4y³-9z-12x*z-48x²*z-12y*z+80x*y*z-48y²*z+192x*z²-192y*z²-256z³
-> solution [3,3,0],trivial(3) [7,7,0],trivial(3)
[3+4x,1+4y,8+16z]:	unknown -> [9] [1,0,1] 25x-18x²+4x³-33y+28x*y-12x²*y-18y²+12x*y²-4y³-111z+140x*z-48x²*z-156y*z+80x*y*z-48y²*z-288z²+192x*z²-192y*z²-256z³-15
[1+4x,3+4y,8+16z]:	unknown -> [10] [0,1,1] 69x-30x²+4x³-77y+52x*y-12x²*y-30y²+12x*y²-4y³-303z+228x*z-48x²*z-244y*z+80x*y*z-48y²*z-480z²+192x*z²-192y*z²-256z³-64
endexp[5]
expanding queue[6]^4,meter=[2,2,2]: 11x-48x²+64x³-3y+22x*y-48x²*y-3y²+12x*y²-y³-3z+22x*z-48x²*z-6y*z+20x*y*z-3y²*z-3z²+12x*z²-3y*z²-z³-1
[8+16x,1+4y,1+4z]:	unknown -> [11] [1,0,0] 107x+288x²+256x³-29y-148x*y-192x²*y+18y²+48x*y²-4y³-29z-148x*z-192x²*z+28y*z+80x*y*z-12y²*z+18z²+48x*z²-12y*z²-4z³+13
[0+16x,3+4y,1+4z]:	unknown -> [12] [0,1,0] 45x-192x²+256x³-12y+92x*y-192x²*y-12y²+48x*y²-4y³-12z+84x*z-192x²*z-24y*z+80x*y*z-12y²*z-12z²+48x*z²-12y*z²-4z³-4
[0+16x,1+4y,3+4z]:	transposed [12] by [0,2,1]
[8+16x,3+4y,3+4z]:	unknown -> [13] [1,1,1] 3x+96x²+256x³-9y-60x*y-192x²*y+6y²+48x*y²-4y³-9z-60x*z-192x²*z+4y*z+80x*y*z-12y²*z+6z²+48x*z²-12y*z²-4z³-4
endexp[6]
---------------- level 4
Maximum level 4 [14] mod 2: -x³+3x²*y-3x*y²+y³+3x²*z-5x*y*z+3y²*z-3x*z²+3y*z²+z³
