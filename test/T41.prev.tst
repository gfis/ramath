Expanding for base=2, transposables={{a,b,c},{d}}, reasons+features=base,transpose,same,similiar,grow
----------------
expanding queue[0]^-1: a^4 + b^4 + c^4 - d^4 = 0 meter=[2,2,2,2] *2
solution [0,0,0,0],trivial(3)
[0+2*a,0+2*b,0+2*c,0+2*d]: same form as 16*a^4+16*b^4+16*c^4-16*d^4=0
[1+2*a,0+2*b,0+2*c,1+2*d]: unknown 8*a+24*a^2+32*a^3+16*a^4+16*b^4+16*c^4-8*d-24*d^2-32*d^3-16*d^4=0 -> [1]
[0+2*a,1+2*b,0+2*c,1+2*d]: transposition of [1] {0/0+2*b,0/0+2*c,0/1+2*a,3/1+2*d} by 0+2*b|0+2*a 1+2*a|1+2*b
[0+2*a,0+2*b,1+2*c,1+2*d]: transposition of [1] {0/0+2*b,0/0+2*c,0/1+2*a,3/1+2*d} by 0+2*b|0+2*a 0+2*c|0+2*b 1+2*a|1+2*c
----------------
expanding queue[1]^0: 8*a + 24*a^2 + 32*a^3 + 16*a^4 + 16*b^4 + 16*c^4 - 8*d - 24*d^2 - 32*d^3 - 16*d^4 = 0 meter=[2,2,2,2] *4
solution [1,0,0,1],trivial(3)
[1+4*a,0+4*b,0+4*c,1+4*d]: grown from [1]*2,4,8,16,16,16,2,4,8,16 16*a+96*a^2+256*a^3+256*a^4+256*b^4+256*c^4-16*d-96*d^2-256*d^3-256*d^4=0
[3+4*a,0+4*b,0+4*c,1+4*d]: unknown 80+432*a+864*a^2+768*a^3+256*a^4+256*b^4+256*c^4-16*d-96*d^2-256*d^3-256*d^4=0 -> [2]
[1+4*a,2+4*b,0+4*c,1+4*d]: unknown 16+16*a+96*a^2+256*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4+256*c^4-16*d-96*d^2-256*d^3-256*d^4=0 -> [3]
[3+4*a,2+4*b,0+4*c,1+4*d]: unknown 96+432*a+864*a^2+768*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4+256*c^4-16*d-96*d^2-256*d^3-256*d^4=0 -> [4]
[1+4*a,0+4*b,2+4*c,1+4*d]: transposition of [3] {0/0+4*c,0/1+4*a,0/2+4*b,3/1+4*d} by 0+4*c|0+4*b 2+4*b|2+4*c
[3+4*a,0+4*b,2+4*c,1+4*d]: transposition of [4] {0/0+4*c,0/2+4*b,0/3+4*a,3/1+4*d} by 0+4*c|0+4*b 2+4*b|2+4*c
[1+4*a,2+4*b,2+4*c,1+4*d]: unknown 32+16*a+96*a^2+256*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4+128*c+384*c^2+512*c^3+256*c^4-16*d-96*d^2-256*d^3-256*d^4=0 -> [5]
[3+4*a,2+4*b,2+4*c,1+4*d]: unknown 112+432*a+864*a^2+768*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4+128*c+384*c^2+512*c^3+256*c^4-16*d-96*d^2-256*d^3-256*d^4=0 -> [6]
[1+4*a,0+4*b,0+4*c,3+4*d]: unknown -80+16*a+96*a^2+256*a^3+256*a^4+256*b^4+256*c^4-432*d-864*d^2-768*d^3-256*d^4=0 -> [7]
[3+4*a,0+4*b,0+4*c,3+4*d]: grown from [1]*54,36,24,16,16,16,54,36,24,16 432*a+864*a^2+768*a^3+256*a^4+256*b^4+256*c^4-432*d-864*d^2-768*d^3-256*d^4=0
[1+4*a,2+4*b,0+4*c,3+4*d]: unknown -64+16*a+96*a^2+256*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4+256*c^4-432*d-864*d^2-768*d^3-256*d^4=0 -> [8]
[3+4*a,2+4*b,0+4*c,3+4*d]: unknown 16+432*a+864*a^2+768*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4+256*c^4-432*d-864*d^2-768*d^3-256*d^4=0 -> [9]
[1+4*a,0+4*b,2+4*c,3+4*d]: transposition of [8] {0/0+4*c,0/1+4*a,0/2+4*b,3/3+4*d} by 0+4*c|0+4*b 2+4*b|2+4*c
[3+4*a,0+4*b,2+4*c,3+4*d]: transposition of [9] {0/0+4*c,0/2+4*b,0/3+4*a,3/3+4*d} by 0+4*c|0+4*b 2+4*b|2+4*c
[1+4*a,2+4*b,2+4*c,3+4*d]: unknown -48+16*a+96*a^2+256*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4+128*c+384*c^2+512*c^3+256*c^4-432*d-864*d^2-768*d^3-256*d^4=0 -> [10]
[3+4*a,2+4*b,2+4*c,3+4*d]: unknown 32+432*a+864*a^2+768*a^3+256*a^4+128*b+384*b^2+512*b^3+256*b^4+128*c+384*c^2+512*c^3+256*c^4-432*d-864*d^2-768*d^3-256*d^4=0 -> [11]
----------------
expanding queue[2]^1: 80 + 432*a + 864*a^2 + 768*a^3 + 256*a^4 + 256*b^4 + 256*c^4 - 16*d - 96*d^2 - 256*d^3 - 256*d^4 = 0 meter=[2,2,2,2] *8
[7+8*a,0+8*b,0+8*c,1+8*d]: unknown 2400+10976*a+18816*a^2+14336*a^3+4096*a^4+4096*b^4+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [12]
[7+8*a,4+8*b,0+8*c,1+8*d]: unknown 2656+10976*a+18816*a^2+14336*a^3+4096*a^4+2048*b+6144*b^2+8192*b^3+4096*b^4+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [13]
[7+8*a,0+8*b,4+8*c,1+8*d]: transposition of [13] {0/0+8*c,0/4+8*b,0/7+8*a,3/1+8*d} by 0+8*c|0+8*b 4+8*b|4+8*c
[7+8*a,4+8*b,4+8*c,1+8*d]: unknown 2912+10976*a+18816*a^2+14336*a^3+4096*a^4+2048*b+6144*b^2+8192*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [14]
[3+8*a,0+8*b,0+8*c,5+8*d]: unknown -544+864*a+3456*a^2+6144*a^3+4096*a^4+4096*b^4+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [15]
[3+8*a,4+8*b,0+8*c,5+8*d]: unknown -288+864*a+3456*a^2+6144*a^3+4096*a^4+2048*b+6144*b^2+8192*b^3+4096*b^4+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [16]
[3+8*a,0+8*b,4+8*c,5+8*d]: transposition of [16] {0/0+8*c,0/3+8*a,0/4+8*b,3/5+8*d} by 0+8*c|0+8*b 4+8*b|4+8*c
[3+8*a,4+8*b,4+8*c,5+8*d]: unknown -32+864*a+3456*a^2+6144*a^3+4096*a^4+2048*b+6144*b^2+8192*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [17]
expanding queue[3]^1: 16 + 16*a + 96*a^2 + 256*a^3 + 256*a^4 + 128*b + 384*b^2 + 512*b^3 + 256*b^4 + 256*c^4 - 16*d - 96*d^2 - 256*d^3 - 256*d^4 = 0 meter=[2,2,2,2] *8
[5+8*a,2+8*b,0+8*c,1+8*d]: grown from [3]*40,250,100,40,16,2,4,8,16,16,2,4,8,16 640+4000*a+9600*a^2+10240*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0
[5+8*a,6+8*b,0+8*c,1+8*d]: grown from [3]*120,250,100,40,16,54,36,24,16,16,2,4,8,16 1920+4000*a+9600*a^2+10240*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0
[5+8*a,2+8*b,4+8*c,1+8*d]: unknown 896+4000*a+9600*a^2+10240*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [18]
[5+8*a,6+8*b,4+8*c,1+8*d]: unknown 2176+4000*a+9600*a^2+10240*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [19]
[1+8*a,2+8*b,0+8*c,5+8*d]: unknown -608+32*a+384*a^2+2048*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [20]
[1+8*a,6+8*b,0+8*c,5+8*d]: grown from [3]*42,2,4,8,16,54,36,24,16,16,250,100,40,16 672+32*a+384*a^2+2048*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0
[1+8*a,2+8*b,4+8*c,5+8*d]: unknown -352+32*a+384*a^2+2048*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [21]
[1+8*a,6+8*b,4+8*c,5+8*d]: unknown 928+32*a+384*a^2+2048*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [22]
expanding queue[4]^1: 96 + 432*a + 864*a^2 + 768*a^3 + 256*a^4 + 128*b + 384*b^2 + 512*b^3 + 256*b^4 + 256*c^4 - 16*d - 96*d^2 - 256*d^3 - 256*d^4 = 0 meter=[2,2,2,2] *8
[3+8*a,2+8*b,0+8*c,1+8*d]: grown from [4]*1,2,4,8,16,2,4,8,16,16,2,4,8,16 96+864*a+3456*a^2+6144*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0
[3+8*a,6+8*b,0+8*c,1+8*d]: unknown 1376+864*a+3456*a^2+6144*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [23]
[3+8*a,2+8*b,4+8*c,1+8*d]: unknown 352+864*a+3456*a^2+6144*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [24]
[3+8*a,6+8*b,4+8*c,1+8*d]: unknown 1632+864*a+3456*a^2+6144*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [25]
[7+8*a,2+8*b,0+8*c,5+8*d]: unknown 1792+10976*a+18816*a^2+14336*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [26]
[7+8*a,6+8*b,0+8*c,5+8*d]: unknown 3072+10976*a+18816*a^2+14336*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [27]
[7+8*a,2+8*b,4+8*c,5+8*d]: unknown 2048+10976*a+18816*a^2+14336*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [28]
[7+8*a,6+8*b,4+8*c,5+8*d]: unknown 3328+10976*a+18816*a^2+14336*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [29]
expanding queue[5]^1: 32 + 16*a + 96*a^2 + 256*a^3 + 256*a^4 + 128*b + 384*b^2 + 512*b^3 + 256*b^4 + 128*c + 384*c^2 + 512*c^3 + 256*c^4 - 16*d - 96*d^2 - 256*d^3 - 256*d^4 = 0 meter=[2,2,2,2] *8
[1+8*a,2+8*b,2+8*c,1+8*d]: grown from [5]*1,2,4,8,16,2,4,8,16,2,4,8,16,2,4,8,16 32+32*a+384*a^2+2048*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0
[1+8*a,6+8*b,2+8*c,1+8*d]: grown from [5]*41,2,4,8,16,54,36,24,16,2,4,8,16,2,4,8,16 1312+32*a+384*a^2+2048*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0
[1+8*a,2+8*b,6+8*c,1+8*d]: grown from [5]*41,2,4,8,16,2,4,8,16,54,36,24,16,2,4,8,16 1312+32*a+384*a^2+2048*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0
[1+8*a,6+8*b,6+8*c,1+8*d]: grown from [5]*81,2,4,8,16,54,36,24,16,54,36,24,16,2,4,8,16 2592+32*a+384*a^2+2048*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0
[5+8*a,2+8*b,2+8*c,5+8*d]: grown from [5]*1,250,100,40,16,2,4,8,16,2,4,8,16,250,100,40,16 32+4000*a+9600*a^2+10240*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0
[5+8*a,6+8*b,2+8*c,5+8*d]: grown from [5]*41,250,100,40,16,54,36,24,16,2,4,8,16,250,100,40,16 1312+4000*a+9600*a^2+10240*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0
[5+8*a,2+8*b,6+8*c,5+8*d]: grown from [5]*41,250,100,40,16,2,4,8,16,54,36,24,16,250,100,40,16 1312+4000*a+9600*a^2+10240*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0
[5+8*a,6+8*b,6+8*c,5+8*d]: grown from [5]*81,250,100,40,16,54,36,24,16,54,36,24,16,250,100,40,16 2592+4000*a+9600*a^2+10240*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0
expanding queue[6]^1: 112 + 432*a + 864*a^2 + 768*a^3 + 256*a^4 + 128*b + 384*b^2 + 512*b^3 + 256*b^4 + 128*c + 384*c^2 + 512*c^3 + 256*c^4 - 16*d - 96*d^2 - 256*d^3 - 256*d^4 = 0 meter=[2,2,2,2] *8
[7+8*a,2+8*b,2+8*c,1+8*d]: unknown 2432+10976*a+18816*a^2+14336*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [30]
[7+8*a,6+8*b,2+8*c,1+8*d]: unknown 3712+10976*a+18816*a^2+14336*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [31]
[7+8*a,2+8*b,6+8*c,1+8*d]: transposition of [31] {0/2+8*c,0/6+8*b,0/7+8*a,3/1+8*d} by 2+8*c|2+8*b 6+8*b|6+8*c
[7+8*a,6+8*b,6+8*c,1+8*d]: unknown 4992+10976*a+18816*a^2+14336*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-32*d-384*d^2-2048*d^3-4096*d^4=0 -> [32]
[3+8*a,2+8*b,2+8*c,5+8*d]: unknown -512+864*a+3456*a^2+6144*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [33]
[3+8*a,6+8*b,2+8*c,5+8*d]: unknown 768+864*a+3456*a^2+6144*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [34]
[3+8*a,2+8*b,6+8*c,5+8*d]: transposition of [34] {0/2+8*c,0/3+8*a,0/6+8*b,3/5+8*d} by 2+8*c|2+8*b 6+8*b|6+8*c
[3+8*a,6+8*b,6+8*c,5+8*d]: unknown 2048+864*a+3456*a^2+6144*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-4000*d-9600*d^2-10240*d^3-4096*d^4=0 -> [35]
expanding queue[7]^1:  - 80 + 16*a + 96*a^2 + 256*a^3 + 256*a^4 + 256*b^4 + 256*c^4 - 432*d - 864*d^2 - 768*d^3 - 256*d^4 = 0 meter=[2,2,2,2] *8
[5+8*a,0+8*b,0+8*c,3+8*d]: unknown 544+4000*a+9600*a^2+10240*a^3+4096*a^4+4096*b^4+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [36]
[5+8*a,4+8*b,0+8*c,3+8*d]: unknown 800+4000*a+9600*a^2+10240*a^3+4096*a^4+2048*b+6144*b^2+8192*b^3+4096*b^4+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [37]
[5+8*a,0+8*b,4+8*c,3+8*d]: transposition of [37] {0/0+8*c,0/4+8*b,0/5+8*a,3/3+8*d} by 0+8*c|0+8*b 4+8*b|4+8*c
[5+8*a,4+8*b,4+8*c,3+8*d]: unknown 1056+4000*a+9600*a^2+10240*a^3+4096*a^4+2048*b+6144*b^2+8192*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [38]
[1+8*a,0+8*b,0+8*c,7+8*d]: unknown -2400+32*a+384*a^2+2048*a^3+4096*a^4+4096*b^4+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [39]
[1+8*a,4+8*b,0+8*c,7+8*d]: unknown -2144+32*a+384*a^2+2048*a^3+4096*a^4+2048*b+6144*b^2+8192*b^3+4096*b^4+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [40]
[1+8*a,0+8*b,4+8*c,7+8*d]: transposition of [40] {0/0+8*c,0/1+8*a,0/4+8*b,3/7+8*d} by 0+8*c|0+8*b 4+8*b|4+8*c
[1+8*a,4+8*b,4+8*c,7+8*d]: unknown -1888+32*a+384*a^2+2048*a^3+4096*a^4+2048*b+6144*b^2+8192*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [41]
expanding queue[8]^1:  - 64 + 16*a + 96*a^2 + 256*a^3 + 256*a^4 + 128*b + 384*b^2 + 512*b^3 + 256*b^4 + 256*c^4 - 432*d - 864*d^2 - 768*d^3 - 256*d^4 = 0 meter=[2,2,2,2] *8
[1+8*a,2+8*b,0+8*c,3+8*d]: grown from [8]*1,2,4,8,16,2,4,8,16,16,2,4,8,16 -64+32*a+384*a^2+2048*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0
[1+8*a,6+8*b,0+8*c,3+8*d]: unknown 1216+32*a+384*a^2+2048*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [42]
[1+8*a,2+8*b,4+8*c,3+8*d]: unknown 192+32*a+384*a^2+2048*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [43]
[1+8*a,6+8*b,4+8*c,3+8*d]: unknown 1472+32*a+384*a^2+2048*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [44]
[5+8*a,2+8*b,0+8*c,7+8*d]: unknown -1760+4000*a+9600*a^2+10240*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [45]
[5+8*a,6+8*b,0+8*c,7+8*d]: unknown -480+4000*a+9600*a^2+10240*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [46]
[5+8*a,2+8*b,4+8*c,7+8*d]: unknown -1504+4000*a+9600*a^2+10240*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [47]
[5+8*a,6+8*b,4+8*c,7+8*d]: unknown -224+4000*a+9600*a^2+10240*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [48]
expanding queue[9]^1: 16 + 432*a + 864*a^2 + 768*a^3 + 256*a^4 + 128*b + 384*b^2 + 512*b^3 + 256*b^4 + 256*c^4 - 432*d - 864*d^2 - 768*d^3 - 256*d^4 = 0 meter=[2,2,2,2] *8
[7+8*a,2+8*b,0+8*c,3+8*d]: unknown 2336+10976*a+18816*a^2+14336*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [49]
[7+8*a,6+8*b,0+8*c,3+8*d]: unknown 3616+10976*a+18816*a^2+14336*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [50]
[7+8*a,2+8*b,4+8*c,3+8*d]: unknown 2592+10976*a+18816*a^2+14336*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [51]
[7+8*a,6+8*b,4+8*c,3+8*d]: unknown 3872+10976*a+18816*a^2+14336*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [52]
[3+8*a,2+8*b,0+8*c,7+8*d]: unknown -2304+864*a+3456*a^2+6144*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [53]
[3+8*a,6+8*b,0+8*c,7+8*d]: unknown -1024+864*a+3456*a^2+6144*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [54]
[3+8*a,2+8*b,4+8*c,7+8*d]: unknown -2048+864*a+3456*a^2+6144*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [55]
[3+8*a,6+8*b,4+8*c,7+8*d]: unknown -768+864*a+3456*a^2+6144*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+2048*c+6144*c^2+8192*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [56]
expanding queue[10]^1:  - 48 + 16*a + 96*a^2 + 256*a^3 + 256*a^4 + 128*b + 384*b^2 + 512*b^3 + 256*b^4 + 128*c + 384*c^2 + 512*c^3 + 256*c^4 - 432*d - 864*d^2 - 768*d^3 - 256*d^4 = 0 meter=[2,2,2,2] *8
[5+8*a,2+8*b,2+8*c,3+8*d]: unknown 576+4000*a+9600*a^2+10240*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [57]
[5+8*a,6+8*b,2+8*c,3+8*d]: unknown 1856+4000*a+9600*a^2+10240*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [58]
[5+8*a,2+8*b,6+8*c,3+8*d]: transposition of [58] {0/2+8*c,0/5+8*a,0/6+8*b,3/3+8*d} by 2+8*c|2+8*b 6+8*b|6+8*c
[5+8*a,6+8*b,6+8*c,3+8*d]: unknown 3136+4000*a+9600*a^2+10240*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0 -> [59]
[1+8*a,2+8*b,2+8*c,7+8*d]: unknown -2368+32*a+384*a^2+2048*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [60]
[1+8*a,6+8*b,2+8*c,7+8*d]: unknown -1088+32*a+384*a^2+2048*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [61]
[1+8*a,2+8*b,6+8*c,7+8*d]: transposition of [61] {0/1+8*a,0/2+8*c,0/6+8*b,3/7+8*d} by 2+8*c|2+8*b 6+8*b|6+8*c
[1+8*a,6+8*b,6+8*c,7+8*d]: unknown 192+32*a+384*a^2+2048*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [62]
expanding queue[11]^1: 32 + 432*a + 864*a^2 + 768*a^3 + 256*a^4 + 128*b + 384*b^2 + 512*b^3 + 256*b^4 + 128*c + 384*c^2 + 512*c^3 + 256*c^4 - 432*d - 864*d^2 - 768*d^3 - 256*d^4 = 0 meter=[2,2,2,2] *8
[3+8*a,2+8*b,2+8*c,3+8*d]: grown from [11]*1,2,4,8,16,2,4,8,16,2,4,8,16,2,4,8,16 32+864*a+3456*a^2+6144*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0
[3+8*a,6+8*b,2+8*c,3+8*d]: grown from [11]*41,2,4,8,16,54,36,24,16,2,4,8,16,2,4,8,16 1312+864*a+3456*a^2+6144*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0
[3+8*a,2+8*b,6+8*c,3+8*d]: grown from [11]*41,2,4,8,16,2,4,8,16,54,36,24,16,2,4,8,16 1312+864*a+3456*a^2+6144*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0
[3+8*a,6+8*b,6+8*c,3+8*d]: grown from [11]*81,2,4,8,16,54,36,24,16,54,36,24,16,2,4,8,16 2592+864*a+3456*a^2+6144*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-864*d-3456*d^2-6144*d^3-4096*d^4=0
[7+8*a,2+8*b,2+8*c,7+8*d]: unknown 32+10976*a+18816*a^2+14336*a^3+4096*a^4+256*b+1536*b^2+4096*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [63]
[7+8*a,6+8*b,2+8*c,7+8*d]: unknown 1312+10976*a+18816*a^2+14336*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+256*c+1536*c^2+4096*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [64]
[7+8*a,2+8*b,6+8*c,7+8*d]: transposition of [64] {0/2+8*c,0/6+8*b,0/7+8*a,3/7+8*d} by 2+8*c|2+8*b 6+8*b|6+8*c
[7+8*a,6+8*b,6+8*c,7+8*d]: unknown 2592+10976*a+18816*a^2+14336*a^3+4096*a^4+6912*b+13824*b^2+12288*b^3+4096*b^4+6912*c+13824*c^2+12288*c^3+4096*c^4-10976*d-18816*d^2-14336*d^3-4096*d^4=0 -> [65]
Maximum level 2 reached, queue size = 66
