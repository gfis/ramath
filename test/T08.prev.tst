Expanding for base=2, reasons+features=base,similiar,transpose,transpose,similiar
exponentGCDs=[3,3,3,3], transposables={{a,b,c},{d}}
----------------
expanding queue[0]^-1: a^3 + b^3 + c^3 - d^3 meter=[2,2,2,2] *2
solution [0,0,0,0],trivial(3)
[0+2*a,0+2*b,0+2*c,0+2*d]:	similiar to [0], same  8*a^3+8*b^3+8*c^3-8*d^3
[1+2*a,1+2*b,0+2*c,0+2*d]:	unknown -> [1] 2+6*a+12*a^2+8*a^3+6*b+12*b^2+8*b^3+8*c^3-8*d^3
[1+2*a,0+2*b,1+2*c,0+2*d]:	transposed [1] {0/0+2*c,0/1+2*a,0/1+2*b,3/0+2*d} by 0+2*c|0+2*b 1+2*b|1+2*c
[0+2*a,1+2*b,1+2*c,0+2*d]:	transposed [1] {0/0+2*c,0/1+2*a,0/1+2*b,3/0+2*d} by 0+2*c|0+2*a 1+2*a|1+2*b 1+2*b|1+2*c
[1+2*a,0+2*b,0+2*c,1+2*d]:	unknown -> [2] 6*a+12*a^2+8*a^3+8*b^3+8*c^3-6*d-12*d^2-8*d^3
[0+2*a,1+2*b,0+2*c,1+2*d]:	transposed [2] {0/0+2*b,0/0+2*c,0/1+2*a,3/1+2*d} by 0+2*b|0+2*a 1+2*a|1+2*b
[0+2*a,0+2*b,1+2*c,1+2*d]:	transposed [2] {0/0+2*b,0/0+2*c,0/1+2*a,3/1+2*d} by 0+2*b|0+2*a 0+2*c|0+2*b 1+2*a|1+2*c
[1+2*a,1+2*b,1+2*c,1+2*d]:	unknown -> [3] 2+6*a+12*a^2+8*a^3+6*b+12*b^2+8*b^3+6*c+12*c^2+8*c^3-6*d-12*d^2-8*d^3
----------------
expanding queue[1]^0: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 + 8*c^3 - 8*d^3 meter=[2,2,1,1] *4
[3+4*a,1+4*b,0+2*c,0+2*d]:	unknown -> [4] 28+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3+8*c^3-8*d^3
[1+4*a,3+4*b,0+2*c,0+2*d]:	transposed [4] {0/0+2*c,0/1+4*b,0/3+4*a,3/0+2*d} by 1+4*b|1+4*a 3+4*a|3+4*b
expanding queue[2]^0: 6*a + 12*a^2 + 8*a^3 + 8*b^3 + 8*c^3 - 6*d - 12*d^2 - 8*d^3 meter=[2,1,1,2] *4
solution [1,0,0,1],trivial(3)
[1+4*a,0+2*b,0+2*c,1+4*d]:	unknown -> [5] 12*a+48*a^2+64*a^3+8*b^3+8*c^3-12*d-48*d^2-64*d^3
[3+4*a,0+2*b,0+2*c,3+4*d]:	unknown -> [6] 108*a+144*a^2+64*a^3+8*b^3+8*c^3-108*d-144*d^2-64*d^3
expanding queue[3]^0: 2 + 6*a + 12*a^2 + 8*a^3 + 6*b + 12*b^2 + 8*b^3 + 6*c + 12*c^2 + 8*c^3 - 6*d - 12*d^2 - 8*d^3 meter=[2,2,2,2] *4
[3+4*a,1+4*b,1+4*c,1+4*d]:	unknown -> [7] 28+108*a+144*a^2+64*a^3+12*b+48*b^2+64*b^3+12*c+48*c^2+64*c^3-12*d-48*d^2-64*d^3
[1+4*a,3+4*b,1+4*c,1+4*d]:	transposed [7] {0/1+4*b,0/1+4*c,0/3+4*a,3/1+4*d} by 1+4*b|1+4*a 3+4*a|3+4*b
[1+4*a,1+4*b,3+4*c,1+4*d]:	transposed [7] {0/1+4*b,0/1+4*c,0/3+4*a,3/1+4*d} by 1+4*b|1+4*a 1+4*c|1+4*b 3+4*a|3+4*c
[3+4*a,3+4*b,3+4*c,1+4*d]:	unknown -> [8] 80+108*a+144*a^2+64*a^3+108*b+144*b^2+64*b^3+108*c+144*c^2+64*c^3-12*d-48*d^2-64*d^3
[1+4*a,1+4*b,1+4*c,3+4*d]:	unknown -> [9] -24+12*a+48*a^2+64*a^3+12*b+48*b^2+64*b^3+12*c+48*c^2+64*c^3-108*d-144*d^2-64*d^3
[3+4*a,3+4*b,1+4*c,3+4*d]:	unknown -> [10] 28+108*a+144*a^2+64*a^3+108*b+144*b^2+64*b^3+12*c+48*c^2+64*c^3-108*d-144*d^2-64*d^3
[3+4*a,1+4*b,3+4*c,3+4*d]:	transposed [10] {0/1+4*c,0/3+4*a,0/3+4*b,3/3+4*d} by 1+4*c|1+4*b 3+4*b|3+4*c
[1+4*a,3+4*b,3+4*c,3+4*d]:	transposed [10] {0/1+4*c,0/3+4*a,0/3+4*b,3/3+4*d} by 1+4*c|1+4*a 3+4*a|3+4*b 3+4*b|3+4*c
----------------
expanding queue[4]^1: 28 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 8*c^3 - 8*d^3 meter=[2,2,2,2] *8
[7+8*a,1+8*b,0+4*c,0+4*d]:	unknown -> [11] 344+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3+64*c^3-64*d^3
[3+8*a,5+8*b,0+4*c,0+4*d]:	unknown -> [12] 152+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+64*c^3-64*d^3
[7+8*a,1+8*b,2+4*c,0+4*d]:	unknown -> [13] 352+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3+48*c+96*c^2+64*c^3-64*d^3
[3+8*a,5+8*b,2+4*c,0+4*d]:	unknown -> [14] 160+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+48*c+96*c^2+64*c^3-64*d^3
[7+8*a,1+8*b,0+4*c,2+4*d]:	unknown -> [15] 336+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3+64*c^3-48*d-96*d^2-64*d^3
[3+8*a,5+8*b,0+4*c,2+4*d]:	unknown -> [16] 144+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+64*c^3-48*d-96*d^2-64*d^3
[7+8*a,1+8*b,2+4*c,2+4*d]:	unknown -> [17] 344+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3+48*c+96*c^2+64*c^3-48*d-96*d^2-64*d^3
[3+8*a,5+8*b,2+4*c,2+4*d]:	unknown -> [18] 152+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+48*c+96*c^2+64*c^3-48*d-96*d^2-64*d^3
expanding queue[5]^2: 12*a + 48*a^2 + 64*a^3 + 8*b^3 + 8*c^3 - 12*d - 48*d^2 - 64*d^3 meter=[2,2,2,2] *8
solution [1,0,0,1],trivial(3)
[1+8*a,0+4*b,0+4*c,1+8*d]:	unknown -> [19] 24*a+192*a^2+512*a^3+64*b^3+64*c^3-24*d-192*d^2-512*d^3
[1+8*a,2+4*b,0+4*c,1+8*d]:	unknown -> [20] 8+24*a+192*a^2+512*a^3+48*b+96*b^2+64*b^3+64*c^3-24*d-192*d^2-512*d^3
[1+8*a,0+4*b,2+4*c,1+8*d]:	transposed [20] {0/0+4*c,0/1+8*a,0/2+4*b,3/1+8*d} by 0+4*c|0+4*b 2+4*b|2+4*c
[1+8*a,2+4*b,2+4*c,1+8*d]:	unknown -> [21] 16+24*a+192*a^2+512*a^3+48*b+96*b^2+64*b^3+48*c+96*c^2+64*c^3-24*d-192*d^2-512*d^3
[5+8*a,0+4*b,0+4*c,5+8*d]:	unknown -> [22] 600*a+960*a^2+512*a^3+64*b^3+64*c^3-600*d-960*d^2-512*d^3
[5+8*a,2+4*b,0+4*c,5+8*d]:	unknown -> [23] 8+600*a+960*a^2+512*a^3+48*b+96*b^2+64*b^3+64*c^3-600*d-960*d^2-512*d^3
[5+8*a,0+4*b,2+4*c,5+8*d]:	transposed [23] {0/0+4*c,0/2+4*b,0/5+8*a,3/5+8*d} by 0+4*c|0+4*b 2+4*b|2+4*c
[5+8*a,2+4*b,2+4*c,5+8*d]:	unknown -> [24] 16+600*a+960*a^2+512*a^3+48*b+96*b^2+64*b^3+48*c+96*c^2+64*c^3-600*d-960*d^2-512*d^3
expanding queue[6]^2: 108*a + 144*a^2 + 64*a^3 + 8*b^3 + 8*c^3 - 108*d - 144*d^2 - 64*d^3 meter=[2,2,2,2] *8
solution [3,0,0,3],trivial(3)
[3+8*a,0+4*b,0+4*c,3+8*d]:	unknown -> [25] 216*a+576*a^2+512*a^3+64*b^3+64*c^3-216*d-576*d^2-512*d^3
[3+8*a,2+4*b,0+4*c,3+8*d]:	unknown -> [26] 8+216*a+576*a^2+512*a^3+48*b+96*b^2+64*b^3+64*c^3-216*d-576*d^2-512*d^3
[3+8*a,0+4*b,2+4*c,3+8*d]:	transposed [26] {0/0+4*c,0/2+4*b,0/3+8*a,3/3+8*d} by 0+4*c|0+4*b 2+4*b|2+4*c
[3+8*a,2+4*b,2+4*c,3+8*d]:	unknown -> [27] 16+216*a+576*a^2+512*a^3+48*b+96*b^2+64*b^3+48*c+96*c^2+64*c^3-216*d-576*d^2-512*d^3
[7+8*a,0+4*b,0+4*c,7+8*d]:	unknown -> [28] 1176*a+1344*a^2+512*a^3+64*b^3+64*c^3-1176*d-1344*d^2-512*d^3
[7+8*a,2+4*b,0+4*c,7+8*d]:	unknown -> [29] 8+1176*a+1344*a^2+512*a^3+48*b+96*b^2+64*b^3+64*c^3-1176*d-1344*d^2-512*d^3
[7+8*a,0+4*b,2+4*c,7+8*d]:	transposed [29] {0/0+4*c,0/2+4*b,0/7+8*a,3/7+8*d} by 0+4*c|0+4*b 2+4*b|2+4*c
[7+8*a,2+4*b,2+4*c,7+8*d]:	unknown -> [30] 16+1176*a+1344*a^2+512*a^3+48*b+96*b^2+64*b^3+48*c+96*c^2+64*c^3-1176*d-1344*d^2-512*d^3
expanding queue[7]^3: 28 + 108*a + 144*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 12*c + 48*c^2 + 64*c^3 - 12*d - 48*d^2 - 64*d^3 meter=[2,2,2,2] *8
[7+8*a,1+8*b,1+8*c,1+8*d]:	unknown -> [31] 344+1176*a+1344*a^2+512*a^3+24*b+192*b^2+512*b^3+24*c+192*c^2+512*c^3-24*d-192*d^2-512*d^3
[3+8*a,5+8*b,1+8*c,1+8*d]:	unknown -> [32] 152+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+24*c+192*c^2+512*c^3-24*d-192*d^2-512*d^3
[3+8*a,1+8*b,5+8*c,1+8*d]:	transposed [32] {0/1+8*c,0/3+8*a,0/5+8*b,3/1+8*d} by 1+8*c|1+8*b 5+8*b|5+8*c
[7+8*a,5+8*b,5+8*c,1+8*d]:	unknown -> [33] 592+1176*a+1344*a^2+512*a^3+600*b+960*b^2+512*b^3+600*c+960*c^2+512*c^3-24*d-192*d^2-512*d^3
[3+8*a,1+8*b,1+8*c,5+8*d]:	unknown -> [34] -96+216*a+576*a^2+512*a^3+24*b+192*b^2+512*b^3+24*c+192*c^2+512*c^3-600*d-960*d^2-512*d^3
[7+8*a,5+8*b,1+8*c,5+8*d]:	unknown -> [35] 344+1176*a+1344*a^2+512*a^3+600*b+960*b^2+512*b^3+24*c+192*c^2+512*c^3-600*d-960*d^2-512*d^3
[7+8*a,1+8*b,5+8*c,5+8*d]:	transposed [35] {0/1+8*c,0/5+8*b,0/7+8*a,3/5+8*d} by 1+8*c|1+8*b 5+8*b|5+8*c
[3+8*a,5+8*b,5+8*c,5+8*d]:	unknown -> [36] 152+216*a+576*a^2+512*a^3+600*b+960*b^2+512*b^3+600*c+960*c^2+512*c^3-600*d-960*d^2-512*d^3
expanding queue[8]^3: 80 + 108*a + 144*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 + 108*c + 144*c^2 + 64*c^3 - 12*d - 48*d^2 - 64*d^3 meter=[2,2,2,2] *8
[3+8*a,3+8*b,3+8*c,1+8*d]:	unknown -> [37] 80+216*a+576*a^2+512*a^3+216*b+576*b^2+512*b^3+216*c+576*c^2+512*c^3-24*d-192*d^2-512*d^3
[7+8*a,7+8*b,3+8*c,1+8*d]:	unknown -> [38] 712+1176*a+1344*a^2+512*a^3+1176*b+1344*b^2+512*b^3+216*c+576*c^2+512*c^3-24*d-192*d^2-512*d^3
[7+8*a,3+8*b,7+8*c,1+8*d]:	transposed [38] {0/3+8*c,0/7+8*a,0/7+8*b,3/1+8*d} by 3+8*c|3+8*b 7+8*b|7+8*c
[3+8*a,7+8*b,7+8*c,1+8*d]:	transposed [38] {0/3+8*c,0/7+8*a,0/7+8*b,3/1+8*d} by 3+8*c|3+8*a 7+8*a|7+8*b 7+8*b|7+8*c
[7+8*a,3+8*b,3+8*c,5+8*d]:	unknown -> [39] 272+1176*a+1344*a^2+512*a^3+216*b+576*b^2+512*b^3+216*c+576*c^2+512*c^3-600*d-960*d^2-512*d^3
[3+8*a,7+8*b,3+8*c,5+8*d]:	transposed [39] {0/3+8*b,0/3+8*c,0/7+8*a,3/5+8*d} by 3+8*b|3+8*a 7+8*a|7+8*b
[3+8*a,3+8*b,7+8*c,5+8*d]:	transposed [39] {0/3+8*b,0/3+8*c,0/7+8*a,3/5+8*d} by 3+8*b|3+8*a 3+8*c|3+8*b 7+8*a|7+8*c
[7+8*a,7+8*b,7+8*c,5+8*d]:	unknown -> [40] 904+1176*a+1344*a^2+512*a^3+1176*b+1344*b^2+512*b^3+1176*c+1344*c^2+512*c^3-600*d-960*d^2-512*d^3
expanding queue[9]^3:  - 24 + 12*a + 48*a^2 + 64*a^3 + 12*b + 48*b^2 + 64*b^3 + 12*c + 48*c^2 + 64*c^3 - 108*d - 144*d^2 - 64*d^3 meter=[2,2,2,2] *8
[1+8*a,1+8*b,1+8*c,3+8*d]:	unknown -> [41] -24+24*a+192*a^2+512*a^3+24*b+192*b^2+512*b^3+24*c+192*c^2+512*c^3-216*d-576*d^2-512*d^3
[5+8*a,5+8*b,1+8*c,3+8*d]:	unknown -> [42] 224+600*a+960*a^2+512*a^3+600*b+960*b^2+512*b^3+24*c+192*c^2+512*c^3-216*d-576*d^2-512*d^3
[5+8*a,1+8*b,5+8*c,3+8*d]:	transposed [42] {0/1+8*c,0/5+8*a,0/5+8*b,3/3+8*d} by 1+8*c|1+8*b 5+8*b|5+8*c
[1+8*a,5+8*b,5+8*c,3+8*d]:	transposed [42] {0/1+8*c,0/5+8*a,0/5+8*b,3/3+8*d} by 1+8*c|1+8*a 5+8*a|5+8*b 5+8*b|5+8*c
[5+8*a,1+8*b,1+8*c,7+8*d]:	unknown -> [43] -216+600*a+960*a^2+512*a^3+24*b+192*b^2+512*b^3+24*c+192*c^2+512*c^3-1176*d-1344*d^2-512*d^3
[1+8*a,5+8*b,1+8*c,7+8*d]:	transposed [43] {0/1+8*b,0/1+8*c,0/5+8*a,3/7+8*d} by 1+8*b|1+8*a 5+8*a|5+8*b
[1+8*a,1+8*b,5+8*c,7+8*d]:	transposed [43] {0/1+8*b,0/1+8*c,0/5+8*a,3/7+8*d} by 1+8*b|1+8*a 1+8*c|1+8*b 5+8*a|5+8*c
[5+8*a,5+8*b,5+8*c,7+8*d]:	unknown -> [44] 32+600*a+960*a^2+512*a^3+600*b+960*b^2+512*b^3+600*c+960*c^2+512*c^3-1176*d-1344*d^2-512*d^3
expanding queue[10]^3: 28 + 108*a + 144*a^2 + 64*a^3 + 108*b + 144*b^2 + 64*b^3 + 12*c + 48*c^2 + 64*c^3 - 108*d - 144*d^2 - 64*d^3 meter=[2,2,2,2] *8
[7+8*a,3+8*b,1+8*c,3+8*d]:	unknown -> [45] 344+1176*a+1344*a^2+512*a^3+216*b+576*b^2+512*b^3+24*c+192*c^2+512*c^3-216*d-576*d^2-512*d^3
[3+8*a,7+8*b,1+8*c,3+8*d]:	transposed [45] {0/1+8*c,0/3+8*b,0/7+8*a,3/3+8*d} by 3+8*b|3+8*a 7+8*a|7+8*b
[3+8*a,3+8*b,5+8*c,3+8*d]:	unknown -> [46] 152+216*a+576*a^2+512*a^3+216*b+576*b^2+512*b^3+600*c+960*c^2+512*c^3-216*d-576*d^2-512*d^3
[7+8*a,7+8*b,5+8*c,3+8*d]:	unknown -> [47] 784+1176*a+1344*a^2+512*a^3+1176*b+1344*b^2+512*b^3+600*c+960*c^2+512*c^3-216*d-576*d^2-512*d^3
[3+8*a,3+8*b,1+8*c,7+8*d]:	unknown -> [48] -288+216*a+576*a^2+512*a^3+216*b+576*b^2+512*b^3+24*c+192*c^2+512*c^3-1176*d-1344*d^2-512*d^3
[7+8*a,7+8*b,1+8*c,7+8*d]:	unknown -> [49] 344+1176*a+1344*a^2+512*a^3+1176*b+1344*b^2+512*b^3+24*c+192*c^2+512*c^3-1176*d-1344*d^2-512*d^3
[7+8*a,3+8*b,5+8*c,7+8*d]:	unknown -> [50] 152+1176*a+1344*a^2+512*a^3+216*b+576*b^2+512*b^3+600*c+960*c^2+512*c^3-1176*d-1344*d^2-512*d^3
[3+8*a,7+8*b,5+8*c,7+8*d]:	transposed [50] {0/3+8*b,0/5+8*c,0/7+8*a,3/7+8*d} by 3+8*b|3+8*a 7+8*a|7+8*b
Maximum level 2 reached at [51]: a^3 + b^3 + c^3 - d^3
