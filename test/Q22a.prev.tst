Expanding for base=2, transposables=[0,1], reasons+features=base,transpose,same,similiar,grow

expanding queue[0]:  - 9 + 15*x^2 - 7*y^2 = 0 modulo [2,2] *2
[0+2*x,0+2*y]: failure constant=-9, vgcd=4
[1+2*x,0+2*y]: failure constant=6, vgcd=4
[0+2*x,1+2*y]: unknown -16+60*x^2-28*y-28*y^2=0 -> [1]
[1+2*x,1+2*y]: failure constant=-1, vgcd=4

expanding queue[1]:  - 16 + 60*x^2 - 28*y - 28*y^2 = 0 modulo [2,2] *4
[0+4*x,1+4*y]: unknown -16+240*x^2-56*y-112*y^2=0 -> [2]
[2+4*x,1+4*y]: failure constant=44, vgcd=8
[0+4*x,3+4*y]: unknown -72+240*x^2-168*y-112*y^2=0 -> [3]
[2+4*x,3+4*y]: failure constant=-12, vgcd=8

expanding queue[2]:  - 16 + 240*x^2 - 56*y - 112*y^2 = 0 modulo [2,2] *8
[0+8*x,1+8*y]: unknown -16+960*x^2-112*y-448*y^2=0 -> [4]
[4+8*x,1+8*y]: unknown 224+960*x+960*x^2-112*y-448*y^2=0 -> [5]
[0+8*x,5+8*y]: failure constant=-184, vgcd=16
[4+8*x,5+8*y]: failure constant=56, vgcd=16

expanding queue[3]:  - 72 + 240*x^2 - 168*y - 112*y^2 = 0 modulo [2,2] *8
[0+8*x,3+8*y]: failure constant=-72, vgcd=16
[4+8*x,3+8*y]: failure constant=168, vgcd=16
[0+8*x,7+8*y]: unknown -352+960*x^2-784*y-448*y^2=0 -> [6]
[4+8*x,7+8*y]: unknown -112+960*x+960*x^2-784*y-448*y^2=0 -> [7]

expanding queue[4]:  - 16 + 960*x^2 - 112*y - 448*y^2 = 0 modulo [2,2] *16
[0+16*x,1+16*y]: failure constant=-16, vgcd=32
[8+16*x,1+16*y]: failure constant=944, vgcd=32
[0+16*x,9+16*y]: unknown -576+3840*x^2-2016*y-1792*y^2=0 -> [8]
[8+16*x,9+16*y]: unknown 384+3840*x+3840*x^2-2016*y-1792*y^2=0 -> [9]

expanding queue[5]: 224 + 960*x + 960*x^2 - 112*y - 448*y^2 = 0 modulo [2,2] *16
[4+16*x,1+16*y]: unknown 224+1920*x+3840*x^2-224*y-1792*y^2=0 -> [10]
[12+16*x,1+16*y]: unknown 2144+5760*x+3840*x^2-224*y-1792*y^2=0 -> [11]
[4+16*x,9+16*y]: failure constant=-336, vgcd=32
[12+16*x,9+16*y]: failure constant=1584, vgcd=32

expanding queue[6]:  - 352 + 960*x^2 - 784*y - 448*y^2 = 0 modulo [2,2] *16
[0+16*x,7+16*y]: unknown -352+3840*x^2-1568*y-1792*y^2=0 -> [12]
[8+16*x,7+16*y]: unknown 608+3840*x+3840*x^2-1568*y-1792*y^2=0 -> [13]
[0+16*x,15+16*y]: failure constant=-1584, vgcd=32
[8+16*x,15+16*y]: failure constant=-624, vgcd=32

expanding queue[7]:  - 112 + 960*x + 960*x^2 - 784*y - 448*y^2 = 0 modulo [2,2] *16
[4+16*x,7+16*y]: failure constant=-112, vgcd=32
[12+16*x,7+16*y]: failure constant=1808, vgcd=32
[4+16*x,15+16*y]: unknown -1344+1920*x+3840*x^2-3360*y-1792*y^2=0 -> [14]
[12+16*x,15+16*y]: unknown 576+5760*x+3840*x^2-3360*y-1792*y^2=0 -> [15]

