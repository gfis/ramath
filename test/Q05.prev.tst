
expanding queue[0]: x^2 + y^2 - 2*z^2 = 0 modulo [2,2,2]
[2*x+0,2*y+0,2*z+0]: similiar to [0], affine map: {x=(2*x),y=(2*y),z=(2*z)}  4*x^2+4*y^2-8*z^2=0 -> [1]
[2*x+1,2*y+0,2*z+0]: failure constant=1, vgcd=4
[2*x+0,2*y+1,2*z+0]: failure constant=1, vgcd=4
[2*x+1,2*y+1,2*z+0]: failure constant=2, vgcd=4
[2*x+0,2*y+0,2*z+1]: failure constant=-2, vgcd=4
[2*x+1,2*y+0,2*z+1]: failure constant=-1, vgcd=4
[2*x+0,2*y+1,2*z+1]: failure constant=-1, vgcd=4
[2*x+1,2*y+1,2*z+1]: success trivial=2 -> [2] 4*x+4*x^2+4*y+4*y^2-8*z-8*z^2=0

expanding queue[1]: 4*x^2 + 4*y^2 - 8*z^2 = 0 modulo [2,2,2]
[4*x+0,4*y+0,4*z+0]: similiar to [1], affine map: {x=(2*x),y=(2*y),z=(2*z)}  16*x^2+16*y^2-32*z^2=0 -> [3]
[4*x+2,4*y+0,4*z+0]: failure constant=4, vgcd=16
[4*x+0,4*y+2,4*z+0]: failure constant=4, vgcd=16
[4*x+2,4*y+2,4*z+0]: failure constant=8, vgcd=16
[4*x+0,4*y+0,4*z+2]: failure constant=-8, vgcd=16
[4*x+2,4*y+0,4*z+2]: failure constant=-4, vgcd=16
[4*x+0,4*y+2,4*z+2]: failure constant=-4, vgcd=16
[4*x+2,4*y+2,4*z+2]: success trivial=2 -> [4] 16*x+16*x^2+16*y+16*y^2-32*z-32*z^2=0

expanding queue[2]: 4*x + 4*x^2 + 4*y + 4*y^2 - 8*z - 8*z^2 = 0 modulo [2,2,2]
[4*x+1,4*y+1,4*z+1]: similiar to [2], affine map: {x=(2*x),y=(2*y),z=(2*z)}  8*x+16*x^2+8*y+16*y^2-16*z-32*z^2=0 -> [5]
[4*x+3,4*y+1,4*z+1]: unknown -> [6] 8+24*x+16*x^2+8*y+16*y^2-16*z-32*z^2=0
[4*x+1,4*y+3,4*z+1]: unknown -> [7] 8+8*x+16*x^2+24*y+16*y^2-16*z-32*z^2=0
[4*x+3,4*y+3,4*z+1]: unknown -> [8] 16+24*x+16*x^2+24*y+16*y^2-16*z-32*z^2=0
[4*x+1,4*y+1,4*z+3]: unknown -> [9] -16+8*x+16*x^2+8*y+16*y^2-48*z-32*z^2=0
[4*x+3,4*y+1,4*z+3]: unknown -> [10] -8+24*x+16*x^2+8*y+16*y^2-48*z-32*z^2=0
[4*x+1,4*y+3,4*z+3]: unknown -> [11] -8+8*x+16*x^2+24*y+16*y^2-48*z-32*z^2=0
[4*x+3,4*y+3,4*z+3]: success trivial=2 -> [12] 24*x+16*x^2+24*y+16*y^2-48*z-32*z^2=0

expanding queue[3]: 16*x^2 + 16*y^2 - 32*z^2 = 0 modulo [2,2,2]
[8*x+0,8*y+0,8*z+0]: similiar to [3], affine map: {x=(2*x),y=(2*y),z=(2*z)}  64*x^2+64*y^2-128*z^2=0 -> [13]
[8*x+4,8*y+0,8*z+0]: failure constant=16, vgcd=64
[8*x+0,8*y+4,8*z+0]: failure constant=16, vgcd=64
[8*x+4,8*y+4,8*z+0]: failure constant=32, vgcd=64
[8*x+0,8*y+0,8*z+4]: failure constant=-32, vgcd=64
[8*x+4,8*y+0,8*z+4]: failure constant=-16, vgcd=64
[8*x+0,8*y+4,8*z+4]: failure constant=-16, vgcd=64
[8*x+4,8*y+4,8*z+4]: success trivial=2 -> [14] 64*x+64*x^2+64*y+64*y^2-128*z-128*z^2=0

expanding queue[4]: 16*x + 16*x^2 + 16*y + 16*y^2 - 32*z - 32*z^2 = 0 modulo [2,2,2]
[8*x+2,8*y+2,8*z+2]: similiar to [4], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32*x+64*x^2+32*y+64*y^2-64*z-128*z^2=0 -> [15]
[8*x+6,8*y+2,8*z+2]: unknown -> [16] 32+96*x+64*x^2+32*y+64*y^2-64*z-128*z^2=0
[8*x+2,8*y+6,8*z+2]: unknown -> [17] 32+32*x+64*x^2+96*y+64*y^2-64*z-128*z^2=0
[8*x+6,8*y+6,8*z+2]: unknown -> [18] 64+96*x+64*x^2+96*y+64*y^2-64*z-128*z^2=0
[8*x+2,8*y+2,8*z+6]: unknown -> [19] -64+32*x+64*x^2+32*y+64*y^2-192*z-128*z^2=0
[8*x+6,8*y+2,8*z+6]: unknown -> [20] -32+96*x+64*x^2+32*y+64*y^2-192*z-128*z^2=0
[8*x+2,8*y+6,8*z+6]: unknown -> [21] -32+32*x+64*x^2+96*y+64*y^2-192*z-128*z^2=0
[8*x+6,8*y+6,8*z+6]: success trivial=2 -> [22] 96*x+64*x^2+96*y+64*y^2-192*z-128*z^2=0

expanding queue[5]: 8*x + 16*x^2 + 8*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2]
[8*x+1,8*y+1,8*z+1]: similiar to [5], affine map: {x=(2*x),y=(2*y),z=(2*z)}  16*x+64*x^2+16*y+64*y^2-32*z-128*z^2=0 -> [23]
[8*x+5,8*y+1,8*z+1]: failure constant=24, vgcd=16
[8*x+1,8*y+5,8*z+1]: failure constant=24, vgcd=16
[8*x+5,8*y+5,8*z+1]: unknown -> [24] 48+80*x+64*x^2+80*y+64*y^2-32*z-128*z^2=0
[8*x+1,8*y+1,8*z+5]: unknown -> [25] -48+16*x+64*x^2+16*y+64*y^2-160*z-128*z^2=0
[8*x+5,8*y+1,8*z+5]: failure constant=-24, vgcd=16
[8*x+1,8*y+5,8*z+5]: failure constant=-24, vgcd=16
[8*x+5,8*y+5,8*z+5]: success trivial=2 -> [26] 80*x+64*x^2+80*y+64*y^2-160*z-128*z^2=0

