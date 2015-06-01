Expanding for base 2, transposables =    0   0   0   3

expanding queue[0]: a^3 + b^3 + c^3 - d^3 = 0 modulo [2,2,2,2] *2
[0+2*a,0+2*b,0+2*c,0+2*d]: same form as 8*a^3+8*b^3+8*c^3-8*d^3=0 success [0,0,0,0],trivial(3) success [2,0,0,2],trivial(3) success [0,2,0,2],trivial(3) success [0,0,2,2],trivial(3) 
[1+2*a,0+2*b,0+2*c,0+2*d]: failure constant=1, vgcd=2
[0+2*a,1+2*b,0+2*c,0+2*d]: failure constant=1, vgcd=2
[1+2*a,1+2*b,0+2*c,0+2*d]: unknown 2+6*a+12*a^2+8*a^3+6*b+12*b^2+8*b^3+8*c^3-8*d^3=0 -> [1]
[0+2*a,0+2*b,1+2*c,0+2*d]: failure constant=1, vgcd=2
[1+2*a,0+2*b,1+2*c,0+2*d]: failure transposition of [1] {0/0+2*c,0/1+2*a,0/1+2*b,3/0+2*d} by 0+2*c|0+2*b 1+2*b|1+2*c
[0+2*a,1+2*b,1+2*c,0+2*d]: failure transposition of [1] {0/0+2*c,0/1+2*a,0/1+2*b,3/0+2*d} by 0+2*c|0+2*a 1+2*a|1+2*b 1+2*b|1+2*c
[1+2*a,1+2*b,1+2*c,0+2*d]: failure constant=3, vgcd=2
[0+2*a,0+2*b,0+2*c,1+2*d]: failure constant=-1, vgcd=2
[1+2*a,0+2*b,0+2*c,1+2*d]: success [1,0,0,1],trivial(3) success [3,0,0,3],trivial(3)  6*a+12*a^2+8*a^3+8*b^3+8*c^3-6*d-12*d^2-8*d^3=0 -> [2]
[0+2*a,1+2*b,0+2*c,1+2*d]: failure transposition of [2] {0/0+2*b,0/0+2*c,0/1+2*a,3/1+2*d} by 0+2*b|0+2*a 1+2*a|1+2*b success [0,1,0,1],trivial(3) success [0,3,0,3],trivial(3) 
[1+2*a,1+2*b,0+2*c,1+2*d]: failure constant=1, vgcd=2
[0+2*a,0+2*b,1+2*c,1+2*d]: failure transposition of [2] {0/0+2*b,0/0+2*c,0/1+2*a,3/1+2*d} by 0+2*b|0+2*a 0+2*c|0+2*b 1+2*a|1+2*c success [0,0,1,1],trivial(3) success [0,0,3,3],trivial(3) 
[1+2*a,0+2*b,1+2*c,1+2*d]: failure constant=1, vgcd=2
[0+2*a,1+2*b,1+2*c,1+2*d]: failure constant=1, vgcd=2
[1+2*a,1+2*b,1+2*c,1+2*d]: unknown 2+6*a+12*a^2+8*a^3+6*b+12*b^2+8*b^3+6*c+12*c^2+8*c^3-6*d-12*d^2-8*d^3=0 -> [3]

expanding queue[1]: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 + 8*c^3 - 8*d^3 = 0 modulo [2,2,1,1] *4
[1+4*a,1+4*b,0+2*c,0+2*d]: failure constant=2, vgcd=4
[3+4*a,1+4*b,0+2*c,0+2*d]: unknown 28+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3+8*c^3-8*d^3=0 -> [4]
[1+4*a,3+4*b,0+2*c,0+2*d]: failure transposition of [4] {0/0+2*c,0/1+4*b,0/3+4*a,3/0+2*d} by 1+4*b|1+4*a 3+4*a|3+4*b
[3+4*a,3+4*b,0+2*c,0+2*d]: failure constant=54, vgcd=4

