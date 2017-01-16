ExponentGCDs=[2,2]
Expanding for base=4, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] -4x²+4x⁴-2y²+2
-> solution [0,1],trivial(1) [1,1],trivial(2)
----------------
expanding queue[0]^-1,meter=[1,4]: -4x²+4x⁴-2y²+2
[0+1x,1+4y]:	unknown -> [1] [0,1] x²-x⁴+4y+8y²
-> solution [0,1],trivial(1) [1,1],trivial(2)
[0+1x,3+4y]:	negative-1 [1] by {y=>-y-1}
----------------
expanding queue[1]^0,meter=[4,1]: x²-x⁴+4y+8y²
[0+4x,1+4y]:	unknown -> [2] [0,0] 4x²-64x⁴+y+2y²
-> solution [0,1],trivial(1)
[1+4x,1+4y]:	unknown -> [3] [1,0] 2x+20x²+64x³+64x⁴-y-2y²
-> solution [1,1],trivial(2)
[2+4x,1+4y]:	unknown -> [4] [2,0] 28x+92x²+128x³+64x⁴-y-2y²+3
-> solution [2,5],NONTRIVIAL
[3+4x,1+4y]:	negative-1 [3] by {x=>-x-1}
----------------
expanding queue[2]^1,meter=[1,4]: 4x²-64x⁴+y+2y²
[0+4x,1+16y]:	unknown -> [5] [0,0] x²-16x⁴+y+8y²
-> solution [0,1],trivial(1)
expanding queue[3]^1,meter=[4,4]: 2x+20x²+64x³+64x⁴-y-2y²
[1+16x,1+16y]:	unknown -> [6] [0,0] 2x+80x²+1024x³+4096x⁴-y-8y²
-> solution [1,1],trivial(2)
[9+16x,1+16y]:	unknown -> [7] [2,0] 2898x+7760x²+9216x³+4096x⁴-y-8y²+405
[5+16x,9+16y]:	unknown -> [8] [1,2] 490x+2384x²+5120x³+4096x⁴-9y-8y²+35
[13+16x,9+16y]:	unknown -> [9] [3,2] 8762x+16208x²+13312x³+4096x⁴-9y-8y²+1772
expanding queue[4]^1,meter=[1,4]: 28x+92x²+128x³+64x⁴-y-2y²+3
[2+4x,5+16y]:	unknown -> [10] [0,1] 7x+23x²+32x³+16x⁴-5y-8y²
-> solution [2,5],NONTRIVIAL
----------------
expanding queue[5]^2,meter=[4,4]: x²-16x⁴+y+8y²
[0+16x,1+64y]:	unknown -> [11] [0,0] 4x²-1024x⁴+y+32y²
-> solution [0,1],trivial(1)
[8+16x,1+64y]:	unknown -> [12] [2,0] 508x+1532x²+2048x³+1024x⁴-y-32y²+63
[4+16x,49+64y]:	unknown -> [13] [1,3] 62x+380x²+1024x³+1024x⁴-49y-32y²-15
[12+16x,49+64y]:	negative-1 [13] by {x=>-x-1}
expanding queue[6]^3,meter=[4,4]: 2x+80x²+1024x³+4096x⁴-y-8y²
[1+64x,1+64y]:	unknown -> [14] [0,0] 2x+320x²+16384x³+262144x⁴-y-32y²
-> solution [1,1],trivial(2)
[33+64x,1+64y]:	unknown -> [15] [2,0] 143682x+418112x²+540672x³+262144x⁴-y-32y²+18513
[17+64x,33+64y]:	unknown -> [16] [1,2] 19618x+110912x²+278528x³+262144x⁴-33y-32y²+1292
[49+64x,33+64y]:	unknown -> [17] [3,2] 470498x+921920x²+802816x³+262144x⁴-33y-32y²+90029
expanding queue[7]^3,meter=[4,4]: 2898x+7760x²+9216x³+4096x⁴-y-8y²+405
[9+64x,17+64y]:	unknown -> [18] [0,1] 2898x+31040x²+147456x³+262144x⁴-17y-32y²+99
[41+64x,17+64y]:	unknown -> [19] [2,1] 275602x+645440x²+671744x³+262144x⁴-17y-32y²+44124
[25+64x,49+64y]:	unknown -> [20] [1,3] 62450x+239936x²+409600x³+262144x⁴-49y-32y²+6075
[57+64x,49+64y]:	unknown -> [21] [3,3] 740658x+1247552x²+933888x³+262144x⁴-49y-32y²+164868
expanding queue[8]^3,meter=[4,4]: 490x+2384x²+5120x³+4096x⁴-9y-8y²+35
[21+64x,25+64y]:	unknown -> [22] [1,1] 37002x+169280x²+344064x³+262144x⁴-25y-32y²+3027
[53+64x,25+64y]:	unknown -> [23] [3,1] 595402x+1078592x²+868352x³+262144x⁴-25y-32y²+123240
[5+64x,57+64y]:	unknown -> [24] [0,3] 490x+9536x²+81920x³+262144x⁴-57y-32y²-16
[37+64x,57+64y]:	unknown -> [25] [2,3] 202538x+525632x²+606208x³+262144x⁴-57y-32y²+29237
expanding queue[9]^3,meter=[4,4]: 8762x+16208x²+13312x³+4096x⁴-9y-8y²+1772
[13+64x,9+64y]:	unknown -> [26] [0,0] 8762x+64832x²+212992x³+262144x⁴-9y-32y²+443
[45+64x,9+64y]:	unknown -> [27] [2,0] 364410x+777536x²+737280x³+262144x⁴-9y-32y²+64040
[29+64x,41+64y]:	unknown -> [28] [1,2] 97498x+322880x²+475136x³+262144x⁴-41y-32y²+11025
[61+64x,41+64y]:	unknown -> [29] [3,2] 907802x+1428800x²+999424x³+262144x⁴-41y-32y²+216270
expanding queue[10]^4,meter=[4,4]: 7x+23x²+32x³+16x⁴-5y-8y²
[2+16x,5+64y]:	unknown -> [30] [0,0] 7x+92x²+512x³+1024x⁴-5y-32y²
-> solution [2,5],NONTRIVIAL
[14+16x,5+64y]:	negative-1 [30] by {x=>-x-1}
[6+16x,37+64y]:	unknown -> [31] [1,2] 213x+860x²+1536x³+1024x⁴-37y-32y²+9
[10+16x,37+64y]:	negative-1 [31] by {x=>-x-1}
Maximum level 3 [32] mod 4: -4x²+4x⁴-2y²+2
