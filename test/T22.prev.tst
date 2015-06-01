Expanding for base 3, transposables =    0   0   2

expanding queue[0]: a^3 + b^3 - c^3 = 0 modulo [3,3,3] *3
[0+3*a,0+3*b,0+3*c]: same form as 27*a^3+27*b^3-27*c^3=0 success [0,0,0],trivial(3) success [3,0,3],trivial(3) success [0,3,3],trivial(3) 
[1+3*a,0+3*b,0+3*c]: failure constant=1, vgcd=9
[2+3*a,0+3*b,0+3*c]: failure constant=8, vgcd=9
[0+3*a,1+3*b,0+3*c]: failure constant=1, vgcd=9
[1+3*a,1+3*b,0+3*c]: failure constant=2, vgcd=9
[2+3*a,1+3*b,0+3*c]: unknown 9+36*a+54*a^2+27*a^3+9*b+27*b^2+27*b^3-27*c^3=0 -> [1]
[0+3*a,2+3*b,0+3*c]: failure constant=8, vgcd=9
[1+3*a,2+3*b,0+3*c]: failure transposition of [1] {0/1+3*b,0/2+3*a,2/0+3*c} by 1+3*b|1+3*a 2+3*a|2+3*b
[2+3*a,2+3*b,0+3*c]: failure constant=16, vgcd=9
[0+3*a,0+3*b,1+3*c]: failure constant=-1, vgcd=9
[1+3*a,0+3*b,1+3*c]: success [1,0,1],trivial(3) success [4,0,4],trivial(3)  9*a+27*a^2+27*a^3+27*b^3-9*c-27*c^2-27*c^3=0 -> [2]
[2+3*a,0+3*b,1+3*c]: failure constant=7, vgcd=9
[0+3*a,1+3*b,1+3*c]: failure transposition of [2] {0/0+3*b,0/1+3*a,2/1+3*c} by 0+3*b|0+3*a 1+3*a|1+3*b success [0,1,1],trivial(3) success [0,4,4],trivial(3) 
[1+3*a,1+3*b,1+3*c]: failure constant=1, vgcd=9
[2+3*a,1+3*b,1+3*c]: failure constant=8, vgcd=9
[0+3*a,2+3*b,1+3*c]: failure constant=7, vgcd=9
[1+3*a,2+3*b,1+3*c]: failure constant=8, vgcd=9
[2+3*a,2+3*b,1+3*c]: failure constant=15, vgcd=9
[0+3*a,0+3*b,2+3*c]: failure constant=-8, vgcd=9
[1+3*a,0+3*b,2+3*c]: failure constant=-7, vgcd=9
[2+3*a,0+3*b,2+3*c]: success [2,0,2],trivial(3) success [5,0,5],trivial(3)  36*a+54*a^2+27*a^3+27*b^3-36*c-54*c^2-27*c^3=0 -> [3]
[0+3*a,1+3*b,2+3*c]: failure constant=-7, vgcd=9
[1+3*a,1+3*b,2+3*c]: failure constant=-6, vgcd=9
[2+3*a,1+3*b,2+3*c]: failure constant=1, vgcd=9
[0+3*a,2+3*b,2+3*c]: failure transposition of [3] {0/0+3*b,0/2+3*a,2/2+3*c} by 0+3*b|0+3*a 2+3*a|2+3*b success [0,2,2],trivial(3) success [0,5,5],trivial(3) 
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
[1+9*a,0+3*b,1+9*c]: grown from [0] 27*a+243*a^2+729*a^3+27*b^3-27*c-243*c^2-729*c^3=0 success [1,0,1],trivial(3) success [10,0,10],trivial(3) 
[4+9*a,0+3*b,1+9*c]: failure constant=63, vgcd=27
[7+9*a,0+3*b,1+9*c]: failure constant=342, vgcd=27
[1+9*a,0+3*b,4+9*c]: failure constant=-63, vgcd=27
[4+9*a,0+3*b,4+9*c]: grown from [2] 432*a+972*a^2+729*a^3+27*b^3-432*c-972*c^2-729*c^3=0 success [4,0,4],trivial(3) success [13,0,13],trivial(3) 
[7+9*a,0+3*b,4+9*c]: failure constant=279, vgcd=27
[1+9*a,0+3*b,7+9*c]: failure constant=-342, vgcd=27
[4+9*a,0+3*b,7+9*c]: failure constant=-279, vgcd=27
[7+9*a,0+3*b,7+9*c]: success [7,0,7],trivial(3) success [16,0,16],trivial(3)  1323*a+1701*a^2+729*a^3+27*b^3-1323*c-1701*c^2-729*c^3=0 -> [7]

