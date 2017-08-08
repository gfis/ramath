TranspositionSet={[1,0,2]}
Expanding for base=2, level=3, reasons+features=base,transpose,same,similiar,evenexp invall,norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x⁴+x²*y²+y⁴-z²
-> solution [0,0,0],trivial(3) [1,0,1],trivial(3) [0,1,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: x⁴+x²*y²+y⁴-z²
[0+2x,0+2y,0+2z]:	unknown -> [1] [0,0,0] 4x⁴+4x²*y²+4y⁴-z²
-> solution [0,0,0],trivial(3)
[1+2x,0+2y,1+2z]:	unknown -> [2] [1,0,1] 2x+6x²+8x³+4x⁴+y²+4x*y²+4x²*y²+4y⁴-z-z²
-> solution [1,0,1],trivial(3)
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]: 4x⁴+4x²*y²+4y⁴-z²
[0+4x,0+4y,0+4z]:	same 16x⁴+16x²*y²+16y⁴-z² map {x=>x/2,y=>y/2} -> [0] x⁴+x²*y²+y⁴-z²
-> solution [0,0,0],trivial(3)
[2+4x,0+4y,0+4z]:	unknown -> [3] [1,0,0] 8x+24x²+32x³+16x⁴+4y²+16x*y²+16x²*y²+16y⁴-z²+1
-> solution [2,0,4],trivial(1)
[0+4x,2+4y,0+4z]:	transposed [3] by [1,0,2]
[2+4x,2+4y,0+4z]:	unknown -> [4] [1,1,0] 12x+28x²+32x³+16x⁴+12y+16x*y+16x²*y+28y²+16x*y²+16x²*y²+32y³+16y⁴-z²+3
expanding queue[2]^0,meter=[2,2,2]: 2x+6x²+8x³+4x⁴+y²+4x*y²+4x²*y²+4y⁴-z-z²
[1+4x,0+4y,1+4z]:	unknown -> [5] [0,0,0] 2x+12x²+32x³+32x⁴+2y²+16x*y²+32x²*y²+32y⁴-z-2z²
-> solution [1,0,1],trivial(3)
[3+4x,0+4y,1+4z]:	negative-1 [5] by {x=>-x-1}
[1+4x,0+4y,3+4z]:	negative-1 [5] by {z=>-z-1}
[3+4x,0+4y,3+4z]:	negative-1 [5] by {x=>-x-1,z=>-z-1}
----------------
expanding queue[3]^1,meter=[2,2,2]: 8x+24x²+32x³+16x⁴+4y²+16x*y²+16x²*y²+16y⁴-z²+1
[2+8x,0+8y,4+8z]:	unknown -> [6] [0,0,1] 4x+24x²+64x³+64x⁴+4y²+32x*y²+64x²*y²+64y⁴-z-z²
-> solution [2,0,4],trivial(1)
[6+8x,0+8y,4+8z]:	negative-1 [6] by {x=>-x-1}
[2+8x,4+8y,4+8z]:	unknown -> [7] [0,1,1] 12x+40x²+64x³+64x⁴+36y+32x*y+64x²*y+100y²+32x*y²+64x²*y²+128y³+64y⁴-z-z²+5
[6+8x,4+8y,4+8z]:	negative-1 [7] by {x=>-x-1}
expanding queue[4]^1,meter=[2,2,2]: 12x+28x²+32x³+16x⁴+12y+16x*y+16x²*y+28y²+16x*y²+16x²*y²+32y³+16y⁴-z²+3
expanding queue[5]^2,meter=[2,2,2]: 2x+12x²+32x³+32x⁴+2y²+16x*y²+32x²*y²+32y⁴-z-2z²
[1+8x,0+8y,1+8z]:	unknown -> [8] [0,0,0] 2x+24x²+128x³+256x⁴+4y²+64x*y²+256x²*y²+256y⁴-z-4z²
-> solution [1,0,1],trivial(3)
[5+8x,0+8y,1+8z]:	unknown -> [9] [1,0,0] 250x+600x²+640x³+256x⁴+100y²+320x*y²+256x²*y²+256y⁴-z-4z²+39
[1+8x,4+8y,1+8z]:	unknown -> [10] [0,1,0] 18x+88x²+128x³+256x⁴+132y+64x*y+256x²*y+388y²+64x*y²+256x²*y²+512y³+256y⁴-z-4z²+17
[5+8x,4+8y,1+8z]:	unknown -> [11] [1,1,0] 330x+664x²+640x³+256x⁴+228y+320x*y+256x²*y+484y²+320x*y²+256x²*y²+512y³+256y⁴-z-4z²+80
----------------
expanding queue[6]^3,meter=[2,2,2]: 4x+24x²+64x³+64x⁴+4y²+32x*y²+64x²*y²+64y⁴-z-z²
[2+16x,0+16y,4+16z]:	unknown -> [12] [0,0,0] 4x+48x²+256x³+512x⁴+8y²+128x*y²+512x²*y²+512y⁴-z-2z²
-> solution [2,0,4],trivial(1)
[10+16x,0+16y,4+16z]:	unknown -> [13] [1,0,0] 500x+1200x²+1280x³+512x⁴+200y²+640x*y²+512x²*y²+512y⁴-z-2z²+78
[2+16x,8+16y,4+16z]:	unknown -> [14] [0,1,0] 36x+176x²+256x³+512x⁴+264y+128x*y+512x²*y+776y²+128x*y²+512x²*y²+1024y³+512y⁴-z-2z²+34
[10+16x,8+16y,4+16z]:	unknown -> [15] [1,1,0] 660x+1328x²+1280x³+512x⁴+456y+640x*y+512x²*y+968y²+640x*y²+512x²*y²+1024y³+512y⁴-z-2z²+160
[2+16x,0+16y,12+16z]:	negative-1 [15] by {z=>-z-1}
[10+16x,0+16y,12+16z]:	negative-1 [15] by {z=>-z-1}
[2+16x,8+16y,12+16z]:	negative-1 [15] by {z=>-z-1}
[10+16x,8+16y,12+16z]:	negative-1 [15] by {z=>-z-1}
expanding queue[7]^3,meter=[2,2,2]: 12x+40x²+64x³+64x⁴+36y+32x*y+64x²*y+100y²+32x*y²+64x²*y²+128y³+64y⁴-z-z²+5
expanding queue[8]^5,meter=[2,2,2]: 2x+24x²+128x³+256x⁴+4y²+64x*y²+256x²*y²+256y⁴-z-4z²
[1+16x,0+16y,1+16z]:	unknown -> [16] [0,0,0] 2x+48x²+512x³+2048x⁴+8y²+256x*y²+2048x²*y²+2048y⁴-z-8z²
-> solution [1,0,1],trivial(3)
[9+16x,0+16y,1+16z]:	unknown -> [17] [1,0,0] 1458x+3888x²+4608x³+2048x⁴+648y²+2304x*y²+2048x²*y²+2048y⁴-z-8z²+205
[1+16x,8+16y,1+16z]:	unknown -> [18] [0,1,0] 66x+560x²+512x³+2048x⁴+1032y+256x*y+2048x²*y+3080y²+256x*y²+2048x²*y²+4096y³+2048y⁴-z-8z²+130
[9+16x,8+16y,1+16z]:	unknown -> [19] [1,1,0] 2034x+4400x²+4608x³+2048x⁴+1672y+2304x*y+2048x²*y+3720y²+2304x*y²+2048x²*y²+4096y³+2048y⁴-z-8z²+495
expanding queue[9]^5,meter=[2,2,2]: 250x+600x²+640x³+256x⁴+100y²+320x*y²+256x²*y²+256y⁴-z-4z²+39
[5+16x,0+16y,9+16z]:	unknown -> [20] [0,0,1] 250x+1200x²+2560x³+2048x⁴+200y²+1280x*y²+2048x²*y²+2048y⁴-9z-8z²+17
-> solution [5,0,25],trivial(1)
[13+16x,0+16y,9+16z]:	unknown -> [21] [1,0,1] 4394x+8112x²+6656x³+2048x⁴+1352y²+3328x*y²+2048x²*y²+2048y⁴-9z-8z²+890
[5+16x,8+16y,9+16z]:	unknown -> [22] [0,1,1] 570x+1712x²+2560x³+2048x⁴+1224y+1280x*y+2048x²*y+3272y²+1280x*y²+2048x²*y²+4096y³+2048y⁴-9z-8z²+195
[13+16x,8+16y,9+16z]:	unknown -> [23] [1,1,1] 5226x+8624x²+6656x³+2048x⁴+2376y+3328x*y+2048x²*y+4424y²+3328x*y²+2048x²*y²+4096y³+2048y⁴-9z-8z²+1356
expanding queue[10]^5,meter=[2,2,2]: 18x+88x²+128x³+256x⁴+132y+64x*y+256x²*y+388y²+64x*y²+256x²*y²+512y³+256y⁴-z-4z²+17
[1+16x,4+16y,9+16z]:	unknown -> [24] [0,0,1] 18x+176x²+512x³+2048x⁴+132y+128x*y+1024x²*y+776y²+256x*y²+2048x²*y²+2048y³+2048y⁴-9z-8z²+6
[9+16x,4+16y,9+16z]:	unknown -> [25] [1,0,1] 1602x+4016x²+4608x³+2048x⁴+452y+1152x*y+1024x²*y+1416y²+2304x*y²+2048x²*y²+2048y³+2048y⁴-9z-8z²+251
[1+16x,12+16y,9+16z]:	negative-1 [25] by {y=>-y-1}
[9+16x,12+16y,9+16z]:	negative-1 [25] by {y=>-y-1}
expanding queue[11]^5,meter=[2,2,2]: 330x+664x²+640x³+256x⁴+228y+320x*y+256x²*y+484y²+320x*y²+256x²*y²+512y³+256y⁴-z-4z²+80
[5+16x,4+16y,1+16z]:	unknown -> [26] [0,0,0] 330x+1328x²+2560x³+2048x⁴+228y+640x*y+1024x²*y+968y²+1280x*y²+2048x²*y²+2048y³+2048y⁴-z-8z²+40
[13+16x,4+16y,1+16z]:	unknown -> [27] [1,0,0] 4602x+8240x²+6656x³+2048x⁴+804y+1664x*y+1024x²*y+2120y²+3328x*y²+2048x²*y²+2048y³+2048y⁴-z-8z²+985
[5+16x,12+16y,1+16z]:	negative-1 [27] by {y=>-y-1}
[13+16x,12+16y,1+16z]:	negative-1 [27] by {y=>-y-1}
Maximum level 3 [28] mod 2: x⁴+x²*y²+y⁴-z²