expanding queue[2]: 6*a + 12*a^2 + 8*a^3 + 8*b^3 + 8*c^3 - 6*d - 12*d^2 - 8*d^3 = 0 modulo [2,1,1,2] *4
[1+4*a,0+2*b,0+2*c,1+4*d]: grown from [0] 12*a+48*a^2+64*a^3+8*b^3+8*c^3-12*d-48*d^2-64*d^3=0 success [1,0,0,1],trivial(3) success [5,0,0,5],trivial(3) 
[3+4*a,0+2*b,0+2*c,1+4*d]: failure constant=26, vgcd=4
[1+4*a,0+2*b,0+2*c,3+4*d]: failure constant=-26, vgcd=4
[3+4*a,0+2*b,0+2*c,3+4*d]: grown from [2] 108*a+144*a^2+64*a^3+8*b^3+8*c^3-108*d-144*d^2-64*d^3=0 success [3,0,0,3],trivial(3) success [7,0,0,7],trivial(3) 

expanding queue[3]: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 + 6*c + 12*c^2 + 8*c^3 - 6*d - 12*d^2 - 8*d^3 = 0 modulo [2,2,2,2] *4
[1+4*a,1+4*b,1+4*c,1+4*d]: failure constant=2, vgcd=4
[3+4*a,1+4*b,1+4*c,1+4*d]: unknown 28+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3+12*c+48*c^2+64*c^3-12*d-48*d^2-64*d^3=0 -> [5]
[1+4*a,3+4*b,1+4*c,1+4*d]: failure transposition of [5] {0/1+4*b,0/1+4*c,0/3+4*a,3/1+4*d} by 1+4*b|1+4*a 3+4*a|3+4*b
[3+4*a,3+4*b,1+4*c,1+4*d]: failure constant=54, vgcd=4
[1+4*a,1+4*b,3+4*c,1+4*d]: failure transposition of [5] {0/1+4*b,0/1+4*c,0/3+4*a,3/1+4*d} by 1+4*b|1+4*a 1+4*c|1+4*b 3+4*a|3+4*c
[3+4*a,1+4*b,3+4*c,1+4*d]: failure constant=54, vgcd=4
[1+4*a,3+4*b,3+4*c,1+4*d]: failure constant=54, vgcd=4
[3+4*a,3+4*b,3+4*c,1+4*d]: unknown 80+108*a+144*a^2+64*a^3+108*b+144*b^2+64*b^3+108*c+144*c^2+64*c^3-12*d-48*d^2-64*d^3=0 -> [6]
[1+4*a,1+4*b,1+4*c,3+4*d]: unknown -24+12*a+48*a^2+64*a^3+12*b+48*b^2+64*b^3+12*c+48*c^2+64*c^3-108*d-144*d^2-64*d^3=0 -> [7]
[3+4*a,1+4*b,1+4*c,3+4*d]: failure constant=2, vgcd=4
[1+4*a,3+4*b,1+4*c,3+4*d]: failure constant=2, vgcd=4
[3+4*a,3+4*b,1+4*c,3+4*d]: unknown 28+108*a+144*a^2+64*a^3+108*b+144*b^2+64*b^3+12*c+48*c^2+64*c^3-108*d-144*d^2-64*d^3=0 -> [8]
[1+4*a,1+4*b,3+4*c,3+4*d]: failure constant=2, vgcd=4
[3+4*a,1+4*b,3+4*c,3+4*d]: failure transposition of [8] {0/1+4*c,0/3+4*a,0/3+4*b,3/3+4*d} by 1+4*c|1+4*b 3+4*b|3+4*c
[1+4*a,3+4*b,3+4*c,3+4*d]: failure transposition of [8] {0/1+4*c,0/3+4*a,0/3+4*b,3/3+4*d} by 1+4*c|1+4*a 3+4*a|3+4*b 3+4*b|3+4*c
[3+4*a,3+4*b,3+4*c,3+4*d]: failure constant=54, vgcd=4

