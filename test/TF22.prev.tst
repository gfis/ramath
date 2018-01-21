TranspositionSet={[1,0]}
considerNonPrimitive
Expanding for base=2, level=5, reasons+features=base,transpose,primitive,same,similiar norm,showfail
Refined variables=a,b
[0+1a,0+1b]:	unknown -> [1] [0,0] a²-4a*b+b²
-> solution [0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: a²-4a*b+b²
[0+2a,0+2b]:	non-primitive
-> solution [0,0],trivial(3)
[1+2a,0+2b]:	failure constant=1, vgcd=4 [1,0] 4a+4a²-8b-16a*b+4b²+1
[0+2a,1+2b]:	failure constant=-1, vgcd=4 [0,1] 8a-4a²-4b+16a*b-4b²-1
[1+2a,1+2b]:	failure constant=1, vgcd=2 [1,1] 2a-2a²+2b+8a*b-2b²+1
endexp[0]
Proof [1] mod 2: a²-4a*b+b²
