
expanding [0]*1: -1+x^2-109*y^2=0
0 0: {x=0,y=0}*2 failure constant=-1, vgcd=4 -1+4*x^2-436*y^2=0
1 0: {x=1,y=0}*2 unknown varGCD=1, constant=0, gcd=1 -> [1] x+x^2-109*y^2=0
0 1: {x=0,y=1}*2 failure constant=-55, vgcd=2 -55+2*x^2-218*y-218*y^2=0
1 1: {x=1,y=1}*2 failure constant=-109, vgcd=4 -109+4*x+4*x^2-436*y-436*y^2=0

expanding [1]*2: x+x^2-109*y^2=0
0 0: {x=1,y=0}*4 unknown varGCD=1, constant=0, gcd=1 -> [2] x+2*x^2-218*y^2=0
1 0: {x=3,y=0}*4 unknown varGCD=1, constant=1, gcd=1 -> [3] 1+3*x+2*x^2-218*y^2=0
0 1: {x=1,y=2}*4 failure constant=-109, vgcd=2 -109+2*x+4*x^2-436*y-436*y^2=0
1 1: {x=3,y=2}*4 failure constant=-107, vgcd=2 -107+6*x+4*x^2-436*y-436*y^2=0

expanding [2]*4: x+2*x^2-218*y^2=0
0 0: {x=1,y=0}*8 unknown varGCD=1, constant=0, gcd=1 -> [4] x+4*x^2-436*y^2=0
1 0: {x=5,y=0}*8 failure constant=3, vgcd=2 3+10*x+8*x^2-872*y^2=0
0 1: {x=1,y=4}*8 unknown varGCD=1, constant=-109, gcd=1 -> [5] -109+x+4*x^2-436*y-436*y^2=0
1 1: {x=5,y=4}*8 failure constant=-215, vgcd=2 -215+10*x+8*x^2-872*y-872*y^2=0

expanding [3]*4: 1+3*x+2*x^2-218*y^2=0
0 0: {x=3,y=0}*8 failure constant=1, vgcd=2 1+6*x+8*x^2-872*y^2=0
1 0: {x=7,y=0}*8 unknown varGCD=1, constant=3, gcd=1 -> [6] 3+7*x+4*x^2-436*y^2=0
0 1: {x=3,y=4}*8 failure constant=-217, vgcd=2 -217+6*x+8*x^2-872*y-872*y^2=0
1 1: {x=7,y=4}*8 unknown varGCD=1, constant=-106, gcd=1 -> [7] -106+7*x+4*x^2-436*y-436*y^2=0
