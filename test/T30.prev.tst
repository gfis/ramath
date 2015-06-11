Expanding for base=2, transposables={{x},{y}}, reasons+features=base,transpose,same,dogrow

expanding queue[0]^-1: 2 - 4*x^2 + 4*x^4 - 2*y^2 = 0 meter=[1,2] *2
[0+1*x,0+2*y]: failure constant=2, vgcd=4
[0+1*x,1+2*y]: success [0,1],trivial(1) success [1,1],trivial(2)  -4*x^2+4*x^4-8*y-8*y^2=0 -> [1]

expanding queue[1]^0:  - 4*x^2 + 4*x^4 - 8*y - 8*y^2 = 0 meter=[2,1] *4
[0+2*x,1+2*y]: success [0,1],trivial(1) , grown from [1]*4,16,1,1 -16*x^2+64*x^4-8*y-8*y^2=0 -> [2]
[1+2*x,1+2*y]: success [1,1],trivial(2)  16*x+80*x^2+128*x^3+64*x^4-8*y-8*y^2=0 -> [3]

expanding queue[2]^1:  - 16*x^2 + 64*x^4 - 8*y - 8*y^2 = 0 meter=[1,2] *8
[0+2*x,1+4*y]: success [0,1],trivial(1) success [2,5],NONTRIVIAL , grown from [2]*1,1,2,4, grown from [1]*4,16,2,4 -16*x^2+64*x^4-16*y-32*y^2=0 -> [4]
[0+2*x,3+4*y]: unknown -16-16*x^2+64*x^4-48*y-32*y^2=0 -> [5]

expanding queue[3]^1: 16*x + 80*x^2 + 128*x^3 + 64*x^4 - 8*y - 8*y^2 = 0 meter=[1,2] *8
[1+2*x,1+4*y]: success [1,1],trivial(2) , grown from [3]*1,1,1,1,2,4 16*x+80*x^2+128*x^3+64*x^4-16*y-32*y^2=0 -> [6]
[1+2*x,3+4*y]: unknown -16+16*x+80*x^2+128*x^3+64*x^4-48*y-32*y^2=0 -> [7]

expanding queue[4]^2:  - 16*x^2 + 64*x^4 - 16*y - 32*y^2 = 0 meter=[2,2] *16
[0+4*x,1+8*y]: success [0,1],trivial(1) , grown from [4]*4,16,2,4, grown from [2]*4,16,4,16, grown from [1]*16,256,4,16 -64*x^2+1024*x^4-32*y-128*y^2=0 -> [8]
[2+4*x,1+8*y]: failure constant=48, vgcd=32
[0+4*x,5+8*y]: failure constant=-48, vgcd=32
[2+4*x,5+8*y]: success [2,5],NONTRIVIAL  448*x+1472*x^2+2048*x^3+1024*x^4-160*y-128*y^2=0 -> [9]

expanding queue[5]^2:  - 16 - 16*x^2 + 64*x^4 - 48*y - 32*y^2 = 0 meter=[2,2] *16
[0+4*x,3+8*y]: failure constant=-16, vgcd=32
[2+4*x,3+8*y]: unknown 32+448*x+1472*x^2+2048*x^3+1024*x^4-96*y-128*y^2=0 -> [10]
[0+4*x,7+8*y]: unknown -96-64*x^2+1024*x^4-224*y-128*y^2=0 -> [11]
[2+4*x,7+8*y]: failure constant=-48, vgcd=32

expanding queue[6]^3: 16*x + 80*x^2 + 128*x^3 + 64*x^4 - 16*y - 32*y^2 = 0 meter=[2,2] *16
[1+4*x,1+8*y]: success [1,1],trivial(2) , grown from [6]*2,4,8,16,2,4, grown from [3]*2,4,8,16,4,16 32*x+320*x^2+1024*x^3+1024*x^4-32*y-128*y^2=0 -> [12]
[3+4*x,1+8*y]: unknown 288+1632*x+3392*x^2+3072*x^3+1024*x^4-32*y-128*y^2=0 -> [13]
[1+4*x,5+8*y]: failure constant=-48, vgcd=32
[3+4*x,5+8*y]: failure constant=240, vgcd=32

expanding queue[7]^3:  - 16 + 16*x + 80*x^2 + 128*x^3 + 64*x^4 - 48*y - 32*y^2 = 0 meter=[2,2] *16
[1+4*x,3+8*y]: failure constant=-16, vgcd=32
[3+4*x,3+8*y]: failure constant=272, vgcd=32
[1+4*x,7+8*y]: unknown -96+32*x+320*x^2+1024*x^3+1024*x^4-224*y-128*y^2=0 -> [14]
[3+4*x,7+8*y]: unknown 192+1632*x+3392*x^2+3072*x^3+1024*x^4-224*y-128*y^2=0 -> [15]