expanding queue[3]: 36*a + 54*a^2 + 27*a^3 + 27*b^3 - 36*c - 54*c^2 - 27*c^3 = 0 modulo [3,1,3] *9
[2+9*a,0+3*b,2+9*c]: grown from [0] 108*a+486*a^2+729*a^3+27*b^3-108*c-486*c^2-729*c^3=0 success [2,0,2],trivial(3) success [11,0,11],trivial(3) 
[5+9*a,0+3*b,2+9*c]: failure constant=117, vgcd=27
[8+9*a,0+3*b,2+9*c]: failure constant=504, vgcd=27
[2+9*a,0+3*b,5+9*c]: failure constant=-117, vgcd=27
[5+9*a,0+3*b,5+9*c]: success [5,0,5],trivial(3) success [14,0,14],trivial(3)  675*a+1215*a^2+729*a^3+27*b^3-675*c-1215*c^2-729*c^3=0 -> [8]
[8+9*a,0+3*b,5+9*c]: failure constant=387, vgcd=27
[2+9*a,0+3*b,8+9*c]: failure constant=-504, vgcd=27
[5+9*a,0+3*b,8+9*c]: failure constant=-387, vgcd=27
[8+9*a,0+3*b,8+9*c]: grown from [3] 1728*a+1944*a^2+729*a^3+27*b^3-1728*c-1944*c^2-729*c^3=0 success [8,0,8],trivial(3) success [17,0,17],trivial(3) 

expanding queue[4]: 513 + 1728*a + 1944*a^2 + 729*a^3 + 27*b + 243*b^2 + 729*b^3 - 27*c^3 = 0 modulo [3,3,3] *27
[8+27*a,1+27*b,0+9*c]: failure constant=513, vgcd=81
[17+27*a,1+27*b,0+9*c]: failure constant=4914, vgcd=81
[26+27*a,1+27*b,0+9*c]: unknown 17577+54756*a+56862*a^2+19683*a^3+81*b+2187*b^2+19683*b^3-729*c^3=0 -> [9]
[8+27*a,10+27*b,0+9*c]: failure constant=1512, vgcd=81
[17+27*a,10+27*b,0+9*c]: unknown 5913+23409*a+37179*a^2+19683*a^3+8100*b+21870*b^2+19683*b^3-729*c^3=0 -> [10]
[26+27*a,10+27*b,0+9*c]: failure constant=18576, vgcd=81
[8+27*a,19+27*b,0+9*c]: unknown 7371+5184*a+17496*a^2+19683*a^3+29241*b+41553*b^2+19683*b^3-729*c^3=0 -> [11]
[17+27*a,19+27*b,0+9*c]: failure constant=11772, vgcd=81
[26+27*a,19+27*b,0+9*c]: failure constant=24435, vgcd=81
[8+27*a,1+27*b,3+9*c]: unknown 486+5184*a+17496*a^2+19683*a^3+81*b+2187*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [12]
[17+27*a,1+27*b,3+9*c]: failure constant=4887, vgcd=81
[26+27*a,1+27*b,3+9*c]: failure constant=17550, vgcd=81
[8+27*a,10+27*b,3+9*c]: failure constant=1485, vgcd=81
[17+27*a,10+27*b,3+9*c]: failure constant=5886, vgcd=81
[26+27*a,10+27*b,3+9*c]: unknown 18549+54756*a+56862*a^2+19683*a^3+8100*b+21870*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [13]
[8+27*a,19+27*b,3+9*c]: failure constant=7344, vgcd=81
[17+27*a,19+27*b,3+9*c]: unknown 11745+23409*a+37179*a^2+19683*a^3+29241*b+41553*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [14]
[26+27*a,19+27*b,3+9*c]: failure constant=24408, vgcd=81
[8+27*a,1+27*b,6+9*c]: failure constant=297, vgcd=81
[17+27*a,1+27*b,6+9*c]: unknown 4698+23409*a+37179*a^2+19683*a^3+81*b+2187*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [15]
[26+27*a,1+27*b,6+9*c]: failure constant=17361, vgcd=81
[8+27*a,10+27*b,6+9*c]: unknown 1296+5184*a+17496*a^2+19683*a^3+8100*b+21870*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [16]
[17+27*a,10+27*b,6+9*c]: failure constant=5697, vgcd=81
[26+27*a,10+27*b,6+9*c]: failure constant=18360, vgcd=81
[8+27*a,19+27*b,6+9*c]: failure constant=7155, vgcd=81
[17+27*a,19+27*b,6+9*c]: failure constant=11556, vgcd=81
[26+27*a,19+27*b,6+9*c]: unknown 24219+54756*a+56862*a^2+19683*a^3+29241*b+41553*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [17]

