
expanding queue[0]: x^2 + y^2 - 2*z^2 = 0 modulo [2,2,2] *2
[2*x+0,2*y+0,2*z+0]: same as 2*2*x^2+2*2*y^2-4*2*z^2
[2*x+1,2*y+0,2*z+0]: failure constant=1, vgcd=4
[2*x+0,2*y+1,2*z+0]: failure constant=1, vgcd=4
[2*x+1,2*y+1,2*z+0]: failure constant=2, vgcd=4
[2*x+0,2*y+0,2*z+1]: failure constant=-2, vgcd=4
[2*x+1,2*y+0,2*z+1]: failure constant=-1, vgcd=4
[2*x+0,2*y+1,2*z+1]: failure constant=-1, vgcd=4
[2*x+1,2*y+1,2*z+1]: success trivial=2 2*2*x+2*2*x^2+2*2*y+2*2*y^2-4*2*z-4*2*z^2 -> [1]

expanding queue[1]: 4*x + 4*x^2 + 4*y + 4*y^2 - 8*z - 8*z^2 = 0 modulo [2,2,2] *4
[4*x+1,4*y+1,4*z+1]: similiar to [1], affine map: {x=(2*x),y=(2*y),z=(2*z)}  2*4*x+4*4*x^2+2*4*y+4*4*y^2-4*4*z-8*4*z^2
[4*x+3,4*y+1,4*z+1]: unknown 2*4+6*4*x+4*4*x^2+2*4*y+4*4*y^2-4*4*z-8*4*z^2 -> [2]
[4*x+1,4*y+3,4*z+1]: unknown 2*4+2*4*x+4*4*x^2+6*4*y+4*4*y^2-4*4*z-8*4*z^2 -> [3]
[4*x+3,4*y+3,4*z+1]: unknown 4*4+6*4*x+4*4*x^2+6*4*y+4*4*y^2-4*4*z-8*4*z^2 -> [4]
[4*x+1,4*y+1,4*z+3]: unknown -4*4+2*4*x+4*4*x^2+2*4*y+4*4*y^2-12*4*z-8*4*z^2 -> [5]
[4*x+3,4*y+1,4*z+3]: unknown -2*4+6*4*x+4*4*x^2+2*4*y+4*4*y^2-12*4*z-8*4*z^2 -> [6]
[4*x+1,4*y+3,4*z+3]: unknown -2*4+2*4*x+4*4*x^2+6*4*y+4*4*y^2-12*4*z-8*4*z^2 -> [7]
[4*x+3,4*y+3,4*z+3]: success trivial=2 6*4*x+4*4*x^2+6*4*y+4*4*y^2-12*4*z-8*4*z^2 -> [8]

expanding queue[2]: 8 + 24*x + 16*x^2 + 8*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2] *8
[8*x+3,8*y+1,8*z+1]: failure constant=8, vgcd=16
[8*x+7,8*y+1,8*z+1]: unknown 6*8+14*8*x+8*8*x^2+2*8*y+8*8*y^2-4*8*z-16*8*z^2 -> [9]
[8*x+3,8*y+5,8*z+1]: unknown 4*8+6*8*x+8*8*x^2+10*8*y+8*8*y^2-4*8*z-16*8*z^2 -> [10]
[8*x+7,8*y+5,8*z+1]: failure constant=72, vgcd=16
[8*x+3,8*y+1,8*z+5]: failure constant=-40, vgcd=16
[8*x+7,8*y+1,8*z+5]: success NONTRIVIAL 14*8*x+8*8*x^2+2*8*y+8*8*y^2-20*8*z-16*8*z^2 -> [11]
[8*x+3,8*y+5,8*z+5]: unknown -2*8+6*8*x+8*8*x^2+10*8*y+8*8*y^2-20*8*z-16*8*z^2 -> [12]
[8*x+7,8*y+5,8*z+5]: failure constant=24, vgcd=16

expanding queue[3]: 8 + 8*x + 16*x^2 + 24*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2] *8
[8*x+1,8*y+3,8*z+1]: failure constant=8, vgcd=16
[8*x+5,8*y+3,8*z+1]: unknown 4*8+10*8*x+8*8*x^2+6*8*y+8*8*y^2-4*8*z-16*8*z^2 -> [13]
[8*x+1,8*y+7,8*z+1]: unknown 6*8+2*8*x+8*8*x^2+14*8*y+8*8*y^2-4*8*z-16*8*z^2 -> [14]
[8*x+5,8*y+7,8*z+1]: failure constant=72, vgcd=16
[8*x+1,8*y+3,8*z+5]: failure constant=-40, vgcd=16
[8*x+5,8*y+3,8*z+5]: unknown -2*8+10*8*x+8*8*x^2+6*8*y+8*8*y^2-20*8*z-16*8*z^2 -> [15]
[8*x+1,8*y+7,8*z+5]: success NONTRIVIAL 2*8*x+8*8*x^2+14*8*y+8*8*y^2-20*8*z-16*8*z^2 -> [16]
[8*x+5,8*y+7,8*z+5]: failure constant=24, vgcd=16

