Expanding for base=2, transposables={{x},{y}}, reasons+features=base,transpose,same,dogrow norm,invall

expanding queue[0]^-1: 2 + x^2 - y^3 = 0 meter=[2,2] *2
[0+2*x,0+2*y]: failure constant=1, vgcd=2
[1+2*x,0+2*y]: failure constant=3, vgcd=4
[0+2*x,1+2*y]: failure constant=1, vgcd=2
[1+2*x,1+2*y]: unknown 1+2*x+2*x^2-3*y-6*y^2-4*y^3=0 -> [1]

expanding queue[1]^0: 1 + 2*x + 2*x^2 - 3*y - 6*y^2 - 4*y^3 = 0 meter=[2,2] *4
[1+4*x,1+4*y]: failure constant=1, vgcd=2
[3+4*x,1+4*y]: failure constant=5, vgcd=2
[1+4*x,3+4*y]: success [5,3],NONTRIVIAL  -6+2*x+4*x^2-27*y-36*y^2-16*y^3=0 -> [2]
[3+4*x,3+4*y]: unknown -4+6*x+4*x^2-27*y-36*y^2-16*y^3=0 -> [3]

expanding queue[2]^1:  - 6 + 2*x + 4*x^2 - 27*y - 36*y^2 - 16*y^3 = 0 meter=[2,2] *8
[1+8*x,3+8*y]: unknown -3+2*x+8*x^2-27*y-72*y^2-64*y^3=0 -> [4]
[5+8*x,3+8*y]: success [5,3],NONTRIVIAL  10*x+8*x^2-27*y-72*y^2-64*y^3=0 -> [5]
[1+8*x,7+8*y]: failure constant=-85, vgcd=2
[5+8*x,7+8*y]: failure constant=-79, vgcd=2

expanding queue[3]^1:  - 4 + 6*x + 4*x^2 - 27*y - 36*y^2 - 16*y^3 = 0 meter=[2,2] *8
[3+8*x,3+8*y]: unknown -2+6*x+8*x^2-27*y-72*y^2-64*y^3=0 -> [6]
[7+8*x,3+8*y]: unknown, grown from [1]*3,7,4,9,12,16 3+14*x+8*x^2-27*y-72*y^2-64*y^3=0 -> [7]
[3+8*x,7+8*y]: failure constant=-83, vgcd=2
[7+8*x,7+8*y]: failure constant=-73, vgcd=2

expanding queue[4]^2:  - 3 + 2*x + 8*x^2 - 27*y - 72*y^2 - 64*y^3 = 0 meter=[2,2] *16
[1+16*x,3+16*y]: failure constant=-3, vgcd=2
[9+16*x,3+16*y]: failure constant=7, vgcd=2
[1+16*x,11+16*y]: unknown -83+2*x+16*x^2-363*y-528*y^2-256*y^3=0 -> [8]
[9+16*x,11+16*y]: unknown -78+18*x+16*x^2-363*y-528*y^2-256*y^3=0 -> [9]

expanding queue[5]^2: 10*x + 8*x^2 - 27*y - 72*y^2 - 64*y^3 = 0 meter=[2,2] *16
[5+16*x,3+16*y]: success [5,3],NONTRIVIAL , grown from [5]*1,2,1,2,4 10*x+16*x^2-27*y-144*y^2-256*y^3=0 -> [10]
[13+16*x,3+16*y]: unknown, grown from [1]*9,13,8,9,24,64 9+26*x+16*x^2-27*y-144*y^2-256*y^3=0 -> [11]
[5+16*x,11+16*y]: failure constant=-163, vgcd=2
[13+16*x,11+16*y]: failure constant=-145, vgcd=2

