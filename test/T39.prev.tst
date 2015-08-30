Expanding for base=3, reasons+features=base,similiar,similiar
exponentGCDs=[3,3,3,3], transposables={{a},{b},{c},{d}}
----------------
expanding queue[0]^-1: a^3 + 2*b^3 + 4*c^3 - 9*d^3 meter=[3,3,3,1] *3
solution [0,0,0,0],trivial(3)
[0+3*a,0+3*b,0+3*c,0+1*d]:	unknown -> [1] 27*a^3+54*b^3+108*c^3-9*d^3
----------------
expanding queue[1]^0: 27*a^3 + 54*b^3 + 108*c^3 - 9*d^3 meter=[1,1,1,3] *9
solution [0,0,0,0],trivial(3)
[0+3*a,0+3*b,0+3*c,0+3*d]:	similiar to [0], same  27*a^3+54*b^3+108*c^3-243*d^3
Proof - queue exhausted at [2]: a^3 + 2*b^3 + 4*c^3 - 9*d^3
