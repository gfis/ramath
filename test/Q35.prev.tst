Expanding for base=2, transposables={{x,y},{z}}, reasons+features=base,transpose,same,similiar,grow

expanding queue[0]: 2*x + x^2 + 2*y + y^2 - 4*z - 2*z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: success [0,0,0],trivial(3) success [2,2,2],trivial(2)  4*x+4*x^2+4*y+4*y^2-8*z-8*z^2=0 -> [1]
[1+2*x,0+2*y,0+2*z]: failure constant=3, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=3, vgcd=4
[1+2*x,1+2*y,0+2*z]: failure constant=6, vgcd=4
[0+2*x,0+2*y,1+2*z]: failure constant=-6, vgcd=4
[1+2*x,0+2*y,1+2*z]: failure constant=-3, vgcd=4
[0+2*x,1+2*y,1+2*z]: failure constant=-3, vgcd=4
[1+2*x,1+2*y,1+2*z]: similiar to [0], same  8*x+4*x^2+8*y+4*y^2-16*z-8*z^2=0

expanding queue[1]: 4*x + 4*x^2 + 4*y + 4*y^2 - 8*z - 8*z^2 = 0 modulo [2,2,2] *4
[0+4*x,0+4*y,0+4*z]: success [0,0,0],trivial(3) success [4,4,4],trivial(2)  8*x+16*x^2+8*y+16*y^2-16*z-32*z^2=0 -> [2]
[2+4*x,0+4*y,0+4*z]: success [6,0,4],trivial(1)  8+24*x+16*x^2+8*y+16*y^2-16*z-32*z^2=0 -> [3]
[0+4*x,2+4*y,0+4*z]: success [0,6,4],trivial(1)  8+8*x+16*x^2+24*y+16*y^2-16*z-32*z^2=0 -> [4]
[2+4*x,2+4*y,0+4*z]: unknown 16+24*x+16*x^2+24*y+16*y^2-16*z-32*z^2=0 -> [5]
[0+4*x,0+4*y,2+4*z]: unknown -16+8*x+16*x^2+8*y+16*y^2-48*z-32*z^2=0 -> [6]
[2+4*x,0+4*y,2+4*z]: unknown -8+24*x+16*x^2+8*y+16*y^2-48*z-32*z^2=0 -> [7]
[0+4*x,2+4*y,2+4*z]: unknown -8+8*x+16*x^2+24*y+16*y^2-48*z-32*z^2=0 -> [8]
[2+4*x,2+4*y,2+4*z]: success [2,2,2],trivial(2) success [6,6,6],trivial(2)  24*x+16*x^2+24*y+16*y^2-48*z-32*z^2=0 -> [9]

expanding queue[2]: 8*x + 16*x^2 + 8*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2] *8
[0+8*x,0+8*y,0+8*z]: success [0,0,0],trivial(3) success [8,8,8],trivial(2)  16*x+64*x^2+16*y+64*y^2-32*z-128*z^2=0 -> [10]
[4+8*x,0+8*y,0+8*z]: failure constant=24, vgcd=16
[0+8*x,4+8*y,0+8*z]: failure constant=24, vgcd=16
[4+8*x,4+8*y,0+8*z]: unknown 48+80*x+64*x^2+80*y+64*y^2-32*z-128*z^2=0 -> [11]
[0+8*x,0+8*y,4+8*z]: unknown -48+16*x+64*x^2+16*y+64*y^2-160*z-128*z^2=0 -> [12]
[4+8*x,0+8*y,4+8*z]: failure constant=-24, vgcd=16
[0+8*x,4+8*y,4+8*z]: failure constant=-24, vgcd=16
[4+8*x,4+8*y,4+8*z]: success [4,4,4],trivial(2) success [12,12,12],trivial(2)  80*x+64*x^2+80*y+64*y^2-160*z-128*z^2=0 -> [13]

expanding queue[3]: 8 + 24*x + 16*x^2 + 8*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2] *8
[2+8*x,0+8*y,0+8*z]: failure constant=8, vgcd=16
[6+8*x,0+8*y,0+8*z]: unknown 48+112*x+64*x^2+16*y+64*y^2-32*z-128*z^2=0 -> [14]
[2+8*x,4+8*y,0+8*z]: unknown 32+48*x+64*x^2+80*y+64*y^2-32*z-128*z^2=0 -> [15]
[6+8*x,4+8*y,0+8*z]: failure constant=72, vgcd=16
[2+8*x,0+8*y,4+8*z]: failure constant=-40, vgcd=16
[6+8*x,0+8*y,4+8*z]: success [6,0,4],trivial(1)  112*x+64*x^2+16*y+64*y^2-160*z-128*z^2=0 -> [16]
[2+8*x,4+8*y,4+8*z]: unknown -16+48*x+64*x^2+80*y+64*y^2-160*z-128*z^2=0 -> [17]
[6+8*x,4+8*y,4+8*z]: failure constant=24, vgcd=16

expanding queue[4]: 8 + 8*x + 16*x^2 + 24*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2] *8
[0+8*x,2+8*y,0+8*z]: failure constant=8, vgcd=16
[4+8*x,2+8*y,0+8*z]: unknown 32+80*x+64*x^2+48*y+64*y^2-32*z-128*z^2=0 -> [18]
[0+8*x,6+8*y,0+8*z]: unknown 48+16*x+64*x^2+112*y+64*y^2-32*z-128*z^2=0 -> [19]
[4+8*x,6+8*y,0+8*z]: failure constant=72, vgcd=16
[0+8*x,2+8*y,4+8*z]: failure constant=-40, vgcd=16
[4+8*x,2+8*y,4+8*z]: unknown -16+80*x+64*x^2+48*y+64*y^2-160*z-128*z^2=0 -> [20]
[0+8*x,6+8*y,4+8*z]: success [0,6,4],trivial(1)  16*x+64*x^2+112*y+64*y^2-160*z-128*z^2=0 -> [21]
[4+8*x,6+8*y,4+8*z]: failure constant=24, vgcd=16

