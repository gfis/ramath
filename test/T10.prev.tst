Expanding for base 2, transposables =    0   0   0

expanding queue[0]: x^2 + y^2 - 5*x*y*z + z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: success [0,0,0],trivial(3)  4*x^2+4*y^2-40*x*y*z+4*z^2=0 -> [1]
[1+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=1, vgcd=4
[1+2*x,1+2*y,0+2*z]: unknown 2+4*x+4*x^2+4*y+4*y^2-10*z-20*x*z-20*y*z-40*x*y*z+4*z^2=0 -> [2]
[0+2*x,0+2*y,1+2*z]: failure constant=1, vgcd=4
[1+2*x,0+2*y,1+2*z]: failure transposition of [2] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*y 1+2*y|1+2*z
[0+2*x,1+2*y,1+2*z]: failure transposition of [2] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*x 1+2*x|1+2*y 1+2*y|1+2*z
[1+2*x,1+2*y,1+2*z]: unknown -2-6*x+4*x^2-6*y-20*x*y+4*y^2-6*z-20*x*z-20*y*z-40*x*y*z+4*z^2=0 -> [3]

expanding queue[1]: 4*x^2 + 4*y^2 - 40*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[0+4*x,0+4*y,0+4*z]: success [0,0,0],trivial(3)  16*x^2+16*y^2-320*x*y*z+16*z^2=0 -> [4]
[2+4*x,0+4*y,0+4*z]: failure constant=4, vgcd=16
[0+4*x,2+4*y,0+4*z]: failure constant=4, vgcd=16
[2+4*x,2+4*y,0+4*z]: failure constant=8, vgcd=16
[0+4*x,0+4*y,2+4*z]: failure constant=4, vgcd=16
[2+4*x,0+4*y,2+4*z]: failure constant=8, vgcd=16
[0+4*x,2+4*y,2+4*z]: failure constant=8, vgcd=16
[2+4*x,2+4*y,2+4*z]: failure constant=-28, vgcd=16

expanding queue[2]: 2 + 4*x + 4*x^2 + 4*y + 4*y^2 - 10*z - 20*x*z - 20*y*z - 40*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,0+4*z]: failure constant=2, vgcd=4
[3+4*x,1+4*y,0+4*z]: failure constant=10, vgcd=4
[1+4*x,3+4*y,0+4*z]: failure constant=10, vgcd=4
[3+4*x,3+4*y,0+4*z]: failure constant=18, vgcd=4
[1+4*x,1+4*y,2+4*z]: unknown -4-32*x+16*x^2-32*y-160*x*y+16*y^2-4*z-80*x*z-80*y*z-320*x*y*z+16*z^2=0 -> [5]
[3+4*x,1+4*y,2+4*z]: unknown -16-16*x+16*x^2-112*y-160*x*y+16*y^2-44*z-80*x*z-240*y*z-320*x*y*z+16*z^2=0 -> [6]
[1+4*x,3+4*y,2+4*z]: failure transposition of [6] {0/1+4*y,0/2+4*z,0/3+4*x} by 1+4*y|1+4*x 3+4*x|3+4*y
[3+4*x,3+4*y,2+4*z]: unknown -68-96*x+16*x^2-96*y-160*x*y+16*y^2-164*z-240*x*z-240*y*z-320*x*y*z+16*z^2=0 -> [7]

expanding queue[3]:  - 2 - 6*x + 4*x^2 - 6*y - 20*x*y + 4*y^2 - 6*z - 20*x*z - 20*y*z - 40*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,1+4*z]: failure constant=-2, vgcd=4
[3+4*x,1+4*y,1+4*z]: unknown -4+4*x+16*x^2-52*y-80*x*y+16*y^2-52*z-80*x*z-240*y*z-320*x*y*z+16*z^2=0 -> [8]
[1+4*x,3+4*y,1+4*z]: failure transposition of [8] {0/1+4*y,0/1+4*z,0/3+4*x} by 1+4*y|1+4*x 3+4*x|3+4*y
[3+4*x,3+4*y,1+4*z]: failure constant=-26, vgcd=4
[1+4*x,1+4*y,3+4*z]: failure transposition of [8] {0/1+4*y,0/1+4*z,0/3+4*x} by 1+4*y|1+4*x 1+4*z|1+4*y 3+4*x|3+4*z
[3+4*x,1+4*y,3+4*z]: failure constant=-26, vgcd=4
[1+4*x,3+4*y,3+4*z]: failure constant=-26, vgcd=4
[3+4*x,3+4*y,3+4*z]: unknown -108-156*x+16*x^2-156*y-240*x*y+16*y^2-156*z-240*x*z-240*y*z-320*x*y*z+16*z^2=0 -> [9]