expanding queue[6]: 8 + 24*x + 16*x^2 + 8*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2]
[8*x+3,8*y+1,8*z+1]: failure constant=8, vgcd=16
[8*x+7,8*y+1,8*z+1]: unknown -> [27] 48+112*x+64*x^2+16*y+64*y^2-32*z-128*z^2=0
[8*x+3,8*y+5,8*z+1]: unknown -> [28] 32+48*x+64*x^2+80*y+64*y^2-32*z-128*z^2=0
[8*x+7,8*y+5,8*z+1]: failure constant=72, vgcd=16
[8*x+3,8*y+1,8*z+5]: failure constant=-40, vgcd=16
[8*x+7,8*y+1,8*z+5]: success NONTRIVIAL -> [29] 112*x+64*x^2+16*y+64*y^2-160*z-128*z^2=0
[8*x+3,8*y+5,8*z+5]: unknown -> [30] -16+48*x+64*x^2+80*y+64*y^2-160*z-128*z^2=0
[8*x+7,8*y+5,8*z+5]: failure constant=24, vgcd=16

expanding queue[7]: 8 + 8*x + 16*x^2 + 24*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2]
[8*x+1,8*y+3,8*z+1]: failure constant=8, vgcd=16
[8*x+5,8*y+3,8*z+1]: unknown -> [31] 32+80*x+64*x^2+48*y+64*y^2-32*z-128*z^2=0
[8*x+1,8*y+7,8*z+1]: unknown -> [32] 48+16*x+64*x^2+112*y+64*y^2-32*z-128*z^2=0
[8*x+5,8*y+7,8*z+1]: failure constant=72, vgcd=16
[8*x+1,8*y+3,8*z+5]: failure constant=-40, vgcd=16
[8*x+5,8*y+3,8*z+5]: unknown -> [33] -16+80*x+64*x^2+48*y+64*y^2-160*z-128*z^2=0
[8*x+1,8*y+7,8*z+5]: success NONTRIVIAL -> [34] 16*x+64*x^2+112*y+64*y^2-160*z-128*z^2=0
[8*x+5,8*y+7,8*z+5]: failure constant=24, vgcd=16

expanding queue[8]: 16 + 24*x + 16*x^2 + 24*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2]
[8*x+3,8*y+3,8*z+1]: similiar to [8], affine map: {x=(2*x),y=(2*y),z=(2*z)}  16+48*x+64*x^2+48*y+64*y^2-32*z-128*z^2=0 -> [35]
[8*x+7,8*y+3,8*z+1]: failure constant=56, vgcd=16
[8*x+3,8*y+7,8*z+1]: failure constant=56, vgcd=16
[8*x+7,8*y+7,8*z+1]: unknown -> [36] 96+112*x+64*x^2+112*y+64*y^2-32*z-128*z^2=0
[8*x+3,8*y+3,8*z+5]: unknown -> [37] -32+48*x+64*x^2+48*y+64*y^2-160*z-128*z^2=0
[8*x+7,8*y+3,8*z+5]: failure constant=8, vgcd=16
[8*x+3,8*y+7,8*z+5]: failure constant=8, vgcd=16
[8*x+7,8*y+7,8*z+5]: unknown -> [38] 48+112*x+64*x^2+112*y+64*y^2-160*z-128*z^2=0

expanding queue[9]:  - 16 + 8*x + 16*x^2 + 8*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2]
[8*x+1,8*y+1,8*z+3]: similiar to [9], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -16+16*x+64*x^2+16*y+64*y^2-96*z-128*z^2=0 -> [39]
[8*x+5,8*y+1,8*z+3]: failure constant=8, vgcd=16
[8*x+1,8*y+5,8*z+3]: failure constant=8, vgcd=16
[8*x+5,8*y+5,8*z+3]: unknown -> [40] 32+80*x+64*x^2+80*y+64*y^2-96*z-128*z^2=0
[8*x+1,8*y+1,8*z+7]: unknown -> [41] -96+16*x+64*x^2+16*y+64*y^2-224*z-128*z^2=0
[8*x+5,8*y+1,8*z+7]: failure constant=-72, vgcd=16
[8*x+1,8*y+5,8*z+7]: failure constant=-72, vgcd=16
[8*x+5,8*y+5,8*z+7]: unknown -> [42] -48+80*x+64*x^2+80*y+64*y^2-224*z-128*z^2=0

expanding queue[10]:  - 8 + 24*x + 16*x^2 + 8*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2]
[8*x+3,8*y+1,8*z+3]: failure constant=-8, vgcd=16
[8*x+7,8*y+1,8*z+3]: unknown -> [43] 32+112*x+64*x^2+16*y+64*y^2-96*z-128*z^2=0
[8*x+3,8*y+5,8*z+3]: unknown -> [44] 16+48*x+64*x^2+80*y+64*y^2-96*z-128*z^2=0
[8*x+7,8*y+5,8*z+3]: failure constant=56, vgcd=16
[8*x+3,8*y+1,8*z+7]: failure constant=-88, vgcd=16
[8*x+7,8*y+1,8*z+7]: unknown -> [45] -48+112*x+64*x^2+16*y+64*y^2-224*z-128*z^2=0
[8*x+3,8*y+5,8*z+7]: unknown -> [46] -64+48*x+64*x^2+80*y+64*y^2-224*z-128*z^2=0
[8*x+7,8*y+5,8*z+7]: failure constant=-24, vgcd=16

expanding queue[11]:  - 8 + 8*x + 16*x^2 + 24*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2]
[8*x+1,8*y+3,8*z+3]: failure constant=-8, vgcd=16
[8*x+5,8*y+3,8*z+3]: unknown -> [47] 16+80*x+64*x^2+48*y+64*y^2-96*z-128*z^2=0
[8*x+1,8*y+7,8*z+3]: unknown -> [48] 32+16*x+64*x^2+112*y+64*y^2-96*z-128*z^2=0
[8*x+5,8*y+7,8*z+3]: failure constant=56, vgcd=16
[8*x+1,8*y+3,8*z+7]: failure constant=-88, vgcd=16
[8*x+5,8*y+3,8*z+7]: unknown -> [49] -64+80*x+64*x^2+48*y+64*y^2-224*z-128*z^2=0
[8*x+1,8*y+7,8*z+7]: unknown -> [50] -48+16*x+64*x^2+112*y+64*y^2-224*z-128*z^2=0
[8*x+5,8*y+7,8*z+7]: failure constant=-24, vgcd=16

expanding queue[12]: 24*x + 16*x^2 + 24*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2]
[8*x+3,8*y+3,8*z+3]: similiar to [12], affine map: {x=(2*x),y=(2*y),z=(2*z)}  48*x+64*x^2+48*y+64*y^2-96*z-128*z^2=0 -> [51]
[8*x+7,8*y+3,8*z+3]: failure constant=40, vgcd=16
[8*x+3,8*y+7,8*z+3]: failure constant=40, vgcd=16
[8*x+7,8*y+7,8*z+3]: unknown -> [52] 80+112*x+64*x^2+112*y+64*y^2-96*z-128*z^2=0
[8*x+3,8*y+3,8*z+7]: unknown -> [53] -80+48*x+64*x^2+48*y+64*y^2-224*z-128*z^2=0
[8*x+7,8*y+3,8*z+7]: failure constant=-40, vgcd=16
[8*x+3,8*y+7,8*z+7]: failure constant=-40, vgcd=16
[8*x+7,8*y+7,8*z+7]: success trivial=2 -> [54] 112*x+64*x^2+112*y+64*y^2-224*z-128*z^2=0