expanding queue[5]: 16 + 24*x + 16*x^2 + 24*y + 16*y^2 - 16*z - 32*z^2 = 0 modulo [2,2,2] *8
[2+8*x,2+8*y,0+8*z]: unknown 16+48*x+64*x^2+48*y+64*y^2-32*z-128*z^2=0 -> [22]
[6+8*x,2+8*y,0+8*z]: failure constant=56, vgcd=16
[2+8*x,6+8*y,0+8*z]: failure constant=56, vgcd=16
[6+8*x,6+8*y,0+8*z]: unknown 96+112*x+64*x^2+112*y+64*y^2-32*z-128*z^2=0 -> [23]
[2+8*x,2+8*y,4+8*z]: unknown -32+48*x+64*x^2+48*y+64*y^2-160*z-128*z^2=0 -> [24]
[6+8*x,2+8*y,4+8*z]: failure constant=8, vgcd=16
[2+8*x,6+8*y,4+8*z]: failure constant=8, vgcd=16
[6+8*x,6+8*y,4+8*z]: unknown 48+112*x+64*x^2+112*y+64*y^2-160*z-128*z^2=0 -> [25]

expanding queue[6]:  - 16 + 8*x + 16*x^2 + 8*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[0+8*x,0+8*y,2+8*z]: unknown -16+16*x+64*x^2+16*y+64*y^2-96*z-128*z^2=0 -> [26]
[4+8*x,0+8*y,2+8*z]: failure constant=8, vgcd=16
[0+8*x,4+8*y,2+8*z]: failure constant=8, vgcd=16
[4+8*x,4+8*y,2+8*z]: unknown 32+80*x+64*x^2+80*y+64*y^2-96*z-128*z^2=0 -> [27]
[0+8*x,0+8*y,6+8*z]: unknown -96+16*x+64*x^2+16*y+64*y^2-224*z-128*z^2=0 -> [28]
[4+8*x,0+8*y,6+8*z]: failure constant=-72, vgcd=16
[0+8*x,4+8*y,6+8*z]: failure constant=-72, vgcd=16
[4+8*x,4+8*y,6+8*z]: unknown -48+80*x+64*x^2+80*y+64*y^2-224*z-128*z^2=0 -> [29]

expanding queue[7]:  - 8 + 24*x + 16*x^2 + 8*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[2+8*x,0+8*y,2+8*z]: failure constant=-8, vgcd=16
[6+8*x,0+8*y,2+8*z]: unknown 32+112*x+64*x^2+16*y+64*y^2-96*z-128*z^2=0 -> [30]
[2+8*x,4+8*y,2+8*z]: unknown 16+48*x+64*x^2+80*y+64*y^2-96*z-128*z^2=0 -> [31]
[6+8*x,4+8*y,2+8*z]: failure constant=56, vgcd=16
[2+8*x,0+8*y,6+8*z]: failure constant=-88, vgcd=16
[6+8*x,0+8*y,6+8*z]: unknown -48+112*x+64*x^2+16*y+64*y^2-224*z-128*z^2=0 -> [32]
[2+8*x,4+8*y,6+8*z]: unknown -64+48*x+64*x^2+80*y+64*y^2-224*z-128*z^2=0 -> [33]
[6+8*x,4+8*y,6+8*z]: failure constant=-24, vgcd=16

expanding queue[8]:  - 8 + 8*x + 16*x^2 + 24*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[0+8*x,2+8*y,2+8*z]: failure constant=-8, vgcd=16
[4+8*x,2+8*y,2+8*z]: unknown 16+80*x+64*x^2+48*y+64*y^2-96*z-128*z^2=0 -> [34]
[0+8*x,6+8*y,2+8*z]: unknown 32+16*x+64*x^2+112*y+64*y^2-96*z-128*z^2=0 -> [35]
[4+8*x,6+8*y,2+8*z]: failure constant=56, vgcd=16
[0+8*x,2+8*y,6+8*z]: failure constant=-88, vgcd=16
[4+8*x,2+8*y,6+8*z]: unknown -64+80*x+64*x^2+48*y+64*y^2-224*z-128*z^2=0 -> [36]
[0+8*x,6+8*y,6+8*z]: unknown -48+16*x+64*x^2+112*y+64*y^2-224*z-128*z^2=0 -> [37]
[4+8*x,6+8*y,6+8*z]: failure constant=-24, vgcd=16

expanding queue[9]: 24*x + 16*x^2 + 24*y + 16*y^2 - 48*z - 32*z^2 = 0 modulo [2,2,2] *8
[2+8*x,2+8*y,2+8*z]: success [2,2,2],trivial(2) success [10,10,10],trivial(2)  48*x+64*x^2+48*y+64*y^2-96*z-128*z^2=0 -> [38]
[6+8*x,2+8*y,2+8*z]: failure constant=40, vgcd=16
[2+8*x,6+8*y,2+8*z]: failure constant=40, vgcd=16
[6+8*x,6+8*y,2+8*z]: unknown 80+112*x+64*x^2+112*y+64*y^2-96*z-128*z^2=0 -> [39]
[2+8*x,2+8*y,6+8*z]: unknown -80+48*x+64*x^2+48*y+64*y^2-224*z-128*z^2=0 -> [40]
[6+8*x,2+8*y,6+8*z]: failure constant=-40, vgcd=16
[2+8*x,6+8*y,6+8*z]: failure constant=-40, vgcd=16
[6+8*x,6+8*y,6+8*z]: success [6,6,6],trivial(2) success [14,14,14],trivial(2)  112*x+64*x^2+112*y+64*y^2-224*z-128*z^2=0 -> [41]