expanding queue[4]: 16*x^2 + 16*y^2 - 320*x*y*z + 16*z^2 = 0 modulo [1,1,1] *8
[0+4*x,0+4*y,0+4*z]: similiar to  [4], same  16*x^2+16*y^2-320*x*y*z+16*z^2=0

expanding queue[5]:  - 4 - 32*x + 16*x^2 - 32*y - 160*x*y + 16*y^2 - 4*z - 80*x*z - 80*y*z - 320*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[1+4*x,1+4*y,2+8*z]: failure constant=-4, vgcd=8
[1+4*x,1+4*y,6+8*z]: unknown 8-112*x+16*x^2-112*y-480*x*y+16*y^2+56*z-160*x*z-160*y*z-640*x*y*z+64*z^2=0 -> [10]

expanding queue[6]:  - 16 - 16*x + 16*x^2 - 112*y - 160*x*y + 16*y^2 - 44*z - 80*x*z - 240*y*z - 320*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[3+4*x,1+4*y,2+8*z]: unknown -16-16*x+16*x^2-112*y-160*x*y+16*y^2-88*z-160*x*z-480*y*z-640*x*y*z+64*z^2=0 -> [11]
[3+4*x,1+4*y,6+8*z]: failure constant=-44, vgcd=8

expanding queue[7]:  - 68 - 96*x + 16*x^2 - 96*y - 160*x*y + 16*y^2 - 164*z - 240*x*z - 240*y*z - 320*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[3+4*x,3+4*y,2+8*z]: failure constant=-68, vgcd=8
[3+4*x,3+4*y,6+8*z]: unknown -216-336*x+16*x^2-336*y-480*x*y+16*y^2-264*z-480*x*z-480*y*z-640*x*y*z+64*z^2=0 -> [12]

expanding queue[8]:  - 4 + 4*x + 16*x^2 - 52*y - 80*x*y + 16*y^2 - 52*z - 80*x*z - 240*y*z - 320*x*y*z + 16*z^2 = 0 modulo [2,2,2] *8
[3+8*x,1+8*y,1+8*z]: failure constant=-4, vgcd=8
[7+8*x,1+8*y,1+8*z]: unknown 16+72*x+64*x^2-264*y-320*x*y+64*y^2-264*z-320*x*z-2240*y*z-2560*x*y*z+64*z^2=0 -> [13]
[3+8*x,5+8*y,1+8*z]: unknown -40-152*x+64*x^2-40*y-320*x*y+64*y^2-584*z-1600*x*z-960*y*z-2560*x*y*z+64*z^2=0 -> [14]
[7+8*x,5+8*y,1+8*z]: failure constant=-100, vgcd=8
[3+8*x,1+8*y,5+8*z]: failure transposition of [14] {0/1+8*z,0/3+8*x,0/5+8*y} by 1+8*z|1+8*y 5+8*y|5+8*z
[7+8*x,1+8*y,5+8*z]: failure constant=-100, vgcd=8
[3+8*x,5+8*y,5+8*z]: failure constant=-316, vgcd=8
[7+8*x,5+8*y,5+8*z]: unknown -776-888*x+64*x^2-1320*y-1600*x*y+64*y^2-1320*z-1600*x*z-2240*y*z-2560*x*y*z+64*z^2=0 -> [15]

