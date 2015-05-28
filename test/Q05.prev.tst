Expanding for base 2, transposables =    0   0   2

expanding queue[0]: x^2 + y^2 - 2*z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: same as 4*x^2+4*y^2-8*z^2=0
[1+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=1, vgcd=4
[1+2*x,1+2*y,0+2*z]: failure constant=2, vgcd=4
[0+2*x,0+2*y,1+2*z]: failure constant=-2, vgcd=4
[1+2*x,0+2*y,1+2*z]: failure constant=-1, vgcd=4
[0+2*x,1+2*y,1+2*z]: failure constant=-1, vgcd=4
[1+2*x,1+2*y,1+2*z]: success [1,1,1],trivial(2) success [3,3,3],trivial(2)  4*x+4*x^2+4*y+4*y^2-8*z-8*z^2=0 -> [1]

expanding queue[1]: 4*x + 4*x^2 + 4*y + 4*y^2 - 8*z - 8*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,1+4*z]: similiar to [1], affine map: {x=(2*x),y=(2*y),z=(2*z)}  8*x+16*x^2+8*y+16*y^2-16*z-32*z^2=0
[3+4*x,1+4*y,1+4*z]: success [7,1,5],NONTRIVIAL  8+24*x+16*x^2+8*y+16*y^2-16*z-32*z^2=0 -> [2]
[1+4*x,3+4*y,1+4*z]: success [1,7,5],NONTRIVIAL  8+8*x+16*x^2+24*y+16*y^2-16*z-32*z^2=0 -> [3]
[3+4*x,3+4*y,1+4*z]: unknown 16+24*x+16*x^2+24*y+16*y^2-16*z-32*z^2=0 -> [4]
[1+4*x,1+4*y,3+4*z]: unknown -16+8*x+16*x^2+8*y+16*y^2-48*z-32*z^2=0 -> [5]
[3+4*x,1+4*y,3+4*z]: unknown -8+24*x+16*x^2+8*y+16*y^2-48*z-32*z^2=0 -> [6]
[1+4*x,3+4*y,3+4*z]: unknown -8+8*x+16*x^2+24*y+16*y^2-48*z-32*z^2=0 -> [7]
[3+4*x,3+4*y,3+4*z]: success [3,3,3],trivial(2) success [7,7,7],trivial(2)  24*x+16*x^2+24*y+16*y^2-48*z-32*z^2=0 -> [8]

expanding queue[2]: 8 + 24*x + 16*x^2 + 8*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2] *8
[3+8*x,1+8*y,1+8*z]: failure constant=8, vgcd=16
[7+8*x,1+8*y,1+8*z]: unknown 48+112*x+64*x^2+16*y+64*y^2-32*z-128*z^2=0 -> [9]
[3+8*x,5+8*y,1+8*z]: unknown 32+48*x+64*x^2+80*y+64*y^2-32*z-128*z^2=0 -> [10]
[7+8*x,5+8*y,1+8*z]: failure constant=72, vgcd=16
[3+8*x,1+8*y,5+8*z]: failure constant=-40, vgcd=16
[7+8*x,1+8*y,5+8*z]: success [7,1,5],NONTRIVIAL  112*x+64*x^2+16*y+64*y^2-160*z-128*z^2=0 -> [11]
[3+8*x,5+8*y,5+8*z]: unknown -16+48*x+64*x^2+80*y+64*y^2-160*z-128*z^2=0 -> [12]
[7+8*x,5+8*y,5+8*z]: failure constant=24, vgcd=16

expanding queue[3]: 8 + 8*x + 16*x^2 + 24*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2] *8
[1+8*x,3+8*y,1+8*z]: failure constant=8, vgcd=16
[5+8*x,3+8*y,1+8*z]: unknown 32+80*x+64*x^2+48*y+64*y^2-32*z-128*z^2=0 -> [13]
[1+8*x,7+8*y,1+8*z]: unknown 48+16*x+64*x^2+112*y+64*y^2-32*z-128*z^2=0 -> [14]
[5+8*x,7+8*y,1+8*z]: failure constant=72, vgcd=16
[1+8*x,3+8*y,5+8*z]: failure constant=-40, vgcd=16
[5+8*x,3+8*y,5+8*z]: unknown -16+80*x+64*x^2+48*y+64*y^2-160*z-128*z^2=0 -> [15]
[1+8*x,7+8*y,5+8*z]: success [1,7,5],NONTRIVIAL  16*x+64*x^2+112*y+64*y^2-160*z-128*z^2=0 -> [16]
[5+8*x,7+8*y,5+8*z]: failure constant=24, vgcd=16

