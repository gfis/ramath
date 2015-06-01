Expanding for base 2, transposables =    0   1

expanding queue[0]: 2 + x^2 - y^3 = 0 modulo [2,2] *2
[0+2*x,0+2*y]: failure constant=2, vgcd=4
[1+2*x,0+2*y]: failure constant=3, vgcd=4
[0+2*x,1+2*y]: failure constant=1, vgcd=2
[1+2*x,1+2*y]: unknown 2+4*x+4*x^2-6*y-12*y^2-8*y^3=0 -> [1]

expanding queue[1]: 2 + 4*x + 4*x^2 - 6*y - 12*y^2 - 8*y^3 = 0 modulo [2,2] *4
[1+4*x,1+4*y]: failure constant=2, vgcd=4
[3+4*x,1+4*y]: failure constant=10, vgcd=4
[1+4*x,3+4*y]: success [5,3],NONTRIVIAL  -24+8*x+16*x^2-108*y-144*y^2-64*y^3=0 -> [2]
[3+4*x,3+4*y]: unknown -16+24*x+16*x^2-108*y-144*y^2-64*y^3=0 -> [3]

expanding queue[2]:  - 24 + 8*x + 16*x^2 - 108*y - 144*y^2 - 64*y^3 = 0 modulo [2,2] *8
[1+8*x,3+8*y]: grown from [2] -24+16*x+64*x^2-216*y-576*y^2-512*y^3=0
[5+8*x,3+8*y]: success [5,3],NONTRIVIAL  80*x+64*x^2-216*y-576*y^2-512*y^3=0 -> [4]
[1+8*x,7+8*y]: failure constant=-340, vgcd=8
[5+8*x,7+8*y]: failure constant=-316, vgcd=8

expanding queue[3]:  - 16 + 24*x + 16*x^2 - 108*y - 144*y^2 - 64*y^3 = 0 modulo [2,2] *8
[3+8*x,3+8*y]: grown from [3] -16+48*x+64*x^2-216*y-576*y^2-512*y^3=0
[7+8*x,3+8*y]: grown from [1] 24+112*x+64*x^2-216*y-576*y^2-512*y^3=0
[3+8*x,7+8*y]: failure constant=-332, vgcd=8
[7+8*x,7+8*y]: failure constant=-292, vgcd=8

expanding queue[4]: 80*x + 64*x^2 - 216*y - 576*y^2 - 512*y^3 = 0 modulo [2,2] *16
[5+16*x,3+16*y]: grown from [4] 160*x+256*x^2-432*y-2304*y^2-4096*y^3=0 success [5,3],NONTRIVIAL 
[13+16*x,3+16*y]: grown from [1] 144+416*x+256*x^2-432*y-2304*y^2-4096*y^3=0
[5+16*x,11+16*y]: failure constant=-1304, vgcd=16
[13+16*x,11+16*y]: failure constant=-1160, vgcd=16
Proof - queue exhausted, queue size = 5