expanding queue[6]^3:  - 2 + 6*x + 8*x^2 - 27*y - 72*y^2 - 64*y^3 = 0 meter=[2,2] *16
[3+16*x,3+16*y]: unknown -1+6*x+16*x^2-27*y-144*y^2-256*y^3=0 -> [12]
[11+16*x,3+16*y]: unknown, grown from [1]*6,11,8,9,24,64 6+22*x+16*x^2-27*y-144*y^2-256*y^3=0 -> [13]
[3+16*x,11+16*y]: failure constant=-165, vgcd=2
[11+16*x,11+16*y]: failure constant=-151, vgcd=2

expanding queue[7]^3: 3 + 14*x + 8*x^2 - 27*y - 72*y^2 - 64*y^3 = 0 meter=[2,2] *16
[7+16*x,3+16*y]: failure constant=3, vgcd=2
[15+16*x,3+16*y]: failure constant=25, vgcd=2
[7+16*x,11+16*y]: unknown -80+14*x+16*x^2-363*y-528*y^2-256*y^3=0 -> [14]
[15+16*x,11+16*y]: unknown -69+30*x+16*x^2-363*y-528*y^2-256*y^3=0 -> [15]

expanding queue[8]^4:  - 83 + 2*x + 16*x^2 - 363*y - 528*y^2 - 256*y^3 = 0 meter=[2,2] *32
[1+32*x,11+32*y]: failure constant=-83, vgcd=2
[17+32*x,11+32*y]: failure constant=-65, vgcd=2
[1+32*x,27+32*y]: unknown, grown from [4]*205,1,4,81,36,16 -615+2*x+32*x^2-2187*y-2592*y^2-1024*y^3=0 -> [16]
[17+32*x,27+32*y]: unknown, grown from [4]*202,17,4,81,36,16, grown from [2]*101,17,8,81,72,64 -606+34*x+32*x^2-2187*y-2592*y^2-1024*y^3=0 -> [17]

expanding queue[9]^4:  - 78 + 18*x + 16*x^2 - 363*y - 528*y^2 - 256*y^3 = 0 meter=[2,2] *32
[9+32*x,11+32*y]: unknown -39+18*x+32*x^2-363*y-1056*y^2-1024*y^3=0 -> [18]
[25+32*x,11+32*y]: unknown -22+50*x+32*x^2-363*y-1056*y^2-1024*y^3=0 -> [19]
[9+32*x,27+32*y]: failure constant=-1225, vgcd=2
[25+32*x,27+32*y]: failure constant=-1191, vgcd=2

expanding queue[10]^5: 10*x + 16*x^2 - 27*y - 144*y^2 - 256*y^3 = 0 meter=[2,2] *32
[5+32*x,3+32*y]: success [5,3],NONTRIVIAL , grown from [10]*1,2,1,2,4, grown from [5]*1,4,1,4,16 10*x+32*x^2-27*y-288*y^2-1024*y^3=0 -> [20]
[21+32*x,3+32*y]: unknown, grown from [1]*13,21,16,9,48,256 13+42*x+32*x^2-27*y-288*y^2-1024*y^3=0 -> [21]
[5+32*x,19+32*y]: failure constant=-427, vgcd=2
[21+32*x,19+32*y]: failure constant=-401, vgcd=2

expanding queue[11]^5: 9 + 26*x + 16*x^2 - 27*y - 144*y^2 - 256*y^3 = 0 meter=[2,2] *32
[13+32*x,3+32*y]: failure constant=9, vgcd=2
[29+32*x,3+32*y]: failure constant=51, vgcd=2
[13+32*x,19+32*y]: unknown -209+26*x+32*x^2-1083*y-1824*y^2-1024*y^3=0 -> [22]
[29+32*x,19+32*y]: unknown -188+58*x+32*x^2-1083*y-1824*y^2-1024*y^3=0 -> [23]