expanding queue[4]: 28 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 8*c^3 - 8*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,1+8*b,0+4*c,0+4*d]: failure constant=28, vgcd=8
[7+8*a,1+8*b,0+4*c,0+4*d]: unknown 344+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3+64*c^3-64*d^3=0 -> [9]
[3+8*a,5+8*b,0+4*c,0+4*d]: unknown 152+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+64*c^3-64*d^3=0 -> [10]
[7+8*a,5+8*b,0+4*c,0+4*d]: failure constant=468, vgcd=8
[3+8*a,1+8*b,2+4*c,0+4*d]: failure constant=36, vgcd=8
[7+8*a,1+8*b,2+4*c,0+4*d]: unknown 352+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3+48*c+96*c^2+64*c^3-64*d^3=0 -> [11]
[3+8*a,5+8*b,2+4*c,0+4*d]: unknown 160+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+48*c+96*c^2+64*c^3-64*d^3=0 -> [12]
[7+8*a,5+8*b,2+4*c,0+4*d]: failure constant=476, vgcd=8
[3+8*a,1+8*b,0+4*c,2+4*d]: failure constant=20, vgcd=8
[7+8*a,1+8*b,0+4*c,2+4*d]: unknown 336+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3+64*c^3-48*d-96*d^2-64*d^3=0 -> [13]
[3+8*a,5+8*b,0+4*c,2+4*d]: success [3,5,4,6],NONTRIVIAL  144+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+64*c^3-48*d-96*d^2-64*d^3=0 -> [14]
[7+8*a,5+8*b,0+4*c,2+4*d]: failure constant=460, vgcd=8
[3+8*a,1+8*b,2+4*c,2+4*d]: failure constant=28, vgcd=8
[7+8*a,1+8*b,2+4*c,2+4*d]: unknown 344+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3+48*c+96*c^2+64*c^3-48*d-96*d^2-64*d^3=0 -> [15]
[3+8*a,5+8*b,2+4*c,2+4*d]: unknown 152+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+48*c+96*c^2+64*c^3-48*d-96*d^2-64*d^3=0 -> [16]
[7+8*a,5+8*b,2+4*c,2+4*d]: failure constant=468, vgcd=8

expanding queue[5]: 28 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 12*c + 48*c^2 + 64*c^3 - 12*d - 48*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,1+8*b,1+8*c,1+8*d]: failure constant=28, vgcd=8
[7+8*a,1+8*b,1+8*c,1+8*d]: unknown 344+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3+24*c+192*c^2+512*c^3-24*d-192*d^2-512*d^3=0 -> [17]
[3+8*a,5+8*b,1+8*c,1+8*d]: unknown 152+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+24*c+192*c^2+512*c^3-24*d-192*d^2-512*d^3=0 -> [18]
[7+8*a,5+8*b,1+8*c,1+8*d]: failure constant=468, vgcd=8
[3+8*a,1+8*b,5+8*c,1+8*d]: failure transposition of [18] {0/1+8*c,0/3+8*a,0/5+8*b,3/1+8*d} by 1+8*c|1+8*b 5+8*b|5+8*c
[7+8*a,1+8*b,5+8*c,1+8*d]: failure constant=468, vgcd=8
[3+8*a,5+8*b,5+8*c,1+8*d]: failure constant=276, vgcd=8
[7+8*a,5+8*b,5+8*c,1+8*d]: unknown 592+1176*a+1344*a^2+512*a^3+600*b+960*b^2+512*b^3+600*c+960*c^2+512*c^3-24*d-192*d^2-512*d^3=0 -> [19]
[3+8*a,1+8*b,1+8*c,5+8*d]: unknown -96+216*a+576*a^2+512*a^3+24*b+192*b^2+512*b^3+24*c+192*c^2+512*c^3-600*d-960*d^2-512*d^3=0 -> [20]
[7+8*a,1+8*b,1+8*c,5+8*d]: failure constant=220, vgcd=8
[3+8*a,5+8*b,1+8*c,5+8*d]: failure constant=28, vgcd=8
[7+8*a,5+8*b,1+8*c,5+8*d]: unknown 344+1176*a+1344*a^2+512*a^3+600*b+960*b^2+512*b^3+24*c+192*c^2+512*c^3-600*d-960*d^2-512*d^3=0 -> [21]
[3+8*a,1+8*b,5+8*c,5+8*d]: failure constant=28, vgcd=8
[7+8*a,1+8*b,5+8*c,5+8*d]: failure transposition of [21] {0/1+8*c,0/5+8*b,0/7+8*a,3/5+8*d} by 1+8*c|1+8*b 5+8*b|5+8*c
[3+8*a,5+8*b,5+8*c,5+8*d]: unknown 152+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+600*c+960*c^2+512*c^3-600*d-960*d^2-512*d^3=0 -> [22]
[7+8*a,5+8*b,5+8*c,5+8*d]: failure constant=468, vgcd=8

