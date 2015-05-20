Expanding for base 2, transposables =    0   0   0

expanding queue[0]: x^2 + y^2 - 3*x*y*z + z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: success [0,0,0],trivial(3)  4*x^2+4*y^2-24*x*y*z+4*z^2=0 -> [1]
[1+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=1, vgcd=4
[1+2*x,1+2*y,0+2*z]: success [1,1,2],trivial(2)  2+4*x+4*x^2+4*y+4*y^2-6*z-12*x*z-12*y*z-24*x*y*z+4*z^2=0 -> [2]
[0+2*x,0+2*y,1+2*z]: failure constant=1, vgcd=4
[1+2*x,0+2*y,1+2*z]: failure transposition of [2] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*y 1+2*y|1+2*z
[0+2*x,1+2*y,1+2*z]: failure transposition of [2] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*x 1+2*x|1+2*y 1+2*y|1+2*z
[1+2*x,1+2*y,1+2*z]: success [1,1,1],trivial(2)  -2*x+4*x^2-2*y-12*x*y+4*y^2-2*z-12*x*z-12*y*z-24*x*y*z+4*z^2=0 -> [3]

expanding queue[1]: 4*x^2 + 4*y^2 - 24*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[0+4*x,0+4*y,0+4*z]: success [0,0,0],trivial(3)  16*x^2+16*y^2-192*x*y*z+16*z^2=0 -> [4]
[2+4*x,0+4*y,0+4*z]: failure constant=4, vgcd=16
[0+4*x,2+4*y,0+4*z]: failure constant=4, vgcd=16
[2+4*x,2+4*y,0+4*z]: failure constant=8, vgcd=16
[0+4*x,0+4*y,2+4*z]: failure constant=4, vgcd=16
[2+4*x,0+4*y,2+4*z]: failure constant=8, vgcd=16
[0+4*x,2+4*y,2+4*z]: failure constant=8, vgcd=16
[2+4*x,2+4*y,2+4*z]: failure constant=-12, vgcd=16

expanding queue[2]: 2 + 4*x + 4*x^2 + 4*y + 4*y^2 - 6*z - 12*x*z - 12*y*z - 24*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,0+4*z]: failure constant=2, vgcd=4
[3+4*x,1+4*y,0+4*z]: failure constant=10, vgcd=4
[1+4*x,3+4*y,0+4*z]: failure constant=10, vgcd=4
[3+4*x,3+4*y,0+4*z]: failure constant=18, vgcd=4
[1+4*x,1+4*y,2+4*z]: success [1,1,2],trivial(2) success [5,1,2],NONTRIVIAL success [1,5,2],NONTRIVIAL  -16*x+16*x^2-16*y-96*x*y+16*y^2+4*z-48*x*z-48*y*z-192*x*y*z+16*z^2=0 -> [5]
[3+4*x,1+4*y,2+4*z]: unknown -4+16*x^2-64*y-96*x*y+16*y^2-20*z-48*x*z-144*y*z-192*x*y*z+16*z^2=0 -> [6]
[1+4*x,3+4*y,2+4*z]: failure transposition of [6] {0/1+4*y,0/2+4*z,0/3+4*x} by 1+4*y|1+4*x 3+4*x|3+4*y
[3+4*x,3+4*y,2+4*z]: unknown -32-48*x+16*x^2-48*y-96*x*y+16*y^2-92*z-144*x*z-144*y*z-192*x*y*z+16*z^2=0 -> [7]

expanding queue[3]:  - 2*x + 4*x^2 - 2*y - 12*x*y + 4*y^2 - 2*z - 12*x*z - 12*y*z - 24*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,1+4*z]: success [1,1,1],trivial(2)  -4*x+16*x^2-4*y-48*x*y+16*y^2-4*z-48*x*z-48*y*z-192*x*y*z+16*z^2=0 -> [8]
[3+4*x,1+4*y,1+4*z]: failure constant=2, vgcd=4
[1+4*x,3+4*y,1+4*z]: failure constant=2, vgcd=4
[3+4*x,3+4*y,1+4*z]: unknown -8-12*x+16*x^2-12*y-48*x*y+16*y^2-100*z-144*x*z-144*y*z-192*x*y*z+16*z^2=0 -> [9]
[1+4*x,1+4*y,3+4*z]: failure constant=2, vgcd=4
[3+4*x,1+4*y,3+4*z]: failure transposition of [9] {0/1+4*z,0/3+4*x,0/3+4*y} by 1+4*z|1+4*y 3+4*y|3+4*z
[1+4*x,3+4*y,3+4*z]: failure transposition of [9] {0/1+4*z,0/3+4*x,0/3+4*y} by 1+4*z|1+4*x 3+4*x|3+4*y 3+4*y|3+4*z
[3+4*x,3+4*y,3+4*z]: failure constant=-54, vgcd=4

