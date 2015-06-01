Expanding for base 2, transposables =    0   1

expanding queue[0]: 4 - x^3 + y^2 = 0 modulo [2,2] *2
[0+2*x,0+2*y]: grown from [0] 4-8*x^3+4*y^2=0 success [2,2],trivial(2) 
[1+2*x,0+2*y]: failure constant=3, vgcd=2
[0+2*x,1+2*y]: failure constant=5, vgcd=4
[1+2*x,1+2*y]: unknown 4-6*x-12*x^2-8*x^3+4*y+4*y^2=0 -> [1]

expanding queue[1]: 4 - 6*x - 12*x^2 - 8*x^3 + 4*y + 4*y^2 = 0 modulo [2,2] *4
[1+4*x,1+4*y]: grown from [0] 4-12*x-48*x^2-64*x^3+8*y+16*y^2=0
[3+4*x,1+4*y]: failure constant=-22, vgcd=4
[1+4*x,3+4*y]: unknown 12-12*x-48*x^2-64*x^3+24*y+16*y^2=0 -> [2]
[3+4*x,3+4*y]: failure constant=-14, vgcd=4

expanding queue[2]: 12 - 12*x - 48*x^2 - 64*x^3 + 24*y + 16*y^2 = 0 modulo [2,2] *8
[1+8*x,3+8*y]: failure constant=12, vgcd=8
[5+8*x,3+8*y]: success [5,11],NONTRIVIAL  -112-600*x-960*x^2-512*x^3+48*y+64*y^2=0 -> [3]
[1+8*x,7+8*y]: failure constant=52, vgcd=8
[5+8*x,7+8*y]: unknown -72-600*x-960*x^2-512*x^3+112*y+64*y^2=0 -> [4]

expanding queue[3]:  - 112 - 600*x - 960*x^2 - 512*x^3 + 48*y + 64*y^2 = 0 modulo [2,2] *16
[5+16*x,3+16*y]: grown from [0] -112-1200*x-3840*x^2-4096*x^3+96*y+256*y^2=0
[13+16*x,3+16*y]: failure constant=-2184, vgcd=16
[5+16*x,11+16*y]: grown from [2] -1200*x-3840*x^2-4096*x^3+352*y+256*y^2=0 success [5,11],NONTRIVIAL 
[13+16*x,11+16*y]: failure constant=-2072, vgcd=16

expanding queue[4]:  - 72 - 600*x - 960*x^2 - 512*x^3 + 112*y + 64*y^2 = 0 modulo [2,2] *16
[5+16*x,7+16*y]: failure constant=-72, vgcd=16
[13+16*x,7+16*y]: unknown -2144-8112*x-9984*x^2-4096*x^3+224*y+256*y^2=0 -> [5]
[5+16*x,15+16*y]: failure constant=104, vgcd=16
[13+16*x,15+16*y]: unknown -1968-8112*x-9984*x^2-4096*x^3+480*y+256*y^2=0 -> [6]

expanding queue[5]:  - 2144 - 8112*x - 9984*x^2 - 4096*x^3 + 224*y + 256*y^2 = 0 modulo [2,2] *32
[13+32*x,7+32*y]: grown from [0] -2144-16224*x-39936*x^2-32768*x^3+448*y+1024*y^2=0
[29+32*x,7+32*y]: failure constant=-24336, vgcd=32
[13+32*x,23+32*y]: unknown -1664-16224*x-39936*x^2-32768*x^3+1472*y+1024*y^2=0 -> [7]
[29+32*x,23+32*y]: failure constant=-23856, vgcd=32

expanding queue[6]:  - 1968 - 8112*x - 9984*x^2 - 4096*x^3 + 480*y + 256*y^2 = 0 modulo [2,2] *32
[13+32*x,15+32*y]: failure constant=-1968, vgcd=32
[29+32*x,15+32*y]: unknown -24160-80736*x-89088*x^2-32768*x^3+960*y+1024*y^2=0 -> [8]
[13+32*x,31+32*y]: failure constant=-1232, vgcd=32
[29+32*x,31+32*y]: unknown -23424-80736*x-89088*x^2-32768*x^3+1984*y+1024*y^2=0 -> [9]

expanding queue[7]:  - 1664 - 16224*x - 39936*x^2 - 32768*x^3 + 1472*y + 1024*y^2 = 0 modulo [2,2] *64
[13+64*x,23+64*y]: grown from [0] -1664-32448*x-159744*x^2-262144*x^3+2944*y+4096*y^2=0
[45+64*x,23+64*y]: failure constant=-90592, vgcd=64
[13+64*x,55+64*y]: unknown 832-32448*x-159744*x^2-262144*x^3+7040*y+4096*y^2=0 -> [10]
[45+64*x,55+64*y]: failure constant=-88096, vgcd=64

expanding queue[8]:  - 24160 - 80736*x - 89088*x^2 - 32768*x^3 + 960*y + 1024*y^2 = 0 modulo [2,2] *64
[29+64*x,15+64*y]: failure constant=-24160, vgcd=64
[61+64*x,15+64*y]: unknown -226752-714432*x-749568*x^2-262144*x^3+1920*y+4096*y^2=0 -> [11]
[29+64*x,47+64*y]: failure constant=-22176, vgcd=64
[61+64*x,47+64*y]: unknown -224768-714432*x-749568*x^2-262144*x^3+6016*y+4096*y^2=0 -> [12]

expanding queue[9]:  - 23424 - 80736*x - 89088*x^2 - 32768*x^3 + 1984*y + 1024*y^2 = 0 modulo [2,2] *64
[29+64*x,31+64*y]: grown from [0] -23424-161472*x-356352*x^2-262144*x^3+3968*y+4096*y^2=0
[61+64*x,31+64*y]: failure constant=-226016, vgcd=64
[29+64*x,63+64*y]: unknown -20416-161472*x-356352*x^2-262144*x^3+8064*y+4096*y^2=0 -> [13]
[61+64*x,63+64*y]: failure constant=-223008, vgcd=64
Maximum level 5 reached, queue size = 14