expanding queue[12]^6:  - 1 + 6*x + 16*x^2 - 27*y - 144*y^2 - 256*y^3 = 0 meter=[2,2] *32
[3+32*x,3+32*y]: failure constant=-1, vgcd=2
[19+32*x,3+32*y]: failure constant=21, vgcd=2
[3+32*x,19+32*y]: unknown -214+6*x+32*x^2-1083*y-1824*y^2-1024*y^3=0 -> [24]
[19+32*x,19+32*y]: unknown -203+38*x+32*x^2-1083*y-1824*y^2-1024*y^3=0 -> [25]

expanding queue[13]^6: 6 + 22*x + 16*x^2 - 27*y - 144*y^2 - 256*y^3 = 0 meter=[2,2] *32
[11+32*x,3+32*y]: unknown, grown from [1]*3,11,16,9,48,256 3+22*x+32*x^2-27*y-288*y^2-1024*y^3=0 -> [26]
[27+32*x,3+32*y]: unknown, grown from [1]*22,27,16,9,48,256 22+54*x+32*x^2-27*y-288*y^2-1024*y^3=0 -> [27]
[11+32*x,19+32*y]: failure constant=-421, vgcd=2
[27+32*x,19+32*y]: failure constant=-383, vgcd=2

expanding queue[14]^7:  - 80 + 14*x + 16*x^2 - 363*y - 528*y^2 - 256*y^3 = 0 meter=[2,2] *32
[7+32*x,11+32*y]: unknown -40+14*x+32*x^2-363*y-1056*y^2-1024*y^3=0 -> [28]
[23+32*x,11+32*y]: unknown -25+46*x+32*x^2-363*y-1056*y^2-1024*y^3=0 -> [29]
[7+32*x,27+32*y]: failure constant=-1227, vgcd=2
[23+32*x,27+32*y]: failure constant=-1197, vgcd=2

expanding queue[15]^7:  - 69 + 30*x + 16*x^2 - 363*y - 528*y^2 - 256*y^3 = 0 meter=[2,2] *32
[15+32*x,11+32*y]: failure constant=-69, vgcd=2
[31+32*x,11+32*y]: failure constant=-23, vgcd=2
[15+32*x,27+32*y]: unknown, grown from [3]*152,5,8,81,72,64 -608+30*x+32*x^2-2187*y-2592*y^2-1024*y^3=0 -> [30]
[31+32*x,27+32*y]: unknown -585+62*x+32*x^2-2187*y-2592*y^2-1024*y^3=0 -> [31]

expanding queue[16]^8:  - 615 + 2*x + 32*x^2 - 2187*y - 2592*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[1+64*x,27+64*y]: failure constant=-615, vgcd=2
[33+64*x,27+64*y]: failure constant=-581, vgcd=2
[1+64*x,59+64*y]: unknown -3209+2*x+64*x^2-10443*y-11328*y^2-4096*y^3=0 -> [32]
[33+64*x,59+64*y]: unknown -3192+66*x+64*x^2-10443*y-11328*y^2-4096*y^3=0 -> [33]

expanding queue[17]^8:  - 606 + 34*x + 32*x^2 - 2187*y - 2592*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[17+64*x,27+64*y]: unknown, grown from [4]*101,17,8,81,72,64 -303+34*x+64*x^2-2187*y-5184*y^2-4096*y^3=0 -> [34]
[49+64*x,27+64*y]: unknown, grown from [4]*90,49,8,81,72,64, grown from [2]*45,49,16,81,144,256 -270+98*x+64*x^2-2187*y-5184*y^2-4096*y^3=0 -> [35]
[17+64*x,59+64*y]: failure constant=-6409, vgcd=2
[49+64*x,59+64*y]: failure constant=-6343, vgcd=2

expanding queue[18]^9:  - 39 + 18*x + 32*x^2 - 363*y - 1056*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[9+64*x,11+64*y]: failure constant=-39, vgcd=2
[41+64*x,11+64*y]: failure constant=11, vgcd=2
[9+64*x,43+64*y]: unknown -1241+18*x+64*x^2-5547*y-8256*y^2-4096*y^3=0 -> [36]
[41+64*x,43+64*y]: unknown -1216+82*x+64*x^2-5547*y-8256*y^2-4096*y^3=0 -> [37]

