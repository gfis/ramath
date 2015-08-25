Expanding for base=3, transposables={{a},{b},{c}}, reasons+features=base,similiar igtriv,norm, exponentParities=[1,1,1]
----------------
expanding queue[0]^-1: a^3 + 3*b^3 - 9*c^3 meter=[3,1,1] *3
[0+3*a,0+1*b,0+1*c]: unknown 9*a^3+b^3-3*c^3 -> [1]
----------------
expanding queue[1]^0: 9*a^3 + b^3 - 3*c^3 meter=[1,3,1] *9
[0+3*a,0+3*b,0+1*c]: unknown 3*a^3+9*b^3-c^3 -> [2]
----------------
expanding queue[2]^1: 3*a^3 + 9*b^3 - c^3 meter=[1,1,3] *27
[0+3*a,0+3*b,0+3*c]: similiar to [0], same  a^3+3*b^3-9*c^3
Proof - queue exhausted, queue size = 3