expanding queue[8]:  - 576 + 3840*x^2 - 2016*y - 1792*y^2 = 0 modulo [2,2] *32
[0+32*x,9+32*y]: unknown -576+15360*x^2-4032*y-7168*y^2=0 -> [16]
[16+32*x,9+32*y]: unknown 3264+15360*x+15360*x^2-4032*y-7168*y^2=0 -> [17]
[0+32*x,25+32*y]: failure constant=-4384, vgcd=64
[16+32*x,25+32*y]: failure constant=-544, vgcd=64

expanding queue[9]: 384 + 3840*x + 3840*x^2 - 2016*y - 1792*y^2 = 0 modulo [2,2] *32
[8+32*x,9+32*y]: unknown 384+7680*x+15360*x^2-4032*y-7168*y^2=0 -> [18]
[24+32*x,9+32*y]: unknown 8064+23040*x+15360*x^2-4032*y-7168*y^2=0 -> [19]
[8+32*x,25+32*y]: failure constant=-3424, vgcd=64
[24+32*x,25+32*y]: failure constant=4256, vgcd=64

expanding queue[10]: 224 + 1920*x + 3840*x^2 - 224*y - 1792*y^2 = 0 modulo [2,2] *32
[4+32*x,1+32*y]: failure constant=224, vgcd=64
[20+32*x,1+32*y]: failure constant=5984, vgcd=64
[4+32*x,17+32*y]: unknown -1792+3840*x+15360*x^2-7616*y-7168*y^2=0 -> [20]
[20+32*x,17+32*y]: unknown 3968+19200*x+15360*x^2-7616*y-7168*y^2=0 -> [21]

expanding queue[11]: 2144 + 5760*x + 3840*x^2 - 224*y - 1792*y^2 = 0 modulo [2,2] *32
[12+32*x,1+32*y]: failure constant=2144, vgcd=64
[28+32*x,1+32*y]: failure constant=11744, vgcd=64
[12+32*x,17+32*y]: unknown 128+11520*x+15360*x^2-7616*y-7168*y^2=0 -> [22]
[28+32*x,17+32*y]: unknown 9728+26880*x+15360*x^2-7616*y-7168*y^2=0 -> [23]

expanding queue[12]:  - 352 + 3840*x^2 - 1568*y - 1792*y^2 = 0 modulo [2,2] *32
[0+32*x,7+32*y]: failure constant=-352, vgcd=64
[16+32*x,7+32*y]: failure constant=3488, vgcd=64
[0+32*x,23+32*y]: unknown -3712+15360*x^2-10304*y-7168*y^2=0 -> [24]
[16+32*x,23+32*y]: unknown 128+15360*x+15360*x^2-10304*y-7168*y^2=0 -> [25]

expanding queue[13]: 608 + 3840*x + 3840*x^2 - 1568*y - 1792*y^2 = 0 modulo [2,2] *32
[8+32*x,7+32*y]: failure constant=608, vgcd=64
[24+32*x,7+32*y]: failure constant=8288, vgcd=64
[8+32*x,23+32*y]: unknown -2752+7680*x+15360*x^2-10304*y-7168*y^2=0 -> [26]
[24+32*x,23+32*y]: unknown 4928+23040*x+15360*x^2-10304*y-7168*y^2=0 -> [27]

expanding queue[14]:  - 1344 + 1920*x + 3840*x^2 - 3360*y - 1792*y^2 = 0 modulo [2,2] *32
[4+32*x,15+32*y]: unknown -1344+3840*x+15360*x^2-6720*y-7168*y^2=0 -> [28]
[20+32*x,15+32*y]: unknown 4416+19200*x+15360*x^2-6720*y-7168*y^2=0 -> [29]
[4+32*x,31+32*y]: failure constant=-6496, vgcd=64
[20+32*x,31+32*y]: failure constant=-736, vgcd=64

expanding queue[15]: 576 + 5760*x + 3840*x^2 - 3360*y - 1792*y^2 = 0 modulo [2,2] *32
[12+32*x,15+32*y]: unknown 576+11520*x+15360*x^2-6720*y-7168*y^2=0 -> [30]
[28+32*x,15+32*y]: unknown 10176+26880*x+15360*x^2-6720*y-7168*y^2=0 -> [31]
[12+32*x,31+32*y]: failure constant=-4576, vgcd=64
[28+32*x,31+32*y]: failure constant=5024, vgcd=64

