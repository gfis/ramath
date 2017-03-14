ExponentGCDs=[2,2]
Expanding for base=3, reasons+features=base,same,similiar,evenexp showfail
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] [0,0] 15x²-7y²-9
----------------
expanding queue[0]^-1,meter=[3,3]: 15x²-7y²-9
[0+3x,0+3y]:	same 135x²-63y²-9 map {x=>x/3,y=>y/3} -> [0] 15x²-7y²-9
[1+3x,0+3y]:	failure constant=6, vgcd=9 [1,0] 90x+135x²-63y²+6
[2+3x,0+3y]:	failure constant=51, vgcd=9 [2,0] 180x+135x²-63y²+51
[0+3x,1+3y]:	failure constant=-16, vgcd=3 [0,1] 135x²-42y-63y²-16
[1+3x,1+3y]:	failure constant=-1, vgcd=3 [1,1] 90x+135x²-42y-63y²-1
[2+3x,1+3y]:	failure constant=44, vgcd=3 [2,1] 180x+135x²-42y-63y²+44
[0+3x,2+3y]:	failure constant=-37, vgcd=3 [0,2] 135x²-84y-63y²-37
[1+3x,2+3y]:	failure constant=-22, vgcd=3 [1,2] 90x+135x²-84y-63y²-22
[2+3x,2+3y]:	failure constant=23, vgcd=3 [2,2] 180x+135x²-84y-63y²+23
Proof [1] mod 3: 15x²-7y²-9