expanding queue[10]: 16*x + 64*x^2 + 16*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[0+16*x,0+16*y,0+16*z]: success [0,0,0],trivial(3) success [16,16,16],trivial(2)  32*x+256*x^2+32*y+256*y^2-64*z-512*z^2=0 -> [42]
[8+16*x,0+16*y,0+16*z]: failure constant=80, vgcd=32
[0+16*x,8+16*y,0+16*z]: failure constant=80, vgcd=32
[8+16*x,8+16*y,0+16*z]: unknown 160+288*x+256*x^2+288*y+256*y^2-64*z-512*z^2=0 -> [43]
[0+16*x,0+16*y,8+16*z]: unknown -160+32*x+256*x^2+32*y+256*y^2-576*z-512*z^2=0 -> [44]
[8+16*x,0+16*y,8+16*z]: failure constant=-80, vgcd=32
[0+16*x,8+16*y,8+16*z]: failure constant=-80, vgcd=32
[8+16*x,8+16*y,8+16*z]: success [8,8,8],trivial(2) success [24,24,24],trivial(2)  288*x+256*x^2+288*y+256*y^2-576*z-512*z^2=0 -> [45]

expanding queue[11]: 48 + 80*x + 64*x^2 + 80*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[4+16*x,4+16*y,0+16*z]: failure constant=48, vgcd=32
[12+16*x,4+16*y,0+16*z]: unknown 192+416*x+256*x^2+160*y+256*y^2-64*z-512*z^2=0 -> [46]
[4+16*x,12+16*y,0+16*z]: unknown 192+160*x+256*x^2+416*y+256*y^2-64*z-512*z^2=0 -> [47]
[12+16*x,12+16*y,0+16*z]: failure constant=336, vgcd=32
[4+16*x,4+16*y,8+16*z]: failure constant=-112, vgcd=32
[12+16*x,4+16*y,8+16*z]: unknown 32+416*x+256*x^2+160*y+256*y^2-576*z-512*z^2=0 -> [48]
[4+16*x,12+16*y,8+16*z]: unknown 32+160*x+256*x^2+416*y+256*y^2-576*z-512*z^2=0 -> [49]
[12+16*x,12+16*y,8+16*z]: failure constant=176, vgcd=32

expanding queue[12]:  - 48 + 16*x + 64*x^2 + 16*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[0+16*x,0+16*y,4+16*z]: failure constant=-48, vgcd=32
[8+16*x,0+16*y,4+16*z]: unknown 32+288*x+256*x^2+32*y+256*y^2-320*z-512*z^2=0 -> [50]
[0+16*x,8+16*y,4+16*z]: unknown 32+32*x+256*x^2+288*y+256*y^2-320*z-512*z^2=0 -> [51]
[8+16*x,8+16*y,4+16*z]: failure constant=112, vgcd=32
[0+16*x,0+16*y,12+16*z]: failure constant=-336, vgcd=32
[8+16*x,0+16*y,12+16*z]: unknown -256+288*x+256*x^2+32*y+256*y^2-832*z-512*z^2=0 -> [52]
[0+16*x,8+16*y,12+16*z]: unknown -256+32*x+256*x^2+288*y+256*y^2-832*z-512*z^2=0 -> [53]
[8+16*x,8+16*y,12+16*z]: failure constant=-176, vgcd=32

expanding queue[13]: 80*x + 64*x^2 + 80*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[4+16*x,4+16*y,4+16*z]: success [4,4,4],trivial(2) success [20,20,20],trivial(2)  160*x+256*x^2+160*y+256*y^2-320*z-512*z^2=0 -> [54]
[12+16*x,4+16*y,4+16*z]: failure constant=144, vgcd=32
[4+16*x,12+16*y,4+16*z]: failure constant=144, vgcd=32
[12+16*x,12+16*y,4+16*z]: unknown 288+416*x+256*x^2+416*y+256*y^2-320*z-512*z^2=0 -> [55]
[4+16*x,4+16*y,12+16*z]: unknown -288+160*x+256*x^2+160*y+256*y^2-832*z-512*z^2=0 -> [56]
[12+16*x,4+16*y,12+16*z]: failure constant=-144, vgcd=32
[4+16*x,12+16*y,12+16*z]: failure constant=-144, vgcd=32
[12+16*x,12+16*y,12+16*z]: success [12,12,12],trivial(2) success [28,28,28],trivial(2)  416*x+256*x^2+416*y+256*y^2-832*z-512*z^2=0 -> [57]

expanding queue[14]: 48 + 112*x + 64*x^2 + 16*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[6+16*x,0+16*y,0+16*z]: failure constant=48, vgcd=32
[14+16*x,0+16*y,0+16*z]: unknown 224+480*x+256*x^2+32*y+256*y^2-64*z-512*z^2=0 -> [58]
[6+16*x,8+16*y,0+16*z]: unknown 128+224*x+256*x^2+288*y+256*y^2-64*z-512*z^2=0 -> [59]
[14+16*x,8+16*y,0+16*z]: failure constant=304, vgcd=32
[6+16*x,0+16*y,8+16*z]: failure constant=-112, vgcd=32
[14+16*x,0+16*y,8+16*z]: success [30,16,24],NONTRIVIAL  64+480*x+256*x^2+32*y+256*y^2-576*z-512*z^2=0 -> [60]
[6+16*x,8+16*y,8+16*z]: unknown -32+224*x+256*x^2+288*y+256*y^2-576*z-512*z^2=0 -> [61]
[14+16*x,8+16*y,8+16*z]: failure constant=144, vgcd=32

