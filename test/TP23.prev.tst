TranspositionSet={[1,0,2]}
Expanding for base=2, level=3, reasons+features=base,transpose,same,similiar,evenexp invall,norm,showfail
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-4z-3
----------------
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-4z-3
[0+2x,0+2y,0+2z]:	failure constant=-3, vgcd=4 [0,0,0] 4x²+4y²-8z-3
[1+2x,0+2y,0+2z]:	failure constant=-1, vgcd=2 [1,0,0] 2x+2x²+2y²-4z-1
[0+2x,1+2y,0+2z]:	failure constant=-1, vgcd=2 [0,1,0] 2x²+2y+2y²-4z-1
[1+2x,1+2y,0+2z]:	failure constant=-1, vgcd=4 [1,1,0] 4x+4x²+4y+4y²-8z-1
[0+2x,0+2y,1+2z]:	failure constant=-7, vgcd=4 [0,0,1] 4x²+4y²-8z-7
[1+2x,0+2y,1+2z]:	failure constant=-3, vgcd=2 [1,0,1] 2x+2x²+2y²-4z-3
[0+2x,1+2y,1+2z]:	failure constant=-3, vgcd=2 [0,1,1] 2x²+2y+2y²-4z-3
[1+2x,1+2y,1+2z]:	failure constant=-5, vgcd=4 [1,1,1] 4x+4x²+4y+4y²-8z-5
Proof [1] mod 2: x²+y²-4z-3
