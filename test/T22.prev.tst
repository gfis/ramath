Expanding for base 3, transposables =    0   0   2

expanding queue[0]: a^3 + b^3 - c^3 = 0 modulo [3,3,3] *3
[0+3*a,0+3*b,0+3*c]: failure, grown from [0]
[1+3*a,0+3*b,0+3*c]: failure constant=1, vgcd=9
[2+3*a,0+3*b,0+3*c]: failure constant=8, vgcd=9
[0+3*a,1+3*b,0+3*c]: failure constant=1, vgcd=9
[1+3*a,1+3*b,0+3*c]: failure constant=2, vgcd=9
[2+3*a,1+3*b,0+3*c]: unknown 9+36*a+54*a^2+27*a^3+9*b+27*b^2+27*b^3-27*c^3=0 -> [1]
[0+3*a,2+3*b,0+3*c]: failure constant=8, vgcd=9
[1+3*a,2+3*b,0+3*c]: failure transposition of [1] {0/1+3*b,0/2+3*a,2/0+3*c} by 1+3*b|1+3*a 2+3*a|2+3*b
[2+3*a,2+3*b,0+3*c]: failure constant=16, vgcd=9
[0+3*a,0+3*b,1+3*c]: failure constant=-1, vgcd=9
[1+3*a,0+3*b,1+3*c]: success [1,0,1] trivial=3 9*a+27*a^2+27*a^3+27*b^3-9*c-27*c^2-27*c^3=0 -> [2]
[2+3*a,0+3*b,1+3*c]: failure constant=7, vgcd=9
[0+3*a,1+3*b,1+3*c]: failure transposition of [2] {0/0+3*b,0/1+3*a,2/1+3*c} by 0+3*b|0+3*a 1+3*a|1+3*b
[1+3*a,1+3*b,1+3*c]: failure constant=1, vgcd=9
[2+3*a,1+3*b,1+3*c]: failure constant=8, vgcd=9
[0+3*a,2+3*b,1+3*c]: failure constant=7, vgcd=9
[1+3*a,2+3*b,1+3*c]: failure constant=8, vgcd=9
[2+3*a,2+3*b,1+3*c]: failure constant=15, vgcd=9
[0+3*a,0+3*b,2+3*c]: failure constant=-8, vgcd=9
[1+3*a,0+3*b,2+3*c]: failure constant=-7, vgcd=9
[2+3*a,0+3*b,2+3*c]: success [2,0,2] trivial=3 36*a+54*a^2+27*a^3+27*b^3-36*c-54*c^2-27*c^3=0 -> [3]
[0+3*a,1+3*b,2+3*c]: failure constant=-7, vgcd=9
[1+3*a,1+3*b,2+3*c]: failure constant=-6, vgcd=9
[2+3*a,1+3*b,2+3*c]: failure constant=1, vgcd=9
[0+3*a,2+3*b,2+3*c]: failure transposition of [3] {0/0+3*b,0/2+3*a,2/2+3*c} by 0+3*b|0+3*a 2+3*a|2+3*b
[1+3*a,2+3*b,2+3*c]: failure constant=1, vgcd=9
[2+3*a,2+3*b,2+3*c]: failure constant=8, vgcd=9

expanding queue[1]: 9 + 36*a + 54*a^2 + 27*a^3 + 9*b + 27*b^2 + 27*b^3 - 27*c^3 = 0 modulo [3,3,1] *9
[2+9*a,1+9*b,0+3*c]: failure constant=9, vgcd=27
[5+9*a,1+9*b,0+3*c]: failure constant=126, vgcd=27
[8+9*a,1+9*b,0+3*c]: unknown 513+1728*a+1944*a^2+729*a^3+27*b+243*b^2+729*b^3-27*c^3=0 -> [4]
[2+9*a,4+9*b,0+3*c]: failure constant=72, vgcd=27
[5+9*a,4+9*b,0+3*c]: unknown 189+675*a+1215*a^2+729*a^3+432*b+972*b^2+729*b^3-27*c^3=0 -> [5]
[8+9*a,4+9*b,0+3*c]: failure constant=576, vgcd=27
[2+9*a,7+9*b,0+3*c]: unknown 351+108*a+486*a^2+729*a^3+1323*b+1701*b^2+729*b^3-27*c^3=0 -> [6]
[5+9*a,7+9*b,0+3*c]: failure constant=468, vgcd=27
[8+9*a,7+9*b,0+3*c]: failure constant=855, vgcd=27