expanding queue[4]: 16 + 24*x + 16*x^2 + 24*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2] *8
[3+8*x,3+8*y,1+8*z]: similiar to [4], affine map: {x=(2*x),y=(2*y),z=(2*z)}  16+48*x+64*x^2+48*y+64*y^2-32*z-128*z^2=0
[7+8*x,3+8*y,1+8*z]: failure constant=56, vgcd=16
[3+8*x,7+8*y,1+8*z]: failure constant=56, vgcd=16
[7+8*x,7+8*y,1+8*z]: unknown 96+112*x+64*x^2+112*y+64*y^2-32*z-128*z^2=0 -> [17]
[3+8*x,3+8*y,5+8*z]: unknown -32+48*x+64*x^2+48*y+64*y^2-160*z-128*z^2=0 -> [18]
[7+8*x,3+8*y,5+8*z]: failure constant=8, vgcd=16
[3+8*x,7+8*y,5+8*z]: failure constant=8, vgcd=16
[7+8*x,7+8*y,5+8*z]: unknown 48+112*x+64*x^2+112*y+64*y^2-160*z-128*z^2=0 -> [19]

expanding queue[5]:  - 16 + 8*x + 16*x^2 + 8*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[1+8*x,1+8*y,3+8*z]: similiar to [5], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -16+16*x+64*x^2+16*y+64*y^2-96*z-128*z^2=0
[5+8*x,1+8*y,3+8*z]: failure constant=8, vgcd=16
[1+8*x,5+8*y,3+8*z]: failure constant=8, vgcd=16
[5+8*x,5+8*y,3+8*z]: unknown 32+80*x+64*x^2+80*y+64*y^2-96*z-128*z^2=0 -> [20]
[1+8*x,1+8*y,7+8*z]: unknown -96+16*x+64*x^2+16*y+64*y^2-224*z-128*z^2=0 -> [21]
[5+8*x,1+8*y,7+8*z]: failure constant=-72, vgcd=16
[1+8*x,5+8*y,7+8*z]: failure constant=-72, vgcd=16
[5+8*x,5+8*y,7+8*z]: unknown -48+80*x+64*x^2+80*y+64*y^2-224*z-128*z^2=0 -> [22]

expanding queue[6]:  - 8 + 24*x + 16*x^2 + 8*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[3+8*x,1+8*y,3+8*z]: failure constant=-8, vgcd=16
[7+8*x,1+8*y,3+8*z]: unknown 32+112*x+64*x^2+16*y+64*y^2-96*z-128*z^2=0 -> [23]
[3+8*x,5+8*y,3+8*z]: unknown 16+48*x+64*x^2+80*y+64*y^2-96*z-128*z^2=0 -> [24]
[7+8*x,5+8*y,3+8*z]: failure constant=56, vgcd=16
[3+8*x,1+8*y,7+8*z]: failure constant=-88, vgcd=16
[7+8*x,1+8*y,7+8*z]: unknown -48+112*x+64*x^2+16*y+64*y^2-224*z-128*z^2=0 -> [25]
[3+8*x,5+8*y,7+8*z]: unknown -64+48*x+64*x^2+80*y+64*y^2-224*z-128*z^2=0 -> [26]
[7+8*x,5+8*y,7+8*z]: failure constant=-24, vgcd=16

expanding queue[7]:  - 8 + 8*x + 16*x^2 + 24*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[1+8*x,3+8*y,3+8*z]: failure constant=-8, vgcd=16
[5+8*x,3+8*y,3+8*z]: unknown 16+80*x+64*x^2+48*y+64*y^2-96*z-128*z^2=0 -> [27]
[1+8*x,7+8*y,3+8*z]: unknown 32+16*x+64*x^2+112*y+64*y^2-96*z-128*z^2=0 -> [28]
[5+8*x,7+8*y,3+8*z]: failure constant=56, vgcd=16
[1+8*x,3+8*y,7+8*z]: failure constant=-88, vgcd=16
[5+8*x,3+8*y,7+8*z]: unknown -64+80*x+64*x^2+48*y+64*y^2-224*z-128*z^2=0 -> [29]
[1+8*x,7+8*y,7+8*z]: unknown -48+16*x+64*x^2+112*y+64*y^2-224*z-128*z^2=0 -> [30]
[5+8*x,7+8*y,7+8*z]: failure constant=-24, vgcd=16

