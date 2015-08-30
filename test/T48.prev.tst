Expanding for base=4, reasons+features=base,similiar,evenexp norm
exponentGCDs=[2,2], transposables={{x},{y}}
----------------
expanding queue[0]^-1:  - 9 + 15*x^2 - 7*y^2 meter=[4,4] *4
[0+4*x,1+4*y]:	unknown -> [1] -2+30*x^2-7*y-14*y^2
[0+4*x,3+4*y]:	negative-1 [1] by {y=>-y-1}
----------------
expanding queue[1]^0:  - 2 + 30*x^2 - 7*y - 14*y^2 meter=[4,4] *16
[4+16*x,1+16*y]:	unknown -> [2] 7+60*x+120*x^2-7*y-56*y^2
[12+16*x,1+16*y]:	negative-1 [2] by {x=>-x-1}
[0+16*x,9+16*y]:	unknown -> [3] -18+120*x^2-63*y-56*y^2
[8+16*x,9+16*y]:	unknown -> [4] 12+120*x+120*x^2-63*y-56*y^2
----------------
expanding queue[2]^1: 7 + 60*x + 120*x^2 - 7*y - 56*y^2 meter=[1,4] *64
[4+16*x,17+64*y]:	unknown -> [5] -14+15*x+30*x^2-119*y-224*y^2
expanding queue[3]^1:  - 18 + 120*x^2 - 63*y - 56*y^2 meter=[1,4] *64
[0+16*x,41+64*y]:	unknown -> [6] -92+30*x^2-287*y-224*y^2
expanding queue[4]^1: 12 + 120*x + 120*x^2 - 63*y - 56*y^2 meter=[1,4] *64
[8+16*x,9+64*y]:	unknown -> [7] 3+30*x+30*x^2-63*y-224*y^2
----------------
expanding queue[5]^2:  - 14 + 15*x + 30*x^2 - 119*y - 224*y^2 meter=[4,4] *256
[36+64*x,17+256*y]:	unknown -> [8] 34+135*x+120*x^2-119*y-896*y^2
[20+64*x,81+256*y]:	unknown -> [9] -78+75*x+120*x^2-567*y-896*y^2
[4+64*x,145+256*y]:	unknown -> [10] -287+15*x+120*x^2-1015*y-896*y^2
[52+64*x,209+256*y]:	unknown -> [11] -518+195*x+120*x^2-1463*y-896*y^2
expanding queue[6]^3:  - 92 + 30*x^2 - 287*y - 224*y^2 meter=[4,4] *256
[0+64*x,41+256*y]:	unknown -> [12] -23+120*x^2-287*y-896*y^2
[32+64*x,41+256*y]:	unknown -> [13] 7+120*x+120*x^2-287*y-896*y^2
[16+64*x,169+256*y]:	unknown -> [14] -383+60*x+120*x^2-1183*y-896*y^2
[48+64*x,169+256*y]:	negative-1 [14] by {x=>-x-1}
expanding queue[7]^4: 3 + 30*x + 30*x^2 - 63*y - 224*y^2 meter=[4,4] *256
[8+64*x,73+256*y]:	unknown -> [15] -71+30*x+120*x^2-511*y-896*y^2
[24+64*x,73+256*y]:	unknown -> [16] -56+90*x+120*x^2-511*y-896*y^2
[40+64*x,73+256*y]:	negative-1 [16] by {x=>-x-1}
[56+64*x,73+256*y]:	negative-1 [15] by {x=>-x-1}
Maximum level 3 reached at [17]:  - 9 + 15*x^2 - 7*y^2
