
expanding [0]*1: a^2+b^2-c^2=0
0 0 0: {a=0,b=0,c=0}*2 similiar to [0], same  a^2+b^2-c^2=0
1 0 0: {a=1,b=0,c=0}*2 failure constant=1, vgcd=4 1+4*a+4*a^2+4*b^2-4*c^2=0
0 1 0: {a=0,b=1,c=0}*2 failure constant=1, vgcd=4 1+4*a^2+4*b+4*b^2-4*c^2=0
1 1 0: {a=1,b=1,c=0}*2 failure constant=1, vgcd=2 1+2*a+2*a^2+2*b+2*b^2-2*c^2=0
0 0 1: {a=0,b=0,c=1}*2 failure constant=-1, vgcd=4 -1+4*a^2+4*b^2-4*c-4*c^2=0
1 0 1: {a=1,b=0,c=1}*2 success trivial=3 -> [1] a+a^2+b^2-c-c^2=0
0 1 1: {a=0,b=1,c=1}*2 success trivial=3 -> [2] a^2+b+b^2-c-c^2=0
1 1 1: {a=1,b=1,c=1}*2 failure constant=1, vgcd=4 1+4*a+4*a^2+4*b+4*b^2-4*c-4*c^2=0

expanding [1]*2: a+a^2+b^2-c-c^2=0
0 0 0: {a=1,b=0,c=1}*4 success trivial=3 -> [3] a+2*a^2+2*b^2-c-2*c^2=0
1 0 0: {a=3,b=0,c=1}*4 unknown -> [4] 1+3*a+2*a^2+2*b^2-c-2*c^2=0
0 1 0: {a=1,b=2,c=1}*4 failure constant=1, vgcd=2 1+2*a+4*a^2+4*b+4*b^2-2*c-4*c^2=0
1 1 0: {a=3,b=2,c=1}*4 failure constant=3, vgcd=2 3+6*a+4*a^2+4*b+4*b^2-2*c-4*c^2=0
0 0 1: {a=1,b=0,c=3}*4 unknown -> [5] -1+a+2*a^2+2*b^2-3*c-2*c^2=0
1 0 1: {a=3,b=0,c=3}*4 success trivial=3 -> [6] 3*a+2*a^2+2*b^2-3*c-2*c^2=0
0 1 1: {a=1,b=2,c=3}*4 failure constant=-1, vgcd=2 -1+2*a+4*a^2+4*b+4*b^2-6*c-4*c^2=0
1 1 1: {a=3,b=2,c=3}*4 failure constant=1, vgcd=2 1+6*a+4*a^2+4*b+4*b^2-6*c-4*c^2=0

expanding [2]*2: a^2+b+b^2-c-c^2=0
0 0 0: {a=0,b=1,c=1}*4 success trivial=3 -> [7] 2*a^2+b+2*b^2-c-2*c^2=0
1 0 0: {a=2,b=1,c=1}*4 failure constant=1, vgcd=2 1+4*a+4*a^2+2*b+4*b^2-2*c-4*c^2=0
0 1 0: {a=0,b=3,c=1}*4 unknown -> [8] 1+2*a^2+3*b+2*b^2-c-2*c^2=0
1 1 0: {a=2,b=3,c=1}*4 failure constant=3, vgcd=2 3+4*a+4*a^2+6*b+4*b^2-2*c-4*c^2=0
0 0 1: {a=0,b=1,c=3}*4 unknown -> [9] -1+2*a^2+b+2*b^2-3*c-2*c^2=0
1 0 1: {a=2,b=1,c=3}*4 failure constant=-1, vgcd=2 -1+4*a+4*a^2+2*b+4*b^2-6*c-4*c^2=0
0 1 1: {a=0,b=3,c=3}*4 success trivial=3 -> [10] 2*a^2+3*b+2*b^2-3*c-2*c^2=0
1 1 1: {a=2,b=3,c=3}*4 failure constant=1, vgcd=2 1+4*a+4*a^2+6*b+4*b^2-6*c-4*c^2=0

expanding [3]*4: a+2*a^2+2*b^2-c-2*c^2=0
0 0 0: {a=1,b=0,c=1}*8 success trivial=3 -> [11] a+4*a^2+4*b^2-c-4*c^2=0
1 0 0: {a=5,b=0,c=1}*8 failure constant=3, vgcd=2 3+10*a+8*a^2+8*b^2-2*c-8*c^2=0
0 1 0: {a=1,b=4,c=1}*8 unknown -> [12] 1+a+4*a^2+4*b+4*b^2-c-4*c^2=0
1 1 0: {a=5,b=4,c=1}*8 failure constant=5, vgcd=2 5+10*a+8*a^2+8*b+8*b^2-2*c-8*c^2=0
0 0 1: {a=1,b=0,c=5}*8 failure constant=-3, vgcd=2 -3+2*a+8*a^2+8*b^2-10*c-8*c^2=0
1 0 1: {a=5,b=0,c=5}*8 success trivial=3 -> [13] 5*a+4*a^2+4*b^2-5*c-4*c^2=0
0 1 1: {a=1,b=4,c=5}*8 failure constant=-1, vgcd=2 -1+2*a+8*a^2+8*b+8*b^2-10*c-8*c^2=0
1 1 1: {a=5,b=4,c=5}*8 unknown -> [14] 1+5*a+4*a^2+4*b+4*b^2-5*c-4*c^2=0

expanding [4]*4: 1+3*a+2*a^2+2*b^2-c-2*c^2=0
0 0 0: {a=3,b=0,c=1}*8 failure constant=1, vgcd=2 1+6*a+8*a^2+8*b^2-2*c-8*c^2=0
1 0 0: {a=7,b=0,c=1}*8 unknown -> [15] 3+7*a+4*a^2+4*b^2-c-4*c^2=0
0 1 0: {a=3,b=4,c=1}*8 failure constant=3, vgcd=2 3+6*a+8*a^2+8*b+8*b^2-2*c-8*c^2=0
1 1 0: {a=7,b=4,c=1}*8 unknown -> [16] 4+7*a+4*a^2+4*b+4*b^2-c-4*c^2=0
0 0 1: {a=3,b=0,c=5}*8 unknown -> [17] -1+3*a+4*a^2+4*b^2-5*c-4*c^2=0
1 0 1: {a=7,b=0,c=5}*8 failure constant=3, vgcd=2 3+14*a+8*a^2+8*b^2-10*c-8*c^2=0
0 1 1: {a=3,b=4,c=5}*8 success NONTRIVIAL -> [18], const=0  3*a+4*a^2+4*b+4*b^2-5*c-4*c^2=0
1 1 1: {a=7,b=4,c=5}*8 failure constant=5, vgcd=2 5+14*a+8*a^2+8*b+8*b^2-10*c-8*c^2=0

expanding [5]*4: -1+a+2*a^2+2*b^2-3*c-2*c^2=0
0 0 0: {a=1,b=0,c=3}*8 failure constant=-1, vgcd=2 -1+2*a+8*a^2+8*b^2-6*c-8*c^2=0
1 0 0: {a=5,b=0,c=3}*8 unknown -> [19] 1+5*a+4*a^2+4*b^2-3*c-4*c^2=0
0 1 0: {a=1,b=4,c=3}*8 failure constant=1, vgcd=2 1+2*a+8*a^2+8*b+8*b^2-6*c-8*c^2=0
1 1 0: {a=5,b=4,c=3}*8 unknown -> [20] 2+5*a+4*a^2+4*b+4*b^2-3*c-4*c^2=0
0 0 1: {a=1,b=0,c=7}*8 unknown -> [21] -3+a+4*a^2+4*b^2-7*c-4*c^2=0
1 0 1: {a=5,b=0,c=7}*8 failure constant=-3, vgcd=2 -3+10*a+8*a^2+8*b^2-14*c-8*c^2=0
0 1 1: {a=1,b=4,c=7}*8 unknown -> [22] -2+a+4*a^2+4*b+4*b^2-7*c-4*c^2=0
1 1 1: {a=5,b=4,c=7}*8 failure constant=-1, vgcd=2 -1+10*a+8*a^2+8*b+8*b^2-14*c-8*c^2=0

