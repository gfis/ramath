Expanding for base=2, reasons+features=base,evenexp,similiar,evenexp,similiar
exponentGCDs=[2,2], transposables={{x},{y}}
----------------
expanding queue[0]^-1: 2 - 4*x^2 + 4*x^4 - 2*y^2 meter=[1,2] *2
[0+1*x,1+2*y]:	unknown -> [1] -4*x^2+4*x^4-8*y-8*y^2
----------------
expanding queue[1]^0:  - 4*x^2 + 4*x^4 - 8*y - 8*y^2 meter=[2,1] *4
solution [0,1],trivial(1)
[0+2*x,1+2*y]:	unknown -> [2] -16*x^2+64*x^4-8*y-8*y^2
[1+2*x,1+2*y]:	unknown -> [3] 16*x+80*x^2+128*x^3+64*x^4-8*y-8*y^2
----------------
expanding queue[2]^1:  - 16*x^2 + 64*x^4 - 8*y - 8*y^2 meter=[1,2] *8
solution [0,1],trivial(1)
[0+2*x,1+4*y]:	unknown -> [4] -16*x^2+64*x^4-16*y-32*y^2
[0+2*x,3+4*y]:	negative-1 [4] by {y=>-y-1}
expanding queue[3]^1: 16*x + 80*x^2 + 128*x^3 + 64*x^4 - 8*y - 8*y^2 meter=[1,2] *8
solution [1,1],trivial(2)
[1+2*x,1+4*y]:	unknown -> [5] 16*x+80*x^2+128*x^3+64*x^4-16*y-32*y^2
[1+2*x,3+4*y]:	negative-1 [5] by {y=>-y-1}
----------------
expanding queue[4]^2:  - 16*x^2 + 64*x^4 - 16*y - 32*y^2 meter=[2,2] *16
solution [0,1],trivial(1)
[0+4*x,1+8*y]:	unknown -> [6] -64*x^2+1024*x^4-32*y-128*y^2
[2+4*x,5+8*y]:	unknown -> [7] 448*x+1472*x^2+2048*x^3+1024*x^4-160*y-128*y^2
expanding queue[5]^3: 16*x + 80*x^2 + 128*x^3 + 64*x^4 - 16*y - 32*y^2 meter=[2,2] *16
solution [1,1],trivial(2)
[1+4*x,1+8*y]:	unknown -> [8] 32*x+320*x^2+1024*x^3+1024*x^4-32*y-128*y^2
[3+4*x,1+8*y]:	negative-1 [8] by {x=>-x-1}
----------------
expanding queue[6]^4:  - 64*x^2 + 1024*x^4 - 32*y - 128*y^2 meter=[1,2] *32
solution [0,1],trivial(1)
[0+4*x,1+16*y]:	unknown -> [9] -64*x^2+1024*x^4-64*y-512*y^2
expanding queue[7]^4: 448*x + 1472*x^2 + 2048*x^3 + 1024*x^4 - 160*y - 128*y^2 meter=[1,2] *32
solution [2,5],NONTRIVIAL
[2+4*x,5+16*y]:	unknown -> [10] 448*x+1472*x^2+2048*x^3+1024*x^4-320*y-512*y^2
expanding queue[8]^5: 32*x + 320*x^2 + 1024*x^3 + 1024*x^4 - 32*y - 128*y^2 meter=[2,2] *32
solution [1,1],trivial(2)
[1+8*x,1+16*y]:	unknown -> [11] 64*x+1280*x^2+8192*x^3+16384*x^4-64*y-512*y^2
[5+8*x,9+16*y]:	unknown -> [12] 2240+15680*x+38144*x^2+40960*x^3+16384*x^4-576*y-512*y^2
Maximum level 4 reached at [13]: 2 - 4*x^2 + 4*x^4 - 2*y^2
