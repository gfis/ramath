TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar showfail
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x²+y²-4x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x²+y²-4x*y*z+z²
[0+2x,0+2y,0+2z]:	same 4x²+4y²-32x*y*z+4z² map {x=>x/2,y=>y/2,z=>z/2} -> [0] x²+y²-4x*y*z+z²
-> solution [0,0,0],trivial(3)
[1+2x,0+2y,0+2z]:	failure constant=1, vgcd=4
[0+2x,1+2y,0+2z]:	failure constant=1, vgcd=4
[1+2x,1+2y,0+2z]:	failure constant=2, vgcd=4
[0+2x,0+2y,1+2z]:	failure constant=1, vgcd=4
[1+2x,0+2y,1+2z]:	failure constant=2, vgcd=4
[0+2x,1+2y,1+2z]:	failure constant=2, vgcd=4
[1+2x,1+2y,1+2z]:	failure constant=-1, vgcd=4
Proof [1] mod 2: x²+y²-4x*y*z+z²