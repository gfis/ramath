Expanding for base 2, transposables =    0   1

expanding queue[0]: 4 - x^3 + y^2 = 0 modulo [2,2] *2
[0+2*x,0+2*y]: grown from [0] 4-8*x^3+4*y^2=0 success [2,2],trivial(2) 
[1+2*x,0+2*y]: failure constant=3, vgcd=2
[0+2*x,1+2*y]: failure constant=5, vgcd=4
[1+2*x,1+2*y]: unknown 4-6*x-12*x^2-8*x^3+4*y+4*y^2=0 -> [1]

expanding queue[1]: 4 - 6*x - 12*x^2 - 8*x^3 + 4*y + 4*y^2 = 0 modulo [2,2] *4
[1+4*x,1+4*y]: grown from [1] 4-12*x-48*x^2-64*x^3+8*y+16*y^2=0
[3+4*x,1+4*y]: failure constant=-22, vgcd=4
[1+4*x,3+4*y]: grown from [1] 12-12*x-48*x^2-64*x^3+24*y+16*y^2=0
[3+4*x,3+4*y]: failure constant=-14, vgcd=4
Proof - queue exhausted, queue size = 2