expanding queue[16]:  - 576 + 15360*x^2 - 4032*y - 7168*y^2 = 0 modulo [2,2] *64
[0+64*x,9+64*y]: failure constant=-576, vgcd=128
[32+64*x,9+64*y]: failure constant=14784, vgcd=128
[0+64*x,41+64*y]: unknown -11776+61440*x^2-36736*y-28672*y^2=0 -> [32]
[32+64*x,41+64*y]: unknown 3584+61440*x+61440*x^2-36736*y-28672*y^2=0 -> [33]

expanding queue[17]: 3264 + 15360*x + 15360*x^2 - 4032*y - 7168*y^2 = 0 modulo [2,2] *64
[16+64*x,9+64*y]: failure constant=3264, vgcd=128
[48+64*x,9+64*y]: failure constant=33984, vgcd=128
[16+64*x,41+64*y]: unknown -7936+30720*x+61440*x^2-36736*y-28672*y^2=0 -> [34]
[48+64*x,41+64*y]: unknown 22784+92160*x+61440*x^2-36736*y-28672*y^2=0 -> [35]

expanding queue[18]: 384 + 7680*x + 15360*x^2 - 4032*y - 7168*y^2 = 0 modulo [2,2] *64
[8+64*x,9+64*y]: unknown 384+15360*x+61440*x^2-8064*y-28672*y^2=0 -> [36]
[40+64*x,9+64*y]: unknown 23424+76800*x+61440*x^2-8064*y-28672*y^2=0 -> [37]
[8+64*x,41+64*y]: failure constant=-10816, vgcd=128
[40+64*x,41+64*y]: failure constant=12224, vgcd=128

expanding queue[19]: 8064 + 23040*x + 15360*x^2 - 4032*y - 7168*y^2 = 0 modulo [2,2] *64
[24+64*x,9+64*y]: unknown 8064+46080*x+61440*x^2-8064*y-28672*y^2=0 -> [38]
[56+64*x,9+64*y]: unknown 46464+107520*x+61440*x^2-8064*y-28672*y^2=0 -> [39]
[24+64*x,41+64*y]: failure constant=-3136, vgcd=128
[56+64*x,41+64*y]: failure constant=35264, vgcd=128

expanding queue[20]:  - 1792 + 3840*x + 15360*x^2 - 7616*y - 7168*y^2 = 0 modulo [2,2] *64
[4+64*x,17+64*y]: unknown -1792+7680*x+61440*x^2-15232*y-28672*y^2=0 -> [40]
[36+64*x,17+64*y]: unknown 17408+69120*x+61440*x^2-15232*y-28672*y^2=0 -> [41]
[4+64*x,49+64*y]: failure constant=-16576, vgcd=128
[36+64*x,49+64*y]: failure constant=2624, vgcd=128

expanding queue[21]: 3968 + 19200*x + 15360*x^2 - 7616*y - 7168*y^2 = 0 modulo [2,2] *64
[20+64*x,17+64*y]: unknown 3968+38400*x+61440*x^2-15232*y-28672*y^2=0 -> [42]
[52+64*x,17+64*y]: unknown 38528+99840*x+61440*x^2-15232*y-28672*y^2=0 -> [43]
[20+64*x,49+64*y]: failure constant=-10816, vgcd=128
[52+64*x,49+64*y]: failure constant=23744, vgcd=128

expanding queue[22]: 128 + 11520*x + 15360*x^2 - 7616*y - 7168*y^2 = 0 modulo [2,2] *64
[12+64*x,17+64*y]: unknown 128+23040*x+61440*x^2-15232*y-28672*y^2=0 -> [44]
[44+64*x,17+64*y]: unknown 27008+84480*x+61440*x^2-15232*y-28672*y^2=0 -> [45]
[12+64*x,49+64*y]: failure constant=-14656, vgcd=128
[44+64*x,49+64*y]: failure constant=12224, vgcd=128

expanding queue[23]: 9728 + 26880*x + 15360*x^2 - 7616*y - 7168*y^2 = 0 modulo [2,2] *64
[28+64*x,17+64*y]: unknown 9728+53760*x+61440*x^2-15232*y-28672*y^2=0 -> [46]
[60+64*x,17+64*y]: unknown 51968+115200*x+61440*x^2-15232*y-28672*y^2=0 -> [47]
[28+64*x,49+64*y]: failure constant=-5056, vgcd=128
[60+64*x,49+64*y]: failure constant=37184, vgcd=128

