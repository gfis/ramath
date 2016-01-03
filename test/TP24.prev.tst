TranspositionSet={[1,0,3,2],[0,1,3,2],[1,0,2,3]}
isHomogeneous
ExponentGCDs=[1,1,1,1]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar norm
Refined variables=u,v,x,y
[0+1u,0+1v,0+1x,0+1y]:	unknown -> [1] -u²-v²+x²+y²; -2u*v+x*y
-> solution [0,0,0,0],trivial(3) [1,0,1,0],trivial(3) [0,1,1,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2,2]*2: -u²-v²+x²+y²; -2u*v+x*y
[0+2u,0+2v,0+2x,0+2y]:	non-primitive
-> solution [0,0,0,0],trivial(3) [2,0,2,0],trivial(3) [0,2,2,0],trivial(3) [2,0,0,2],trivial(3) [0,2,0,2],trivial(3)
[1+2u,0+2v,1+2x,0+2y]:	unknown -> [1] u+u²+v²-x-x²-y²; 2v+4u*v-y-2x*y
-> solution [1,0,1,0],trivial(3) [3,0,3,0],trivial(3)
[0+2u,1+2v,1+2x,0+2y]:	transposed [1] by [1,0,2,3]
[1+2u,0+2v,0+2x,1+2y]:	transposed [1] by [0,1,3,2]
[0+2u,1+2v,0+2x,1+2y]:	transposed [1] by [1,0,3,2]
----------------
expanding queue[1]^0,meter=[2,2,2,2]*4: u+u²+v²-x-x²-y²; 2v+4u*v-y-2x*y
[1+4u,0+4v,1+4x,0+4y]:	unknown -> [2] u+2u²+2v²-x-2x²-2y²; 2v+8u*v-y-4x*y
-> solution [1,0,1,0],trivial(3) [5,0,5,0],trivial(3)
[3+4u,0+4v,1+4x,0+4y]:	unknown -> [3] 3u+2u²+2v²-x-2x²-2y²+1; 6v+8u*v-y-4x*y
[1+4u,0+4v,3+4x,0+4y]:	unknown -> [4] u+2u²+2v²-3x-2x²-2y²-1; 2v+8u*v-3y-4x*y
[3+4u,0+4v,3+4x,0+4y]:	unknown -> [5] 3u+2u²+2v²-3x-2x²-2y²; 6v+8u*v-3y-4x*y
-> solution [3,0,3,0],trivial(3) [7,0,7,0],trivial(3)
----------------
expanding queue[2]^1,meter=[2,1,2,2]*8: u+2u²+2v²-x-2x²-2y²; 2v+8u*v-y-4x*y
[1+8u,0+4v,1+8x,0+8y]:	unknown -> [6] u+4u²+v²-x-4x²-4y²; v+8u*v-y-8x*y
-> solution [1,0,1,0],trivial(3) [9,0,9,0],trivial(3)
[5+8u,0+4v,5+8x,0+8y]:	unknown -> [7] 5u+4u²+v²-5x-4x²-4y²; 5v+8u*v-5y-8x*y
-> solution [5,0,5,0],trivial(3) [13,0,13,0],trivial(3)
expanding queue[3]^1,meter=[2,1,2,2]*8: 3u+2u²+2v²-x-2x²-2y²+1; 6v+8u*v-y-4x*y
[7+8u,0+4v,1+8x,0+8y]:	unknown -> [8] 7u+4u²+v²-x-4x²-4y²+3; 7v+8u*v-y-8x*y
[3+8u,0+4v,5+8x,0+8y]:	unknown -> [9] 3u+4u²+v²-5x-4x²-4y²-1; 3v+8u*v-5y-8x*y
expanding queue[4]^1,meter=[2,1,2,2]*8: u+2u²+2v²-3x-2x²-2y²-1; 2v+8u*v-3y-4x*y
[5+8u,0+4v,3+8x,0+8y]:	unknown -> [10] 5u+4u²+v²-3x-4x²-4y²+1; 5v+8u*v-3y-8x*y
[1+8u,0+4v,7+8x,0+8y]:	unknown -> [11] u+4u²+v²-7x-4x²-4y²-3; v+8u*v-7y-8x*y
expanding queue[5]^1,meter=[2,1,2,2]*8: 3u+2u²+2v²-3x-2x²-2y²; 6v+8u*v-3y-4x*y
[3+8u,0+4v,3+8x,0+8y]:	unknown -> [12] 3u+4u²+v²-3x-4x²-4y²; 3v+8u*v-3y-8x*y
-> solution [3,0,3,0],trivial(3) [11,0,11,0],trivial(3)
[7+8u,0+4v,7+8x,0+8y]:	unknown -> [13] 7u+4u²+v²-7x-4x²-4y²; 7v+8u*v-7y-8x*y
-> solution [7,0,7,0],trivial(3) [15,0,15,0],trivial(3)
----------------
expanding queue[6]^2,meter=[2,2,2,2]*16: u+4u²+v²-x-4x²-4y²; v+8u*v-y-8x*y
[1+16u,0+8v,1+16x,0+16y]:	unknown -> [14] u+8u²+2v²-x-8x²-8y²; v+16u*v-y-16x*y
-> solution [1,0,1,0],trivial(3) [17,0,17,0],trivial(3)
[9+16u,0+8v,9+16x,0+16y]:	unknown -> [15] 9u+8u²+2v²-9x-8x²-8y²; 9v+16u*v-9y-16x*y
-> solution [9,0,9,0],trivial(3) [25,0,25,0],trivial(3)
[9+16u,4+8v,1+16x,8+16y]:	unknown -> [16] 9u+8u²+2v+2v²-x-8x²-8y-8y²+1; 8u+9v+16u*v-8x-y-16x*y+4
[1+16u,4+8v,9+16x,8+16y]:	unknown -> [17] u+8u²+2v+2v²-9x-8x²-8y-8y²-4; 8u+v+16u*v-8x-9y-16x*y-4
expanding queue[7]^2,meter=[2,2,2,2]*16: 5u+4u²+v²-5x-4x²-4y²; 5v+8u*v-5y-8x*y
[5+16u,0+8v,5+16x,0+16y]:	unknown -> [18] 5u+8u²+2v²-5x-8x²-8y²; 5v+16u*v-5y-16x*y
-> solution [5,0,5,0],trivial(3) [21,0,21,0],trivial(3)
[13+16u,0+8v,13+16x,0+16y]:	unknown -> [19] 13u+8u²+2v²-13x-8x²-8y²; 13v+16u*v-13y-16x*y
-> solution [13,0,13,0],trivial(3) [29,0,29,0],trivial(3)
[13+16u,4+8v,5+16x,8+16y]:	unknown -> [20] 13u+8u²+2v+2v²-5x-8x²-8y-8y²+3; 8u+13v+16u*v-8x-5y-16x*y+4
[5+16u,4+8v,13+16x,8+16y]:	unknown -> [21] 5u+8u²+2v+2v²-13x-8x²-8y-8y²-6; 8u+5v+16u*v-8x-13y-16x*y-4
expanding queue[8]^3,meter=[2,2,2,2]*16: 7u+4u²+v²-x-4x²-4y²+3; 7v+8u*v-y-8x*y
[15+16u,0+8v,1+16x,0+16y]:	unknown -> [22] 15u+8u²+2v²-x-8x²-8y²+7; 15v+16u*v-y-16x*y
[7+16u,0+8v,9+16x,0+16y]:	unknown -> [23] 7u+8u²+2v²-9x-8x²-8y²-1; 7v+16u*v-9y-16x*y
[7+16u,4+8v,1+16x,8+16y]:	unknown -> [24] 7u+8u²+2v+2v²-x-8x²-8y-8y²; 8u+7v+16u*v-8x-y-16x*y+3
[15+16u,4+8v,9+16x,8+16y]:	unknown -> [25] 15u+8u²+2v+2v²-9x-8x²-8y-8y²+3; 8u+15v+16u*v-8x-9y-16x*y+3
expanding queue[9]^3,meter=[2,2,2,2]*16: 3u+4u²+v²-5x-4x²-4y²-1; 3v+8u*v-5y-8x*y
[11+16u,0+8v,5+16x,0+16y]:	unknown -> [26] 11u+8u²+2v²-5x-8x²-8y²+3; 11v+16u*v-5y-16x*y
[3+16u,0+8v,13+16x,0+16y]:	unknown -> [27] 3u+8u²+2v²-13x-8x²-8y²-5; 3v+16u*v-13y-16x*y
[3+16u,4+8v,5+16x,8+16y]:	unknown -> [28] 3u+8u²+2v+2v²-5x-8x²-8y-8y²-2; 8u+3v+16u*v-8x-5y-16x*y-1
[11+16u,4+8v,13+16x,8+16y]:	unknown -> [29] 11u+8u²+2v+2v²-13x-8x²-8y-8y²-3; 8u+11v+16u*v-8x-13y-16x*y-1
expanding queue[10]^4,meter=[2,2,2,2]*16: 5u+4u²+v²-3x-4x²-4y²+1; 5v+8u*v-3y-8x*y
[13+16u,0+8v,3+16x,0+16y]:	unknown -> [30] 13u+8u²+2v²-3x-8x²-8y²+5; 13v+16u*v-3y-16x*y
[5+16u,0+8v,11+16x,0+16y]:	unknown -> [31] 5u+8u²+2v²-11x-8x²-8y²-3; 5v+16u*v-11y-16x*y
[5+16u,4+8v,3+16x,8+16y]:	unknown -> [32] 5u+8u²+2v+2v²-3x-8x²-8y-8y²-1; 8u+5v+16u*v-8x-3y-16x*y+1
[13+16u,4+8v,11+16x,8+16y]:	unknown -> [33] 13u+8u²+2v+2v²-11x-8x²-8y-8y²; 8u+13v+16u*v-8x-11y-16x*y+1
expanding queue[11]^4,meter=[2,2,2,2]*16: u+4u²+v²-7x-4x²-4y²-3; v+8u*v-7y-8x*y
[9+16u,0+8v,7+16x,0+16y]:	unknown -> [34] 9u+8u²+2v²-7x-8x²-8y²+1; 9v+16u*v-7y-16x*y
[1+16u,0+8v,15+16x,0+16y]:	unknown -> [35] u+8u²+2v²-15x-8x²-8y²-7; v+16u*v-15y-16x*y
[1+16u,4+8v,7+16x,8+16y]:	unknown -> [36] u+8u²+2v+2v²-7x-8x²-8y-8y²-3; 8u+v+16u*v-8x-7y-16x*y-3
[9+16u,4+8v,15+16x,8+16y]:	unknown -> [37] 9u+8u²+2v+2v²-15x-8x²-8y-8y²-6; 8u+9v+16u*v-8x-15y-16x*y-3
expanding queue[12]^5,meter=[2,2,2,2]*16: 3u+4u²+v²-3x-4x²-4y²; 3v+8u*v-3y-8x*y
[3+16u,0+8v,3+16x,0+16y]:	unknown -> [38] 3u+8u²+2v²-3x-8x²-8y²; 3v+16u*v-3y-16x*y
-> solution [3,0,3,0],trivial(3) [19,0,19,0],trivial(3)
[11+16u,0+8v,11+16x,0+16y]:	unknown -> [39] 11u+8u²+2v²-11x-8x²-8y²; 11v+16u*v-11y-16x*y
-> solution [11,0,11,0],trivial(3) [27,0,27,0],trivial(3)
[11+16u,4+8v,3+16x,8+16y]:	unknown -> [40] 11u+8u²+2v+2v²-3x-8x²-8y-8y²+2; 8u+11v+16u*v-8x-3y-16x*y+4
[3+16u,4+8v,11+16x,8+16y]:	unknown -> [41] 3u+8u²+2v+2v²-11x-8x²-8y-8y²-5; 8u+3v+16u*v-8x-11y-16x*y-4
expanding queue[13]^5,meter=[2,2,2,2]*16: 7u+4u²+v²-7x-4x²-4y²; 7v+8u*v-7y-8x*y
[7+16u,0+8v,7+16x,0+16y]:	unknown -> [42] 7u+8u²+2v²-7x-8x²-8y²; 7v+16u*v-7y-16x*y
-> solution [7,0,7,0],trivial(3) [23,0,23,0],trivial(3)
[15+16u,0+8v,15+16x,0+16y]:	unknown -> [43] 15u+8u²+2v²-15x-8x²-8y²; 15v+16u*v-15y-16x*y
-> solution [15,0,15,0],trivial(3) [31,0,31,0],trivial(3)
[15+16u,4+8v,7+16x,8+16y]:	unknown -> [44] 15u+8u²+2v+2v²-7x-8x²-8y-8y²+4; 8u+15v+16u*v-8x-7y-16x*y+4
[7+16u,4+8v,15+16x,8+16y]:	unknown -> [45] 7u+8u²+2v+2v²-15x-8x²-8y-8y²-7; 8u+7v+16u*v-8x-15y-16x*y-4
Maximum level 3 [46] mod 2: -u²-v²+x²+y²; -2u*v+x*y
