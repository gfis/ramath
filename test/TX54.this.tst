TranspositionSet={[1,0,2]}
isHomogeneous
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] -x³-3x²*y-3x*y²-y³+3x²*z+5x*y*z+3y²*z-3x*z²-3y*z²+z³
-> solution [0,0,0],trivial(3) [1,0,1],trivial(3) [0,1,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: -x³-3x²*y-3x*y²-y³+3x²*z+5x*y*z+3y²*z-3x*z²-3y*z²+z³
[0+2x,0+2y,0+2z]:	non-primitive
-> solution [0,0,0],trivial(3) [2,0,2],trivial(3) [0,2,2],trivial(3)
[1+2x,1+2y,0+2z]:	unknown -> [1] [1,1,0] 12x+12x²+4x³+12y+24x*y+12x²*y+12y²+12x*y²+4y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+12z²+12x*z²+12y*z²-4z³+4
[1+2x,0+2y,1+2z]:	unknown -> [2] [1,0,1] 4x³+y+2x*y+12x²*y+12x*y²+4y³-12x²*z+2y*z-20x*y*z-12y²*z+12x*z²+12y*z²-4z³
-> solution [1,0,1],trivial(3) [3,0,3],trivial(3)
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[1,1,2]: 12x+12x²+4x³+12y+24x*y+12x²*y+12y²+12x*y²+4y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+12z²+12x*z²+12y*z²-4z³+4
[1+2x,1+2y,0+4z]:	unknown -> [3] [0,0,0] 6x+6x²+2x³+6y+12x*y+6x²*y+6y²+6x*y²+2y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+24z²+24x*z²+24y*z²-16z³+2
expanding queue[2]^0,meter=[1,2,1]: 4x³+y+2x*y+12x²*y+12x*y²+4y³-12x²*z+2y*z-20x*y*z-12y²*z+12x*z²+12y*z²-4z³
[1+2x,0+4y,1+2z]:	unknown -> [4] [0,0,0] 2x³+y+2x*y+12x²*y+24x*y²+16y³-6x²*z+2y*z-20x*y*z-24y²*z+6x*z²+12y*z²-2z³
-> solution [1,0,1],trivial(3) [3,0,3],trivial(3)
----------------
expanding queue[3]^1,meter=[1,1,2]: 6x+6x²+2x³+6y+12x*y+6x²*y+6y²+6x*y²+2y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+24z²+24x*z²+24y*z²-16z³+2
[1+2x,1+2y,0+8z]:	unknown -> [5] [0,0,0] 3x+3x²+x³+3y+6x*y+3x²*y+3y²+3x*y²+y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+48z²+48x*z²+48y*z²-64z³+1
expanding queue[4]^2,meter=[1,2,1]: 2x³+y+2x*y+12x²*y+24x*y²+16y³-6x²*z+2y*z-20x*y*z-24y²*z+6x*z²+12y*z²-2z³
[1+2x,0+8y,1+2z]:	unknown -> [6] [0,0,0] x³+y+2x*y+12x²*y+48x*y²+64y³-3x²*z+2y*z-20x*y*z-48y²*z+3x*z²+12y*z²-z³
-> solution [1,0,1],trivial(3) [3,0,3],trivial(3)
----------------
expanding queue[5]^3,meter=[2,2,2]: 3x+3x²+x³+3y+6x*y+3x²*y+3y²+3x*y²+y³-11z-22x*z-12x²*z-22y*z-20x*y*z-12y²*z+48z²+48x*z²+48y*z²-64z³+1
[3+4x,1+4y,0+16z]:	unknown -> [7] [1,0,0] 12x+12x²+4x³+12y+24x*y+12x²*y+12y²+12x*y²+4y³-45z-92x*z-48x²*z-84y*z-80x*y*z-48y²*z+192z²+192x*z²+192y*z²-256z³+4
[1+4x,3+4y,0+16z]:	transposed [7] by [1,0,2]
[1+4x,1+4y,8+16z]:	unknown -> [8] [0,0,1] 29x-18x²+4x³+29y-28x*y+12x²*y-18y²+12x*y²+4y³-107z+148x*z-48x²*z+148y*z-80x*y*z-48y²*z-288z²+192x*z²+192y*z²-256z³-13
[3+4x,3+4y,8+16z]:	unknown -> [9] [1,1,1] 9x-6x²+4x³+9y-4x*y+12x²*y-6y²+12x*y²+4y³-3z+60x*z-48x²*z+60y*z-80x*y*z-48y²*z-96z²+192x*z²+192y*z²-256z³+4
expanding queue[6]^4,meter=[2,2,2]: x³+y+2x*y+12x²*y+48x*y²+64y³-3x²*z+2y*z-20x*y*z-48y²*z+3x*z²+12y*z²-z³
[1+4x,0+16y,1+4z]:	unknown -> [10] [0,0,0] 4x³+y+4x*y+48x²*y+192x*y²+256y³-12x²*z+4y*z-80x*y*z-192y²*z+12x*z²+48y*z²-4z³
-> solution [1,0,1],trivial(3) [5,0,5],trivial(3)
[3+4x,8+16y,1+4z]:	unknown -> [11] [1,1,0] 77x+30x²+4x³+303y+244x*y+48x²*y+480y²+192x*y²+256y³-69z-52x*z-12x²*z-228y*z-80x*y*z-192y²*z+30z²+12x*z²+48y*z²-4z³+64
[3+4x,0+16y,3+4z]:	unknown -> [12] [1,0,1] 4x³+9y+12x*y+48x²*y+192x*y²+256y³-12x²*z+12y*z-80x*y*z-192y²*z+12x*z²+48y*z²-4z³
-> solution [3,0,3],trivial(3) [7,0,7],trivial(3)
[1+4x,8+16y,3+4z]:	unknown -> [13] [0,1,1] 33x+18x²+4x³+111y+156x*y+48x²*y+288y²+192x*y²+256y³-25z-28x*z-12x²*z-140y*z-80x*y*z-192y²*z+18z²+12x*z²+48y*z²-4z³+15
----------------
expanding queue[7]^5,meter=[1,1,2]: 12x+12x²+4x³+12y+24x*y+12x²*y+12y²+12x*y²+4y³-45z-92x*z-48x²*z-84y*z-80x*y*z-48y²*z+192z²+192x*z²+192y*z²-256z³+4
[3+4x,1+4y,0+32z]:	unknown -> [14] [0,0,0] 6x+6x²+2x³+6y+12x*y+6x²*y+6y²+6x*y²+2y³-45z-92x*z-48x²*z-84y*z-80x*y*z-48y²*z+384z²+384x*z²+384y*z²-1024z³+2
expanding queue[8]^5,meter=[2,2,2]: 29x-18x²+4x³+29y-28x*y+12x²*y-18y²+12x*y²+4y³-107z+148x*z-48x²*z+148y*z-80x*y*z-48y²*z-288z²+192x*z²+192y*z²-256z³-13
[5+8x,1+8y,8+32z]:	unknown -> [15] [1,0,0] 5x-12x²+16x³+13y-8x*y+48x²*y-12y²+48x*y²+16y³-7z+104x*z-192x²*z+136y*z-320x*y*z-192y²*z-192z²+768x*z²+768y*z²-1024z³+1
[1+8x,5+8y,8+32z]:	transposed [15] by [1,0,2]
[1+8x,1+8y,24+32z]:	unknown -> [16] [0,0,1] 369x-132x²+16x³+369y-216x*y+48x²*y-132y²+48x*y²+16y³-1451z+1064x*z-192x²*z+1064y*z-320x*y*z-192y²*z-2112z²+768x*z²+768y*z²-1024z³-332
[5+8x,5+8y,24+32z]:	unknown -> [17] [1,1,1] 177x-84x²+16x³+177y-120x*y+48x²*y-84y²+48x*y²+16y³-563z+712x*z-192x²*z+712y*z-320x*y*z-192y²*z-1344z²+768x*z²+768y*z²-1024z³-67
expanding queue[9]^5,meter=[2,2,2]: 9x-6x²+4x³+9y-4x*y+12x²*y-6y²+12x*y²+4y³-3z+60x*z-48x²*z+60y*z-80x*y*z-48y²*z-96z²+192x*z²+192y*z²-256z³+4
[3+8x,3+8y,8+32z]:	unknown -> [18] [0,0,0] 9x-12x²+16x³+9y-8x*y+48x²*y-12y²+48x*y²+16y³-3z+120x*z-192x²*z+120y*z-320x*y*z-192y²*z-192z²+768x*z²+768y*z²-1024z³+2
[7+8x,7+8y,8+32z]:	unknown -> [19] [1,1,0] 41x+36x²+16x³+41y+88x*y+48x²*y+36y²+48x*y²+16y³-59z-232x*z-192x²*z-232y*z-320x*y*z-192y²*z+576z²+768x*z²+768y*z²-1024z³+19
[7+8x,3+8y,24+32z]:	unknown -> [20] [1,0,1] 165x-84x²+16x³+189y-120x*y+48x²*y-84y²+48x*y²+16y³-567z+696x*z-192x²*z+728y*z-320x*y*z-192y²*z-1344z²+768x*z²+768y*z²-1024z³-70
[3+8x,7+8y,24+32z]:	transposed [20] by [1,0,2]
expanding queue[10]^6,meter=[1,2,1]: 4x³+y+4x*y+48x²*y+192x*y²+256y³-12x²*z+4y*z-80x*y*z-192y²*z+12x*z²+48y*z²-4z³
[1+4x,0+32y,1+4z]:	unknown -> [21] [0,0,0] 2x³+y+4x*y+48x²*y+384x*y²+1024y³-6x²*z+4y*z-80x*y*z-384y²*z+6x*z²+48y*z²-2z³
-> solution [1,0,1],trivial(3) [5,0,5],trivial(3)
expanding queue[11]^6,meter=[2,2,2]: 77x+30x²+4x³+303y+244x*y+48x²*y+480y²+192x*y²+256y³-69z-52x*z-12x²*z-228y*z-80x*y*z-192y²*z+30z²+12x*z²+48y*z²-4z³+64
[3+8x,8+32y,1+8z]:	unknown -> [22] [0,0,0] 77x+60x²+16x³+303y+488x*y+192x²*y+960y²+768x*y²+1024y³-69z-104x*z-48x²*z-456y*z-320x*y*z-768y²*z+60z²+48x*z²+192y*z²-16z³+32
[7+8x,24+32y,1+8z]:	unknown -> [23] [1,1,0] 681x+180x²+16x³+2707y+1448x*y+192x²*y+2880y²+768x*y²+1024y³-633z-312x*z-48x²*z-1384y*z-320x*y*z-768y²*z+180z²+48x*z²+192y*z²-16z³+849
[7+8x,8+32y,5+8z]:	unknown -> [24] [1,0,1] 85x+60x²+16x³+335y+520x*y+192x²*y+960y²+768x*y²+1024y³-61z-104x*z-48x²*z-424y*z-320x*y*z-768y²*z+60z²+48x*z²+192y*z²-16z³+40
[3+8x,24+32y,5+8z]:	unknown -> [25] [0,1,1] 393x+132x²+16x³+1467y+1096x*y+192x²*y+2112y²+768x*y²+1024y³-345z-216x*z-48x²*z-1032y*z-320x*y*z-768y²*z+132z²+48x*z²+192y*z²-16z³+344
expanding queue[12]^6,meter=[1,2,1]: 4x³+9y+12x*y+48x²*y+192x*y²+256y³-12x²*z+12y*z-80x*y*z-192y²*z+12x*z²+48y*z²-4z³
[3+4x,0+32y,3+4z]:	unknown -> [26] [0,0,0] 2x³+9y+12x*y+48x²*y+384x*y²+1024y³-6x²*z+12y*z-80x*y*z-384y²*z+6x*z²+48y*z²-2z³
-> solution [3,0,3],trivial(3) [7,0,7],trivial(3)
expanding queue[13]^6,meter=[2,2,2]: 33x+18x²+4x³+111y+156x*y+48x²*y+288y²+192x*y²+256y³-25z-28x*z-12x²*z-140y*z-80x*y*z-192y²*z+18z²+12x*z²+48y*z²-4z³+15
[5+8x,8+32y,3+8z]:	unknown -> [27] [1,0,0] 81x+60x²+16x³+315y+504x*y+192x²*y+960y²+768x*y²+1024y³-65z-104x*z-48x²*z-440y*z-320x*y*z-768y²*z+60z²+48x*z²+192y*z²-16z³+35
[1+8x,24+32y,3+8z]:	unknown -> [28] [0,1,0] 381x+132x²+16x³+1455y+1080x*y+192x²*y+2112y²+768x*y²+1024y³-357z-216x*z-48x²*z-1048y*z-320x*y*z-768y²*z+132z²+48x*z²+192y*z²-16z³+335
[1+8x,8+32y,7+8z]:	unknown -> [29] [0,0,1] 17x+12x²+16x³+19y+152x*y+192x²*y+192y²+768x*y²+1024y³-z-8x*z-48x²*z-88y*z-320x*y*z-768y²*z+12z²+48x*z²+192y*z²-16z³+2
[5+8x,24+32y,7+8z]:	unknown -> [30] [1,1,1] 405x+132x²+16x³+1487y+1112x*y+192x²*y+2112y²+768x*y²+1024y³-333z-216x*z-48x²*z-1016y*z-320x*y*z-768y²*z+132z²+48x*z²+192y*z²-16z³+359
Maximum level 4 [31] mod 2: -x³-3x²*y-3x*y²-y³+3x²*z+5x*y*z+3y²*z-3x*z²-3y*z²+z³