expanding queue[2]: 9*a + 27*a^2 + 27*a^3 + 27*b^3 - 9*c - 27*c^2 - 27*c^3 = 0 modulo [3,1,3] *9
[1+9*a,0+3*b,1+9*c]: failure, grown from [2]
[4+9*a,0+3*b,1+9*c]: failure constant=63, vgcd=27
[7+9*a,0+3*b,1+9*c]: failure constant=342, vgcd=27
[1+9*a,0+3*b,4+9*c]: failure constant=-63, vgcd=27
[4+9*a,0+3*b,4+9*c]: success [4,0,4] trivial=3 432*a+972*a^2+729*a^3+27*b^3-432*c-972*c^2-729*c^3=0 -> [7]
[7+9*a,0+3*b,4+9*c]: failure constant=279, vgcd=27
[1+9*a,0+3*b,7+9*c]: failure constant=-342, vgcd=27
[4+9*a,0+3*b,7+9*c]: failure constant=-279, vgcd=27
[7+9*a,0+3*b,7+9*c]: success [7,0,7] trivial=3 1323*a+1701*a^2+729*a^3+27*b^3-1323*c-1701*c^2-729*c^3=0 -> [8]

expanding queue[3]: 36*a + 54*a^2 + 27*a^3 + 27*b^3 - 36*c - 54*c^2 - 27*c^3 = 0 modulo [3,1,3] *9
[2+9*a,0+3*b,2+9*c]: failure, grown from [3]
[5+9*a,0+3*b,2+9*c]: failure constant=117, vgcd=27
[8+9*a,0+3*b,2+9*c]: failure constant=504, vgcd=27
[2+9*a,0+3*b,5+9*c]: failure constant=-117, vgcd=27
[5+9*a,0+3*b,5+9*c]: success [5,0,5] trivial=3 675*a+1215*a^2+729*a^3+27*b^3-675*c-1215*c^2-729*c^3=0 -> [9]
[8+9*a,0+3*b,5+9*c]: failure constant=387, vgcd=27
[2+9*a,0+3*b,8+9*c]: failure constant=-504, vgcd=27
[5+9*a,0+3*b,8+9*c]: failure constant=-387, vgcd=27
[8+9*a,0+3*b,8+9*c]: success [8,0,8] trivial=3 1728*a+1944*a^2+729*a^3+27*b^3-1728*c-1944*c^2-729*c^3=0 -> [10]

