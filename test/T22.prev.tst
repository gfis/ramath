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
[8+9*a,1+9*b,0+3*c]: grown from [1] 513+1728*a+1944*a^2+729*a^3+27*b+243*b^2+729*b^3-27*c^3=0
[2+9*a,4+9*b,0+3*c]: failure constant=72, vgcd=27
[5+9*a,4+9*b,0+3*c]: unknown 189+675*a+1215*a^2+729*a^3+432*b+972*b^2+729*b^3-27*c^3=0 -> [4]
[8+9*a,4+9*b,0+3*c]: failure constant=576, vgcd=27
[2+9*a,7+9*b,0+3*c]: grown from [1] 351+108*a+486*a^2+729*a^3+1323*b+1701*b^2+729*b^3-27*c^3=0
[5+9*a,7+9*b,0+3*c]: failure constant=468, vgcd=27
[8+9*a,7+9*b,0+3*c]: failure constant=855, vgcd=27

expanding queue[2]: 9*a + 27*a^2 + 27*a^3 + 27*b^3 - 9*c - 27*c^2 - 27*c^3 = 0 modulo [3,1,3] *9
[1+9*a,0+3*b,1+9*c]: grown from [2] 27*a+243*a^2+729*a^3+27*b^3-27*c-243*c^2-729*c^3=0 success [1,0,1],trivial(3) success [10,0,10],trivial(3) 
[4+9*a,0+3*b,1+9*c]: failure constant=63, vgcd=27
[7+9*a,0+3*b,1+9*c]: failure constant=342, vgcd=27
[1+9*a,0+3*b,4+9*c]: failure constant=-63, vgcd=27
[4+9*a,0+3*b,4+9*c]: grown from [2] 432*a+972*a^2+729*a^3+27*b^3-432*c-972*c^2-729*c^3=0 success [4,0,4],trivial(3) success [13,0,13],trivial(3) 
[7+9*a,0+3*b,4+9*c]: failure constant=279, vgcd=27
[1+9*a,0+3*b,7+9*c]: failure constant=-342, vgcd=27
[4+9*a,0+3*b,7+9*c]: failure constant=-279, vgcd=27
[7+9*a,0+3*b,7+9*c]: grown from [2] 1323*a+1701*a^2+729*a^3+27*b^3-1323*c-1701*c^2-729*c^3=0 success [7,0,7],trivial(3) success [16,0,16],trivial(3) 

expanding queue[3]: 36*a + 54*a^2 + 27*a^3 + 27*b^3 - 36*c - 54*c^2 - 27*c^3 = 0 modulo [3,1,3] *9
[2+9*a,0+3*b,2+9*c]: grown from [3] 108*a+486*a^2+729*a^3+27*b^3-108*c-486*c^2-729*c^3=0 success [2,0,2],trivial(3) success [11,0,11],trivial(3) 
[5+9*a,0+3*b,2+9*c]: failure constant=117, vgcd=27
[8+9*a,0+3*b,2+9*c]: failure constant=504, vgcd=27
[2+9*a,0+3*b,5+9*c]: failure constant=-117, vgcd=27
[5+9*a,0+3*b,5+9*c]: success [5,0,5],trivial(3) success [14,0,14],trivial(3)  675*a+1215*a^2+729*a^3+27*b^3-675*c-1215*c^2-729*c^3=0 -> [5]
[8+9*a,0+3*b,5+9*c]: failure constant=387, vgcd=27
[2+9*a,0+3*b,8+9*c]: failure constant=-504, vgcd=27
[5+9*a,0+3*b,8+9*c]: failure constant=-387, vgcd=27
[8+9*a,0+3*b,8+9*c]: grown from [3] 1728*a+1944*a^2+729*a^3+27*b^3-1728*c-1944*c^2-729*c^3=0 success [8,0,8],trivial(3) success [17,0,17],trivial(3) 

expanding queue[4]: 189 + 675*a + 1215*a^2 + 729*a^3 + 432*b + 972*b^2 + 729*b^3 - 27*c^3 = 0 modulo [3,3,3] *27
[5+27*a,4+27*b,0+9*c]: failure constant=189, vgcd=81
[14+27*a,4+27*b,0+9*c]: failure constant=2808, vgcd=81
[23+27*a,4+27*b,0+9*c]: unknown 12231+42849*a+50301*a^2+19683*a^3+1296*b+8748*b^2+19683*b^3-729*c^3=0 -> [6]
[5+27*a,13+27*b,0+9*c]: failure constant=2322, vgcd=81
[14+27*a,13+27*b,0+9*c]: grown from [1] 4941+15876*a+30618*a^2+19683*a^3+13689*b+28431*b^2+19683*b^3-729*c^3=0
[23+27*a,13+27*b,0+9*c]: failure constant=14364, vgcd=81
[5+27*a,22+27*b,0+9*c]: unknown 10773+2025*a+10935*a^2+19683*a^3+39204*b+48114*b^2+19683*b^3-729*c^3=0 -> [7]
[14+27*a,22+27*b,0+9*c]: failure constant=13392, vgcd=81
[23+27*a,22+27*b,0+9*c]: failure constant=22815, vgcd=81
[5+27*a,4+27*b,3+9*c]: unknown 162+2025*a+10935*a^2+19683*a^3+1296*b+8748*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [8]
[14+27*a,4+27*b,3+9*c]: failure constant=2781, vgcd=81
[23+27*a,4+27*b,3+9*c]: failure constant=12204, vgcd=81
[5+27*a,13+27*b,3+9*c]: failure constant=2295, vgcd=81
[14+27*a,13+27*b,3+9*c]: failure constant=4914, vgcd=81
[23+27*a,13+27*b,3+9*c]: unknown 14337+42849*a+50301*a^2+19683*a^3+13689*b+28431*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [9]
[5+27*a,22+27*b,3+9*c]: failure constant=10746, vgcd=81
[14+27*a,22+27*b,3+9*c]: unknown 13365+15876*a+30618*a^2+19683*a^3+39204*b+48114*b^2+19683*b^3-243*c-729*c^2-729*c^3=0 -> [10]
[23+27*a,22+27*b,3+9*c]: failure constant=22788, vgcd=81
[5+27*a,4+27*b,6+9*c]: failure constant=-27, vgcd=81
[14+27*a,4+27*b,6+9*c]: unknown 2592+15876*a+30618*a^2+19683*a^3+1296*b+8748*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [11]
[23+27*a,4+27*b,6+9*c]: failure constant=12015, vgcd=81
[5+27*a,13+27*b,6+9*c]: unknown 2106+2025*a+10935*a^2+19683*a^3+13689*b+28431*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [12]
[14+27*a,13+27*b,6+9*c]: failure constant=4725, vgcd=81
[23+27*a,13+27*b,6+9*c]: failure constant=14148, vgcd=81
[5+27*a,22+27*b,6+9*c]: failure constant=10557, vgcd=81
[14+27*a,22+27*b,6+9*c]: failure constant=13176, vgcd=81
[23+27*a,22+27*b,6+9*c]: unknown 22599+42849*a+50301*a^2+19683*a^3+39204*b+48114*b^2+19683*b^3-972*c-1458*c^2-729*c^3=0 -> [13]

