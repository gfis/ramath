Expanding for base 2, transposables =    0   0   0

expanding queue[0]: x^2 + y^2 - 4*x*y*z + z^2 = 0 modulo [2,2,2] *2
[0+2*x,0+2*y,0+2*z]: success [0,0,0] trivial=3 4*x^2+4*y^2-32*x*y*z+4*z^2=0 -> [1]
[1+2*x,0+2*y,0+2*z]: failure constant=1, vgcd=4
[0+2*x,1+2*y,0+2*z]: failure constant=1, vgcd=4
[1+2*x,1+2*y,0+2*z]: failure constant=2, vgcd=4
[0+2*x,0+2*y,1+2*z]: failure constant=1, vgcd=4
[1+2*x,0+2*y,1+2*z]: failure constant=2, vgcd=4
[0+2*x,1+2*y,1+2*z]: failure constant=2, vgcd=4
[1+2*x,1+2*y,1+2*z]: failure constant=-1, vgcd=4

expanding queue[1]: 4*x^2 + 4*y^2 - 32*x*y*z + 4*z^2 = 0 modulo [2,2,2] *4
[0+4*x,0+4*y,0+4*z]: success [0,0,0] trivial=3 16*x^2+16*y^2-256*x*y*z+16*z^2=0 -> [2]
[2+4*x,0+4*y,0+4*z]: failure constant=4, vgcd=16
[0+4*x,2+4*y,0+4*z]: failure constant=4, vgcd=16
[2+4*x,2+4*y,0+4*z]: failure constant=8, vgcd=16
[0+4*x,0+4*y,2+4*z]: failure constant=4, vgcd=16
[2+4*x,0+4*y,2+4*z]: failure constant=8, vgcd=16
[0+4*x,2+4*y,2+4*z]: failure constant=8, vgcd=16
[2+4*x,2+4*y,2+4*z]: failure constant=-20, vgcd=16

expanding queue[2]: 16*x^2 + 16*y^2 - 256*x*y*z + 16*z^2 = 0 modulo [1,1,1] *8
[0+4*x,0+4*y,0+4*z]: similiar to  [2], same  16*x^2+16*y^2-256*x*y*z+16*z^2=0
Proof - queue exhausted, queue size = 3