expanding queue[24]:  - 3712 + 15360*x^2 - 10304*y - 7168*y^2 = 0 modulo [2,2] *64
[0+64*x,23+64*y]: unknown -3712+61440*x^2-20608*y-28672*y^2=0 -> [48]
[32+64*x,23+64*y]: unknown 11648+61440*x+61440*x^2-20608*y-28672*y^2=0 -> [49]
[0+64*x,55+64*y]: failure constant=-21184, vgcd=128
[32+64*x,55+64*y]: failure constant=-5824, vgcd=128

expanding queue[25]: 128 + 15360*x + 15360*x^2 - 10304*y - 7168*y^2 = 0 modulo [2,2] *64
[16+64*x,23+64*y]: unknown 128+30720*x+61440*x^2-20608*y-28672*y^2=0 -> [50]
[48+64*x,23+64*y]: unknown 30848+92160*x+61440*x^2-20608*y-28672*y^2=0 -> [51]
[16+64*x,55+64*y]: failure constant=-17344, vgcd=128
[48+64*x,55+64*y]: failure constant=13376, vgcd=128

expanding queue[26]:  - 2752 + 7680*x + 15360*x^2 - 10304*y - 7168*y^2 = 0 modulo [2,2] *64
[8+64*x,23+64*y]: failure constant=-2752, vgcd=128
[40+64*x,23+64*y]: failure constant=20288, vgcd=128
[8+64*x,55+64*y]: unknown -20224+15360*x+61440*x^2-49280*y-28672*y^2=0 -> [52]
[40+64*x,55+64*y]: unknown 2816+76800*x+61440*x^2-49280*y-28672*y^2=0 -> [53]

expanding queue[27]: 4928 + 23040*x + 15360*x^2 - 10304*y - 7168*y^2 = 0 modulo [2,2] *64
[24+64*x,23+64*y]: failure constant=4928, vgcd=128
[56+64*x,23+64*y]: failure constant=43328, vgcd=128
[24+64*x,55+64*y]: unknown -12544+46080*x+61440*x^2-49280*y-28672*y^2=0 -> [54]
[56+64*x,55+64*y]: unknown 25856+107520*x+61440*x^2-49280*y-28672*y^2=0 -> [55]

expanding queue[28]:  - 1344 + 3840*x + 15360*x^2 - 6720*y - 7168*y^2 = 0 modulo [2,2] *64
[4+64*x,15+64*y]: failure constant=-1344, vgcd=128
[36+64*x,15+64*y]: failure constant=17856, vgcd=128
[4+64*x,47+64*y]: unknown -15232+7680*x+61440*x^2-42112*y-28672*y^2=0 -> [56]
[36+64*x,47+64*y]: unknown 3968+69120*x+61440*x^2-42112*y-28672*y^2=0 -> [57]

expanding queue[29]: 4416 + 19200*x + 15360*x^2 - 6720*y - 7168*y^2 = 0 modulo [2,2] *64
[20+64*x,15+64*y]: failure constant=4416, vgcd=128
[52+64*x,15+64*y]: failure constant=38976, vgcd=128
[20+64*x,47+64*y]: unknown -9472+38400*x+61440*x^2-42112*y-28672*y^2=0 -> [58]
[52+64*x,47+64*y]: unknown 25088+99840*x+61440*x^2-42112*y-28672*y^2=0 -> [59]

expanding queue[30]: 576 + 11520*x + 15360*x^2 - 6720*y - 7168*y^2 = 0 modulo [2,2] *64
[12+64*x,15+64*y]: failure constant=576, vgcd=128
[44+64*x,15+64*y]: failure constant=27456, vgcd=128
[12+64*x,47+64*y]: unknown -13312+23040*x+61440*x^2-42112*y-28672*y^2=0 -> [60]
[44+64*x,47+64*y]: unknown 13568+84480*x+61440*x^2-42112*y-28672*y^2=0 -> [61]

expanding queue[31]: 10176 + 26880*x + 15360*x^2 - 6720*y - 7168*y^2 = 0 modulo [2,2] *64
[28+64*x,15+64*y]: failure constant=10176, vgcd=128
[60+64*x,15+64*y]: failure constant=52416, vgcd=128
[28+64*x,47+64*y]: unknown -3712+53760*x+61440*x^2-42112*y-28672*y^2=0 -> [62]
[60+64*x,47+64*y]: unknown 38528+115200*x+61440*x^2-42112*y-28672*y^2=0 -> [63]

