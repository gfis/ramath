Expanding for base=2, transposables={{x},{y}}, reasons+features=base,transpose,same,dogrow norm,invall

expanding queue[0]^-1: 4 + x^2 - y^3 = 0 meter=[2,2] *2
[0+2*x,0+2*y]: success [2,2],trivial(2)  1+x^2-2*y^3=0 -> [1]
[1+2*x,0+2*y]: failure constant=5, vgcd=4
[0+2*x,1+2*y]: failure constant=3, vgcd=2
[1+2*x,1+2*y]: unknown 2+2*x+2*x^2-3*y-6*y^2-4*y^3=0 -> [2]

expanding queue[1]^0: 1 + x^2 - 2*y^3 = 0 meter=[2,2] *4
[0+4*x,0+4*y]: failure constant=1, vgcd=4
[2+4*x,0+4*y]: failure constant=1, vgcd=2
[0+4*x,2+4*y]: failure constant=-1, vgcd=4
[2+4*x,2+4*y]: success [2,2],trivial(2)  x+x^2-3*y-6*y^2-4*y^3=0 -> [3]

expanding queue[2]^0: 2 + 2*x + 2*x^2 - 3*y - 6*y^2 - 4*y^3 = 0 meter=[2,2] *4
[1+4*x,1+4*y]: unknown 1+2*x+4*x^2-3*y-12*y^2-16*y^3=0 -> [4]
[3+4*x,1+4*y]: unknown 3+6*x+4*x^2-3*y-12*y^2-16*y^3=0 -> [5]
[1+4*x,3+4*y]: failure constant=-11, vgcd=2
[3+4*x,3+4*y]: failure constant=-7, vgcd=2

expanding queue[3]^1: x + x^2 - 3*y - 6*y^2 - 4*y^3 = 0 meter=[2,2] *8
[2+8*x,2+8*y]: success [2,2],trivial(2) , grown from [3]*1,2,1,2,4 x+2*x^2-3*y-12*y^2-16*y^3=0 -> [6]
[6+8*x,2+8*y]: unknown 1+3*x+2*x^2-3*y-12*y^2-16*y^3=0 -> [7]
[2+8*x,6+8*y]: failure constant=-13, vgcd=2
[6+8*x,6+8*y]: failure constant=-11, vgcd=2

expanding queue[4]^2: 1 + 2*x + 4*x^2 - 3*y - 12*y^2 - 16*y^3 = 0 meter=[2,2] *8
[1+8*x,1+8*y]: failure constant=1, vgcd=2
[5+8*x,1+8*y]: failure constant=7, vgcd=2
[1+8*x,5+8*y]: unknown -15+2*x+8*x^2-75*y-120*y^2-64*y^3=0 -> [8]
[5+8*x,5+8*y]: unknown -12+10*x+8*x^2-75*y-120*y^2-64*y^3=0 -> [9]

expanding queue[5]^2: 3 + 6*x + 4*x^2 - 3*y - 12*y^2 - 16*y^3 = 0 meter=[2,2] *8
[3+8*x,1+8*y]: failure constant=3, vgcd=2
[7+8*x,1+8*y]: failure constant=13, vgcd=2
[3+8*x,5+8*y]: success [11,5],NONTRIVIAL  -14+6*x+8*x^2-75*y-120*y^2-64*y^3=0 -> [10]
[7+8*x,5+8*y]: unknown -9+14*x+8*x^2-75*y-120*y^2-64*y^3=0 -> [11]

expanding queue[6]^3: x + 2*x^2 - 3*y - 12*y^2 - 16*y^3 = 0 meter=[2,2] *16
[2+16*x,2+16*y]: success [2,2],trivial(2) , grown from [6]*1,2,1,2,4, grown from [3]*1,4,1,4,16 x+4*x^2-3*y-24*y^2-64*y^3=0 -> [12]
[10+16*x,2+16*y]: failure constant=3, vgcd=2
[2+16*x,10+16*y]: failure constant=-31, vgcd=2
[10+16*x,10+16*y]: unknown -14+5*x+4*x^2-75*y-120*y^2-64*y^3=0 -> [13]

expanding queue[7]^3: 1 + 3*x + 2*x^2 - 3*y - 12*y^2 - 16*y^3 = 0 meter=[2,2] *16
[6+16*x,2+16*y]: failure constant=1, vgcd=2
[14+16*x,2+16*y]: unknown 3+7*x+4*x^2-3*y-24*y^2-64*y^3=0 -> [14]
[6+16*x,10+16*y]: unknown -15+3*x+4*x^2-75*y-120*y^2-64*y^3=0 -> [15]
[14+16*x,10+16*y]: failure constant=-25, vgcd=2

