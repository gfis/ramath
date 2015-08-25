Expanding for base=2, transposables={{x,y},{z}}, reasons+features=base,evenexp,similiar,transpose,evenexp igtriv, exponentParities=[0,0,0]
----------------
expanding queue[0]^-1: x^4 + y^4 - z^2 meter=[2,2,2] *2
[0+2*x,0+2*y,0+2*z]: unknown 16*x^4+16*y^4-4*z^2 -> [1]
[1+2*x,0+2*y,1+2*z]: unknown 8*x+24*x^2+32*x^3+16*x^4+16*y^4-4*z-4*z^2 -> [2]
[0+2*x,1+2*y,1+2*z]: transposition of [2] {0/0+2*y,0/1+2*x,2/1+2*z} by 0+2*y|0+2*x 1+2*x|1+2*y
----------------
expanding queue[1]^0: 16*x^4 + 16*y^4 - 4*z^2 meter=[1,1,2] *4
[0+2*x,0+2*y,0+4*z]: similiar to [0], same  16*x^4+16*y^4-16*z^2
expanding queue[2]^0: 8*x + 24*x^2 + 32*x^3 + 16*x^4 + 16*y^4 - 4*z - 4*z^2 meter=[1,1,2] *4
[1+2*x,0+2*y,1+4*z]: unknown 8*x+24*x^2+32*x^3+16*x^4+16*y^4-8*z-16*z^2 -> [3]
[1+2*x,0+2*y,3+4*z]: negative-1 of [3] by {x=>1+2*x,y=>2*y,z=>1+4*z}
----------------
expanding queue[3]^2: 8*x + 24*x^2 + 32*x^3 + 16*x^4 + 16*y^4 - 8*z - 16*z^2 meter=[2,1,2] *8
[1+4*x,0+2*y,1+8*z]: unknown 16*x+96*x^2+256*x^3+256*x^4+16*y^4-16*z-64*z^2 -> [4]
[3+4*x,0+2*y,1+8*z]: negative-1 of [4] by {x=>1+4*x,y=>2*y,z=>1+8*z}
----------------
expanding queue[4]^3: 16*x + 96*x^2 + 256*x^3 + 256*x^4 + 16*y^4 - 16*z - 64*z^2 meter=[2,2,2] *16
[1+8*x,0+4*y,1+16*z]: unknown 32*x+384*x^2+2048*x^3+4096*x^4+256*y^4-32*z-256*z^2 -> [5]
[5+8*x,2+4*y,1+16*z]: unknown 640+4000*x+9600*x^2+10240*x^3+4096*x^4+128*y+384*y^2+512*y^3+256*y^4-32*z-256*z^2 -> [6]
[5+8*x,0+4*y,9+16*z]: unknown 544+4000*x+9600*x^2+10240*x^3+4096*x^4+256*y^4-288*z-256*z^2 -> [7]
[1+8*x,2+4*y,9+16*z]: unknown -64+32*x+384*x^2+2048*x^3+4096*x^4+128*y+384*y^2+512*y^3+256*y^4-288*z-256*z^2 -> [8]
Maximum level 3 reached, queue size = 9
