TranspositionSet={[1,0]}
ExponentGCDs=[2,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp showfail
Refined variables=a,b
[0+1a,0+1b]:	unknown -> [1] [0,0] a²+b²-2
-> solution [1,1],trivial(2)
----------------
expanding queue[0]^-1,meter=[2,2]: a²+b²-2
[0+2a,0+2b]:	failure constant=-2, vgcd=4 [0,0] 4a²+4b²-2
[1+2a,0+2b]:	failure constant=-1, vgcd=4 [1,0] 4a+4a²+4b²-1
[0+2a,1+2b]:	failure constant=-1, vgcd=4 [0,1] 4a²+4b+4b²-1
[1+2a,1+2b]:	failure biased [1,1] 4a+4a²+4b+4b²
Proof [1] mod 2: a²+b²-2