expanding queue[4]: 16*x^2 + 16*y^2 - 192*x*y*z + 16*z^2 = 0 modulo [1,1,1] *8
[0+4*x,0+4*y,0+4*z]: similiar to  [4], same  16*x^2+16*y^2-192*x*y*z+16*z^2=0

expanding queue[5]:  - 16*x + 16*x^2 - 16*y - 96*x*y + 16*y^2 + 4*z - 48*x*z - 48*y*z - 192*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[1+4*x,1+4*y,2+8*z]: success [1,1,2],trivial(2) success [5,1,2],NONTRIVIAL success [1,5,2],NONTRIVIAL  -16*x+16*x^2-16*y-96*x*y+16*y^2+8*z-96*x*z-96*y*z-384*x*y*z+64*z^2=0 -> [10]
[1+4*x,1+4*y,6+8*z]: failure constant=20, vgcd=8

expanding queue[6]:  - 4 + 16*x^2 - 64*y - 96*x*y + 16*y^2 - 20*z - 48*x*z - 144*y*z - 192*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[3+4*x,1+4*y,2+8*z]: failure constant=-4, vgcd=8
[3+4*x,1+4*y,6+8*z]: unknown -8-48*x+16*x^2-208*y-288*x*y+16*y^2+24*z-96*x*z-288*y*z-384*x*y*z+64*z^2=0 -> [11]

expanding queue[7]:  - 32 - 48*x + 16*x^2 - 48*y - 96*x*y + 16*y^2 - 92*z - 144*x*z - 144*y*z - 192*x*y*z + 16*z^2 = 0 modulo [1,1,2] *8
[3+4*x,3+4*y,2+8*z]: unknown -32-48*x+16*x^2-48*y-96*x*y+16*y^2-184*z-288*x*z-288*y*z-384*x*y*z+64*z^2=0 -> [12]
[3+4*x,3+4*y,6+8*z]: failure constant=-108, vgcd=8

expanding queue[8]:  - 4*x + 16*x^2 - 4*y - 48*x*y + 16*y^2 - 4*z - 48*x*z - 48*y*z - 192*x*y*z + 16*z^2 = 0 modulo [2,2,2] *8
[1+8*x,1+8*y,1+8*z]: success [1,1,1],trivial(2)  -8*x+64*x^2-8*y-192*x*y+64*y^2-8*z-192*x*z-192*y*z-1536*x*y*z+64*z^2=0 -> [13]
[5+8*x,1+8*y,1+8*z]: failure constant=12, vgcd=8
[1+8*x,5+8*y,1+8*z]: failure constant=12, vgcd=8
[5+8*x,5+8*y,1+8*z]: success [13,5,1],NONTRIVIAL success [5,13,1],NONTRIVIAL  -24-40*x+64*x^2-40*y-192*x*y+64*y^2-584*z-960*x*z-960*y*z-1536*x*y*z+64*z^2=0 -> [14]
[1+8*x,1+8*y,5+8*z]: failure constant=12, vgcd=8
[5+8*x,1+8*y,5+8*z]: failure transposition of [14] {0/1+8*z,0/5+8*x,0/5+8*y} by 1+8*z|1+8*y 5+8*y|5+8*z
[1+8*x,5+8*y,5+8*z]: failure transposition of [14] {0/1+8*z,0/5+8*x,0/5+8*y} by 1+8*z|1+8*x 5+8*x|5+8*y 5+8*y|5+8*z
[5+8*x,5+8*y,5+8*z]: failure constant=-300, vgcd=8