expanding queue[8]: 24*x + 16*x^2 + 24*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[3+8*x,3+8*y,3+8*z]: similiar to [8], affine map: {x=(2*x),y=(2*y),z=(2*z)}  48*x+64*x^2+48*y+64*y^2-96*z-128*z^2=0
[7+8*x,3+8*y,3+8*z]: failure constant=40, vgcd=16
[3+8*x,7+8*y,3+8*z]: failure constant=40, vgcd=16
[7+8*x,7+8*y,3+8*z]: unknown 80+112*x+64*x^2+112*y+64*y^2-96*z-128*z^2=0 -> [31]
[3+8*x,3+8*y,7+8*z]: unknown -80+48*x+64*x^2+48*y+64*y^2-224*z-128*z^2=0 -> [32]
[7+8*x,3+8*y,7+8*z]: failure constant=-40, vgcd=16
[3+8*x,7+8*y,7+8*z]: failure constant=-40, vgcd=16
[7+8*x,7+8*y,7+8*z]: success [7,7,7],trivial(2) success [15,15,15],trivial(2)  112*x+64*x^2+112*y+64*y^2-224*z-128*z^2=0 -> [33]

expanding queue[9]: 48 + 112*x + 64*x^2 + 16*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[7+16*x,1+16*y,1+16*z]: failure constant=48, vgcd=32
[15+16*x,1+16*y,1+16*z]: unknown 224+480*x+256*x^2+32*y+256*y^2-64*z-512*z^2=0 -> [34]
[7+16*x,9+16*y,1+16*z]: unknown 128+224*x+256*x^2+288*y+256*y^2-64*z-512*z^2=0 -> [35]
[15+16*x,9+16*y,1+16*z]: failure constant=304, vgcd=32
[7+16*x,1+16*y,9+16*z]: failure constant=-112, vgcd=32
[15+16*x,1+16*y,9+16*z]: success [31,17,25],NONTRIVIAL  64+480*x+256*x^2+32*y+256*y^2-576*z-512*z^2=0 -> [36]
[7+16*x,9+16*y,9+16*z]: unknown -32+224*x+256*x^2+288*y+256*y^2-576*z-512*z^2=0 -> [37]
[15+16*x,9+16*y,9+16*z]: failure constant=144, vgcd=32

expanding queue[10]: 32 + 48*x + 64*x^2 + 80*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[3+16*x,5+16*y,1+16*z]: similiar to [10], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32+96*x+256*x^2+160*y+256*y^2-64*z-512*z^2=0
[11+16*x,5+16*y,1+16*z]: failure constant=144, vgcd=32
[3+16*x,13+16*y,1+16*z]: failure constant=176, vgcd=32
[11+16*x,13+16*y,1+16*z]: unknown 288+352*x+256*x^2+416*y+256*y^2-64*z-512*z^2=0 -> [38]
[3+16*x,5+16*y,9+16*z]: unknown -128+96*x+256*x^2+160*y+256*y^2-576*z-512*z^2=0 -> [39]
[11+16*x,5+16*y,9+16*z]: failure constant=-16, vgcd=32
[3+16*x,13+16*y,9+16*z]: failure constant=16, vgcd=32
[11+16*x,13+16*y,9+16*z]: unknown 128+352*x+256*x^2+416*y+256*y^2-576*z-512*z^2=0 -> [40]

expanding queue[11]: 112*x + 64*x^2 + 16*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[7+16*x,1+16*y,5+16*z]: similiar to [11], affine map: {x=(2*x),y=(2*y),z=(2*z)}  224*x+256*x^2+32*y+256*y^2-320*z-512*z^2=0
[15+16*x,1+16*y,5+16*z]: failure constant=176, vgcd=32
[7+16*x,9+16*y,5+16*z]: failure constant=80, vgcd=32
[15+16*x,9+16*y,5+16*z]: unknown 256+480*x+256*x^2+288*y+256*y^2-320*z-512*z^2=0 -> [41]
[7+16*x,1+16*y,13+16*z]: success [7,17,13],NONTRIVIAL  -288+224*x+256*x^2+32*y+256*y^2-832*z-512*z^2=0 -> [42]
[15+16*x,1+16*y,13+16*z]: failure constant=-112, vgcd=32
[7+16*x,9+16*y,13+16*z]: failure constant=-208, vgcd=32
[15+16*x,9+16*y,13+16*z]: unknown -32+480*x+256*x^2+288*y+256*y^2-832*z-512*z^2=0 -> [43]

expanding queue[12]:  - 16 + 48*x + 64*x^2 + 80*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[3+16*x,5+16*y,5+16*z]: failure constant=-16, vgcd=32
[11+16*x,5+16*y,5+16*z]: unknown 96+352*x+256*x^2+160*y+256*y^2-320*z-512*z^2=0 -> [44]
[3+16*x,13+16*y,5+16*z]: unknown 128+96*x+256*x^2+416*y+256*y^2-320*z-512*z^2=0 -> [45]
[11+16*x,13+16*y,5+16*z]: failure constant=240, vgcd=32
[3+16*x,5+16*y,13+16*z]: failure constant=-304, vgcd=32
[11+16*x,5+16*y,13+16*z]: unknown -192+352*x+256*x^2+160*y+256*y^2-832*z-512*z^2=0 -> [46]
[3+16*x,13+16*y,13+16*z]: unknown -160+96*x+256*x^2+416*y+256*y^2-832*z-512*z^2=0 -> [47]
[11+16*x,13+16*y,13+16*z]: failure constant=-48, vgcd=32

