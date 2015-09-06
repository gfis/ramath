ExponentGCDs=[2,2]
Expanding for base=3, reasons+features=base,same,similiar,evenexp showfail
Refined variables=x,y
----------------
expanding queue[0]^-1,meter=[3,3]*3: -9+15x^2-7y^2
[0+3x,0+3y]:	unknown -> [1] -9+135x^2-63y^2
[1+3x,0+3y]:	failure constant=6, vgcd=9
[2+3x,0+3y]:	failure constant=51, vgcd=9
[0+3x,1+3y]:	failure constant=-16, vgcd=3
[1+3x,1+3y]:	failure constant=-1, vgcd=3
[2+3x,1+3y]:	failure constant=44, vgcd=3
[0+3x,2+3y]:	failure constant=-37, vgcd=3
[1+3x,2+3y]:	failure constant=-22, vgcd=3
[2+3x,2+3y]:	failure constant=23, vgcd=3
----------------
expanding queue[1]^0,meter=[1,3]*9: -9+135x^2-63y^2
[0+3x,0+9y]:	failure constant=-9, vgcd=27
[0+3x,3+9y]:	failure constant=-72, vgcd=27
[0+3x,6+9y]:	failure constant=-261, vgcd=27
Proof - queue exhausted at [2]: -9+15x^2-7y^2
