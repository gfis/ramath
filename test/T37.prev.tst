ExponentGCDs=[1,1]
Expanding for base=2, reasons+features=base,same,similiar norm
Refined variables=p,q
----------------
expanding queue[0]^-1,meter=[2,2]*2: -p^2+p^3-2p*q-q^2-q^5
solution [0,0],trivial(3)
[0+2p,0+2q]:	unknown -> [1] -p^2+2p^3-2p*q-q^2-8q^5
[1+2p,0+2q]:	unknown -> [2] p+4p^2+4p^3-2q-4p*q-2q^2-16q^5
[0+2p,1+2q]:	unknown -> [3] -1-2p-2p^2+4p^3-7q-4p*q-22q^2-40q^3-40q^4-16q^5
[1+2p,1+2q]:	unknown -> [4] -2-p+4p^2+4p^3-9q-4p*q-22q^2-40q^3-40q^4-16q^5
----------------
expanding queue[1]^0,meter=[2,2]*4: -p^2+2p^3-2p*q-q^2-8q^5
solution [0,0],trivial(3)
[0+4p,0+4q]:	unknown -> [5] -p^2+4p^3-2p*q-q^2-64q^5
expanding queue[2]^0,meter=[2,1]*4: p+4p^2+4p^3-2q-4p*q-2q^2-16q^5
solution [1,0],trivial(1)
[1+4p,0+2q]:	unknown -> [6] p+8p^2+16p^3-q-4p*q-q^2-8q^5
expanding queue[3]^0,meter=[1,2]*4: -1-2p-2p^2+4p^3-7q-4p*q-22q^2-40q^3-40q^4-16q^5
[0+2p,3+4q]:	unknown -> [7] -63-3p-p^2+2p^3-411q-4p*q-1084q^2-1440q^3-960q^4-256q^5
expanding queue[4]^0,meter=[2,2]*4: -2-p+4p^2+4p^3-9q-4p*q-22q^2-40q^3-40q^4-16q^5
[1+4p,1+4q]:	unknown -> [8] -1-p+8p^2+16p^3-9q-8p*q-44q^2-160q^3-320q^4-256q^5
[3+4p,3+4q]:	unknown -> [9] -63+15p+32p^2+16p^3-417q-8p*q-1084q^2-1440q^3-960q^4-256q^5
Maximum level 1 reached at [10]: -p^2+p^3-2p*q-q^2-q^5
