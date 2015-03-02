Expanding for base 2, transposables =    0   0   0

expanding queue[0]: x^2 + y^2 - 3*x*y*z + z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: failure, grown from [0]
[1+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=1, vgcd=4
[1+2*x,1+2*y,0+2*z]: unknown 2+4*x+4*x^2+4*y+4*y^2-6*z-12*x*z-12*y*z-24*x*y*z+4*z^2=0 -> [1]
[0+2*x,0+2*y,1+2*z]: failure constant=1, vgcd=4
[1+2*x,0+2*y,1+2*z]: failure transposition of [1] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*y 1+2*y|1+2*z
[0+2*x,1+2*y,1+2*z]: failure transposition of [1] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*x 1+2*x|1+2*y 1+2*y|1+2*z
[1+2*x,1+2*y,1+2*z]: success [1,1,1] trivial=2 -2*x+4*x^2-2*y-12*x*y+4*y^2-2*z-12*x*z-12*y*z-24*x*y*z+4*z^2=0 -> [2]

expanding queue[1]: 2 + 4*x + 4*x^2 + 4*y + 4*y^2 - 6*z - 12*x*z - 12*y*z - 24*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,0+4*z]: failure constant=2, vgcd=4
[3+4*x,1+4*y,0+4*z]: failure constant=10, vgcd=4
[1+4*x,3+4*y,0+4*z]: failure constant=10, vgcd=4
[3+4*x,3+4*y,0+4*z]: failure constant=18, vgcd=4
[1+4*x,1+4*y,2+4*z]: success [1,1,2] trivial=2 -16*x+16*x^2-16*y-96*x*y+16*y^2+4*z-48*x*z-48*y*z-192*x*y*z+16*z^2=0 -> [3]
[3+4*x,1+4*y,2+4*z]: unknown -4+16*x^2-64*y-96*x*y+16*y^2-20*z-48*x*z-144*y*z-192*x*y*z+16*z^2=0 -> [4]
[1+4*x,3+4*y,2+4*z]: failure transposition of [4] {0/1+4*y,0/2+4*z,0/3+4*x} by 1+4*y|1+4*x 3+4*x|3+4*y
[3+4*x,3+4*y,2+4*z]: unknown -32-48*x+16*x^2-48*y-96*x*y+16*y^2-92*z-144*x*z-144*y*z-192*x*y*z+16*z^2=0 -> [5]

expanding queue[2]:  - 2*x + 4*x^2 - 2*y - 12*x*y + 4*y^2 - 2*z - 12*x*z - 12*y*z - 24*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,1+4*z]: failure, grown from [2]
[3+4*x,1+4*y,1+4*z]: failure constant=2, vgcd=4
[1+4*x,3+4*y,1+4*z]: failure constant=2, vgcd=4
[3+4*x,3+4*y,1+4*z]: unknown -8-12*x+16*x^2-12*y-48*x*y+16*y^2-100*z-144*x*z-144*y*z-192*x*y*z+16*z^2=0 -> [6]
[1+4*x,1+4*y,3+4*z]: failure constant=2, vgcd=4
[3+4*x,1+4*y,3+4*z]: failure transposition of [6] {0/1+4*z,0/3+4*x,0/3+4*y} by 1+4*z|1+4*y 3+4*y|3+4*z
[1+4*x,3+4*y,3+4*z]: failure transposition of [6] {0/1+4*z,0/3+4*x,0/3+4*y} by 1+4*z|1+4*x 3+4*x|3+4*y 3+4*y|3+4*z
[3+4*x,3+4*y,3+4*z]: failure constant=-54, vgcd=4

expanding queue[3]:  - 16*x + 16*x^2 - 16*y - 96*x*y + 16*y^2 + 4*z - 48*x*z - 48*y*z - 192*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[1+4*x,1+4*y,2+8*z]: failure, grown from [3]
[1+4*x,1+4*y,6+8*z]: failure constant=20, vgcd=8

expanding queue[4]:  - 4 + 16*x^2 - 64*y - 96*x*y + 16*y^2 - 20*z - 48*x*z - 144*y*z - 192*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[3+4*x,1+4*y,2+8*z]: failure constant=-4, vgcd=8
[3+4*x,1+4*y,6+8*z]: unknown -8-48*x+16*x^2-208*y-288*x*y+16*y^2+24*z-96*x*z-288*y*z-384*x*y*z+64*z^2=0 -> [7]

expanding queue[5]:  - 32 - 48*x + 16*x^2 - 48*y - 96*x*y + 16*y^2 - 92*z - 144*x*z - 144*y*z - 192*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[3+4*x,3+4*y,2+8*z]: failure, grown from [5]
[3+4*x,3+4*y,6+8*z]: failure constant=-108, vgcd=8