expanding [6]*4: 3*a+2*a^2+2*b^2-3*c-2*c^2=0
0 0 0: {a=3,b=0,c=3}*8 success trivial=3 -> [23] 3*a+4*a^2+4*b^2-3*c-4*c^2=0
1 0 0: {a=7,b=0,c=3}*8 failure constant=5, vgcd=2 5+14*a+8*a^2+8*b^2-6*c-8*c^2=0
0 1 0: {a=3,b=4,c=3}*8 unknown -> [24] 1+3*a+4*a^2+4*b+4*b^2-3*c-4*c^2=0
1 1 0: {a=7,b=4,c=3}*8 failure constant=7, vgcd=2 7+14*a+8*a^2+8*b+8*b^2-6*c-8*c^2=0
0 0 1: {a=3,b=0,c=7}*8 failure constant=-5, vgcd=2 -5+6*a+8*a^2+8*b^2-14*c-8*c^2=0
1 0 1: {a=7,b=0,c=7}*8 success trivial=3 -> [25] 7*a+4*a^2+4*b^2-7*c-4*c^2=0
0 1 1: {a=3,b=4,c=7}*8 failure constant=-3, vgcd=2 -3+6*a+8*a^2+8*b+8*b^2-14*c-8*c^2=0
1 1 1: {a=7,b=4,c=7}*8 unknown -> [26] 1+7*a+4*a^2+4*b+4*b^2-7*c-4*c^2=0

expanding [7]*4: 2*a^2+b+2*b^2-c-2*c^2=0
0 0 0: {a=0,b=1,c=1}*8 success trivial=3 -> [27] 4*a^2+b+4*b^2-c-4*c^2=0
1 0 0: {a=4,b=1,c=1}*8 unknown -> [28] 1+4*a+4*a^2+b+4*b^2-c-4*c^2=0
0 1 0: {a=0,b=5,c=1}*8 failure constant=3, vgcd=2 3+8*a^2+10*b+8*b^2-2*c-8*c^2=0
1 1 0: {a=4,b=5,c=1}*8 failure constant=5, vgcd=2 5+8*a+8*a^2+10*b+8*b^2-2*c-8*c^2=0
0 0 1: {a=0,b=1,c=5}*8 failure constant=-3, vgcd=2 -3+8*a^2+2*b+8*b^2-10*c-8*c^2=0
1 0 1: {a=4,b=1,c=5}*8 failure constant=-1, vgcd=2 -1+8*a+8*a^2+2*b+8*b^2-10*c-8*c^2=0
0 1 1: {a=0,b=5,c=5}*8 success trivial=3 -> [29] 4*a^2+5*b+4*b^2-5*c-4*c^2=0
1 1 1: {a=4,b=5,c=5}*8 unknown -> [30] 1+4*a+4*a^2+5*b+4*b^2-5*c-4*c^2=0

expanding [8]*4: 1+2*a^2+3*b+2*b^2-c-2*c^2=0
0 0 0: {a=0,b=3,c=1}*8 failure constant=1, vgcd=2 1+8*a^2+6*b+8*b^2-2*c-8*c^2=0
1 0 0: {a=4,b=3,c=1}*8 failure constant=3, vgcd=2 3+8*a+8*a^2+6*b+8*b^2-2*c-8*c^2=0
0 1 0: {a=0,b=7,c=1}*8 unknown -> [31] 3+4*a^2+7*b+4*b^2-c-4*c^2=0
1 1 0: {a=4,b=7,c=1}*8 unknown -> [32] 4+4*a+4*a^2+7*b+4*b^2-c-4*c^2=0
0 0 1: {a=0,b=3,c=5}*8 unknown -> [33] -1+4*a^2+3*b+4*b^2-5*c-4*c^2=0
1 0 1: {a=4,b=3,c=5}*8 success NONTRIVIAL -> [34], const=0  4*a+4*a^2+3*b+4*b^2-5*c-4*c^2=0
0 1 1: {a=0,b=7,c=5}*8 failure constant=3, vgcd=2 3+8*a^2+14*b+8*b^2-10*c-8*c^2=0
1 1 1: {a=4,b=7,c=5}*8 failure constant=5, vgcd=2 5+8*a+8*a^2+14*b+8*b^2-10*c-8*c^2=0

expanding [9]*4: -1+2*a^2+b+2*b^2-3*c-2*c^2=0
0 0 0: {a=0,b=1,c=3}*8 failure constant=-1, vgcd=2 -1+8*a^2+2*b+8*b^2-6*c-8*c^2=0
1 0 0: {a=4,b=1,c=3}*8 failure constant=1, vgcd=2 1+8*a+8*a^2+2*b+8*b^2-6*c-8*c^2=0
0 1 0: {a=0,b=5,c=3}*8 unknown -> [35] 1+4*a^2+5*b+4*b^2-3*c-4*c^2=0
1 1 0: {a=4,b=5,c=3}*8 unknown -> [36] 2+4*a+4*a^2+5*b+4*b^2-3*c-4*c^2=0
0 0 1: {a=0,b=1,c=7}*8 unknown -> [37] -3+4*a^2+b+4*b^2-7*c-4*c^2=0
1 0 1: {a=4,b=1,c=7}*8 unknown -> [38] -2+4*a+4*a^2+b+4*b^2-7*c-4*c^2=0
0 1 1: {a=0,b=5,c=7}*8 failure constant=-3, vgcd=2 -3+8*a^2+10*b+8*b^2-14*c-8*c^2=0
1 1 1: {a=4,b=5,c=7}*8 failure constant=-1, vgcd=2 -1+8*a+8*a^2+10*b+8*b^2-14*c-8*c^2=0

expanding [10]*4: 2*a^2+3*b+2*b^2-3*c-2*c^2=0
0 0 0: {a=0,b=3,c=3}*8 success trivial=3 -> [39] 4*a^2+3*b+4*b^2-3*c-4*c^2=0
1 0 0: {a=4,b=3,c=3}*8 unknown -> [40] 1+4*a+4*a^2+3*b+4*b^2-3*c-4*c^2=0
0 1 0: {a=0,b=7,c=3}*8 failure constant=5, vgcd=2 5+8*a^2+14*b+8*b^2-6*c-8*c^2=0
1 1 0: {a=4,b=7,c=3}*8 failure constant=7, vgcd=2 7+8*a+8*a^2+14*b+8*b^2-6*c-8*c^2=0
0 0 1: {a=0,b=3,c=7}*8 failure constant=-5, vgcd=2 -5+8*a^2+6*b+8*b^2-14*c-8*c^2=0
1 0 1: {a=4,b=3,c=7}*8 failure constant=-3, vgcd=2 -3+8*a+8*a^2+6*b+8*b^2-14*c-8*c^2=0
0 1 1: {a=0,b=7,c=7}*8 success trivial=3 -> [41] 4*a^2+7*b+4*b^2-7*c-4*c^2=0
1 1 1: {a=4,b=7,c=7}*8 unknown -> [42] 1+4*a+4*a^2+7*b+4*b^2-7*c-4*c^2=0

