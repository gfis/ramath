Expanding for base 2, transposables =    0   1   2

expanding queue[0]: a^3 + 3*b^3 - 9*c^3 = 0 modulo [2,2,2] *2
[0+2*a,0+2*b,0+2*c]: same form as 8*a^3+24*b^3-72*c^3=0
[1+2*a,0+2*b,0+2*c]: failure constant=1, vgcd=2
[0+2*a,1+2*b,0+2*c]: failure constant=3, vgcd=2
[1+2*a,1+2*b,0+2*c]: unknown 4+6*a+12*a^2+8*a^3+18*b+36*b^2+24*b^3-72*c^3=0 -> [1]
[0+2*a,0+2*b,1+2*c]: failure constant=-9, vgcd=2
[1+2*a,0+2*b,1+2*c]: unknown -8+6*a+12*a^2+8*a^3+24*b^3-54*c-108*c^2-72*c^3=0 -> [2]
[0+2*a,1+2*b,1+2*c]: unknown -6+8*a^3+18*b+36*b^2+24*b^3-54*c-108*c^2-72*c^3=0 -> [3]
[1+2*a,1+2*b,1+2*c]: failure constant=-5, vgcd=2

expanding queue[1]: 4 + 6*a + 12*a^2 + 8*a^3 + 18*b + 36*b^2 + 24*b^3 - 72*c^3 = 0 modulo [2,2,1] *4
[1+4*a,1+4*b,0+2*c]: similiar to  [1], affine map: {a=(2*a),b=(2*b),c=(1*c)}  4+12*a+48*a^2+64*a^3+36*b+144*b^2+192*b^3-72*c^3=0
[3+4*a,1+4*b,0+2*c]: failure constant=30, vgcd=4
[1+4*a,3+4*b,0+2*c]: failure constant=82, vgcd=4
[3+4*a,3+4*b,0+2*c]: unknown 108+108*a+144*a^2+64*a^3+324*b+432*b^2+192*b^3-72*c^3=0 -> [4]

expanding queue[2]:  - 8 + 6*a + 12*a^2 + 8*a^3 + 24*b^3 - 54*c - 108*c^2 - 72*c^3 = 0 modulo [2,1,2] *4
[1+4*a,0+2*b,1+4*c]: similiar to  [2], affine map: {a=(2*a),b=(1*b),c=(2*c)}  -8+12*a+48*a^2+64*a^3+24*b^3-108*c-432*c^2-576*c^3=0
[3+4*a,0+2*b,1+4*c]: failure constant=18, vgcd=4
[1+4*a,0+2*b,3+4*c]: failure constant=-242, vgcd=4
[3+4*a,0+2*b,3+4*c]: unknown -216+108*a+144*a^2+64*a^3+24*b^3-972*c-1296*c^2-576*c^3=0 -> [5]

expanding queue[3]:  - 6 + 8*a^3 + 18*b + 36*b^2 + 24*b^3 - 54*c - 108*c^2 - 72*c^3 = 0 modulo [1,2,2] *4
[0+2*a,1+4*b,1+4*c]: failure constant=-6, vgcd=4
[0+2*a,3+4*b,1+4*c]: unknown 72+8*a^3+324*b+432*b^2+192*b^3-108*c-432*c^2-576*c^3=0 -> [6]
[0+2*a,1+4*b,3+4*c]: unknown -240+8*a^3+36*b+144*b^2+192*b^3-972*c-1296*c^2-576*c^3=0 -> [7]
[0+2*a,3+4*b,3+4*c]: failure constant=-162, vgcd=4

expanding queue[4]: 108 + 108*a + 144*a^2 + 64*a^3 + 324*b + 432*b^2 + 192*b^3 - 72*c^3 = 0 modulo [2,2,2] *8
[3+8*a,3+8*b,0+4*c]: failure constant=108, vgcd=8
[7+8*a,3+8*b,0+4*c]: unknown 424+1176*a+1344*a^2+512*a^3+648*b+1728*b^2+1536*b^3-576*c^3=0 -> [8]
[3+8*a,7+8*b,0+4*c]: unknown 1056+216*a+576*a^2+512*a^3+3528*b+4032*b^2+1536*b^3-576*c^3=0 -> [9]
[7+8*a,7+8*b,0+4*c]: failure constant=1372, vgcd=8
[3+8*a,3+8*b,2+4*c]: failure constant=36, vgcd=8
[7+8*a,3+8*b,2+4*c]: unknown 352+1176*a+1344*a^2+512*a^3+648*b+1728*b^2+1536*b^3-432*c-864*c^2-576*c^3=0 -> [10]
[3+8*a,7+8*b,2+4*c]: unknown 984+216*a+576*a^2+512*a^3+3528*b+4032*b^2+1536*b^3-432*c-864*c^2-576*c^3=0 -> [11]
[7+8*a,7+8*b,2+4*c]: failure constant=1300, vgcd=8

