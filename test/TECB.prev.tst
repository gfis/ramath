ExponentGCDs=[3,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] -x³+y²-7
----------------
expanding queue[0]^-1,meter=[2,2]*2: -x³+y²-7
[1+2x,0+2y]:	unknown -> [1] 3x+6x²+4x³-2y²+4
----------------
expanding queue[1]^0,meter=[2,1]*4: 3x+6x²+4x³-2y²+4
[1+4x,0+2y]:	unknown -> [2] 3x+12x²+16x³-y²+2
----------------
expanding queue[2]^1,meter=[2,2]*8: 3x+12x²+16x³-y²+2
[1+8x,0+4y]:	unknown -> [3] 3x+24x²+64x³-2y²+1
[5+8x,2+4y]:	unknown -> [4] 75x+120x²+64x³-2y-2y²+16
----------------
expanding queue[3]^2,meter=[2,1]*16: 3x+24x²+64x³-2y²+1
[9+16x,0+4y]:	unknown -> [5] 243x+432x²+256x³-y²+46
expanding queue[4]^2,meter=[2,1]*16: 75x+120x²+64x³-2y-2y²+16
[5+16x,2+4y]:	unknown -> [6] 75x+240x²+256x³-y-y²+8
----------------
expanding queue[5]^3,meter=[2,2]*32: 243x+432x²+256x³-y²+46
[9+32x,0+8y]:	unknown -> [7] 243x+864x²+1024x³-2y²+23
[25+32x,4+8y]:	unknown -> [8] 1875x+2400x²+1024x³-2y-2y²+488
expanding queue[6]^4,meter=[2,2]*32: 75x+240x²+256x³-y-y²+8
[5+32x,2+8y]:	unknown -> [9] 75x+480x²+1024x³-y-2y²+4
[5+32x,6+8y]:	negative-1 [9] by {y=>-y-1}
----------------
expanding queue[7]^5,meter=[2,1]*64: 243x+864x²+1024x³-2y²+23
[41+64x,0+8y]:	unknown -> [10] 5043x+7872x²+4096x³-y²+1077
expanding queue[8]^5,meter=[2,1]*64: 1875x+2400x²+1024x³-2y-2y²+488
[25+64x,4+8y]:	unknown -> [11] 1875x+4800x²+4096x³-y-y²+244
expanding queue[9]^6,meter=[2,2]*64: 75x+480x²+1024x³-y-2y²+4
[5+64x,2+16y]:	unknown -> [12] 75x+960x²+4096x³-y-4y²+2
[37+64x,10+16y]:	unknown -> [13] 4107x+7104x²+4096x³-5y-4y²+790
----------------
expanding queue[10]^7,meter=[2,2]*128: 5043x+7872x²+4096x³-y²+1077
[105+128x,0+16y]:	unknown -> [14] 33075x+40320x²+16384x³-2y²+9044
[41+128x,8+16y]:	unknown -> [15] 5043x+15744x²+16384x³-2y-2y²+538
expanding queue[11]^8,meter=[2,2]*128: 1875x+4800x²+4096x³-y-y²+244
[25+128x,4+16y]:	unknown -> [16] 1875x+9600x²+16384x³-y-2y²+122
[25+128x,12+16y]:	negative-1 [16] by {y=>-y-1}
expanding queue[12]^9,meter=[2,2]*128: 75x+960x²+4096x³-y-4y²+2
[5+128x,2+32y]:	unknown -> [17] 75x+1920x²+16384x³-y-8y²+1
[69+128x,18+32y]:	unknown -> [18] 14283x+26496x²+16384x³-9y-8y²+2564
expanding queue[13]^9,meter=[2,2]*128: 4107x+7104x²+4096x³-5y-4y²+790
[37+128x,10+32y]:	unknown -> [19] 4107x+14208x²+16384x³-5y-8y²+395
[101+128x,26+32y]:	unknown -> [20] 30603x+38784x²+16384x³-13y-8y²+8044
Maximum level 6 [21] mod 2: -x³+y²-7