expanding queue[5]: 189 + 675*a + 1215*a^2 + 729*a^3 + 432*b + 972*b^2 + 729*b^3 - 27*c^3 = 0 modulo [3,3,3] *27
[5+27*a,4+27*b,0+9*c]: failure constant=189, vgcd=81
[14+27*a,4+27*b,0+9*c]: failure constant=2808, vgcd=81
[23+27*a,4+27*b,0+9*c]: unknown 12231+42849*a+50301*a^2+19683*a^3+1296*b+8748*b^2+19683*b^3-729*c^3=0 -> [18]
[5+27*a,13+27*b,0+9*c]: failure constant=2322, vgcd=81
[14+27*a,13+27*b,0+9*c]: unknown 4941+15876*a+30618*a^2+19683*a^3+13689*b+28431*b^2+19683*b^3-729*c^3=0 -> [19]
[23+27*a,13+27*b,0+9*c]: failure constant=14364, vgcd=81
[5+27*a,22+27*b,0+9*c]: unknown 10773+2025*a+10935*a^2+19683*a^3+39204*b+48114*b^2+19683*b^3-729*c^3=0 -> [20]
[14+27*a,22+27*b,0+9*c]: failure constant=13392, vgcd=81
[23+27*a,22+27*b,0+9*c]: failure constant=22815, vgcd=81
[5+27*a,4+27*b,3+9*c]: unknown 162+2025*a+10935*a^2+19683*a^3+1296*b+8748*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [21]
[14+27*a,4+27*b,3+9*c]: failure constant=2781, vgcd=81
[23+27*a,4+27*b,3+9*c]: failure constant=12204, vgcd=81
[5+27*a,13+27*b,3+9*c]: failure constant=2295, vgcd=81
[14+27*a,13+27*b,3+9*c]: failure constant=4914, vgcd=81
[23+27*a,13+27*b,3+9*c]: unknown 14337+42849*a+50301*a^2+19683*a^3+13689*b+28431*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [22]
[5+27*a,22+27*b,3+9*c]: failure constant=10746, vgcd=81
[14+27*a,22+27*b,3+9*c]: unknown 13365+15876*a+30618*a^2+19683*a^3+39204*b+48114*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [23]
[23+27*a,22+27*b,3+9*c]: failure constant=22788, vgcd=81
[5+27*a,4+27*b,6+9*c]: failure constant=-27, vgcd=81
[14+27*a,4+27*b,6+9*c]: unknown 2592+15876*a+30618*a^2+19683*a^3+1296*b+8748*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [24]
[23+27*a,4+27*b,6+9*c]: failure constant=12015, vgcd=81
[5+27*a,13+27*b,6+9*c]: unknown 2106+2025*a+10935*a^2+19683*a^3+13689*b+28431*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [25]
[14+27*a,13+27*b,6+9*c]: failure constant=4725, vgcd=81
[23+27*a,13+27*b,6+9*c]: failure constant=14148, vgcd=81
[5+27*a,22+27*b,6+9*c]: failure constant=10557, vgcd=81
[14+27*a,22+27*b,6+9*c]: failure constant=13176, vgcd=81
[23+27*a,22+27*b,6+9*c]: unknown 22599+42849*a+50301*a^2+19683*a^3+39204*b+48114*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [26]

