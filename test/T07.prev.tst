Expanding for base=2, transposables={{a,b},{c}}, reasons+features=base,transpose,same,similiar,grow

expanding queue[0]^-1: a^3 + b^3 - c^3 = 0 meter=[2,2,2] *2
[0+2*a,0+2*b,0+2*c]: same form as 8*a^3+8*b^3-8*c^3=0 success [0,0,0],trivial(3) success [2,0,2],trivial(3) success [0,2,2],trivial(3) 
[1+2*a,0+2*b,0+2*c]: failure constant=1, vgcd=2
[0+2*a,1+2*b,0+2*c]: failure constant=1, vgcd=2
[1+2*a,1+2*b,0+2*c]: unknown 2+6*a+12*a^2+8*a^3+6*b+12*b^2+8*b^3-8*c^3=0 -> [1]
[0+2*a,0+2*b,1+2*c]: failure constant=-1, vgcd=2
[1+2*a,0+2*b,1+2*c]: success [1,0,1],trivial(3) success [3,0,3],trivial(3)  6*a+12*a^2+8*a^3+8*b^3-6*c-12*c^2-8*c^3=0 -> [2]
[0+2*a,1+2*b,1+2*c]: transposition of [2] {0/0+2*b,0/1+2*a,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b success [0,1,1],trivial(3) success [0,3,3],trivial(3) 
[1+2*a,1+2*b,1+2*c]: failure constant=1, vgcd=2

expanding queue[1]^0: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 - 8*c^3 = 0 meter=[2,2,1] *4
[1+4*a,1+4*b,0+2*c]: failure constant=2, vgcd=4
[3+4*a,1+4*b,0+2*c]: grown from [1]*14,18,12,8,2,4,8,1 28+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3-8*c^3=0
[1+4*a,3+4*b,0+2*c]: grown from [1]*14,2,4,8,18,12,8,1 28+12*a+48*a^2+64*a^3+108*b+144*b^2+64*b^3-8*c^3=0
[3+4*a,3+4*b,0+2*c]: failure constant=54, vgcd=4

expanding queue[2]^0: 6*a + 12*a^2 + 8*a^3 + 8*b^3 - 6*c - 12*c^2 - 8*c^3 = 0 meter=[2,1,2] *4
[1+4*a,0+2*b,1+4*c]: grown from [2]*2,4,8,1,2,4,8 12*a+48*a^2+64*a^3+8*b^3-12*c-48*c^2-64*c^3=0 success [1,0,1],trivial(3) success [5,0,5],trivial(3) 
[3+4*a,0+2*b,1+4*c]: failure constant=26, vgcd=4
[1+4*a,0+2*b,3+4*c]: failure constant=-26, vgcd=4
[3+4*a,0+2*b,3+4*c]: grown from [2]*18,12,8,1,18,12,8 108*a+144*a^2+64*a^3+8*b^3-108*c-144*c^2-64*c^3=0 success [3,0,3],trivial(3) success [7,0,7],trivial(3) 
Proof - queue exhausted, queue size = 3