expanding queue[4]: 16 + 24*x + 16*x^2 + 24*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2] *8
[8*x+3,8*y+3,8*z+1]: similiar to [4], affine map: {x=(2*x),y=(2*y),z=(2*z)}  2*8+6*8*x+8*8*x^2+6*8*y+8*8*y^2-4*8*z-16*8*z^2
[8*x+7,8*y+3,8*z+1]: failure constant=56, vgcd=16
[8*x+3,8*y+7,8*z+1]: failure constant=56, vgcd=16
[8*x+7,8*y+7,8*z+1]: unknown 12*8+14*8*x+8*8*x^2+14*8*y+8*8*y^2-4*8*z-16*8*z^2 -> [17]
[8*x+3,8*y+3,8*z+5]: unknown -4*8+6*8*x+8*8*x^2+6*8*y+8*8*y^2-20*8*z-16*8*z^2 -> [18]
[8*x+7,8*y+3,8*z+5]: failure constant=8, vgcd=16
[8*x+3,8*y+7,8*z+5]: failure constant=8, vgcd=16
[8*x+7,8*y+7,8*z+5]: unknown 6*8+14*8*x+8*8*x^2+14*8*y+8*8*y^2-20*8*z-16*8*z^2 -> [19]

expanding queue[5]:  - 16 + 8*x + 16*x^2 + 8*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[8*x+1,8*y+1,8*z+3]: similiar to [5], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -2*8+2*8*x+8*8*x^2+2*8*y+8*8*y^2-12*8*z-16*8*z^2
[8*x+5,8*y+1,8*z+3]: failure constant=8, vgcd=16
[8*x+1,8*y+5,8*z+3]: failure constant=8, vgcd=16
[8*x+5,8*y+5,8*z+3]: unknown 4*8+10*8*x+8*8*x^2+10*8*y+8*8*y^2-12*8*z-16*8*z^2 -> [20]
[8*x+1,8*y+1,8*z+7]: unknown -12*8+2*8*x+8*8*x^2+2*8*y+8*8*y^2-28*8*z-16*8*z^2 -> [21]
[8*x+5,8*y+1,8*z+7]: failure constant=-72, vgcd=16
[8*x+1,8*y+5,8*z+7]: failure constant=-72, vgcd=16
[8*x+5,8*y+5,8*z+7]: unknown -6*8+10*8*x+8*8*x^2+10*8*y+8*8*y^2-28*8*z-16*8*z^2 -> [22]

expanding queue[6]:  - 8 + 24*x + 16*x^2 + 8*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[8*x+3,8*y+1,8*z+3]: failure constant=-8, vgcd=16
[8*x+7,8*y+1,8*z+3]: unknown 4*8+14*8*x+8*8*x^2+2*8*y+8*8*y^2-12*8*z-16*8*z^2 -> [23]
[8*x+3,8*y+5,8*z+3]: unknown 2*8+6*8*x+8*8*x^2+10*8*y+8*8*y^2-12*8*z-16*8*z^2 -> [24]
[8*x+7,8*y+5,8*z+3]: failure constant=56, vgcd=16
[8*x+3,8*y+1,8*z+7]: failure constant=-88, vgcd=16
[8*x+7,8*y+1,8*z+7]: unknown -6*8+14*8*x+8*8*x^2+2*8*y+8*8*y^2-28*8*z-16*8*z^2 -> [25]
[8*x+3,8*y+5,8*z+7]: unknown -8*8+6*8*x+8*8*x^2+10*8*y+8*8*y^2-28*8*z-16*8*z^2 -> [26]
[8*x+7,8*y+5,8*z+7]: failure constant=-24, vgcd=16

expanding queue[7]:  - 8 + 8*x + 16*x^2 + 24*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[8*x+1,8*y+3,8*z+3]: failure constant=-8, vgcd=16
[8*x+5,8*y+3,8*z+3]: unknown 2*8+10*8*x+8*8*x^2+6*8*y+8*8*y^2-12*8*z-16*8*z^2 -> [27]
[8*x+1,8*y+7,8*z+3]: unknown 4*8+2*8*x+8*8*x^2+14*8*y+8*8*y^2-12*8*z-16*8*z^2 -> [28]
[8*x+5,8*y+7,8*z+3]: failure constant=56, vgcd=16
[8*x+1,8*y+3,8*z+7]: failure constant=-88, vgcd=16
[8*x+5,8*y+3,8*z+7]: unknown -8*8+10*8*x+8*8*x^2+6*8*y+8*8*y^2-28*8*z-16*8*z^2 -> [29]
[8*x+1,8*y+7,8*z+7]: unknown -6*8+2*8*x+8*8*x^2+14*8*y+8*8*y^2-28*8*z-16*8*z^2 -> [30]
[8*x+5,8*y+7,8*z+7]: failure constant=-24, vgcd=16