expanding queue[13]: 64*x^2 + 64*y^2 - 128*z^2 = 0 modulo [2,2,2]
[16*x+0,16*y+0,16*z+0]: similiar to [13], affine map: {x=(2*x),y=(2*y),z=(2*z)}  256*x^2+256*y^2-512*z^2=0 -> [55]
[16*x+8,16*y+0,16*z+0]: failure constant=64, vgcd=256
[16*x+0,16*y+8,16*z+0]: failure constant=64, vgcd=256
[16*x+8,16*y+8,16*z+0]: failure constant=128, vgcd=256
[16*x+0,16*y+0,16*z+8]: failure constant=-128, vgcd=256
[16*x+8,16*y+0,16*z+8]: failure constant=-64, vgcd=256
[16*x+0,16*y+8,16*z+8]: failure constant=-64, vgcd=256
[16*x+8,16*y+8,16*z+8]: success trivial=2 -> [56] 256*x+256*x^2+256*y+256*y^2-512*z-512*z^2=0

expanding queue[14]: 64*x + 64*x^2 + 64*y + 64*y^2 - 128*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+4,16*y+4,16*z+4]: similiar to [14], affine map: {x=(2*x),y=(2*y),z=(2*z)}  128*x+256*x^2+128*y+256*y^2-256*z-512*z^2=0 -> [57]
[16*x+12,16*y+4,16*z+4]: unknown -> [58] 128+384*x+256*x^2+128*y+256*y^2-256*z-512*z^2=0
[16*x+4,16*y+12,16*z+4]: unknown -> [59] 128+128*x+256*x^2+384*y+256*y^2-256*z-512*z^2=0
[16*x+12,16*y+12,16*z+4]: unknown -> [60] 256+384*x+256*x^2+384*y+256*y^2-256*z-512*z^2=0
[16*x+4,16*y+4,16*z+12]: unknown -> [61] -256+128*x+256*x^2+128*y+256*y^2-768*z-512*z^2=0
[16*x+12,16*y+4,16*z+12]: unknown -> [62] -128+384*x+256*x^2+128*y+256*y^2-768*z-512*z^2=0
[16*x+4,16*y+12,16*z+12]: unknown -> [63] -128+128*x+256*x^2+384*y+256*y^2-768*z-512*z^2=0
[16*x+12,16*y+12,16*z+12]: success trivial=2 -> [64] 384*x+256*x^2+384*y+256*y^2-768*z-512*z^2=0

expanding queue[15]: 32*x + 64*x^2 + 32*y + 64*y^2 - 64*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+2,16*y+2,16*z+2]: similiar to [15], affine map: {x=(2*x),y=(2*y),z=(2*z)}  64*x+256*x^2+64*y+256*y^2-128*z-512*z^2=0 -> [65]
[16*x+10,16*y+2,16*z+2]: failure constant=96, vgcd=64
[16*x+2,16*y+10,16*z+2]: failure constant=96, vgcd=64
[16*x+10,16*y+10,16*z+2]: unknown -> [66] 192+320*x+256*x^2+320*y+256*y^2-128*z-512*z^2=0
[16*x+2,16*y+2,16*z+10]: unknown -> [67] -192+64*x+256*x^2+64*y+256*y^2-640*z-512*z^2=0
[16*x+10,16*y+2,16*z+10]: failure constant=-96, vgcd=64
[16*x+2,16*y+10,16*z+10]: failure constant=-96, vgcd=64
[16*x+10,16*y+10,16*z+10]: success trivial=2 -> [68] 320*x+256*x^2+320*y+256*y^2-640*z-512*z^2=0

expanding queue[16]: 32 + 96*x + 64*x^2 + 32*y + 64*y^2 - 64*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+6,16*y+2,16*z+2]: failure constant=32, vgcd=64
[16*x+14,16*y+2,16*z+2]: unknown -> [69] 192+448*x+256*x^2+64*y+256*y^2-128*z-512*z^2=0
[16*x+6,16*y+10,16*z+2]: unknown -> [70] 128+192*x+256*x^2+320*y+256*y^2-128*z-512*z^2=0
[16*x+14,16*y+10,16*z+2]: failure constant=288, vgcd=64
[16*x+6,16*y+2,16*z+10]: failure constant=-160, vgcd=64
[16*x+14,16*y+2,16*z+10]: success NONTRIVIAL -> [71] 448*x+256*x^2+64*y+256*y^2-640*z-512*z^2=0
[16*x+6,16*y+10,16*z+10]: unknown -> [72] -64+192*x+256*x^2+320*y+256*y^2-640*z-512*z^2=0
[16*x+14,16*y+10,16*z+10]: failure constant=96, vgcd=64

expanding queue[17]: 32 + 32*x + 64*x^2 + 96*y + 64*y^2 - 64*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+2,16*y+6,16*z+2]: failure constant=32, vgcd=64
[16*x+10,16*y+6,16*z+2]: unknown -> [73] 128+320*x+256*x^2+192*y+256*y^2-128*z-512*z^2=0
[16*x+2,16*y+14,16*z+2]: unknown -> [74] 192+64*x+256*x^2+448*y+256*y^2-128*z-512*z^2=0
[16*x+10,16*y+14,16*z+2]: failure constant=288, vgcd=64
[16*x+2,16*y+6,16*z+10]: failure constant=-160, vgcd=64
[16*x+10,16*y+6,16*z+10]: unknown -> [75] -64+320*x+256*x^2+192*y+256*y^2-640*z-512*z^2=0
[16*x+2,16*y+14,16*z+10]: success NONTRIVIAL -> [76] 64*x+256*x^2+448*y+256*y^2-640*z-512*z^2=0
[16*x+10,16*y+14,16*z+10]: failure constant=96, vgcd=64

expanding queue[18]: 64 + 96*x + 64*x^2 + 96*y + 64*y^2 - 64*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+6,16*y+6,16*z+2]: similiar to [18], affine map: {x=(2*x),y=(2*y),z=(2*z)}  64+192*x+256*x^2+192*y+256*y^2-128*z-512*z^2=0 -> [77]
[16*x+14,16*y+6,16*z+2]: failure constant=224, vgcd=64
[16*x+6,16*y+14,16*z+2]: failure constant=224, vgcd=64
[16*x+14,16*y+14,16*z+2]: unknown -> [78] 384+448*x+256*x^2+448*y+256*y^2-128*z-512*z^2=0
[16*x+6,16*y+6,16*z+10]: unknown -> [79] -128+192*x+256*x^2+192*y+256*y^2-640*z-512*z^2=0
[16*x+14,16*y+6,16*z+10]: failure constant=32, vgcd=64
[16*x+6,16*y+14,16*z+10]: failure constant=32, vgcd=64
[16*x+14,16*y+14,16*z+10]: unknown -> [80] 192+448*x+256*x^2+448*y+256*y^2-640*z-512*z^2=0

expanding queue[19]:  - 64 + 32*x + 64*x^2 + 32*y + 64*y^2 - 192*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+2,16*y+2,16*z+6]: similiar to [19], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -64+64*x+256*x^2+64*y+256*y^2-384*z-512*z^2=0 -> [81]
[16*x+10,16*y+2,16*z+6]: failure constant=32, vgcd=64
[16*x+2,16*y+10,16*z+6]: failure constant=32, vgcd=64
[16*x+10,16*y+10,16*z+6]: unknown -> [82] 128+320*x+256*x^2+320*y+256*y^2-384*z-512*z^2=0
[16*x+2,16*y+2,16*z+14]: unknown -> [83] -384+64*x+256*x^2+64*y+256*y^2-896*z-512*z^2=0
[16*x+10,16*y+2,16*z+14]: failure constant=-288, vgcd=64
[16*x+2,16*y+10,16*z+14]: failure constant=-288, vgcd=64
[16*x+10,16*y+10,16*z+14]: unknown -> [84] -192+320*x+256*x^2+320*y+256*y^2-896*z-512*z^2=0

