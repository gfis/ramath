Expanding for base=2, reasons+features=base,similiar norm
exponentGCDs=[1,1], transposables={{p},{q}}
----------------
expanding queue[0]^-1,meter=[2,2]*2:  - p^2 + p^3 - 2*p*q - q^2 - q^5
solution [0,0],trivial(3)
[0,0]:	unknown -> [1] -p^2+2*p^3-2*p*q-q^2-8*q^5
[1,0]:	unknown -> [2] p+4*p^2+4*p^3-2*q-4*p*q-2*q^2-16*q^5
[0,1]:	unknown -> [3] -1-2*p-2*p^2+4*p^3-7*q-4*p*q-22*q^2-40*q^3-40*q^4-16*q^5
[1,1]:	unknown -> [4] -2-p+4*p^2+4*p^3-9*q-4*p*q-22*q^2-40*q^3-40*q^4-16*q^5
----------------
expanding queue[1]^0,meter=[2,2]*4:  - p^2 + 2*p^3 - 2*p*q - q^2 - 8*q^5
solution [0,0],trivial(3)
[0,0]:	unknown -> [5] -p^2+4*p^3-2*p*q-q^2-64*q^5
expanding queue[2]^0,meter=[2,1]*4: p + 4*p^2 + 4*p^3 - 2*q - 4*p*q - 2*q^2 - 16*q^5
solution [1,0],trivial(1)
[1,0]:	unknown -> [6] p+8*p^2+16*p^3-q-4*p*q-q^2-8*q^5
expanding queue[3]^0,meter=[1,2]*4:  - 1 - 2*p - 2*p^2 + 4*p^3 - 7*q - 4*p*q - 22*q^2 - 40*q^3 - 40*q^4 - 16*q^5
[0,3]:	unknown -> [7] -63-3*p-p^2+2*p^3-411*q-4*p*q-1084*q^2-1440*q^3-960*q^4-256*q^5
expanding queue[4]^0,meter=[2,2]*4:  - 2 - p + 4*p^2 + 4*p^3 - 9*q - 4*p*q - 22*q^2 - 40*q^3 - 40*q^4 - 16*q^5
[1,1]:	unknown -> [8] -1-p+8*p^2+16*p^3-9*q-8*p*q-44*q^2-160*q^3-320*q^4-256*q^5
[3,3]:	unknown -> [9] -63+15*p+32*p^2+16*p^3-417*q-8*p*q-1084*q^2-1440*q^3-960*q^4-256*q^5
Maximum level 1 reached at [10]:  - p^2 + p^3 - 2*p*q - q^2 - q^5