expanding queue[15]: 32 + 48*x + 64*x^2 + 80*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[2+16*x,4+16*y,0+16*z]: unknown 32+96*x+256*x^2+160*y+256*y^2-64*z-512*z^2=0 -> [62]
[10+16*x,4+16*y,0+16*z]: failure constant=144, vgcd=32
[2+16*x,12+16*y,0+16*z]: failure constant=176, vgcd=32
[10+16*x,12+16*y,0+16*z]: unknown 288+352*x+256*x^2+416*y+256*y^2-64*z-512*z^2=0 -> [63]
[2+16*x,4+16*y,8+16*z]: unknown -128+96*x+256*x^2+160*y+256*y^2-576*z-512*z^2=0 -> [64]
[10+16*x,4+16*y,8+16*z]: failure constant=-16, vgcd=32
[2+16*x,12+16*y,8+16*z]: failure constant=16, vgcd=32
[10+16*x,12+16*y,8+16*z]: unknown 128+352*x+256*x^2+416*y+256*y^2-576*z-512*z^2=0 -> [65]

expanding queue[16]: 112*x + 64*x^2 + 16*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[6+16*x,0+16*y,4+16*z]: success [6,0,4],trivial(1)  224*x+256*x^2+32*y+256*y^2-320*z-512*z^2=0 -> [66]
[14+16*x,0+16*y,4+16*z]: failure constant=176, vgcd=32
[6+16*x,8+16*y,4+16*z]: failure constant=80, vgcd=32
[14+16*x,8+16*y,4+16*z]: unknown 256+480*x+256*x^2+288*y+256*y^2-320*z-512*z^2=0 -> [67]
[6+16*x,0+16*y,12+16*z]: success [6,16,12],NONTRIVIAL  -288+224*x+256*x^2+32*y+256*y^2-832*z-512*z^2=0 -> [68]
[14+16*x,0+16*y,12+16*z]: failure constant=-112, vgcd=32
[6+16*x,8+16*y,12+16*z]: failure constant=-208, vgcd=32
[14+16*x,8+16*y,12+16*z]: unknown -32+480*x+256*x^2+288*y+256*y^2-832*z-512*z^2=0 -> [69]

expanding queue[17]:  - 16 + 48*x + 64*x^2 + 80*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[2+16*x,4+16*y,4+16*z]: failure constant=-16, vgcd=32
[10+16*x,4+16*y,4+16*z]: unknown 96+352*x+256*x^2+160*y+256*y^2-320*z-512*z^2=0 -> [70]
[2+16*x,12+16*y,4+16*z]: unknown 128+96*x+256*x^2+416*y+256*y^2-320*z-512*z^2=0 -> [71]
[10+16*x,12+16*y,4+16*z]: failure constant=240, vgcd=32
[2+16*x,4+16*y,12+16*z]: failure constant=-304, vgcd=32
[10+16*x,4+16*y,12+16*z]: unknown -192+352*x+256*x^2+160*y+256*y^2-832*z-512*z^2=0 -> [72]
[2+16*x,12+16*y,12+16*z]: unknown -160+96*x+256*x^2+416*y+256*y^2-832*z-512*z^2=0 -> [73]
[10+16*x,12+16*y,12+16*z]: failure constant=-48, vgcd=32

expanding queue[18]: 32 + 80*x + 64*x^2 + 48*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[4+16*x,2+16*y,0+16*z]: unknown 32+160*x+256*x^2+96*y+256*y^2-64*z-512*z^2=0 -> [74]
[12+16*x,2+16*y,0+16*z]: failure constant=176, vgcd=32
[4+16*x,10+16*y,0+16*z]: failure constant=144, vgcd=32
[12+16*x,10+16*y,0+16*z]: unknown 288+416*x+256*x^2+352*y+256*y^2-64*z-512*z^2=0 -> [75]
[4+16*x,2+16*y,8+16*z]: unknown -128+160*x+256*x^2+96*y+256*y^2-576*z-512*z^2=0 -> [76]
[12+16*x,2+16*y,8+16*z]: failure constant=16, vgcd=32
[4+16*x,10+16*y,8+16*z]: failure constant=-16, vgcd=32
[12+16*x,10+16*y,8+16*z]: unknown 128+416*x+256*x^2+352*y+256*y^2-576*z-512*z^2=0 -> [77]

expanding queue[19]: 48 + 16*x + 64*x^2 + 112*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[0+16*x,6+16*y,0+16*z]: failure constant=48, vgcd=32
[8+16*x,6+16*y,0+16*z]: unknown 128+288*x+256*x^2+224*y+256*y^2-64*z-512*z^2=0 -> [78]
[0+16*x,14+16*y,0+16*z]: unknown 224+32*x+256*x^2+480*y+256*y^2-64*z-512*z^2=0 -> [79]
[8+16*x,14+16*y,0+16*z]: failure constant=304, vgcd=32
[0+16*x,6+16*y,8+16*z]: failure constant=-112, vgcd=32
[8+16*x,6+16*y,8+16*z]: unknown -32+288*x+256*x^2+224*y+256*y^2-576*z-512*z^2=0 -> [80]
[0+16*x,14+16*y,8+16*z]: success [16,30,24],NONTRIVIAL  64+32*x+256*x^2+480*y+256*y^2-576*z-512*z^2=0 -> [81]
[8+16*x,14+16*y,8+16*z]: failure constant=144, vgcd=32

expanding queue[20]:  - 16 + 80*x + 64*x^2 + 48*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[4+16*x,2+16*y,4+16*z]: failure constant=-16, vgcd=32
[12+16*x,2+16*y,4+16*z]: unknown 128+416*x+256*x^2+96*y+256*y^2-320*z-512*z^2=0 -> [82]
[4+16*x,10+16*y,4+16*z]: unknown 96+160*x+256*x^2+352*y+256*y^2-320*z-512*z^2=0 -> [83]
[12+16*x,10+16*y,4+16*z]: failure constant=240, vgcd=32
[4+16*x,2+16*y,12+16*z]: failure constant=-304, vgcd=32
[12+16*x,2+16*y,12+16*z]: unknown -160+416*x+256*x^2+96*y+256*y^2-832*z-512*z^2=0 -> [84]
[4+16*x,10+16*y,12+16*z]: unknown -192+160*x+256*x^2+352*y+256*y^2-832*z-512*z^2=0 -> [85]
[12+16*x,10+16*y,12+16*z]: failure constant=-48, vgcd=32

