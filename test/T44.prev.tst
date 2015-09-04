TranspositionSet={[0,2,1]}
ExponentGCDs=[2,2,2]
Expanding for base=2, reasons+features=base,transpose,same,similiar,evenexp 
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a^2 + b^2 + c^2 - b^2*c^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [1] 4*a^2+4*b^2+4*c^2-16*b^2*c^2
----------------
expanding queue[1]^0,meter=[2,2,2]*4: 4*a^2 + 4*b^2 + 4*c^2 - 16*b^2*c^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [2] 16*a^2+16*b^2+16*c^2-256*b^2*c^2
----------------
expanding queue[2]^1,meter=[2,2,2]*8: 16*a^2 + 16*b^2 + 16*c^2 - 256*b^2*c^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [3] 64*a^2+64*b^2+64*c^2-4096*b^2*c^2
Maximum level 2 reached at [4]: a^2 + b^2 + c^2 - b^2*c^2
