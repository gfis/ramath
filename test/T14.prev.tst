ExponentGCDs=[3,3,3]
Expanding for base=3, reasons+features=base,same,similiar igtriv,norm
Refined variables=a,b,c
----------------
expanding queue[0]^-1,meter=[3,1,1]*3: a^3+3b^3-9c^3
[0+3a,0+1b,0+1c]:	unknown -> [1] 9a^3+b^3-3c^3
----------------
expanding queue[1]^0,meter=[1,3,1]*9: 9a^3+b^3-3c^3
[0+3a,0+3b,0+1c]:	unknown -> [2] 3a^3+9b^3-c^3
----------------
expanding queue[2]^1,meter=[1,1,3]*27: 3a^3+9b^3-c^3
[0+3a,0+3b,0+3c]:	same form as a^3+3b^3-9c^3
Proof - queue exhausted at [3]: a^3+3b^3-9c^3