expanding [11]*8: a+4*a^2+4*b^2-c-4*c^2=0
0 0 0: {a=1,b=0,c=1}*16 success trivial=3 -> [43] a+8*a^2+8*b^2-c-8*c^2=0
1 0 0: {a=9,b=0,c=1}*16 failure constant=5, vgcd=2 5+18*a+16*a^2+16*b^2-2*c-16*c^2=0
0 1 0: {a=1,b=8,c=1}*16 unknown -> [44] 2+a+8*a^2+8*b+8*b^2-c-8*c^2=0
1 1 0: {a=9,b=8,c=1}*16 failure constant=9, vgcd=2 9+18*a+16*a^2+16*b+16*b^2-2*c-16*c^2=0
0 0 1: {a=1,b=0,c=9}*16 failure constant=-5, vgcd=2 -5+2*a+16*a^2+16*b^2-18*c-16*c^2=0
1 0 1: {a=9,b=0,c=9}*16 success trivial=3 -> [45] 9*a+8*a^2+8*b^2-9*c-8*c^2=0
0 1 1: {a=1,b=8,c=9}*16 failure constant=-1, vgcd=2 -1+2*a+16*a^2+16*b+16*b^2-18*c-16*c^2=0
1 1 1: {a=9,b=8,c=9}*16 unknown -> [46] 2+9*a+8*a^2+8*b+8*b^2-9*c-8*c^2=0

expanding [12]*8: 1+a+4*a^2+4*b+4*b^2-c-4*c^2=0
0 0 0: {a=1,b=4,c=1}*16 failure constant=1, vgcd=2 1+2*a+16*a^2+8*b+16*b^2-2*c-16*c^2=0
1 0 0: {a=9,b=4,c=1}*16 unknown -> [47] 3+9*a+8*a^2+4*b+8*b^2-c-8*c^2=0
0 1 0: {a=1,b=12,c=1}*16 failure constant=9, vgcd=2 9+2*a+16*a^2+24*b+16*b^2-2*c-16*c^2=0
1 1 0: {a=9,b=12,c=1}*16 unknown -> [48] 7+9*a+8*a^2+12*b+8*b^2-c-8*c^2=0
0 0 1: {a=1,b=4,c=9}*16 unknown -> [49] -2+a+8*a^2+4*b+8*b^2-9*c-8*c^2=0
1 0 1: {a=9,b=4,c=9}*16 failure constant=1, vgcd=2 1+18*a+16*a^2+8*b+16*b^2-18*c-16*c^2=0
0 1 1: {a=1,b=12,c=9}*16 unknown -> [50] 2+a+8*a^2+12*b+8*b^2-9*c-8*c^2=0
1 1 1: {a=9,b=12,c=9}*16 failure constant=9, vgcd=2 9+18*a+16*a^2+24*b+16*b^2-18*c-16*c^2=0

expanding [13]*8: 5*a+4*a^2+4*b^2-5*c-4*c^2=0
0 0 0: {a=5,b=0,c=5}*16 success trivial=3 -> [51] 5*a+8*a^2+8*b^2-5*c-8*c^2=0
1 0 0: {a=13,b=0,c=5}*16 failure constant=9, vgcd=2 9+26*a+16*a^2+16*b^2-10*c-16*c^2=0
0 1 0: {a=5,b=8,c=5}*16 unknown -> [52] 2+5*a+8*a^2+8*b+8*b^2-5*c-8*c^2=0
1 1 0: {a=13,b=8,c=5}*16 failure constant=13, vgcd=2 13+26*a+16*a^2+16*b+16*b^2-10*c-16*c^2=0
0 0 1: {a=5,b=0,c=13}*16 failure constant=-9, vgcd=2 -9+10*a+16*a^2+16*b^2-26*c-16*c^2=0
1 0 1: {a=13,b=0,c=13}*16 success trivial=3 -> [53] 13*a+8*a^2+8*b^2-13*c-8*c^2=0
0 1 1: {a=5,b=8,c=13}*16 failure constant=-5, vgcd=2 -5+10*a+16*a^2+16*b+16*b^2-26*c-16*c^2=0
1 1 1: {a=13,b=8,c=13}*16 unknown -> [54] 2+13*a+8*a^2+8*b+8*b^2-13*c-8*c^2=0

expanding [14]*8: 1+5*a+4*a^2+4*b+4*b^2-5*c-4*c^2=0
0 0 0: {a=5,b=4,c=5}*16 failure constant=1, vgcd=2 1+10*a+16*a^2+8*b+16*b^2-10*c-16*c^2=0
1 0 0: {a=13,b=4,c=5}*16 unknown -> [55] 5+13*a+8*a^2+4*b+8*b^2-5*c-8*c^2=0
0 1 0: {a=5,b=12,c=5}*16 failure constant=9, vgcd=2 9+10*a+16*a^2+24*b+16*b^2-10*c-16*c^2=0
1 1 0: {a=13,b=12,c=5}*16 unknown -> [56] 9+13*a+8*a^2+12*b+8*b^2-5*c-8*c^2=0
0 0 1: {a=5,b=4,c=13}*16 unknown -> [57] -4+5*a+8*a^2+4*b+8*b^2-13*c-8*c^2=0
1 0 1: {a=13,b=4,c=13}*16 failure constant=1, vgcd=2 1+26*a+16*a^2+8*b+16*b^2-26*c-16*c^2=0
0 1 1: {a=5,b=12,c=13}*16 success NONTRIVIAL -> [58], const=0  5*a+8*a^2+12*b+8*b^2-13*c-8*c^2=0
1 1 1: {a=13,b=12,c=13}*16 failure constant=9, vgcd=2 9+26*a+16*a^2+24*b+16*b^2-26*c-16*c^2=0

expanding [15]*8: 3+7*a+4*a^2+4*b^2-c-4*c^2=0
0 0 0: {a=7,b=0,c=1}*16 failure constant=3, vgcd=2 3+14*a+16*a^2+16*b^2-2*c-16*c^2=0
1 0 0: {a=15,b=0,c=1}*16 unknown -> [59] 7+15*a+8*a^2+8*b^2-c-8*c^2=0
0 1 0: {a=7,b=8,c=1}*16 failure constant=7, vgcd=2 7+14*a+16*a^2+16*b+16*b^2-2*c-16*c^2=0
1 1 0: {a=15,b=8,c=1}*16 unknown -> [60] 9+15*a+8*a^2+8*b+8*b^2-c-8*c^2=0
0 0 1: {a=7,b=0,c=9}*16 unknown -> [61] -1+7*a+8*a^2+8*b^2-9*c-8*c^2=0
1 0 1: {a=15,b=0,c=9}*16 failure constant=9, vgcd=2 9+30*a+16*a^2+16*b^2-18*c-16*c^2=0
0 1 1: {a=7,b=8,c=9}*16 unknown -> [62] 1+7*a+8*a^2+8*b+8*b^2-9*c-8*c^2=0
1 1 1: {a=15,b=8,c=9}*16 failure constant=13, vgcd=2 13+30*a+16*a^2+16*b+16*b^2-18*c-16*c^2=0