expanding queue[4]: 513 + 1728*a + 1944*a^2 + 729*a^3 + 27*b + 243*b^2 + 729*b^3 - 27*c^3 = 0 modulo [3,3,3] *27
[8+27*a,1+27*b,0+9*c]: failure constant=513, vgcd=81
[17+27*a,1+27*b,0+9*c]: failure constant=4914, vgcd=81
[26+27*a,1+27*b,0+9*c]: unknown 17577+54756*a+56862*a^2+19683*a^3+81*b+2187*b^2+19683*b^3-729*c^3=0 -> [11]
[8+27*a,10+27*b,0+9*c]: failure constant=1512, vgcd=81
[17+27*a,10+27*b,0+9*c]: unknown 5913+23409*a+37179*a^2+19683*a^3+8100*b+21870*b^2+19683*b^3-729*c^3=0 -> [12]
[26+27*a,10+27*b,0+9*c]: failure constant=18576, vgcd=81
[8+27*a,19+27*b,0+9*c]: unknown 7371+5184*a+17496*a^2+19683*a^3+29241*b+41553*b^2+19683*b^3-729*c^3=0 -> [13]
[17+27*a,19+27*b,0+9*c]: failure constant=11772, vgcd=81
[26+27*a,19+27*b,0+9*c]: failure constant=24435, vgcd=81
[8+27*a,1+27*b,3+9*c]: unknown 486+5184*a+17496*a^2+19683*a^3+81*b+2187*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [14]
[17+27*a,1+27*b,3+9*c]: failure constant=4887, vgcd=81
[26+27*a,1+27*b,3+9*c]: failure constant=17550, vgcd=81
[8+27*a,10+27*b,3+9*c]: failure constant=1485, vgcd=81
[17+27*a,10+27*b,3+9*c]: failure constant=5886, vgcd=81
[26+27*a,10+27*b,3+9*c]: unknown 18549+54756*a+56862*a^2+19683*a^3+8100*b+21870*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [15]
[8+27*a,19+27*b,3+9*c]: failure constant=7344, vgcd=81
[17+27*a,19+27*b,3+9*c]: unknown 11745+23409*a+37179*a^2+19683*a^3+29241*b+41553*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [16]
[26+27*a,19+27*b,3+9*c]: failure constant=24408, vgcd=81
[8+27*a,1+27*b,6+9*c]: failure constant=297, vgcd=81
[17+27*a,1+27*b,6+9*c]: unknown 4698+23409*a+37179*a^2+19683*a^3+81*b+2187*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [17]
[26+27*a,1+27*b,6+9*c]: failure constant=17361, vgcd=81
[8+27*a,10+27*b,6+9*c]: unknown 1296+5184*a+17496*a^2+19683*a^3+8100*b+21870*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [18]
[17+27*a,10+27*b,6+9*c]: failure constant=5697, vgcd=81
[26+27*a,10+27*b,6+9*c]: failure constant=18360, vgcd=81
[8+27*a,19+27*b,6+9*c]: failure constant=7155, vgcd=81
[17+27*a,19+27*b,6+9*c]: failure constant=11556, vgcd=81
[26+27*a,19+27*b,6+9*c]: unknown 24219+54756*a+56862*a^2+19683*a^3+29241*b+41553*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [19]

