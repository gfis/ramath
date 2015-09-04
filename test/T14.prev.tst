ExponentGCDs=[3,3,3]
Expanding for base=3, reasons+features=base,similiar igtriv,norm
----------------
expanding queue[0]^-1,meter=[3,1,1]*3: a^3 + 3*b^3 - 9*c^3
[0,0,0]:	unknown -> [1] 9*a^3+b^3-3*c^3
----------------
expanding queue[1]^0,meter=[1,3,1]*9: 9*a^3 + b^3 - 3*c^3
[0,0,0]:	unknown -> [2] 3*a^3+9*b^3-c^3
----------------
expanding queue[2]^1,meter=[1,1,3]*27: 3*a^3 + 9*b^3 - c^3
[0,0,0]:	similiar   [0], same  a^3+3*b^3-9*c^3
Proof - queue exhausted at [3]: a^3 + 3*b^3 - 9*c^3
