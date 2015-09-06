ExponentGCDs=[3,3,3,3]
Expanding for base=3, reasons+features=base,same,similiar 
Refined variables=a,b,c,d
----------------
expanding queue[0]^-1,meter=[3,3,3,1]*3: a^3+2b^3+4c^3-9d^3
solution [0,0,0,0],trivial(3)
[0+3a,0+3b,0+3c,0+1d]:	unknown -> [1] 27a^3+54b^3+108c^3-9d^3
----------------
expanding queue[1]^0,meter=[1,1,1,3]*9: 27a^3+54b^3+108c^3-9d^3
solution [0,0,0,0],trivial(3)
[0+3a,0+3b,0+3c,0+3d]:	same form as 27a^3+54b^3+108c^3-243d^3
Proof - queue exhausted at [2]: a^3+2b^3+4c^3-9d^3