expanding queue[32]:  - 11776 + 61440*x^2 - 36736*y - 28672*y^2 = 0 modulo [2,2] *128
[0+128*x,41+128*y]: unknown -11776+245760*x^2-73472*y-114688*y^2=0 -> [64]
[64+128*x,41+128*y]: unknown 49664+245760*x+245760*x^2-73472*y-114688*y^2=0 -> [65]
[0+128*x,105+128*y]: failure constant=-77184, vgcd=256
[64+128*x,105+128*y]: failure constant=-15744, vgcd=256

expanding queue[33]: 3584 + 61440*x + 61440*x^2 - 36736*y - 28672*y^2 = 0 modulo [2,2] *128
[32+128*x,41+128*y]: unknown 3584+122880*x+245760*x^2-73472*y-114688*y^2=0 -> [66]
[96+128*x,41+128*y]: unknown 126464+368640*x+245760*x^2-73472*y-114688*y^2=0 -> [67]
[32+128*x,105+128*y]: failure constant=-61824, vgcd=256
[96+128*x,105+128*y]: failure constant=61056, vgcd=256

expanding queue[34]:  - 7936 + 30720*x + 61440*x^2 - 36736*y - 28672*y^2 = 0 modulo [2,2] *128
[16+128*x,41+128*y]: unknown -7936+61440*x+245760*x^2-73472*y-114688*y^2=0 -> [68]
[80+128*x,41+128*y]: unknown 84224+307200*x+245760*x^2-73472*y-114688*y^2=0 -> [69]
[16+128*x,105+128*y]: failure constant=-73344, vgcd=256
[80+128*x,105+128*y]: failure constant=18816, vgcd=256

expanding queue[35]: 22784 + 92160*x + 61440*x^2 - 36736*y - 28672*y^2 = 0 modulo [2,2] *128
[48+128*x,41+128*y]: unknown 22784+184320*x+245760*x^2-73472*y-114688*y^2=0 -> [70]
[112+128*x,41+128*y]: unknown 176384+430080*x+245760*x^2-73472*y-114688*y^2=0 -> [71]
[48+128*x,105+128*y]: failure constant=-42624, vgcd=256
[112+128*x,105+128*y]: failure constant=110976, vgcd=256

expanding queue[36]: 384 + 15360*x + 61440*x^2 - 8064*y - 28672*y^2 = 0 modulo [2,2] *128
[8+128*x,9+128*y]: failure constant=384, vgcd=256
[72+128*x,9+128*y]: failure constant=77184, vgcd=256
[8+128*x,73+128*y]: unknown -36352+30720*x+245760*x^2-130816*y-114688*y^2=0 -> [72]
[72+128*x,73+128*y]: unknown 40448+276480*x+245760*x^2-130816*y-114688*y^2=0 -> [73]

expanding queue[37]: 23424 + 76800*x + 61440*x^2 - 8064*y - 28672*y^2 = 0 modulo [2,2] *128
[40+128*x,9+128*y]: failure constant=23424, vgcd=256
[104+128*x,9+128*y]: failure constant=161664, vgcd=256
[40+128*x,73+128*y]: unknown -13312+153600*x+245760*x^2-130816*y-114688*y^2=0 -> [74]
[104+128*x,73+128*y]: unknown 124928+399360*x+245760*x^2-130816*y-114688*y^2=0 -> [75]

expanding queue[38]: 8064 + 46080*x + 61440*x^2 - 8064*y - 28672*y^2 = 0 modulo [2,2] *128
[24+128*x,9+128*y]: failure constant=8064, vgcd=256
[88+128*x,9+128*y]: failure constant=115584, vgcd=256
[24+128*x,73+128*y]: unknown -28672+92160*x+245760*x^2-130816*y-114688*y^2=0 -> [76]
[88+128*x,73+128*y]: unknown 78848+337920*x+245760*x^2-130816*y-114688*y^2=0 -> [77]

expanding queue[39]: 46464 + 107520*x + 61440*x^2 - 8064*y - 28672*y^2 = 0 modulo [2,2] *128
[56+128*x,9+128*y]: failure constant=46464, vgcd=256
[120+128*x,9+128*y]: failure constant=215424, vgcd=256
[56+128*x,73+128*y]: unknown 9728+215040*x+245760*x^2-130816*y-114688*y^2=0 -> [78]
[120+128*x,73+128*y]: unknown 178688+460800*x+245760*x^2-130816*y-114688*y^2=0 -> [79]

