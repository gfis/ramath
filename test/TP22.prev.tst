TranspositionSet={[1,0,2]}
isHomogeneous
Expanding for base=2, level=4, reasons+features=base,transpose,primitive,same,similiar,evenexp invall,norm,showfail
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] [0,0,0] x²+y²-3z²
-> solution [0,0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-3z²
[0+2x,0+2y,0+2z]:	non-primitive
-> solution [0,0,0],trivial(3)
[1+2x,0+2y,0+2z]:	failure constant=1, vgcd=4 [1,0,0] 4x+4x²+4y²-12z²+1
[0+2x,1+2y,0+2z]:	failure constant=1, vgcd=4 [0,1,0] 4x²+4y+4y²-12z²+1
[1+2x,1+2y,0+2z]:	failure constant=1, vgcd=2 [1,1,0] 2x+2x²+2y+2y²-6z²+1
[0+2x,0+2y,1+2z]:	failure constant=-3, vgcd=4 [0,0,1] 4x²+4y²-12z-12z²-3
[1+2x,0+2y,1+2z]:	failure constant=-1, vgcd=2 [1,0,1] 2x+2x²+2y²-6z-6z²-1
[0+2x,1+2y,1+2z]:	failure constant=-1, vgcd=2 [0,1,1] 2x²+2y+2y²-6z-6z²-1
[1+2x,1+2y,1+2z]:	failure constant=-1, vgcd=4 [1,1,1] 4x+4x²+4y+4y²-12z-12z²-1
endexp[0]
Proof [1] mod 2: x²+y²-3z²
