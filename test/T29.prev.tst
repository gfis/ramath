Expanding for base=2, transposables={{x},{y}}, reasons+features=base,transpose,same,dogrow

expanding queue[0]^-1: 4 + x^2 - y^3 = 0 meter=[2,2] *2
[0+2*x,0+2*y]: success [2,2],trivial(2) , grown from [0]*1,4,8 4+4*x^2-8*y^3=0 -> [1]
[1+2*x,0+2*y]: failure constant=5, vgcd=4
[0+2*x,1+2*y]: failure constant=3, vgcd=2
[1+2*x,1+2*y]: unknown 4+4*x+4*x^2-6*y-12*y^2-8*y^3=0 -> [2]

expanding queue[1]^0: 4 + 4*x^2 - 8*y^3 = 0 meter=[2,1] *4
[0+4*x,0+2*y]: failure constant=4, vgcd=8
[2+4*x,0+2*y]: success [2,2],trivial(2)  8+16*x+16*x^2-8*y^3=0 -> [3]

expanding queue[2]^0: 4 + 4*x + 4*x^2 - 6*y - 12*y^2 - 8*y^3 = 0 meter=[2,2] *4
[1+4*x,1+4*y]: unknown, grown from [2]*1,2,4,2,4,8 4+8*x+16*x^2-12*y-48*y^2-64*y^3=0 -> [4]
[3+4*x,1+4*y]: unknown, grown from [2]*3,6,4,2,4,8 12+24*x+16*x^2-12*y-48*y^2-64*y^3=0 -> [5]
[1+4*x,3+4*y]: failure constant=-22, vgcd=4
[3+4*x,3+4*y]: failure constant=-14, vgcd=4

expanding queue[3]^1: 8 + 16*x + 16*x^2 - 8*y^3 = 0 meter=[1,2] *8
[2+4*x,0+4*y]: failure constant=8, vgcd=16
[2+4*x,2+4*y]: success [2,2],trivial(2)  16*x+16*x^2-48*y-96*y^2-64*y^3=0 -> [6]

expanding queue[4]^2: 4 + 8*x + 16*x^2 - 12*y - 48*y^2 - 64*y^3 = 0 meter=[2,2] *8
[1+8*x,1+8*y]: failure constant=4, vgcd=8
[5+8*x,1+8*y]: failure constant=28, vgcd=8
[1+8*x,5+8*y]: unknown -120+16*x+64*x^2-600*y-960*y^2-512*y^3=0 -> [7]
[5+8*x,5+8*y]: unknown -96+80*x+64*x^2-600*y-960*y^2-512*y^3=0 -> [8]

expanding queue[5]^2: 12 + 24*x + 16*x^2 - 12*y - 48*y^2 - 64*y^3 = 0 meter=[2,2] *8
[3+8*x,1+8*y]: failure constant=12, vgcd=8
[7+8*x,1+8*y]: failure constant=52, vgcd=8
[3+8*x,5+8*y]: success [11,5],NONTRIVIAL  -112+48*x+64*x^2-600*y-960*y^2-512*y^3=0 -> [9]
[7+8*x,5+8*y]: unknown -72+112*x+64*x^2-600*y-960*y^2-512*y^3=0 -> [10]

expanding queue[6]^3: 16*x + 16*x^2 - 48*y - 96*y^2 - 64*y^3 = 0 meter=[2,2] *16
[2+8*x,2+8*y]: success [2,2],trivial(2) , grown from [6]*2,4,2,4,8 32*x+64*x^2-96*y-384*y^2-512*y^3=0 -> [11]
[6+8*x,2+8*y]: unknown 32+96*x+64*x^2-96*y-384*y^2-512*y^3=0 -> [12]
[2+8*x,6+8*y]: failure constant=-208, vgcd=32
[6+8*x,6+8*y]: failure constant=-176, vgcd=32

expanding queue[7]^4:  - 120 + 16*x + 64*x^2 - 600*y - 960*y^2 - 512*y^3 = 0 meter=[2,2] *16
[1+16*x,5+16*y]: failure constant=-120, vgcd=16
[9+16*x,5+16*y]: failure constant=-40, vgcd=16
[1+16*x,13+16*y]: unknown -2192+32*x+256*x^2-8112*y-9984*y^2-4096*y^3=0 -> [13]
[9+16*x,13+16*y]: unknown -2112+288*x+256*x^2-8112*y-9984*y^2-4096*y^3=0 -> [14]

