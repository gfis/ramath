TranspositionSet={[0,2,1]}
Expanding for base=2, level=2, reasons+features=base,transpose,same,similiar,evenexp showfail
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] [0,0,0] a²+b²+c²-b²*c²
-> solution [0,0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: a²+b²+c²-b²*c²
[0+2a,0+2b,0+2c]:	same 4a²+4b²+4c²-16b²*c² map {a=>a/2,b=>b/2,c=>c/2} -> [0] a²+b²+c²-b²*c²
-> solution [0,0,0],trivial(3)
[1+2a,0+2b,0+2c]:	failure constant=1, vgcd=4 [1,0,0] 4a+4a²+4b²+4c²-16b²*c²+1
[0+2a,1+2b,0+2c]:	failure constant=1, vgcd=4 [0,1,0] 4a²+4b+4b²-16b*c²-16b²*c²+1
[1+2a,1+2b,0+2c]:	failure constant=2, vgcd=4 [1,1,0] 4a+4a²+4b+4b²-16b*c²-16b²*c²+2
[0+2a,0+2b,1+2c]:	failure constant=1, vgcd=4 [0,0,1] 4a²+4c-16b²*c+4c²-16b²*c²+1
[1+2a,0+2b,1+2c]:	failure constant=2, vgcd=4 [1,0,1] 4a+4a²+4c-16b²*c+4c²-16b²*c²+2
[0+2a,1+2b,1+2c]:	failure constant=1, vgcd=4 [0,1,1] 4a²-16b*c-16b²*c-16b*c²-16b²*c²+1
[1+2a,1+2b,1+2c]:	failure constant=2, vgcd=4 [1,1,1] 4a+4a²-16b*c-16b²*c-16b*c²-16b²*c²+2
endexp[0]
Proof [1] mod 2: a²+b²+c²-b²*c²
