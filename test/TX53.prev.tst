TranspositionSet={[0,2,1]}
isHomogeneous
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] -x³+3x²*y-3x*y²+y³+3x²*z-5x*y*z+3y²*z-3x*z²+3y*z²+z³
-> solution [0,0,0],trivial(3) [1,1,0],trivial(3) [1,0,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: -x³+3x²*y-3x*y²+y³+3x²*z-5x*y*z+3y²*z-3x*z²+3y*z²+z³
[0+2x,0+2y,0+2z]:	non-primitive
-> solution [0,0,0],trivial(3) [2,2,0],trivial(3) [2,0,2],trivial(3)
[1+2x,1+2y,0+2z]:	unknown -> [1] 4x³-12x²*y+12x*y²-4y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+12x*z²-12y*z²-4z³
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
[1+2x,0+2y,1+2z]:	transposed [1] by [0,2,1]
[0+2x,1+2y,1+2z]:	unknown -> [2] 11x-12x²+4x³-12y+22x*y-12x²*y-12y²+12x*y²-4y³-12z+22x*z-12x²*z-24y*z+20x*y*z-12y²*z-12z²+12x*z²-12y*z²-4z³-4
----------------
expanding queue[1]^0,meter=[1,1,2]: 4x³-12x²*y+12x*y²-4y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+12x*z²-12y*z²-4z³
[1+2x,1+2y,0+4z]:	unknown -> [3] 2x³-6x²*y+6x*y²-2y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+24x*z²-24y*z²-16z³
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
expanding queue[2]^0,meter=[2,1,1]: 11x-12x²+4x³-12y+22x*y-12x²*y-12y²+12x*y²-4y³-12z+22x*z-12x²*z-24y*z+20x*y*z-12y²*z-12z²+12x*z²-12y*z²-4z³-4
[0+4x,1+2y,1+2z]:	unknown -> [4] 11x-24x²+16x³-6y+22x*y-24x²*y-6y²+12x*y²-2y³-6z+22x*z-24x²*z-12y*z+20x*y*z-6y²*z-6z²+12x*z²-6y*z²-2z³-2
----------------
expanding queue[3]^1,meter=[1,1,2]: 2x³-6x²*y+6x*y²-2y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+24x*z²-24y*z²-16z³
[1+2x,1+2y,0+8z]:	unknown -> [5] x³-3x²*y+3x*y²-y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+48x*z²-48y*z²-64z³
-> solution [1,1,0],trivial(3) [3,3,0],trivial(3)
expanding queue[4]^2,meter=[2,1,1]: 11x-24x²+16x³-6y+22x*y-24x²*y-6y²+12x*y²-2y³-6z+22x*z-24x²*z-12y*z+20x*y*z-6y²*z-6z²+12x*z²-6y*z²-2z³-2
[0+8x,1+2y,1+2z]:	unknown -> [6] 11x-48x²+64x³-3y+22x*y-48x²*y-3y²+12x*y²-y³-3z+22x*z-48x²*z-6y*z+20x*y*z-3y²*z-3z²+12x*z²-3y*z²-z³-1
----------------
expanding queue[5]^3,meter=[2,2,2]: x³-3x²*y+3x*y²-y³-z-2x*z-12x²*z-2y*z+20x*y*z-12y²*z+48x*z²-48y*z²-64z³
[1+4x,1+4y,0+16z]:	unknown -> [7] 4x³-12x²*y+12x*y²-4y³-z-4x*z-48x²*z-4y*z+80x*y*z-48y²*z+192x*z²-192y*z²-256z³
-> solution [1,1,0],trivial(3) [5,5,0],trivial(3)
[3+4x,3+4y,0+16z]:	unknown -> [8] 4x³-12x²*y+12x*y²-4y³-9z-12x*z-48x²*z-12y*z+80x*y*z-48y²*z+192x*z²-192y*z²-256z³
-> solution [3,3,0],trivial(3) [7,7,0],trivial(3)
[3+4x,1+4y,8+16z]:	unknown -> [9] 25x-18x²+4x³-33y+28x*y-12x²*y-18y²+12x*y²-4y³-111z+140x*z-48x²*z-156y*z+80x*y*z-48y²*z-288z²+192x*z²-192y*z²-256z³-15
[1+4x,3+4y,8+16z]:	unknown -> [10] 69x-30x²+4x³-77y+52x*y-12x²*y-30y²+12x*y²-4y³-303z+228x*z-48x²*z-244y*z+80x*y*z-48y²*z-480z²+192x*z²-192y*z²-256z³-64
expanding queue[6]^4,meter=[2,2,2]: 11x-48x²+64x³-3y+22x*y-48x²*y-3y²+12x*y²-y³-3z+22x*z-48x²*z-6y*z+20x*y*z-3y²*z-3z²+12x*z²-3y*z²-z³-1
[8+16x,1+4y,1+4z]:	unknown -> [11] 107x+288x²+256x³-29y-148x*y-192x²*y+18y²+48x*y²-4y³-29z-148x*z-192x²*z+28y*z+80x*y*z-12y²*z+18z²+48x*z²-12y*z²-4z³+13
[0+16x,3+4y,1+4z]:	unknown -> [12] 45x-192x²+256x³-12y+92x*y-192x²*y-12y²+48x*y²-4y³-12z+84x*z-192x²*z-24y*z+80x*y*z-12y²*z-12z²+48x*z²-12y*z²-4z³-4
[0+16x,1+4y,3+4z]:	transposed [12] by [0,2,1]
[8+16x,3+4y,3+4z]:	unknown -> [13] 3x+96x²+256x³-9y-60x*y-192x²*y+6y²+48x*y²-4y³-9z-60x*z-192x²*z+4y*z+80x*y*z-12y²*z+6z²+48x*z²-12y*z²-4z³-4
----------------
expanding queue[7]^5,meter=[1,1,2]: 4x³-12x²*y+12x*y²-4y³-z-4x*z-48x²*z-4y*z+80x*y*z-48y²*z+192x*z²-192y*z²-256z³
[1+4x,1+4y,0+32z]:	unknown -> [14] 2x³-6x²*y+6x*y²-2y³-z-4x*z-48x²*z-4y*z+80x*y*z-48y²*z+384x*z²-384y*z²-1024z³
-> solution [1,1,0],trivial(3) [5,5,0],trivial(3)
expanding queue[8]^5,meter=[1,1,2]: 4x³-12x²*y+12x*y²-4y³-9z-12x*z-48x²*z-12y*z+80x*y*z-48y²*z+192x*z²-192y*z²-256z³
[3+4x,3+4y,0+32z]:	unknown -> [15] 2x³-6x²*y+6x*y²-2y³-9z-12x*z-48x²*z-12y*z+80x*y*z-48y²*z+384x*z²-384y*z²-1024z³
-> solution [3,3,0],trivial(3) [7,7,0],trivial(3)
expanding queue[9]^5,meter=[2,2,2]: 25x-18x²+4x³-33y+28x*y-12x²*y-18y²+12x*y²-4y³-111z+140x*z-48x²*z-156y*z+80x*y*z-48y²*z-288z²+192x*z²-192y*z²-256z³-15
[7+8x,1+8y,8+32z]:	unknown -> [16] x-12x²+16x³-17y+8x*y-48x²*y-12y²+48x*y²-16y³-19z+88x*z-192x²*z-152y*z+320x*y*z-192y²*z-192z²+768x*z²-768y*z²-1024z³-2
[3+8x,5+8y,8+32z]:	unknown -> [17] 65x-60x²+16x³-81y+104x*y-48x²*y-60y²+48x*y²-16y³-315z+440x*z-192x²*z-504y*z+320x*y*z-192y²*z-960z²+768x*z²-768y*z²-1024z³-35
[3+8x,1+8y,24+32z]:	unknown -> [18] 357x-132x²+16x³-381y+216x*y-48x²*y-132y²+48x*y²-16y³-1455z+1048x*z-192x²*z-1080y*z+320x*y*z-192y²*z-2112z²+768x*z²-768y*z²-1024z³-335
[7+8x,5+8y,24+32z]:	unknown -> [19] 333x-132x²+16x³-405y+216x*y-48x²*y-132y²+48x*y²-16y³-1487z+1016x*z-192x²*z-1112y*z+320x*y*z-192y²*z-2112z²+768x*z²-768y*z²-1024z³-359
expanding queue[10]^5,meter=[2,2,2]: 69x-30x²+4x³-77y+52x*y-12x²*y-30y²+12x*y²-4y³-303z+228x*z-48x²*z-244y*z+80x*y*z-48y²*z-480z²+192x*z²-192y*z²-256z³-64
[1+8x,3+8y,8+32z]:	unknown -> [20] 69x-60x²+16x³-77y+104x*y-48x²*y-60y²+48x*y²-16y³-303z+456x*z-192x²*z-488y*z+320x*y*z-192y²*z-960z²+768x*z²-768y*z²-1024z³-32
[5+8x,7+8y,8+32z]:	unknown -> [21] 61x-60x²+16x³-85y+104x*y-48x²*y-60y²+48x*y²-16y³-335z+424x*z-192x²*z-520y*z+320x*y*z-192y²*z-960z²+768x*z²-768y*z²-1024z³-40
[5+8x,3+8y,24+32z]:	unknown -> [22] 345x-132x²+16x³-393y+216x*y-48x²*y-132y²+48x*y²-16y³-1467z+1032x*z-192x²*z-1096y*z+320x*y*z-192y²*z-2112z²+768x*z²-768y*z²-1024z³-344
[1+8x,7+8y,24+32z]:	unknown -> [23] 633x-180x²+16x³-681y+312x*y-48x²*y-180y²+48x*y²-16y³-2707z+1384x*z-192x²*z-1448y*z+320x*y*z-192y²*z-2880z²+768x*z²-768y*z²-1024z³-849
expanding queue[11]^6,meter=[2,2,2]: 107x+288x²+256x³-29y-148x*y-192x²*y+18y²+48x*y²-4y³-29z-148x*z-192x²*z+28y*z+80x*y*z-12y²*z+18z²+48x*z²-12y*z²-4z³+13
[24+32x,1+8y,1+8z]:	unknown -> [24] 1451x+2112x²+1024x³-369y-1064x*y-768x²*y+132y²+192x*y²-16y³-369z-1064x*z-768x²*z+216y*z+320x*y*z-48y²*z+132z²+192x*z²-48y*z²-16z³+332
[8+32x,5+8y,1+8z]:	unknown -> [25] 7x+192x²+1024x³-5y-104x*y-768x²*y+12y²+192x*y²-16y³-13z-136x*z-768x²*z+8y*z+320x*y*z-48y²*z+12z²+192x*z²-48y*z²-16z³-1
[8+32x,1+8y,5+8z]:	transposed [25] by [0,2,1]
[24+32x,5+8y,5+8z]:	unknown -> [26] 563x+1344x²+1024x³-177y-712x*y-768x²*y+84y²+192x*y²-16y³-177z-712x*z-768x²*z+120y*z+320x*y*z-48y²*z+84z²+192x*z²-48y*z²-16z³+67
expanding queue[12]^6,meter=[2,1,1]: 45x-192x²+256x³-12y+92x*y-192x²*y-12y²+48x*y²-4y³-12z+84x*z-192x²*z-24y*z+80x*y*z-12y²*z-12z²+48x*z²-12y*z²-4z³-4
[0+32x,3+4y,1+4z]:	unknown -> [27] 45x-384x²+1024x³-6y+92x*y-384x²*y-6y²+48x*y²-2y³-6z+84x*z-384x²*z-12y*z+80x*y*z-6y²*z-6z²+48x*z²-6y*z²-2z³-2
expanding queue[13]^6,meter=[2,2,2]: 3x+96x²+256x³-9y-60x*y-192x²*y+6y²+48x*y²-4y³-9z-60x*z-192x²*z+4y*z+80x*y*z-12y²*z+6z²+48x*z²-12y*z²-4z³-4
[8+32x,3+8y,3+8z]:	unknown -> [28] 3x+192x²+1024x³-9y-120x*y-768x²*y+12y²+192x*y²-16y³-9z-120x*z-768x²*z+8y*z+320x*y*z-48y²*z+12z²+192x*z²-48y*z²-16z³-2
[24+32x,7+8y,3+8z]:	unknown -> [29] 567x+1344x²+1024x³-165y-696x*y-768x²*y+84y²+192x*y²-16y³-189z-728x*z-768x²*z+120y*z+320x*y*z-48y²*z+84z²+192x*z²-48y*z²-16z³+70
[24+32x,3+8y,7+8z]:	transposed [29] by [0,2,1]
[8+32x,7+8y,7+8z]:	unknown -> [30] 59x-576x²+1024x³-41y+232x*y-768x²*y-36y²+192x*y²-16y³-41z+232x*z-768x²*z-88y*z+320x*y*z-48y²*z-36z²+192x*z²-48y*z²-16z³-19
Maximum level 4 [31] mod 2: -x³+3x²*y-3x*y²+y³+3x²*z-5x*y*z+3y²*z-3x*z²+3y*z²+z³