expanding queue[21]: 16*x + 64*x^2 + 112*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[0+16*x,6+16*y,4+16*z]: success [0,6,4],trivial(1)  32*x+256*x^2+224*y+256*y^2-320*z-512*z^2=0 -> [86]
[8+16*x,6+16*y,4+16*z]: failure constant=80, vgcd=32
[0+16*x,14+16*y,4+16*z]: failure constant=176, vgcd=32
[8+16*x,14+16*y,4+16*z]: unknown 256+288*x+256*x^2+480*y+256*y^2-320*z-512*z^2=0 -> [87]
[0+16*x,6+16*y,12+16*z]: success [16,6,12],NONTRIVIAL  -288+32*x+256*x^2+224*y+256*y^2-832*z-512*z^2=0 -> [88]
[8+16*x,6+16*y,12+16*z]: failure constant=-208, vgcd=32
[0+16*x,14+16*y,12+16*z]: failure constant=-112, vgcd=32
[8+16*x,14+16*y,12+16*z]: unknown -32+288*x+256*x^2+480*y+256*y^2-832*z-512*z^2=0 -> [89]

expanding queue[22]: 16 + 48*x + 64*x^2 + 48*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[2+16*x,2+16*y,0+16*z]: failure constant=16, vgcd=32
[10+16*x,2+16*y,0+16*z]: unknown 128+352*x+256*x^2+96*y+256*y^2-64*z-512*z^2=0 -> [90]
[2+16*x,10+16*y,0+16*z]: unknown 128+96*x+256*x^2+352*y+256*y^2-64*z-512*z^2=0 -> [91]
[10+16*x,10+16*y,0+16*z]: failure constant=240, vgcd=32
[2+16*x,2+16*y,8+16*z]: failure constant=-144, vgcd=32
[10+16*x,2+16*y,8+16*z]: unknown -32+352*x+256*x^2+96*y+256*y^2-576*z-512*z^2=0 -> [92]
[2+16*x,10+16*y,8+16*z]: unknown -32+96*x+256*x^2+352*y+256*y^2-576*z-512*z^2=0 -> [93]
[10+16*x,10+16*y,8+16*z]: failure constant=80, vgcd=32

expanding queue[23]: 96 + 112*x + 64*x^2 + 112*y + 64*y^2 - 32*z - 128*z^2 = 0 modulo [2,2,2] *16
[6+16*x,6+16*y,0+16*z]: success [22,6,16],NONTRIVIAL success [6,22,16],NONTRIVIAL  96+224*x+256*x^2+224*y+256*y^2-64*z-512*z^2=0 -> [94]
[14+16*x,6+16*y,0+16*z]: failure constant=272, vgcd=32
[6+16*x,14+16*y,0+16*z]: failure constant=272, vgcd=32
[14+16*x,14+16*y,0+16*z]: unknown 448+480*x+256*x^2+480*y+256*y^2-64*z-512*z^2=0 -> [95]
[6+16*x,6+16*y,8+16*z]: unknown -64+224*x+256*x^2+224*y+256*y^2-576*z-512*z^2=0 -> [96]
[14+16*x,6+16*y,8+16*z]: failure constant=112, vgcd=32
[6+16*x,14+16*y,8+16*z]: failure constant=112, vgcd=32
[14+16*x,14+16*y,8+16*z]: unknown 288+480*x+256*x^2+480*y+256*y^2-576*z-512*z^2=0 -> [97]

expanding queue[24]:  - 32 + 48*x + 64*x^2 + 48*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[2+16*x,2+16*y,4+16*z]: unknown -32+96*x+256*x^2+96*y+256*y^2-320*z-512*z^2=0 -> [98]
[10+16*x,2+16*y,4+16*z]: failure constant=80, vgcd=32
[2+16*x,10+16*y,4+16*z]: failure constant=80, vgcd=32
[10+16*x,10+16*y,4+16*z]: unknown 192+352*x+256*x^2+352*y+256*y^2-320*z-512*z^2=0 -> [99]
[2+16*x,2+16*y,12+16*z]: unknown -320+96*x+256*x^2+96*y+256*y^2-832*z-512*z^2=0 -> [100]
[10+16*x,2+16*y,12+16*z]: failure constant=-208, vgcd=32
[2+16*x,10+16*y,12+16*z]: failure constant=-208, vgcd=32
[10+16*x,10+16*y,12+16*z]: unknown -96+352*x+256*x^2+352*y+256*y^2-832*z-512*z^2=0 -> [101]

expanding queue[25]: 48 + 112*x + 64*x^2 + 112*y + 64*y^2 - 160*z - 128*z^2 = 0 modulo [2,2,2] *16
[6+16*x,6+16*y,4+16*z]: failure constant=48, vgcd=32
[14+16*x,6+16*y,4+16*z]: unknown 224+480*x+256*x^2+224*y+256*y^2-320*z-512*z^2=0 -> [102]
[6+16*x,14+16*y,4+16*z]: unknown 224+224*x+256*x^2+480*y+256*y^2-320*z-512*z^2=0 -> [103]
[14+16*x,14+16*y,4+16*z]: failure constant=400, vgcd=32
[6+16*x,6+16*y,12+16*z]: failure constant=-240, vgcd=32
[14+16*x,6+16*y,12+16*z]: unknown -64+480*x+256*x^2+224*y+256*y^2-832*z-512*z^2=0 -> [104]
[6+16*x,14+16*y,12+16*z]: unknown -64+224*x+256*x^2+480*y+256*y^2-832*z-512*z^2=0 -> [105]
[14+16*x,14+16*y,12+16*z]: failure constant=112, vgcd=32