expanding queue[6]: 351 + 108*a + 486*a^2 + 729*a^3 + 1323*b + 1701*b^2 + 729*b^3 - 27*c^3 = 0 modulo [3,3,3] *27
[2+27*a,7+27*b,0+9*c]: failure constant=351, vgcd=81
[11+27*a,7+27*b,0+9*c]: failure constant=1674, vgcd=81
[20+27*a,7+27*b,0+9*c]: unknown 8343+32400*a+43740*a^2+19683*a^3+3969*b+15309*b^2+19683*b^3-729*c^3=0 -> [27]
[2+27*a,16+27*b,0+9*c]: failure constant=4104, vgcd=81
[11+27*a,16+27*b,0+9*c]: unknown 5427+9801*a+24057*a^2+19683*a^3+20736*b+34992*b^2+19683*b^3-729*c^3=0 -> [28]
[20+27*a,16+27*b,0+9*c]: failure constant=12096, vgcd=81
[2+27*a,25+27*b,0+9*c]: unknown 15633+324*a+4374*a^2+19683*a^3+50625*b+54675*b^2+19683*b^3-729*c^3=0 -> [29]
[11+27*a,25+27*b,0+9*c]: failure constant=16956, vgcd=81
[20+27*a,25+27*b,0+9*c]: failure constant=23625, vgcd=81
[2+27*a,7+27*b,3+9*c]: unknown 324+324*a+4374*a^2+19683*a^3+3969*b+15309*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [30]
[11+27*a,7+27*b,3+9*c]: failure constant=1647, vgcd=81
[20+27*a,7+27*b,3+9*c]: failure constant=8316, vgcd=81
[2+27*a,16+27*b,3+9*c]: failure constant=4077, vgcd=81
[11+27*a,16+27*b,3+9*c]: failure constant=5400, vgcd=81
[20+27*a,16+27*b,3+9*c]: unknown 12069+32400*a+43740*a^2+19683*a^3+20736*b+34992*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [31]
[2+27*a,25+27*b,3+9*c]: failure constant=15606, vgcd=81
[11+27*a,25+27*b,3+9*c]: unknown 16929+9801*a+24057*a^2+19683*a^3+50625*b+54675*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [32]
[20+27*a,25+27*b,3+9*c]: failure constant=23598, vgcd=81
[2+27*a,7+27*b,6+9*c]: failure constant=135, vgcd=81
[11+27*a,7+27*b,6+9*c]: unknown 1458+9801*a+24057*a^2+19683*a^3+3969*b+15309*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [33]
[20+27*a,7+27*b,6+9*c]: failure constant=8127, vgcd=81
[2+27*a,16+27*b,6+9*c]: unknown 3888+324*a+4374*a^2+19683*a^3+20736*b+34992*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [34]
[11+27*a,16+27*b,6+9*c]: failure constant=5211, vgcd=81
[20+27*a,16+27*b,6+9*c]: failure constant=11880, vgcd=81
[2+27*a,25+27*b,6+9*c]: failure constant=15417, vgcd=81
[11+27*a,25+27*b,6+9*c]: failure constant=16740, vgcd=81
[20+27*a,25+27*b,6+9*c]: unknown 23409+32400*a+43740*a^2+19683*a^3+50625*b+54675*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [35]