expanding queue[8]: 24*x + 16*x^2 + 24*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[8*x+3,8*y+3,8*z+3]: similiar to [8], affine map: {x=(2*x),y=(2*y),z=(2*z)}  6*8*x+8*8*x^2+6*8*y+8*8*y^2-12*8*z-16*8*z^2
[8*x+7,8*y+3,8*z+3]: failure constant=40, vgcd=16
[8*x+3,8*y+7,8*z+3]: failure constant=40, vgcd=16
[8*x+7,8*y+7,8*z+3]: unknown 10*8+14*8*x+8*8*x^2+14*8*y+8*8*y^2-12*8*z-16*8*z^2 -> [31]
[8*x+3,8*y+3,8*z+7]: unknown -10*8+6*8*x+8*8*x^2+6*8*y+8*8*y^2-28*8*z-16*8*z^2 -> [32]
[8*x+7,8*y+3,8*z+7]: failure constant=-40, vgcd=16
[8*x+3,8*y+7,8*z+7]: failure constant=-40, vgcd=16
[8*x+7,8*y+7,8*z+7]: success trivial=2 14*8*x+8*8*x^2+14*8*y+8*8*y^2-28*8*z-16*8*z^2 -> [33]

expanding queue[9]: 48 + 112*x + 64*x^2 + 16*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+7,16*y+1,16*z+1]: failure constant=48, vgcd=32
[16*x+15,16*y+1,16*z+1]: unknown 14*16+30*16*x+16*16*x^2+2*16*y+16*16*y^2-4*16*z-32*16*z^2 -> [34]
[16*x+7,16*y+9,16*z+1]: unknown 8*16+14*16*x+16*16*x^2+18*16*y+16*16*y^2-4*16*z-32*16*z^2 -> [35]
[16*x+15,16*y+9,16*z+1]: failure constant=304, vgcd=32
[16*x+7,16*y+1,16*z+9]: failure constant=-112, vgcd=32
[16*x+15,16*y+1,16*z+9]: unknown 4*16+30*16*x+16*16*x^2+2*16*y+16*16*y^2-36*16*z-32*16*z^2 -> [36]
[16*x+7,16*y+9,16*z+9]: unknown -2*16+14*16*x+16*16*x^2+18*16*y+16*16*y^2-36*16*z-32*16*z^2 -> [37]
[16*x+15,16*y+9,16*z+9]: failure constant=144, vgcd=32

expanding queue[10]: 32 + 48*x + 64*x^2 + 80*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+3,16*y+5,16*z+1]: similiar to [10], affine map: {x=(2*x),y=(2*y),z=(2*z)}  2*16+6*16*x+16*16*x^2+10*16*y+16*16*y^2-4*16*z-32*16*z^2
[16*x+11,16*y+5,16*z+1]: failure constant=144, vgcd=32
[16*x+3,16*y+13,16*z+1]: failure constant=176, vgcd=32
[16*x+11,16*y+13,16*z+1]: unknown 18*16+22*16*x+16*16*x^2+26*16*y+16*16*y^2-4*16*z-32*16*z^2 -> [38]
[16*x+3,16*y+5,16*z+9]: unknown -8*16+6*16*x+16*16*x^2+10*16*y+16*16*y^2-36*16*z-32*16*z^2 -> [39]
[16*x+11,16*y+5,16*z+9]: failure constant=-16, vgcd=32
[16*x+3,16*y+13,16*z+9]: failure constant=16, vgcd=32
[16*x+11,16*y+13,16*z+9]: unknown 8*16+22*16*x+16*16*x^2+26*16*y+16*16*y^2-36*16*z-32*16*z^2 -> [40]

expanding queue[11]: 112*x + 64*x^2 + 16*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+7,16*y+1,16*z+5]: similiar to [11], affine map: {x=(2*x),y=(2*y),z=(2*z)}  14*16*x+16*16*x^2+2*16*y+16*16*y^2-20*16*z-32*16*z^2
[16*x+15,16*y+1,16*z+5]: failure constant=176, vgcd=32
[16*x+7,16*y+9,16*z+5]: failure constant=80, vgcd=32
[16*x+15,16*y+9,16*z+5]: unknown 16*16+30*16*x+16*16*x^2+18*16*y+16*16*y^2-20*16*z-32*16*z^2 -> [41]
[16*x+7,16*y+1,16*z+13]: unknown -18*16+14*16*x+16*16*x^2+2*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [42]
[16*x+15,16*y+1,16*z+13]: failure constant=-112, vgcd=32
[16*x+7,16*y+9,16*z+13]: failure constant=-208, vgcd=32
[16*x+15,16*y+9,16*z+13]: unknown -2*16+30*16*x+16*16*x^2+18*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [43]