expanding queue[26]:  - 16 + 16*x + 64*x^2 + 16*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[0+16*x,0+16*y,2+16*z]: failure constant=-16, vgcd=32
[8+16*x,0+16*y,2+16*z]: unknown 64+288*x+256*x^2+32*y+256*y^2-192*z-512*z^2=0 -> [106]
[0+16*x,8+16*y,2+16*z]: unknown 64+32*x+256*x^2+288*y+256*y^2-192*z-512*z^2=0 -> [107]
[8+16*x,8+16*y,2+16*z]: failure constant=144, vgcd=32
[0+16*x,0+16*y,10+16*z]: failure constant=-240, vgcd=32
[8+16*x,0+16*y,10+16*z]: unknown -160+288*x+256*x^2+32*y+256*y^2-704*z-512*z^2=0 -> [108]
[0+16*x,8+16*y,10+16*z]: unknown -160+32*x+256*x^2+288*y+256*y^2-704*z-512*z^2=0 -> [109]
[8+16*x,8+16*y,10+16*z]: failure constant=-80, vgcd=32

expanding queue[27]: 32 + 80*x + 64*x^2 + 80*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[4+16*x,4+16*y,2+16*z]: unknown 32+160*x+256*x^2+160*y+256*y^2-192*z-512*z^2=0 -> [110]
[12+16*x,4+16*y,2+16*z]: failure constant=176, vgcd=32
[4+16*x,12+16*y,2+16*z]: failure constant=176, vgcd=32
[12+16*x,12+16*y,2+16*z]: unknown 320+416*x+256*x^2+416*y+256*y^2-192*z-512*z^2=0 -> [111]
[4+16*x,4+16*y,10+16*z]: unknown -192+160*x+256*x^2+160*y+256*y^2-704*z-512*z^2=0 -> [112]
[12+16*x,4+16*y,10+16*z]: failure constant=-48, vgcd=32
[4+16*x,12+16*y,10+16*z]: failure constant=-48, vgcd=32
[12+16*x,12+16*y,10+16*z]: unknown 96+416*x+256*x^2+416*y+256*y^2-704*z-512*z^2=0 -> [113]

expanding queue[28]:  - 96 + 16*x + 64*x^2 + 16*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[0+16*x,0+16*y,6+16*z]: unknown -96+32*x+256*x^2+32*y+256*y^2-448*z-512*z^2=0 -> [114]
[8+16*x,0+16*y,6+16*z]: failure constant=-16, vgcd=32
[0+16*x,8+16*y,6+16*z]: failure constant=-16, vgcd=32
[8+16*x,8+16*y,6+16*z]: unknown 64+288*x+256*x^2+288*y+256*y^2-448*z-512*z^2=0 -> [115]
[0+16*x,0+16*y,14+16*z]: unknown -448+32*x+256*x^2+32*y+256*y^2-960*z-512*z^2=0 -> [116]
[8+16*x,0+16*y,14+16*z]: failure constant=-368, vgcd=32
[0+16*x,8+16*y,14+16*z]: failure constant=-368, vgcd=32
[8+16*x,8+16*y,14+16*z]: unknown -288+288*x+256*x^2+288*y+256*y^2-960*z-512*z^2=0 -> [117]

expanding queue[29]:  - 48 + 80*x + 64*x^2 + 80*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[4+16*x,4+16*y,6+16*z]: failure constant=-48, vgcd=32
[12+16*x,4+16*y,6+16*z]: unknown 96+416*x+256*x^2+160*y+256*y^2-448*z-512*z^2=0 -> [118]
[4+16*x,12+16*y,6+16*z]: unknown 96+160*x+256*x^2+416*y+256*y^2-448*z-512*z^2=0 -> [119]
[12+16*x,12+16*y,6+16*z]: failure constant=240, vgcd=32
[4+16*x,4+16*y,14+16*z]: failure constant=-400, vgcd=32
[12+16*x,4+16*y,14+16*z]: unknown -256+416*x+256*x^2+160*y+256*y^2-960*z-512*z^2=0 -> [120]
[4+16*x,12+16*y,14+16*z]: unknown -256+160*x+256*x^2+416*y+256*y^2-960*z-512*z^2=0 -> [121]
[12+16*x,12+16*y,14+16*z]: failure constant=-112, vgcd=32

expanding queue[30]: 32 + 112*x + 64*x^2 + 16*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[6+16*x,0+16*y,2+16*z]: unknown 32+224*x+256*x^2+32*y+256*y^2-192*z-512*z^2=0 -> [122]
[14+16*x,0+16*y,2+16*z]: failure constant=208, vgcd=32
[6+16*x,8+16*y,2+16*z]: failure constant=112, vgcd=32
[14+16*x,8+16*y,2+16*z]: unknown 288+480*x+256*x^2+288*y+256*y^2-192*z-512*z^2=0 -> [123]
[6+16*x,0+16*y,10+16*z]: unknown -192+224*x+256*x^2+32*y+256*y^2-704*z-512*z^2=0 -> [124]
[14+16*x,0+16*y,10+16*z]: failure constant=-16, vgcd=32
[6+16*x,8+16*y,10+16*z]: failure constant=-112, vgcd=32
[14+16*x,8+16*y,10+16*z]: unknown 64+480*x+256*x^2+288*y+256*y^2-704*z-512*z^2=0 -> [125]

