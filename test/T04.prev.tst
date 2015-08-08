Expanding for base=2, transposables={{x},{y},{z}}, reasons+features=base,transpose,similiar
----------------
expanding queue[0]^-1: x^4 - y^4 - z^2 = 0 meter=[2,2,2] *2
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+2*z]: unknown 16*x^4-16*y^4-4*z^2=0 -> [1]
[1+2*x,1+2*y,0+2*z]: unknown 8*x+24*x^2+32*x^3+16*x^4-8*y-24*y^2-32*y^3-16*y^4-4*z^2=0 -> [2]
[1+2*x,0+2*y,1+2*z]: unknown 8*x+24*x^2+32*x^3+16*x^4-16*y^4-4*z-4*z^2=0 -> [3]
----------------
expanding queue[1]^0: 16*x^4 - 16*y^4 - 4*z^2 = 0 meter=[1,1,2] *4
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+4*z]: similiar to [0], same  16*x^4-16*y^4-16*z^2=0
expanding queue[2]^0: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 8*y - 24*y^2 - 32*y^3 - 16*y^4 - 4*z^2 = 0 meter=[1,1,2] *4
solution [1,1,0],trivial(3)
[1+2*x,1+2*y,0+4*z]: unknown 8*x+24*x^2+32*x^3+16*x^4-8*y-24*y^2-32*y^3-16*y^4-16*z^2=0 -> [4]
expanding queue[3]^0: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 16*y^4 - 4*z - 4*z^2 = 0 meter=[1,1,2] *4
solution [1,0,1],trivial(3)
[1+2*x,0+2*y,1+4*z]: unknown 8*x+24*x^2+32*x^3+16*x^4-16*y^4-8*z-16*z^2=0 -> [5]
[1+2*x,0+2*y,3+4*z]: unknown -8+8*x+24*x^2+32*x^3+16*x^4-16*y^4-24*z-16*z^2=0 -> [6]
----------------
expanding queue[4]^2: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 8*y - 24*y^2 - 32*y^3 - 16*y^4 - 16*z^2 = 0 meter=[2,2,1] *8
solution [1,1,0],trivial(3)
[1+4*x,1+4*y,0+4*z]: unknown 16*x+96*x^2+256*x^3+256*x^4-16*y-96*y^2-256*y^3-256*y^4-16*z^2=0 -> [7]
[3+4*x,1+4*y,0+4*z]: unknown 80+432*x+864*x^2+768*x^3+256*x^4-16*y-96*y^2-256*y^3-256*y^4-16*z^2=0 -> [8]
[1+4*x,3+4*y,0+4*z]: unknown -80+16*x+96*x^2+256*x^3+256*x^4-432*y-864*y^2-768*y^3-256*y^4-16*z^2=0 -> [9]
[3+4*x,3+4*y,0+4*z]: unknown 432*x+864*x^2+768*x^3+256*x^4-432*y-864*y^2-768*y^3-256*y^4-16*z^2=0 -> [10]
expanding queue[5]^3: 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 16*y^4 - 8*z - 16*z^2 = 0 meter=[2,1,2] *8
solution [1,0,1],trivial(3)
[1+4*x,0+2*y,1+8*z]: unknown 16*x+96*x^2+256*x^3+256*x^4-16*y^4-16*z-64*z^2=0 -> [11]
[3+4*x,0+2*y,1+8*z]: unknown 80+432*x+864*x^2+768*x^3+256*x^4-16*y^4-16*z-64*z^2=0 -> [12]
expanding queue[6]^3:  - 8 + 8*x + 24*x^2 + 32*x^3 + 16*x^4 - 16*y^4 - 24*z - 16*z^2 = 0 meter=[2,1,2] *8
[1+4*x,0+2*y,7+8*z]: unknown -48+16*x+96*x^2+256*x^3+256*x^4-16*y^4-112*z-64*z^2=0 -> [13]
[3+4*x,0+2*y,7+8*z]: unknown 32+432*x+864*x^2+768*x^3+256*x^4-16*y^4-112*z-64*z^2=0 -> [14]
----------------
expanding queue[7]^4: 16*x + 96*x^2 + 256*x^3 + 256*x^4 - 16*y - 96*y^2 - 256*y^3 - 256*y^4 - 16*z^2 = 0 meter=[2,2,2] *16
solution [1,1,0],trivial(3)
[1+8*x,1+8*y,0+8*z]: unknown 32*x+384*x^2+2048*x^3+4096*x^4-32*y-384*y^2-2048*y^3-4096*y^4-64*z^2=0 -> [15]
[5+8*x,5+8*y,0+8*z]: unknown 4000*x+9600*x^2+10240*x^3+4096*x^4-4000*y-9600*y^2-10240*y^3-4096*y^4-64*z^2=0 -> [16]
[5+8*x,1+8*y,4+8*z]: unknown 608+4000*x+9600*x^2+10240*x^3+4096*x^4-32*y-384*y^2-2048*y^3-4096*y^4-64*z-64*z^2=0 -> [17]
[1+8*x,5+8*y,4+8*z]: unknown -640+32*x+384*x^2+2048*x^3+4096*x^4-4000*y-9600*y^2-10240*y^3-4096*y^4-64*z-64*z^2=0 -> [18]
expanding queue[8]^4: 80 + 432*x + 864*x^2 + 768*x^3 + 256*x^4 - 16*y - 96*y^2 - 256*y^3 - 256*y^4 - 16*z^2 = 0 meter=[2,2,2] *16
[7+8*x,1+8*y,0+8*z]: unknown 2400+10976*x+18816*x^2+14336*x^3+4096*x^4-32*y-384*y^2-2048*y^3-4096*y^4-64*z^2=0 -> [19]
[3+8*x,5+8*y,0+8*z]: unknown -544+864*x+3456*x^2+6144*x^3+4096*x^4-4000*y-9600*y^2-10240*y^3-4096*y^4-64*z^2=0 -> [20]
[3+8*x,1+8*y,4+8*z]: unknown 64+864*x+3456*x^2+6144*x^3+4096*x^4-32*y-384*y^2-2048*y^3-4096*y^4-64*z-64*z^2=0 -> [21]
[7+8*x,5+8*y,4+8*z]: unknown 1760+10976*x+18816*x^2+14336*x^3+4096*x^4-4000*y-9600*y^2-10240*y^3-4096*y^4-64*z-64*z^2=0 -> [22]
expanding queue[9]^4:  - 80 + 16*x + 96*x^2 + 256*x^3 + 256*x^4 - 432*y - 864*y^2 - 768*y^3 - 256*y^4 - 16*z^2 = 0 meter=[2,2,2] *16
[5+8*x,3+8*y,0+8*z]: unknown 544+4000*x+9600*x^2+10240*x^3+4096*x^4-864*y-3456*y^2-6144*y^3-4096*y^4-64*z^2=0 -> [23]
[1+8*x,7+8*y,0+8*z]: unknown -2400+32*x+384*x^2+2048*x^3+4096*x^4-10976*y-18816*y^2-14336*y^3-4096*y^4-64*z^2=0 -> [24]
[1+8*x,3+8*y,4+8*z]: unknown -96+32*x+384*x^2+2048*x^3+4096*x^4-864*y-3456*y^2-6144*y^3-4096*y^4-64*z-64*z^2=0 -> [25]
[5+8*x,7+8*y,4+8*z]: unknown -1792+4000*x+9600*x^2+10240*x^3+4096*x^4-10976*y-18816*y^2-14336*y^3-4096*y^4-64*z-64*z^2=0 -> [26]
expanding queue[10]^4: 432*x + 864*x^2 + 768*x^3 + 256*x^4 - 432*y - 864*y^2 - 768*y^3 - 256*y^4 - 16*z^2 = 0 meter=[2,2,2] *16
solution [3,3,0],trivial(3)
[3+8*x,3+8*y,0+8*z]: unknown 864*x+3456*x^2+6144*x^3+4096*x^4-864*y-3456*y^2-6144*y^3-4096*y^4-64*z^2=0 -> [27]
[7+8*x,7+8*y,0+8*z]: unknown 10976*x+18816*x^2+14336*x^3+4096*x^4-10976*y-18816*y^2-14336*y^3-4096*y^4-64*z^2=0 -> [28]
[7+8*x,3+8*y,4+8*z]: unknown 2304+10976*x+18816*x^2+14336*x^3+4096*x^4-864*y-3456*y^2-6144*y^3-4096*y^4-64*z-64*z^2=0 -> [29]
[3+8*x,7+8*y,4+8*z]: unknown -2336+864*x+3456*x^2+6144*x^3+4096*x^4-10976*y-18816*y^2-14336*y^3-4096*y^4-64*z-64*z^2=0 -> [30]
expanding queue[11]^5: 16*x + 96*x^2 + 256*x^3 + 256*x^4 - 16*y^4 - 16*z - 64*z^2 = 0 meter=[2,2,2] *16
solution [1,0,1],trivial(3)
[1+8*x,0+4*y,1+16*z]: unknown 32*x+384*x^2+2048*x^3+4096*x^4-256*y^4-32*z-256*z^2=0 -> [31]
[5+8*x,2+4*y,1+16*z]: unknown 608+4000*x+9600*x^2+10240*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-32*z-256*z^2=0 -> [32]
[5+8*x,0+4*y,9+16*z]: unknown 544+4000*x+9600*x^2+10240*x^3+4096*x^4-256*y^4-288*z-256*z^2=0 -> [33]
[1+8*x,2+4*y,9+16*z]: unknown -96+32*x+384*x^2+2048*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-288*z-256*z^2=0 -> [34]
expanding queue[12]^5: 80 + 432*x + 864*x^2 + 768*x^3 + 256*x^4 - 16*y^4 - 16*z - 64*z^2 = 0 meter=[2,2,2] *16
[7+8*x,0+4*y,1+16*z]: unknown 2400+10976*x+18816*x^2+14336*x^3+4096*x^4-256*y^4-32*z-256*z^2=0 -> [35]
[3+8*x,2+4*y,1+16*z]: unknown 64+864*x+3456*x^2+6144*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-32*z-256*z^2=0 -> [36]
[3+8*x,0+4*y,9+16*z]: unknown 864*x+3456*x^2+6144*x^3+4096*x^4-256*y^4-288*z-256*z^2=0 -> [37]
[7+8*x,2+4*y,9+16*z]: unknown 2304+10976*x+18816*x^2+14336*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-288*z-256*z^2=0 -> [38]
expanding queue[13]^6:  - 48 + 16*x + 96*x^2 + 256*x^3 + 256*x^4 - 16*y^4 - 112*z - 64*z^2 = 0 meter=[2,2,2] *16
[5+8*x,0+4*y,7+16*z]: unknown 576+4000*x+9600*x^2+10240*x^3+4096*x^4-256*y^4-224*z-256*z^2=0 -> [39]
[1+8*x,2+4*y,7+16*z]: unknown -64+32*x+384*x^2+2048*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-224*z-256*z^2=0 -> [40]
[1+8*x,0+4*y,15+16*z]: unknown -224+32*x+384*x^2+2048*x^3+4096*x^4-256*y^4-480*z-256*z^2=0 -> [41]
[5+8*x,2+4*y,15+16*z]: unknown 384+4000*x+9600*x^2+10240*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-480*z-256*z^2=0 -> [42]
expanding queue[14]^6: 32 + 432*x + 864*x^2 + 768*x^3 + 256*x^4 - 16*y^4 - 112*z - 64*z^2 = 0 meter=[2,2,2] *16
[3+8*x,0+4*y,7+16*z]: unknown 32+864*x+3456*x^2+6144*x^3+4096*x^4-256*y^4-224*z-256*z^2=0 -> [43]
[7+8*x,2+4*y,7+16*z]: unknown 2336+10976*x+18816*x^2+14336*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-224*z-256*z^2=0 -> [44]
[7+8*x,0+4*y,15+16*z]: unknown 2176+10976*x+18816*x^2+14336*x^3+4096*x^4-256*y^4-480*z-256*z^2=0 -> [45]
[3+8*x,2+4*y,15+16*z]: unknown -160+864*x+3456*x^2+6144*x^3+4096*x^4-128*y-384*y^2-512*y^3-256*y^4-480*z-256*z^2=0 -> [46]
Maximum level 3 reached, queue size = 47