expanding queue[12]:  - 16 + 48*x + 64*x^2 + 80*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+3,16*y+5,16*z+5]: failure constant=-16, vgcd=32
[16*x+11,16*y+5,16*z+5]: unknown 6*16+22*16*x+16*16*x^2+10*16*y+16*16*y^2-20*16*z-32*16*z^2 -> [44]
[16*x+3,16*y+13,16*z+5]: unknown 8*16+6*16*x+16*16*x^2+26*16*y+16*16*y^2-20*16*z-32*16*z^2 -> [45]
[16*x+11,16*y+13,16*z+5]: failure constant=240, vgcd=32
[16*x+3,16*y+5,16*z+13]: failure constant=-304, vgcd=32
[16*x+11,16*y+5,16*z+13]: unknown -12*16+22*16*x+16*16*x^2+10*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [46]
[16*x+3,16*y+13,16*z+13]: unknown -10*16+6*16*x+16*16*x^2+26*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [47]
[16*x+11,16*y+13,16*z+13]: failure constant=-48, vgcd=32

expanding queue[13]: 32 + 80*x + 64*x^2 + 48*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+5,16*y+3,16*z+1]: similiar to [13], affine map: {x=(2*x),y=(2*y),z=(2*z)}  2*16+10*16*x+16*16*x^2+6*16*y+16*16*y^2-4*16*z-32*16*z^2
[16*x+13,16*y+3,16*z+1]: failure constant=176, vgcd=32
[16*x+5,16*y+11,16*z+1]: failure constant=144, vgcd=32
[16*x+13,16*y+11,16*z+1]: unknown 18*16+26*16*x+16*16*x^2+22*16*y+16*16*y^2-4*16*z-32*16*z^2 -> [48]
[16*x+5,16*y+3,16*z+9]: unknown -8*16+10*16*x+16*16*x^2+6*16*y+16*16*y^2-36*16*z-32*16*z^2 -> [49]
[16*x+13,16*y+3,16*z+9]: failure constant=16, vgcd=32
[16*x+5,16*y+11,16*z+9]: failure constant=-16, vgcd=32
[16*x+13,16*y+11,16*z+9]: unknown 8*16+26*16*x+16*16*x^2+22*16*y+16*16*y^2-36*16*z-32*16*z^2 -> [50]

expanding queue[14]: 48 + 16*x + 64*x^2 + 112*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+1,16*y+7,16*z+1]: failure constant=48, vgcd=32
[16*x+9,16*y+7,16*z+1]: unknown 8*16+18*16*x+16*16*x^2+14*16*y+16*16*y^2-4*16*z-32*16*z^2 -> [51]
[16*x+1,16*y+15,16*z+1]: unknown 14*16+2*16*x+16*16*x^2+30*16*y+16*16*y^2-4*16*z-32*16*z^2 -> [52]
[16*x+9,16*y+15,16*z+1]: failure constant=304, vgcd=32
[16*x+1,16*y+7,16*z+9]: failure constant=-112, vgcd=32
[16*x+9,16*y+7,16*z+9]: unknown -2*16+18*16*x+16*16*x^2+14*16*y+16*16*y^2-36*16*z-32*16*z^2 -> [53]
[16*x+1,16*y+15,16*z+9]: unknown 4*16+2*16*x+16*16*x^2+30*16*y+16*16*y^2-36*16*z-32*16*z^2 -> [54]
[16*x+9,16*y+15,16*z+9]: failure constant=144, vgcd=32

expanding queue[15]:  - 16 + 80*x + 64*x^2 + 48*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+5,16*y+3,16*z+5]: failure constant=-16, vgcd=32
[16*x+13,16*y+3,16*z+5]: unknown 8*16+26*16*x+16*16*x^2+6*16*y+16*16*y^2-20*16*z-32*16*z^2 -> [55]
[16*x+5,16*y+11,16*z+5]: unknown 6*16+10*16*x+16*16*x^2+22*16*y+16*16*y^2-20*16*z-32*16*z^2 -> [56]
[16*x+13,16*y+11,16*z+5]: failure constant=240, vgcd=32
[16*x+5,16*y+3,16*z+13]: failure constant=-304, vgcd=32
[16*x+13,16*y+3,16*z+13]: unknown -10*16+26*16*x+16*16*x^2+6*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [57]
[16*x+5,16*y+11,16*z+13]: unknown -12*16+10*16*x+16*16*x^2+22*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [58]
[16*x+13,16*y+11,16*z+13]: failure constant=-48, vgcd=32

