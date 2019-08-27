TranspositionSet={[0,1,3,2],[1,0,2,3],[1,0,3,2]}
considerNonPrimitive
Expanding for base=2, level=3, reasons+features=base,transpose,primitive,same,similiar norm
Refined variables=u,v,x,y
[0+1u,0+1v,0+1x,0+1y]:	unknown -> [1] [0,0,0,0] -u²-v²+x²+y²; -2u*v+x*y
-> solution [0,0,0,0],trivial(3) [1,0,1,0],trivial(3) [0,1,1,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2,2]: -u²-v²+x²+y²; -2u*v+x*y
[0+2u,0+2v,0+2x,0+2y]:	non-primitive
-> solution [0,0,0,0],trivial(3) [2,0,2,0],trivial(3) [0,2,2,0],trivial(3) [2,0,0,2],trivial(3) [0,2,0,2],trivial(3)
[1+2u,0+2v,1+2x,0+2y]:	unknown -> [1] [1,0,1,0] u+u²+v²-x-x²-y²; 2v+4u*v-y-2x*y
-> solution [1,0,1,0],trivial(3) [3,0,3,0],trivial(3)
[0+2u,1+2v,1+2x,0+2y]:	transposed [1] by [1,0,2,3]
[1+2u,0+2v,0+2x,1+2y]:	transposed [1] by [0,1,3,2]
[0+2u,1+2v,0+2x,1+2y]:	transposed [1] by [1,0,3,2]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,2,2]: u+u²+v²-x-x²-y²; 2v+4u*v-y-2x*y
[1+4u,0+4v,1+4x,0+4y]:	unknown -> [2] [0,0,0,0] u+2u²+2v²-x-2x²-2y²; 2v+8u*v-y-4x*y
-> solution [1,0,1,0],trivial(3) [5,0,5,0],trivial(3)
[3+4u,0+4v,1+4x,0+4y]:	unknown -> [3] [1,0,0,0] 3u+2u²+2v²-x-2x²-2y²+1; 6v+8u*v-y-4x*y
[1+4u,0+4v,3+4x,0+4y]:	unknown -> [4] [0,0,1,0] u+2u²+2v²-3x-2x²-2y²-1; 2v+8u*v-3y-4x*y
[3+4u,0+4v,3+4x,0+4y]:	unknown -> [5] [1,0,1,0] 3u+2u²+2v²-3x-2x²-2y²; 6v+8u*v-3y-4x*y
-> solution [3,0,3,0],trivial(3) [7,0,7,0],trivial(3)
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[2,1,2,2]: u+2u²+2v²-x-2x²-2y²; 2v+8u*v-y-4x*y
[1+8u,0+4v,1+8x,0+8y]:	unknown -> [6] [0,0,0,0] u+4u²+v²-x-4x²-4y²; v+8u*v-y-8x*y
-> solution [1,0,1,0],trivial(3) [9,0,9,0],trivial(3)
[5+8u,0+4v,5+8x,0+8y]:	unknown -> [7] [1,0,1,0] 5u+4u²+v²-5x-4x²-4y²; 5v+8u*v-5y-8x*y
-> solution [5,0,5,0],trivial(3) [13,0,13,0],trivial(3)
endexp[2]
expanding queue[3]^1,meter=[2,1,2,2]: 3u+2u²+2v²-x-2x²-2y²+1; 6v+8u*v-y-4x*y
[7+8u,0+4v,1+8x,0+8y]:	unknown -> [8] [1,0,0,0] 7u+4u²+v²-x-4x²-4y²+3; 7v+8u*v-y-8x*y
[3+8u,0+4v,5+8x,0+8y]:	unknown -> [9] [0,0,1,0] 3u+4u²+v²-5x-4x²-4y²-1; 3v+8u*v-5y-8x*y
endexp[3]
expanding queue[4]^1,meter=[2,1,2,2]: u+2u²+2v²-3x-2x²-2y²-1; 2v+8u*v-3y-4x*y
[5+8u,0+4v,3+8x,0+8y]:	unknown -> [10] [1,0,0,0] 5u+4u²+v²-3x-4x²-4y²+1; 5v+8u*v-3y-8x*y
[1+8u,0+4v,7+8x,0+8y]:	unknown -> [11] [0,0,1,0] u+4u²+v²-7x-4x²-4y²-3; v+8u*v-7y-8x*y
endexp[4]
expanding queue[5]^1,meter=[2,1,2,2]: 3u+2u²+2v²-3x-2x²-2y²; 6v+8u*v-3y-4x*y
[3+8u,0+4v,3+8x,0+8y]:	unknown -> [12] [0,0,0,0] 3u+4u²+v²-3x-4x²-4y²; 3v+8u*v-3y-8x*y
-> solution [3,0,3,0],trivial(3) [11,0,11,0],trivial(3)
[7+8u,0+4v,7+8x,0+8y]:	unknown -> [13] [1,0,1,0] 7u+4u²+v²-7x-4x²-4y²; 7v+8u*v-7y-8x*y
-> solution [7,0,7,0],trivial(3) [15,0,15,0],trivial(3)
endexp[5]
---------------- level 3
Maximum level 3 [14] mod 2: -u²-v²+x²+y²; -2u*v+x*y
