Expanding for base=4, level=3, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] -4x²+4x⁴-2y²+2
-> solution [0,1],trivial(1) [1,1],trivial(2)
---------------- level 0
expanding queue[0]^-1,meter=[1,4]: -4x²+4x⁴-2y²+2
[0+1x,1+4y]:	unknown -> [1] [0,1] x²-x⁴+4y+8y²
-> solution [0,1],trivial(1) [1,1],trivial(2)
[0+1x,3+4y]:	negative-1 [1] by {y=>-y-1}
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[4,1]: x²-x⁴+4y+8y²
[0+4x,1+4y]:	unknown -> [2] [0,0] 4x²-64x⁴+y+2y²
-> solution [0,1],trivial(1)
[1+4x,1+4y]:	unknown -> [3] [1,0] 2x+20x²+64x³+64x⁴-y-2y²
-> solution [1,1],trivial(2)
[2+4x,1+4y]:	unknown -> [4] [2,0] 28x+92x²+128x³+64x⁴-y-2y²+3
-> solution [2,5],NONTRIVIAL
[3+4x,1+4y]:	negative-1 [3] by {x=>-x-1}
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[1,4]: 4x²-64x⁴+y+2y²
[0+4x,1+16y]:	unknown -> [5] [0,0] x²-16x⁴+y+8y²
-> solution [0,1],trivial(1)
endexp[2]
expanding queue[3]^1,meter=[4,4]: 2x+20x²+64x³+64x⁴-y-2y²
[1+16x,1+16y]:	unknown -> [6] [0,0] 2x+80x²+1024x³+4096x⁴-y-8y²
-> solution [1,1],trivial(2)
[9+16x,1+16y]:	unknown -> [7] [2,0] 2898x+7760x²+9216x³+4096x⁴-y-8y²+405
[5+16x,9+16y]:	unknown -> [8] [1,2] 490x+2384x²+5120x³+4096x⁴-9y-8y²+35
[13+16x,9+16y]:	unknown -> [9] [3,2] 8762x+16208x²+13312x³+4096x⁴-9y-8y²+1772
endexp[3]
expanding queue[4]^1,meter=[1,4]: 28x+92x²+128x³+64x⁴-y-2y²+3
[2+4x,5+16y]:	unknown -> [10] [0,1] 7x+23x²+32x³+16x⁴-5y-8y²
-> solution [2,5],NONTRIVIAL
endexp[4]
---------------- level 3
Maximum level 3 [11] mod 4: -4x²+4x⁴-2y²+2