expanding queue[16]: 16*x + 64*x^2 + 112*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+1,16*y+7,16*z+5]: similiar to [16], affine map: {x=(2*x),y=(2*y),z=(2*z)}  2*16*x+16*16*x^2+14*16*y+16*16*y^2-20*16*z-32*16*z^2
[16*x+9,16*y+7,16*z+5]: failure constant=80, vgcd=32
[16*x+1,16*y+15,16*z+5]: failure constant=176, vgcd=32
[16*x+9,16*y+15,16*z+5]: unknown 16*16+18*16*x+16*16*x^2+30*16*y+16*16*y^2-20*16*z-32*16*z^2 -> [59]
[16*x+1,16*y+7,16*z+13]: unknown -18*16+2*16*x+16*16*x^2+14*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [60]
[16*x+9,16*y+7,16*z+13]: failure constant=-208, vgcd=32
[16*x+1,16*y+15,16*z+13]: failure constant=-112, vgcd=32
[16*x+9,16*y+15,16*z+13]: unknown -2*16+18*16*x+16*16*x^2+30*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [61]

expanding queue[17]: 96 + 112*x + 64*x^2 + 112*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+7,16*y+7,16*z+1]: similiar to [17], affine map: {x=(2*x),y=(2*y),z=(2*z)}  6*16+14*16*x+16*16*x^2+14*16*y+16*16*y^2-4*16*z-32*16*z^2
[16*x+15,16*y+7,16*z+1]: failure constant=272, vgcd=32
[16*x+7,16*y+15,16*z+1]: failure constant=272, vgcd=32
[16*x+15,16*y+15,16*z+1]: unknown 28*16+30*16*x+16*16*x^2+30*16*y+16*16*y^2-4*16*z-32*16*z^2 -> [62]
[16*x+7,16*y+7,16*z+9]: unknown -4*16+14*16*x+16*16*x^2+14*16*y+16*16*y^2-36*16*z-32*16*z^2 -> [63]
[16*x+15,16*y+7,16*z+9]: failure constant=112, vgcd=32
[16*x+7,16*y+15,16*z+9]: failure constant=112, vgcd=32
[16*x+15,16*y+15,16*z+9]: unknown 18*16+30*16*x+16*16*x^2+30*16*y+16*16*y^2-36*16*z-32*16*z^2 -> [64]

expanding queue[18]:  - 32 + 48*x + 64*x^2 + 48*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+3,16*y+3,16*z+5]: similiar to [18], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -2*16+6*16*x+16*16*x^2+6*16*y+16*16*y^2-20*16*z-32*16*z^2
[16*x+11,16*y+3,16*z+5]: failure constant=80, vgcd=32
[16*x+3,16*y+11,16*z+5]: failure constant=80, vgcd=32
[16*x+11,16*y+11,16*z+5]: unknown 12*16+22*16*x+16*16*x^2+22*16*y+16*16*y^2-20*16*z-32*16*z^2 -> [65]
[16*x+3,16*y+3,16*z+13]: unknown -20*16+6*16*x+16*16*x^2+6*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [66]
[16*x+11,16*y+3,16*z+13]: failure constant=-208, vgcd=32
[16*x+3,16*y+11,16*z+13]: failure constant=-208, vgcd=32
[16*x+11,16*y+11,16*z+13]: unknown -6*16+22*16*x+16*16*x^2+22*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [67]

expanding queue[19]: 48 + 112*x + 64*x^2 + 112*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+7,16*y+7,16*z+5]: failure constant=48, vgcd=32
[16*x+15,16*y+7,16*z+5]: unknown 14*16+30*16*x+16*16*x^2+14*16*y+16*16*y^2-20*16*z-32*16*z^2 -> [68]
[16*x+7,16*y+15,16*z+5]: unknown 14*16+14*16*x+16*16*x^2+30*16*y+16*16*y^2-20*16*z-32*16*z^2 -> [69]
[16*x+15,16*y+15,16*z+5]: failure constant=400, vgcd=32
[16*x+7,16*y+7,16*z+13]: failure constant=-240, vgcd=32
[16*x+15,16*y+7,16*z+13]: unknown -4*16+30*16*x+16*16*x^2+14*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [70]
[16*x+7,16*y+15,16*z+13]: unknown -4*16+14*16*x+16*16*x^2+30*16*y+16*16*y^2-52*16*z-32*16*z^2 -> [71]
[16*x+15,16*y+15,16*z+13]: failure constant=112, vgcd=32

