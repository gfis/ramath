Expanding for base=2, transposables={{x},{y},{z}}, reasons+features=base,evenexp,similiar,evenexp,similiar, exponentParities=[0,0,0]
----------------
expanding queue[0]^-1: x^4 - y^4 - z^2 meter=[2,2,2] *2
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+2*z]: unknown 16*x^4-16*y^4-4*z^2 -> [1]
[1+2*x,1+2*y,0+2*z]: unknown 8*x+24*x^2+32*x^3+16*x^4-8*y-24*y^2-32*y^3-16*y^4-4*z^2 -> [2]
[1+2*x,0+2*y,1+2*z]: unknown 8*x+24*x^2+32*x^3+16*x^4-16*y^4-4*z-4*z^2 -> [3]
----------------
expanding queue[1]^0: 16*x^4 - 16*y^4 - 4*z^2 meter=[1,1,2] *4
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+4*z]: similiar to [0], same  16*x^4-16*y^4-16*z^2
expanding queue[2]^0: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 8*y - 24*y^2 - 32*y^3 - 16*y^4 - 4*z^2 meter=[1,1,2] *4
solution [1,1,0],trivial(3)
[1+2*x,1+2*y,0+4*z]: unknown 8*x+24*x^2+32*x^3+16*x^4-8*y-24*y^2-32*y^3-16*y^4-16*z^2 -> [4]
expanding queue[3]^0: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 16*y^4 - 4*z - 4*z^2 meter=[1,1,2] *4
solution [1,0,1],trivial(3)
[1+2*x,0+2*y,1+4*z]: unknown 8*x+24*x^2+32*x^3+16*x^4-16*y^4-8*z-16*z^2 -> [5]
[1+2*x,0+2*y,3+4*z]: negative-1 of [5] by {x=>1+2*x,y=>2*y,z=>1+4*z}
----------------
expanding queue[4]^2: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 8*y - 24*y^2 - 32*y^3 - 16*y^4 - 16*z^2 meter=[2,2,1] *8
solution [1,1,0],trivial(3)
[1+4*x,1+4*y,0+4*z]: unknown 16*x+96*x^2+256*x^3+256*x^4-16*y-96*y^2-256*y^3-256*y^4-16*z^2 -> [6]
[3+4*x,1+4*y,0+4*z]: negative-1 of [6] by {x=>1+4*x,y=>1+4*y,z=>4*z}
[1+4*x,3+4*y,0+4*z]: negative-1 of [6] by {x=>1+4*x,y=>1+4*y,z=>4*z}
[3+4*x,3+4*y,0+4*z]: negative-1 of [6] by {x=>1+4*x,y=>1+4*y,z=>4*z}
expanding queue[5]^3: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 16*y^4 - 8*z - 16*z^2 meter=[2,1,2] *8
solution [1,0,1],trivial(3)
[1+4*x,0+2*y,1+8*z]: unknown 16*x+96*x^2+256*x^3+256*x^4-16*y^4-16*z-64*z^2 -> [7]
[3+4*x,0+2*y,1+8*z]: negative-1 of [7] by {x=>1+4*x,y=>2*y,z=>1+8*z}
----------------
expanding queue[6]^4: 16*x + 96*x^2 + 256*x^3 + 256*x^4 - 16*y - 96*y^2 - 256*y^3 - 256*y^4 - 16*z^2 meter=[2,2,2] *16
solution [1,1,0],trivial(3)
[1+8*x,1+8*y,0+8*z]: unknown 32*x+384*x^2+2048*x^3+4096*x^4-32*y-384*y^2-2048*y^3-4096*y^4-64*z^2 -> [8]
[5+8*x,5+8*y,0+8*z]: unknown 4000*x+9600*x^2+10240*x^3+4096*x^4-4000*y-9600*y^2-10240*y^3-4096*y^4-64*z^2 -> [9]
[5+8*x,1+8*y,4+8*z]: unknown 608+4000*x+9600*x^2+10240*x^3+4096*x^4-32*y-384*y^2-2048*y^3-4096*y^4-64*z-64*z^2 -> [10]
[1+8*x,5+8*y,4+8*z]: unknown -640+32*x+384*x^2+2048*x^3+4096*x^4-4000*y-9600*y^2-10240*y^3-4096*y^4-64*z-64*z^2 -> [11]
expanding queue[7]^5: 16*x + 96*x^2 + 256*x^3 + 256*x^4 - 16*y^4 - 16*z - 64*z^2 meter=[2,2,2] *16
solution [1,0,1],trivial(3)
[1+8*x,0+4*y,1+16*z]: unknown 32*x+384*x^2+2048*x^3+4096*x^4-256*y^4-32*z-256*z^2 -> [12]
[5+8*x,2+4*y,1+16*z]: unknown 608+4000*x+9600*x^2+10240*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-32*z-256*z^2 -> [13]
[5+8*x,0+4*y,9+16*z]: unknown 544+4000*x+9600*x^2+10240*x^3+4096*x^4-256*y^4-288*z-256*z^2 -> [14]
[1+8*x,2+4*y,9+16*z]: unknown -96+32*x+384*x^2+2048*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-288*z-256*z^2 -> [15]
Maximum level 3 reached, queue size = 16