expanding queue[9]:  - 108 - 156*x + 16*x^2 - 156*y - 240*x*y + 16*y^2 - 156*z - 240*x*z - 240*y*z - 320*x*y*z + 16*z^2 = 0 modulo [2,2,2] *8
[3+8*x,3+8*y,3+8*z]: failure constant=-108, vgcd=8
[7+8*x,3+8*y,3+8*z]: unknown -248-248*x+64*x^2-792*y-960*x*y+64*y^2-792*z-960*x*z-2240*y*z-2560*x*y*z+64*z^2=0 -> [16]
[3+8*x,7+8*y,3+8*z]: failure transposition of [16] {0/3+8*y,0/3+8*z,0/7+8*x} by 3+8*y|3+8*x 7+8*x|7+8*y
[7+8*x,7+8*y,3+8*z]: failure constant=-628, vgcd=8
[3+8*x,3+8*y,7+8*z]: failure transposition of [16] {0/3+8*y,0/3+8*z,0/7+8*x} by 3+8*y|3+8*x 3+8*z|3+8*y 7+8*x|7+8*z
[7+8*x,3+8*y,7+8*z]: failure constant=-628, vgcd=8
[3+8*x,7+8*y,7+8*z]: failure constant=-628, vgcd=8
[7+8*x,7+8*y,7+8*z]: unknown -1568-1848*x+64*x^2-1848*y-2240*x*y+64*y^2-1848*z-2240*x*z-2240*y*z-2560*x*y*z+64*z^2=0 -> [17]

expanding queue[10]: 8 - 112*x + 16*x^2 - 112*y - 480*x*y + 16*y^2 + 56*z - 160*x*z - 160*y*z - 640*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[1+8*x,1+8*y,6+16*z]: failure constant=8, vgcd=16
[5+8*x,1+8*y,6+16*z]: failure constant=-88, vgcd=16
[1+8*x,5+8*y,6+16*z]: failure constant=-88, vgcd=16
[5+8*x,5+8*y,6+16*z]: failure constant=-664, vgcd=16
[1+8*x,1+8*y,14+16*z]: unknown 128-544*x+64*x^2-544*y-4480*x*y+64*y^2+368*z-640*x*z-640*y*z-5120*x*y*z+256*z^2=0 -> [18]
[5+8*x,1+8*y,14+16*z]: unknown -128-480*x+64*x^2-2784*y-4480*x*y+64*y^2+48*z-640*x*z-3200*y*z-5120*x*y*z+256*z^2=0 -> [19]
[1+8*x,5+8*y,14+16*z]: failure transposition of [19] {0/1+8*y,0/14+16*z,0/5+8*x} by 1+8*y|1+8*x 5+8*x|5+8*y
[5+8*x,5+8*y,14+16*z]: unknown -1504-2720*x+64*x^2-2720*y-4480*x*y+64*y^2-1552*z-3200*x*z-3200*y*z-5120*x*y*z+256*z^2=0 -> [20]

expanding queue[11]:  - 16 - 16*x + 16*x^2 - 112*y - 160*x*y + 16*y^2 - 88*z - 160*x*z - 480*y*z - 640*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[3+8*x,1+8*y,2+16*z]: unknown -16-32*x+64*x^2-224*y-640*x*y+64*y^2-176*z-640*x*z-1920*y*z-5120*x*y*z+256*z^2=0 -> [21]
[7+8*x,1+8*y,2+16*z]: unknown -16+32*x+64*x^2-544*y-640*x*y+64*y^2-496*z-640*x*z-4480*y*z-5120*x*y*z+256*z^2=0 -> [22]
[3+8*x,5+8*y,2+16*z]: unknown -112-352*x+64*x^2-160*y-640*x*y+64*y^2-1136*z-3200*x*z-1920*y*z-5120*x*y*z+256*z^2=0 -> [23]
[7+8*x,5+8*y,2+16*z]: unknown -272-288*x+64*x^2-480*y-640*x*y+64*y^2-2736*z-3200*x*z-4480*y*z-5120*x*y*z+256*z^2=0 -> [24]
[3+8*x,1+8*y,10+16*z]: failure constant=-40, vgcd=16
[7+8*x,1+8*y,10+16*z]: failure constant=-200, vgcd=16
[3+8*x,5+8*y,10+16*z]: failure constant=-616, vgcd=16
[7+8*x,5+8*y,10+16*z]: failure constant=-1576, vgcd=16

