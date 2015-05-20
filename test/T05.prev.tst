Expanding for base 2, transposables =    0   0   2

expanding queue[0]: x^4 + y^4 - z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: similiar to  [0], affine map: {x=(2*x),y=(2*y),z=(2*z)}  16*x^4+16*y^4-4*z^2=0
[1+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=1, vgcd=4
[1+2*x,1+2*y,0+2*z]: failure constant=2, vgcd=4
[0+2*x,0+2*y,1+2*z]: failure constant=-1, vgcd=4
[1+2*x,0+2*y,1+2*z]: success [1,0,1],trivial(3)  8*x+24*x^2+32*x^3+16*x^4+16*y^4-4*z-4*z^2=0 -> [1]
[0+2*x,1+2*y,1+2*z]: failure transposition of [1] {0/0+2*y,0/1+2*x,2/1+2*z} by 0+2*y|0+2*x 1+2*x|1+2*y
[1+2*x,1+2*y,1+2*z]: failure constant=1, vgcd=4

expanding queue[1]: 8*x + 24*x^2 + 32*x^3 + 16*x^4 + 16*y^4 - 4*z - 4*z^2 = 0 modulo [1,1,2] *4
[1+2*x,0+2*y,1+4*z]: similiar to  [1], affine map: {x=(1*x),y=(1*y),z=(2*z)}  8*x+24*x^2+32*x^3+16*x^4+16*y^4-8*z-16*z^2=0
[1+2*x,0+2*y,3+4*z]: unknown -8+8*x+24*x^2+32*x^3+16*x^4+16*y^4-24*z-16*z^2=0 -> [2]

expanding queue[2]:  - 8 + 8*x + 24*x^2 + 32*x^3 + 16*x^4 + 16*y^4 - 24*z - 16*z^2 = 0 modulo [2,1,2] *8
[1+4*x,0+2*y,3+8*z]: failure constant=-8, vgcd=16
[3+4*x,0+2*y,3+8*z]: failure constant=72, vgcd=16
[1+4*x,0+2*y,7+8*z]: unknown -48+16*x+96*x^2+256*x^3+256*x^4+16*y^4-112*z-64*z^2=0 -> [3]
[3+4*x,0+2*y,7+8*z]: unknown 32+432*x+864*x^2+768*x^3+256*x^4+16*y^4-112*z-64*z^2=0 -> [4]
Maximum level 2 reached, queue size = 5
