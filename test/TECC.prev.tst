ExponentGCDs=[3,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] -x³+y²+6
----------------
expanding queue[0]^-1,meter=[2,2]: -x³+y²+6
[1+2x,1+2y]:	unknown -> [1] 3x+6x²+4x³-2y-2y²-3
----------------
expanding queue[1]^0,meter=[2,1]: 3x+6x²+4x³-2y-2y²-3
[3+4x,1+2y]:	unknown -> [2] 27x+36x²+16x³-y-y²+5
----------------
expanding queue[2]^1,meter=[2,2]: 27x+36x²+16x³-y-y²+5
[7+8x,1+4y]:	unknown -> [3] 147x+168x²+64x³-y-2y²+42
[7+8x,3+4y]:	negative-1 [3] by {y=>-y-1}
----------------
expanding queue[3]^2,meter=[2,2]: 147x+168x²+64x³-y-2y²+42
[7+16x,1+8y]:	unknown -> [4] 147x+336x²+256x³-y-4y²+21
[15+16x,5+8y]:	unknown -> [5] 675x+720x²+256x³-5y-4y²+209
Maximum level 3 [6] mod 2: -x³+y²+6