expanding queue[20]:  - 32 + 96*x + 64*x^2 + 32*y + 64*y^2 - 192*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+6,16*y+2,16*z+6]: failure constant=-32, vgcd=64
[16*x+14,16*y+2,16*z+6]: unknown -> [85] 128+448*x+256*x^2+64*y+256*y^2-384*z-512*z^2=0
[16*x+6,16*y+10,16*z+6]: unknown -> [86] 64+192*x+256*x^2+320*y+256*y^2-384*z-512*z^2=0
[16*x+14,16*y+10,16*z+6]: failure constant=224, vgcd=64
[16*x+6,16*y+2,16*z+14]: failure constant=-352, vgcd=64
[16*x+14,16*y+2,16*z+14]: unknown -> [87] -192+448*x+256*x^2+64*y+256*y^2-896*z-512*z^2=0
[16*x+6,16*y+10,16*z+14]: unknown -> [88] -256+192*x+256*x^2+320*y+256*y^2-896*z-512*z^2=0
[16*x+14,16*y+10,16*z+14]: failure constant=-96, vgcd=64

expanding queue[21]:  - 32 + 32*x + 64*x^2 + 96*y + 64*y^2 - 192*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+2,16*y+6,16*z+6]: failure constant=-32, vgcd=64
[16*x+10,16*y+6,16*z+6]: unknown -> [89] 64+320*x+256*x^2+192*y+256*y^2-384*z-512*z^2=0
[16*x+2,16*y+14,16*z+6]: unknown -> [90] 128+64*x+256*x^2+448*y+256*y^2-384*z-512*z^2=0
[16*x+10,16*y+14,16*z+6]: failure constant=224, vgcd=64
[16*x+2,16*y+6,16*z+14]: failure constant=-352, vgcd=64
[16*x+10,16*y+6,16*z+14]: unknown -> [91] -256+320*x+256*x^2+192*y+256*y^2-896*z-512*z^2=0
[16*x+2,16*y+14,16*z+14]: unknown -> [92] -192+64*x+256*x^2+448*y+256*y^2-896*z-512*z^2=0
[16*x+10,16*y+14,16*z+14]: failure constant=-96, vgcd=64

expanding queue[22]: 96*x + 64*x^2 + 96*y + 64*y^2 - 192*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+6,16*y+6,16*z+6]: similiar to [22], affine map: {x=(2*x),y=(2*y),z=(2*z)}  192*x+256*x^2+192*y+256*y^2-384*z-512*z^2=0 -> [93]
[16*x+14,16*y+6,16*z+6]: failure constant=160, vgcd=64
[16*x+6,16*y+14,16*z+6]: failure constant=160, vgcd=64
[16*x+14,16*y+14,16*z+6]: unknown -> [94] 320+448*x+256*x^2+448*y+256*y^2-384*z-512*z^2=0
[16*x+6,16*y+6,16*z+14]: unknown -> [95] -320+192*x+256*x^2+192*y+256*y^2-896*z-512*z^2=0
[16*x+14,16*y+6,16*z+14]: failure constant=-160, vgcd=64
[16*x+6,16*y+14,16*z+14]: failure constant=-160, vgcd=64
[16*x+14,16*y+14,16*z+14]: success trivial=2 -> [96] 448*x+256*x^2+448*y+256*y^2-896*z-512*z^2=0

expanding queue[23]: 16*x + 64*x^2 + 16*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+1,16*y+1,16*z+1]: similiar to [23], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32*x+256*x^2+32*y+256*y^2-64*z-512*z^2=0 -> [97]
[16*x+9,16*y+1,16*z+1]: failure constant=80, vgcd=32
[16*x+1,16*y+9,16*z+1]: failure constant=80, vgcd=32
[16*x+9,16*y+9,16*z+1]: unknown -> [98] 160+288*x+256*x^2+288*y+256*y^2-64*z-512*z^2=0
[16*x+1,16*y+1,16*z+9]: unknown -> [99] -160+32*x+256*x^2+32*y+256*y^2-576*z-512*z^2=0
[16*x+9,16*y+1,16*z+9]: failure constant=-80, vgcd=32
[16*x+1,16*y+9,16*z+9]: failure constant=-80, vgcd=32
[16*x+9,16*y+9,16*z+9]: success trivial=2 -> [100] 288*x+256*x^2+288*y+256*y^2-576*z-512*z^2=0

expanding queue[24]: 48 + 80*x + 64*x^2 + 80*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+5,16*y+5,16*z+1]: failure constant=48, vgcd=32
[16*x+13,16*y+5,16*z+1]: unknown -> [101] 192+416*x+256*x^2+160*y+256*y^2-64*z-512*z^2=0
[16*x+5,16*y+13,16*z+1]: unknown -> [102] 192+160*x+256*x^2+416*y+256*y^2-64*z-512*z^2=0
[16*x+13,16*y+13,16*z+1]: failure constant=336, vgcd=32
[16*x+5,16*y+5,16*z+9]: failure constant=-112, vgcd=32
[16*x+13,16*y+5,16*z+9]: unknown -> [103] 32+416*x+256*x^2+160*y+256*y^2-576*z-512*z^2=0
[16*x+5,16*y+13,16*z+9]: unknown -> [104] 32+160*x+256*x^2+416*y+256*y^2-576*z-512*z^2=0
[16*x+13,16*y+13,16*z+9]: failure constant=176, vgcd=32

expanding queue[25]:  - 48 + 16*x + 64*x^2 + 16*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+1,16*y+1,16*z+5]: failure constant=-48, vgcd=32
[16*x+9,16*y+1,16*z+5]: unknown -> [105] 32+288*x+256*x^2+32*y+256*y^2-320*z-512*z^2=0
[16*x+1,16*y+9,16*z+5]: unknown -> [106] 32+32*x+256*x^2+288*y+256*y^2-320*z-512*z^2=0
[16*x+9,16*y+9,16*z+5]: failure constant=112, vgcd=32
[16*x+1,16*y+1,16*z+13]: failure constant=-336, vgcd=32
[16*x+9,16*y+1,16*z+13]: unknown -> [107] -256+288*x+256*x^2+32*y+256*y^2-832*z-512*z^2=0
[16*x+1,16*y+9,16*z+13]: unknown -> [108] -256+32*x+256*x^2+288*y+256*y^2-832*z-512*z^2=0
[16*x+9,16*y+9,16*z+13]: failure constant=-176, vgcd=32

expanding queue[26]: 80*x + 64*x^2 + 80*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+5,16*y+5,16*z+5]: similiar to [26], affine map: {x=(2*x),y=(2*y),z=(2*z)}  160*x+256*x^2+160*y+256*y^2-320*z-512*z^2=0 -> [109]
[16*x+13,16*y+5,16*z+5]: failure constant=144, vgcd=32
[16*x+5,16*y+13,16*z+5]: failure constant=144, vgcd=32
[16*x+13,16*y+13,16*z+5]: unknown -> [110] 288+416*x+256*x^2+416*y+256*y^2-320*z-512*z^2=0
[16*x+5,16*y+5,16*z+13]: unknown -> [111] -288+160*x+256*x^2+160*y+256*y^2-832*z-512*z^2=0
[16*x+13,16*y+5,16*z+13]: failure constant=-144, vgcd=32
[16*x+5,16*y+13,16*z+13]: failure constant=-144, vgcd=32
[16*x+13,16*y+13,16*z+13]: success trivial=2 -> [112] 416*x+256*x^2+416*y+256*y^2-832*z-512*z^2=0