expanding queue[5]: 189 + 675*a + 1215*a^2 + 729*a^3 + 432*b + 972*b^2 + 729*b^3 - 27*c^3 = 0 modulo [3,3,3] *27
[5+27*a,4+27*b,0+9*c]: failure constant=189, vgcd=81
[14+27*a,4+27*b,0+9*c]: failure constant=2808, vgcd=81
[23+27*a,4+27*b,0+9*c]: unknown 12231+42849*a+50301*a^2+19683*a^3+1296*b+8748*b^2+19683*b^3-729*c^3=0 -> [20]
[5+27*a,13+27*b,0+9*c]: failure constant=2322, vgcd=81
[14+27*a,13+27*b,0+9*c]: unknown 4941+15876*a+30618*a^2+19683*a^3+13689*b+28431*b^2+19683*b^3-729*c^3=0 -> [21]
[23+27*a,13+27*b,0+9*c]: failure constant=14364, vgcd=81
[5+27*a,22+27*b,0+9*c]: unknown 10773+2025*a+10935*a^2+19683*a^3+39204*b+48114*b^2+19683*b^3-729*c^3=0 -> [22]
[14+27*a,22+27*b,0+9*c]: failure constant=13392, vgcd=81
[23+27*a,22+27*b,0+9*c]: failure constant=22815, vgcd=81
[5+27*a,4+27*b,3+9*c]: unknown 162+2025*a+10935*a^2+19683*a^3+1296*b+8748*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [23]
[14+27*a,4+27*b,3+9*c]: failure constant=2781, vgcd=81
[23+27*a,4+27*b,3+9*c]: failure constant=12204, vgcd=81
[5+27*a,13+27*b,3+9*c]: failure constant=2295, vgcd=81
[14+27*a,13+27*b,3+9*c]: failure constant=4914, vgcd=81
[23+27*a,13+27*b,3+9*c]: unknown 14337+42849*a+50301*a^2+19683*a^3+13689*b+28431*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [24]
[5+27*a,22+27*b,3+9*c]: failure constant=10746, vgcd=81
[14+27*a,22+27*b,3+9*c]: unknown 13365+15876*a+30618*a^2+19683*a^3+39204*b+48114*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [25]
[23+27*a,22+27*b,3+9*c]: failure constant=22788, vgcd=81
[5+27*a,4+27*b,6+9*c]: failure constant=-27, vgcd=81
[14+27*a,4+27*b,6+9*c]: unknown 2592+15876*a+30618*a^2+19683*a^3+1296*b+8748*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [26]
[23+27*a,4+27*b,6+9*c]: failure constant=12015, vgcd=81
[5+27*a,13+27*b,6+9*c]: unknown 2106+2025*a+10935*a^2+19683*a^3+13689*b+28431*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [27]
[14+27*a,13+27*b,6+9*c]: failure constant=4725, vgcd=81
[23+27*a,13+27*b,6+9*c]: failure constant=14148, vgcd=81
[5+27*a,22+27*b,6+9*c]: failure constant=10557, vgcd=81
[14+27*a,22+27*b,6+9*c]: failure constant=13176, vgcd=81
[23+27*a,22+27*b,6+9*c]: unknown 22599+42849*a+50301*a^2+19683*a^3+39204*b+48114*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [28]

expanding queue[6]: 351 + 108*a + 486*a^2 + 729*a^3 + 1323*b + 1701*b^2 + 729*b^3 - 27*c^3 = 0 modulo [3,3,3] *27
[2+27*a,7+27*b,0+9*c]: failure constant=351, vgcd=81
[11+27*a,7+27*b,0+9*c]: failure constant=1674, vgcd=81
[20+27*a,7+27*b,0+9*c]: unknown 8343+32400*a+43740*a^2+19683*a^3+3969*b+15309*b^2+19683*b^3-729*c^3=0 -> [29]
[2+27*a,16+27*b,0+9*c]: failure constant=4104, vgcd=81
[11+27*a,16+27*b,0+9*c]: unknown 5427+9801*a+24057*a^2+19683*a^3+20736*b+34992*b^2+19683*b^3-729*c^3=0 -> [30]
[20+27*a,16+27*b,0+9*c]: failure constant=12096, vgcd=81
[2+27*a,25+27*b,0+9*c]: unknown 15633+324*a+4374*a^2+19683*a^3+50625*b+54675*b^2+19683*b^3-729*c^3=0 -> [31]
[11+27*a,25+27*b,0+9*c]: failure constant=16956, vgcd=81
[20+27*a,25+27*b,0+9*c]: failure constant=23625, vgcd=81
[2+27*a,7+27*b,3+9*c]: unknown 324+324*a+4374*a^2+19683*a^3+3969*b+15309*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [32]
[11+27*a,7+27*b,3+9*c]: failure constant=1647, vgcd=81
[20+27*a,7+27*b,3+9*c]: failure constant=8316, vgcd=81
[2+27*a,16+27*b,3+9*c]: failure constant=4077, vgcd=81
[11+27*a,16+27*b,3+9*c]: failure constant=5400, vgcd=81
[20+27*a,16+27*b,3+9*c]: unknown 12069+32400*a+43740*a^2+19683*a^3+20736*b+34992*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [33]
[2+27*a,25+27*b,3+9*c]: failure constant=15606, vgcd=81
[11+27*a,25+27*b,3+9*c]: unknown 16929+9801*a+24057*a^2+19683*a^3+50625*b+54675*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [34]
[20+27*a,25+27*b,3+9*c]: failure constant=23598, vgcd=81
[2+27*a,7+27*b,6+9*c]: failure constant=135, vgcd=81
[11+27*a,7+27*b,6+9*c]: unknown 1458+9801*a+24057*a^2+19683*a^3+3969*b+15309*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [35]
[20+27*a,7+27*b,6+9*c]: failure constant=8127, vgcd=81
[2+27*a,16+27*b,6+9*c]: unknown 3888+324*a+4374*a^2+19683*a^3+20736*b+34992*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [36]
[11+27*a,16+27*b,6+9*c]: failure constant=5211, vgcd=81
[20+27*a,16+27*b,6+9*c]: failure constant=11880, vgcd=81
[2+27*a,25+27*b,6+9*c]: failure constant=15417, vgcd=81
[11+27*a,25+27*b,6+9*c]: failure constant=16740, vgcd=81
[20+27*a,25+27*b,6+9*c]: unknown 23409+32400*a+43740*a^2+19683*a^3+50625*b+54675*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [37]