expanding queue[12]:  - 216 - 336*x + 16*x^2 - 336*y - 480*x*y + 16*y^2 - 264*z - 480*x*z - 480*y*z - 640*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[3+8*x,3+8*y,6+16*z]: failure constant=-216, vgcd=16
[7+8*x,3+8*y,6+16*z]: failure constant=-536, vgcd=16
[3+8*x,7+8*y,6+16*z]: failure constant=-536, vgcd=16
[7+8*x,7+8*y,6+16*z]: failure constant=-1336, vgcd=16
[3+8*x,3+8*y,14+16*z]: unknown -416-1632*x+64*x^2-1632*y-4480*x*y+64*y^2-272*z-1920*x*z-1920*y*z-5120*x*y*z+256*z^2=0 -> [25]
[7+8*x,3+8*y,14+16*z]: unknown -1216-1568*x+64*x^2-3872*y-4480*x*y+64*y^2-1232*z-1920*x*z-4480*y*z-5120*x*y*z+256*z^2=0 -> [26]
[3+8*x,7+8*y,14+16*z]: failure transposition of [26] {0/14+16*z,0/3+8*y,0/7+8*x} by 3+8*y|3+8*x 7+8*x|7+8*y
[7+8*x,7+8*y,14+16*z]: unknown -3136-3808*x+64*x^2-3808*y-4480*x*y+64*y^2-3472*z-4480*x*z-4480*y*z-5120*x*y*z+256*z^2=0 -> [27]

expanding queue[13]: 16 + 72*x + 64*x^2 - 264*y - 320*x*y + 64*y^2 - 264*z - 320*x*z - 2240*y*z - 2560*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[7+16*x,1+16*y,1+16*z]: unknown 16+144*x+256*x^2-528*y-1280*x*y+256*y^2-528*z-1280*x*z-8960*y*z-20480*x*y*z+256*z^2=0 -> [28]
[15+16*x,1+16*y,1+16*z]: failure constant=152, vgcd=16
[7+16*x,9+16*y,1+16*z]: failure constant=-184, vgcd=16
[15+16*x,9+16*y,1+16*z]: unknown -368-240*x+256*x^2-912*y-1280*x*y+256*y^2-10768*z-11520*x*z-19200*y*z-20480*x*y*z+256*z^2=0 -> [29]
[7+16*x,1+16*y,9+16*z]: failure constant=-184, vgcd=16
[15+16*x,1+16*y,9+16*z]: failure transposition of [29] {0/1+16*z,0/15+16*x,0/9+16*y} by 1+16*z|1+16*y 9+16*y|9+16*z
[7+16*x,9+16*y,9+16*z]: unknown -2624-6256*x+256*x^2-4752*y-11520*x*y+256*y^2-4752*z-11520*x*z-8960*y*z-20480*x*y*z+256*z^2=0 -> [30]
[15+16*x,9+16*y,9+16*z]: failure constant=-5688, vgcd=16

expanding queue[14]:  - 40 - 152*x + 64*x^2 - 40*y - 320*x*y + 64*y^2 - 584*z - 1600*x*z - 960*y*z - 2560*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[3+16*x,5+16*y,1+16*z]: failure constant=-40, vgcd=16
[11+16*x,5+16*y,1+16*z]: unknown -128-48*x+256*x^2-720*y-1280*x*y+256*y^2-4368*z-6400*x*z-14080*y*z-20480*x*y*z+256*z^2=0 -> [31]
[3+16*x,13+16*y,1+16*z]: unknown -16-944*x+256*x^2+176*y-1280*x*y+256*y^2-3088*z-16640*x*z-3840*y*z-20480*x*y*z+256*z^2=0 -> [32]
[11+16*x,13+16*y,1+16*z]: failure constant=-424, vgcd=16
[3+16*x,5+16*y,9+16*z]: unknown -560-3504*x+256*x^2-2000*y-11520*x*y+256*y^2-912*z-6400*x*z-3840*y*z-20480*x*y*z+256*z^2=0 -> [33]
[11+16*x,5+16*y,9+16*z]: failure constant=-2248, vgcd=16
[3+16*x,13+16*y,9+16*z]: failure constant=-1496, vgcd=16
[11+16*x,13+16*y,9+16*z]: unknown -6064-9008*x+256*x^2-7504*y-11520*x*y+256*y^2-11152*z-16640*x*z-14080*y*z-20480*x*y*z+256*z^2=0 -> [34]