expanding queue[19]^9:  - 22 + 50*x + 32*x^2 - 363*y - 1056*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[25+64*x,11+64*y]: unknown -11+50*x+64*x^2-363*y-2112*y^2-4096*y^3=0 -> [38]
[57+64*x,11+64*y]: unknown, grown from [1]*30,57,32,121,352,1024 30+114*x+64*x^2-363*y-2112*y^2-4096*y^3=0 -> [39]
[25+64*x,43+64*y]: failure constant=-2465, vgcd=2
[57+64*x,43+64*y]: failure constant=-2383, vgcd=2

expanding queue[20]^10: 10*x + 32*x^2 - 27*y - 288*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[5+64*x,3+64*y]: success [5,3],NONTRIVIAL , grown from [20]*1,2,1,2,4, grown from [10]*1,4,1,4,16, grown from [5]*1,8,1,8,64 10*x+64*x^2-27*y-576*y^2-4096*y^3=0 -> [40]
[37+64*x,3+64*y]: unknown, grown from [1]*21,37,32,9,96,1024 21+74*x+64*x^2-27*y-576*y^2-4096*y^3=0 -> [41]
[5+64*x,35+64*y]: failure constant=-1339, vgcd=2
[37+64*x,35+64*y]: failure constant=-1297, vgcd=2

expanding queue[21]^10: 13 + 42*x + 32*x^2 - 27*y - 288*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[21+64*x,3+64*y]: failure constant=13, vgcd=2
[53+64*x,3+64*y]: failure constant=87, vgcd=2
[21+64*x,35+64*y]: unknown -663+42*x+64*x^2-3675*y-6720*y^2-4096*y^3=0 -> [42]
[53+64*x,35+64*y]: unknown -626+106*x+64*x^2-3675*y-6720*y^2-4096*y^3=0 -> [43]

expanding queue[22]^11:  - 209 + 26*x + 32*x^2 - 1083*y - 1824*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[13+64*x,19+64*y]: failure constant=-209, vgcd=2
[45+64*x,19+64*y]: failure constant=-151, vgcd=2
[13+64*x,51+64*y]: unknown, grown from [2]*345,13,16,289,272,256 -2070+26*x+64*x^2-7803*y-9792*y^2-4096*y^3=0 -> [44]
[45+64*x,51+64*y]: unknown -2041+90*x+64*x^2-7803*y-9792*y^2-4096*y^3=0 -> [45]

expanding queue[23]^11:  - 188 + 58*x + 32*x^2 - 1083*y - 1824*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[29+64*x,19+64*y]: unknown -94+58*x+64*x^2-1083*y-3648*y^2-4096*y^3=0 -> [46]
[61+64*x,19+64*y]: unknown -49+122*x+64*x^2-1083*y-3648*y^2-4096*y^3=0 -> [47]
[29+64*x,51+64*y]: failure constant=-4119, vgcd=2
[61+64*x,51+64*y]: failure constant=-4029, vgcd=2

expanding queue[24]^12:  - 214 + 6*x + 32*x^2 - 1083*y - 1824*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[3+64*x,19+64*y]: unknown -107+6*x+64*x^2-1083*y-3648*y^2-4096*y^3=0 -> [48]
[35+64*x,19+64*y]: unknown -88+70*x+64*x^2-1083*y-3648*y^2-4096*y^3=0 -> [49]
[3+64*x,51+64*y]: failure constant=-4145, vgcd=2
[35+64*x,51+64*y]: failure constant=-4107, vgcd=2