expanding queue[7]: 432*a + 972*a^2 + 729*a^3 + 27*b^3 - 432*c - 972*c^2 - 729*c^3 = 0 modulo [3,3,3] *27
[4+27*a,0+9*b,4+27*c]: failure, grown from [7]
[13+27*a,0+9*b,4+27*c]: failure constant=2133, vgcd=81
[22+27*a,0+9*b,4+27*c]: failure constant=10584, vgcd=81
[4+27*a,3+9*b,4+27*c]: failure constant=27, vgcd=81
[13+27*a,3+9*b,4+27*c]: failure constant=2160, vgcd=81
[22+27*a,3+9*b,4+27*c]: unknown 10611+39204*a+48114*a^2+19683*a^3+243*b+729*b^2+729*b^3-1296*c-8748*c^2-19683*c^3=0 -> [38]
[4+27*a,6+9*b,4+27*c]: failure constant=216, vgcd=81
[13+27*a,6+9*b,4+27*c]: unknown 2349+13689*a+28431*a^2+19683*a^3+972*b+1458*b^2+729*b^3-1296*c-8748*c^2-19683*c^3=0 -> [39]
[22+27*a,6+9*b,4+27*c]: failure constant=10800, vgcd=81
[4+27*a,0+9*b,13+27*c]: failure constant=-2133, vgcd=81
[13+27*a,0+9*b,13+27*c]: success [13,0,13] trivial=3 13689*a+28431*a^2+19683*a^3+729*b^3-13689*c-28431*c^2-19683*c^3=0 -> [40]
[22+27*a,0+9*b,13+27*c]: failure constant=8451, vgcd=81
[4+27*a,3+9*b,13+27*c]: unknown -2106+1296*a+8748*a^2+19683*a^3+243*b+729*b^2+729*b^3-13689*c-28431*c^2-19683*c^3=0 -> [41]
[13+27*a,3+9*b,13+27*c]: failure constant=27, vgcd=81
[22+27*a,3+9*b,13+27*c]: failure constant=8478, vgcd=81
[4+27*a,6+9*b,13+27*c]: failure constant=-1917, vgcd=81
[13+27*a,6+9*b,13+27*c]: failure constant=216, vgcd=81
[22+27*a,6+9*b,13+27*c]: unknown 8667+39204*a+48114*a^2+19683*a^3+972*b+1458*b^2+729*b^3-13689*c-28431*c^2-19683*c^3=0 -> [42]
[4+27*a,0+9*b,22+27*c]: failure constant=-10584, vgcd=81
[13+27*a,0+9*b,22+27*c]: failure constant=-8451, vgcd=81
[22+27*a,0+9*b,22+27*c]: success [22,0,22] trivial=3 39204*a+48114*a^2+19683*a^3+729*b^3-39204*c-48114*c^2-19683*c^3=0 -> [43]
[4+27*a,3+9*b,22+27*c]: failure constant=-10557, vgcd=81
[13+27*a,3+9*b,22+27*c]: unknown -8424+13689*a+28431*a^2+19683*a^3+243*b+729*b^2+729*b^3-39204*c-48114*c^2-19683*c^3=0 -> [44]
[22+27*a,3+9*b,22+27*c]: failure constant=27, vgcd=81
[4+27*a,6+9*b,22+27*c]: unknown -10368+1296*a+8748*a^2+19683*a^3+972*b+1458*b^2+729*b^3-39204*c-48114*c^2-19683*c^3=0 -> [45]
[13+27*a,6+9*b,22+27*c]: failure constant=-8235, vgcd=81
[22+27*a,6+9*b,22+27*c]: failure constant=216, vgcd=81

