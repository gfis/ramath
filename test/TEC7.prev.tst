Expanding for base=2, level=4, reasons+features=base,same,similiar,evenexp 
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] -4x²+4x⁴-2y²+2
-> solution [0,1],trivial(1) [1,1],trivial(2)
---------------- level 0
expanding queue[0]^-1,meter=[1,2]: -4x²+4x⁴-2y²+2
[0+1x,1+2y]:	unknown -> [1] [0,1] -4x²+4x⁴-8y-8y²
-> solution [0,1],trivial(1) [1,1],trivial(2)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,1]: -4x²+4x⁴-8y-8y²
[0+2x,1+2y]:	unknown -> [2] [0,0] -16x²+64x⁴-8y-8y²
-> solution [0,1],trivial(1)
[1+2x,1+2y]:	unknown -> [3] [1,0] 16x+80x²+128x³+64x⁴-8y-8y²
-> solution [1,1],trivial(2)
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[1,2]: -16x²+64x⁴-8y-8y²
[0+2x,1+4y]:	unknown -> [4] [0,0] -16x²+64x⁴-16y-32y²
-> solution [0,1],trivial(1) [2,5],NONTRIVIAL
[0+2x,3+4y]:	negative-1 [4] by {y=>-y-1}
endexp[2]
expanding queue[3]^1,meter=[1,2]: 16x+80x²+128x³+64x⁴-8y-8y²
[1+2x,1+4y]:	unknown -> [5] [0,0] 16x+80x²+128x³+64x⁴-16y-32y²
-> solution [1,1],trivial(2)
[1+2x,3+4y]:	negative-1 [5] by {y=>-y-1}
endexp[3]
---------------- level 3
expanding queue[4]^2,meter=[2,2]: -16x²+64x⁴-16y-32y²
[0+4x,1+8y]:	same -64x²+1024x⁴-32y-128y² map {x=>x/4,y=>y/4} -> [1] -4x²+4x⁴-8y-8y²
-> solution [0,1],trivial(1)
[2+4x,5+8y]:	unknown -> [6] [1,1] 448x+1472x²+2048x³+1024x⁴-160y-128y²
-> solution [2,5],NONTRIVIAL
endexp[4]
expanding queue[5]^3,meter=[2,2]: 16x+80x²+128x³+64x⁴-16y-32y²
[1+4x,1+8y]:	unknown -> [7] [0,0] 32x+320x²+1024x³+1024x⁴-32y-128y²
-> solution [1,1],trivial(2)
[3+4x,1+8y]:	negative-1 [7] by {x=>-x-1}
endexp[5]
---------------- level 4
Maximum level 4 [8] mod 2: -4x²+4x⁴-2y²+2