expanding queue[8]^4:  - 15 + 2*x + 8*x^2 - 75*y - 120*y^2 - 64*y^3 = 0 meter=[2,2] *16
[1+16*x,5+16*y]: failure constant=-15, vgcd=2
[9+16*x,5+16*y]: failure constant=-5, vgcd=2
[1+16*x,13+16*y]: unknown -137+2*x+16*x^2-507*y-624*y^2-256*y^3=0 -> [16]
[9+16*x,13+16*y]: unknown -132+18*x+16*x^2-507*y-624*y^2-256*y^3=0 -> [17]

expanding queue[9]^4:  - 12 + 10*x + 8*x^2 - 75*y - 120*y^2 - 64*y^3 = 0 meter=[2,2] *16
[5+16*x,5+16*y]: unknown -6+10*x+16*x^2-75*y-240*y^2-256*y^3=0 -> [18]
[13+16*x,5+16*y]: unknown, grown from [4]*3,13,4,25,20,16 3+26*x+16*x^2-75*y-240*y^2-256*y^3=0 -> [19]
[5+16*x,13+16*y]: failure constant=-271, vgcd=2
[13+16*x,13+16*y]: failure constant=-253, vgcd=2

expanding queue[10]^5:  - 14 + 6*x + 8*x^2 - 75*y - 120*y^2 - 64*y^3 = 0 meter=[2,2] *16
[3+16*x,5+16*y]: unknown -7+6*x+16*x^2-75*y-240*y^2-256*y^3=0 -> [20]
[11+16*x,5+16*y]: success [11,5],NONTRIVIAL  22*x+16*x^2-75*y-240*y^2-256*y^3=0 -> [21]
[3+16*x,13+16*y]: failure constant=-273, vgcd=2
[11+16*x,13+16*y]: failure constant=-259, vgcd=2

expanding queue[11]^5:  - 9 + 14*x + 8*x^2 - 75*y - 120*y^2 - 64*y^3 = 0 meter=[2,2] *16
[7+16*x,5+16*y]: failure constant=-9, vgcd=2
[15+16*x,5+16*y]: failure constant=13, vgcd=2
[7+16*x,13+16*y]: unknown -134+14*x+16*x^2-507*y-624*y^2-256*y^3=0 -> [22]
[15+16*x,13+16*y]: unknown -123+30*x+16*x^2-507*y-624*y^2-256*y^3=0 -> [23]

expanding queue[12]^6: x + 4*x^2 - 3*y - 24*y^2 - 64*y^3 = 0 meter=[2,2] *32
[2+32*x,2+32*y]: success [2,2],trivial(2) , grown from [12]*1,2,1,2,4, grown from [6]*1,4,1,4,16, grown from [3]*1,8,1,8,64 x+8*x^2-3*y-48*y^2-256*y^3=0 -> [24]
[18+32*x,2+32*y]: failure constant=5, vgcd=2
[2+32*x,18+32*y]: failure constant=-91, vgcd=2
[18+32*x,18+32*y]: unknown -43+9*x+8*x^2-243*y-432*y^2-256*y^3=0 -> [25]

expanding queue[13]^6:  - 14 + 5*x + 4*x^2 - 75*y - 120*y^2 - 64*y^3 = 0 meter=[2,2] *32
[10+32*x,10+32*y]: unknown -7+5*x+8*x^2-75*y-240*y^2-256*y^3=0 -> [26]
[26+32*x,10+32*y]: failure constant=-5, vgcd=2
[10+32*x,26+32*y]: failure constant=-273, vgcd=2
[26+32*x,26+32*y]: unknown -132+13*x+8*x^2-507*y-624*y^2-256*y^3=0 -> [27]

expanding queue[14]^7: 3 + 7*x + 4*x^2 - 3*y - 24*y^2 - 64*y^3 = 0 meter=[2,2] *32
[14+32*x,2+32*y]: failure constant=3, vgcd=2
[30+32*x,2+32*y]: unknown, grown from [7]*7,5,4,1,4,16 7+15*x+8*x^2-3*y-48*y^2-256*y^3=0 -> [28]
[14+32*x,18+32*y]: unknown -44+7*x+8*x^2-243*y-432*y^2-256*y^3=0 -> [29]
[30+32*x,18+32*y]: failure constant=-77, vgcd=2

expanding queue[15]^7:  - 15 + 3*x + 4*x^2 - 75*y - 120*y^2 - 64*y^3 = 0 meter=[2,2] *32
[6+32*x,10+32*y]: failure constant=-15, vgcd=2
[22+32*x,10+32*y]: unknown -4+11*x+8*x^2-75*y-240*y^2-256*y^3=0 -> [30]
[6+32*x,26+32*y]: unknown -137+3*x+8*x^2-507*y-624*y^2-256*y^3=0 -> [31]
[22+32*x,26+32*y]: failure constant=-267, vgcd=2