expanding queue[31]: 16 + 48*x + 64*x^2 + 80*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[2+16*x,4+16*y,2+16*z]: failure constant=16, vgcd=32
[10+16*x,4+16*y,2+16*z]: unknown 128+352*x+256*x^2+160*y+256*y^2-192*z-512*z^2=0 -> [126]
[2+16*x,12+16*y,2+16*z]: unknown 160+96*x+256*x^2+416*y+256*y^2-192*z-512*z^2=0 -> [127]
[10+16*x,12+16*y,2+16*z]: failure constant=272, vgcd=32
[2+16*x,4+16*y,10+16*z]: failure constant=-208, vgcd=32
[10+16*x,4+16*y,10+16*z]: unknown -96+352*x+256*x^2+160*y+256*y^2-704*z-512*z^2=0 -> [128]
[2+16*x,12+16*y,10+16*z]: unknown -64+96*x+256*x^2+416*y+256*y^2-704*z-512*z^2=0 -> [129]
[10+16*x,12+16*y,10+16*z]: failure constant=48, vgcd=32

expanding queue[32]:  - 48 + 112*x + 64*x^2 + 16*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[6+16*x,0+16*y,6+16*z]: failure constant=-48, vgcd=32
[14+16*x,0+16*y,6+16*z]: unknown 128+480*x+256*x^2+32*y+256*y^2-448*z-512*z^2=0 -> [130]
[6+16*x,8+16*y,6+16*z]: unknown 32+224*x+256*x^2+288*y+256*y^2-448*z-512*z^2=0 -> [131]
[14+16*x,8+16*y,6+16*z]: failure constant=208, vgcd=32
[6+16*x,0+16*y,14+16*z]: failure constant=-400, vgcd=32
[14+16*x,0+16*y,14+16*z]: unknown -224+480*x+256*x^2+32*y+256*y^2-960*z-512*z^2=0 -> [132]
[6+16*x,8+16*y,14+16*z]: unknown -320+224*x+256*x^2+288*y+256*y^2-960*z-512*z^2=0 -> [133]
[14+16*x,8+16*y,14+16*z]: failure constant=-144, vgcd=32

expanding queue[33]:  - 64 + 48*x + 64*x^2 + 80*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[2+16*x,4+16*y,6+16*z]: unknown -64+96*x+256*x^2+160*y+256*y^2-448*z-512*z^2=0 -> [134]
[10+16*x,4+16*y,6+16*z]: failure constant=48, vgcd=32
[2+16*x,12+16*y,6+16*z]: failure constant=80, vgcd=32
[10+16*x,12+16*y,6+16*z]: unknown 192+352*x+256*x^2+416*y+256*y^2-448*z-512*z^2=0 -> [135]
[2+16*x,4+16*y,14+16*z]: success [2,20,14],NONTRIVIAL  -416+96*x+256*x^2+160*y+256*y^2-960*z-512*z^2=0 -> [136]
[10+16*x,4+16*y,14+16*z]: failure constant=-304, vgcd=32
[2+16*x,12+16*y,14+16*z]: failure constant=-272, vgcd=32
[10+16*x,12+16*y,14+16*z]: unknown -160+352*x+256*x^2+416*y+256*y^2-960*z-512*z^2=0 -> [137]

expanding queue[34]: 16 + 80*x + 64*x^2 + 48*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[4+16*x,2+16*y,2+16*z]: failure constant=16, vgcd=32
[12+16*x,2+16*y,2+16*z]: unknown 160+416*x+256*x^2+96*y+256*y^2-192*z-512*z^2=0 -> [138]
[4+16*x,10+16*y,2+16*z]: unknown 128+160*x+256*x^2+352*y+256*y^2-192*z-512*z^2=0 -> [139]
[12+16*x,10+16*y,2+16*z]: failure constant=272, vgcd=32
[4+16*x,2+16*y,10+16*z]: failure constant=-208, vgcd=32
[12+16*x,2+16*y,10+16*z]: unknown -64+416*x+256*x^2+96*y+256*y^2-704*z-512*z^2=0 -> [140]
[4+16*x,10+16*y,10+16*z]: unknown -96+160*x+256*x^2+352*y+256*y^2-704*z-512*z^2=0 -> [141]
[12+16*x,10+16*y,10+16*z]: failure constant=48, vgcd=32

expanding queue[35]: 32 + 16*x + 64*x^2 + 112*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[0+16*x,6+16*y,2+16*z]: unknown 32+32*x+256*x^2+224*y+256*y^2-192*z-512*z^2=0 -> [142]
[8+16*x,6+16*y,2+16*z]: failure constant=112, vgcd=32
[0+16*x,14+16*y,2+16*z]: failure constant=208, vgcd=32
[8+16*x,14+16*y,2+16*z]: unknown 288+288*x+256*x^2+480*y+256*y^2-192*z-512*z^2=0 -> [143]
[0+16*x,6+16*y,10+16*z]: unknown -192+32*x+256*x^2+224*y+256*y^2-704*z-512*z^2=0 -> [144]
[8+16*x,6+16*y,10+16*z]: failure constant=-112, vgcd=32
[0+16*x,14+16*y,10+16*z]: failure constant=-16, vgcd=32
[8+16*x,14+16*y,10+16*z]: unknown 64+288*x+256*x^2+480*y+256*y^2-704*z-512*z^2=0 -> [145]

expanding queue[36]:  - 64 + 80*x + 64*x^2 + 48*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[4+16*x,2+16*y,6+16*z]: unknown -64+160*x+256*x^2+96*y+256*y^2-448*z-512*z^2=0 -> [146]
[12+16*x,2+16*y,6+16*z]: failure constant=80, vgcd=32
[4+16*x,10+16*y,6+16*z]: failure constant=48, vgcd=32
[12+16*x,10+16*y,6+16*z]: unknown 192+416*x+256*x^2+352*y+256*y^2-448*z-512*z^2=0 -> [147]
[4+16*x,2+16*y,14+16*z]: success [20,2,14],NONTRIVIAL  -416+160*x+256*x^2+96*y+256*y^2-960*z-512*z^2=0 -> [148]
[12+16*x,2+16*y,14+16*z]: failure constant=-272, vgcd=32
[4+16*x,10+16*y,14+16*z]: failure constant=-304, vgcd=32
[12+16*x,10+16*y,14+16*z]: unknown -160+416*x+256*x^2+352*y+256*y^2-960*z-512*z^2=0 -> [149]