expanding queue[7]: 1323*a + 1701*a^2 + 729*a^3 + 27*b^3 - 1323*c - 1701*c^2 - 729*c^3 = 0 modulo [3,3,3] *27
[7+27*a,0+9*b,7+27*c]: grown from [0] 3969*a+15309*a^2+19683*a^3+729*b^3-3969*c-15309*c^2-19683*c^3=0 success [7,0,7],trivial(3) success [34,0,34],trivial(3) 
[16+27*a,0+9*b,7+27*c]: failure constant=3753, vgcd=81
[25+27*a,0+9*b,7+27*c]: failure constant=15282, vgcd=81
[7+27*a,3+9*b,7+27*c]: failure constant=27, vgcd=81
[16+27*a,3+9*b,7+27*c]: failure constant=3780, vgcd=81
[25+27*a,3+9*b,7+27*c]: unknown 15309+50625*a+54675*a^2+19683*a^3+243*b+729*b^2+729*b^3-3969*c-15309*c^2-19683*c^3=0 -> [36]
[7+27*a,6+9*b,7+27*c]: failure constant=216, vgcd=81
[16+27*a,6+9*b,7+27*c]: unknown 3969+20736*a+34992*a^2+19683*a^3+972*b+1458*b^2+729*b^3-3969*c-15309*c^2-19683*c^3=0 -> [37]
[25+27*a,6+9*b,7+27*c]: failure constant=15498, vgcd=81
[7+27*a,0+9*b,16+27*c]: failure constant=-3753, vgcd=81
[16+27*a,0+9*b,16+27*c]: grown from [2] 20736*a+34992*a^2+19683*a^3+729*b^3-20736*c-34992*c^2-19683*c^3=0 success [16,0,16],trivial(3) success [43,0,43],trivial(3) 
[25+27*a,0+9*b,16+27*c]: failure constant=11529, vgcd=81
[7+27*a,3+9*b,16+27*c]: unknown -3726+3969*a+15309*a^2+19683*a^3+243*b+729*b^2+729*b^3-20736*c-34992*c^2-19683*c^3=0 -> [38]
[16+27*a,3+9*b,16+27*c]: failure constant=27, vgcd=81
[25+27*a,3+9*b,16+27*c]: failure constant=11556, vgcd=81
[7+27*a,6+9*b,16+27*c]: failure constant=-3537, vgcd=81
[16+27*a,6+9*b,16+27*c]: failure constant=216, vgcd=81
[25+27*a,6+9*b,16+27*c]: unknown 11745+50625*a+54675*a^2+19683*a^3+972*b+1458*b^2+729*b^3-20736*c-34992*c^2-19683*c^3=0 -> [39]
[7+27*a,0+9*b,25+27*c]: failure constant=-15282, vgcd=81
[16+27*a,0+9*b,25+27*c]: failure constant=-11529, vgcd=81
[25+27*a,0+9*b,25+27*c]: success [25,0,25],trivial(3) success [52,0,52],trivial(3)  50625*a+54675*a^2+19683*a^3+729*b^3-50625*c-54675*c^2-19683*c^3=0 -> [40]
[7+27*a,3+9*b,25+27*c]: failure constant=-15255, vgcd=81
[16+27*a,3+9*b,25+27*c]: unknown -11502+20736*a+34992*a^2+19683*a^3+243*b+729*b^2+729*b^3-50625*c-54675*c^2-19683*c^3=0 -> [41]
[25+27*a,3+9*b,25+27*c]: failure constant=27, vgcd=81
[7+27*a,6+9*b,25+27*c]: unknown -15066+3969*a+15309*a^2+19683*a^3+972*b+1458*b^2+729*b^3-50625*c-54675*c^2-19683*c^3=0 -> [42]
[16+27*a,6+9*b,25+27*c]: failure constant=-11313, vgcd=81
[25+27*a,6+9*b,25+27*c]: failure constant=216, vgcd=81