expanding queue[25]^12:  - 203 + 38*x + 32*x^2 - 1083*y - 1824*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[19+64*x,19+64*y]: failure constant=-203, vgcd=2
[51+64*x,19+64*y]: failure constant=-133, vgcd=2
[19+64*x,51+64*y]: unknown -2067+38*x+64*x^2-7803*y-9792*y^2-4096*y^3=0 -> [50]
[51+64*x,51+64*y]: unknown, grown from [12]*2032,17,4,289,68,16, grown from [6]*1016,17,8,289,136,64, grown from [3]*508,17,16,289,272,256 -2032+102*x+64*x^2-7803*y-9792*y^2-4096*y^3=0 -> [51]

expanding queue[26]^13: 3 + 22*x + 32*x^2 - 27*y - 288*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[11+64*x,3+64*y]: failure constant=3, vgcd=2
[43+64*x,3+64*y]: failure constant=57, vgcd=2
[11+64*x,35+64*y]: unknown -668+22*x+64*x^2-3675*y-6720*y^2-4096*y^3=0 -> [52]
[43+64*x,35+64*y]: unknown -641+86*x+64*x^2-3675*y-6720*y^2-4096*y^3=0 -> [53]

expanding queue[27]^13: 22 + 54*x + 32*x^2 - 27*y - 288*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[27+64*x,3+64*y]: unknown, grown from [1]*11,27,32,9,96,1024 11+54*x+64*x^2-27*y-576*y^2-4096*y^3=0 -> [54]
[59+64*x,3+64*y]: unknown, grown from [1]*54,59,32,9,96,1024 54+118*x+64*x^2-27*y-576*y^2-4096*y^3=0 -> [55]
[27+64*x,35+64*y]: failure constant=-1317, vgcd=2
[59+64*x,35+64*y]: failure constant=-1231, vgcd=2

expanding queue[28]^14:  - 40 + 14*x + 32*x^2 - 363*y - 1056*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[7+64*x,11+64*y]: unknown -20+14*x+64*x^2-363*y-2112*y^2-4096*y^3=0 -> [56]
[39+64*x,11+64*y]: unknown, grown from [1]*3,39,32,121,352,1024 3+78*x+64*x^2-363*y-2112*y^2-4096*y^3=0 -> [57]
[7+64*x,43+64*y]: failure constant=-2483, vgcd=2
[39+64*x,43+64*y]: failure constant=-2437, vgcd=2

expanding queue[29]^14:  - 25 + 46*x + 32*x^2 - 363*y - 1056*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[23+64*x,11+64*y]: failure constant=-25, vgcd=2
[55+64*x,11+64*y]: failure constant=53, vgcd=2
[23+64*x,43+64*y]: unknown -1234+46*x+64*x^2-5547*y-8256*y^2-4096*y^3=0 -> [58]
[55+64*x,43+64*y]: unknown -1195+110*x+64*x^2-5547*y-8256*y^2-4096*y^3=0 -> [59]

expanding queue[30]^15:  - 608 + 30*x + 32*x^2 - 2187*y - 2592*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[15+64*x,27+64*y]: unknown, grown from [3]*76,5,16,81,144,256 -304+30*x+64*x^2-2187*y-5184*y^2-4096*y^3=0 -> [60]
[47+64*x,27+64*y]: unknown -273+94*x+64*x^2-2187*y-5184*y^2-4096*y^3=0 -> [61]
[15+64*x,59+64*y]: failure constant=-6411, vgcd=2
[47+64*x,59+64*y]: failure constant=-6349, vgcd=2

expanding queue[31]^15:  - 585 + 62*x + 32*x^2 - 2187*y - 2592*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[31+64*x,27+64*y]: failure constant=-585, vgcd=2
[63+64*x,27+64*y]: failure constant=-491, vgcd=2
[31+64*x,59+64*y]: unknown -3194+62*x+64*x^2-10443*y-11328*y^2-4096*y^3=0 -> [62]
[63+64*x,59+64*y]: unknown -3147+126*x+64*x^2-10443*y-11328*y^2-4096*y^3=0 -> [63]
Maximum level 5 reached, queue size = 64