expanding queue[13]: 32 + 80*x + 64*x^2 + 48*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[5+16*x,3+16*y,1+16*z]: similiar to [13], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32+160*x+256*x^2+96*y+256*y^2-64*z-512*z^2=0
[13+16*x,3+16*y,1+16*z]: failure constant=176, vgcd=32
[5+16*x,11+16*y,1+16*z]: failure constant=144, vgcd=32
[13+16*x,11+16*y,1+16*z]: unknown 288+416*x+256*x^2+352*y+256*y^2-64*z-512*z^2=0 -> [48]
[5+16*x,3+16*y,9+16*z]: unknown -128+160*x+256*x^2+96*y+256*y^2-576*z-512*z^2=0 -> [49]
[13+16*x,3+16*y,9+16*z]: failure constant=16, vgcd=32
[5+16*x,11+16*y,9+16*z]: failure constant=-16, vgcd=32
[13+16*x,11+16*y,9+16*z]: unknown 128+416*x+256*x^2+352*y+256*y^2-576*z-512*z^2=0 -> [50]

expanding queue[14]: 48 + 16*x + 64*x^2 + 112*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[1+16*x,7+16*y,1+16*z]: failure constant=48, vgcd=32
[9+16*x,7+16*y,1+16*z]: unknown 128+288*x+256*x^2+224*y+256*y^2-64*z-512*z^2=0 -> [51]
[1+16*x,15+16*y,1+16*z]: unknown 224+32*x+256*x^2+480*y+256*y^2-64*z-512*z^2=0 -> [52]
[9+16*x,15+16*y,1+16*z]: failure constant=304, vgcd=32
[1+16*x,7+16*y,9+16*z]: failure constant=-112, vgcd=32
[9+16*x,7+16*y,9+16*z]: unknown -32+288*x+256*x^2+224*y+256*y^2-576*z-512*z^2=0 -> [53]
[1+16*x,15+16*y,9+16*z]: success [17,31,25],NONTRIVIAL  64+32*x+256*x^2+480*y+256*y^2-576*z-512*z^2=0 -> [54]
[9+16*x,15+16*y,9+16*z]: failure constant=144, vgcd=32

expanding queue[15]:  - 16 + 80*x + 64*x^2 + 48*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[5+16*x,3+16*y,5+16*z]: failure constant=-16, vgcd=32
[13+16*x,3+16*y,5+16*z]: unknown 128+416*x+256*x^2+96*y+256*y^2-320*z-512*z^2=0 -> [55]
[5+16*x,11+16*y,5+16*z]: unknown 96+160*x+256*x^2+352*y+256*y^2-320*z-512*z^2=0 -> [56]
[13+16*x,11+16*y,5+16*z]: failure constant=240, vgcd=32
[5+16*x,3+16*y,13+16*z]: failure constant=-304, vgcd=32
[13+16*x,3+16*y,13+16*z]: unknown -160+416*x+256*x^2+96*y+256*y^2-832*z-512*z^2=0 -> [57]
[5+16*x,11+16*y,13+16*z]: unknown -192+160*x+256*x^2+352*y+256*y^2-832*z-512*z^2=0 -> [58]
[13+16*x,11+16*y,13+16*z]: failure constant=-48, vgcd=32

expanding queue[16]: 16*x + 64*x^2 + 112*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[1+16*x,7+16*y,5+16*z]: similiar to [16], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32*x+256*x^2+224*y+256*y^2-320*z-512*z^2=0
[9+16*x,7+16*y,5+16*z]: failure constant=80, vgcd=32
[1+16*x,15+16*y,5+16*z]: failure constant=176, vgcd=32
[9+16*x,15+16*y,5+16*z]: unknown 256+288*x+256*x^2+480*y+256*y^2-320*z-512*z^2=0 -> [59]
[1+16*x,7+16*y,13+16*z]: success [17,7,13],NONTRIVIAL  -288+32*x+256*x^2+224*y+256*y^2-832*z-512*z^2=0 -> [60]
[9+16*x,7+16*y,13+16*z]: failure constant=-208, vgcd=32
[1+16*x,15+16*y,13+16*z]: failure constant=-112, vgcd=32
[9+16*x,15+16*y,13+16*z]: unknown -32+288*x+256*x^2+480*y+256*y^2-832*z-512*z^2=0 -> [61]