expanding queue[27]: 48 + 112*x + 64*x^2 + 16*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+7,16*y+1,16*z+1]: failure constant=48, vgcd=32
[16*x+15,16*y+1,16*z+1]: unknown -> [113] 224+480*x+256*x^2+32*y+256*y^2-64*z-512*z^2=0
[16*x+7,16*y+9,16*z+1]: unknown -> [114] 128+224*x+256*x^2+288*y+256*y^2-64*z-512*z^2=0
[16*x+15,16*y+9,16*z+1]: failure constant=304, vgcd=32
[16*x+7,16*y+1,16*z+9]: failure constant=-112, vgcd=32
[16*x+15,16*y+1,16*z+9]: unknown -> [115] 64+480*x+256*x^2+32*y+256*y^2-576*z-512*z^2=0
[16*x+7,16*y+9,16*z+9]: unknown -> [116] -32+224*x+256*x^2+288*y+256*y^2-576*z-512*z^2=0
[16*x+15,16*y+9,16*z+9]: failure constant=144, vgcd=32

expanding queue[28]: 32 + 48*x + 64*x^2 + 80*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+3,16*y+5,16*z+1]: similiar to [28], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32+96*x+256*x^2+160*y+256*y^2-64*z-512*z^2=0 -> [117]
[16*x+11,16*y+5,16*z+1]: failure constant=144, vgcd=32
[16*x+3,16*y+13,16*z+1]: failure constant=176, vgcd=32
[16*x+11,16*y+13,16*z+1]: unknown -> [118] 288+352*x+256*x^2+416*y+256*y^2-64*z-512*z^2=0
[16*x+3,16*y+5,16*z+9]: unknown -> [119] -128+96*x+256*x^2+160*y+256*y^2-576*z-512*z^2=0
[16*x+11,16*y+5,16*z+9]: failure constant=-16, vgcd=32
[16*x+3,16*y+13,16*z+9]: failure constant=16, vgcd=32
[16*x+11,16*y+13,16*z+9]: unknown -> [120] 128+352*x+256*x^2+416*y+256*y^2-576*z-512*z^2=0

expanding queue[29]: 112*x + 64*x^2 + 16*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+7,16*y+1,16*z+5]: similiar to [29], affine map: {x=(2*x),y=(2*y),z=(2*z)}  224*x+256*x^2+32*y+256*y^2-320*z-512*z^2=0 -> [121]
[16*x+15,16*y+1,16*z+5]: failure constant=176, vgcd=32
[16*x+7,16*y+9,16*z+5]: failure constant=80, vgcd=32
[16*x+15,16*y+9,16*z+5]: unknown -> [122] 256+480*x+256*x^2+288*y+256*y^2-320*z-512*z^2=0
[16*x+7,16*y+1,16*z+13]: unknown -> [123] -288+224*x+256*x^2+32*y+256*y^2-832*z-512*z^2=0
[16*x+15,16*y+1,16*z+13]: failure constant=-112, vgcd=32
[16*x+7,16*y+9,16*z+13]: failure constant=-208, vgcd=32
[16*x+15,16*y+9,16*z+13]: unknown -> [124] -32+480*x+256*x^2+288*y+256*y^2-832*z-512*z^2=0

expanding queue[30]:  - 16 + 48*x + 64*x^2 + 80*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+3,16*y+5,16*z+5]: failure constant=-16, vgcd=32
[16*x+11,16*y+5,16*z+5]: unknown -> [125] 96+352*x+256*x^2+160*y+256*y^2-320*z-512*z^2=0
[16*x+3,16*y+13,16*z+5]: unknown -> [126] 128+96*x+256*x^2+416*y+256*y^2-320*z-512*z^2=0
[16*x+11,16*y+13,16*z+5]: failure constant=240, vgcd=32
[16*x+3,16*y+5,16*z+13]: failure constant=-304, vgcd=32
[16*x+11,16*y+5,16*z+13]: unknown -> [127] -192+352*x+256*x^2+160*y+256*y^2-832*z-512*z^2=0
[16*x+3,16*y+13,16*z+13]: unknown -> [128] -160+96*x+256*x^2+416*y+256*y^2-832*z-512*z^2=0
[16*x+11,16*y+13,16*z+13]: failure constant=-48, vgcd=32

expanding queue[31]: 32 + 80*x + 64*x^2 + 48*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+5,16*y+3,16*z+1]: similiar to [31], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32+160*x+256*x^2+96*y+256*y^2-64*z-512*z^2=0 -> [129]
[16*x+13,16*y+3,16*z+1]: failure constant=176, vgcd=32
[16*x+5,16*y+11,16*z+1]: failure constant=144, vgcd=32
[16*x+13,16*y+11,16*z+1]: unknown -> [130] 288+416*x+256*x^2+352*y+256*y^2-64*z-512*z^2=0
[16*x+5,16*y+3,16*z+9]: unknown -> [131] -128+160*x+256*x^2+96*y+256*y^2-576*z-512*z^2=0
[16*x+13,16*y+3,16*z+9]: failure constant=16, vgcd=32
[16*x+5,16*y+11,16*z+9]: failure constant=-16, vgcd=32
[16*x+13,16*y+11,16*z+9]: unknown -> [132] 128+416*x+256*x^2+352*y+256*y^2-576*z-512*z^2=0

expanding queue[32]: 48 + 16*x + 64*x^2 + 112*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+1,16*y+7,16*z+1]: failure constant=48, vgcd=32
[16*x+9,16*y+7,16*z+1]: unknown -> [133] 128+288*x+256*x^2+224*y+256*y^2-64*z-512*z^2=0
[16*x+1,16*y+15,16*z+1]: unknown -> [134] 224+32*x+256*x^2+480*y+256*y^2-64*z-512*z^2=0
[16*x+9,16*y+15,16*z+1]: failure constant=304, vgcd=32
[16*x+1,16*y+7,16*z+9]: failure constant=-112, vgcd=32
[16*x+9,16*y+7,16*z+9]: unknown -> [135] -32+288*x+256*x^2+224*y+256*y^2-576*z-512*z^2=0
[16*x+1,16*y+15,16*z+9]: unknown -> [136] 64+32*x+256*x^2+480*y+256*y^2-576*z-512*z^2=0
[16*x+9,16*y+15,16*z+9]: failure constant=144, vgcd=32

expanding queue[33]:  - 16 + 80*x + 64*x^2 + 48*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+5,16*y+3,16*z+5]: failure constant=-16, vgcd=32
[16*x+13,16*y+3,16*z+5]: unknown -> [137] 128+416*x+256*x^2+96*y+256*y^2-320*z-512*z^2=0
[16*x+5,16*y+11,16*z+5]: unknown -> [138] 96+160*x+256*x^2+352*y+256*y^2-320*z-512*z^2=0
[16*x+13,16*y+11,16*z+5]: failure constant=240, vgcd=32
[16*x+5,16*y+3,16*z+13]: failure constant=-304, vgcd=32
[16*x+13,16*y+3,16*z+13]: unknown -> [139] -160+416*x+256*x^2+96*y+256*y^2-832*z-512*z^2=0
[16*x+5,16*y+11,16*z+13]: unknown -> [140] -192+160*x+256*x^2+352*y+256*y^2-832*z-512*z^2=0
[16*x+13,16*y+11,16*z+13]: failure constant=-48, vgcd=32