expanding queue[8]^4:  - 96 + 80*x + 64*x^2 - 600*y - 960*y^2 - 512*y^3 = 0 meter=[2,2] *16
[5+16*x,5+16*y]: unknown, grown from [8]*1,2,4,2,4,8 -96+160*x+256*x^2-1200*y-3840*y^2-4096*y^3=0 -> [15]
[13+16*x,5+16*y]: unknown, grown from [4]*12,52,16,100,80,64, grown from [2]*12,104,64,200,320,512 48+416*x+256*x^2-1200*y-3840*y^2-4096*y^3=0 -> [16]
[5+16*x,13+16*y]: failure constant=-2168, vgcd=16
[13+16*x,13+16*y]: failure constant=-2024, vgcd=16

expanding queue[9]^5:  - 112 + 48*x + 64*x^2 - 600*y - 960*y^2 - 512*y^3 = 0 meter=[2,2] *16
[3+16*x,5+16*y]: unknown, grown from [9]*1,2,4,2,4,8 -112+96*x+256*x^2-1200*y-3840*y^2-4096*y^3=0 -> [17]
[11+16*x,5+16*y]: success [11,5],NONTRIVIAL  352*x+256*x^2-1200*y-3840*y^2-4096*y^3=0 -> [18]
[3+16*x,13+16*y]: failure constant=-2184, vgcd=16
[11+16*x,13+16*y]: failure constant=-2072, vgcd=16

expanding queue[10]^5:  - 72 + 112*x + 64*x^2 - 600*y - 960*y^2 - 512*y^3 = 0 meter=[2,2] *16
[7+16*x,5+16*y]: failure constant=-72, vgcd=16
[15+16*x,5+16*y]: failure constant=104, vgcd=16
[7+16*x,13+16*y]: unknown -2144+224*x+256*x^2-8112*y-9984*y^2-4096*y^3=0 -> [19]
[15+16*x,13+16*y]: unknown -1968+480*x+256*x^2-8112*y-9984*y^2-4096*y^3=0 -> [20]

expanding queue[11]^6: 32*x + 64*x^2 - 96*y - 384*y^2 - 512*y^3 = 0 meter=[2,2] *32
[2+16*x,2+16*y]: success [2,2],trivial(2) , grown from [11]*2,4,2,4,8, grown from [6]*4,16,4,16,64 64*x+256*x^2-192*y-1536*y^2-4096*y^3=0 -> [21]
[10+16*x,2+16*y]: failure constant=96, vgcd=64
[2+16*x,10+16*y]: failure constant=-992, vgcd=64
[10+16*x,10+16*y]: unknown -896+320*x+256*x^2-4800*y-7680*y^2-4096*y^3=0 -> [22]

expanding queue[12]^6: 32 + 96*x + 64*x^2 - 96*y - 384*y^2 - 512*y^3 = 0 meter=[2,2] *32
[6+16*x,2+16*y]: failure constant=32, vgcd=64
[14+16*x,2+16*y]: unknown 192+448*x+256*x^2-192*y-1536*y^2-4096*y^3=0 -> [23]
[6+16*x,10+16*y]: unknown -960+192*x+256*x^2-4800*y-7680*y^2-4096*y^3=0 -> [24]
[14+16*x,10+16*y]: failure constant=-800, vgcd=64

expanding queue[13]^7:  - 2192 + 32*x + 256*x^2 - 8112*y - 9984*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[1+32*x,13+32*y]: failure constant=-2192, vgcd=32
[17+32*x,13+32*y]: failure constant=-1904, vgcd=32
[1+32*x,29+32*y]: unknown -24384+64*x+1024*x^2-80736*y-89088*y^2-32768*y^3=0 -> [25]
[17+32*x,29+32*y]: unknown -24096+1088*x+1024*x^2-80736*y-89088*y^2-32768*y^3=0 -> [26]