expanding queue[6]: 80 + 108*a + 144*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 + 108*c + 144*c^2 + 64*c^3 - 12*d - 48*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,3+8*b,3+8*c,1+8*d]: grown from [0] 80+216*a+576*a^2+512*a^3+216*b+576*b^2+512*b^3+216*c+576*c^2+512*c^3-24*d-192*d^2-512*d^3=0
[7+8*a,3+8*b,3+8*c,1+8*d]: failure constant=396, vgcd=8
[3+8*a,7+8*b,3+8*c,1+8*d]: failure constant=396, vgcd=8
[7+8*a,7+8*b,3+8*c,1+8*d]: unknown 712+1176*a+1344*a^2+512*a^3+1176*b+1344*b^2+512*b^3+216*c+576*c^2+512*c^3-24*d-192*d^2-512*d^3=0 -> [23]
[3+8*a,3+8*b,7+8*c,1+8*d]: failure constant=396, vgcd=8
[7+8*a,3+8*b,7+8*c,1+8*d]: failure transposition of [23] {0/3+8*c,0/7+8*a,0/7+8*b,3/1+8*d} by 3+8*c|3+8*b 7+8*b|7+8*c
[3+8*a,7+8*b,7+8*c,1+8*d]: failure transposition of [23] {0/3+8*c,0/7+8*a,0/7+8*b,3/1+8*d} by 3+8*c|3+8*a 7+8*a|7+8*b 7+8*b|7+8*c
[7+8*a,7+8*b,7+8*c,1+8*d]: failure constant=1028, vgcd=8
[3+8*a,3+8*b,3+8*c,5+8*d]: failure constant=-44, vgcd=8
[7+8*a,3+8*b,3+8*c,5+8*d]: unknown 272+1176*a+1344*a^2+512*a^3+216*b+576*b^2+512*b^3+216*c+576*c^2+512*c^3-600*d-960*d^2-512*d^3=0 -> [24]
[3+8*a,7+8*b,3+8*c,5+8*d]: failure transposition of [24] {0/3+8*b,0/3+8*c,0/7+8*a,3/5+8*d} by 3+8*b|3+8*a 7+8*a|7+8*b
[7+8*a,7+8*b,3+8*c,5+8*d]: failure constant=588, vgcd=8
[3+8*a,3+8*b,7+8*c,5+8*d]: failure transposition of [24] {0/3+8*b,0/3+8*c,0/7+8*a,3/5+8*d} by 3+8*b|3+8*a 3+8*c|3+8*b 7+8*a|7+8*c
[7+8*a,3+8*b,7+8*c,5+8*d]: failure constant=588, vgcd=8
[3+8*a,7+8*b,7+8*c,5+8*d]: failure constant=588, vgcd=8
[7+8*a,7+8*b,7+8*c,5+8*d]: grown from [3] 904+1176*a+1344*a^2+512*a^3+1176*b+1344*b^2+512*b^3+1176*c+1344*c^2+512*c^3-600*d-960*d^2-512*d^3=0

expanding queue[7]:  - 24 + 12*a + 48*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 12*c + 48*c^2 + 64*c^3 - 108*d - 144*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[1+8*a,1+8*b,1+8*c,3+8*d]: grown from [0] -24+24*a+192*a^2+512*a^3+24*b+192*b^2+512*b^3+24*c+192*c^2+512*c^3-216*d-576*d^2-512*d^3=0
[5+8*a,1+8*b,1+8*c,3+8*d]: failure constant=100, vgcd=8
[1+8*a,5+8*b,1+8*c,3+8*d]: failure constant=100, vgcd=8
[5+8*a,5+8*b,1+8*c,3+8*d]: unknown 224+600*a+960*a^2+512*a^3+600*b+960*b^2+512*b^3+24*c+192*c^2+512*c^3-216*d-576*d^2-512*d^3=0 -> [25]
[1+8*a,1+8*b,5+8*c,3+8*d]: failure constant=100, vgcd=8
[5+8*a,1+8*b,5+8*c,3+8*d]: failure transposition of [25] {0/1+8*c,0/5+8*a,0/5+8*b,3/3+8*d} by 1+8*c|1+8*b 5+8*b|5+8*c
[1+8*a,5+8*b,5+8*c,3+8*d]: failure transposition of [25] {0/1+8*c,0/5+8*a,0/5+8*b,3/3+8*d} by 1+8*c|1+8*a 5+8*a|5+8*b 5+8*b|5+8*c
[5+8*a,5+8*b,5+8*c,3+8*d]: failure constant=348, vgcd=8
[1+8*a,1+8*b,1+8*c,7+8*d]: failure constant=-340, vgcd=8
[5+8*a,1+8*b,1+8*c,7+8*d]: unknown -216+600*a+960*a^2+512*a^3+24*b+192*b^2+512*b^3+24*c+192*c^2+512*c^3-1176*d-1344*d^2-512*d^3=0 -> [26]
[1+8*a,5+8*b,1+8*c,7+8*d]: failure transposition of [26] {0/1+8*b,0/1+8*c,0/5+8*a,3/7+8*d} by 1+8*b|1+8*a 5+8*a|5+8*b
[5+8*a,5+8*b,1+8*c,7+8*d]: failure constant=-92, vgcd=8
[1+8*a,1+8*b,5+8*c,7+8*d]: failure transposition of [26] {0/1+8*b,0/1+8*c,0/5+8*a,3/7+8*d} by 1+8*b|1+8*a 1+8*c|1+8*b 5+8*a|5+8*c
[5+8*a,1+8*b,5+8*c,7+8*d]: failure constant=-92, vgcd=8
[1+8*a,5+8*b,5+8*c,7+8*d]: failure constant=-92, vgcd=8
[5+8*a,5+8*b,5+8*c,7+8*d]: grown from [3] 32+600*a+960*a^2+512*a^3+600*b+960*b^2+512*b^3+600*c+960*c^2+512*c^3-1176*d-1344*d^2-512*d^3=0

