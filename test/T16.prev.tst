
expanding queue[0]: a^2 + b^2 - c^2 = 0 modulo [2,2,2] *2
[0+2*a,0+2*b,0+2*c]: failure, grown from [0]
[1+2*a,0+2*b,0+2*c]: failure constant=1, vgcd=4
[0+2*a,1+2*b,0+2*c]: failure constant=1, vgcd=4
[1+2*a,1+2*b,0+2*c]: failure constant=2, vgcd=4
[0+2*a,0+2*b,1+2*c]: failure constant=-1, vgcd=4
[1+2*a,0+2*b,1+2*c]: success [1,0,1] trivial=3 4*a+4*a^2+4*b^2-4*c-4*c^2=0 -> [1]
[0+2*a,1+2*b,1+2*c]: failure transposition of [1] {0/0+2*b,0/1+2*a,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b
[1+2*a,1+2*b,1+2*c]: failure constant=1, vgcd=4

expanding queue[1]: 4*a + 4*a^2 + 4*b^2 - 4*c - 4*c^2 = 0 modulo [2,2,2] *4
[1+4*a,0+4*b,1+4*c]: failure, grown from [1]
[3+4*a,0+4*b,1+4*c]: unknown 8+24*a+16*a^2+16*b^2-8*c-16*c^2=0 -> [2]
[1+4*a,2+4*b,1+4*c]: failure constant=4, vgcd=8
[3+4*a,2+4*b,1+4*c]: failure constant=12, vgcd=8
[1+4*a,0+4*b,3+4*c]: unknown -8+8*a+16*a^2+16*b^2-24*c-16*c^2=0 -> [3]
[3+4*a,0+4*b,3+4*c]: success [3,0,3] trivial=3 24*a+16*a^2+16*b^2-24*c-16*c^2=0 -> [4]
[1+4*a,2+4*b,3+4*c]: failure constant=-4, vgcd=8
[3+4*a,2+4*b,3+4*c]: failure constant=4, vgcd=8

expanding queue[2]: 8 + 24*a + 16*a^2 + 16*b^2 - 8*c - 16*c^2 = 0 modulo [2,1,2] *8
[3+8*a,0+4*b,1+8*c]: failure constant=8, vgcd=16
[7+8*a,0+4*b,1+8*c]: unknown 48+112*a+64*a^2+16*b^2-16*c-64*c^2=0 -> [5]
[3+8*a,0+4*b,5+8*c]: unknown -16+48*a+64*a^2+16*b^2-80*c-64*c^2=0 -> [6]
[7+8*a,0+4*b,5+8*c]: failure constant=24, vgcd=16

expanding queue[3]:  - 8 + 8*a + 16*a^2 + 16*b^2 - 24*c - 16*c^2 = 0 modulo [2,1,2] *8
[1+8*a,0+4*b,3+8*c]: failure constant=-8, vgcd=16
[5+8*a,0+4*b,3+8*c]: unknown 16+80*a+64*a^2+16*b^2-48*c-64*c^2=0 -> [7]
[1+8*a,0+4*b,7+8*c]: unknown -48+16*a+64*a^2+16*b^2-112*c-64*c^2=0 -> [8]
[5+8*a,0+4*b,7+8*c]: failure constant=-24, vgcd=16

expanding queue[4]: 24*a + 16*a^2 + 16*b^2 - 24*c - 16*c^2 = 0 modulo [2,1,2] *8
[3+8*a,0+4*b,3+8*c]: failure, grown from [4]
[7+8*a,0+4*b,3+8*c]: failure constant=40, vgcd=16
[3+8*a,0+4*b,7+8*c]: failure constant=-40, vgcd=16
[7+8*a,0+4*b,7+8*c]: success [7,0,7] trivial=3 112*a+64*a^2+16*b^2-112*c-64*c^2=0 -> [9]

expanding queue[5]: 48 + 112*a + 64*a^2 + 16*b^2 - 16*c - 64*c^2 = 0 modulo [2,2,2] *16
[7+16*a,0+8*b,1+16*c]: failure constant=48, vgcd=32
[15+16*a,0+8*b,1+16*c]: unknown 224+480*a+256*a^2+64*b^2-32*c-256*c^2=0 -> [10]
[7+16*a,4+8*b,1+16*c]: unknown 64+224*a+256*a^2+64*b+64*b^2-32*c-256*c^2=0 -> [11]
[15+16*a,4+8*b,1+16*c]: failure constant=240, vgcd=32
[7+16*a,0+8*b,9+16*c]: unknown -32+224*a+256*a^2+64*b^2-288*c-256*c^2=0 -> [12]
[15+16*a,0+8*b,9+16*c]: failure constant=144, vgcd=32
[7+16*a,4+8*b,9+16*c]: failure constant=-16, vgcd=32
[15+16*a,4+8*b,9+16*c]: unknown 160+480*a+256*a^2+64*b+64*b^2-288*c-256*c^2=0 -> [13]

expanding queue[6]:  - 16 + 48*a + 64*a^2 + 16*b^2 - 80*c - 64*c^2 = 0 modulo [2,2,2] *16
[3+16*a,0+8*b,5+16*c]: failure constant=-16, vgcd=32
[11+16*a,0+8*b,5+16*c]: unknown 96+352*a+256*a^2+64*b^2-160*c-256*c^2=0 -> [14]
[3+16*a,4+8*b,5+16*c]: success [3,4,5] NONTRIVIAL 96*a+256*a^2+64*b+64*b^2-160*c-256*c^2=0 -> [15]
[11+16*a,4+8*b,5+16*c]: failure constant=112, vgcd=32
[3+16*a,0+8*b,13+16*c]: unknown -160+96*a+256*a^2+64*b^2-416*c-256*c^2=0 -> [16]
[11+16*a,0+8*b,13+16*c]: failure constant=-48, vgcd=32
[3+16*a,4+8*b,13+16*c]: failure constant=-144, vgcd=32
[11+16*a,4+8*b,13+16*c]: unknown -32+352*a+256*a^2+64*b+64*b^2-416*c-256*c^2=0 -> [17]

expanding queue[7]: 16 + 80*a + 64*a^2 + 16*b^2 - 48*c - 64*c^2 = 0 modulo [2,2,2] *16
[5+16*a,0+8*b,3+16*c]: failure constant=16, vgcd=32
[13+16*a,0+8*b,3+16*c]: unknown 160+416*a+256*a^2+64*b^2-96*c-256*c^2=0 -> [18]
[5+16*a,4+8*b,3+16*c]: unknown 32+160*a+256*a^2+64*b+64*b^2-96*c-256*c^2=0 -> [19]
[13+16*a,4+8*b,3+16*c]: failure constant=176, vgcd=32
[5+16*a,0+8*b,11+16*c]: unknown -96+160*a+256*a^2+64*b^2-352*c-256*c^2=0 -> [20]
[13+16*a,0+8*b,11+16*c]: failure constant=48, vgcd=32
[5+16*a,4+8*b,11+16*c]: failure constant=-80, vgcd=32
[13+16*a,4+8*b,11+16*c]: unknown 64+416*a+256*a^2+64*b+64*b^2-352*c-256*c^2=0 -> [21]

expanding queue[8]:  - 48 + 16*a + 64*a^2 + 16*b^2 - 112*c - 64*c^2 = 0 modulo [2,2,2] *16
[1+16*a,0+8*b,7+16*c]: failure constant=-48, vgcd=32
[9+16*a,0+8*b,7+16*c]: unknown 32+288*a+256*a^2+64*b^2-224*c-256*c^2=0 -> [22]
[1+16*a,4+8*b,7+16*c]: unknown -32+32*a+256*a^2+64*b+64*b^2-224*c-256*c^2=0 -> [23]
[9+16*a,4+8*b,7+16*c]: failure constant=48, vgcd=32
[1+16*a,0+8*b,15+16*c]: unknown -224+32*a+256*a^2+64*b^2-480*c-256*c^2=0 -> [24]
[9+16*a,0+8*b,15+16*c]: failure constant=-144, vgcd=32
[1+16*a,4+8*b,15+16*c]: failure constant=-208, vgcd=32
[9+16*a,4+8*b,15+16*c]: unknown -128+288*a+256*a^2+64*b+64*b^2-480*c-256*c^2=0 -> [25]

expanding queue[9]: 112*a + 64*a^2 + 16*b^2 - 112*c - 64*c^2 = 0 modulo [2,2,2] *16
[7+16*a,0+8*b,7+16*c]: failure, grown from [9]
[15+16*a,0+8*b,7+16*c]: failure constant=176, vgcd=32
[7+16*a,4+8*b,7+16*c]: failure constant=16, vgcd=32
[15+16*a,4+8*b,7+16*c]: unknown 192+480*a+256*a^2+64*b+64*b^2-224*c-256*c^2=0 -> [26]
[7+16*a,0+8*b,15+16*c]: failure constant=-176, vgcd=32
[15+16*a,0+8*b,15+16*c]: success [15,0,15] trivial=3 480*a+256*a^2+64*b^2-480*c-256*c^2=0 -> [27]
[7+16*a,4+8*b,15+16*c]: unknown -160+224*a+256*a^2+64*b+64*b^2-480*c-256*c^2=0 -> [28]
[15+16*a,4+8*b,15+16*c]: failure constant=16, vgcd=32

expanding queue[10]: 224 + 480*a + 256*a^2 + 64*b^2 - 32*c - 256*c^2 = 0 modulo [2,1,2] *32
[15+32*a,0+8*b,1+32*c]: failure constant=224, vgcd=64
[31+32*a,0+8*b,1+32*c]: unknown 960+1984*a+1024*a^2+64*b^2-64*c-1024*c^2=0 -> [29]
[15+32*a,0+8*b,17+32*c]: unknown -64+960*a+1024*a^2+64*b^2-1088*c-1024*c^2=0 -> [30]
[31+32*a,0+8*b,17+32*c]: failure constant=672, vgcd=64

expanding queue[11]: 64 + 224*a + 256*a^2 + 64*b + 64*b^2 - 32*c - 256*c^2 = 0 modulo [2,1,2] *32
[7+32*a,4+8*b,1+32*c]: failure, grown from [11]
[23+32*a,4+8*b,1+32*c]: failure constant=544, vgcd=64
[7+32*a,4+8*b,17+32*c]: failure constant=-224, vgcd=64
[23+32*a,4+8*b,17+32*c]: unknown 256+1472*a+1024*a^2+64*b+64*b^2-1088*c-1024*c^2=0 -> [31]

expanding queue[12]:  - 32 + 224*a + 256*a^2 + 64*b^2 - 288*c - 256*c^2 = 0 modulo [2,1,2] *32
[7+32*a,0+8*b,9+32*c]: failure constant=-32, vgcd=64
[23+32*a,0+8*b,9+32*c]: unknown 448+1472*a+1024*a^2+64*b^2-576*c-1024*c^2=0 -> [32]
[7+32*a,0+8*b,25+32*c]: unknown -576+448*a+1024*a^2+64*b^2-1600*c-1024*c^2=0 -> [33]
[23+32*a,0+8*b,25+32*c]: failure constant=-96, vgcd=64

expanding queue[13]: 160 + 480*a + 256*a^2 + 64*b + 64*b^2 - 288*c - 256*c^2 = 0 modulo [2,1,2] *32
[15+32*a,4+8*b,9+32*c]: failure constant=160, vgcd=64
[31+32*a,4+8*b,9+32*c]: unknown 896+1984*a+1024*a^2+64*b+64*b^2-576*c-1024*c^2=0 -> [34]
[15+32*a,4+8*b,25+32*c]: unknown -384+960*a+1024*a^2+64*b+64*b^2-1600*c-1024*c^2=0 -> [35]
[31+32*a,4+8*b,25+32*c]: failure constant=352, vgcd=64

expanding queue[14]: 96 + 352*a + 256*a^2 + 64*b^2 - 160*c - 256*c^2 = 0 modulo [2,1,2] *32
[11+32*a,0+8*b,5+32*c]: failure constant=96, vgcd=64
[27+32*a,0+8*b,5+32*c]: unknown 704+1728*a+1024*a^2+64*b^2-320*c-1024*c^2=0 -> [36]
[11+32*a,0+8*b,21+32*c]: unknown -320+704*a+1024*a^2+64*b^2-1344*c-1024*c^2=0 -> [37]
[27+32*a,0+8*b,21+32*c]: failure constant=288, vgcd=64

expanding queue[15]: 96*a + 256*a^2 + 64*b + 64*b^2 - 160*c - 256*c^2 = 0 modulo [2,1,2] *32
[3+32*a,4+8*b,5+32*c]: failure, grown from [15]
[19+32*a,4+8*b,5+32*c]: failure constant=352, vgcd=64
[3+32*a,4+8*b,21+32*c]: failure constant=-416, vgcd=64
[19+32*a,4+8*b,21+32*c]: unknown -64+1216*a+1024*a^2+64*b+64*b^2-1344*c-1024*c^2=0 -> [38]

expanding queue[16]:  - 160 + 96*a + 256*a^2 + 64*b^2 - 416*c - 256*c^2 = 0 modulo [2,1,2] *32
[3+32*a,0+8*b,13+32*c]: failure constant=-160, vgcd=64
[19+32*a,0+8*b,13+32*c]: unknown 192+1216*a+1024*a^2+64*b^2-832*c-1024*c^2=0 -> [39]
[3+32*a,0+8*b,29+32*c]: unknown -832+192*a+1024*a^2+64*b^2-1856*c-1024*c^2=0 -> [40]
[19+32*a,0+8*b,29+32*c]: failure constant=-480, vgcd=64

expanding queue[17]:  - 32 + 352*a + 256*a^2 + 64*b + 64*b^2 - 416*c - 256*c^2 = 0 modulo [2,1,2] *32
[11+32*a,4+8*b,13+32*c]: failure constant=-32, vgcd=64
[27+32*a,4+8*b,13+32*c]: unknown 576+1728*a+1024*a^2+64*b+64*b^2-832*c-1024*c^2=0 -> [41]
[11+32*a,4+8*b,29+32*c]: unknown -704+704*a+1024*a^2+64*b+64*b^2-1856*c-1024*c^2=0 -> [42]
[27+32*a,4+8*b,29+32*c]: failure constant=-96, vgcd=64

expanding queue[18]: 160 + 416*a + 256*a^2 + 64*b^2 - 96*c - 256*c^2 = 0 modulo [2,1,2] *32
[13+32*a,0+8*b,3+32*c]: failure constant=160, vgcd=64
[29+32*a,0+8*b,3+32*c]: unknown 832+1856*a+1024*a^2+64*b^2-192*c-1024*c^2=0 -> [43]
[13+32*a,0+8*b,19+32*c]: unknown -192+832*a+1024*a^2+64*b^2-1216*c-1024*c^2=0 -> [44]
[29+32*a,0+8*b,19+32*c]: failure constant=480, vgcd=64

expanding queue[19]: 32 + 160*a + 256*a^2 + 64*b + 64*b^2 - 96*c - 256*c^2 = 0 modulo [2,1,2] *32
[5+32*a,4+8*b,3+32*c]: failure constant=32, vgcd=64
[21+32*a,4+8*b,3+32*c]: unknown 448+1344*a+1024*a^2+64*b+64*b^2-192*c-1024*c^2=0 -> [45]
[5+32*a,4+8*b,19+32*c]: unknown -320+320*a+1024*a^2+64*b+64*b^2-1216*c-1024*c^2=0 -> [46]
[21+32*a,4+8*b,19+32*c]: failure constant=96, vgcd=64

expanding queue[20]:  - 96 + 160*a + 256*a^2 + 64*b^2 - 352*c - 256*c^2 = 0 modulo [2,1,2] *32
[5+32*a,0+8*b,11+32*c]: failure constant=-96, vgcd=64
[21+32*a,0+8*b,11+32*c]: unknown 320+1344*a+1024*a^2+64*b^2-704*c-1024*c^2=0 -> [47]
[5+32*a,0+8*b,27+32*c]: unknown -704+320*a+1024*a^2+64*b^2-1728*c-1024*c^2=0 -> [48]
[21+32*a,0+8*b,27+32*c]: failure constant=-288, vgcd=64

expanding queue[21]: 64 + 416*a + 256*a^2 + 64*b + 64*b^2 - 352*c - 256*c^2 = 0 modulo [2,1,2] *32
[13+32*a,4+8*b,11+32*c]: failure, grown from [21]
[29+32*a,4+8*b,11+32*c]: failure constant=736, vgcd=64
[13+32*a,4+8*b,27+32*c]: failure constant=-544, vgcd=64
[29+32*a,4+8*b,27+32*c]: unknown 128+1856*a+1024*a^2+64*b+64*b^2-1728*c-1024*c^2=0 -> [49]

expanding queue[22]: 32 + 288*a + 256*a^2 + 64*b^2 - 224*c - 256*c^2 = 0 modulo [2,1,2] *32
[9+32*a,0+8*b,7+32*c]: failure constant=32, vgcd=64
[25+32*a,0+8*b,7+32*c]: unknown 576+1600*a+1024*a^2+64*b^2-448*c-1024*c^2=0 -> [50]
[9+32*a,0+8*b,23+32*c]: unknown -448+576*a+1024*a^2+64*b^2-1472*c-1024*c^2=0 -> [51]
[25+32*a,0+8*b,23+32*c]: failure constant=96, vgcd=64

expanding queue[23]:  - 32 + 32*a + 256*a^2 + 64*b + 64*b^2 - 224*c - 256*c^2 = 0 modulo [2,1,2] *32
[1+32*a,4+8*b,7+32*c]: failure constant=-32, vgcd=64
[17+32*a,4+8*b,7+32*c]: unknown 256+1088*a+1024*a^2+64*b+64*b^2-448*c-1024*c^2=0 -> [52]
[1+32*a,4+8*b,23+32*c]: unknown -512+64*a+1024*a^2+64*b+64*b^2-1472*c-1024*c^2=0 -> [53]
[17+32*a,4+8*b,23+32*c]: failure constant=-224, vgcd=64

expanding queue[24]:  - 224 + 32*a + 256*a^2 + 64*b^2 - 480*c - 256*c^2 = 0 modulo [2,1,2] *32
[1+32*a,0+8*b,15+32*c]: failure constant=-224, vgcd=64
[17+32*a,0+8*b,15+32*c]: unknown 64+1088*a+1024*a^2+64*b^2-960*c-1024*c^2=0 -> [54]
[1+32*a,0+8*b,31+32*c]: unknown -960+64*a+1024*a^2+64*b^2-1984*c-1024*c^2=0 -> [55]
[17+32*a,0+8*b,31+32*c]: failure constant=-672, vgcd=64

expanding queue[25]:  - 128 + 288*a + 256*a^2 + 64*b + 64*b^2 - 480*c - 256*c^2 = 0 modulo [2,1,2] *32
[9+32*a,4+8*b,15+32*c]: failure, grown from [25]
[25+32*a,4+8*b,15+32*c]: failure constant=416, vgcd=64
[9+32*a,4+8*b,31+32*c]: failure constant=-864, vgcd=64
[25+32*a,4+8*b,31+32*c]: unknown -320+1600*a+1024*a^2+64*b+64*b^2-1984*c-1024*c^2=0 -> [56]

expanding queue[26]: 192 + 480*a + 256*a^2 + 64*b + 64*b^2 - 224*c - 256*c^2 = 0 modulo [2,1,2] *32
[15+32*a,4+8*b,7+32*c]: failure, grown from [26]
[31+32*a,4+8*b,7+32*c]: failure constant=928, vgcd=64
[15+32*a,4+8*b,23+32*c]: failure constant=-288, vgcd=64
[31+32*a,4+8*b,23+32*c]: unknown 448+1984*a+1024*a^2+64*b+64*b^2-1472*c-1024*c^2=0 -> [57]

expanding queue[27]: 480*a + 256*a^2 + 64*b^2 - 480*c - 256*c^2 = 0 modulo [2,1,2] *32
[15+32*a,0+8*b,15+32*c]: failure, grown from [27]
[31+32*a,0+8*b,15+32*c]: failure constant=736, vgcd=64
[15+32*a,0+8*b,31+32*c]: failure constant=-736, vgcd=64
[31+32*a,0+8*b,31+32*c]: success [31,0,31] trivial=3 1984*a+1024*a^2+64*b^2-1984*c-1024*c^2=0 -> [58]

expanding queue[28]:  - 160 + 224*a + 256*a^2 + 64*b + 64*b^2 - 480*c - 256*c^2 = 0 modulo [2,1,2] *32
[7+32*a,4+8*b,15+32*c]: failure constant=-160, vgcd=64
[23+32*a,4+8*b,15+32*c]: unknown 320+1472*a+1024*a^2+64*b+64*b^2-960*c-1024*c^2=0 -> [59]
[7+32*a,4+8*b,31+32*c]: unknown -896+448*a+1024*a^2+64*b+64*b^2-1984*c-1024*c^2=0 -> [60]
[23+32*a,4+8*b,31+32*c]: failure constant=-416, vgcd=64