expanding queue[20]: 32 + 80*x + 64*x^2 + 80*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+5,16*y+5,16*z+3]: similiar to [20], affine map: {x=(2*x),y=(2*y),z=(2*z)}  2*16+10*16*x+16*16*x^2+10*16*y+16*16*y^2-12*16*z-32*16*z^2
[16*x+13,16*y+5,16*z+3]: failure constant=176, vgcd=32
[16*x+5,16*y+13,16*z+3]: failure constant=176, vgcd=32
[16*x+13,16*y+13,16*z+3]: unknown 20*16+26*16*x+16*16*x^2+26*16*y+16*16*y^2-12*16*z-32*16*z^2 -> [72]
[16*x+5,16*y+5,16*z+11]: unknown -12*16+10*16*x+16*16*x^2+10*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [73]
[16*x+13,16*y+5,16*z+11]: failure constant=-48, vgcd=32
[16*x+5,16*y+13,16*z+11]: failure constant=-48, vgcd=32
[16*x+13,16*y+13,16*z+11]: unknown 6*16+26*16*x+16*16*x^2+26*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [74]

expanding queue[21]:  - 96 + 16*x + 64*x^2 + 16*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+1,16*y+1,16*z+7]: similiar to [21], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -6*16+2*16*x+16*16*x^2+2*16*y+16*16*y^2-28*16*z-32*16*z^2
[16*x+9,16*y+1,16*z+7]: failure constant=-16, vgcd=32
[16*x+1,16*y+9,16*z+7]: failure constant=-16, vgcd=32
[16*x+9,16*y+9,16*z+7]: unknown 4*16+18*16*x+16*16*x^2+18*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [75]
[16*x+1,16*y+1,16*z+15]: unknown -28*16+2*16*x+16*16*x^2+2*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [76]
[16*x+9,16*y+1,16*z+15]: failure constant=-368, vgcd=32
[16*x+1,16*y+9,16*z+15]: failure constant=-368, vgcd=32
[16*x+9,16*y+9,16*z+15]: unknown -18*16+18*16*x+16*16*x^2+18*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [77]

expanding queue[22]:  - 48 + 80*x + 64*x^2 + 80*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+5,16*y+5,16*z+7]: failure constant=-48, vgcd=32
[16*x+13,16*y+5,16*z+7]: unknown 6*16+26*16*x+16*16*x^2+10*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [78]
[16*x+5,16*y+13,16*z+7]: unknown 6*16+10*16*x+16*16*x^2+26*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [79]
[16*x+13,16*y+13,16*z+7]: failure constant=240, vgcd=32
[16*x+5,16*y+5,16*z+15]: failure constant=-400, vgcd=32
[16*x+13,16*y+5,16*z+15]: unknown -16*16+26*16*x+16*16*x^2+10*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [80]
[16*x+5,16*y+13,16*z+15]: unknown -16*16+10*16*x+16*16*x^2+26*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [81]
[16*x+13,16*y+13,16*z+15]: failure constant=-112, vgcd=32

expanding queue[23]: 32 + 112*x + 64*x^2 + 16*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+7,16*y+1,16*z+3]: similiar to [23], affine map: {x=(2*x),y=(2*y),z=(2*z)}  2*16+14*16*x+16*16*x^2+2*16*y+16*16*y^2-12*16*z-32*16*z^2
[16*x+15,16*y+1,16*z+3]: failure constant=208, vgcd=32
[16*x+7,16*y+9,16*z+3]: failure constant=112, vgcd=32
[16*x+15,16*y+9,16*z+3]: unknown 18*16+30*16*x+16*16*x^2+18*16*y+16*16*y^2-12*16*z-32*16*z^2 -> [82]
[16*x+7,16*y+1,16*z+11]: unknown -12*16+14*16*x+16*16*x^2+2*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [83]
[16*x+15,16*y+1,16*z+11]: failure constant=-16, vgcd=32
[16*x+7,16*y+9,16*z+11]: failure constant=-112, vgcd=32
[16*x+15,16*y+9,16*z+11]: unknown 4*16+30*16*x+16*16*x^2+18*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [84]

expanding queue[24]: 16 + 48*x + 64*x^2 + 80*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+3,16*y+5,16*z+3]: failure constant=16, vgcd=32
[16*x+11,16*y+5,16*z+3]: unknown 8*16+22*16*x+16*16*x^2+10*16*y+16*16*y^2-12*16*z-32*16*z^2 -> [85]
[16*x+3,16*y+13,16*z+3]: unknown 10*16+6*16*x+16*16*x^2+26*16*y+16*16*y^2-12*16*z-32*16*z^2 -> [86]
[16*x+11,16*y+13,16*z+3]: failure constant=272, vgcd=32
[16*x+3,16*y+5,16*z+11]: failure constant=-208, vgcd=32
[16*x+11,16*y+5,16*z+11]: unknown -6*16+22*16*x+16*16*x^2+10*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [87]
[16*x+3,16*y+13,16*z+11]: unknown -4*16+6*16*x+16*16*x^2+26*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [88]
[16*x+11,16*y+13,16*z+11]: failure constant=48, vgcd=32