expanding queue[40]:  - 1792 + 7680*x + 61440*x^2 - 15232*y - 28672*y^2 = 0 modulo [2,2] *128
[4+128*x,17+128*y]: unknown -1792+15360*x+245760*x^2-30464*y-114688*y^2=0 -> [80]
[68+128*x,17+128*y]: unknown 67328+261120*x+245760*x^2-30464*y-114688*y^2=0 -> [81]
[4+128*x,81+128*y]: failure constant=-45696, vgcd=256
[68+128*x,81+128*y]: failure constant=23424, vgcd=256

expanding queue[41]: 17408 + 69120*x + 61440*x^2 - 15232*y - 28672*y^2 = 0 modulo [2,2] *128
[36+128*x,17+128*y]: unknown 17408+138240*x+245760*x^2-30464*y-114688*y^2=0 -> [82]
[100+128*x,17+128*y]: unknown 147968+384000*x+245760*x^2-30464*y-114688*y^2=0 -> [83]
[36+128*x,81+128*y]: failure constant=-26496, vgcd=256
[100+128*x,81+128*y]: failure constant=104064, vgcd=256

expanding queue[42]: 3968 + 38400*x + 61440*x^2 - 15232*y - 28672*y^2 = 0 modulo [2,2] *128
[20+128*x,17+128*y]: failure constant=3968, vgcd=256
[84+128*x,17+128*y]: failure constant=103808, vgcd=256
[20+128*x,81+128*y]: unknown -39936+76800*x+245760*x^2-145152*y-114688*y^2=0 -> [84]
[84+128*x,81+128*y]: unknown 59904+322560*x+245760*x^2-145152*y-114688*y^2=0 -> [85]

expanding queue[43]: 38528 + 99840*x + 61440*x^2 - 15232*y - 28672*y^2 = 0 modulo [2,2] *128
[52+128*x,17+128*y]: failure constant=38528, vgcd=256
[116+128*x,17+128*y]: failure constant=199808, vgcd=256
[52+128*x,81+128*y]: unknown -5376+199680*x+245760*x^2-145152*y-114688*y^2=0 -> [86]
[116+128*x,81+128*y]: unknown 155904+445440*x+245760*x^2-145152*y-114688*y^2=0 -> [87]

expanding queue[44]: 128 + 23040*x + 61440*x^2 - 15232*y - 28672*y^2 = 0 modulo [2,2] *128
[12+128*x,17+128*y]: failure constant=128, vgcd=256
[76+128*x,17+128*y]: failure constant=84608, vgcd=256
[12+128*x,81+128*y]: unknown -43776+46080*x+245760*x^2-145152*y-114688*y^2=0 -> [88]
[76+128*x,81+128*y]: unknown 40704+291840*x+245760*x^2-145152*y-114688*y^2=0 -> [89]

expanding queue[45]: 27008 + 84480*x + 61440*x^2 - 15232*y - 28672*y^2 = 0 modulo [2,2] *128
[44+128*x,17+128*y]: failure constant=27008, vgcd=256
[108+128*x,17+128*y]: failure constant=172928, vgcd=256
[44+128*x,81+128*y]: unknown -16896+168960*x+245760*x^2-145152*y-114688*y^2=0 -> [90]
[108+128*x,81+128*y]: unknown 129024+414720*x+245760*x^2-145152*y-114688*y^2=0 -> [91]

expanding queue[46]: 9728 + 53760*x + 61440*x^2 - 15232*y - 28672*y^2 = 0 modulo [2,2] *128
[28+128*x,17+128*y]: unknown 9728+107520*x+245760*x^2-30464*y-114688*y^2=0 -> [92]
[92+128*x,17+128*y]: unknown 124928+353280*x+245760*x^2-30464*y-114688*y^2=0 -> [93]
[28+128*x,81+128*y]: failure constant=-34176, vgcd=256
[92+128*x,81+128*y]: failure constant=81024, vgcd=256

expanding queue[47]: 51968 + 115200*x + 61440*x^2 - 15232*y - 28672*y^2 = 0 modulo [2,2] *128
[60+128*x,17+128*y]: unknown 51968+230400*x+245760*x^2-30464*y-114688*y^2=0 -> [94]
[124+128*x,17+128*y]: unknown 228608+476160*x+245760*x^2-30464*y-114688*y^2=0 -> [95]
[60+128*x,81+128*y]: failure constant=8064, vgcd=256
[124+128*x,81+128*y]: failure constant=184704, vgcd=256