expanding queue[16]^8:  - 137 + 2*x + 16*x^2 - 507*y - 624*y^2 - 256*y^3 = 0 meter=[2,2] *32
[1+32*x,13+32*y]: failure constant=-137, vgcd=2
[17+32*x,13+32*y]: failure constant=-119, vgcd=2
[1+32*x,29+32*y]: unknown -762+2*x+32*x^2-2523*y-2784*y^2-1024*y^3=0 -> [32]
[17+32*x,29+32*y]: unknown -753+34*x+32*x^2-2523*y-2784*y^2-1024*y^3=0 -> [33]

expanding queue[17]^8:  - 132 + 18*x + 16*x^2 - 507*y - 624*y^2 - 256*y^3 = 0 meter=[2,2] *32
[9+32*x,13+32*y]: unknown -66+18*x+32*x^2-507*y-1248*y^2-1024*y^3=0 -> [34]
[25+32*x,13+32*y]: unknown -49+50*x+32*x^2-507*y-1248*y^2-1024*y^3=0 -> [35]
[9+32*x,29+32*y]: failure constant=-1519, vgcd=2
[25+32*x,29+32*y]: failure constant=-1485, vgcd=2

expanding queue[18]^9:  - 6 + 10*x + 16*x^2 - 75*y - 240*y^2 - 256*y^3 = 0 meter=[2,2] *32
[5+32*x,5+32*y]: unknown -3+10*x+32*x^2-75*y-480*y^2-1024*y^3=0 -> [36]
[21+32*x,5+32*y]: unknown, grown from [4]*10,21,8,25,40,64, grown from [2]*5,21,16,25,80,256 10+42*x+32*x^2-75*y-480*y^2-1024*y^3=0 -> [37]
[5+32*x,21+32*y]: failure constant=-577, vgcd=2
[21+32*x,21+32*y]: failure constant=-551, vgcd=2

expanding queue[19]^9: 3 + 26*x + 16*x^2 - 75*y - 240*y^2 - 256*y^3 = 0 meter=[2,2] *32
[13+32*x,5+32*y]: failure constant=3, vgcd=2
[29+32*x,5+32*y]: failure constant=45, vgcd=2
[13+32*x,21+32*y]: unknown -284+26*x+32*x^2-1323*y-2016*y^2-1024*y^3=0 -> [38]
[29+32*x,21+32*y]: unknown -263+58*x+32*x^2-1323*y-2016*y^2-1024*y^3=0 -> [39]

expanding queue[20]^10:  - 7 + 6*x + 16*x^2 - 75*y - 240*y^2 - 256*y^3 = 0 meter=[2,2] *32
[3+32*x,5+32*y]: failure constant=-7, vgcd=2
[19+32*x,5+32*y]: failure constant=15, vgcd=2
[3+32*x,21+32*y]: unknown -289+6*x+32*x^2-1323*y-2016*y^2-1024*y^3=0 -> [40]
[19+32*x,21+32*y]: unknown -278+38*x+32*x^2-1323*y-2016*y^2-1024*y^3=0 -> [41]

expanding queue[21]^10: 22*x + 16*x^2 - 75*y - 240*y^2 - 256*y^3 = 0 meter=[2,2] *32
[11+32*x,5+32*y]: success [11,5],NONTRIVIAL , grown from [21]*1,2,1,2,4 22*x+32*x^2-75*y-480*y^2-1024*y^3=0 -> [42]
[27+32*x,5+32*y]: unknown 19+54*x+32*x^2-75*y-480*y^2-1024*y^3=0 -> [43]
[11+32*x,21+32*y]: failure constant=-571, vgcd=2
[27+32*x,21+32*y]: failure constant=-533, vgcd=2

expanding queue[22]^11:  - 134 + 14*x + 16*x^2 - 507*y - 624*y^2 - 256*y^3 = 0 meter=[2,2] *32
[7+32*x,13+32*y]: unknown -67+14*x+32*x^2-507*y-1248*y^2-1024*y^3=0 -> [44]
[23+32*x,13+32*y]: unknown -52+46*x+32*x^2-507*y-1248*y^2-1024*y^3=0 -> [45]
[7+32*x,29+32*y]: failure constant=-1521, vgcd=2
[23+32*x,29+32*y]: failure constant=-1491, vgcd=2

expanding queue[23]^11:  - 123 + 30*x + 16*x^2 - 507*y - 624*y^2 - 256*y^3 = 0 meter=[2,2] *32
[15+32*x,13+32*y]: failure constant=-123, vgcd=2
[31+32*x,13+32*y]: failure constant=-77, vgcd=2
[15+32*x,29+32*y]: unknown -755+30*x+32*x^2-2523*y-2784*y^2-1024*y^3=0 -> [46]
[31+32*x,29+32*y]: unknown -732+62*x+32*x^2-2523*y-2784*y^2-1024*y^3=0 -> [47]
Maximum level 4 reached, queue size = 48
