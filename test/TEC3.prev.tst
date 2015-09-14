ExponentGCDs=[1,1]
Expanding for base=2, reasons+features=base,same,similiar showfail
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] 2+2x+x^2-3y-3y^2-y^3
----------------
expanding queue[0]^-1,meter=[2,2]*2: 2+2x+x^2-3y-3y^2-y^3
[0+2x,0+2y]:	same 2+4x+4x^2-6y-12y^2-8y^3 map {x=>x/2,y=>y/2} -> [0] 2+2x+x^2-3y-3y^2-y^3
[1+2x,0+2y]:	failure constant=5, vgcd=2
[0+2x,1+2y]:	failure constant=-5, vgcd=4
[1+2x,1+2y]:	failure constant=-2, vgcd=4
Proof [1] mod 2: 2+2x+x^2-3y-3y^2-y^3
