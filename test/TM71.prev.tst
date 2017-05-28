isHomogeneous
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,primitive,same,similiar invall,norm,showfail
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] [0,0,0] a³+2b³-6a*b*c+4c³
-> solution [0,0,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: a³+2b³-6a*b*c+4c³
[0+2a,0+2b,0+2c]:	non-primitive
-> solution [0,0,0],trivial(3)
[1+2a,0+2b,0+2c]:	failure constant=1, vgcd=2 [1,0,0] 6a+12a²+8a³+16b³-24b*c-48a*b*c+32c³+1
[0+2a,1+2b,0+2c]:	failure constant=1, vgcd=2 [0,1,0] 4a³+6b+12b²+8b³-12a*c-24a*b*c+16c³+1
[1+2a,1+2b,0+2c]:	failure constant=3, vgcd=2 [1,1,0] 6a+12a²+8a³+12b+24b²+16b³-12c-24a*c-24b*c-48a*b*c+32c³+3
[0+2a,0+2b,1+2c]:	failure constant=1, vgcd=2 [0,0,1] 2a³-6a*b+4b³+6c-12a*b*c+12c²+8c³+1
[1+2a,0+2b,1+2c]:	failure constant=5, vgcd=2 [1,0,1] 6a+12a²+8a³-12b-24a*b+16b³+24c-24b*c-48a*b*c+48c²+32c³+5
[0+2a,1+2b,1+2c]:	failure constant=-3, vgcd=2 [0,1,1] 6a-4a³-6b+12a*b-12b²-8b³-12c+12a*c+24a*b*c-24c²-16c³-3
[1+2a,1+2b,1+2c]:	failure constant=-1, vgcd=2 [1,1,1] 6a-12a²-8a³+24a*b-24b²-16b³-12c+24a*c+24b*c+48a*b*c-48c²-32c³-1
Proof [1] mod 2: a³+2b³-6a*b*c+4c³