expanding queue[25]:  - 48 + 112*x + 64*x^2 + 16*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+7,16*y+1,16*z+7]: failure constant=-48, vgcd=32
[16*x+15,16*y+1,16*z+7]: unknown 8*16+30*16*x+16*16*x^2+2*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [89]
[16*x+7,16*y+9,16*z+7]: unknown 2*16+14*16*x+16*16*x^2+18*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [90]
[16*x+15,16*y+9,16*z+7]: failure constant=208, vgcd=32
[16*x+7,16*y+1,16*z+15]: failure constant=-400, vgcd=32
[16*x+15,16*y+1,16*z+15]: unknown -14*16+30*16*x+16*16*x^2+2*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [91]
[16*x+7,16*y+9,16*z+15]: unknown -20*16+14*16*x+16*16*x^2+18*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [92]
[16*x+15,16*y+9,16*z+15]: failure constant=-144, vgcd=32

expanding queue[26]:  - 64 + 48*x + 64*x^2 + 80*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+3,16*y+5,16*z+7]: similiar to [26], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -4*16+6*16*x+16*16*x^2+10*16*y+16*16*y^2-28*16*z-32*16*z^2
[16*x+11,16*y+5,16*z+7]: failure constant=48, vgcd=32
[16*x+3,16*y+13,16*z+7]: failure constant=80, vgcd=32
[16*x+11,16*y+13,16*z+7]: unknown 12*16+22*16*x+16*16*x^2+26*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [93]
[16*x+3,16*y+5,16*z+15]: unknown -26*16+6*16*x+16*16*x^2+10*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [94]
[16*x+11,16*y+5,16*z+15]: failure constant=-304, vgcd=32
[16*x+3,16*y+13,16*z+15]: failure constant=-272, vgcd=32
[16*x+11,16*y+13,16*z+15]: unknown -10*16+22*16*x+16*16*x^2+26*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [95]

expanding queue[27]: 16 + 80*x + 64*x^2 + 48*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+5,16*y+3,16*z+3]: failure constant=16, vgcd=32
[16*x+13,16*y+3,16*z+3]: unknown 10*16+26*16*x+16*16*x^2+6*16*y+16*16*y^2-12*16*z-32*16*z^2 -> [96]
[16*x+5,16*y+11,16*z+3]: unknown 8*16+10*16*x+16*16*x^2+22*16*y+16*16*y^2-12*16*z-32*16*z^2 -> [97]
[16*x+13,16*y+11,16*z+3]: failure constant=272, vgcd=32
[16*x+5,16*y+3,16*z+11]: failure constant=-208, vgcd=32
[16*x+13,16*y+3,16*z+11]: unknown -4*16+26*16*x+16*16*x^2+6*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [98]
[16*x+5,16*y+11,16*z+11]: unknown -6*16+10*16*x+16*16*x^2+22*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [99]
[16*x+13,16*y+11,16*z+11]: failure constant=48, vgcd=32

expanding queue[28]: 32 + 16*x + 64*x^2 + 112*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+1,16*y+7,16*z+3]: similiar to [28], affine map: {x=(2*x),y=(2*y),z=(2*z)}  2*16+2*16*x+16*16*x^2+14*16*y+16*16*y^2-12*16*z-32*16*z^2
[16*x+9,16*y+7,16*z+3]: failure constant=112, vgcd=32
[16*x+1,16*y+15,16*z+3]: failure constant=208, vgcd=32
[16*x+9,16*y+15,16*z+3]: unknown 18*16+18*16*x+16*16*x^2+30*16*y+16*16*y^2-12*16*z-32*16*z^2 -> [100]
[16*x+1,16*y+7,16*z+11]: unknown -12*16+2*16*x+16*16*x^2+14*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [101]
[16*x+9,16*y+7,16*z+11]: failure constant=-112, vgcd=32
[16*x+1,16*y+15,16*z+11]: failure constant=-16, vgcd=32
[16*x+9,16*y+15,16*z+11]: unknown 4*16+18*16*x+16*16*x^2+30*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [102]

