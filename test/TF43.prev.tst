TranspositionSet={[1,0,2]}
ExponentGCDs=[2,2,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp norm,invall
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x^4+x^2*y^2+y^4-z^2
-> solution [0,0,0],trivial(3) [1,0,1],trivial(3) [0,1,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^4+x^2*y^2+y^4-z^2
[0+2x,0+2y,0+2z]:	unknown -> [1] 4x^4+4x^2*y^2+4y^4-z^2
-> solution [0,0,0],trivial(3)
[1+2x,0+2y,1+2z]:	unknown -> [2] 2x+6x^2+8x^3+4x^4+y^2+4x*y^2+4x^2*y^2+4y^4-z-z^2
-> solution [1,0,1],trivial(3)
[0+2x,1+2y,1+2z]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 4x^4+4x^2*y^2+4y^4-z^2
[0+4x,0+4y,0+4z]:	same 16x^4+16x^2*y^2+16y^4-z^2 map {x=>x/2,y=>y/2} -> [0] x^4+x^2*y^2+y^4-z^2
-> solution [0,0,0],trivial(3)
[2+4x,0+4y,0+4z]:	unknown -> [3] 1+8x+24x^2+32x^3+16x^4+4y^2+16x*y^2+16x^2*y^2+16y^4-z^2
-> solution [2,0,4],trivial(1)
[0+4x,2+4y,0+4z]:	transposed [3] by [1,0,2]
[2+4x,2+4y,0+4z]:	unknown -> [4] 3+12x+28x^2+32x^3+16x^4+12y+16x*y+16x^2*y+28y^2+16x*y^2+16x^2*y^2+32y^3+16y^4-z^2
expanding queue[2]^0,meter=[2,2,2]*4: 2x+6x^2+8x^3+4x^4+y^2+4x*y^2+4x^2*y^2+4y^4-z-z^2
[1+4x,0+4y,1+4z]:	unknown -> [5] 2x+12x^2+32x^3+32x^4+2y^2+16x*y^2+32x^2*y^2+32y^4-z-2z^2
-> solution [1,0,1],trivial(3)
[3+4x,0+4y,1+4z]:	negative-1 [5] by {x=>-x-1}
[1+4x,0+4y,3+4z]:	negative-1 [5] by {z=>-z-1}
[3+4x,0+4y,3+4z]:	negative-1 [5] by {x=>-x-1,z=>-z-1}
----------------
expanding queue[3]^1,meter=[2,2,2]*8: 1+8x+24x^2+32x^3+16x^4+4y^2+16x*y^2+16x^2*y^2+16y^4-z^2
[2+8x,0+8y,4+8z]:	unknown -> [6] 4x+24x^2+64x^3+64x^4+4y^2+32x*y^2+64x^2*y^2+64y^4-z-z^2
-> solution [2,0,4],trivial(1)
[6+8x,0+8y,4+8z]:	negative-1 [6] by {x=>-x-1}
[2+8x,4+8y,4+8z]:	unknown -> [7] 5+12x+40x^2+64x^3+64x^4+36y+32x*y+64x^2*y+100y^2+32x*y^2+64x^2*y^2+128y^3+64y^4-z-z^2
[6+8x,4+8y,4+8z]:	negative-1 [7] by {x=>-x-1}
expanding queue[4]^1,meter=[2,2,2]*8: 3+12x+28x^2+32x^3+16x^4+12y+16x*y+16x^2*y+28y^2+16x*y^2+16x^2*y^2+32y^3+16y^4-z^2
expanding queue[5]^2,meter=[2,2,2]*8: 2x+12x^2+32x^3+32x^4+2y^2+16x*y^2+32x^2*y^2+32y^4-z-2z^2
[1+8x,0+8y,1+8z]:	unknown -> [8] 2x+24x^2+128x^3+256x^4+4y^2+64x*y^2+256x^2*y^2+256y^4-z-4z^2
-> solution [1,0,1],trivial(3)
[5+8x,0+8y,1+8z]:	unknown -> [9] 39+250x+600x^2+640x^3+256x^4+100y^2+320x*y^2+256x^2*y^2+256y^4-z-4z^2
[1+8x,4+8y,1+8z]:	unknown -> [10] 17+18x+88x^2+128x^3+256x^4+132y+64x*y+256x^2*y+388y^2+64x*y^2+256x^2*y^2+512y^3+256y^4-z-4z^2
[5+8x,4+8y,1+8z]:	unknown -> [11] 80+330x+664x^2+640x^3+256x^4+228y+320x*y+256x^2*y+484y^2+320x*y^2+256x^2*y^2+512y^3+256y^4-z-4z^2
----------------
expanding queue[6]^3,meter=[2,2,2]*16: 4x+24x^2+64x^3+64x^4+4y^2+32x*y^2+64x^2*y^2+64y^4-z-z^2
[2+16x,0+16y,4+16z]:	unknown -> [12] 4x+48x^2+256x^3+512x^4+8y^2+128x*y^2+512x^2*y^2+512y^4-z-2z^2
-> solution [2,0,4],trivial(1)
[10+16x,0+16y,4+16z]:	unknown -> [13] 78+500x+1200x^2+1280x^3+512x^4+200y^2+640x*y^2+512x^2*y^2+512y^4-z-2z^2
[2+16x,8+16y,4+16z]:	unknown -> [14] 34+36x+176x^2+256x^3+512x^4+264y+128x*y+512x^2*y+776y^2+128x*y^2+512x^2*y^2+1024y^3+512y^4-z-2z^2
[10+16x,8+16y,4+16z]:	unknown -> [15] 160+660x+1328x^2+1280x^3+512x^4+456y+640x*y+512x^2*y+968y^2+640x*y^2+512x^2*y^2+1024y^3+512y^4-z-2z^2
[2+16x,0+16y,12+16z]:	negative-1 [15] by {z=>-z-1}
[10+16x,0+16y,12+16z]:	negative-1 [15] by {z=>-z-1}
[2+16x,8+16y,12+16z]:	negative-1 [15] by {z=>-z-1}
[10+16x,8+16y,12+16z]:	negative-1 [15] by {z=>-z-1}
expanding queue[7]^3,meter=[2,2,2]*16: 5+12x+40x^2+64x^3+64x^4+36y+32x*y+64x^2*y+100y^2+32x*y^2+64x^2*y^2+128y^3+64y^4-z-z^2
expanding queue[8]^5,meter=[2,2,2]*16: 2x+24x^2+128x^3+256x^4+4y^2+64x*y^2+256x^2*y^2+256y^4-z-4z^2
[1+16x,0+16y,1+16z]:	unknown -> [16] 2x+48x^2+512x^3+2048x^4+8y^2+256x*y^2+2048x^2*y^2+2048y^4-z-8z^2
-> solution [1,0,1],trivial(3)
[9+16x,0+16y,1+16z]:	unknown -> [17] 205+1458x+3888x^2+4608x^3+2048x^4+648y^2+2304x*y^2+2048x^2*y^2+2048y^4-z-8z^2
[1+16x,8+16y,1+16z]:	unknown -> [18] 130+66x+560x^2+512x^3+2048x^4+1032y+256x*y+2048x^2*y+3080y^2+256x*y^2+2048x^2*y^2+4096y^3+2048y^4-z-8z^2
[9+16x,8+16y,1+16z]:	unknown -> [19] 495+2034x+4400x^2+4608x^3+2048x^4+1672y+2304x*y+2048x^2*y+3720y^2+2304x*y^2+2048x^2*y^2+4096y^3+2048y^4-z-8z^2
expanding queue[9]^5,meter=[2,2,2]*16: 39+250x+600x^2+640x^3+256x^4+100y^2+320x*y^2+256x^2*y^2+256y^4-z-4z^2
[5+16x,0+16y,9+16z]:	unknown -> [20] 17+250x+1200x^2+2560x^3+2048x^4+200y^2+1280x*y^2+2048x^2*y^2+2048y^4-9z-8z^2
-> solution [5,0,25],trivial(1)
[13+16x,0+16y,9+16z]:	unknown -> [21] 890+4394x+8112x^2+6656x^3+2048x^4+1352y^2+3328x*y^2+2048x^2*y^2+2048y^4-9z-8z^2
[5+16x,8+16y,9+16z]:	unknown -> [22] 195+570x+1712x^2+2560x^3+2048x^4+1224y+1280x*y+2048x^2*y+3272y^2+1280x*y^2+2048x^2*y^2+4096y^3+2048y^4-9z-8z^2
[13+16x,8+16y,9+16z]:	unknown -> [23] 1356+5226x+8624x^2+6656x^3+2048x^4+2376y+3328x*y+2048x^2*y+4424y^2+3328x*y^2+2048x^2*y^2+4096y^3+2048y^4-9z-8z^2
expanding queue[10]^5,meter=[2,2,2]*16: 17+18x+88x^2+128x^3+256x^4+132y+64x*y+256x^2*y+388y^2+64x*y^2+256x^2*y^2+512y^3+256y^4-z-4z^2
[1+16x,4+16y,9+16z]:	unknown -> [24] 6+18x+176x^2+512x^3+2048x^4+132y+128x*y+1024x^2*y+776y^2+256x*y^2+2048x^2*y^2+2048y^3+2048y^4-9z-8z^2
[9+16x,4+16y,9+16z]:	unknown -> [25] 251+1602x+4016x^2+4608x^3+2048x^4+452y+1152x*y+1024x^2*y+1416y^2+2304x*y^2+2048x^2*y^2+2048y^3+2048y^4-9z-8z^2
[1+16x,12+16y,9+16z]:	negative-1 [25] by {y=>-y-1}
[9+16x,12+16y,9+16z]:	negative-1 [25] by {y=>-y-1}
expanding queue[11]^5,meter=[2,2,2]*16: 80+330x+664x^2+640x^3+256x^4+228y+320x*y+256x^2*y+484y^2+320x*y^2+256x^2*y^2+512y^3+256y^4-z-4z^2
[5+16x,4+16y,1+16z]:	unknown -> [26] 40+330x+1328x^2+2560x^3+2048x^4+228y+640x*y+1024x^2*y+968y^2+1280x*y^2+2048x^2*y^2+2048y^3+2048y^4-z-8z^2
[13+16x,4+16y,1+16z]:	unknown -> [27] 985+4602x+8240x^2+6656x^3+2048x^4+804y+1664x*y+1024x^2*y+2120y^2+3328x*y^2+2048x^2*y^2+2048y^3+2048y^4-z-8z^2
[5+16x,12+16y,1+16z]:	negative-1 [27] by {y=>-y-1}
[13+16x,12+16y,1+16z]:	negative-1 [27] by {y=>-y-1}
Maximum level 3 [28] mod 2: x^4+x^2*y^2+y^4-z^2