expanding queue[17]: 96 + 112*x + 64*x^2 + 112*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[7+16*x,7+16*y,1+16*z]: similiar to [17], affine map: {x=(2*x),y=(2*y),z=(2*z)}  96+224*x+256*x^2+224*y+256*y^2-64*z-512*z^2=0
[15+16*x,7+16*y,1+16*z]: failure constant=272, vgcd=32
[7+16*x,15+16*y,1+16*z]: failure constant=272, vgcd=32
[15+16*x,15+16*y,1+16*z]: unknown 448+480*x+256*x^2+480*y+256*y^2-64*z-512*z^2=0 -> [62]
[7+16*x,7+16*y,9+16*z]: unknown -64+224*x+256*x^2+224*y+256*y^2-576*z-512*z^2=0 -> [63]
[15+16*x,7+16*y,9+16*z]: failure constant=112, vgcd=32
[7+16*x,15+16*y,9+16*z]: failure constant=112, vgcd=32
[15+16*x,15+16*y,9+16*z]: unknown 288+480*x+256*x^2+480*y+256*y^2-576*z-512*z^2=0 -> [64]

expanding queue[18]:  - 32 + 48*x + 64*x^2 + 48*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[3+16*x,3+16*y,5+16*z]: similiar to [18], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -32+96*x+256*x^2+96*y+256*y^2-320*z-512*z^2=0
[11+16*x,3+16*y,5+16*z]: failure constant=80, vgcd=32
[3+16*x,11+16*y,5+16*z]: failure constant=80, vgcd=32
[11+16*x,11+16*y,5+16*z]: unknown 192+352*x+256*x^2+352*y+256*y^2-320*z-512*z^2=0 -> [65]
[3+16*x,3+16*y,13+16*z]: unknown -320+96*x+256*x^2+96*y+256*y^2-832*z-512*z^2=0 -> [66]
[11+16*x,3+16*y,13+16*z]: failure constant=-208, vgcd=32
[3+16*x,11+16*y,13+16*z]: failure constant=-208, vgcd=32
[11+16*x,11+16*y,13+16*z]: unknown -96+352*x+256*x^2+352*y+256*y^2-832*z-512*z^2=0 -> [67]

expanding queue[19]: 48 + 112*x + 64*x^2 + 112*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[7+16*x,7+16*y,5+16*z]: failure constant=48, vgcd=32
[15+16*x,7+16*y,5+16*z]: unknown 224+480*x+256*x^2+224*y+256*y^2-320*z-512*z^2=0 -> [68]
[7+16*x,15+16*y,5+16*z]: unknown 224+224*x+256*x^2+480*y+256*y^2-320*z-512*z^2=0 -> [69]
[15+16*x,15+16*y,5+16*z]: failure constant=400, vgcd=32
[7+16*x,7+16*y,13+16*z]: failure constant=-240, vgcd=32
[15+16*x,7+16*y,13+16*z]: unknown -64+480*x+256*x^2+224*y+256*y^2-832*z-512*z^2=0 -> [70]
[7+16*x,15+16*y,13+16*z]: unknown -64+224*x+256*x^2+480*y+256*y^2-832*z-512*z^2=0 -> [71]
[15+16*x,15+16*y,13+16*z]: failure constant=112, vgcd=32

expanding queue[20]: 32 + 80*x + 64*x^2 + 80*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[5+16*x,5+16*y,3+16*z]: similiar to [20], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32+160*x+256*x^2+160*y+256*y^2-192*z-512*z^2=0
[13+16*x,5+16*y,3+16*z]: failure constant=176, vgcd=32
[5+16*x,13+16*y,3+16*z]: failure constant=176, vgcd=32
[13+16*x,13+16*y,3+16*z]: unknown 320+416*x+256*x^2+416*y+256*y^2-192*z-512*z^2=0 -> [72]
[5+16*x,5+16*y,11+16*z]: unknown -192+160*x+256*x^2+160*y+256*y^2-704*z-512*z^2=0 -> [73]
[13+16*x,5+16*y,11+16*z]: failure constant=-48, vgcd=32
[5+16*x,13+16*y,11+16*z]: failure constant=-48, vgcd=32
[13+16*x,13+16*y,11+16*z]: unknown 96+416*x+256*x^2+416*y+256*y^2-704*z-512*z^2=0 -> [74]