expanding [16]*8: 4+7*a+4*a^2+4*b+4*b^2-c-4*c^2=0
0 0 0: {a=7,b=4,c=1}*16 unknown -> [63] 2+7*a+8*a^2+4*b+8*b^2-c-8*c^2=0
1 0 0: {a=15,b=4,c=1}*16 failure constant=15, vgcd=2 15+30*a+16*a^2+8*b+16*b^2-2*c-16*c^2=0
0 1 0: {a=7,b=12,c=1}*16 unknown -> [64] 6+7*a+8*a^2+12*b+8*b^2-c-8*c^2=0
1 1 0: {a=15,b=12,c=1}*16 failure constant=23, vgcd=2 23+30*a+16*a^2+24*b+16*b^2-2*c-16*c^2=0
0 0 1: {a=7,b=4,c=9}*16 failure constant=-1, vgcd=2 -1+14*a+16*a^2+8*b+16*b^2-18*c-16*c^2=0
1 0 1: {a=15,b=4,c=9}*16 unknown -> [65] 5+15*a+8*a^2+4*b+8*b^2-9*c-8*c^2=0
0 1 1: {a=7,b=12,c=9}*16 failure constant=7, vgcd=2 7+14*a+16*a^2+24*b+16*b^2-18*c-16*c^2=0
1 1 1: {a=15,b=12,c=9}*16 unknown -> [66] 9+15*a+8*a^2+12*b+8*b^2-9*c-8*c^2=0

expanding [17]*8: -1+3*a+4*a^2+4*b^2-5*c-4*c^2=0
0 0 0: {a=3,b=0,c=5}*16 failure constant=-1, vgcd=2 -1+6*a+16*a^2+16*b^2-10*c-16*c^2=0
1 0 0: {a=11,b=0,c=5}*16 unknown -> [67] 3+11*a+8*a^2+8*b^2-5*c-8*c^2=0
0 1 0: {a=3,b=8,c=5}*16 failure constant=3, vgcd=2 3+6*a+16*a^2+16*b+16*b^2-10*c-16*c^2=0
1 1 0: {a=11,b=8,c=5}*16 unknown -> [68] 5+11*a+8*a^2+8*b+8*b^2-5*c-8*c^2=0
0 0 1: {a=3,b=0,c=13}*16 unknown -> [69] -5+3*a+8*a^2+8*b^2-13*c-8*c^2=0
1 0 1: {a=11,b=0,c=13}*16 failure constant=-3, vgcd=2 -3+22*a+16*a^2+16*b^2-26*c-16*c^2=0
0 1 1: {a=3,b=8,c=13}*16 unknown -> [70] -3+3*a+8*a^2+8*b+8*b^2-13*c-8*c^2=0
1 1 1: {a=11,b=8,c=13}*16 failure constant=1, vgcd=2 1+22*a+16*a^2+16*b+16*b^2-26*c-16*c^2=0

expanding [18]*8: 3*a+4*a^2+4*b+4*b^2-5*c-4*c^2=0
0 0 0: {a=3,b=4,c=5}*16 success NONTRIVIAL -> [71], const=0  3*a+8*a^2+4*b+8*b^2-5*c-8*c^2=0
1 0 0: {a=11,b=4,c=5}*16 failure constant=7, vgcd=2 7+22*a+16*a^2+8*b+16*b^2-10*c-16*c^2=0
0 1 0: {a=3,b=12,c=5}*16 unknown -> [72] 4+3*a+8*a^2+12*b+8*b^2-5*c-8*c^2=0
1 1 0: {a=11,b=12,c=5}*16 failure constant=15, vgcd=2 15+22*a+16*a^2+24*b+16*b^2-10*c-16*c^2=0
0 0 1: {a=3,b=4,c=13}*16 failure constant=-9, vgcd=2 -9+6*a+16*a^2+8*b+16*b^2-26*c-16*c^2=0
1 0 1: {a=11,b=4,c=13}*16 unknown -> [73] -1+11*a+8*a^2+4*b+8*b^2-13*c-8*c^2=0
0 1 1: {a=3,b=12,c=13}*16 failure constant=-1, vgcd=2 -1+6*a+16*a^2+24*b+16*b^2-26*c-16*c^2=0
1 1 1: {a=11,b=12,c=13}*16 unknown -> [74] 3+11*a+8*a^2+12*b+8*b^2-13*c-8*c^2=0

expanding [19]*8: 1+5*a+4*a^2+4*b^2-3*c-4*c^2=0
0 0 0: {a=5,b=0,c=3}*16 failure constant=1, vgcd=2 1+10*a+16*a^2+16*b^2-6*c-16*c^2=0
1 0 0: {a=13,b=0,c=3}*16 unknown -> [75] 5+13*a+8*a^2+8*b^2-3*c-8*c^2=0
0 1 0: {a=5,b=8,c=3}*16 failure constant=5, vgcd=2 5+10*a+16*a^2+16*b+16*b^2-6*c-16*c^2=0
1 1 0: {a=13,b=8,c=3}*16 unknown -> [76] 7+13*a+8*a^2+8*b+8*b^2-3*c-8*c^2=0
0 0 1: {a=5,b=0,c=11}*16 unknown -> [77] -3+5*a+8*a^2+8*b^2-11*c-8*c^2=0
1 0 1: {a=13,b=0,c=11}*16 failure constant=3, vgcd=2 3+26*a+16*a^2+16*b^2-22*c-16*c^2=0
0 1 1: {a=5,b=8,c=11}*16 unknown -> [78] -1+5*a+8*a^2+8*b+8*b^2-11*c-8*c^2=0
1 1 1: {a=13,b=8,c=11}*16 failure constant=7, vgcd=2 7+26*a+16*a^2+16*b+16*b^2-22*c-16*c^2=0

expanding [20]*8: 2+5*a+4*a^2+4*b+4*b^2-3*c-4*c^2=0
0 0 0: {a=5,b=4,c=3}*16 unknown -> [79] 1+5*a+8*a^2+4*b+8*b^2-3*c-8*c^2=0
1 0 0: {a=13,b=4,c=3}*16 failure constant=11, vgcd=2 11+26*a+16*a^2+8*b+16*b^2-6*c-16*c^2=0
0 1 0: {a=5,b=12,c=3}*16 unknown -> [80] 5+5*a+8*a^2+12*b+8*b^2-3*c-8*c^2=0
1 1 0: {a=13,b=12,c=3}*16 failure constant=19, vgcd=2 19+26*a+16*a^2+24*b+16*b^2-6*c-16*c^2=0
0 0 1: {a=5,b=4,c=11}*16 failure constant=-5, vgcd=2 -5+10*a+16*a^2+8*b+16*b^2-22*c-16*c^2=0
1 0 1: {a=13,b=4,c=11}*16 unknown -> [81] 2+13*a+8*a^2+4*b+8*b^2-11*c-8*c^2=0
0 1 1: {a=5,b=12,c=11}*16 failure constant=3, vgcd=2 3+10*a+16*a^2+24*b+16*b^2-22*c-16*c^2=0
1 1 1: {a=13,b=12,c=11}*16 unknown -> [82] 6+13*a+8*a^2+12*b+8*b^2-11*c-8*c^2=0

expanding [21]*8: -3+a+4*a^2+4*b^2-7*c-4*c^2=0
0 0 0: {a=1,b=0,c=7}*16 failure constant=-3, vgcd=2 -3+2*a+16*a^2+16*b^2-14*c-16*c^2=0
1 0 0: {a=9,b=0,c=7}*16 unknown -> [83] 1+9*a+8*a^2+8*b^2-7*c-8*c^2=0
0 1 0: {a=1,b=8,c=7}*16 failure constant=1, vgcd=2 1+2*a+16*a^2+16*b+16*b^2-14*c-16*c^2=0
1 1 0: {a=9,b=8,c=7}*16 unknown -> [84] 3+9*a+8*a^2+8*b+8*b^2-7*c-8*c^2=0
0 0 1: {a=1,b=0,c=15}*16 unknown -> [85] -7+a+8*a^2+8*b^2-15*c-8*c^2=0
1 0 1: {a=9,b=0,c=15}*16 failure constant=-9, vgcd=2 -9+18*a+16*a^2+16*b^2-30*c-16*c^2=0
0 1 1: {a=1,b=8,c=15}*16 unknown -> [86] -5+a+8*a^2+8*b+8*b^2-15*c-8*c^2=0
1 1 1: {a=9,b=8,c=15}*16 failure constant=-5, vgcd=2 -5+18*a+16*a^2+16*b+16*b^2-30*c-16*c^2=0

