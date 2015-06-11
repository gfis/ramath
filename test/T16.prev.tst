Expanding for base=2, transposables={{a,b},{c}}, reasons+features=base,transpose,same,similiar,grow

expanding queue[0]^-1: a^2 + b^2 - c^2 = 0 meter=[2,2,2] *2
[0+2*a,0+2*b,0+2*c]: same form as 4*a^2+4*b^2-4*c^2=0 success [0,0,0],trivial(3) success [2,0,2],trivial(3) success [0,2,2],trivial(3) 
[1+2*a,0+2*b,0+2*c]: failure constant=1, vgcd=4
[0+2*a,1+2*b,0+2*c]: failure constant=1, vgcd=4
[1+2*a,1+2*b,0+2*c]: failure constant=2, vgcd=4
[0+2*a,0+2*b,1+2*c]: failure constant=-1, vgcd=4
[1+2*a,0+2*b,1+2*c]: success [1,0,1],trivial(3) success [3,0,3],trivial(3)  4*a+4*a^2+4*b^2-4*c-4*c^2=0 -> [1]
[0+2*a,1+2*b,1+2*c]: transposition of [1] {0/0+2*b,0/1+2*a,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b success [0,1,1],trivial(3) success [0,3,3],trivial(3) 
[1+2*a,1+2*b,1+2*c]: failure constant=1, vgcd=4

expanding queue[1]^0: 4*a + 4*a^2 + 4*b^2 - 4*c - 4*c^2 = 0 meter=[2,2,2] *4
[1+4*a,0+4*b,1+4*c]: grown from [1]*2,4,4,2,4 8*a+16*a^2+16*b^2-8*c-16*c^2=0 success [1,0,1],trivial(3) success [5,0,5],trivial(3) 
[3+4*a,0+4*b,1+4*c]: success [3,4,5],NONTRIVIAL  8+24*a+16*a^2+16*b^2-8*c-16*c^2=0 -> [2]
[1+4*a,2+4*b,1+4*c]: failure constant=4, vgcd=8
[3+4*a,2+4*b,1+4*c]: failure constant=12, vgcd=8
[1+4*a,0+4*b,3+4*c]: unknown -8+8*a+16*a^2+16*b^2-24*c-16*c^2=0 -> [3]
[3+4*a,0+4*b,3+4*c]: grown from [1]*6,4,4,6,4 24*a+16*a^2+16*b^2-24*c-16*c^2=0 success [3,0,3],trivial(3) success [7,0,7],trivial(3) 
[1+4*a,2+4*b,3+4*c]: failure constant=-4, vgcd=8
[3+4*a,2+4*b,3+4*c]: failure constant=4, vgcd=8

expanding queue[2]^1: 8 + 24*a + 16*a^2 + 16*b^2 - 8*c - 16*c^2 = 0 meter=[2,1,2] *8
[3+8*a,0+4*b,1+8*c]: failure constant=8, vgcd=16
[7+8*a,0+4*b,1+8*c]: unknown 48+112*a+64*a^2+16*b^2-16*c-64*c^2=0 -> [4]
[3+8*a,0+4*b,5+8*c]: success [3,4,5],NONTRIVIAL  -16+48*a+64*a^2+16*b^2-80*c-64*c^2=0 -> [5]
[7+8*a,0+4*b,5+8*c]: failure constant=24, vgcd=16

expanding queue[3]^1:  - 8 + 8*a + 16*a^2 + 16*b^2 - 24*c - 16*c^2 = 0 meter=[2,1,2] *8
[1+8*a,0+4*b,3+8*c]: failure constant=-8, vgcd=16
[5+8*a,0+4*b,3+8*c]: unknown 16+80*a+64*a^2+16*b^2-48*c-64*c^2=0 -> [6]
[1+8*a,0+4*b,7+8*c]: unknown -48+16*a+64*a^2+16*b^2-112*c-64*c^2=0 -> [7]
[5+8*a,0+4*b,7+8*c]: failure constant=-24, vgcd=16

expanding queue[4]^2: 48 + 112*a + 64*a^2 + 16*b^2 - 16*c - 64*c^2 = 0 meter=[2,2,2] *16
[7+16*a,0+8*b,1+16*c]: failure constant=48, vgcd=32
[15+16*a,0+8*b,1+16*c]: grown from [2]*28,20,16,4,4,16 224+480*a+256*a^2+64*b^2-32*c-256*c^2=0 success [15,8,17],NONTRIVIAL 
[7+16*a,4+8*b,1+16*c]: unknown 64+224*a+256*a^2+64*b+64*b^2-32*c-256*c^2=0 -> [8]
[15+16*a,4+8*b,1+16*c]: failure constant=240, vgcd=32
[7+16*a,0+8*b,9+16*c]: unknown -32+224*a+256*a^2+64*b^2-288*c-256*c^2=0 -> [9]
[15+16*a,0+8*b,9+16*c]: failure constant=144, vgcd=32
[7+16*a,4+8*b,9+16*c]: failure constant=-16, vgcd=32
[15+16*a,4+8*b,9+16*c]: unknown 160+480*a+256*a^2+64*b+64*b^2-288*c-256*c^2=0 -> [10]

expanding queue[5]^2:  - 16 + 48*a + 64*a^2 + 16*b^2 - 80*c - 64*c^2 = 0 meter=[2,2,2] *16
[3+16*a,0+8*b,5+16*c]: failure constant=-16, vgcd=32
[11+16*a,0+8*b,5+16*c]: unknown 96+352*a+256*a^2+64*b^2-160*c-256*c^2=0 -> [11]
[3+16*a,4+8*b,5+16*c]: success [3,4,5],NONTRIVIAL  96*a+256*a^2+64*b+64*b^2-160*c-256*c^2=0 -> [12]
[11+16*a,4+8*b,5+16*c]: failure constant=112, vgcd=32
[3+16*a,0+8*b,13+16*c]: unknown -160+96*a+256*a^2+64*b^2-416*c-256*c^2=0 -> [13]
[11+16*a,0+8*b,13+16*c]: failure constant=-48, vgcd=32
[3+16*a,4+8*b,13+16*c]: failure constant=-144, vgcd=32
[11+16*a,4+8*b,13+16*c]: unknown -32+352*a+256*a^2+64*b+64*b^2-416*c-256*c^2=0 -> [14]

expanding queue[6]^3: 16 + 80*a + 64*a^2 + 16*b^2 - 48*c - 64*c^2 = 0 meter=[2,2,2] *16
[5+16*a,0+8*b,3+16*c]: failure constant=16, vgcd=32
[13+16*a,0+8*b,3+16*c]: unknown 160+416*a+256*a^2+64*b^2-96*c-256*c^2=0 -> [15]
[5+16*a,4+8*b,3+16*c]: unknown 32+160*a+256*a^2+64*b+64*b^2-96*c-256*c^2=0 -> [16]
[13+16*a,4+8*b,3+16*c]: failure constant=176, vgcd=32
[5+16*a,0+8*b,11+16*c]: unknown -96+160*a+256*a^2+64*b^2-352*c-256*c^2=0 -> [17]
[13+16*a,0+8*b,11+16*c]: failure constant=48, vgcd=32
[5+16*a,4+8*b,11+16*c]: failure constant=-80, vgcd=32
[13+16*a,4+8*b,11+16*c]: unknown 64+416*a+256*a^2+64*b+64*b^2-352*c-256*c^2=0 -> [18]

expanding queue[7]^3:  - 48 + 16*a + 64*a^2 + 16*b^2 - 112*c - 64*c^2 = 0 meter=[2,2,2] *16
[1+16*a,0+8*b,7+16*c]: failure constant=-48, vgcd=32
[9+16*a,0+8*b,7+16*c]: unknown 32+288*a+256*a^2+64*b^2-224*c-256*c^2=0 -> [19]
[1+16*a,4+8*b,7+16*c]: unknown -32+32*a+256*a^2+64*b+64*b^2-224*c-256*c^2=0 -> [20]
[9+16*a,4+8*b,7+16*c]: failure constant=48, vgcd=32
[1+16*a,0+8*b,15+16*c]: grown from [3]*28,4,16,4,20,16 -224+32*a+256*a^2+64*b^2-480*c-256*c^2=0
[9+16*a,0+8*b,15+16*c]: failure constant=-144, vgcd=32
[1+16*a,4+8*b,15+16*c]: failure constant=-208, vgcd=32
[9+16*a,4+8*b,15+16*c]: success [9,12,15],NONTRIVIAL  -128+288*a+256*a^2+64*b+64*b^2-480*c-256*c^2=0 -> [21]

expanding queue[8]^4: 64 + 224*a + 256*a^2 + 64*b + 64*b^2 - 32*c - 256*c^2 = 0 meter=[2,1,2] *32
[7+32*a,4+8*b,1+32*c]: grown from [8]*1,2,4,1,1,2,4 64+448*a+1024*a^2+64*b+64*b^2-64*c-1024*c^2=0
[23+32*a,4+8*b,1+32*c]: failure constant=544, vgcd=64
[7+32*a,4+8*b,17+32*c]: failure constant=-224, vgcd=64
[23+32*a,4+8*b,17+32*c]: unknown 256+1472*a+1024*a^2+64*b+64*b^2-1088*c-1024*c^2=0 -> [22]

expanding queue[9]^4:  - 32 + 224*a + 256*a^2 + 64*b^2 - 288*c - 256*c^2 = 0 meter=[2,1,2] *32
[7+32*a,0+8*b,9+32*c]: failure constant=-32, vgcd=64
[23+32*a,0+8*b,9+32*c]: unknown 448+1472*a+1024*a^2+64*b^2-576*c-1024*c^2=0 -> [23]
[7+32*a,0+8*b,25+32*c]: unknown -576+448*a+1024*a^2+64*b^2-1600*c-1024*c^2=0 -> [24]
[23+32*a,0+8*b,25+32*c]: failure constant=-96, vgcd=64

expanding queue[10]^4: 160 + 480*a + 256*a^2 + 64*b + 64*b^2 - 288*c - 256*c^2 = 0 meter=[2,1,2] *32
[15+32*a,4+8*b,9+32*c]: failure constant=160, vgcd=64
[31+32*a,4+8*b,9+32*c]: unknown 896+1984*a+1024*a^2+64*b+64*b^2-576*c-1024*c^2=0 -> [25]
[15+32*a,4+8*b,25+32*c]: unknown -384+960*a+1024*a^2+64*b+64*b^2-1600*c-1024*c^2=0 -> [26]
[31+32*a,4+8*b,25+32*c]: failure constant=352, vgcd=64

expanding queue[11]^5: 96 + 352*a + 256*a^2 + 64*b^2 - 160*c - 256*c^2 = 0 meter=[2,1,2] *32
[11+32*a,0+8*b,5+32*c]: failure constant=96, vgcd=64
[27+32*a,0+8*b,5+32*c]: grown from [2]*88,72,64,4,40,64 704+1728*a+1024*a^2+64*b^2-320*c-1024*c^2=0
[11+32*a,0+8*b,21+32*c]: unknown -320+704*a+1024*a^2+64*b^2-1344*c-1024*c^2=0 -> [27]
[27+32*a,0+8*b,21+32*c]: failure constant=288, vgcd=64

expanding queue[12]^5: 96*a + 256*a^2 + 64*b + 64*b^2 - 160*c - 256*c^2 = 0 meter=[2,1,2] *32
[3+32*a,4+8*b,5+32*c]: grown from [12]*2,4,1,1,2,4 192*a+1024*a^2+64*b+64*b^2-320*c-1024*c^2=0 success [3,4,5],NONTRIVIAL success [35,12,37],NONTRIVIAL 
[19+32*a,4+8*b,5+32*c]: failure constant=352, vgcd=64
[3+32*a,4+8*b,21+32*c]: failure constant=-416, vgcd=64
[19+32*a,4+8*b,21+32*c]: unknown -64+1216*a+1024*a^2+64*b+64*b^2-1344*c-1024*c^2=0 -> [28]

expanding queue[13]^5:  - 160 + 96*a + 256*a^2 + 64*b^2 - 416*c - 256*c^2 = 0 meter=[2,1,2] *32
[3+32*a,0+8*b,13+32*c]: failure constant=-160, vgcd=64
[19+32*a,0+8*b,13+32*c]: unknown 192+1216*a+1024*a^2+64*b^2-832*c-1024*c^2=0 -> [29]
[3+32*a,0+8*b,29+32*c]: unknown -832+192*a+1024*a^2+64*b^2-1856*c-1024*c^2=0 -> [30]
[19+32*a,0+8*b,29+32*c]: failure constant=-480, vgcd=64

expanding queue[14]^5:  - 32 + 352*a + 256*a^2 + 64*b + 64*b^2 - 416*c - 256*c^2 = 0 meter=[2,1,2] *32
[11+32*a,4+8*b,13+32*c]: failure constant=-32, vgcd=64
[27+32*a,4+8*b,13+32*c]: unknown 576+1728*a+1024*a^2+64*b+64*b^2-832*c-1024*c^2=0 -> [31]
[11+32*a,4+8*b,29+32*c]: unknown -704+704*a+1024*a^2+64*b+64*b^2-1856*c-1024*c^2=0 -> [32]
[27+32*a,4+8*b,29+32*c]: failure constant=-96, vgcd=64

expanding queue[15]^6: 160 + 416*a + 256*a^2 + 64*b^2 - 96*c - 256*c^2 = 0 meter=[2,1,2] *32
[13+32*a,0+8*b,3+32*c]: failure constant=160, vgcd=64
[29+32*a,0+8*b,3+32*c]: unknown 832+1856*a+1024*a^2+64*b^2-192*c-1024*c^2=0 -> [33]
[13+32*a,0+8*b,19+32*c]: unknown -192+832*a+1024*a^2+64*b^2-1216*c-1024*c^2=0 -> [34]
[29+32*a,0+8*b,19+32*c]: failure constant=480, vgcd=64

expanding queue[16]^6: 32 + 160*a + 256*a^2 + 64*b + 64*b^2 - 96*c - 256*c^2 = 0 meter=[2,1,2] *32
[5+32*a,4+8*b,3+32*c]: failure constant=32, vgcd=64
[21+32*a,4+8*b,3+32*c]: unknown 448+1344*a+1024*a^2+64*b+64*b^2-192*c-1024*c^2=0 -> [35]
[5+32*a,4+8*b,19+32*c]: unknown -320+320*a+1024*a^2+64*b+64*b^2-1216*c-1024*c^2=0 -> [36]
[21+32*a,4+8*b,19+32*c]: failure constant=96, vgcd=64

expanding queue[17]^6:  - 96 + 160*a + 256*a^2 + 64*b^2 - 352*c - 256*c^2 = 0 meter=[2,1,2] *32
[5+32*a,0+8*b,11+32*c]: failure constant=-96, vgcd=64
[21+32*a,0+8*b,11+32*c]: unknown 320+1344*a+1024*a^2+64*b^2-704*c-1024*c^2=0 -> [37]
[5+32*a,0+8*b,27+32*c]: grown from [3]*88,40,64,4,72,64 -704+320*a+1024*a^2+64*b^2-1728*c-1024*c^2=0
[21+32*a,0+8*b,27+32*c]: failure constant=-288, vgcd=64

expanding queue[18]^6: 64 + 416*a + 256*a^2 + 64*b + 64*b^2 - 352*c - 256*c^2 = 0 meter=[2,1,2] *32
[13+32*a,4+8*b,11+32*c]: grown from [18]*1,2,4,1,1,2,4 64+832*a+1024*a^2+64*b+64*b^2-704*c-1024*c^2=0
[29+32*a,4+8*b,11+32*c]: failure constant=736, vgcd=64
[13+32*a,4+8*b,27+32*c]: failure constant=-544, vgcd=64
[29+32*a,4+8*b,27+32*c]: unknown 128+1856*a+1024*a^2+64*b+64*b^2-1728*c-1024*c^2=0 -> [38]

expanding queue[19]^7: 32 + 288*a + 256*a^2 + 64*b^2 - 224*c - 256*c^2 = 0 meter=[2,1,2] *32
[9+32*a,0+8*b,7+32*c]: failure constant=32, vgcd=64
[25+32*a,0+8*b,7+32*c]: unknown 576+1600*a+1024*a^2+64*b^2-448*c-1024*c^2=0 -> [39]
[9+32*a,0+8*b,23+32*c]: unknown -448+576*a+1024*a^2+64*b^2-1472*c-1024*c^2=0 -> [40]
[25+32*a,0+8*b,23+32*c]: failure constant=96, vgcd=64

expanding queue[20]^7:  - 32 + 32*a + 256*a^2 + 64*b + 64*b^2 - 224*c - 256*c^2 = 0 meter=[2,1,2] *32
[1+32*a,4+8*b,7+32*c]: failure constant=-32, vgcd=64
[17+32*a,4+8*b,7+32*c]: unknown 256+1088*a+1024*a^2+64*b+64*b^2-448*c-1024*c^2=0 -> [41]
[1+32*a,4+8*b,23+32*c]: unknown -512+64*a+1024*a^2+64*b+64*b^2-1472*c-1024*c^2=0 -> [42]
[17+32*a,4+8*b,23+32*c]: failure constant=-224, vgcd=64

expanding queue[21]^7:  - 128 + 288*a + 256*a^2 + 64*b + 64*b^2 - 480*c - 256*c^2 = 0 meter=[2,1,2] *32
[9+32*a,4+8*b,15+32*c]: grown from [21]*1,2,4,1,1,2,4 -128+576*a+1024*a^2+64*b+64*b^2-960*c-1024*c^2=0 success [9,12,15],NONTRIVIAL 
[25+32*a,4+8*b,15+32*c]: failure constant=416, vgcd=64
[9+32*a,4+8*b,31+32*c]: failure constant=-864, vgcd=64
[25+32*a,4+8*b,31+32*c]: unknown -320+1600*a+1024*a^2+64*b+64*b^2-1984*c-1024*c^2=0 -> [43]
Maximum level 4 reached, queue size = 44
