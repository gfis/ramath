Expanding for base 2, transposables =    0   0   2

expanding queue[0]: x^4 + y^4 - z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: similiar to  [0], affine map: {x=(2*x),y=(2*y),z=(2*z)}  16*x^4+16*y^4-4*z^2=0 success [0,0,0],trivial(3) 
[1+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=1, vgcd=4
[1+2*x,1+2*y,0+2*z]: failure constant=2, vgcd=4
[0+2*x,0+2*y,1+2*z]: failure constant=-1, vgcd=4
[1+2*x,0+2*y,1+2*z]: success [1,0,1],trivial(3)  8*x+24*x^2+32*x^3+16*x^4+16*y^4-4*z-4*z^2=0 -> [1]
[0+2*x,1+2*y,1+2*z]: failure transposition of [1] {0/0+2*y,0/1+2*x,2/1+2*z} by 0+2*y|0+2*x 1+2*x|1+2*y success [0,1,1],trivial(3) 
[1+2*x,1+2*y,1+2*z]: failure constant=1, vgcd=4

expanding queue[1]: 8*x + 24*x^2 + 32*x^3 + 16*x^4 + 16*y^4 - 4*z - 4*z^2 = 0 modulo [1,1,2] *4
[1+2*x,0+2*y,1+4*z]: similiar to  [1], affine map: {x=(1*x),y=(1*y),z=(2*z)}  8*x+24*x^2+32*x^3+16*x^4+16*y^4-8*z-16*z^2=0 success [1,0,1],trivial(3) 
[1+2*x,0+2*y,3+4*z]: unknown -8+8*x+24*x^2+32*x^3+16*x^4+16*y^4-24*z-16*z^2=0 -> [2]

expanding queue[2]:  - 8 + 8*x + 24*x^2 + 32*x^3 + 16*x^4 + 16*y^4 - 24*z - 16*z^2 = 0 modulo [2,1,2] *8
[1+4*x,0+2*y,3+8*z]: failure constant=-8, vgcd=16
[3+4*x,0+2*y,3+8*z]: failure constant=72, vgcd=16
[1+4*x,0+2*y,7+8*z]: unknown -48+16*x+96*x^2+256*x^3+256*x^4+16*y^4-112*z-64*z^2=0 -> [3]
[3+4*x,0+2*y,7+8*z]: grown from [1] 32+432*x+864*x^2+768*x^3+256*x^4+16*y^4-112*z-64*z^2=0

expanding queue[3]:  - 48 + 16*x + 96*x^2 + 256*x^3 + 256*x^4 + 16*y^4 - 112*z - 64*z^2 = 0 modulo [2,2,2] *16
[1+8*x,0+4*y,7+16*z]: failure constant=-48, vgcd=32
[5+8*x,0+4*y,7+16*z]: unknown 576+4000*x+9600*x^2+10240*x^3+4096*x^4+256*y^4-224*z-256*z^2=0 -> [4]
[1+8*x,2+4*y,7+16*z]: unknown -32+32*x+384*x^2+2048*x^3+4096*x^4+128*y+384*y^2+512*y^3+256*y^4-224*z-256*z^2=0 -> [5]
[5+8*x,2+4*y,7+16*z]: failure constant=592, vgcd=32
[1+8*x,0+4*y,15+16*z]: grown from [2] -224+32*x+384*x^2+2048*x^3+4096*x^4+256*y^4-480*z-256*z^2=0
[5+8*x,0+4*y,15+16*z]: failure constant=400, vgcd=32
[1+8*x,2+4*y,15+16*z]: failure constant=-208, vgcd=32
[5+8*x,2+4*y,15+16*z]: unknown 416+4000*x+9600*x^2+10240*x^3+4096*x^4+128*y+384*y^2+512*y^3+256*y^4-480*z-256*z^2=0 -> [6]

expanding queue[4]: 576 + 4000*x + 9600*x^2 + 10240*x^3 + 4096*x^4 + 256*y^4 - 224*z - 256*z^2 = 0 modulo [2,1,2] *32
[5+16*x,0+4*y,7+32*z]: similiar to  [4], affine map: {x=(2*x),y=(1*y),z=(2*z)}  576+8000*x+38400*x^2+81920*x^3+65536*x^4+256*y^4-448*z-1024*z^2=0
[13+16*x,0+4*y,7+32*z]: failure constant=28512, vgcd=64
[5+16*x,0+4*y,23+32*z]: failure constant=96, vgcd=64
[13+16*x,0+4*y,23+32*z]: grown from [1] 28032+140608*x+259584*x^2+212992*x^3+65536*x^4+256*y^4-1472*z-1024*z^2=0

expanding queue[5]:  - 32 + 32*x + 384*x^2 + 2048*x^3 + 4096*x^4 + 128*y + 384*y^2 + 512*y^3 + 256*y^4 - 224*z - 256*z^2 = 0 modulo [2,1,2] *32
[1+16*x,2+4*y,7+32*z]: failure constant=-32, vgcd=64
[9+16*x,2+4*y,7+32*z]: unknown 6528+46656*x+124416*x^2+147456*x^3+65536*x^4+128*y+384*y^2+512*y^3+256*y^4-448*z-1024*z^2=0 -> [7]
[1+16*x,2+4*y,23+32*z]: grown from [3] -512+64*x+1536*x^2+16384*x^3+65536*x^4+128*y+384*y^2+512*y^3+256*y^4-1472*z-1024*z^2=0
[9+16*x,2+4*y,23+32*z]: failure constant=6048, vgcd=64

expanding queue[6]: 416 + 4000*x + 9600*x^2 + 10240*x^3 + 4096*x^4 + 128*y + 384*y^2 + 512*y^3 + 256*y^4 - 480*z - 256*z^2 = 0 modulo [2,1,2] *32
[5+16*x,2+4*y,15+32*z]: failure constant=416, vgcd=64
[13+16*x,2+4*y,15+32*z]: unknown 28352+140608*x+259584*x^2+212992*x^3+65536*x^4+128*y+384*y^2+512*y^3+256*y^4-960*z-1024*z^2=0 -> [8]
[5+16*x,2+4*y,31+32*z]: grown from [3] -320+8000*x+38400*x^2+81920*x^3+65536*x^4+128*y+384*y^2+512*y^3+256*y^4-1984*z-1024*z^2=0
[13+16*x,2+4*y,31+32*z]: failure constant=27616, vgcd=64
Maximum level 4 reached, queue size = 9
