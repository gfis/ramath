Expanding for base=3, reasons+features=base,similiar,evenexp showfail
exponentGCDs=[2,2], transposables={{x},{y}}
----------------
expanding queue[0]^-1:  - 9 + 15*x^2 - 7*y^2 meter=[3,3] *3
[0+3*x,0+3*y]:	unknown -> [1] -9+135*x^2-63*y^2
[1+3*x,0+3*y]:	failure constant=6, vgcd=9
[2+3*x,0+3*y]:	failure constant=51, vgcd=9
[0+3*x,1+3*y]:	failure constant=-16, vgcd=3
[1+3*x,1+3*y]:	failure constant=-1, vgcd=3
[2+3*x,1+3*y]:	failure constant=44, vgcd=3
[0+3*x,2+3*y]:	failure constant=-37, vgcd=3
[1+3*x,2+3*y]:	failure constant=-22, vgcd=3
[2+3*x,2+3*y]:	failure constant=23, vgcd=3
----------------
expanding queue[1]^0:  - 9 + 135*x^2 - 63*y^2 meter=[1,3] *9
[0+3*x,0+9*y]:	failure constant=-9, vgcd=27
[0+3*x,3+9*y]:	failure constant=-72, vgcd=27
[0+3*x,6+9*y]:	failure constant=-261, vgcd=27
Proof - queue exhausted at [2]:  - 9 + 15*x^2 - 7*y^2