expanding queue[21]:  - 96 + 16*x + 64*x^2 + 16*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[1+16*x,1+16*y,7+16*z]: similiar to [21], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -96+32*x+256*x^2+32*y+256*y^2-448*z-512*z^2=0
[9+16*x,1+16*y,7+16*z]: failure constant=-16, vgcd=32
[1+16*x,9+16*y,7+16*z]: failure constant=-16, vgcd=32
[9+16*x,9+16*y,7+16*z]: unknown 64+288*x+256*x^2+288*y+256*y^2-448*z-512*z^2=0 -> [75]
[1+16*x,1+16*y,15+16*z]: unknown -448+32*x+256*x^2+32*y+256*y^2-960*z-512*z^2=0 -> [76]
[9+16*x,1+16*y,15+16*z]: failure constant=-368, vgcd=32
[1+16*x,9+16*y,15+16*z]: failure constant=-368, vgcd=32
[9+16*x,9+16*y,15+16*z]: unknown -288+288*x+256*x^2+288*y+256*y^2-960*z-512*z^2=0 -> [77]

expanding queue[22]:  - 48 + 80*x + 64*x^2 + 80*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[5+16*x,5+16*y,7+16*z]: failure constant=-48, vgcd=32
[13+16*x,5+16*y,7+16*z]: unknown 96+416*x+256*x^2+160*y+256*y^2-448*z-512*z^2=0 -> [78]
[5+16*x,13+16*y,7+16*z]: unknown 96+160*x+256*x^2+416*y+256*y^2-448*z-512*z^2=0 -> [79]
[13+16*x,13+16*y,7+16*z]: failure constant=240, vgcd=32
[5+16*x,5+16*y,15+16*z]: failure constant=-400, vgcd=32
[13+16*x,5+16*y,15+16*z]: unknown -256+416*x+256*x^2+160*y+256*y^2-960*z-512*z^2=0 -> [80]
[5+16*x,13+16*y,15+16*z]: unknown -256+160*x+256*x^2+416*y+256*y^2-960*z-512*z^2=0 -> [81]
[13+16*x,13+16*y,15+16*z]: failure constant=-112, vgcd=32

expanding queue[23]: 32 + 112*x + 64*x^2 + 16*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[7+16*x,1+16*y,3+16*z]: similiar to [23], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32+224*x+256*x^2+32*y+256*y^2-192*z-512*z^2=0
[15+16*x,1+16*y,3+16*z]: failure constant=208, vgcd=32
[7+16*x,9+16*y,3+16*z]: failure constant=112, vgcd=32
[15+16*x,9+16*y,3+16*z]: unknown 288+480*x+256*x^2+288*y+256*y^2-192*z-512*z^2=0 -> [82]
[7+16*x,1+16*y,11+16*z]: unknown -192+224*x+256*x^2+32*y+256*y^2-704*z-512*z^2=0 -> [83]
[15+16*x,1+16*y,11+16*z]: failure constant=-16, vgcd=32
[7+16*x,9+16*y,11+16*z]: failure constant=-112, vgcd=32
[15+16*x,9+16*y,11+16*z]: unknown 64+480*x+256*x^2+288*y+256*y^2-704*z-512*z^2=0 -> [84]

expanding queue[24]: 16 + 48*x + 64*x^2 + 80*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[3+16*x,5+16*y,3+16*z]: failure constant=16, vgcd=32
[11+16*x,5+16*y,3+16*z]: unknown 128+352*x+256*x^2+160*y+256*y^2-192*z-512*z^2=0 -> [85]
[3+16*x,13+16*y,3+16*z]: unknown 160+96*x+256*x^2+416*y+256*y^2-192*z-512*z^2=0 -> [86]
[11+16*x,13+16*y,3+16*z]: failure constant=272, vgcd=32
[3+16*x,5+16*y,11+16*z]: failure constant=-208, vgcd=32
[11+16*x,5+16*y,11+16*z]: unknown -96+352*x+256*x^2+160*y+256*y^2-704*z-512*z^2=0 -> [87]
[3+16*x,13+16*y,11+16*z]: unknown -64+96*x+256*x^2+416*y+256*y^2-704*z-512*z^2=0 -> [88]
[11+16*x,13+16*y,11+16*z]: failure constant=48, vgcd=32

expanding queue[25]:  - 48 + 112*x + 64*x^2 + 16*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[7+16*x,1+16*y,7+16*z]: failure constant=-48, vgcd=32
[15+16*x,1+16*y,7+16*z]: unknown 128+480*x+256*x^2+32*y+256*y^2-448*z-512*z^2=0 -> [89]
[7+16*x,9+16*y,7+16*z]: unknown 32+224*x+256*x^2+288*y+256*y^2-448*z-512*z^2=0 -> [90]
[15+16*x,9+16*y,7+16*z]: failure constant=208, vgcd=32
[7+16*x,1+16*y,15+16*z]: failure constant=-400, vgcd=32
[15+16*x,1+16*y,15+16*z]: unknown -224+480*x+256*x^2+32*y+256*y^2-960*z-512*z^2=0 -> [91]
[7+16*x,9+16*y,15+16*z]: unknown -320+224*x+256*x^2+288*y+256*y^2-960*z-512*z^2=0 -> [92]
[15+16*x,9+16*y,15+16*z]: failure constant=-144, vgcd=32

