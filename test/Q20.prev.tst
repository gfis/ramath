Expanding for base=2, transposables=[0,0,0], reasons+features=base,transpose,same,similiar,grow

expanding queue[0]: x^2 + y^2 - 2*x*y*z + z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: success [0,0,0],trivial(3)  4*x^2+4*y^2-16*x*y*z+4*z^2=0 -> [1]
[1+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=1, vgcd=4
[1+2*x,1+2*y,0+2*z]: failure constant=2, vgcd=4
[0+2*x,0+2*y,1+2*z]: failure constant=1, vgcd=4
[1+2*x,0+2*y,1+2*z]: failure constant=2, vgcd=4
[0+2*x,1+2*y,1+2*z]: failure constant=2, vgcd=4
[1+2*x,1+2*y,1+2*z]: failure constant=1, vgcd=4

expanding queue[1]: 4*x^2 + 4*y^2 - 16*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[0+4*x,0+4*y,0+4*z]: success [0,0,0],trivial(3)  16*x^2+16*y^2-128*x*y*z+16*z^2=0 -> [2]
[2+4*x,0+4*y,0+4*z]: failure constant=4, vgcd=16
[0+4*x,2+4*y,0+4*z]: failure constant=4, vgcd=16
[2+4*x,2+4*y,0+4*z]: failure constant=8, vgcd=16
[0+4*x,0+4*y,2+4*z]: failure constant=4, vgcd=16
[2+4*x,0+4*y,2+4*z]: failure constant=8, vgcd=16
[0+4*x,2+4*y,2+4*z]: failure constant=8, vgcd=16
[2+4*x,2+4*y,2+4*z]: failure constant=-4, vgcd=16

expanding queue[2]: 16*x^2 + 16*y^2 - 128*x*y*z + 16*z^2 = 0 modulo [2,2,2] *8
[0+8*x,0+8*y,0+8*z]: success [0,0,0],trivial(3)  64*x^2+64*y^2-1024*x*y*z+64*z^2=0 -> [3]
[4+8*x,0+8*y,0+8*z]: failure constant=16, vgcd=64
[0+8*x,4+8*y,0+8*z]: failure constant=16, vgcd=64
[4+8*x,4+8*y,0+8*z]: failure constant=32, vgcd=64
[0+8*x,0+8*y,4+8*z]: failure constant=16, vgcd=64
[4+8*x,0+8*y,4+8*z]: failure constant=32, vgcd=64
[0+8*x,4+8*y,4+8*z]: failure constant=32, vgcd=64
[4+8*x,4+8*y,4+8*z]: failure constant=-80, vgcd=64

expanding queue[3]: 64*x^2 + 64*y^2 - 1024*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[0+16*x,0+16*y,0+16*z]: success [0,0,0],trivial(3)  256*x^2+256*y^2-8192*x*y*z+256*z^2=0 -> [4]
[8+16*x,0+16*y,0+16*z]: failure constant=64, vgcd=256
[0+16*x,8+16*y,0+16*z]: failure constant=64, vgcd=256
[8+16*x,8+16*y,0+16*z]: failure constant=128, vgcd=256
[0+16*x,0+16*y,8+16*z]: failure constant=64, vgcd=256
[8+16*x,0+16*y,8+16*z]: failure constant=128, vgcd=256
[0+16*x,8+16*y,8+16*z]: failure constant=128, vgcd=256
[8+16*x,8+16*y,8+16*z]: failure constant=-832, vgcd=256

expanding queue[4]: 256*x^2 + 256*y^2 - 8192*x*y*z + 256*z^2 = 0 modulo [2,2,2] *32
[0+32*x,0+32*y,0+32*z]: success [0,0,0],trivial(3)  1024*x^2+1024*y^2-65536*x*y*z+1024*z^2=0 -> [5]
[16+32*x,0+32*y,0+32*z]: failure constant=256, vgcd=1024
[0+32*x,16+32*y,0+32*z]: failure constant=256, vgcd=1024
[16+32*x,16+32*y,0+32*z]: failure constant=512, vgcd=1024
[0+32*x,0+32*y,16+32*z]: failure constant=256, vgcd=1024
[16+32*x,0+32*y,16+32*z]: failure constant=512, vgcd=1024
[0+32*x,16+32*y,16+32*z]: failure constant=512, vgcd=1024
[16+32*x,16+32*y,16+32*z]: failure constant=-7424, vgcd=1024

expanding queue[5]: 1024*x^2 + 1024*y^2 - 65536*x*y*z + 1024*z^2 = 0 modulo [2,2,2] *64
[0+64*x,0+64*y,0+64*z]: success [0,0,0],trivial(3)  4096*x^2+4096*y^2-524288*x*y*z+4096*z^2=0 -> [6]
[32+64*x,0+64*y,0+64*z]: failure constant=1024, vgcd=4096
[0+64*x,32+64*y,0+64*z]: failure constant=1024, vgcd=4096
[32+64*x,32+64*y,0+64*z]: failure constant=2048, vgcd=4096
[0+64*x,0+64*y,32+64*z]: failure constant=1024, vgcd=4096
[32+64*x,0+64*y,32+64*z]: failure constant=2048, vgcd=4096
[0+64*x,32+64*y,32+64*z]: failure constant=2048, vgcd=4096
[32+64*x,32+64*y,32+64*z]: failure constant=-62464, vgcd=4096

expanding queue[6]: 4096*x^2 + 4096*y^2 - 524288*x*y*z + 4096*z^2 = 0 modulo [2,2,2] *128
[0+128*x,0+128*y,0+128*z]: success [0,0,0],trivial(3)  16384*x^2+16384*y^2-4194304*x*y*z+16384*z^2=0 -> [7]
[64+128*x,0+128*y,0+128*z]: failure constant=4096, vgcd=16384
[0+128*x,64+128*y,0+128*z]: failure constant=4096, vgcd=16384
[64+128*x,64+128*y,0+128*z]: failure constant=8192, vgcd=16384
[0+128*x,0+128*y,64+128*z]: failure constant=4096, vgcd=16384
[64+128*x,0+128*y,64+128*z]: failure constant=8192, vgcd=16384
[0+128*x,64+128*y,64+128*z]: failure constant=8192, vgcd=16384
[64+128*x,64+128*y,64+128*z]: failure constant=-512000, vgcd=16384

expanding queue[7]: 16384*x^2 + 16384*y^2 - 4194304*x*y*z + 16384*z^2 = 0 modulo [2,2,2] *256
[0+256*x,0+256*y,0+256*z]: success [0,0,0],trivial(3)  65536*x^2+65536*y^2-33554432*x*y*z+65536*z^2=0 -> [8]
[128+256*x,0+256*y,0+256*z]: failure constant=16384, vgcd=65536
[0+256*x,128+256*y,0+256*z]: failure constant=16384, vgcd=65536
[128+256*x,128+256*y,0+256*z]: failure constant=32768, vgcd=65536
[0+256*x,0+256*y,128+256*z]: failure constant=16384, vgcd=65536
[128+256*x,0+256*y,128+256*z]: failure constant=32768, vgcd=65536
[0+256*x,128+256*y,128+256*z]: failure constant=32768, vgcd=65536
[128+256*x,128+256*y,128+256*z]: failure constant=-4145152, vgcd=65536
Maximum level 7 reached, queue size = 9