expanding [22]*8: -2+a+4*a^2+4*b+4*b^2-7*c-4*c^2=0
0 0 0: {a=1,b=4,c=7}*16 unknown -> [87] -1+a+8*a^2+4*b+8*b^2-7*c-8*c^2=0
1 0 0: {a=9,b=4,c=7}*16 failure constant=3, vgcd=2 3+18*a+16*a^2+8*b+16*b^2-14*c-16*c^2=0
0 1 0: {a=1,b=12,c=7}*16 unknown -> [88] 3+a+8*a^2+12*b+8*b^2-7*c-8*c^2=0
1 1 0: {a=9,b=12,c=7}*16 failure constant=11, vgcd=2 11+18*a+16*a^2+24*b+16*b^2-14*c-16*c^2=0
0 0 1: {a=1,b=4,c=15}*16 failure constant=-13, vgcd=2 -13+2*a+16*a^2+8*b+16*b^2-30*c-16*c^2=0
1 0 1: {a=9,b=4,c=15}*16 unknown -> [89] -4+9*a+8*a^2+4*b+8*b^2-15*c-8*c^2=0
0 1 1: {a=1,b=12,c=15}*16 failure constant=-5, vgcd=2 -5+2*a+16*a^2+24*b+16*b^2-30*c-16*c^2=0
1 1 1: {a=9,b=12,c=15}*16 success NONTRIVIAL -> [90], const=0  9*a+8*a^2+12*b+8*b^2-15*c-8*c^2=0

expanding [23]*8: 3*a+4*a^2+4*b^2-3*c-4*c^2=0
0 0 0: {a=3,b=0,c=3}*16 success trivial=3 -> [91] 3*a+8*a^2+8*b^2-3*c-8*c^2=0
1 0 0: {a=11,b=0,c=3}*16 failure constant=7, vgcd=2 7+22*a+16*a^2+16*b^2-6*c-16*c^2=0
0 1 0: {a=3,b=8,c=3}*16 unknown -> [92] 2+3*a+8*a^2+8*b+8*b^2-3*c-8*c^2=0
1 1 0: {a=11,b=8,c=3}*16 failure constant=11, vgcd=2 11+22*a+16*a^2+16*b+16*b^2-6*c-16*c^2=0
0 0 1: {a=3,b=0,c=11}*16 failure constant=-7, vgcd=2 -7+6*a+16*a^2+16*b^2-22*c-16*c^2=0
1 0 1: {a=11,b=0,c=11}*16 success trivial=3 -> [93] 11*a+8*a^2+8*b^2-11*c-8*c^2=0
0 1 1: {a=3,b=8,c=11}*16 failure constant=-3, vgcd=2 -3+6*a+16*a^2+16*b+16*b^2-22*c-16*c^2=0
1 1 1: {a=11,b=8,c=11}*16 unknown -> [94] 2+11*a+8*a^2+8*b+8*b^2-11*c-8*c^2=0

expanding [24]*8: 1+3*a+4*a^2+4*b+4*b^2-3*c-4*c^2=0
0 0 0: {a=3,b=4,c=3}*16 failure constant=1, vgcd=2 1+6*a+16*a^2+8*b+16*b^2-6*c-16*c^2=0
1 0 0: {a=11,b=4,c=3}*16 unknown -> [95] 4+11*a+8*a^2+4*b+8*b^2-3*c-8*c^2=0
0 1 0: {a=3,b=12,c=3}*16 failure constant=9, vgcd=2 9+6*a+16*a^2+24*b+16*b^2-6*c-16*c^2=0
1 1 0: {a=11,b=12,c=3}*16 unknown -> [96] 8+11*a+8*a^2+12*b+8*b^2-3*c-8*c^2=0
0 0 1: {a=3,b=4,c=11}*16 unknown -> [97] -3+3*a+8*a^2+4*b+8*b^2-11*c-8*c^2=0
1 0 1: {a=11,b=4,c=11}*16 failure constant=1, vgcd=2 1+22*a+16*a^2+8*b+16*b^2-22*c-16*c^2=0
0 1 1: {a=3,b=12,c=11}*16 unknown -> [98] 1+3*a+8*a^2+12*b+8*b^2-11*c-8*c^2=0
1 1 1: {a=11,b=12,c=11}*16 failure constant=9, vgcd=2 9+22*a+16*a^2+24*b+16*b^2-22*c-16*c^2=0

expanding [25]*8: 7*a+4*a^2+4*b^2-7*c-4*c^2=0
0 0 0: {a=7,b=0,c=7}*16 success trivial=3 -> [99] 7*a+8*a^2+8*b^2-7*c-8*c^2=0
1 0 0: {a=15,b=0,c=7}*16 failure constant=11, vgcd=2 11+30*a+16*a^2+16*b^2-14*c-16*c^2=0
0 1 0: {a=7,b=8,c=7}*16 unknown -> [100] 2+7*a+8*a^2+8*b+8*b^2-7*c-8*c^2=0
1 1 0: {a=15,b=8,c=7}*16 failure constant=15, vgcd=2 15+30*a+16*a^2+16*b+16*b^2-14*c-16*c^2=0
0 0 1: {a=7,b=0,c=15}*16 failure constant=-11, vgcd=2 -11+14*a+16*a^2+16*b^2-30*c-16*c^2=0
1 0 1: {a=15,b=0,c=15}*16 success trivial=3 -> [101] 15*a+8*a^2+8*b^2-15*c-8*c^2=0
0 1 1: {a=7,b=8,c=15}*16 failure constant=-7, vgcd=2 -7+14*a+16*a^2+16*b+16*b^2-30*c-16*c^2=0
1 1 1: {a=15,b=8,c=15}*16 unknown -> [102] 2+15*a+8*a^2+8*b+8*b^2-15*c-8*c^2=0

expanding [26]*8: 1+7*a+4*a^2+4*b+4*b^2-7*c-4*c^2=0
0 0 0: {a=7,b=4,c=7}*16 failure constant=1, vgcd=2 1+14*a+16*a^2+8*b+16*b^2-14*c-16*c^2=0
1 0 0: {a=15,b=4,c=7}*16 unknown -> [103] 6+15*a+8*a^2+4*b+8*b^2-7*c-8*c^2=0
0 1 0: {a=7,b=12,c=7}*16 failure constant=9, vgcd=2 9+14*a+16*a^2+24*b+16*b^2-14*c-16*c^2=0
1 1 0: {a=15,b=12,c=7}*16 unknown -> [104] 10+15*a+8*a^2+12*b+8*b^2-7*c-8*c^2=0
0 0 1: {a=7,b=4,c=15}*16 unknown -> [105] -5+7*a+8*a^2+4*b+8*b^2-15*c-8*c^2=0
1 0 1: {a=15,b=4,c=15}*16 failure constant=1, vgcd=2 1+30*a+16*a^2+8*b+16*b^2-30*c-16*c^2=0
0 1 1: {a=7,b=12,c=15}*16 unknown -> [106] -1+7*a+8*a^2+12*b+8*b^2-15*c-8*c^2=0
1 1 1: {a=15,b=12,c=15}*16 failure constant=9, vgcd=2 9+30*a+16*a^2+24*b+16*b^2-30*c-16*c^2=0