expanding queue[8]: 1323*a + 1701*a^2 + 729*a^3 + 27*b^3 - 1323*c - 1701*c^2 - 729*c^3 = 0 modulo [3,3,3] *27
[7+27*a,0+9*b,7+27*c]: failure, grown from [8]
[16+27*a,0+9*b,7+27*c]: failure constant=3753, vgcd=81
[25+27*a,0+9*b,7+27*c]: failure constant=15282, vgcd=81
[7+27*a,3+9*b,7+27*c]: failure constant=27, vgcd=81
[16+27*a,3+9*b,7+27*c]: failure constant=3780, vgcd=81
[25+27*a,3+9*b,7+27*c]: unknown 15309+50625*a+54675*a^2+19683*a^3+243*b+729*b^2+729*b^3-3969*c-15309*c^2-19683*c^3=0 -> [46]
[7+27*a,6+9*b,7+27*c]: failure constant=216, vgcd=81
[16+27*a,6+9*b,7+27*c]: unknown 3969+20736*a+34992*a^2+19683*a^3+972*b+1458*b^2+729*b^3-3969*c-15309*c^2-19683*c^3=0 -> [47]
[25+27*a,6+9*b,7+27*c]: failure constant=15498, vgcd=81
[7+27*a,0+9*b,16+27*c]: failure constant=-3753, vgcd=81
[16+27*a,0+9*b,16+27*c]: success [16,0,16] trivial=3 20736*a+34992*a^2+19683*a^3+729*b^3-20736*c-34992*c^2-19683*c^3=0 -> [48]
[25+27*a,0+9*b,16+27*c]: failure constant=11529, vgcd=81
[7+27*a,3+9*b,16+27*c]: unknown -3726+3969*a+15309*a^2+19683*a^3+243*b+729*b^2+729*b^3-20736*c-34992*c^2-19683*c^3=0 -> [49]
[16+27*a,3+9*b,16+27*c]: failure constant=27, vgcd=81
[25+27*a,3+9*b,16+27*c]: failure constant=11556, vgcd=81
[7+27*a,6+9*b,16+27*c]: failure constant=-3537, vgcd=81
[16+27*a,6+9*b,16+27*c]: failure constant=216, vgcd=81
[25+27*a,6+9*b,16+27*c]: unknown 11745+50625*a+54675*a^2+19683*a^3+972*b+1458*b^2+729*b^3-20736*c-34992*c^2-19683*c^3=0 -> [50]
[7+27*a,0+9*b,25+27*c]: failure constant=-15282, vgcd=81
[16+27*a,0+9*b,25+27*c]: failure constant=-11529, vgcd=81
[25+27*a,0+9*b,25+27*c]: success [25,0,25] trivial=3 50625*a+54675*a^2+19683*a^3+729*b^3-50625*c-54675*c^2-19683*c^3=0 -> [51]
[7+27*a,3+9*b,25+27*c]: failure constant=-15255, vgcd=81
[16+27*a,3+9*b,25+27*c]: unknown -11502+20736*a+34992*a^2+19683*a^3+243*b+729*b^2+729*b^3-50625*c-54675*c^2-19683*c^3=0 -> [52]
[25+27*a,3+9*b,25+27*c]: failure constant=27, vgcd=81
[7+27*a,6+9*b,25+27*c]: unknown -15066+3969*a+15309*a^2+19683*a^3+972*b+1458*b^2+729*b^3-50625*c-54675*c^2-19683*c^3=0 -> [53]
[16+27*a,6+9*b,25+27*c]: failure constant=-11313, vgcd=81
[25+27*a,6+9*b,25+27*c]: failure constant=216, vgcd=81