expanding queue[48]:  - 3712 + 61440*x^2 - 20608*y - 28672*y^2 = 0 modulo [2,2] *128
[0+128*x,23+128*y]: failure constant=-3712, vgcd=256
[64+128*x,23+128*y]: failure constant=57728, vgcd=256
[0+128*x,87+128*y]: unknown -52992+245760*x^2-155904*y-114688*y^2=0 -> [96]
[64+128*x,87+128*y]: unknown 8448+245760*x+245760*x^2-155904*y-114688*y^2=0 -> [97]

expanding queue[49]: 11648 + 61440*x + 61440*x^2 - 20608*y - 28672*y^2 = 0 modulo [2,2] *128
[32+128*x,23+128*y]: failure constant=11648, vgcd=256
[96+128*x,23+128*y]: failure constant=134528, vgcd=256
[32+128*x,87+128*y]: unknown -37632+122880*x+245760*x^2-155904*y-114688*y^2=0 -> [98]
[96+128*x,87+128*y]: unknown 85248+368640*x+245760*x^2-155904*y-114688*y^2=0 -> [99]

expanding queue[50]: 128 + 30720*x + 61440*x^2 - 20608*y - 28672*y^2 = 0 modulo [2,2] *128
[16+128*x,23+128*y]: failure constant=128, vgcd=256
[80+128*x,23+128*y]: failure constant=92288, vgcd=256
[16+128*x,87+128*y]: unknown -49152+61440*x+245760*x^2-155904*y-114688*y^2=0 -> [100]
[80+128*x,87+128*y]: unknown 43008+307200*x+245760*x^2-155904*y-114688*y^2=0 -> [101]

expanding queue[51]: 30848 + 92160*x + 61440*x^2 - 20608*y - 28672*y^2 = 0 modulo [2,2] *128
[48+128*x,23+128*y]: failure constant=30848, vgcd=256
[112+128*x,23+128*y]: failure constant=184448, vgcd=256
[48+128*x,87+128*y]: unknown -18432+184320*x+245760*x^2-155904*y-114688*y^2=0 -> [102]
[112+128*x,87+128*y]: unknown 135168+430080*x+245760*x^2-155904*y-114688*y^2=0 -> [103]

expanding queue[52]:  - 20224 + 15360*x + 61440*x^2 - 49280*y - 28672*y^2 = 0 modulo [2,2] *128
[8+128*x,55+128*y]: unknown -20224+30720*x+245760*x^2-98560*y-114688*y^2=0 -> [104]
[72+128*x,55+128*y]: unknown 56576+276480*x+245760*x^2-98560*y-114688*y^2=0 -> [105]
[8+128*x,119+128*y]: failure constant=-98176, vgcd=256
[72+128*x,119+128*y]: failure constant=-21376, vgcd=256

expanding queue[53]: 2816 + 76800*x + 61440*x^2 - 49280*y - 28672*y^2 = 0 modulo [2,2] *128
[40+128*x,55+128*y]: unknown 2816+153600*x+245760*x^2-98560*y-114688*y^2=0 -> [106]
[104+128*x,55+128*y]: unknown 141056+399360*x+245760*x^2-98560*y-114688*y^2=0 -> [107]
[40+128*x,119+128*y]: failure constant=-75136, vgcd=256
[104+128*x,119+128*y]: failure constant=63104, vgcd=256

expanding queue[54]:  - 12544 + 46080*x + 61440*x^2 - 49280*y - 28672*y^2 = 0 modulo [2,2] *128
[24+128*x,55+128*y]: unknown -12544+92160*x+245760*x^2-98560*y-114688*y^2=0 -> [108]
[88+128*x,55+128*y]: unknown 94976+337920*x+245760*x^2-98560*y-114688*y^2=0 -> [109]
[24+128*x,119+128*y]: failure constant=-90496, vgcd=256
[88+128*x,119+128*y]: failure constant=17024, vgcd=256

expanding queue[55]: 25856 + 107520*x + 61440*x^2 - 49280*y - 28672*y^2 = 0 modulo [2,2] *128
[56+128*x,55+128*y]: unknown 25856+215040*x+245760*x^2-98560*y-114688*y^2=0 -> [110]
[120+128*x,55+128*y]: unknown 194816+460800*x+245760*x^2-98560*y-114688*y^2=0 -> [111]
[56+128*x,119+128*y]: failure constant=-52096, vgcd=256
[120+128*x,119+128*y]: failure constant=116864, vgcd=256