expanding [27]*8: 4*a^2+b+4*b^2-c-4*c^2=0
0 0 0: {a=0,b=1,c=1}*16 success trivial=3 -> [107] 8*a^2+b+8*b^2-c-8*c^2=0
1 0 0: {a=8,b=1,c=1}*16 unknown -> [108] 2+8*a+8*a^2+b+8*b^2-c-8*c^2=0
0 1 0: {a=0,b=9,c=1}*16 failure constant=5, vgcd=2 5+16*a^2+18*b+16*b^2-2*c-16*c^2=0
1 1 0: {a=8,b=9,c=1}*16 failure constant=9, vgcd=2 9+16*a+16*a^2+18*b+16*b^2-2*c-16*c^2=0
0 0 1: {a=0,b=1,c=9}*16 failure constant=-5, vgcd=2 -5+16*a^2+2*b+16*b^2-18*c-16*c^2=0
1 0 1: {a=8,b=1,c=9}*16 failure constant=-1, vgcd=2 -1+16*a+16*a^2+2*b+16*b^2-18*c-16*c^2=0
0 1 1: {a=0,b=9,c=9}*16 success trivial=3 -> [109] 8*a^2+9*b+8*b^2-9*c-8*c^2=0
1 1 1: {a=8,b=9,c=9}*16 unknown -> [110] 2+8*a+8*a^2+9*b+8*b^2-9*c-8*c^2=0

expanding [28]*8: 1+4*a+4*a^2+b+4*b^2-c-4*c^2=0
0 0 0: {a=4,b=1,c=1}*16 failure constant=1, vgcd=2 1+8*a+16*a^2+2*b+16*b^2-2*c-16*c^2=0
1 0 0: {a=12,b=1,c=1}*16 failure constant=9, vgcd=2 9+24*a+16*a^2+2*b+16*b^2-2*c-16*c^2=0
0 1 0: {a=4,b=9,c=1}*16 unknown -> [111] 3+4*a+8*a^2+9*b+8*b^2-c-8*c^2=0
1 1 0: {a=12,b=9,c=1}*16 unknown -> [112] 7+12*a+8*a^2+9*b+8*b^2-c-8*c^2=0
0 0 1: {a=4,b=1,c=9}*16 unknown -> [113] -2+4*a+8*a^2+b+8*b^2-9*c-8*c^2=0
1 0 1: {a=12,b=1,c=9}*16 unknown -> [114] 2+12*a+8*a^2+b+8*b^2-9*c-8*c^2=0
0 1 1: {a=4,b=9,c=9}*16 failure constant=1, vgcd=2 1+8*a+16*a^2+18*b+16*b^2-18*c-16*c^2=0
1 1 1: {a=12,b=9,c=9}*16 failure constant=9, vgcd=2 9+24*a+16*a^2+18*b+16*b^2-18*c-16*c^2=0

expanding [29]*8: 4*a^2+5*b+4*b^2-5*c-4*c^2=0
0 0 0: {a=0,b=5,c=5}*16 success trivial=3 -> [115] 8*a^2+5*b+8*b^2-5*c-8*c^2=0
1 0 0: {a=8,b=5,c=5}*16 unknown -> [116] 2+8*a+8*a^2+5*b+8*b^2-5*c-8*c^2=0
0 1 0: {a=0,b=13,c=5}*16 failure constant=9, vgcd=2 9+16*a^2+26*b+16*b^2-10*c-16*c^2=0
1 1 0: {a=8,b=13,c=5}*16 failure constant=13, vgcd=2 13+16*a+16*a^2+26*b+16*b^2-10*c-16*c^2=0
0 0 1: {a=0,b=5,c=13}*16 failure constant=-9, vgcd=2 -9+16*a^2+10*b+16*b^2-26*c-16*c^2=0
1 0 1: {a=8,b=5,c=13}*16 failure constant=-5, vgcd=2 -5+16*a+16*a^2+10*b+16*b^2-26*c-16*c^2=0
0 1 1: {a=0,b=13,c=13}*16 success trivial=3 -> [117] 8*a^2+13*b+8*b^2-13*c-8*c^2=0
1 1 1: {a=8,b=13,c=13}*16 unknown -> [118] 2+8*a+8*a^2+13*b+8*b^2-13*c-8*c^2=0

expanding [30]*8: 1+4*a+4*a^2+5*b+4*b^2-5*c-4*c^2=0
0 0 0: {a=4,b=5,c=5}*16 failure constant=1, vgcd=2 1+8*a+16*a^2+10*b+16*b^2-10*c-16*c^2=0
1 0 0: {a=12,b=5,c=5}*16 failure constant=9, vgcd=2 9+24*a+16*a^2+10*b+16*b^2-10*c-16*c^2=0
0 1 0: {a=4,b=13,c=5}*16 unknown -> [119] 5+4*a+8*a^2+13*b+8*b^2-5*c-8*c^2=0
1 1 0: {a=12,b=13,c=5}*16 unknown -> [120] 9+12*a+8*a^2+13*b+8*b^2-5*c-8*c^2=0
0 0 1: {a=4,b=5,c=13}*16 unknown -> [121] -4+4*a+8*a^2+5*b+8*b^2-13*c-8*c^2=0
1 0 1: {a=12,b=5,c=13}*16 success NONTRIVIAL -> [122], const=0  12*a+8*a^2+5*b+8*b^2-13*c-8*c^2=0
0 1 1: {a=4,b=13,c=13}*16 failure constant=1, vgcd=2 1+8*a+16*a^2+26*b+16*b^2-26*c-16*c^2=0
1 1 1: {a=12,b=13,c=13}*16 failure constant=9, vgcd=2 9+24*a+16*a^2+26*b+16*b^2-26*c-16*c^2=0

expanding [31]*8: 3+4*a^2+7*b+4*b^2-c-4*c^2=0
0 0 0: {a=0,b=7,c=1}*16 failure constant=3, vgcd=2 3+16*a^2+14*b+16*b^2-2*c-16*c^2=0
1 0 0: {a=8,b=7,c=1}*16 failure constant=7, vgcd=2 7+16*a+16*a^2+14*b+16*b^2-2*c-16*c^2=0
0 1 0: {a=0,b=15,c=1}*16 unknown -> [123] 7+8*a^2+15*b+8*b^2-c-8*c^2=0
1 1 0: {a=8,b=15,c=1}*16 unknown -> [124] 9+8*a+8*a^2+15*b+8*b^2-c-8*c^2=0
0 0 1: {a=0,b=7,c=9}*16 unknown -> [125] -1+8*a^2+7*b+8*b^2-9*c-8*c^2=0
1 0 1: {a=8,b=7,c=9}*16 unknown -> [126] 1+8*a+8*a^2+7*b+8*b^2-9*c-8*c^2=0
0 1 1: {a=0,b=15,c=9}*16 failure constant=9, vgcd=2 9+16*a^2+30*b+16*b^2-18*c-16*c^2=0
1 1 1: {a=8,b=15,c=9}*16 failure constant=13, vgcd=2 13+16*a+16*a^2+30*b+16*b^2-18*c-16*c^2=0

