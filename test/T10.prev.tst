Expanding for base 2, transposables =    0   0   0

expanding queue[0]: x^2 + y^2 - 5*x*y*z + z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: grown from [0]*4,4,8,4 4*x^2+4*y^2-40*x*y*z+4*z^2=0 success [0,0,0],trivial(3) 
[1+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=1, vgcd=4
[1+2*x,1+2*y,0+2*z]: unknown 2+4*x+4*x^2+4*y+4*y^2-10*z-20*x*z-20*y*z-40*x*y*z+4*z^2=0 -> [1]
[0+2*x,0+2*y,1+2*z]: failure constant=1, vgcd=4
[1+2*x,0+2*y,1+2*z]: transposition of [1] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*y 1+2*y|1+2*z
[0+2*x,1+2*y,1+2*z]: transposition of [1] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*x 1+2*x|1+2*y 1+2*y|1+2*z
[1+2*x,1+2*y,1+2*z]: unknown -2-6*x+4*x^2-6*y-20*x*y+4*y^2-6*z-20*x*z-20*y*z-40*x*y*z+4*z^2=0 -> [2]

expanding queue[1]: 2 + 4*x + 4*x^2 + 4*y + 4*y^2 - 10*z - 20*x*z - 20*y*z - 40*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,0+4*z]: failure constant=2, vgcd=4
[3+4*x,1+4*y,0+4*z]: failure constant=10, vgcd=4
[1+4*x,3+4*y,0+4*z]: failure constant=10, vgcd=4
[3+4*x,3+4*y,0+4*z]: failure constant=18, vgcd=4
[1+4*x,1+4*y,2+4*z]: unknown -4-32*x+16*x^2-32*y-160*x*y+16*y^2-4*z-80*x*z-80*y*z-320*x*y*z+16*z^2=0 -> [3]
[3+4*x,1+4*y,2+4*z]: unknown -16-16*x+16*x^2-112*y-160*x*y+16*y^2-44*z-80*x*z-240*y*z-320*x*y*z+16*z^2=0 -> [4]
[1+4*x,3+4*y,2+4*z]: transposition of [4] {0/1+4*y,0/2+4*z,0/3+4*x} by 1+4*y|1+4*x 3+4*x|3+4*y
[3+4*x,3+4*y,2+4*z]: unknown -68-96*x+16*x^2-96*y-160*x*y+16*y^2-164*z-240*x*z-240*y*z-320*x*y*z+16*z^2=0 -> [5]

expanding queue[2]:  - 2 - 6*x + 4*x^2 - 6*y - 20*x*y + 4*y^2 - 6*z - 20*x*z - 20*y*z - 40*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,1+4*z]: failure constant=-2, vgcd=4
[3+4*x,1+4*y,1+4*z]: unknown -4+4*x+16*x^2-52*y-80*x*y+16*y^2-52*z-80*x*z-240*y*z-320*x*y*z+16*z^2=0 -> [6]
[1+4*x,3+4*y,1+4*z]: transposition of [6] {0/1+4*y,0/1+4*z,0/3+4*x} by 1+4*y|1+4*x 3+4*x|3+4*y
[3+4*x,3+4*y,1+4*z]: failure constant=-26, vgcd=4
[1+4*x,1+4*y,3+4*z]: transposition of [6] {0/1+4*y,0/1+4*z,0/3+4*x} by 1+4*y|1+4*x 1+4*z|1+4*y 3+4*x|3+4*z
[3+4*x,1+4*y,3+4*z]: failure constant=-26, vgcd=4
[1+4*x,3+4*y,3+4*z]: failure constant=-26, vgcd=4
[3+4*x,3+4*y,3+4*z]: grown from [2]*54,26,4,26,12,4,26,12,12,8,4 -108-156*x+16*x^2-156*y-240*x*y+16*y^2-156*z-240*x*z-240*y*z-320*x*y*z+16*z^2=0

expanding queue[3]:  - 4 - 32*x + 16*x^2 - 32*y - 160*x*y + 16*y^2 - 4*z - 80*x*z - 80*y*z - 320*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[1+4*x,1+4*y,2+8*z]: failure constant=-4, vgcd=8
[1+4*x,1+4*y,6+8*z]: unknown 8-112*x+16*x^2-112*y-480*x*y+16*y^2+56*z-160*x*z-160*y*z-640*x*y*z+64*z^2=0 -> [7]