expanding queue[29]:  - 64 + 80*x + 64*x^2 + 48*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+5,16*y+3,16*z+7]: similiar to [29], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -4*16+10*16*x+16*16*x^2+6*16*y+16*16*y^2-28*16*z-32*16*z^2
[16*x+13,16*y+3,16*z+7]: failure constant=80, vgcd=32
[16*x+5,16*y+11,16*z+7]: failure constant=48, vgcd=32
[16*x+13,16*y+11,16*z+7]: unknown 12*16+26*16*x+16*16*x^2+22*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [103]
[16*x+5,16*y+3,16*z+15]: unknown -26*16+10*16*x+16*16*x^2+6*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [104]
[16*x+13,16*y+3,16*z+15]: failure constant=-272, vgcd=32
[16*x+5,16*y+11,16*z+15]: failure constant=-304, vgcd=32
[16*x+13,16*y+11,16*z+15]: unknown -10*16+26*16*x+16*16*x^2+22*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [105]

expanding queue[30]:  - 48 + 16*x + 64*x^2 + 112*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+1,16*y+7,16*z+7]: failure constant=-48, vgcd=32
[16*x+9,16*y+7,16*z+7]: unknown 2*16+18*16*x+16*16*x^2+14*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [106]
[16*x+1,16*y+15,16*z+7]: unknown 8*16+2*16*x+16*16*x^2+30*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [107]
[16*x+9,16*y+15,16*z+7]: failure constant=208, vgcd=32
[16*x+1,16*y+7,16*z+15]: failure constant=-400, vgcd=32
[16*x+9,16*y+7,16*z+15]: unknown -20*16+18*16*x+16*16*x^2+14*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [108]
[16*x+1,16*y+15,16*z+15]: unknown -14*16+2*16*x+16*16*x^2+30*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [109]
[16*x+9,16*y+15,16*z+15]: failure constant=-144, vgcd=32

expanding queue[31]: 80 + 112*x + 64*x^2 + 112*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+7,16*y+7,16*z+3]: failure constant=80, vgcd=32
[16*x+15,16*y+7,16*z+3]: unknown 16*16+30*16*x+16*16*x^2+14*16*y+16*16*y^2-12*16*z-32*16*z^2 -> [110]
[16*x+7,16*y+15,16*z+3]: unknown 16*16+14*16*x+16*16*x^2+30*16*y+16*16*y^2-12*16*z-32*16*z^2 -> [111]
[16*x+15,16*y+15,16*z+3]: failure constant=432, vgcd=32
[16*x+7,16*y+7,16*z+11]: failure constant=-144, vgcd=32
[16*x+15,16*y+7,16*z+11]: unknown 2*16+30*16*x+16*16*x^2+14*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [112]
[16*x+7,16*y+15,16*z+11]: unknown 2*16+14*16*x+16*16*x^2+30*16*y+16*16*y^2-44*16*z-32*16*z^2 -> [113]
[16*x+15,16*y+15,16*z+11]: failure constant=208, vgcd=32

expanding queue[32]:  - 80 + 48*x + 64*x^2 + 48*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+3,16*y+3,16*z+7]: failure constant=-80, vgcd=32
[16*x+11,16*y+3,16*z+7]: unknown 2*16+22*16*x+16*16*x^2+6*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [114]
[16*x+3,16*y+11,16*z+7]: unknown 2*16+6*16*x+16*16*x^2+22*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [115]
[16*x+11,16*y+11,16*z+7]: failure constant=144, vgcd=32
[16*x+3,16*y+3,16*z+15]: failure constant=-432, vgcd=32
[16*x+11,16*y+3,16*z+15]: unknown -20*16+22*16*x+16*16*x^2+6*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [116]
[16*x+3,16*y+11,16*z+15]: unknown -20*16+6*16*x+16*16*x^2+22*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [117]
[16*x+11,16*y+11,16*z+15]: failure constant=-208, vgcd=32

expanding queue[33]: 112*x + 64*x^2 + 112*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[16*x+7,16*y+7,16*z+7]: similiar to [33], affine map: {x=(2*x),y=(2*y),z=(2*z)}  14*16*x+16*16*x^2+14*16*y+16*16*y^2-28*16*z-32*16*z^2
[16*x+15,16*y+7,16*z+7]: failure constant=176, vgcd=32
[16*x+7,16*y+15,16*z+7]: failure constant=176, vgcd=32
[16*x+15,16*y+15,16*z+7]: unknown 22*16+30*16*x+16*16*x^2+30*16*y+16*16*y^2-28*16*z-32*16*z^2 -> [118]
[16*x+7,16*y+7,16*z+15]: unknown -22*16+14*16*x+16*16*x^2+14*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [119]
[16*x+15,16*y+7,16*z+15]: failure constant=-176, vgcd=32
[16*x+7,16*y+15,16*z+15]: failure constant=-176, vgcd=32
[16*x+15,16*y+15,16*z+15]: success trivial=2 30*16*x+16*16*x^2+30*16*y+16*16*y^2-60*16*z-32*16*z^2 -> [120]