expanding [32]*8: 4+4*a+4*a^2+7*b+4*b^2-c-4*c^2=0
0 0 0: {a=4,b=7,c=1}*16 unknown -> [127] 2+4*a+8*a^2+7*b+8*b^2-c-8*c^2=0
1 0 0: {a=12,b=7,c=1}*16 unknown -> [128] 6+12*a+8*a^2+7*b+8*b^2-c-8*c^2=0
0 1 0: {a=4,b=15,c=1}*16 failure constant=15, vgcd=2 15+8*a+16*a^2+30*b+16*b^2-2*c-16*c^2=0
1 1 0: {a=12,b=15,c=1}*16 failure constant=23, vgcd=2 23+24*a+16*a^2+30*b+16*b^2-2*c-16*c^2=0
0 0 1: {a=4,b=7,c=9}*16 failure constant=-1, vgcd=2 -1+8*a+16*a^2+14*b+16*b^2-18*c-16*c^2=0
1 0 1: {a=12,b=7,c=9}*16 failure constant=7, vgcd=2 7+24*a+16*a^2+14*b+16*b^2-18*c-16*c^2=0
0 1 1: {a=4,b=15,c=9}*16 unknown -> [129] 5+4*a+8*a^2+15*b+8*b^2-9*c-8*c^2=0
1 1 1: {a=12,b=15,c=9}*16 unknown -> [130] 9+12*a+8*a^2+15*b+8*b^2-9*c-8*c^2=0

expanding [33]*8: -1+4*a^2+3*b+4*b^2-5*c-4*c^2=0
0 0 0: {a=0,b=3,c=5}*16 failure constant=-1, vgcd=2 -1+16*a^2+6*b+16*b^2-10*c-16*c^2=0
1 0 0: {a=8,b=3,c=5}*16 failure constant=3, vgcd=2 3+16*a+16*a^2+6*b+16*b^2-10*c-16*c^2=0
0 1 0: {a=0,b=11,c=5}*16 unknown -> [131] 3+8*a^2+11*b+8*b^2-5*c-8*c^2=0
1 1 0: {a=8,b=11,c=5}*16 unknown -> [132] 5+8*a+8*a^2+11*b+8*b^2-5*c-8*c^2=0
0 0 1: {a=0,b=3,c=13}*16 unknown -> [133] -5+8*a^2+3*b+8*b^2-13*c-8*c^2=0
1 0 1: {a=8,b=3,c=13}*16 unknown -> [134] -3+8*a+8*a^2+3*b+8*b^2-13*c-8*c^2=0
0 1 1: {a=0,b=11,c=13}*16 failure constant=-3, vgcd=2 -3+16*a^2+22*b+16*b^2-26*c-16*c^2=0
1 1 1: {a=8,b=11,c=13}*16 failure constant=1, vgcd=2 1+16*a+16*a^2+22*b+16*b^2-26*c-16*c^2=0

expanding [34]*8: 4*a+4*a^2+3*b+4*b^2-5*c-4*c^2=0
0 0 0: {a=4,b=3,c=5}*16 success NONTRIVIAL -> [135], const=0  4*a+8*a^2+3*b+8*b^2-5*c-8*c^2=0
1 0 0: {a=12,b=3,c=5}*16 unknown -> [136] 4+12*a+8*a^2+3*b+8*b^2-5*c-8*c^2=0
0 1 0: {a=4,b=11,c=5}*16 failure constant=7, vgcd=2 7+8*a+16*a^2+22*b+16*b^2-10*c-16*c^2=0
1 1 0: {a=12,b=11,c=5}*16 failure constant=15, vgcd=2 15+24*a+16*a^2+22*b+16*b^2-10*c-16*c^2=0
0 0 1: {a=4,b=3,c=13}*16 failure constant=-9, vgcd=2 -9+8*a+16*a^2+6*b+16*b^2-26*c-16*c^2=0
1 0 1: {a=12,b=3,c=13}*16 failure constant=-1, vgcd=2 -1+24*a+16*a^2+6*b+16*b^2-26*c-16*c^2=0
0 1 1: {a=4,b=11,c=13}*16 unknown -> [137] -1+4*a+8*a^2+11*b+8*b^2-13*c-8*c^2=0
1 1 1: {a=12,b=11,c=13}*16 unknown -> [138] 3+12*a+8*a^2+11*b+8*b^2-13*c-8*c^2=0

expanding [35]*8: 1+4*a^2+5*b+4*b^2-3*c-4*c^2=0
0 0 0: {a=0,b=5,c=3}*16 failure constant=1, vgcd=2 1+16*a^2+10*b+16*b^2-6*c-16*c^2=0
1 0 0: {a=8,b=5,c=3}*16 failure constant=5, vgcd=2 5+16*a+16*a^2+10*b+16*b^2-6*c-16*c^2=0
0 1 0: {a=0,b=13,c=3}*16 unknown -> [139] 5+8*a^2+13*b+8*b^2-3*c-8*c^2=0
1 1 0: {a=8,b=13,c=3}*16 unknown -> [140] 7+8*a+8*a^2+13*b+8*b^2-3*c-8*c^2=0
0 0 1: {a=0,b=5,c=11}*16 unknown -> [141] -3+8*a^2+5*b+8*b^2-11*c-8*c^2=0
1 0 1: {a=8,b=5,c=11}*16 unknown -> [142] -1+8*a+8*a^2+5*b+8*b^2-11*c-8*c^2=0
0 1 1: {a=0,b=13,c=11}*16 failure constant=3, vgcd=2 3+16*a^2+26*b+16*b^2-22*c-16*c^2=0
1 1 1: {a=8,b=13,c=11}*16 failure constant=7, vgcd=2 7+16*a+16*a^2+26*b+16*b^2-22*c-16*c^2=0

expanding [36]*8: 2+4*a+4*a^2+5*b+4*b^2-3*c-4*c^2=0
0 0 0: {a=4,b=5,c=3}*16 unknown -> [143] 1+4*a+8*a^2+5*b+8*b^2-3*c-8*c^2=0
1 0 0: {a=12,b=5,c=3}*16 unknown -> [144] 5+12*a+8*a^2+5*b+8*b^2-3*c-8*c^2=0
0 1 0: {a=4,b=13,c=3}*16 failure constant=11, vgcd=2 11+8*a+16*a^2+26*b+16*b^2-6*c-16*c^2=0
1 1 0: {a=12,b=13,c=3}*16 failure constant=19, vgcd=2 19+24*a+16*a^2+26*b+16*b^2-6*c-16*c^2=0
0 0 1: {a=4,b=5,c=11}*16 failure constant=-5, vgcd=2 -5+8*a+16*a^2+10*b+16*b^2-22*c-16*c^2=0
1 0 1: {a=12,b=5,c=11}*16 failure constant=3, vgcd=2 3+24*a+16*a^2+10*b+16*b^2-22*c-16*c^2=0
0 1 1: {a=4,b=13,c=11}*16 unknown -> [145] 2+4*a+8*a^2+13*b+8*b^2-11*c-8*c^2=0
1 1 1: {a=12,b=13,c=11}*16 unknown -> [146] 6+12*a+8*a^2+13*b+8*b^2-11*c-8*c^2=0

expanding [37]*8: -3+4*a^2+b+4*b^2-7*c-4*c^2=0
0 0 0: {a=0,b=1,c=7}*16 failure constant=-3, vgcd=2 -3+16*a^2+2*b+16*b^2-14*c-16*c^2=0
1 0 0: {a=8,b=1,c=7}*16 failure constant=1, vgcd=2 1+16*a+16*a^2+2*b+16*b^2-14*c-16*c^2=0
0 1 0: {a=0,b=9,c=7}*16 unknown -> [147] 1+8*a^2+9*b+8*b^2-7*c-8*c^2=0
1 1 0: {a=8,b=9,c=7}*16 unknown -> [148] 3+8*a+8*a^2+9*b+8*b^2-7*c-8*c^2=0
0 0 1: {a=0,b=1,c=15}*16 unknown -> [149] -7+8*a^2+b+8*b^2-15*c-8*c^2=0
1 0 1: {a=8,b=1,c=15}*16 unknown -> [150] -5+8*a+8*a^2+b+8*b^2-15*c-8*c^2=0
0 1 1: {a=0,b=9,c=15}*16 failure constant=-9, vgcd=2 -9+16*a^2+18*b+16*b^2-30*c-16*c^2=0
1 1 1: {a=8,b=9,c=15}*16 failure constant=-5, vgcd=2 -5+16*a+16*a^2+18*b+16*b^2-30*c-16*c^2=0

