Expanding for base=2, transposables={{a,b,c},{d}}, reasons+features=base,transpose,same,similiar,grow
----------------
expanding queue[0]^-1: a^3 + b^3 + c^3 - d^3 = 0 meter=[2,2,2,2] *2
[0+2*a,0+2*b,0+2*c,0+2*d]: same form as 8*a^3+8*b^3+8*c^3-8*d^3=0 success [0,0,0,0],trivial(3) success [2,0,0,2],trivial(3) success [0,2,0,2],trivial(3) success [0,0,2,2],trivial(3) 
[1+2*a,1+2*b,0+2*c,0+2*d]: unknown 2+6*a+12*a^2+8*a^3+6*b+12*b^2+8*b^3+8*c^3-8*d^3=0 -> [1]
[1+2*a,0+2*b,1+2*c,0+2*d]: transposition of [1] {0/0+2*c,0/1+2*a,0/1+2*b,3/0+2*d} by 0+2*c|0+2*b 1+2*b|1+2*c
[0+2*a,1+2*b,1+2*c,0+2*d]: transposition of [1] {0/0+2*c,0/1+2*a,0/1+2*b,3/0+2*d} by 0+2*c|0+2*a 1+2*a|1+2*b 1+2*b|1+2*c
[1+2*a,0+2*b,0+2*c,1+2*d]: success [1,0,0,1],trivial(3) success [3,0,0,3],trivial(3)  6*a+12*a^2+8*a^3+8*b^3+8*c^3-6*d-12*d^2-8*d^3=0 -> [2]
[0+2*a,1+2*b,0+2*c,1+2*d]: transposition of [2] {0/0+2*b,0/0+2*c,0/1+2*a,3/1+2*d} by 0+2*b|0+2*a 1+2*a|1+2*b success [0,1,0,1],trivial(3) success [0,3,0,3],trivial(3) 
[0+2*a,0+2*b,1+2*c,1+2*d]: transposition of [2] {0/0+2*b,0/0+2*c,0/1+2*a,3/1+2*d} by 0+2*b|0+2*a 0+2*c|0+2*b 1+2*a|1+2*c success [0,0,1,1],trivial(3) success [0,0,3,3],trivial(3) 
[1+2*a,1+2*b,1+2*c,1+2*d]: unknown 2+6*a+12*a^2+8*a^3+6*b+12*b^2+8*b^3+6*c+12*c^2+8*c^3-6*d-12*d^2-8*d^3=0 -> [3]
----------------
expanding queue[1]^0: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 + 8*c^3 - 8*d^3 = 0 meter=[2,2,1,1] *4
[3+4*a,1+4*b,0+2*c,0+2*d]: grown from [1]*14,18,12,8,2,4,8,1,1 28+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3+8*c^3-8*d^3=0
[1+4*a,3+4*b,0+2*c,0+2*d]: grown from [1]*14,2,4,8,18,12,8,1,1 28+12*a+48*a^2+64*a^3+108*b+144*b^2+64*b^3+8*c^3-8*d^3=0
expanding queue[2]^0: 6*a + 12*a^2 + 8*a^3 + 8*b^3 + 8*c^3 - 6*d - 12*d^2 - 8*d^3 = 0 meter=[2,1,1,2] *4
[1+4*a,0+2*b,0+2*c,1+4*d]: grown from [2]*2,4,8,1,1,2,4,8 12*a+48*a^2+64*a^3+8*b^3+8*c^3-12*d-48*d^2-64*d^3=0 success [1,0,0,1],trivial(3) success [5,0,0,5],trivial(3) 
[3+4*a,0+2*b,0+2*c,3+4*d]: grown from [2]*18,12,8,1,1,18,12,8 108*a+144*a^2+64*a^3+8*b^3+8*c^3-108*d-144*d^2-64*d^3=0 success [3,0,0,3],trivial(3) success [7,0,0,7],trivial(3) 
expanding queue[3]^0: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 + 6*c + 12*c^2 + 8*c^3 - 6*d - 12*d^2 - 8*d^3 = 0 meter=[2,2,2,2] *4
[3+4*a,1+4*b,1+4*c,1+4*d]: grown from [3]*14,18,12,8,2,4,8,2,4,8,2,4,8 28+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3+12*c+48*c^2+64*c^3-12*d-48*d^2-64*d^3=0
[1+4*a,3+4*b,1+4*c,1+4*d]: grown from [3]*14,2,4,8,18,12,8,2,4,8,2,4,8 28+12*a+48*a^2+64*a^3+108*b+144*b^2+64*b^3+12*c+48*c^2+64*c^3-12*d-48*d^2-64*d^3=0
[1+4*a,1+4*b,3+4*c,1+4*d]: grown from [3]*14,2,4,8,2,4,8,18,12,8,2,4,8 28+12*a+48*a^2+64*a^3+12*b+48*b^2+64*b^3+108*c+144*c^2+64*c^3-12*d-48*d^2-64*d^3=0
[3+4*a,3+4*b,3+4*c,1+4*d]: grown from [3]*40,18,12,8,18,12,8,18,12,8,2,4,8 80+108*a+144*a^2+64*a^3+108*b+144*b^2+64*b^3+108*c+144*c^2+64*c^3-12*d-48*d^2-64*d^3=0
[1+4*a,1+4*b,1+4*c,3+4*d]: unknown -24+12*a+48*a^2+64*a^3+12*b+48*b^2+64*b^3+12*c+48*c^2+64*c^3-108*d-144*d^2-64*d^3=0 -> [4]
[3+4*a,3+4*b,1+4*c,3+4*d]: grown from [3]*14,18,12,8,18,12,8,2,4,8,18,12,8 28+108*a+144*a^2+64*a^3+108*b+144*b^2+64*b^3+12*c+48*c^2+64*c^3-108*d-144*d^2-64*d^3=0
[3+4*a,1+4*b,3+4*c,3+4*d]: grown from [3]*14,18,12,8,2,4,8,18,12,8,18,12,8 28+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3+108*c+144*c^2+64*c^3-108*d-144*d^2-64*d^3=0
[1+4*a,3+4*b,3+4*c,3+4*d]: grown from [3]*14,2,4,8,18,12,8,18,12,8,18,12,8 28+12*a+48*a^2+64*a^3+108*b+144*b^2+64*b^3+108*c+144*c^2+64*c^3-108*d-144*d^2-64*d^3=0
----------------
expanding queue[4]^3:  - 24 + 12*a + 48*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 12*c + 48*c^2 + 64*c^3 - 108*d - 144*d^2 - 64*d^3 = 0 meter=[2,2,2,2] *8
[1+8*a,1+8*b,1+8*c,3+8*d]: grown from [4]*1,2,4,8,2,4,8,2,4,8,2,4,8 -24+24*a+192*a^2+512*a^3+24*b+192*b^2+512*b^3+24*c+192*c^2+512*c^3-216*d-576*d^2-512*d^3=0
[5+8*a,5+8*b,1+8*c,3+8*d]: grown from [3]*112,100,80,64,100,80,64,4,16,64,36,48,64 224+600*a+960*a^2+512*a^3+600*b+960*b^2+512*b^3+24*c+192*c^2+512*c^3-216*d-576*d^2-512*d^3=0
[5+8*a,1+8*b,5+8*c,3+8*d]: grown from [3]*112,100,80,64,4,16,64,100,80,64,36,48,64 224+600*a+960*a^2+512*a^3+24*b+192*b^2+512*b^3+600*c+960*c^2+512*c^3-216*d-576*d^2-512*d^3=0
[1+8*a,5+8*b,5+8*c,3+8*d]: grown from [3]*112,4,16,64,100,80,64,100,80,64,36,48,64 224+24*a+192*a^2+512*a^3+600*b+960*b^2+512*b^3+600*c+960*c^2+512*c^3-216*d-576*d^2-512*d^3=0
[5+8*a,1+8*b,1+8*c,7+8*d]: unknown -216+600*a+960*a^2+512*a^3+24*b+192*b^2+512*b^3+24*c+192*c^2+512*c^3-1176*d-1344*d^2-512*d^3=0 -> [5]
[1+8*a,5+8*b,1+8*c,7+8*d]: transposition of [5] {0/1+8*b,0/1+8*c,0/5+8*a,3/7+8*d} by 1+8*b|1+8*a 5+8*a|5+8*b
[1+8*a,1+8*b,5+8*c,7+8*d]: transposition of [5] {0/1+8*b,0/1+8*c,0/5+8*a,3/7+8*d} by 1+8*b|1+8*a 1+8*c|1+8*b 5+8*a|5+8*c
[5+8*a,5+8*b,5+8*c,7+8*d]: grown from [3]*16,100,80,64,100,80,64,100,80,64,196,112,64 32+600*a+960*a^2+512*a^3+600*b+960*b^2+512*b^3+600*c+960*c^2+512*c^3-1176*d-1344*d^2-512*d^3=0
Maximum level 2 reached, queue size = 6