expanding queue[9]:  - 8 - 12*x + 16*x^2 - 12*y - 48*x*y + 16*y^2 - 100*z - 144*x*z - 144*y*z - 192*x*y*z + 16*z^2 = 0 modulo [2,2,2] *8
[3+8*x,3+8*y,1+8*z]: unknown -8-24*x+64*x^2-24*y-192*x*y+64*y^2-200*z-576*x*z-576*y*z-1536*x*y*z+64*z^2=0 -> [15]
[7+8*x,3+8*y,1+8*z]: failure constant=-4, vgcd=8
[3+8*x,7+8*y,1+8*z]: failure constant=-4, vgcd=8
[7+8*x,7+8*y,1+8*z]: unknown -48-56*x+64*x^2-56*y-192*x*y+64*y^2-1160*z-1344*x*z-1344*y*z-1536*x*y*z+64*z^2=0 -> [16]
[3+8*x,3+8*y,5+8*z]: failure constant=-92, vgcd=8
[7+8*x,3+8*y,5+8*z]: unknown -232-248*x+64*x^2-792*y-960*x*y+64*y^2-424*z-576*x*z-1344*y*z-1536*x*y*z+64*z^2=0 -> [17]
[3+8*x,7+8*y,5+8*z]: failure transposition of [17] {0/3+8*y,0/5+8*z,0/7+8*x} by 3+8*y|3+8*x 7+8*x|7+8*y
[7+8*x,7+8*y,5+8*z]: failure constant=-612, vgcd=8

expanding queue[10]:  - 16*x + 16*x^2 - 16*y - 96*x*y + 16*y^2 + 8*z - 96*x*z - 96*y*z - 384*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[1+8*x,1+8*y,2+16*z]: success [1,1,2],trivial(2)  -32*x+64*x^2-32*y-384*x*y+64*y^2+16*z-384*x*z-384*y*z-3072*x*y*z+256*z^2=0 -> [18]
[5+8*x,1+8*y,2+16*z]: success [5,1,2],NONTRIVIAL  32*x+64*x^2-224*y-384*x*y+64*y^2-176*z-384*x*z-1920*y*z-3072*x*y*z+256*z^2=0 -> [19]
[1+8*x,5+8*y,2+16*z]: failure transposition of [19] {0/1+8*y,0/2+16*z,0/5+8*x} by 1+8*y|1+8*x 5+8*x|5+8*y
[5+8*x,5+8*y,2+16*z]: unknown -96-160*x+64*x^2-160*y-384*x*y+64*y^2-1136*z-1920*x*z-1920*y*z-3072*x*y*z+256*z^2=0 -> [20]
[1+8*x,1+8*y,10+16*z]: failure constant=72, vgcd=16
[5+8*x,1+8*y,10+16*z]: failure constant=-24, vgcd=16
[1+8*x,5+8*y,10+16*z]: failure constant=-24, vgcd=16
[5+8*x,5+8*y,10+16*z]: failure constant=-600, vgcd=16

expanding queue[11]:  - 8 - 48*x + 16*x^2 - 208*y - 288*x*y + 16*y^2 + 24*z - 96*x*z - 288*y*z - 384*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[3+8*x,1+8*y,6+16*z]: failure constant=-8, vgcd=16
[7+8*x,1+8*y,6+16*z]: failure constant=-40, vgcd=16
[3+8*x,5+8*y,6+16*z]: failure constant=-200, vgcd=16
[7+8*x,5+8*y,6+16*z]: failure constant=-520, vgcd=16
[3+8*x,1+8*y,14+16*z]: unknown 80-288*x+64*x^2-992*y-2688*x*y+64*y^2+304*z-384*x*z-1152*y*z-3072*x*y*z+256*z^2=0 -> [21]
[7+8*x,1+8*y,14+16*z]: unknown -48-224*x+64*x^2-2336*y-2688*x*y+64*y^2+112*z-384*x*z-2688*y*z-3072*x*y*z+256*z^2=0 -> [22]
[3+8*x,5+8*y,14+16*z]: unknown -400-1632*x+64*x^2-928*y-2688*x*y+64*y^2-272*z-1920*x*z-1152*y*z-3072*x*y*z+256*z^2=0 -> [23]
[7+8*x,5+8*y,14+16*z]: unknown -1200-1568*x+64*x^2-2272*y-2688*x*y+64*y^2-1232*z-1920*x*z-2688*y*z-3072*x*y*z+256*z^2=0 -> [24]