expanding queue[9]: 675*a + 1215*a^2 + 729*a^3 + 27*b^3 - 675*c - 1215*c^2 - 729*c^3 = 0 modulo [3,3,3] *27
[5+27*a,0+9*b,5+27*c]: failure, grown from [9]
[14+27*a,0+9*b,5+27*c]: failure constant=2619, vgcd=81
[23+27*a,0+9*b,5+27*c]: failure constant=12042, vgcd=81
[5+27*a,3+9*b,5+27*c]: failure constant=27, vgcd=81
[14+27*a,3+9*b,5+27*c]: failure constant=2646, vgcd=81
[23+27*a,3+9*b,5+27*c]: unknown 12069+42849*a+50301*a^2+19683*a^3+243*b+729*b^2+729*b^3-2025*c-10935*c^2-19683*c^3=0 -> [54]
[5+27*a,6+9*b,5+27*c]: failure constant=216, vgcd=81
[14+27*a,6+9*b,5+27*c]: unknown 2835+15876*a+30618*a^2+19683*a^3+972*b+1458*b^2+729*b^3-2025*c-10935*c^2-19683*c^3=0 -> [55]
[23+27*a,6+9*b,5+27*c]: failure constant=12258, vgcd=81
[5+27*a,0+9*b,14+27*c]: failure constant=-2619, vgcd=81
[14+27*a,0+9*b,14+27*c]: success [14,0,14] trivial=3 15876*a+30618*a^2+19683*a^3+729*b^3-15876*c-30618*c^2-19683*c^3=0 -> [56]
[23+27*a,0+9*b,14+27*c]: failure constant=9423, vgcd=81
[5+27*a,3+9*b,14+27*c]: unknown -2592+2025*a+10935*a^2+19683*a^3+243*b+729*b^2+729*b^3-15876*c-30618*c^2-19683*c^3=0 -> [57]
[14+27*a,3+9*b,14+27*c]: failure constant=27, vgcd=81
[23+27*a,3+9*b,14+27*c]: failure constant=9450, vgcd=81
[5+27*a,6+9*b,14+27*c]: failure constant=-2403, vgcd=81
[14+27*a,6+9*b,14+27*c]: failure constant=216, vgcd=81
[23+27*a,6+9*b,14+27*c]: unknown 9639+42849*a+50301*a^2+19683*a^3+972*b+1458*b^2+729*b^3-15876*c-30618*c^2-19683*c^3=0 -> [58]
[5+27*a,0+9*b,23+27*c]: failure constant=-12042, vgcd=81
[14+27*a,0+9*b,23+27*c]: failure constant=-9423, vgcd=81
[23+27*a,0+9*b,23+27*c]: success [23,0,23] trivial=3 42849*a+50301*a^2+19683*a^3+729*b^3-42849*c-50301*c^2-19683*c^3=0 -> [59]
[5+27*a,3+9*b,23+27*c]: failure constant=-12015, vgcd=81
[14+27*a,3+9*b,23+27*c]: unknown -9396+15876*a+30618*a^2+19683*a^3+243*b+729*b^2+729*b^3-42849*c-50301*c^2-19683*c^3=0 -> [60]
[23+27*a,3+9*b,23+27*c]: failure constant=27, vgcd=81
[5+27*a,6+9*b,23+27*c]: unknown -11826+2025*a+10935*a^2+19683*a^3+972*b+1458*b^2+729*b^3-42849*c-50301*c^2-19683*c^3=0 -> [61]
[14+27*a,6+9*b,23+27*c]: failure constant=-9207, vgcd=81
[23+27*a,6+9*b,23+27*c]: failure constant=216, vgcd=81