expanding [38]*8: -2+4*a+4*a^2+b+4*b^2-7*c-4*c^2=0
0 0 0: {a=4,b=1,c=7}*16 unknown -> [151] -1+4*a+8*a^2+b+8*b^2-7*c-8*c^2=0
1 0 0: {a=12,b=1,c=7}*16 unknown -> [152] 3+12*a+8*a^2+b+8*b^2-7*c-8*c^2=0
0 1 0: {a=4,b=9,c=7}*16 failure constant=3, vgcd=2 3+8*a+16*a^2+18*b+16*b^2-14*c-16*c^2=0
1 1 0: {a=12,b=9,c=7}*16 failure constant=11, vgcd=2 11+24*a+16*a^2+18*b+16*b^2-14*c-16*c^2=0
0 0 1: {a=4,b=1,c=15}*16 failure constant=-13, vgcd=2 -13+8*a+16*a^2+2*b+16*b^2-30*c-16*c^2=0
1 0 1: {a=12,b=1,c=15}*16 failure constant=-5, vgcd=2 -5+24*a+16*a^2+2*b+16*b^2-30*c-16*c^2=0
0 1 1: {a=4,b=9,c=15}*16 unknown -> [153] -4+4*a+8*a^2+9*b+8*b^2-15*c-8*c^2=0
1 1 1: {a=12,b=9,c=15}*16 success NONTRIVIAL -> [154], const=0  12*a+8*a^2+9*b+8*b^2-15*c-8*c^2=0

expanding [39]*8: 4*a^2+3*b+4*b^2-3*c-4*c^2=0
0 0 0: {a=0,b=3,c=3}*16 success trivial=3 -> [155] 8*a^2+3*b+8*b^2-3*c-8*c^2=0
1 0 0: {a=8,b=3,c=3}*16 unknown -> [156] 2+8*a+8*a^2+3*b+8*b^2-3*c-8*c^2=0
0 1 0: {a=0,b=11,c=3}*16 failure constant=7, vgcd=2 7+16*a^2+22*b+16*b^2-6*c-16*c^2=0
1 1 0: {a=8,b=11,c=3}*16 failure constant=11, vgcd=2 11+16*a+16*a^2+22*b+16*b^2-6*c-16*c^2=0
0 0 1: {a=0,b=3,c=11}*16 failure constant=-7, vgcd=2 -7+16*a^2+6*b+16*b^2-22*c-16*c^2=0
1 0 1: {a=8,b=3,c=11}*16 failure constant=-3, vgcd=2 -3+16*a+16*a^2+6*b+16*b^2-22*c-16*c^2=0
0 1 1: {a=0,b=11,c=11}*16 success trivial=3 -> [157] 8*a^2+11*b+8*b^2-11*c-8*c^2=0
1 1 1: {a=8,b=11,c=11}*16 unknown -> [158] 2+8*a+8*a^2+11*b+8*b^2-11*c-8*c^2=0

expanding [40]*8: 1+4*a+4*a^2+3*b+4*b^2-3*c-4*c^2=0
0 0 0: {a=4,b=3,c=3}*16 failure constant=1, vgcd=2 1+8*a+16*a^2+6*b+16*b^2-6*c-16*c^2=0
1 0 0: {a=12,b=3,c=3}*16 failure constant=9, vgcd=2 9+24*a+16*a^2+6*b+16*b^2-6*c-16*c^2=0
0 1 0: {a=4,b=11,c=3}*16 unknown -> [159] 4+4*a+8*a^2+11*b+8*b^2-3*c-8*c^2=0
1 1 0: {a=12,b=11,c=3}*16 unknown -> [160] 8+12*a+8*a^2+11*b+8*b^2-3*c-8*c^2=0
0 0 1: {a=4,b=3,c=11}*16 unknown -> [161] -3+4*a+8*a^2+3*b+8*b^2-11*c-8*c^2=0
1 0 1: {a=12,b=3,c=11}*16 unknown -> [162] 1+12*a+8*a^2+3*b+8*b^2-11*c-8*c^2=0
0 1 1: {a=4,b=11,c=11}*16 failure constant=1, vgcd=2 1+8*a+16*a^2+22*b+16*b^2-22*c-16*c^2=0
1 1 1: {a=12,b=11,c=11}*16 failure constant=9, vgcd=2 9+24*a+16*a^2+22*b+16*b^2-22*c-16*c^2=0

expanding [41]*8: 4*a^2+7*b+4*b^2-7*c-4*c^2=0
0 0 0: {a=0,b=7,c=7}*16 success trivial=3 -> [163] 8*a^2+7*b+8*b^2-7*c-8*c^2=0
1 0 0: {a=8,b=7,c=7}*16 unknown -> [164] 2+8*a+8*a^2+7*b+8*b^2-7*c-8*c^2=0
0 1 0: {a=0,b=15,c=7}*16 failure constant=11, vgcd=2 11+16*a^2+30*b+16*b^2-14*c-16*c^2=0
1 1 0: {a=8,b=15,c=7}*16 failure constant=15, vgcd=2 15+16*a+16*a^2+30*b+16*b^2-14*c-16*c^2=0
0 0 1: {a=0,b=7,c=15}*16 failure constant=-11, vgcd=2 -11+16*a^2+14*b+16*b^2-30*c-16*c^2=0
1 0 1: {a=8,b=7,c=15}*16 failure constant=-7, vgcd=2 -7+16*a+16*a^2+14*b+16*b^2-30*c-16*c^2=0
0 1 1: {a=0,b=15,c=15}*16 success trivial=3 -> [165] 8*a^2+15*b+8*b^2-15*c-8*c^2=0
1 1 1: {a=8,b=15,c=15}*16 unknown -> [166] 2+8*a+8*a^2+15*b+8*b^2-15*c-8*c^2=0

expanding [42]*8: 1+4*a+4*a^2+7*b+4*b^2-7*c-4*c^2=0
0 0 0: {a=4,b=7,c=7}*16 failure constant=1, vgcd=2 1+8*a+16*a^2+14*b+16*b^2-14*c-16*c^2=0
1 0 0: {a=12,b=7,c=7}*16 failure constant=9, vgcd=2 9+24*a+16*a^2+14*b+16*b^2-14*c-16*c^2=0
0 1 0: {a=4,b=15,c=7}*16 unknown -> [167] 6+4*a+8*a^2+15*b+8*b^2-7*c-8*c^2=0
1 1 0: {a=12,b=15,c=7}*16 unknown -> [168] 10+12*a+8*a^2+15*b+8*b^2-7*c-8*c^2=0
0 0 1: {a=4,b=7,c=15}*16 unknown -> [169] -5+4*a+8*a^2+7*b+8*b^2-15*c-8*c^2=0
1 0 1: {a=12,b=7,c=15}*16 unknown -> [170] -1+12*a+8*a^2+7*b+8*b^2-15*c-8*c^2=0
0 1 1: {a=4,b=15,c=15}*16 failure constant=1, vgcd=2 1+8*a+16*a^2+30*b+16*b^2-30*c-16*c^2=0
1 1 1: {a=12,b=15,c=15}*16 failure constant=9, vgcd=2 9+24*a+16*a^2+30*b+16*b^2-30*c-16*c^2=0
