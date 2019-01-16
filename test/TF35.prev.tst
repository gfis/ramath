considerNonPrimitive
Expanding for base=2, level=4, reasons+features=base,primitive,same,similiar invall,norm,showfail
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] [0,0,0] a³+2b³-4c³
-> solution [0,0,0],trivial(3)
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: a³+2b³-4c³
[0+2a,0+2b,0+2c]:	non-primitive
-> solution [0,0,0],trivial(3)
[1+2a,0+2b,0+2c]:	failure constant=1, vgcd=2 [1,0,0] 6a+12a²+8a³+16b³-32c³+1
[0+2a,1+2b,0+2c]:	failure constant=1, vgcd=2 [0,1,0] 4a³+6b+12b²+8b³-16c³+1
[1+2a,1+2b,0+2c]:	failure constant=3, vgcd=2 [1,1,0] 6a+12a²+8a³+12b+24b²+16b³-32c³+3
[0+2a,0+2b,1+2c]:	failure constant=-1, vgcd=2 [0,0,1] 2a³+4b³-6c-12c²-8c³-1
[1+2a,0+2b,1+2c]:	failure constant=-3, vgcd=2 [1,0,1] 6a+12a²+8a³+16b³-24c-48c²-32c³-3
[0+2a,1+2b,1+2c]:	failure constant=-1, vgcd=2 [0,1,1] 4a³+6b+12b²+8b³-12c-24c²-16c³-1
[1+2a,1+2b,1+2c]:	failure constant=-1, vgcd=2 [1,1,1] 6a+12a²+8a³+12b+24b²+16b³-24c-48c²-32c³-1
endexp[0]
Proof [1] mod 2: a³+2b³-4c³