expanding queue[8]: 675*a + 1215*a^2 + 729*a^3 + 27*b^3 - 675*c - 1215*c^2 - 729*c^3 = 0 modulo [3,3,3] *27
[5+27*a,0+9*b,5+27*c]: grown from [0] 2025*a+10935*a^2+19683*a^3+729*b^3-2025*c-10935*c^2-19683*c^3=0 success [5,0,5],trivial(3) success [32,0,32],trivial(3) 
[14+27*a,0+9*b,5+27*c]: failure constant=2619, vgcd=81
[23+27*a,0+9*b,5+27*c]: failure constant=12042, vgcd=81
[5+27*a,3+9*b,5+27*c]: failure constant=27, vgcd=81
[14+27*a,3+9*b,5+27*c]: failure constant=2646, vgcd=81
[23+27*a,3+9*b,5+27*c]: unknown 12069+42849*a+50301*a^2+19683*a^3+243*b+729*b^2+729*b^3-2025*c-10935*c^2-19683*c^3=0 -> [43]
[5+27*a,6+9*b,5+27*c]: failure constant=216, vgcd=81
[14+27*a,6+9*b,5+27*c]: unknown 2835+15876*a+30618*a^2+19683*a^3+972*b+1458*b^2+729*b^3-2025*c-10935*c^2-19683*c^3=0 -> [44]
[23+27*a,6+9*b,5+27*c]: failure constant=12258, vgcd=81
[5+27*a,0+9*b,14+27*c]: failure constant=-2619, vgcd=81
[14+27*a,0+9*b,14+27*c]: success [14,0,14],trivial(3) success [41,0,41],trivial(3)  15876*a+30618*a^2+19683*a^3+729*b^3-15876*c-30618*c^2-19683*c^3=0 -> [45]
[23+27*a,0+9*b,14+27*c]: failure constant=9423, vgcd=81
[5+27*a,3+9*b,14+27*c]: unknown -2592+2025*a+10935*a^2+19683*a^3+243*b+729*b^2+729*b^3-15876*c-30618*c^2-19683*c^3=0 -> [46]
[14+27*a,3+9*b,14+27*c]: failure constant=27, vgcd=81
[23+27*a,3+9*b,14+27*c]: failure constant=9450, vgcd=81
[5+27*a,6+9*b,14+27*c]: failure constant=-2403, vgcd=81
[14+27*a,6+9*b,14+27*c]: failure constant=216, vgcd=81
[23+27*a,6+9*b,14+27*c]: unknown 9639+42849*a+50301*a^2+19683*a^3+972*b+1458*b^2+729*b^3-15876*c-30618*c^2-19683*c^3=0 -> [47]
[5+27*a,0+9*b,23+27*c]: failure constant=-12042, vgcd=81
[14+27*a,0+9*b,23+27*c]: failure constant=-9423, vgcd=81
[23+27*a,0+9*b,23+27*c]: success [23,0,23],trivial(3) success [50,0,50],trivial(3)  42849*a+50301*a^2+19683*a^3+729*b^3-42849*c-50301*c^2-19683*c^3=0 -> [48]
[5+27*a,3+9*b,23+27*c]: failure constant=-12015, vgcd=81
[14+27*a,3+9*b,23+27*c]: unknown -9396+15876*a+30618*a^2+19683*a^3+243*b+729*b^2+729*b^3-42849*c-50301*c^2-19683*c^3=0 -> [49]
[23+27*a,3+9*b,23+27*c]: failure constant=27, vgcd=81
[5+27*a,6+9*b,23+27*c]: unknown -11826+2025*a+10935*a^2+19683*a^3+972*b+1458*b^2+729*b^3-42849*c-50301*c^2-19683*c^3=0 -> [50]
[14+27*a,6+9*b,23+27*c]: failure constant=-9207, vgcd=81
[23+27*a,6+9*b,23+27*c]: failure constant=216, vgcd=81
Maximum level 2 reached, queue size = 51