expanding queue[8]^4:  - 64*x^2 + 1024*x^4 - 32*y - 128*y^2 = 0 meter=[1,2] *32
[0+4*x,1+16*y]: success [0,1],trivial(1) , grown from [8]*1,1,2,4, grown from [4]*4,16,4,16, grown from [2]*4,16,8,64, grown from [1]*16,256,8,64 -64*x^2+1024*x^4-64*y-512*y^2=0 -> [16]
[0+4*x,9+16*y]: failure constant=-160, vgcd=64

expanding queue[9]^4: 448*x + 1472*x^2 + 2048*x^3 + 1024*x^4 - 160*y - 128*y^2 = 0 meter=[1,2] *32
[2+4*x,5+16*y]: success [2,5],NONTRIVIAL , grown from [9]*1,1,1,1,2,4 448*x+1472*x^2+2048*x^3+1024*x^4-320*y-512*y^2=0 -> [17]
[2+4*x,13+16*y]: failure constant=-288, vgcd=64

expanding queue[10]^5: 32 + 448*x + 1472*x^2 + 2048*x^3 + 1024*x^4 - 96*y - 128*y^2 = 0 meter=[1,2] *32
[2+4*x,3+16*y]: failure constant=32, vgcd=64
[2+4*x,11+16*y]: unknown -192+448*x+1472*x^2+2048*x^3+1024*x^4-704*y-512*y^2=0 -> [18]

expanding queue[11]^5:  - 96 - 64*x^2 + 1024*x^4 - 224*y - 128*y^2 = 0 meter=[1,2] *32
[0+4*x,7+16*y]: failure constant=-96, vgcd=64
[0+4*x,15+16*y]: unknown, grown from [5]*28,4,16,20,16 -448-64*x^2+1024*x^4-960*y-512*y^2=0 -> [19]

expanding queue[12]^6: 32*x + 320*x^2 + 1024*x^3 + 1024*x^4 - 32*y - 128*y^2 = 0 meter=[2,2] *32
[1+8*x,1+16*y]: success [1,1],trivial(2) , grown from [12]*2,4,8,16,2,4, grown from [6]*4,16,64,256,4,16, grown from [3]*4,16,64,256,8,64 64*x+1280*x^2+8192*x^3+16384*x^4-64*y-512*y^2=0 -> [20]
[5+8*x,1+16*y]: failure constant=2400, vgcd=64
[1+8*x,9+16*y]: failure constant=-160, vgcd=64
[5+8*x,9+16*y]: unknown 2240+15680*x+38144*x^2+40960*x^3+16384*x^4-576*y-512*y^2=0 -> [21]

expanding queue[13]^6: 288 + 1632*x + 3392*x^2 + 3072*x^3 + 1024*x^4 - 32*y - 128*y^2 = 0 meter=[2,2] *32
[3+8*x,1+16*y]: failure constant=288, vgcd=64
[7+8*x,1+16*y]: unknown 9408+43456*x+75008*x^2+57344*x^3+16384*x^4-64*y-512*y^2=0 -> [22]
[3+8*x,9+16*y]: unknown 128+3264*x+13568*x^2+24576*x^3+16384*x^4-576*y-512*y^2=0 -> [23]
[7+8*x,9+16*y]: failure constant=9248, vgcd=64

expanding queue[14]^7:  - 96 + 32*x + 320*x^2 + 1024*x^3 + 1024*x^4 - 224*y - 128*y^2 = 0 meter=[2,2] *32
[1+8*x,7+16*y]: failure constant=-96, vgcd=64
[5+8*x,7+16*y]: unknown 2304+15680*x+38144*x^2+40960*x^3+16384*x^4-448*y-512*y^2=0 -> [24]
[1+8*x,15+16*y]: unknown, grown from [7]*28,4,16,64,256,20,16 -448+64*x+1280*x^2+8192*x^3+16384*x^4-960*y-512*y^2=0 -> [25]
[5+8*x,15+16*y]: failure constant=1952, vgcd=64

expanding queue[15]^7: 192 + 1632*x + 3392*x^2 + 3072*x^3 + 1024*x^4 - 224*y - 128*y^2 = 0 meter=[2,2] *32
[3+8*x,7+16*y]: unknown, grown from [15]*1,2,4,8,16,2,4 192+3264*x+13568*x^2+24576*x^3+16384*x^4-448*y-512*y^2=0 -> [26]
[7+8*x,7+16*y]: failure constant=9312, vgcd=64
[3+8*x,15+16*y]: failure constant=-160, vgcd=64
[7+8*x,15+16*y]: unknown 8960+43456*x+75008*x^2+57344*x^3+16384*x^4-960*y-512*y^2=0 -> [27]
Maximum level 4 reached, queue size = 28