expanding queue[14]^7:  - 2112 + 288*x + 256*x^2 - 8112*y - 9984*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[9+32*x,13+32*y]: unknown, grown from [14]*1,2,4,2,4,8 -2112+576*x+1024*x^2-16224*y-39936*y^2-32768*y^3=0 -> [27]
[25+32*x,13+32*y]: unknown -1568+1600*x+1024*x^2-16224*y-39936*y^2-32768*y^3=0 -> [28]
[9+32*x,29+32*y]: failure constant=-24304, vgcd=32
[25+32*x,29+32*y]: failure constant=-23760, vgcd=32

expanding queue[15]^8:  - 96 + 160*x + 256*x^2 - 1200*y - 3840*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[5+32*x,5+32*y]: unknown, grown from [15]*1,2,4,2,4,8, grown from [8]*1,4,16,4,16,64 -96+320*x+1024*x^2-2400*y-15360*y^2-32768*y^3=0 -> [29]
[21+32*x,5+32*y]: unknown, grown from [4]*80,168,64,200,320,512, grown from [2]*80,336,256,400,1280,4096 320+1344*x+1024*x^2-2400*y-15360*y^2-32768*y^3=0 -> [30]
[5+32*x,21+32*y]: failure constant=-9232, vgcd=32
[21+32*x,21+32*y]: failure constant=-8816, vgcd=32

expanding queue[16]^8: 48 + 416*x + 256*x^2 - 1200*y - 3840*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[13+32*x,5+32*y]: failure constant=48, vgcd=32
[29+32*x,5+32*y]: failure constant=720, vgcd=32
[13+32*x,21+32*y]: unknown -9088+832*x+1024*x^2-42336*y-64512*y^2-32768*y^3=0 -> [31]
[29+32*x,21+32*y]: unknown -8416+1856*x+1024*x^2-42336*y-64512*y^2-32768*y^3=0 -> [32]

expanding queue[17]^9:  - 112 + 96*x + 256*x^2 - 1200*y - 3840*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[3+32*x,5+32*y]: failure constant=-112, vgcd=32
[19+32*x,5+32*y]: failure constant=240, vgcd=32
[3+32*x,21+32*y]: unknown -9248+192*x+1024*x^2-42336*y-64512*y^2-32768*y^3=0 -> [33]
[19+32*x,21+32*y]: unknown -8896+1216*x+1024*x^2-42336*y-64512*y^2-32768*y^3=0 -> [34]

expanding queue[18]^9: 352*x + 256*x^2 - 1200*y - 3840*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[11+32*x,5+32*y]: success [11,5],NONTRIVIAL , grown from [18]*2,4,2,4,8 704*x+1024*x^2-2400*y-15360*y^2-32768*y^3=0 -> [35]
[27+32*x,5+32*y]: unknown, grown from [2]*152,432,256,400,1280,4096 608+1728*x+1024*x^2-2400*y-15360*y^2-32768*y^3=0 -> [36]
[11+32*x,21+32*y]: failure constant=-9136, vgcd=32
[27+32*x,21+32*y]: failure constant=-8528, vgcd=32

expanding queue[19]^10:  - 2144 + 224*x + 256*x^2 - 8112*y - 9984*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[7+32*x,13+32*y]: unknown, grown from [19]*1,2,4,2,4,8 -2144+448*x+1024*x^2-16224*y-39936*y^2-32768*y^3=0 -> [37]
[23+32*x,13+32*y]: unknown -1664+1472*x+1024*x^2-16224*y-39936*y^2-32768*y^3=0 -> [38]
[7+32*x,29+32*y]: failure constant=-24336, vgcd=32
[23+32*x,29+32*y]: failure constant=-23856, vgcd=32

expanding queue[20]^10:  - 1968 + 480*x + 256*x^2 - 8112*y - 9984*y^2 - 4096*y^3 = 0 meter=[2,2] *32
[15+32*x,13+32*y]: failure constant=-1968, vgcd=32
[31+32*x,13+32*y]: failure constant=-1232, vgcd=32
[15+32*x,29+32*y]: unknown -24160+960*x+1024*x^2-80736*y-89088*y^2-32768*y^3=0 -> [39]
[31+32*x,29+32*y]: unknown -23424+1984*x+1024*x^2-80736*y-89088*y^2-32768*y^3=0 -> [40]
Maximum level 4 reached, queue size = 41