expanding queue[6]:  - 8 - 12*x + 16*x^2 - 12*y - 48*x*y + 16*y^2 - 100*z - 144*x*z - 144*y*z - 192*x*y*z + 16*z^2 = 0 modulo [2,2,2] *8
[3+8*x,3+8*y,1+8*z]: failure, grown from [6]
[7+8*x,3+8*y,1+8*z]: failure constant=-4, vgcd=8
[3+8*x,7+8*y,1+8*z]: failure constant=-4, vgcd=8
[7+8*x,7+8*y,1+8*z]: unknown -48-56*x+64*x^2-56*y-192*x*y+64*y^2-1160*z-1344*x*z-1344*y*z-1536*x*y*z+64*z^2=0 -> [8]
[3+8*x,3+8*y,5+8*z]: failure constant=-92, vgcd=8
[7+8*x,3+8*y,5+8*z]: unknown -232-248*x+64*x^2-792*y-960*x*y+64*y^2-424*z-576*x*z-1344*y*z-1536*x*y*z+64*z^2=0 -> [9]
[3+8*x,7+8*y,5+8*z]: failure transposition of [9] {0/3+8*y,0/5+8*z,0/7+8*x} by 3+8*y|3+8*x 7+8*x|7+8*y
[7+8*x,7+8*y,5+8*z]: failure constant=-612, vgcd=8

expanding queue[7]:  - 8 - 48*x + 16*x^2 - 208*y - 288*x*y + 16*y^2 + 24*z - 96*x*z - 288*y*z - 384*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[3+8*x,1+8*y,6+16*z]: failure constant=-8, vgcd=16
[7+8*x,1+8*y,6+16*z]: failure constant=-40, vgcd=16
[3+8*x,5+8*y,6+16*z]: failure constant=-200, vgcd=16
[7+8*x,5+8*y,6+16*z]: failure constant=-520, vgcd=16
[3+8*x,1+8*y,14+16*z]: unknown 80-288*x+64*x^2-992*y-2688*x*y+64*y^2+304*z-384*x*z-1152*y*z-3072*x*y*z+256*z^2=0 -> [10]
[7+8*x,1+8*y,14+16*z]: unknown -48-224*x+64*x^2-2336*y-2688*x*y+64*y^2+112*z-384*x*z-2688*y*z-3072*x*y*z+256*z^2=0 -> [11]
[3+8*x,5+8*y,14+16*z]: unknown -400-1632*x+64*x^2-928*y-2688*x*y+64*y^2-272*z-1920*x*z-1152*y*z-3072*x*y*z+256*z^2=0 -> [12]
[7+8*x,5+8*y,14+16*z]: unknown -1200-1568*x+64*x^2-2272*y-2688*x*y+64*y^2-1232*z-1920*x*z-2688*y*z-3072*x*y*z+256*z^2=0 -> [13]

expanding queue[8]:  - 48 - 56*x + 64*x^2 - 56*y - 192*x*y + 64*y^2 - 1160*z - 1344*x*z - 1344*y*z - 1536*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[7+16*x,7+16*y,1+16*z]: failure, grown from [8]
[15+16*x,7+16*y,1+16*z]: failure constant=-40, vgcd=16
[7+16*x,15+16*y,1+16*z]: failure constant=-40, vgcd=16
[15+16*x,15+16*y,1+16*z]: unknown -224-240*x+256*x^2-240*y-768*x*y+256*y^2-10768*z-11520*x*z-11520*y*z-12288*x*y*z+256*z^2=0 -> [14]
[7+16*x,7+16*y,9+16*z]: failure constant=-1144, vgcd=16
[15+16*x,7+16*y,9+16*z]: unknown -2480-2544*x+256*x^2-6256*y-6912*x*y+256*y^2-4752*z-5376*x*z-11520*y*z-12288*x*y*z+256*z^2=0 -> [15]
[7+16*x,15+16*y,9+16*z]: failure transposition of [15] {0/15+16*x,0/7+16*y,0/9+16*z} by 15+16*x|15+16*y 7+16*y|7+16*x
[15+16*x,15+16*y,9+16*z]: failure constant=-5544, vgcd=16

expanding queue[9]:  - 232 - 248*x + 64*x^2 - 792*y - 960*x*y + 64*y^2 - 424*z - 576*x*z - 1344*y*z - 1536*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[7+16*x,3+16*y,5+16*z]: failure constant=-232, vgcd=16
[15+16*x,3+16*y,5+16*z]: unknown -416-240*x+256*x^2-3504*y-3840*x*y+256*y^2-2000*z-2304*x*z-11520*y*z-12288*x*y*z+256*z^2=0 -> [16]
[7+16*x,11+16*y,5+16*z]: unknown -960-2416*x+256*x^2-1328*y-3840*x*y+256*y^2-3536*z-8448*x*z-5376*y*z-12288*x*y*z+256*z^2=0 -> [17]
[15+16*x,11+16*y,5+16*z]: failure constant=-2104, vgcd=16
[7+16*x,3+16*y,13+16*z]: unknown -592-1648*x+256*x^2-4272*y-9984*x*y+256*y^2-592*z-2304*x*z-5376*y*z-12288*x*y*z+256*z^2=0 -> [18]
[15+16*x,3+16*y,13+16*z]: failure constant=-1352, vgcd=16
[7+16*x,11+16*y,13+16*z]: failure constant=-2664, vgcd=16
[15+16*x,11+16*y,13+16*z]: unknown -5920-6384*x+256*x^2-9008*y-9984*x*y+256*y^2-7504*z-8448*x*z-11520*y*z-12288*x*y*z+256*z^2=0 -> [19]
Maximum level 3 reached, queue size = 20
