Expanding for base 3, transposables =    0   1

expanding queue[0]: 2 + x^2 - y^3 = 0 modulo [3,3] *3
[0+3*x,0+3*y]: failure constant=2, vgcd=9
[1+3*x,0+3*y]: unknown 3+6*x+9*x^2-27*y^3=0 -> [1]
[2+3*x,0+3*y]: success [5,3],NONTRIVIAL  6+12*x+9*x^2-27*y^3=0 -> [2]
[0+3*x,1+3*y]: failure constant=1, vgcd=9
[1+3*x,1+3*y]: failure constant=2, vgcd=3
[2+3*x,1+3*y]: failure constant=5, vgcd=3
[0+3*x,2+3*y]: failure constant=-6, vgcd=9
[1+3*x,2+3*y]: failure constant=-5, vgcd=3
[2+3*x,2+3*y]: failure constant=-2, vgcd=3

expanding queue[1]: 3 + 6*x + 9*x^2 - 27*y^3 = 0 modulo [3,1] *9
[1+9*x,0+3*y]: failure constant=3, vgcd=9
[4+9*x,0+3*y]: unknown, grown from [1]*6,12,9,1 18+72*x+81*x^2-27*y^3=0 -> [3]
[7+9*x,0+3*y]: failure constant=51, vgcd=9

expanding queue[2]: 6 + 12*x + 9*x^2 - 27*y^3 = 0 modulo [3,1] *9
[2+9*x,0+3*y]: failure constant=6, vgcd=9
[5+9*x,0+3*y]: success [5,3],NONTRIVIAL  27+90*x+81*x^2-27*y^3=0 -> [4]
[8+9*x,0+3*y]: failure constant=66, vgcd=9

expanding queue[3]: 18 + 72*x + 81*x^2 - 27*y^3 = 0 modulo [3,3] *27
[4+27*x,0+9*y]: failure constant=18, vgcd=27
[13+27*x,0+9*y]: failure constant=171, vgcd=27
[22+27*x,0+9*y]: unknown, grown from [1]*162,198,81,27 486+1188*x+729*x^2-729*y^3=0 -> [5]
[4+27*x,3+9*y]: failure constant=-9, vgcd=27
[13+27*x,3+9*y]: failure constant=144, vgcd=27
[22+27*x,3+9*y]: unknown 459+1188*x+729*x^2-243*y-729*y^2-729*y^3=0 -> [6]
[4+27*x,6+9*y]: failure constant=-198, vgcd=27
[13+27*x,6+9*y]: failure constant=-45, vgcd=27
[22+27*x,6+9*y]: unknown 270+1188*x+729*x^2-972*y-1458*y^2-729*y^3=0 -> [7]

expanding queue[4]: 27 + 90*x + 81*x^2 - 27*y^3 = 0 modulo [3,3] *27
[5+27*x,0+9*y]: unknown, grown from [4]*1,3,9,27 27+270*x+729*x^2-729*y^3=0 -> [8]
[14+27*x,0+9*y]: failure constant=198, vgcd=27
[23+27*x,0+9*y]: failure constant=531, vgcd=27
[5+27*x,3+9*y]: success [5,3],NONTRIVIAL  270*x+729*x^2-243*y-729*y^2-729*y^3=0 -> [9]
[14+27*x,3+9*y]: failure constant=171, vgcd=27
[23+27*x,3+9*y]: failure constant=504, vgcd=27
[5+27*x,6+9*y]: unknown -189+270*x+729*x^2-972*y-1458*y^2-729*y^3=0 -> [10]
[14+27*x,6+9*y]: failure constant=-18, vgcd=27
[23+27*x,6+9*y]: failure constant=315, vgcd=27
Maximum level 2 reached, queue size = 11