expanding queue[4]:  - 16 - 16*x + 16*x^2 - 112*y - 160*x*y + 16*y^2 - 44*z - 80*x*z - 240*y*z - 320*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[3+4*x,1+4*y,2+8*z]: grown from [4]*1,1,1,1,1,1,2,2,2,2,4 -16-16*x+16*x^2-112*y-160*x*y+16*y^2-88*z-160*x*z-480*y*z-640*x*y*z+64*z^2=0
[3+4*x,1+4*y,6+8*z]: failure constant=-44, vgcd=8

expanding queue[5]:  - 68 - 96*x + 16*x^2 - 96*y - 160*x*y + 16*y^2 - 164*z - 240*x*z - 240*y*z - 320*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[3+4*x,3+4*y,2+8*z]: failure constant=-68, vgcd=8
[3+4*x,3+4*y,6+8*z]: unknown -216-336*x+16*x^2-336*y-480*x*y+16*y^2-264*z-480*x*z-480*y*z-640*x*y*z+64*z^2=0 -> [8]

expanding queue[6]:  - 4 + 4*x + 16*x^2 - 52*y - 80*x*y + 16*y^2 - 52*z - 80*x*z - 240*y*z - 320*x*y*z + 16*z^2 = 0 modulo [2,2,2] *8
[3+8*x,1+8*y,1+8*z]: failure constant=-4, vgcd=8
[7+8*x,1+8*y,1+8*z]: unknown 16+72*x+64*x^2-264*y-320*x*y+64*y^2-264*z-320*x*z-2240*y*z-2560*x*y*z+64*z^2=0 -> [9]
[3+8*x,5+8*y,1+8*z]: unknown -40-152*x+64*x^2-40*y-320*x*y+64*y^2-584*z-1600*x*z-960*y*z-2560*x*y*z+64*z^2=0 -> [10]
[7+8*x,5+8*y,1+8*z]: failure constant=-100, vgcd=8
[3+8*x,1+8*y,5+8*z]: transposition of [10] {0/1+8*z,0/3+8*x,0/5+8*y} by 1+8*z|1+8*y 5+8*y|5+8*z
[7+8*x,1+8*y,5+8*z]: failure constant=-100, vgcd=8
[3+8*x,5+8*y,5+8*z]: failure constant=-316, vgcd=8
[7+8*x,5+8*y,5+8*z]: grown from [2]*388,148,16,220,80,16,220,80,112,64,16 -776-888*x+64*x^2-1320*y-1600*x*y+64*y^2-1320*z-1600*x*z-2240*y*z-2560*x*y*z+64*z^2=0

expanding queue[7]: 8 - 112*x + 16*x^2 - 112*y - 480*x*y + 16*y^2 + 56*z - 160*x*z - 160*y*z - 640*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[1+8*x,1+8*y,6+16*z]: failure constant=8, vgcd=16
[5+8*x,1+8*y,6+16*z]: failure constant=-88, vgcd=16
[1+8*x,5+8*y,6+16*z]: failure constant=-88, vgcd=16
[5+8*x,5+8*y,6+16*z]: failure constant=-664, vgcd=16
[1+8*x,1+8*y,14+16*z]: unknown 128-544*x+64*x^2-544*y-4480*x*y+64*y^2+368*z-640*x*z-640*y*z-5120*x*y*z+256*z^2=0 -> [11]
[5+8*x,1+8*y,14+16*z]: unknown -128-480*x+64*x^2-2784*y-4480*x*y+64*y^2+48*z-640*x*z-3200*y*z-5120*x*y*z+256*z^2=0 -> [12]
[1+8*x,5+8*y,14+16*z]: transposition of [12] {0/1+8*y,0/14+16*z,0/5+8*x} by 1+8*y|1+8*x 5+8*x|5+8*y
[5+8*x,5+8*y,14+16*z]: grown from [3]*376,85,4,85,28,4,388,40,40,16,16 -1504-2720*x+64*x^2-2720*y-4480*x*y+64*y^2-1552*z-3200*x*z-3200*y*z-5120*x*y*z+256*z^2=0

