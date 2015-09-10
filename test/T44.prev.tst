TranspositionSet={[0,2,1]}
ExponentGCDs=[2,2,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp showfail
Refined variables=a,b,c
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a^2+b^2+c^2-b^2*c^2
[0+2a,0+2b,0+2c]:	same 4a^2+4b^2+4c^2-16b^2*c^2 map {a=>a/2,b=>b/2,c=>c/2} -> [0] a^2+b^2+c^2-b^2*c^2
-> solution [0,0,0],trivial(3)
[1+2a,0+2b,0+2c]:	failure constant=1, vgcd=4
[0+2a,1+2b,0+2c]:	failure constant=1, vgcd=4
[1+2a,1+2b,0+2c]:	failure constant=2, vgcd=4
[0+2a,0+2b,1+2c]:	failure constant=1, vgcd=4
[1+2a,0+2b,1+2c]:	failure constant=2, vgcd=4
[0+2a,1+2b,1+2c]:	failure constant=1, vgcd=4
[1+2a,1+2b,1+2c]:	failure constant=2, vgcd=4
Proof at [1]: a^2+b^2+c^2-b^2*c^2