expanding queue[34]: 16*x + 64*x^2 + 112*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+1,16*y+7,16*z+5]: similiar to [34], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32*x+256*x^2+224*y+256*y^2-320*z-512*z^2=0 -> [141]
[16*x+9,16*y+7,16*z+5]: failure constant=80, vgcd=32
[16*x+1,16*y+15,16*z+5]: failure constant=176, vgcd=32
[16*x+9,16*y+15,16*z+5]: unknown -> [142] 256+288*x+256*x^2+480*y+256*y^2-320*z-512*z^2=0
[16*x+1,16*y+7,16*z+13]: unknown -> [143] -288+32*x+256*x^2+224*y+256*y^2-832*z-512*z^2=0
[16*x+9,16*y+7,16*z+13]: failure constant=-208, vgcd=32
[16*x+1,16*y+15,16*z+13]: failure constant=-112, vgcd=32
[16*x+9,16*y+15,16*z+13]: unknown -> [144] -32+288*x+256*x^2+480*y+256*y^2-832*z-512*z^2=0

expanding queue[35]: 16 + 48*x + 64*x^2 + 48*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+3,16*y+3,16*z+1]: failure constant=16, vgcd=32
[16*x+11,16*y+3,16*z+1]: unknown -> [145] 128+352*x+256*x^2+96*y+256*y^2-64*z-512*z^2=0
[16*x+3,16*y+11,16*z+1]: unknown -> [146] 128+96*x+256*x^2+352*y+256*y^2-64*z-512*z^2=0
[16*x+11,16*y+11,16*z+1]: failure constant=240, vgcd=32
[16*x+3,16*y+3,16*z+9]: failure constant=-144, vgcd=32
[16*x+11,16*y+3,16*z+9]: unknown -> [147] -32+352*x+256*x^2+96*y+256*y^2-576*z-512*z^2=0
[16*x+3,16*y+11,16*z+9]: unknown -> [148] -32+96*x+256*x^2+352*y+256*y^2-576*z-512*z^2=0
[16*x+11,16*y+11,16*z+9]: failure constant=80, vgcd=32

expanding queue[36]: 96 + 112*x + 64*x^2 + 112*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+7,16*y+7,16*z+1]: similiar to [36], affine map: {x=(2*x),y=(2*y),z=(2*z)}  96+224*x+256*x^2+224*y+256*y^2-64*z-512*z^2=0 -> [149]
[16*x+15,16*y+7,16*z+1]: failure constant=272, vgcd=32
[16*x+7,16*y+15,16*z+1]: failure constant=272, vgcd=32
[16*x+15,16*y+15,16*z+1]: unknown -> [150] 448+480*x+256*x^2+480*y+256*y^2-64*z-512*z^2=0
[16*x+7,16*y+7,16*z+9]: unknown -> [151] -64+224*x+256*x^2+224*y+256*y^2-576*z-512*z^2=0
[16*x+15,16*y+7,16*z+9]: failure constant=112, vgcd=32
[16*x+7,16*y+15,16*z+9]: failure constant=112, vgcd=32
[16*x+15,16*y+15,16*z+9]: unknown -> [152] 288+480*x+256*x^2+480*y+256*y^2-576*z-512*z^2=0

expanding queue[37]:  - 32 + 48*x + 64*x^2 + 48*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+3,16*y+3,16*z+5]: similiar to [37], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -32+96*x+256*x^2+96*y+256*y^2-320*z-512*z^2=0 -> [153]
[16*x+11,16*y+3,16*z+5]: failure constant=80, vgcd=32
[16*x+3,16*y+11,16*z+5]: failure constant=80, vgcd=32
[16*x+11,16*y+11,16*z+5]: unknown -> [154] 192+352*x+256*x^2+352*y+256*y^2-320*z-512*z^2=0
[16*x+3,16*y+3,16*z+13]: unknown -> [155] -320+96*x+256*x^2+96*y+256*y^2-832*z-512*z^2=0
[16*x+11,16*y+3,16*z+13]: failure constant=-208, vgcd=32
[16*x+3,16*y+11,16*z+13]: failure constant=-208, vgcd=32
[16*x+11,16*y+11,16*z+13]: unknown -> [156] -96+352*x+256*x^2+352*y+256*y^2-832*z-512*z^2=0

expanding queue[38]: 48 + 112*x + 64*x^2 + 112*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+7,16*y+7,16*z+5]: failure constant=48, vgcd=32
[16*x+15,16*y+7,16*z+5]: unknown -> [157] 224+480*x+256*x^2+224*y+256*y^2-320*z-512*z^2=0
[16*x+7,16*y+15,16*z+5]: unknown -> [158] 224+224*x+256*x^2+480*y+256*y^2-320*z-512*z^2=0
[16*x+15,16*y+15,16*z+5]: failure constant=400, vgcd=32
[16*x+7,16*y+7,16*z+13]: failure constant=-240, vgcd=32
[16*x+15,16*y+7,16*z+13]: unknown -> [159] -64+480*x+256*x^2+224*y+256*y^2-832*z-512*z^2=0
[16*x+7,16*y+15,16*z+13]: unknown -> [160] -64+224*x+256*x^2+480*y+256*y^2-832*z-512*z^2=0
[16*x+15,16*y+15,16*z+13]: failure constant=112, vgcd=32

expanding queue[39]:  - 16 + 16*x + 64*x^2 + 16*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+1,16*y+1,16*z+3]: failure constant=-16, vgcd=32
[16*x+9,16*y+1,16*z+3]: unknown -> [161] 64+288*x+256*x^2+32*y+256*y^2-192*z-512*z^2=0
[16*x+1,16*y+9,16*z+3]: unknown -> [162] 64+32*x+256*x^2+288*y+256*y^2-192*z-512*z^2=0
[16*x+9,16*y+9,16*z+3]: failure constant=144, vgcd=32
[16*x+1,16*y+1,16*z+11]: failure constant=-240, vgcd=32
[16*x+9,16*y+1,16*z+11]: unknown -> [163] -160+288*x+256*x^2+32*y+256*y^2-704*z-512*z^2=0
[16*x+1,16*y+9,16*z+11]: unknown -> [164] -160+32*x+256*x^2+288*y+256*y^2-704*z-512*z^2=0
[16*x+9,16*y+9,16*z+11]: failure constant=-80, vgcd=32

expanding queue[40]: 32 + 80*x + 64*x^2 + 80*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+5,16*y+5,16*z+3]: similiar to [40], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32+160*x+256*x^2+160*y+256*y^2-192*z-512*z^2=0 -> [165]
[16*x+13,16*y+5,16*z+3]: failure constant=176, vgcd=32
[16*x+5,16*y+13,16*z+3]: failure constant=176, vgcd=32
[16*x+13,16*y+13,16*z+3]: unknown -> [166] 320+416*x+256*x^2+416*y+256*y^2-192*z-512*z^2=0
[16*x+5,16*y+5,16*z+11]: unknown -> [167] -192+160*x+256*x^2+160*y+256*y^2-704*z-512*z^2=0
[16*x+13,16*y+5,16*z+11]: failure constant=-48, vgcd=32
[16*x+5,16*y+13,16*z+11]: failure constant=-48, vgcd=32
[16*x+13,16*y+13,16*z+11]: unknown -> [168] 96+416*x+256*x^2+416*y+256*y^2-704*z-512*z^2=0

