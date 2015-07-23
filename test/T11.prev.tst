Expanding for base=2, transposables={{x,y,z}}, reasons+features=base,transpose,same,dogrow
----------------
expanding queue[0]^-1: x^2 + y^2 - 4*x*y*z + z^2 = 0 meter=[2,2,2] *2
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+2*z]: unknown, grown from [0]*4,4,8,4 4*x^2+4*y^2-32*x*y*z+4*z^2=0 -> [1]
----------------
expanding queue[1]^0: 4*x^2 + 4*y^2 - 32*x*y*z + 4*z^2 = 0 meter=[2,2,2] *4
solution [0,0,0],trivial(3)
[0+4*x,0+4*y,0+4*z]: unknown, grown from [1]*4,4,8,4, grown from [0]*16,16,64,16 16*x^2+16*y^2-256*x*y*z+16*z^2=0 -> [2]
----------------
expanding queue[2]^1: 16*x^2 + 16*y^2 - 256*x*y*z + 16*z^2 = 0 meter=[2,2,2] *8
solution [0,0,0],trivial(3)
[0+8*x,0+8*y,0+8*z]: unknown, grown from [2]*4,4,8,4, grown from [1]*16,16,64,16, grown from [0]*64,64,512,64 64*x^2+64*y^2-2048*x*y*z+64*z^2=0 -> [3]
----------------
expanding queue[3]^2: 64*x^2 + 64*y^2 - 2048*x*y*z + 64*z^2 = 0 meter=[2,2,2] *16
solution [0,0,0],trivial(3)
[0+16*x,0+16*y,0+16*z]: unknown, grown from [3]*4,4,8,4, grown from [2]*16,16,64,16, grown from [1]*64,64,512,64, grown from [0]*256,256,4096,256 256*x^2+256*y^2-16384*x*y*z+256*z^2=0 -> [4]
----------------
expanding queue[4]^3: 256*x^2 + 256*y^2 - 16384*x*y*z + 256*z^2 = 0 meter=[2,2,2] *32
solution [0,0,0],trivial(3)
[0+32*x,0+32*y,0+32*z]: unknown, grown from [4]*4,4,8,4, grown from [3]*16,16,64,16, grown from [2]*64,64,512,64, grown from [1]*256,256,4096,256, grown from [0]*1024,1024,32768,1024 1024*x^2+1024*y^2-131072*x*y*z+1024*z^2=0 -> [5]
----------------
expanding queue[5]^4: 1024*x^2 + 1024*y^2 - 131072*x*y*z + 1024*z^2 = 0 meter=[2,2,2] *64
solution [0,0,0],trivial(3)
[0+64*x,0+64*y,0+64*z]: unknown, grown from [5]*4,4,8,4, grown from [4]*16,16,64,16, grown from [3]*64,64,512,64, grown from [2]*256,256,4096,256, grown from [1]*1024,1024,32768,1024, grown from [0]*4096,4096,262144,4096 4096*x^2+4096*y^2-1048576*x*y*z+4096*z^2=0 -> [6]
----------------
expanding queue[6]^5: 4096*x^2 + 4096*y^2 - 1048576*x*y*z + 4096*z^2 = 0 meter=[2,2,2] *128
solution [0,0,0],trivial(3)
[0+128*x,0+128*y,0+128*z]: unknown, grown from [6]*4,4,8,4, grown from [5]*16,16,64,16, grown from [4]*64,64,512,64, grown from [3]*256,256,4096,256, grown from [2]*1024,1024,32768,1024, grown from [1]*4096,4096,262144,4096, grown from [0]*16384,16384,2097152,16384 16384*x^2+16384*y^2-8388608*x*y*z+16384*z^2=0 -> [7]
----------------
expanding queue[7]^6: 16384*x^2 + 16384*y^2 - 8388608*x*y*z + 16384*z^2 = 0 meter=[2,2,2] *256
solution [0,0,0],trivial(3)
[0+256*x,0+256*y,0+256*z]: unknown, grown from [7]*4,4,8,4, grown from [6]*16,16,64,16, grown from [5]*64,64,512,64, grown from [4]*256,256,4096,256, grown from [3]*1024,1024,32768,1024, grown from [2]*4096,4096,262144,4096, grown from [1]*16384,16384,2097152,16384, grown from [0]*65536,65536,16777216,65536 65536*x^2+65536*y^2-67108864*x*y*z+65536*z^2=0 -> [8]
----------------
expanding queue[8]^7: 65536*x^2 + 65536*y^2 - 67108864*x*y*z + 65536*z^2 = 0 meter=[2,2,2] *512
solution [0,0,0],trivial(3)
[0+512*x,0+512*y,0+512*z]: unknown, grown from [8]*4,4,8,4, grown from [7]*16,16,64,16, grown from [6]*64,64,512,64, grown from [5]*256,256,4096,256, grown from [4]*1024,1024,32768,1024, grown from [3]*4096,4096,262144,4096, grown from [2]*16384,16384,2097152,16384, grown from [1]*65536,65536,16777216,65536, grown from [0]*262144,262144,134217728,262144 262144*x^2+262144*y^2-536870912*x*y*z+262144*z^2=0 -> [9]
Maximum level 8 reached, queue size = 10
