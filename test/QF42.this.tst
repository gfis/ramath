TranspositionSet={[1,0,2]}
ExponentGCDs=[4,4,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp igtriv,norm
Refined variables=x,y,z
#----------------
0^-1:	[0+1x,0+1y,0+1z]	unknown x⁴+y⁴-z²
#----------------
1^0:	[0+2x,0+2y,0+2z]	unknown 4x⁴+4y⁴-z²
6^0:	[1+2x,0+2y,1+2z]	unknown 2x+6x²+8x³+4x⁴+4y⁴-z-z²
7^0:	[0+2x,1+2y,1+2z]	transposed [6] by [1,0,2]
#----------------
9^1:	[0+2x,0+2y,0+4z]	same form as x⁴+y⁴-z²
#
11^6:	[1+2x,0+2y,1+4z]	unknown x+3x²+4x³+2x⁴+2y⁴-z-2z²
12^6:	[1+2x,0+2y,3+4z]	negative-1 [11] by {z=>-z-1}
#----------------
13^11:	[1+4x,0+2y,1+8z]	unknown x+6x²+16x³+16x⁴+y⁴-z-4z²
14^11:	[3+4x,0+2y,1+8z]	negative-1 [13] by {x=>-x-1}
#----------------
17^13:	[1+8x,0+4y,1+16z]	unknown x+12x²+64x³+128x⁴+8y⁴-z-8z²
20^13:	[5+8x,2+4y,1+16z]	unknown 125x+300x²+320x³+128x⁴+4y+12y²+16y³+8y⁴-z-8z²+20
22^13:	[5+8x,0+4y,9+16z]	unknown 125x+300x²+320x³+128x⁴+8y⁴-9z-8z²+17
23^13:	[1+8x,2+4y,9+16z]	unknown x+12x²+64x³+128x⁴+4y+12y²+16y³+8y⁴-9z-8z²-2
Maximum level 4 [41] mod 2: x⁴+y⁴-z²
