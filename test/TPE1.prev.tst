ExponentGCDs=[2,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp,accel norm,showfail
Refined variables=x,y
[0+3x,0+3y]:	unknown accelerated by y*3 x*3 -> [1] 15x²-7y²-9
----------------
expanding queue[0]^-1,meter=[2,2]: 15x²-7y²-9
[0+6x,0+6y]:	failure constant=-1, vgcd=4
[3+6x,0+6y]:	failure constant=7, vgcd=2
[0+6x,3+6y]:	unknown -> [1] 15x²-7y-7y²-2
[3+6x,3+6y]:	failure constant=7, vgcd=4
----------------
expanding queue[1]^0,meter=[2,2]: 15x²-7y-7y²-2
[0+12x,3+12y]:	unknown -> [2] 30x²-7y-14y²-1
[6+12x,3+12y]:	failure constant=13, vgcd=2
[0+12x,9+12y]:	negative-1 [2] by {y=>-y-1}
[6+12x,9+12y]:	failure constant=-1, vgcd=2
----------------
expanding queue[2]^1,meter=[1,2]: 30x²-7y-14y²-1
[0+12x,3+24y]:	failure constant=-1, vgcd=2
[0+12x,15+24y]:	unknown -> [3] 15x²-35y-28y²-11
----------------
expanding queue[3]^2,meter=[2,2]: 15x²-35y-28y²-11
[0+24x,15+48y]:	failure constant=-11, vgcd=2
[12+24x,15+96y]:	unknown accelerated by y*2 -> [4] 30x+30x²-35y-56y²+2
[0+24x,39+48y]:	unknown -> [5] 30x²-91y-56y²-37
[12+24x,39+48y]:	failure constant=-59, vgcd=2
----------------
expanding queue[4]^3,meter=[1,2]: 30x+30x²-35y-56y²+2
[12+24x,15+192y]:	unknown -> [6] 15x+15x²-70y-448y²+1
[12+24x,111+192y]:	unknown -> [7] 15x+15x²-518y-448y²-146
expanding queue[5]^3,meter=[1,2]: 30x²-91y-56y²-37
[0+24x,39+96y]:	failure constant=-37, vgcd=2
[0+24x,87+96y]:	unknown -> [8] 15x²-203y-112y²-92
----------------
expanding queue[6]^4,meter=[2,1]: 15x+15x²-70y-448y²+1
[12+48x,15+192y]:	failure constant=1, vgcd=2
[36+48x,15+192y]:	failure constant=31, vgcd=2
expanding queue[7]^4,meter=[2,1]: 15x+15x²-518y-448y²-146
[12+48x,111+192y]:	unknown -> [9] 15x+30x²-259y-224y²-73
[36+48x,111+192y]:	negative-1 [9] by {x=>-x-1}
expanding queue[8]^5,meter=[2,2]: 15x²-203y-112y²-92
[0+48x,87+384y]:	unknown accelerated by y*2 -> [10] 30x²-203y-224y²-46
[24+48x,87+192y]:	failure constant=-77, vgcd=2
[0+48x,183+192y]:	failure constant=-407, vgcd=2
[24+48x,183+384y]:	unknown accelerated by y*2 -> [11] 30x+30x²-427y-224y²-196
Maximum level 5 [12] mod 2: 15x²-7y²-9