expanding queue[12]:  - 32 - 48*x + 16*x^2 - 48*y - 96*x*y + 16*y^2 - 184*z - 288*x*z - 288*y*z - 384*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[3+8*x,3+8*y,2+16*z]: unknown -32-96*x+64*x^2-96*y-384*x*y+64*y^2-368*z-1152*x*z-1152*y*z-3072*x*y*z+256*z^2=0 -> [25]
[7+8*x,3+8*y,2+16*z]: unknown -64-32*x+64*x^2-288*y-384*x*y+64*y^2-944*z-1152*x*z-2688*y*z-3072*x*y*z+256*z^2=0 -> [26]
[3+8*x,7+8*y,2+16*z]: failure transposition of [26] {0/2+16*z,0/3+8*y,0/7+8*x} by 3+8*y|3+8*x 7+8*x|7+8*y
[7+8*x,7+8*y,2+16*z]: unknown -192-224*x+64*x^2-224*y-384*x*y+64*y^2-2288*z-2688*x*z-2688*y*z-3072*x*y*z+256*z^2=0 -> [27]
[3+8*x,3+8*y,10+16*z]: failure constant=-152, vgcd=16
[7+8*x,3+8*y,10+16*z]: failure constant=-472, vgcd=16
[3+8*x,7+8*y,10+16*z]: failure constant=-472, vgcd=16
[7+8*x,7+8*y,10+16*z]: failure constant=-1272, vgcd=16

expanding queue[13]:  - 8*x + 64*x^2 - 8*y - 192*x*y + 64*y^2 - 8*z - 192*x*z - 192*y*z - 1536*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[1+16*x,1+16*y,1+16*z]: success [1,1,1],trivial(2)  -16*x+256*x^2-16*y-768*x*y+256*y^2-16*z-768*x*z-768*y*z-12288*x*y*z+256*z^2=0 -> [28]
[9+16*x,1+16*y,1+16*z]: failure constant=56, vgcd=16
[1+16*x,9+16*y,1+16*z]: failure constant=56, vgcd=16
[9+16*x,9+16*y,1+16*z]: unknown -80-144*x+256*x^2-144*y-768*x*y+256*y^2-3856*z-6912*x*z-6912*y*z-12288*x*y*z+256*z^2=0 -> [29]
[1+16*x,1+16*y,9+16*z]: failure constant=56, vgcd=16
[9+16*x,1+16*y,9+16*z]: failure transposition of [29] {0/1+16*z,0/9+16*x,0/9+16*y} by 1+16*z|1+16*y 9+16*y|9+16*z
[1+16*x,9+16*y,9+16*z]: failure transposition of [29] {0/1+16*z,0/9+16*x,0/9+16*y} by 1+16*z|1+16*x 9+16*x|9+16*y 9+16*y|9+16*z
[9+16*x,9+16*y,9+16*z]: failure constant=-1944, vgcd=16

expanding queue[14]:  - 24 - 40*x + 64*x^2 - 40*y - 192*x*y + 64*y^2 - 584*z - 960*x*z - 960*y*z - 1536*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[5+16*x,5+16*y,1+16*z]: failure constant=-24, vgcd=16
[13+16*x,5+16*y,1+16*z]: success [13,5,1],NONTRIVIAL  176*x+256*x^2-464*y-768*x*y+256*y^2-3088*z-3840*x*z-9984*y*z-12288*x*y*z+256*z^2=0 -> [30]
[5+16*x,13+16*y,1+16*z]: failure transposition of [30] {0/1+16*z,0/13+16*x,0/5+16*y} by 13+16*x|13+16*y 5+16*y|5+16*x
[13+16*x,13+16*y,1+16*z]: failure constant=-168, vgcd=16
[5+16*x,5+16*y,9+16*z]: unknown -544-2000*x+256*x^2-2000*y-6912*x*y+256*y^2-912*z-3840*x*z-3840*y*z-12288*x*y*z+256*z^2=0 -> [31]
[13+16*x,5+16*y,9+16*z]: failure constant=-1480, vgcd=16
[5+16*x,13+16*y,9+16*z]: failure constant=-1480, vgcd=16
[13+16*x,13+16*y,9+16*z]: unknown -4144-5200*x+256*x^2-5200*y-6912*x*y+256*y^2-7824*z-9984*x*z-9984*y*z-12288*x*y*z+256*z^2=0 -> [32]

