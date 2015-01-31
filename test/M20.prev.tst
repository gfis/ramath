
expanding [0]*1: -5+x^3-117*y^3=0
0 0: {x=0,y=0}*2 failure constant=-5, vgcd=8 -5+8*x^3-936*y^3=0
1 0: {x=1,y=0}*2 unknown varGCD=1, constant=-2, gcd=1 -> [1] -2+3*x+6*x^2+4*x^3-468*y^3=0
0 1: {x=0,y=1}*2 unknown varGCD=1, constant=-61, gcd=1 -> [2] -61+4*x^3-351*y-702*y^2-468*y^3=0
1 1: {x=1,y=1}*2 failure constant=-121, vgcd=2 -121+6*x+12*x^2+8*x^3-702*y-1404*y^2-936*y^3=0

expanding [1]*2: -2+3*x+6*x^2+4*x^3-468*y^3=0
0 0: {x=1,y=0}*4 unknown varGCD=1, constant=-1, gcd=1 -> [3] -1+3*x+12*x^2+16*x^3-1872*y^3=0
1 0: {x=3,y=0}*4 failure constant=11, vgcd=2 11+54*x+72*x^2+32*x^3-3744*y^3=0
0 1: {x=1,y=2}*4 unknown varGCD=1, constant=-235, gcd=1 -> [4] -235+3*x+12*x^2+16*x^3-1404*y-2808*y^2-1872*y^3=0
1 1: {x=3,y=2}*4 failure constant=-457, vgcd=2 -457+54*x+72*x^2+32*x^3-2808*y-5616*y^2-3744*y^3=0

expanding [2]*2: -61+4*x^3-351*y-702*y^2-468*y^3=0
0 0: {x=0,y=1}*4 failure constant=-61, vgcd=2 -61+32*x^3-702*y-2808*y^2-3744*y^3=0
1 0: {x=2,y=1}*4 failure constant=-57, vgcd=2 -57+24*x+48*x^2+32*x^3-702*y-2808*y^2-3744*y^3=0
0 1: {x=0,y=3}*4 unknown varGCD=1, constant=-791, gcd=1 -> [5] -791+16*x^3-3159*y-4212*y^2-1872*y^3=0
1 1: {x=2,y=3}*4 unknown varGCD=1, constant=-789, gcd=1 -> [6] -789+12*x+24*x^2+16*x^3-3159*y-4212*y^2-1872*y^3=0

expanding [3]*4: -1+3*x+12*x^2+16*x^3-1872*y^3=0
0 0: {x=1,y=0}*8 failure constant=-1, vgcd=2 -1+6*x+48*x^2+128*x^3-14976*y^3=0
1 0: {x=5,y=0}*8 unknown varGCD=1, constant=15, gcd=1 -> [7] 15+75*x+120*x^2+64*x^3-7488*y^3=0
0 1: {x=1,y=4}*8 failure constant=-1873, vgcd=2 -1873+6*x+48*x^2+128*x^3-11232*y-22464*y^2-14976*y^3=0
1 1: {x=5,y=4}*8 unknown varGCD=1, constant=-921, gcd=1 -> [8] -921+75*x+120*x^2+64*x^3-5616*y-11232*y^2-7488*y^3=0

expanding [4]*4: -235+3*x+12*x^2+16*x^3-1404*y-2808*y^2-1872*y^3=0
0 0: {x=1,y=2}*8 failure constant=-235, vgcd=2 -235+6*x+48*x^2+128*x^3-2808*y-11232*y^2-14976*y^3=0
1 0: {x=5,y=2}*8 unknown varGCD=1, constant=-102, gcd=1 -> [9] -102+75*x+120*x^2+64*x^3-1404*y-5616*y^2-7488*y^3=0
0 1: {x=1,y=6}*8 failure constant=-6319, vgcd=2 -6319+6*x+48*x^2+128*x^3-25272*y-33696*y^2-14976*y^3=0
1 1: {x=5,y=6}*8 unknown varGCD=1, constant=-3144, gcd=1 -> [10] -3144+75*x+120*x^2+64*x^3-12636*y-16848*y^2-7488*y^3=0

expanding [5]*4: -791+16*x^3-3159*y-4212*y^2-1872*y^3=0
0 0: {x=0,y=3}*8 failure constant=-791, vgcd=2 -791+128*x^3-6318*y-16848*y^2-14976*y^3=0
1 0: {x=4,y=3}*8 failure constant=-775, vgcd=2 -775+96*x+192*x^2+128*x^3-6318*y-16848*y^2-14976*y^3=0
0 1: {x=0,y=7}*8 unknown varGCD=1, constant=-5017, gcd=1 -> [11] -5017+64*x^3-17199*y-19656*y^2-7488*y^3=0
1 1: {x=4,y=7}*8 unknown varGCD=1, constant=-5009, gcd=1 -> [12] -5009+48*x+96*x^2+64*x^3-17199*y-19656*y^2-7488*y^3=0

expanding [6]*4: -789+12*x+24*x^2+16*x^3-3159*y-4212*y^2-1872*y^3=0
0 0: {x=2,y=3}*8 failure constant=-789, vgcd=2 -789+24*x+96*x^2+128*x^3-6318*y-16848*y^2-14976*y^3=0
1 0: {x=6,y=3}*8 failure constant=-737, vgcd=2 -737+216*x+288*x^2+128*x^3-6318*y-16848*y^2-14976*y^3=0
0 1: {x=2,y=7}*8 unknown varGCD=1, constant=-5016, gcd=1 -> [13] -5016+12*x+48*x^2+64*x^3-17199*y-19656*y^2-7488*y^3=0
1 1: {x=6,y=7}*8 unknown varGCD=1, constant=-4990, gcd=1 -> [14] -4990+108*x+144*x^2+64*x^3-17199*y-19656*y^2-7488*y^3=0