expanding queue[41]:  - 96 + 16*x + 64*x^2 + 16*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+1,16*y+1,16*z+7]: similiar to [41], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -96+32*x+256*x^2+32*y+256*y^2-448*z-512*z^2=0 -> [169]
[16*x+9,16*y+1,16*z+7]: failure constant=-16, vgcd=32
[16*x+1,16*y+9,16*z+7]: failure constant=-16, vgcd=32
[16*x+9,16*y+9,16*z+7]: unknown -> [170] 64+288*x+256*x^2+288*y+256*y^2-448*z-512*z^2=0
[16*x+1,16*y+1,16*z+15]: unknown -> [171] -448+32*x+256*x^2+32*y+256*y^2-960*z-512*z^2=0
[16*x+9,16*y+1,16*z+15]: failure constant=-368, vgcd=32
[16*x+1,16*y+9,16*z+15]: failure constant=-368, vgcd=32
[16*x+9,16*y+9,16*z+15]: unknown -> [172] -288+288*x+256*x^2+288*y+256*y^2-960*z-512*z^2=0

expanding queue[42]:  - 48 + 80*x + 64*x^2 + 80*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+5,16*y+5,16*z+7]: failure constant=-48, vgcd=32
[16*x+13,16*y+5,16*z+7]: unknown -> [173] 96+416*x+256*x^2+160*y+256*y^2-448*z-512*z^2=0
[16*x+5,16*y+13,16*z+7]: unknown -> [174] 96+160*x+256*x^2+416*y+256*y^2-448*z-512*z^2=0
[16*x+13,16*y+13,16*z+7]: failure constant=240, vgcd=32
[16*x+5,16*y+5,16*z+15]: failure constant=-400, vgcd=32
[16*x+13,16*y+5,16*z+15]: unknown -> [175] -256+416*x+256*x^2+160*y+256*y^2-960*z-512*z^2=0
[16*x+5,16*y+13,16*z+15]: unknown -> [176] -256+160*x+256*x^2+416*y+256*y^2-960*z-512*z^2=0
[16*x+13,16*y+13,16*z+15]: failure constant=-112, vgcd=32

expanding queue[43]: 32 + 112*x + 64*x^2 + 16*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+7,16*y+1,16*z+3]: similiar to [43], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32+224*x+256*x^2+32*y+256*y^2-192*z-512*z^2=0 -> [177]
[16*x+15,16*y+1,16*z+3]: failure constant=208, vgcd=32
[16*x+7,16*y+9,16*z+3]: failure constant=112, vgcd=32
[16*x+15,16*y+9,16*z+3]: unknown -> [178] 288+480*x+256*x^2+288*y+256*y^2-192*z-512*z^2=0
[16*x+7,16*y+1,16*z+11]: unknown -> [179] -192+224*x+256*x^2+32*y+256*y^2-704*z-512*z^2=0
[16*x+15,16*y+1,16*z+11]: failure constant=-16, vgcd=32
[16*x+7,16*y+9,16*z+11]: failure constant=-112, vgcd=32
[16*x+15,16*y+9,16*z+11]: unknown -> [180] 64+480*x+256*x^2+288*y+256*y^2-704*z-512*z^2=0

expanding queue[44]: 16 + 48*x + 64*x^2 + 80*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+3,16*y+5,16*z+3]: failure constant=16, vgcd=32
[16*x+11,16*y+5,16*z+3]: unknown -> [181] 128+352*x+256*x^2+160*y+256*y^2-192*z-512*z^2=0
[16*x+3,16*y+13,16*z+3]: unknown -> [182] 160+96*x+256*x^2+416*y+256*y^2-192*z-512*z^2=0
[16*x+11,16*y+13,16*z+3]: failure constant=272, vgcd=32
[16*x+3,16*y+5,16*z+11]: failure constant=-208, vgcd=32
[16*x+11,16*y+5,16*z+11]: unknown -> [183] -96+352*x+256*x^2+160*y+256*y^2-704*z-512*z^2=0
[16*x+3,16*y+13,16*z+11]: unknown -> [184] -64+96*x+256*x^2+416*y+256*y^2-704*z-512*z^2=0
[16*x+11,16*y+13,16*z+11]: failure constant=48, vgcd=32

expanding queue[45]:  - 48 + 112*x + 64*x^2 + 16*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+7,16*y+1,16*z+7]: failure constant=-48, vgcd=32
[16*x+15,16*y+1,16*z+7]: unknown -> [185] 128+480*x+256*x^2+32*y+256*y^2-448*z-512*z^2=0
[16*x+7,16*y+9,16*z+7]: unknown -> [186] 32+224*x+256*x^2+288*y+256*y^2-448*z-512*z^2=0
[16*x+15,16*y+9,16*z+7]: failure constant=208, vgcd=32
[16*x+7,16*y+1,16*z+15]: failure constant=-400, vgcd=32
[16*x+15,16*y+1,16*z+15]: unknown -> [187] -224+480*x+256*x^2+32*y+256*y^2-960*z-512*z^2=0
[16*x+7,16*y+9,16*z+15]: unknown -> [188] -320+224*x+256*x^2+288*y+256*y^2-960*z-512*z^2=0
[16*x+15,16*y+9,16*z+15]: failure constant=-144, vgcd=32

expanding queue[46]:  - 64 + 48*x + 64*x^2 + 80*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+3,16*y+5,16*z+7]: similiar to [46], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -64+96*x+256*x^2+160*y+256*y^2-448*z-512*z^2=0 -> [189]
[16*x+11,16*y+5,16*z+7]: failure constant=48, vgcd=32
[16*x+3,16*y+13,16*z+7]: failure constant=80, vgcd=32
[16*x+11,16*y+13,16*z+7]: unknown -> [190] 192+352*x+256*x^2+416*y+256*y^2-448*z-512*z^2=0
[16*x+3,16*y+5,16*z+15]: unknown -> [191] -416+96*x+256*x^2+160*y+256*y^2-960*z-512*z^2=0
[16*x+11,16*y+5,16*z+15]: failure constant=-304, vgcd=32
[16*x+3,16*y+13,16*z+15]: failure constant=-272, vgcd=32
[16*x+11,16*y+13,16*z+15]: unknown -> [192] -160+352*x+256*x^2+416*y+256*y^2-960*z-512*z^2=0

expanding queue[47]: 16 + 80*x + 64*x^2 + 48*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+5,16*y+3,16*z+3]: failure constant=16, vgcd=32
[16*x+13,16*y+3,16*z+3]: unknown -> [193] 160+416*x+256*x^2+96*y+256*y^2-192*z-512*z^2=0
[16*x+5,16*y+11,16*z+3]: unknown -> [194] 128+160*x+256*x^2+352*y+256*y^2-192*z-512*z^2=0
[16*x+13,16*y+11,16*z+3]: failure constant=272, vgcd=32
[16*x+5,16*y+3,16*z+11]: failure constant=-208, vgcd=32
[16*x+13,16*y+3,16*z+11]: unknown -> [195] -64+416*x+256*x^2+96*y+256*y^2-704*z-512*z^2=0
[16*x+5,16*y+11,16*z+11]: unknown -> [196] -96+160*x+256*x^2+352*y+256*y^2-704*z-512*z^2=0
[16*x+13,16*y+11,16*z+11]: failure constant=48, vgcd=32