expanding queue[8]:  - 216 - 336*x + 16*x^2 - 336*y - 480*x*y + 16*y^2 - 264*z - 480*x*z - 480*y*z - 640*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[3+8*x,3+8*y,6+16*z]: failure constant=-216, vgcd=16
[7+8*x,3+8*y,6+16*z]: failure constant=-536, vgcd=16
[3+8*x,7+8*y,6+16*z]: failure constant=-536, vgcd=16
[7+8*x,7+8*y,6+16*z]: failure constant=-1336, vgcd=16
[3+8*x,3+8*y,14+16*z]: unknown -416-1632*x+64*x^2-1632*y-4480*x*y+64*y^2-272*z-1920*x*z-1920*y*z-5120*x*y*z+256*z^2=0 -> [13]
[7+8*x,3+8*y,14+16*z]: unknown -1216-1568*x+64*x^2-3872*y-4480*x*y+64*y^2-1232*z-1920*x*z-4480*y*z-5120*x*y*z+256*z^2=0 -> [14]
[3+8*x,7+8*y,14+16*z]: transposition of [14] {0/14+16*z,0/3+8*y,0/7+8*x} by 3+8*y|3+8*x 7+8*x|7+8*y
[7+8*x,7+8*y,14+16*z]: unknown -3136-3808*x+64*x^2-3808*y-4480*x*y+64*y^2-3472*z-4480*x*z-4480*y*z-5120*x*y*z+256*z^2=0 -> [15]

expanding queue[9]: 16 + 72*x + 64*x^2 - 264*y - 320*x*y + 64*y^2 - 264*z - 320*x*z - 2240*y*z - 2560*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[7+16*x,1+16*y,1+16*z]: grown from [9]*1,2,4,2,4,4,2,4,4,8,4 16+144*x+256*x^2-528*y-1280*x*y+256*y^2-528*z-1280*x*z-8960*y*z-20480*x*y*z+256*z^2=0
[15+16*x,1+16*y,1+16*z]: failure constant=152, vgcd=16
[7+16*x,9+16*y,1+16*z]: failure constant=-184, vgcd=16
[15+16*x,9+16*y,1+16*z]: unknown -368-240*x+256*x^2-912*y-1280*x*y+256*y^2-10768*z-11520*x*z-19200*y*z-20480*x*y*z+256*z^2=0 -> [16]
[7+16*x,1+16*y,9+16*z]: failure constant=-184, vgcd=16
[15+16*x,1+16*y,9+16*z]: transposition of [16] {0/1+16*z,0/15+16*x,0/9+16*y} by 1+16*z|1+16*y 9+16*y|9+16*z
[7+16*x,9+16*y,9+16*z]: unknown -2624-6256*x+256*x^2-4752*y-11520*x*y+256*y^2-4752*z-11520*x*z-8960*y*z-20480*x*y*z+256*z^2=0 -> [17]
[15+16*x,9+16*y,9+16*z]: failure constant=-5688, vgcd=16

expanding queue[10]:  - 40 - 152*x + 64*x^2 - 40*y - 320*x*y + 64*y^2 - 584*z - 1600*x*z - 960*y*z - 2560*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[3+16*x,5+16*y,1+16*z]: failure constant=-40, vgcd=16
[11+16*x,5+16*y,1+16*z]: grown from [2]*64,8,64,120,64,64,728,320,704,512,64 -128-48*x+256*x^2-720*y-1280*x*y+256*y^2-4368*z-6400*x*z-14080*y*z-20480*x*y*z+256*z^2=0
[3+16*x,13+16*y,1+16*z]: unknown -16-944*x+256*x^2+176*y-1280*x*y+256*y^2-3088*z-16640*x*z-3840*y*z-20480*x*y*z+256*z^2=0 -> [18]
[11+16*x,13+16*y,1+16*z]: failure constant=-424, vgcd=16
[3+16*x,5+16*y,9+16*z]: unknown -560-3504*x+256*x^2-2000*y-11520*x*y+256*y^2-912*z-6400*x*z-3840*y*z-20480*x*y*z+256*z^2=0 -> [19]
[11+16*x,5+16*y,9+16*z]: failure constant=-2248, vgcd=16
[3+16*x,13+16*y,9+16*z]: failure constant=-1496, vgcd=16
[11+16*x,13+16*y,9+16*z]: unknown -6064-9008*x+256*x^2-7504*y-11520*x*y+256*y^2-11152*z-16640*x*z-14080*y*z-20480*x*y*z+256*z^2=0 -> [20]
Maximum level 3 reached, queue size = 21