expanding queue[5]:  - 216 + 108*a + 144*a^2 + 64*a^3 + 24*b^3 - 972*c - 1296*c^2 - 576*c^3 = 0 modulo [2,2,2] *8
[3+8*a,0+4*b,3+8*c]: similiar to  [5], affine map: {a=(2*a),b=(2*b),c=(2*c)}  -216+216*a+576*a^2+512*a^3+192*b^3-1944*c-5184*c^2-4608*c^3=0
[7+8*a,0+4*b,3+8*c]: failure constant=100, vgcd=8
[3+8*a,2+4*b,3+8*c]: unknown -192+216*a+576*a^2+512*a^3+144*b+288*b^2+192*b^3-1944*c-5184*c^2-4608*c^3=0 -> [12]
[7+8*a,2+4*b,3+8*c]: failure constant=124, vgcd=8
[3+8*a,0+4*b,7+8*c]: failure constant=-3060, vgcd=8
[7+8*a,0+4*b,7+8*c]: unknown -2744+1176*a+1344*a^2+512*a^3+192*b^3-10584*c-12096*c^2-4608*c^3=0 -> [13]
[3+8*a,2+4*b,7+8*c]: failure constant=-3036, vgcd=8
[7+8*a,2+4*b,7+8*c]: unknown -2720+1176*a+1344*a^2+512*a^3+144*b+288*b^2+192*b^3-10584*c-12096*c^2-4608*c^3=0 -> [14]

expanding queue[6]: 72 + 8*a^3 + 324*b + 432*b^2 + 192*b^3 - 108*c - 432*c^2 - 576*c^3 = 0 modulo [2,2,2] *8
[0+4*a,3+8*b,1+8*c]: similiar to  [6], affine map: {a=(2*a),b=(2*b),c=(2*c)}  72+64*a^3+648*b+1728*b^2+1536*b^3-216*c-1728*c^2-4608*c^3=0
[2+4*a,3+8*b,1+8*c]: unknown 80+48*a+96*a^2+64*a^3+648*b+1728*b^2+1536*b^3-216*c-1728*c^2-4608*c^3=0 -> [15]
[0+4*a,7+8*b,1+8*c]: failure constant=1020, vgcd=8
[2+4*a,7+8*b,1+8*c]: failure constant=1028, vgcd=8
[0+4*a,3+8*b,5+8*c]: failure constant=-1044, vgcd=8
[2+4*a,3+8*b,5+8*c]: failure constant=-1036, vgcd=8
[0+4*a,7+8*b,5+8*c]: unknown -96+64*a^3+3528*b+4032*b^2+1536*b^3-5400*c-8640*c^2-4608*c^3=0 -> [16]
[2+4*a,7+8*b,5+8*c]: unknown -88+48*a+96*a^2+64*a^3+3528*b+4032*b^2+1536*b^3-5400*c-8640*c^2-4608*c^3=0 -> [17]

expanding queue[7]:  - 240 + 8*a^3 + 36*b + 144*b^2 + 192*b^3 - 972*c - 1296*c^2 - 576*c^3 = 0 modulo [2,2,2] *8
[0+4*a,1+8*b,3+8*c]: similiar to  [7], affine map: {a=(2*a),b=(2*b),c=(2*c)}  -240+64*a^3+72*b+576*b^2+1536*b^3-1944*c-5184*c^2-4608*c^3=0
[2+4*a,1+8*b,3+8*c]: unknown -232+48*a+96*a^2+64*a^3+72*b+576*b^2+1536*b^3-1944*c-5184*c^2-4608*c^3=0 -> [18]
[0+4*a,5+8*b,3+8*c]: failure constant=132, vgcd=8
[2+4*a,5+8*b,3+8*c]: failure constant=140, vgcd=8
[0+4*a,1+8*b,7+8*c]: failure constant=-3084, vgcd=8
[2+4*a,1+8*b,7+8*c]: failure constant=-3076, vgcd=8
[0+4*a,5+8*b,7+8*c]: unknown -2712+64*a^3+1800*b+2880*b^2+1536*b^3-10584*c-12096*c^2-4608*c^3=0 -> [19]
[2+4*a,5+8*b,7+8*c]: unknown -2704+48*a+96*a^2+64*a^3+1800*b+2880*b^2+1536*b^3-10584*c-12096*c^2-4608*c^3=0 -> [20]
Maximum level 2 reached, queue size = 21
