Expanding for base=2, reasons+features=base,similiar,evenexp norm
exponentGCDs=[2,2], transposables={{x},{y}}
----------------
expanding queue[0]^-1:  - 576 + 15*x^2 - 7*y^2 meter=[2,2] *2
[0+2*x,0+2*y]:	similiar to [0], is mappable by: {x=>x,y=>y}  -144+15*x^2-7*y^2
[1+2*x,1+2*y]:	unknown -> [1] -142+15*x+15*x^2-7*y-7*y^2
----------------
expanding queue[1]^0:  - 142 + 15*x + 15*x^2 - 7*y - 7*y^2 meter=[2,2] *4
[1+4*x,1+4*y]:	unknown -> [2] -71+15*x+30*x^2-7*y-14*y^2
[3+4*x,1+4*y]:	negative-1 [2] by {x=>-x-1}
[1+4*x,3+4*y]:	negative-1 [2] by {y=>-y-1}
[3+4*x,3+4*y]:	negative-1 [2] by {x=>-x-1,y=>-y-1}
----------------
expanding queue[2]^1:  - 71 + 15*x + 30*x^2 - 7*y - 14*y^2 meter=[2,2] *8
[5+8*x,1+8*y]:	unknown -> [3] -13+75*x+60*x^2-7*y-28*y^2
[1+8*x,5+8*y]:	unknown -> [4] -46+15*x+60*x^2-35*y-28*y^2
----------------
expanding queue[3]^2:  - 13 + 75*x + 60*x^2 - 7*y - 28*y^2 meter=[2,2] *16
[13+16*x,1+16*y]:	unknown -> [5] 61+195*x+120*x^2-7*y-56*y^2
[5+16*x,9+16*y]:	unknown -> [6] -24+75*x+120*x^2-63*y-56*y^2
expanding queue[4]^2:  - 46 + 15*x + 60*x^2 - 35*y - 28*y^2 meter=[2,2] *16
[1+16*x,5+16*y]:	unknown -> [7] -23+15*x+120*x^2-35*y-56*y^2
[9+16*x,13+16*y]:	unknown -> [8] -17+135*x+120*x^2-91*y-56*y^2
Maximum level 3 reached at [9]:  - 576 + 15*x^2 - 7*y^2