expanding queue[15]:  - 776 - 888*x + 64*x^2 - 1320*y - 1600*x*y + 64*y^2 - 1320*z - 1600*x*z - 2240*y*z - 2560*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[7+16*x,5+16*y,5+16*z]: failure constant=-776, vgcd=16
[15+16*x,5+16*y,5+16*z]: unknown -1600-1520*x+256*x^2-5840*y-6400*x*y+256*y^2-5840*z-6400*x*z-19200*y*z-20480*x*y*z+256*z^2=0 -> [35]
[7+16*x,13+16*y,5+16*z]: unknown -2032-4976*x+256*x^2-2384*y-6400*x*y+256*y^2-7120*z-16640*x*z-8960*y*z-20480*x*y*z+256*z^2=0 -> [36]
[15+16*x,13+16*y,5+16*z]: failure constant=-4456, vgcd=16
[7+16*x,5+16*y,13+16*z]: failure transposition of [36] {0/13+16*y,0/5+16*z,0/7+16*x} by 13+16*y|13+16*z 5+16*z|5+16*y
[15+16*x,5+16*y,13+16*z]: failure constant=-4456, vgcd=16
[7+16*x,13+16*y,13+16*z]: failure constant=-5528, vgcd=16
[15+16*x,13+16*y,13+16*z]: unknown -12112-13040*x+256*x^2-15184*y-16640*x*y+256*y^2-15184*z-16640*x*z-19200*y*z-20480*x*y*z+256*z^2=0 -> [37]

expanding queue[16]:  - 248 - 248*x + 64*x^2 - 792*y - 960*x*y + 64*y^2 - 792*z - 960*x*z - 2240*y*z - 2560*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[7+16*x,3+16*y,3+16*z]: failure constant=-248, vgcd=16
[15+16*x,3+16*y,3+16*z]: unknown -432-240*x+256*x^2-3504*y-3840*x*y+256*y^2-3504*z-3840*x*z-19200*y*z-20480*x*y*z+256*z^2=0 -> [38]
[7+16*x,11+16*y,3+16*z]: unknown -976-2416*x+256*x^2-1328*y-3840*x*y+256*y^2-6064*z-14080*x*z-8960*y*z-20480*x*y*z+256*z^2=0 -> [39]
[15+16*x,11+16*y,3+16*z]: failure constant=-2120, vgcd=16
[7+16*x,3+16*y,11+16*z]: failure transposition of [39] {0/11+16*y,0/3+16*z,0/7+16*x} by 11+16*y|11+16*z 3+16*z|3+16*y
[15+16*x,3+16*y,11+16*z]: failure constant=-2120, vgcd=16
[7+16*x,11+16*y,11+16*z]: failure constant=-3944, vgcd=16
[15+16*x,11+16*y,11+16*z]: unknown -8608-9200*x+256*x^2-12848*y-14080*x*y+256*y^2-12848*z-14080*x*z-19200*y*z-20480*x*y*z+256*z^2=0 -> [40]

expanding queue[17]:  - 1568 - 1848*x + 64*x^2 - 1848*y - 2240*x*y + 64*y^2 - 1848*z - 2240*x*z - 2240*y*z - 2560*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[7+16*x,7+16*y,7+16*z]: unknown -1568-3696*x+256*x^2-3696*y-8960*x*y+256*y^2-3696*z-8960*x*z-8960*y*z-20480*x*y*z+256*z^2=0 -> [41]
[15+16*x,7+16*y,7+16*z]: failure constant=-3352, vgcd=16
[7+16*x,15+16*y,7+16*z]: failure constant=-3352, vgcd=16
[15+16*x,15+16*y,7+16*z]: unknown -7376-7920*x+256*x^2-7920*y-8960*x*y+256*y^2-17776*z-19200*x*z-19200*y*z-20480*x*y*z+256*z^2=0 -> [42]
[7+16*x,7+16*y,15+16*z]: failure constant=-3352, vgcd=16
[15+16*x,7+16*y,15+16*z]: failure transposition of [42] {0/15+16*x,0/15+16*y,0/7+16*z} by 15+16*y|15+16*z 7+16*z|7+16*y
[7+16*x,15+16*y,15+16*z]: failure transposition of [42] {0/15+16*x,0/15+16*y,0/7+16*z} by 15+16*x|15+16*y 15+16*y|15+16*z 7+16*z|7+16*x
[15+16*x,15+16*y,15+16*z]: failure constant=-16200, vgcd=16
Maximum level 3 reached, queue size = 43