expanding queue[26]:  - 64 + 48*x + 64*x^2 + 80*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[3+16*x,5+16*y,7+16*z]: similiar to [26], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -64+96*x+256*x^2+160*y+256*y^2-448*z-512*z^2=0
[11+16*x,5+16*y,7+16*z]: failure constant=48, vgcd=32
[3+16*x,13+16*y,7+16*z]: failure constant=80, vgcd=32
[11+16*x,13+16*y,7+16*z]: unknown 192+352*x+256*x^2+416*y+256*y^2-448*z-512*z^2=0 -> [93]
[3+16*x,5+16*y,15+16*z]: success [3,21,15],NONTRIVIAL  -416+96*x+256*x^2+160*y+256*y^2-960*z-512*z^2=0 -> [94]
[11+16*x,5+16*y,15+16*z]: failure constant=-304, vgcd=32
[3+16*x,13+16*y,15+16*z]: failure constant=-272, vgcd=32
[11+16*x,13+16*y,15+16*z]: unknown -160+352*x+256*x^2+416*y+256*y^2-960*z-512*z^2=0 -> [95]

expanding queue[27]: 16 + 80*x + 64*x^2 + 48*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[5+16*x,3+16*y,3+16*z]: failure constant=16, vgcd=32
[13+16*x,3+16*y,3+16*z]: unknown 160+416*x+256*x^2+96*y+256*y^2-192*z-512*z^2=0 -> [96]
[5+16*x,11+16*y,3+16*z]: unknown 128+160*x+256*x^2+352*y+256*y^2-192*z-512*z^2=0 -> [97]
[13+16*x,11+16*y,3+16*z]: failure constant=272, vgcd=32
[5+16*x,3+16*y,11+16*z]: failure constant=-208, vgcd=32
[13+16*x,3+16*y,11+16*z]: unknown -64+416*x+256*x^2+96*y+256*y^2-704*z-512*z^2=0 -> [98]
[5+16*x,11+16*y,11+16*z]: unknown -96+160*x+256*x^2+352*y+256*y^2-704*z-512*z^2=0 -> [99]
[13+16*x,11+16*y,11+16*z]: failure constant=48, vgcd=32

expanding queue[28]: 32 + 16*x + 64*x^2 + 112*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[1+16*x,7+16*y,3+16*z]: similiar to [28], affine map: {x=(2*x),y=(2*y),z=(2*z)}  32+32*x+256*x^2+224*y+256*y^2-192*z-512*z^2=0
[9+16*x,7+16*y,3+16*z]: failure constant=112, vgcd=32
[1+16*x,15+16*y,3+16*z]: failure constant=208, vgcd=32
[9+16*x,15+16*y,3+16*z]: unknown 288+288*x+256*x^2+480*y+256*y^2-192*z-512*z^2=0 -> [100]
[1+16*x,7+16*y,11+16*z]: unknown -192+32*x+256*x^2+224*y+256*y^2-704*z-512*z^2=0 -> [101]
[9+16*x,7+16*y,11+16*z]: failure constant=-112, vgcd=32
[1+16*x,15+16*y,11+16*z]: failure constant=-16, vgcd=32
[9+16*x,15+16*y,11+16*z]: unknown 64+288*x+256*x^2+480*y+256*y^2-704*z-512*z^2=0 -> [102]

expanding queue[29]:  - 64 + 80*x + 64*x^2 + 48*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[5+16*x,3+16*y,7+16*z]: similiar to [29], affine map: {x=(2*x),y=(2*y),z=(2*z)}  -64+160*x+256*x^2+96*y+256*y^2-448*z-512*z^2=0
[13+16*x,3+16*y,7+16*z]: failure constant=80, vgcd=32
[5+16*x,11+16*y,7+16*z]: failure constant=48, vgcd=32
[13+16*x,11+16*y,7+16*z]: unknown 192+416*x+256*x^2+352*y+256*y^2-448*z-512*z^2=0 -> [103]
[5+16*x,3+16*y,15+16*z]: success [21,3,15],NONTRIVIAL  -416+160*x+256*x^2+96*y+256*y^2-960*z-512*z^2=0 -> [104]
[13+16*x,3+16*y,15+16*z]: failure constant=-272, vgcd=32
[5+16*x,11+16*y,15+16*z]: failure constant=-304, vgcd=32
[13+16*x,11+16*y,15+16*z]: unknown -160+416*x+256*x^2+352*y+256*y^2-960*z-512*z^2=0 -> [105]

