Expanding for base 2, transposables =    0   1   2

expanding queue[0]: x^4 - y^4 - z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: success [0,0,0],trivial(3) success [2,2,0],trivial(3)  16*x^4-16*y^4-4*z^2=0 -> [1]
[1+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=-1, vgcd=4
[1+2*x,1+2*y,0+2*z]: success [1,1,0],trivial(3) success [3,3,0],trivial(3)  8*x+24*x^2+32*x^3+16*x^4-8*y-24*y^2-32*y^3-16*y^4-4*z^2=0 -> [2]
[0+2*x,0+2*y,1+2*z]: failure constant=-1, vgcd=4
[1+2*x,0+2*y,1+2*z]: success [1,0,1],trivial(3)  8*x+24*x^2+32*x^3+16*x^4-16*y^4-4*z-4*z^2=0 -> [3]
[0+2*x,1+2*y,1+2*z]: failure constant=-2, vgcd=4
[1+2*x,1+2*y,1+2*z]: failure constant=-1, vgcd=4

expanding queue[1]: 16*x^4 - 16*y^4 - 4*z^2 = 0 modulo [2,2,2] *4
[0+4*x,0+4*y,0+4*z]: success [0,0,0],trivial(3) success [4,4,0],trivial(3)  256*x^4-256*y^4-16*z^2=0 -> [4]
[2+4*x,0+4*y,0+4*z]: success [2,0,4],trivial(1)  16+128*x+384*x^2+512*x^3+256*x^4-256*y^4-16*z^2=0 -> [5]
[0+4*x,2+4*y,0+4*z]: unknown -16+256*x^4-128*y-384*y^2-512*y^3-256*y^4-16*z^2=0 -> [6]
[2+4*x,2+4*y,0+4*z]: success [2,2,0],trivial(3) success [6,6,0],trivial(3)  128*x+384*x^2+512*x^3+256*x^4-128*y-384*y^2-512*y^3-256*y^4-16*z^2=0 -> [7]
[0+4*x,0+4*y,2+4*z]: failure constant=-4, vgcd=16
[2+4*x,0+4*y,2+4*z]: failure constant=12, vgcd=16
[0+4*x,2+4*y,2+4*z]: failure constant=-20, vgcd=16
[2+4*x,2+4*y,2+4*z]: failure constant=-4, vgcd=16

expanding queue[2]: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 8*y - 24*y^2 - 32*y^3 - 16*y^4 - 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,1+4*y,0+4*z]: success [1,1,0],trivial(3) success [5,5,0],trivial(3)  16*x+96*x^2+256*x^3+256*x^4-16*y-96*y^2-256*y^3-256*y^4-16*z^2=0 -> [8]
[3+4*x,1+4*y,0+4*z]: unknown 80+432*x+864*x^2+768*x^3+256*x^4-16*y-96*y^2-256*y^3-256*y^4-16*z^2=0 -> [9]
[1+4*x,3+4*y,0+4*z]: unknown -80+16*x+96*x^2+256*x^3+256*x^4-432*y-864*y^2-768*y^3-256*y^4-16*z^2=0 -> [10]
[3+4*x,3+4*y,0+4*z]: success [3,3,0],trivial(3) success [7,7,0],trivial(3)  432*x+864*x^2+768*x^3+256*x^4-432*y-864*y^2-768*y^3-256*y^4-16*z^2=0 -> [11]
[1+4*x,1+4*y,2+4*z]: failure constant=-4, vgcd=16
[3+4*x,1+4*y,2+4*z]: failure constant=76, vgcd=16
[1+4*x,3+4*y,2+4*z]: failure constant=-84, vgcd=16
[3+4*x,3+4*y,2+4*z]: failure constant=-4, vgcd=16

expanding queue[3]: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 16*y^4 - 4*z - 4*z^2 = 0 modulo [2,2,2] *4
[1+4*x,0+4*y,1+4*z]: success [1,0,1],trivial(3)  16*x+96*x^2+256*x^3+256*x^4-256*y^4-8*z-16*z^2=0 -> [12]
[3+4*x,0+4*y,1+4*z]: unknown 80+432*x+864*x^2+768*x^3+256*x^4-256*y^4-8*z-16*z^2=0 -> [13]
[1+4*x,2+4*y,1+4*z]: unknown -16+16*x+96*x^2+256*x^3+256*x^4-128*y-384*y^2-512*y^3-256*y^4-8*z-16*z^2=0 -> [14]
[3+4*x,2+4*y,1+4*z]: unknown 64+432*x+864*x^2+768*x^3+256*x^4-128*y-384*y^2-512*y^3-256*y^4-8*z-16*z^2=0 -> [15]
[1+4*x,0+4*y,3+4*z]: unknown -8+16*x+96*x^2+256*x^3+256*x^4-256*y^4-24*z-16*z^2=0 -> [16]
[3+4*x,0+4*y,3+4*z]: unknown 72+432*x+864*x^2+768*x^3+256*x^4-256*y^4-24*z-16*z^2=0 -> [17]
[1+4*x,2+4*y,3+4*z]: unknown -24+16*x+96*x^2+256*x^3+256*x^4-128*y-384*y^2-512*y^3-256*y^4-24*z-16*z^2=0 -> [18]
[3+4*x,2+4*y,3+4*z]: unknown 56+432*x+864*x^2+768*x^3+256*x^4-128*y-384*y^2-512*y^3-256*y^4-24*z-16*z^2=0 -> [19]
Maximum level 1 reached, queue size = 20
