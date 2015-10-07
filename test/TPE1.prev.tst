ExponentGCDs=[2,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp,accel norm,showfail
Refined variables=x,y
[0+3x,0+3y]:	unknown accelerated by y*3 x*3 -> [1] -9+15x^2-7y^2
----------------
expanding queue[0]^-1,meter=[2,2]*2: -9+15x^2-7y^2
[0+6x,0+6y]:	failure constant=-1, vgcd=4
[3+6x,0+6y]:	failure constant=7, vgcd=2
[0+6x,3+6y]:	unknown -> [1] -2+15x^2-7y-7y^2
[3+6x,3+6y]:	failure constant=7, vgcd=4
----------------
expanding queue[1]^0,meter=[2,2]*4: -2+15x^2-7y-7y^2
[0+12x,3+12y]:	unknown -> [2] -1+30x^2-7y-14y^2
[6+12x,3+12y]:	failure constant=13, vgcd=2
[0+12x,9+12y]:	negative-1 [2] by {y=>-y-1}
[6+12x,9+12y]:	failure constant=-1, vgcd=2
----------------
expanding queue[2]^1,meter=[1,2]*8: -1+30x^2-7y-14y^2
[0+12x,3+24y]:	failure constant=-1, vgcd=2
[0+12x,15+24y]:	unknown -> [3] -11+15x^2-35y-28y^2
----------------
expanding queue[3]^2,meter=[2,2]*16: -11+15x^2-35y-28y^2
[0+24x,15+48y]:	failure constant=-11, vgcd=2
[12+24x,15+96y]:	unknown accelerated by y*2 -> [4] 2+30x+30x^2-35y-56y^2
[0+24x,39+48y]:	unknown -> [5] -37+30x^2-91y-56y^2
[12+24x,39+48y]:	failure constant=-59, vgcd=2
----------------
expanding queue[4]^3,meter=[1,2]*32: 2+30x+30x^2-35y-56y^2
[12+24x,15+192y]:	unknown -> [6] 1+15x+15x^2-70y-448y^2
[12+24x,111+192y]:	unknown -> [7] -146+15x+15x^2-518y-448y^2
expanding queue[5]^3,meter=[1,2]*32: -37+30x^2-91y-56y^2
[0+24x,39+96y]:	failure constant=-37, vgcd=2
[0+24x,87+96y]:	unknown -> [8] -92+15x^2-203y-112y^2
----------------
expanding queue[6]^4,meter=[2,1]*64: 1+15x+15x^2-70y-448y^2
[12+48x,15+192y]:	failure constant=1, vgcd=2
[36+48x,15+192y]:	failure constant=31, vgcd=2
expanding queue[7]^4,meter=[2,1]*64: -146+15x+15x^2-518y-448y^2
[12+48x,111+192y]:	unknown -> [9] -73+15x+30x^2-259y-224y^2
[36+48x,111+192y]:	negative-1 [9] by {x=>-x-1}
expanding queue[8]^5,meter=[2,2]*64: -92+15x^2-203y-112y^2
[0+48x,87+384y]:	unknown accelerated by y*2 -> [10] -46+30x^2-203y-224y^2
[24+48x,87+192y]:	failure constant=-77, vgcd=2
[0+48x,183+192y]:	failure constant=-407, vgcd=2
[24+48x,183+384y]:	unknown accelerated by y*2 -> [11] -196+30x+30x^2-427y-224y^2
Maximum level 5 [12] mod 2: -9+15x^2-7y^2