expanding queue[30]:  - 48 + 16*x + 64*x^2 + 112*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[1+16*x,7+16*y,7+16*z]: failure constant=-48, vgcd=32
[9+16*x,7+16*y,7+16*z]: unknown 32+288*x+256*x^2+224*y+256*y^2-448*z-512*z^2=0 -> [106]
[1+16*x,15+16*y,7+16*z]: unknown 128+32*x+256*x^2+480*y+256*y^2-448*z-512*z^2=0 -> [107]
[9+16*x,15+16*y,7+16*z]: failure constant=208, vgcd=32
[1+16*x,7+16*y,15+16*z]: failure constant=-400, vgcd=32
[9+16*x,7+16*y,15+16*z]: unknown -320+288*x+256*x^2+224*y+256*y^2-960*z-512*z^2=0 -> [108]
[1+16*x,15+16*y,15+16*z]: unknown -224+32*x+256*x^2+480*y+256*y^2-960*z-512*z^2=0 -> [109]
[9+16*x,15+16*y,15+16*z]: failure constant=-144, vgcd=32

expanding queue[31]: 80 + 112*x + 64*x^2 + 112*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[7+16*x,7+16*y,3+16*z]: failure constant=80, vgcd=32
[15+16*x,7+16*y,3+16*z]: unknown 256+480*x+256*x^2+224*y+256*y^2-192*z-512*z^2=0 -> [110]
[7+16*x,15+16*y,3+16*z]: unknown 256+224*x+256*x^2+480*y+256*y^2-192*z-512*z^2=0 -> [111]
[15+16*x,15+16*y,3+16*z]: failure constant=432, vgcd=32
[7+16*x,7+16*y,11+16*z]: failure constant=-144, vgcd=32
[15+16*x,7+16*y,11+16*z]: unknown 32+480*x+256*x^2+224*y+256*y^2-704*z-512*z^2=0 -> [112]
[7+16*x,15+16*y,11+16*z]: unknown 32+224*x+256*x^2+480*y+256*y^2-704*z-512*z^2=0 -> [113]
[15+16*x,15+16*y,11+16*z]: failure constant=208, vgcd=32

expanding queue[32]:  - 80 + 48*x + 64*x^2 + 48*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[3+16*x,3+16*y,7+16*z]: failure constant=-80, vgcd=32
[11+16*x,3+16*y,7+16*z]: unknown 32+352*x+256*x^2+96*y+256*y^2-448*z-512*z^2=0 -> [114]
[3+16*x,11+16*y,7+16*z]: unknown 32+96*x+256*x^2+352*y+256*y^2-448*z-512*z^2=0 -> [115]
[11+16*x,11+16*y,7+16*z]: failure constant=144, vgcd=32
[3+16*x,3+16*y,15+16*z]: failure constant=-432, vgcd=32
[11+16*x,3+16*y,15+16*z]: unknown -320+352*x+256*x^2+96*y+256*y^2-960*z-512*z^2=0 -> [116]
[3+16*x,11+16*y,15+16*z]: unknown -320+96*x+256*x^2+352*y+256*y^2-960*z-512*z^2=0 -> [117]
[11+16*x,11+16*y,15+16*z]: failure constant=-208, vgcd=32

expanding queue[33]: 112*x + 64*x^2 + 112*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[7+16*x,7+16*y,7+16*z]: similiar to [33], affine map: {x=(2*x),y=(2*y),z=(2*z)}  224*x+256*x^2+224*y+256*y^2-448*z-512*z^2=0
[15+16*x,7+16*y,7+16*z]: failure constant=176, vgcd=32
[7+16*x,15+16*y,7+16*z]: failure constant=176, vgcd=32
[15+16*x,15+16*y,7+16*z]: unknown 352+480*x+256*x^2+480*y+256*y^2-448*z-512*z^2=0 -> [118]
[7+16*x,7+16*y,15+16*z]: unknown -352+224*x+256*x^2+224*y+256*y^2-960*z-512*z^2=0 -> [119]
[15+16*x,7+16*y,15+16*z]: failure constant=-176, vgcd=32
[7+16*x,15+16*y,15+16*z]: failure constant=-176, vgcd=32
[15+16*x,15+16*y,15+16*z]: success [15,15,15],trivial(2) success [31,31,31],trivial(2)  480*x+256*x^2+480*y+256*y^2-960*z-512*z^2=0 -> [120]
Maximum level 3 reached, queue size = 121