expanding queue[56]:  - 15232 + 7680*x + 61440*x^2 - 42112*y - 28672*y^2 = 0 modulo [2,2] *128
[4+128*x,47+128*y]: failure constant=-15232, vgcd=256
[68+128*x,47+128*y]: failure constant=53888, vgcd=256
[4+128*x,111+128*y]: unknown -86016+15360*x+245760*x^2-198912*y-114688*y^2=0 -> [112]
[68+128*x,111+128*y]: unknown -16896+261120*x+245760*x^2-198912*y-114688*y^2=0 -> [113]

expanding queue[57]: 3968 + 69120*x + 61440*x^2 - 42112*y - 28672*y^2 = 0 modulo [2,2] *128
[36+128*x,47+128*y]: failure constant=3968, vgcd=256
[100+128*x,47+128*y]: failure constant=134528, vgcd=256
[36+128*x,111+128*y]: unknown -66816+138240*x+245760*x^2-198912*y-114688*y^2=0 -> [114]
[100+128*x,111+128*y]: unknown 63744+384000*x+245760*x^2-198912*y-114688*y^2=0 -> [115]

expanding queue[58]:  - 9472 + 38400*x + 61440*x^2 - 42112*y - 28672*y^2 = 0 modulo [2,2] *128
[20+128*x,47+128*y]: unknown -9472+76800*x+245760*x^2-84224*y-114688*y^2=0 -> [116]
[84+128*x,47+128*y]: unknown 90368+322560*x+245760*x^2-84224*y-114688*y^2=0 -> [117]
[20+128*x,111+128*y]: failure constant=-80256, vgcd=256
[84+128*x,111+128*y]: failure constant=19584, vgcd=256

expanding queue[59]: 25088 + 99840*x + 61440*x^2 - 42112*y - 28672*y^2 = 0 modulo [2,2] *128
[52+128*x,47+128*y]: unknown 25088+199680*x+245760*x^2-84224*y-114688*y^2=0 -> [118]
[116+128*x,47+128*y]: unknown 186368+445440*x+245760*x^2-84224*y-114688*y^2=0 -> [119]
[52+128*x,111+128*y]: failure constant=-45696, vgcd=256
[116+128*x,111+128*y]: failure constant=115584, vgcd=256

expanding queue[60]:  - 13312 + 23040*x + 61440*x^2 - 42112*y - 28672*y^2 = 0 modulo [2,2] *128
[12+128*x,47+128*y]: unknown -13312+46080*x+245760*x^2-84224*y-114688*y^2=0 -> [120]
[76+128*x,47+128*y]: unknown 71168+291840*x+245760*x^2-84224*y-114688*y^2=0 -> [121]
[12+128*x,111+128*y]: failure constant=-84096, vgcd=256
[76+128*x,111+128*y]: failure constant=384, vgcd=256

expanding queue[61]: 13568 + 84480*x + 61440*x^2 - 42112*y - 28672*y^2 = 0 modulo [2,2] *128
[44+128*x,47+128*y]: unknown 13568+168960*x+245760*x^2-84224*y-114688*y^2=0 -> [122]
[108+128*x,47+128*y]: unknown 159488+414720*x+245760*x^2-84224*y-114688*y^2=0 -> [123]
[44+128*x,111+128*y]: failure constant=-57216, vgcd=256
[108+128*x,111+128*y]: failure constant=88704, vgcd=256

expanding queue[62]:  - 3712 + 53760*x + 61440*x^2 - 42112*y - 28672*y^2 = 0 modulo [2,2] *128
[28+128*x,47+128*y]: failure constant=-3712, vgcd=256
[92+128*x,47+128*y]: failure constant=111488, vgcd=256
[28+128*x,111+128*y]: unknown -74496+107520*x+245760*x^2-198912*y-114688*y^2=0 -> [124]
[92+128*x,111+128*y]: unknown 40704+353280*x+245760*x^2-198912*y-114688*y^2=0 -> [125]

expanding queue[63]: 38528 + 115200*x + 61440*x^2 - 42112*y - 28672*y^2 = 0 modulo [2,2] *128
[60+128*x,47+128*y]: failure constant=38528, vgcd=256
[124+128*x,47+128*y]: failure constant=215168, vgcd=256
[60+128*x,111+128*y]: unknown -32256+230400*x+245760*x^2-198912*y-114688*y^2=0 -> [126]
[124+128*x,111+128*y]: unknown 144384+476160*x+245760*x^2-198912*y-114688*y^2=0 -> [127]
Maximum level 6 reached, queue size = 128