expanding queue[5]: 675*a + 1215*a^2 + 729*a^3 + 27*b^3 - 675*c - 1215*c^2 - 729*c^3 = 0 modulo [3,3,3] *27
[5+27*a,0+9*b,5+27*c]: grown from [5] 2025*a+10935*a^2+19683*a^3+729*b^3-2025*c-10935*c^2-19683*c^3=0 success [5,0,5],trivial(3) success [32,0,32],trivial(3) 
[14+27*a,0+9*b,5+27*c]: failure constant=2619, vgcd=81
[23+27*a,0+9*b,5+27*c]: failure constant=12042, vgcd=81
[5+27*a,3+9*b,5+27*c]: failure constant=27, vgcd=81
[14+27*a,3+9*b,5+27*c]: failure constant=2646, vgcd=81
[23+27*a,3+9*b,5+27*c]: unknown 12069+42849*a+50301*a^2+19683*a^3+243*b+729*b^2+729*b^3-2025*c-10935*c^2-19683*c^3=0 -> [14]
[5+27*a,6+9*b,5+27*c]: failure constant=216, vgcd=81
[14+27*a,6+9*b,5+27*c]: unknown 2835+15876*a+30618*a^2+19683*a^3+972*b+1458*b^2+729*b^3-2025*c-10935*c^2-19683*c^3=0 -> [15]
[23+27*a,6+9*b,5+27*c]: failure constant=12258, vgcd=81
[5+27*a,0+9*b,14+27*c]: failure constant=-2619, vgcd=81
[14+27*a,0+9*b,14+27*c]: grown from [3] 15876*a+30618*a^2+19683*a^3+729*b^3-15876*c-30618*c^2-19683*c^3=0 success [14,0,14],trivial(3) success [41,0,41],trivial(3) 
[23+27*a,0+9*b,14+27*c]: failure constant=9423, vgcd=81
[5+27*a,3+9*b,14+27*c]: unknown -2592+2025*a+10935*a^2+19683*a^3+243*b+729*b^2+729*b^3-15876*c-30618*c^2-19683*c^3=0 -> [16]
[14+27*a,3+9*b,14+27*c]: failure constant=27, vgcd=81
[23+27*a,3+9*b,14+27*c]: failure constant=9450, vgcd=81
[5+27*a,6+9*b,14+27*c]: failure constant=-2403, vgcd=81
[14+27*a,6+9*b,14+27*c]: failure constant=216, vgcd=81
[23+27*a,6+9*b,14+27*c]: unknown 9639+42849*a+50301*a^2+19683*a^3+972*b+1458*b^2+729*b^3-15876*c-30618*c^2-19683*c^3=0 -> [17]
[5+27*a,0+9*b,23+27*c]: failure constant=-12042, vgcd=81
[14+27*a,0+9*b,23+27*c]: failure constant=-9423, vgcd=81
[23+27*a,0+9*b,23+27*c]: success [23,0,23],trivial(3) success [50,0,50],trivial(3)  42849*a+50301*a^2+19683*a^3+729*b^3-42849*c-50301*c^2-19683*c^3=0 -> [18]
[5+27*a,3+9*b,23+27*c]: failure constant=-12015, vgcd=81
[14+27*a,3+9*b,23+27*c]: unknown -9396+15876*a+30618*a^2+19683*a^3+243*b+729*b^2+729*b^3-42849*c-50301*c^2-19683*c^3=0 -> [19]
[23+27*a,3+9*b,23+27*c]: failure constant=27, vgcd=81
[5+27*a,6+9*b,23+27*c]: unknown -11826+2025*a+10935*a^2+19683*a^3+972*b+1458*b^2+729*b^3-42849*c-50301*c^2-19683*c^3=0 -> [20]
[14+27*a,6+9*b,23+27*c]: failure constant=-9207, vgcd=81
[23+27*a,6+9*b,23+27*c]: failure constant=216, vgcd=81
Maximum level 2 reached, queue size = 21