expanding queue[15]:  - 8 - 24*x + 64*x^2 - 24*y - 192*x*y + 64*y^2 - 200*z - 576*x*z - 576*y*z - 1536*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[3+16*x,3+16*y,1+16*z]: failure constant=-8, vgcd=16
[11+16*x,3+16*y,1+16*z]: unknown 32+208*x+256*x^2-432*y-768*x*y+256*y^2-1552*z-2304*x*z-8448*y*z-12288*x*y*z+256*z^2=0 -> [33]
[3+16*x,11+16*y,1+16*z]: failure transposition of [33] {0/1+16*z,0/11+16*x,0/3+16*y} by 11+16*x|11+16*y 3+16*y|3+16*x
[11+16*x,11+16*y,1+16*z]: failure constant=-120, vgcd=16
[3+16*x,3+16*y,9+16*z]: unknown -144-1200*x+256*x^2-1200*y-6912*x*y+256*y^2-144*z-2304*x*z-2304*y*z-12288*x*y*z+256*z^2=0 -> [34]
[11+16*x,3+16*y,9+16*z]: failure constant=-680, vgcd=16
[3+16*x,11+16*y,9+16*z]: failure constant=-680, vgcd=16
[11+16*x,11+16*y,9+16*z]: unknown -2944-4400*x+256*x^2-4400*y-6912*x*y+256*y^2-5520*z-8448*x*z-8448*y*z-12288*x*y*z+256*z^2=0 -> [35]

expanding queue[16]:  - 48 - 56*x + 64*x^2 - 56*y - 192*x*y + 64*y^2 - 1160*z - 1344*x*z - 1344*y*z - 1536*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[7+16*x,7+16*y,1+16*z]: unknown -48-112*x+256*x^2-112*y-768*x*y+256*y^2-2320*z-5376*x*z-5376*y*z-12288*x*y*z+256*z^2=0 -> [36]
[15+16*x,7+16*y,1+16*z]: failure constant=-40, vgcd=16
[7+16*x,15+16*y,1+16*z]: failure constant=-40, vgcd=16
[15+16*x,15+16*y,1+16*z]: unknown -224-240*x+256*x^2-240*y-768*x*y+256*y^2-10768*z-11520*x*z-11520*y*z-12288*x*y*z+256*z^2=0 -> [37]
[7+16*x,7+16*y,9+16*z]: failure constant=-1144, vgcd=16
[15+16*x,7+16*y,9+16*z]: unknown -2480-2544*x+256*x^2-6256*y-6912*x*y+256*y^2-4752*z-5376*x*z-11520*y*z-12288*x*y*z+256*z^2=0 -> [38]
[7+16*x,15+16*y,9+16*z]: failure transposition of [38] {0/15+16*x,0/7+16*y,0/9+16*z} by 15+16*x|15+16*y 7+16*y|7+16*x
[15+16*x,15+16*y,9+16*z]: failure constant=-5544, vgcd=16

expanding queue[17]:  - 232 - 248*x + 64*x^2 - 792*y - 960*x*y + 64*y^2 - 424*z - 576*x*z - 1344*y*z - 1536*x*y*z + 64*z^2 = 0 modulo [2,2,2] *16
[7+16*x,3+16*y,5+16*z]: failure constant=-232, vgcd=16
[15+16*x,3+16*y,5+16*z]: unknown -416-240*x+256*x^2-3504*y-3840*x*y+256*y^2-2000*z-2304*x*z-11520*y*z-12288*x*y*z+256*z^2=0 -> [39]
[7+16*x,11+16*y,5+16*z]: unknown -960-2416*x+256*x^2-1328*y-3840*x*y+256*y^2-3536*z-8448*x*z-5376*y*z-12288*x*y*z+256*z^2=0 -> [40]
[15+16*x,11+16*y,5+16*z]: failure constant=-2104, vgcd=16
[7+16*x,3+16*y,13+16*z]: unknown -592-1648*x+256*x^2-4272*y-9984*x*y+256*y^2-592*z-2304*x*z-5376*y*z-12288*x*y*z+256*z^2=0 -> [41]
[15+16*x,3+16*y,13+16*z]: failure constant=-1352, vgcd=16
[7+16*x,11+16*y,13+16*z]: failure constant=-2664, vgcd=16
[15+16*x,11+16*y,13+16*z]: unknown -5920-6384*x+256*x^2-9008*y-9984*x*y+256*y^2-7504*z-8448*x*z-11520*y*z-12288*x*y*z+256*z^2=0 -> [42]
Maximum level 3 reached, queue size = 43