expanding queue[8]: 28 + 108*a + 144*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 + 12*c + 48*c^2 + 64*c^3 - 108*d - 144*d^2 - 64*d^3 = 0 modulo [2,2,2,2] *8
[3+8*a,3+8*b,1+8*c,3+8*d]: failure constant=28, vgcd=8
[7+8*a,3+8*b,1+8*c,3+8*d]: unknown 344+1176*a+1344*a^2+512*a^3+216*b+576*b^2+512*b^3+24*c+192*c^2+512*c^3-216*d-576*d^2-512*d^3=0 -> [27]
[3+8*a,7+8*b,1+8*c,3+8*d]: failure transposition of [27] {0/1+8*c,0/3+8*b,0/7+8*a,3/3+8*d} by 3+8*b|3+8*a 7+8*a|7+8*b
[7+8*a,7+8*b,1+8*c,3+8*d]: failure constant=660, vgcd=8
[3+8*a,3+8*b,5+8*c,3+8*d]: unknown 152+216*a+576*a^2+512*a^3+216*b+576*b^2+512*b^3+600*c+960*c^2+512*c^3-216*d-576*d^2-512*d^3=0 -> [28]
[7+8*a,3+8*b,5+8*c,3+8*d]: failure constant=468, vgcd=8
[3+8*a,7+8*b,5+8*c,3+8*d]: failure constant=468, vgcd=8
[7+8*a,7+8*b,5+8*c,3+8*d]: unknown 784+1176*a+1344*a^2+512*a^3+1176*b+1344*b^2+512*b^3+600*c+960*c^2+512*c^3-216*d-576*d^2-512*d^3=0 -> [29]
[3+8*a,3+8*b,1+8*c,7+8*d]: unknown -288+216*a+576*a^2+512*a^3+216*b+576*b^2+512*b^3+24*c+192*c^2+512*c^3-1176*d-1344*d^2-512*d^3=0 -> [30]
[7+8*a,3+8*b,1+8*c,7+8*d]: failure constant=28, vgcd=8
[3+8*a,7+8*b,1+8*c,7+8*d]: failure constant=28, vgcd=8
[7+8*a,7+8*b,1+8*c,7+8*d]: unknown 344+1176*a+1344*a^2+512*a^3+1176*b+1344*b^2+512*b^3+24*c+192*c^2+512*c^3-1176*d-1344*d^2-512*d^3=0 -> [31]
[3+8*a,3+8*b,5+8*c,7+8*d]: failure constant=-164, vgcd=8
[7+8*a,3+8*b,5+8*c,7+8*d]: unknown 152+1176*a+1344*a^2+512*a^3+216*b+576*b^2+512*b^3+600*c+960*c^2+512*c^3-1176*d-1344*d^2-512*d^3=0 -> [32]
[3+8*a,7+8*b,5+8*c,7+8*d]: failure transposition of [32] {0/3+8*b,0/5+8*c,0/7+8*a,3/7+8*d} by 3+8*b|3+8*a 7+8*a|7+8*b
[7+8*a,7+8*b,5+8*c,7+8*d]: failure constant=468, vgcd=8
Maximum level 2 reached, queue size = 33