expanding queue[10]: 1728*a + 1944*a^2 + 729*a^3 + 27*b^3 - 1728*c - 1944*c^2 - 729*c^3 = 0 modulo [3,3,3] *27
[8+27*a,0+9*b,8+27*c]: failure, grown from [10]
[17+27*a,0+9*b,8+27*c]: failure constant=4401, vgcd=81
[26+27*a,0+9*b,8+27*c]: failure constant=17064, vgcd=81
[8+27*a,3+9*b,8+27*c]: failure constant=27, vgcd=81
[17+27*a,3+9*b,8+27*c]: failure constant=4428, vgcd=81
[26+27*a,3+9*b,8+27*c]: unknown 17091+54756*a+56862*a^2+19683*a^3+243*b+729*b^2+729*b^3-5184*c-17496*c^2-19683*c^3=0 -> [62]
[8+27*a,6+9*b,8+27*c]: failure constant=216, vgcd=81
[17+27*a,6+9*b,8+27*c]: unknown 4617+23409*a+37179*a^2+19683*a^3+972*b+1458*b^2+729*b^3-5184*c-17496*c^2-19683*c^3=0 -> [63]
[26+27*a,6+9*b,8+27*c]: failure constant=17280, vgcd=81
[8+27*a,0+9*b,17+27*c]: failure constant=-4401, vgcd=81
[17+27*a,0+9*b,17+27*c]: success [17,0,17] trivial=3 23409*a+37179*a^2+19683*a^3+729*b^3-23409*c-37179*c^2-19683*c^3=0 -> [64]
[26+27*a,0+9*b,17+27*c]: failure constant=12663, vgcd=81
[8+27*a,3+9*b,17+27*c]: unknown -4374+5184*a+17496*a^2+19683*a^3+243*b+729*b^2+729*b^3-23409*c-37179*c^2-19683*c^3=0 -> [65]
[17+27*a,3+9*b,17+27*c]: failure constant=27, vgcd=81
[26+27*a,3+9*b,17+27*c]: failure constant=12690, vgcd=81
[8+27*a,6+9*b,17+27*c]: failure constant=-4185, vgcd=81
[17+27*a,6+9*b,17+27*c]: failure constant=216, vgcd=81
[26+27*a,6+9*b,17+27*c]: unknown 12879+54756*a+56862*a^2+19683*a^3+972*b+1458*b^2+729*b^3-23409*c-37179*c^2-19683*c^3=0 -> [66]
[8+27*a,0+9*b,26+27*c]: failure constant=-17064, vgcd=81
[17+27*a,0+9*b,26+27*c]: failure constant=-12663, vgcd=81
[26+27*a,0+9*b,26+27*c]: success [26,0,26] trivial=3 54756*a+56862*a^2+19683*a^3+729*b^3-54756*c-56862*c^2-19683*c^3=0 -> [67]
[8+27*a,3+9*b,26+27*c]: failure constant=-17037, vgcd=81
[17+27*a,3+9*b,26+27*c]: unknown -12636+23409*a+37179*a^2+19683*a^3+243*b+729*b^2+729*b^3-54756*c-56862*c^2-19683*c^3=0 -> [68]
[26+27*a,3+9*b,26+27*c]: failure constant=27, vgcd=81
[8+27*a,6+9*b,26+27*c]: unknown -16848+5184*a+17496*a^2+19683*a^3+972*b+1458*b^2+729*b^3-54756*c-56862*c^2-19683*c^3=0 -> [69]
[17+27*a,6+9*b,26+27*c]: failure constant=-12447, vgcd=81
[26+27*a,6+9*b,26+27*c]: failure constant=216, vgcd=81
Maximum level 2 reached, queue size = 70