expanding queue[48]: 32 + 16*x + 64*x^2 + 112*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+1,16*y+7,16*z+3]: similiar to [48], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32+32*x+256*x^2+224*y+256*y^2-192*z-512*z^2=0 -> [197]
[16*x+9,16*y+7,16*z+3]: failure constant=112, vgcd=32
[16*x+1,16*y+15,16*z+3]: failure constant=208, vgcd=32
[16*x+9,16*y+15,16*z+3]: unknown -> [198] 288+288*x+256*x^2+480*y+256*y^2-192*z-512*z^2=0
[16*x+1,16*y+7,16*z+11]: unknown -> [199] -192+32*x+256*x^2+224*y+256*y^2-704*z-512*z^2=0
[16*x+9,16*y+7,16*z+11]: failure constant=-112, vgcd=32
[16*x+1,16*y+15,16*z+11]: failure constant=-16, vgcd=32
[16*x+9,16*y+15,16*z+11]: unknown -> [200] 64+288*x+256*x^2+480*y+256*y^2-704*z-512*z^2=0

expanding queue[49]:  - 64 + 80*x + 64*x^2 + 48*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+5,16*y+3,16*z+7]: similiar to [49], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -64+160*x+256*x^2+96*y+256*y^2-448*z-512*z^2=0 -> [201]
[16*x+13,16*y+3,16*z+7]: failure constant=80, vgcd=32
[16*x+5,16*y+11,16*z+7]: failure constant=48, vgcd=32
[16*x+13,16*y+11,16*z+7]: unknown -> [202] 192+416*x+256*x^2+352*y+256*y^2-448*z-512*z^2=0
[16*x+5,16*y+3,16*z+15]: unknown -> [203] -416+160*x+256*x^2+96*y+256*y^2-960*z-512*z^2=0
[16*x+13,16*y+3,16*z+15]: failure constant=-272, vgcd=32
[16*x+5,16*y+11,16*z+15]: failure constant=-304, vgcd=32
[16*x+13,16*y+11,16*z+15]: unknown -> [204] -160+416*x+256*x^2+352*y+256*y^2-960*z-512*z^2=0

expanding queue[50]:  - 48 + 16*x + 64*x^2 + 112*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+1,16*y+7,16*z+7]: failure constant=-48, vgcd=32
[16*x+9,16*y+7,16*z+7]: unknown -> [205] 32+288*x+256*x^2+224*y+256*y^2-448*z-512*z^2=0
[16*x+1,16*y+15,16*z+7]: unknown -> [206] 128+32*x+256*x^2+480*y+256*y^2-448*z-512*z^2=0
[16*x+9,16*y+15,16*z+7]: failure constant=208, vgcd=32
[16*x+1,16*y+7,16*z+15]: failure constant=-400, vgcd=32
[16*x+9,16*y+7,16*z+15]: unknown -> [207] -320+288*x+256*x^2+224*y+256*y^2-960*z-512*z^2=0
[16*x+1,16*y+15,16*z+15]: unknown -> [208] -224+32*x+256*x^2+480*y+256*y^2-960*z-512*z^2=0
[16*x+9,16*y+15,16*z+15]: failure constant=-144, vgcd=32

expanding queue[51]: 48*x + 64*x^2 + 48*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+3,16*y+3,16*z+3]: similiar to [51], affine map: {x=(2*x),y=(2*y),z=(2*z)}  96*x+256*x^2+96*y+256*y^2-192*z-512*z^2=0 -> [209]
[16*x+11,16*y+3,16*z+3]: failure constant=112, vgcd=32
[16*x+3,16*y+11,16*z+3]: failure constant=112, vgcd=32
[16*x+11,16*y+11,16*z+3]: unknown -> [210] 224+352*x+256*x^2+352*y+256*y^2-192*z-512*z^2=0
[16*x+3,16*y+3,16*z+11]: unknown -> [211] -224+96*x+256*x^2+96*y+256*y^2-704*z-512*z^2=0
[16*x+11,16*y+3,16*z+11]: failure constant=-112, vgcd=32
[16*x+3,16*y+11,16*z+11]: failure constant=-112, vgcd=32
[16*x+11,16*y+11,16*z+11]: success trivial=2 -> [212] 352*x+256*x^2+352*y+256*y^2-704*z-512*z^2=0

expanding queue[52]: 80 + 112*x + 64*x^2 + 112*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+7,16*y+7,16*z+3]: failure constant=80, vgcd=32
[16*x+15,16*y+7,16*z+3]: unknown -> [213] 256+480*x+256*x^2+224*y+256*y^2-192*z-512*z^2=0
[16*x+7,16*y+15,16*z+3]: unknown -> [214] 256+224*x+256*x^2+480*y+256*y^2-192*z-512*z^2=0
[16*x+15,16*y+15,16*z+3]: failure constant=432, vgcd=32
[16*x+7,16*y+7,16*z+11]: failure constant=-144, vgcd=32
[16*x+15,16*y+7,16*z+11]: unknown -> [215] 32+480*x+256*x^2+224*y+256*y^2-704*z-512*z^2=0
[16*x+7,16*y+15,16*z+11]: unknown -> [216] 32+224*x+256*x^2+480*y+256*y^2-704*z-512*z^2=0
[16*x+15,16*y+15,16*z+11]: failure constant=208, vgcd=32

expanding queue[53]:  - 80 + 48*x + 64*x^2 + 48*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+3,16*y+3,16*z+7]: failure constant=-80, vgcd=32
[16*x+11,16*y+3,16*z+7]: unknown -> [217] 32+352*x+256*x^2+96*y+256*y^2-448*z-512*z^2=0
[16*x+3,16*y+11,16*z+7]: unknown -> [218] 32+96*x+256*x^2+352*y+256*y^2-448*z-512*z^2=0
[16*x+11,16*y+11,16*z+7]: failure constant=144, vgcd=32
[16*x+3,16*y+3,16*z+15]: failure constant=-432, vgcd=32
[16*x+11,16*y+3,16*z+15]: unknown -> [219] -320+352*x+256*x^2+96*y+256*y^2-960*z-512*z^2=0
[16*x+3,16*y+11,16*z+15]: unknown -> [220] -320+96*x+256*x^2+352*y+256*y^2-960*z-512*z^2=0
[16*x+11,16*y+11,16*z+15]: failure constant=-208, vgcd=32

expanding queue[54]: 112*x + 64*x^2 + 112*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2]
[16*x+7,16*y+7,16*z+7]: similiar to [54], affine map: {x=(2*x),y=(2*y),z=(2*z)}  224*x+256*x^2+224*y+256*y^2-448*z-512*z^2=0 -> [221]
[16*x+15,16*y+7,16*z+7]: failure constant=176, vgcd=32
[16*x+7,16*y+15,16*z+7]: failure constant=176, vgcd=32
[16*x+15,16*y+15,16*z+7]: unknown -> [222] 352+480*x+256*x^2+480*y+256*y^2-448*z-512*z^2=0
[16*x+7,16*y+7,16*z+15]: unknown -> [223] -352+224*x+256*x^2+224*y+256*y^2-960*z-512*z^2=0
[16*x+15,16*y+7,16*z+15]: failure constant=-176, vgcd=32
[16*x+7,16*y+15,16*z+15]: failure constant=-176, vgcd=32
[16*x+15,16*y+15,16*z+15]: success trivial=2 -> [224] 480*x+256*x^2+480*y+256*y^2-960*z-512*z^2=0