expanding queue[37]:  - 48 + 16*x + 64*x^2 + 112*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[0+16*x,6+16*y,6+16*z]: failure constant=-48, vgcd=32
[8+16*x,6+16*y,6+16*z]: unknown 32+288*x+256*x^2+224*y+256*y^2-448*z-512*z^2=0 -> [150]
[0+16*x,14+16*y,6+16*z]: unknown 128+32*x+256*x^2+480*y+256*y^2-448*z-512*z^2=0 -> [151]
[8+16*x,14+16*y,6+16*z]: failure constant=208, vgcd=32
[0+16*x,6+16*y,14+16*z]: failure constant=-400, vgcd=32
[8+16*x,6+16*y,14+16*z]: unknown -320+288*x+256*x^2+224*y+256*y^2-960*z-512*z^2=0 -> [152]
[0+16*x,14+16*y,14+16*z]: unknown -224+32*x+256*x^2+480*y+256*y^2-960*z-512*z^2=0 -> [153]
[8+16*x,14+16*y,14+16*z]: failure constant=-144, vgcd=32

expanding queue[38]: 48*x + 64*x^2 + 48*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[2+16*x,2+16*y,2+16*z]: success [2,2,2],trivial(2) success [18,18,18],trivial(2)  96*x+256*x^2+96*y+256*y^2-192*z-512*z^2=0 -> [154]
[10+16*x,2+16*y,2+16*z]: failure constant=112, vgcd=32
[2+16*x,10+16*y,2+16*z]: failure constant=112, vgcd=32
[10+16*x,10+16*y,2+16*z]: unknown 224+352*x+256*x^2+352*y+256*y^2-192*z-512*z^2=0 -> [155]
[2+16*x,2+16*y,10+16*z]: unknown -224+96*x+256*x^2+96*y+256*y^2-704*z-512*z^2=0 -> [156]
[10+16*x,2+16*y,10+16*z]: failure constant=-112, vgcd=32
[2+16*x,10+16*y,10+16*z]: failure constant=-112, vgcd=32
[10+16*x,10+16*y,10+16*z]: success [10,10,10],trivial(2) success [26,26,26],trivial(2)  352*x+256*x^2+352*y+256*y^2-704*z-512*z^2=0 -> [157]

expanding queue[39]: 80 + 112*x + 64*x^2 + 112*y + 64*y^2 - 96*z - 128*z^2 = 0 modulo [2,2,2] *16
[6+16*x,6+16*y,2+16*z]: failure constant=80, vgcd=32
[14+16*x,6+16*y,2+16*z]: unknown 256+480*x+256*x^2+224*y+256*y^2-192*z-512*z^2=0 -> [158]
[6+16*x,14+16*y,2+16*z]: unknown 256+224*x+256*x^2+480*y+256*y^2-192*z-512*z^2=0 -> [159]
[14+16*x,14+16*y,2+16*z]: failure constant=432, vgcd=32
[6+16*x,6+16*y,10+16*z]: failure constant=-144, vgcd=32
[14+16*x,6+16*y,10+16*z]: unknown 32+480*x+256*x^2+224*y+256*y^2-704*z-512*z^2=0 -> [160]
[6+16*x,14+16*y,10+16*z]: unknown 32+224*x+256*x^2+480*y+256*y^2-704*z-512*z^2=0 -> [161]
[14+16*x,14+16*y,10+16*z]: failure constant=208, vgcd=32

expanding queue[40]:  - 80 + 48*x + 64*x^2 + 48*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[2+16*x,2+16*y,6+16*z]: failure constant=-80, vgcd=32
[10+16*x,2+16*y,6+16*z]: unknown 32+352*x+256*x^2+96*y+256*y^2-448*z-512*z^2=0 -> [162]
[2+16*x,10+16*y,6+16*z]: unknown 32+96*x+256*x^2+352*y+256*y^2-448*z-512*z^2=0 -> [163]
[10+16*x,10+16*y,6+16*z]: failure constant=144, vgcd=32
[2+16*x,2+16*y,14+16*z]: failure constant=-432, vgcd=32
[10+16*x,2+16*y,14+16*z]: unknown -320+352*x+256*x^2+96*y+256*y^2-960*z-512*z^2=0 -> [164]
[2+16*x,10+16*y,14+16*z]: unknown -320+96*x+256*x^2+352*y+256*y^2-960*z-512*z^2=0 -> [165]
[10+16*x,10+16*y,14+16*z]: failure constant=-208, vgcd=32

expanding queue[41]: 112*x + 64*x^2 + 112*y + 64*y^2 - 224*z - 128*z^2 = 0 modulo [2,2,2] *16
[6+16*x,6+16*y,6+16*z]: success [6,6,6],trivial(2) success [22,22,22],trivial(2)  224*x+256*x^2+224*y+256*y^2-448*z-512*z^2=0 -> [166]
[14+16*x,6+16*y,6+16*z]: failure constant=176, vgcd=32
[6+16*x,14+16*y,6+16*z]: failure constant=176, vgcd=32
[14+16*x,14+16*y,6+16*z]: unknown 352+480*x+256*x^2+480*y+256*y^2-448*z-512*z^2=0 -> [167]
[6+16*x,6+16*y,14+16*z]: unknown -352+224*x+256*x^2+224*y+256*y^2-960*z-512*z^2=0 -> [168]
[14+16*x,6+16*y,14+16*z]: failure constant=-176, vgcd=32
[6+16*x,14+16*y,14+16*z]: failure constant=-176, vgcd=32
[14+16*x,14+16*y,14+16*z]: success [14,14,14],trivial(2) success [30,30,30],trivial(2)  480*x+256*x^2+480*y+256*y^2-960*z-512*z^2=0 -> [169]
Maximum level 3 reached, queue size = 170
