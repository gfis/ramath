ExponentGCDs=[3,3,3,3]
Expanding for base=3, reasons+features=base,similiar 
----------------
expanding queue[0]^-1,meter=[3,3,3,1]*3: a^3 + 2*b^3 + 4*c^3 - 9*d^3
solution [0,0,0,0],trivial(3)
[0,0,0,0]:	unknown -> [1] 27*a^3+54*b^3+108*c^3-9*d^3
----------------
expanding queue[1]^0,meter=[1,1,1,3]*9: 27*a^3 + 54*b^3 + 108*c^3 - 9*d^3
solution [0,0,0,0],trivial(3)
[0,0,0,0]:	similiar   [0], same  27*a^3+54*b^3+108*c^3-243*d^3
Proof - queue exhausted at [2]: a^3 + 2*b^3 + 4*c^3 - 9*d^3
