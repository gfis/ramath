ExponentGCDs=[1,1]
Expanding for base=2, reasons+features=base,same,similiar norm
Refined variables=p,q
[0+1p,0+1q]:	unknown -> [1] -p²+p³-2p*q-q²-q⁵
-> solution [0,0],trivial(3) [1,0],trivial(1)
----------------
expanding queue[0]^-1,meter=[2,2]*2: -p²+p³-2p*q-q²-q⁵
[0+2p,0+2q]:	unknown -> [1] -p²+2p³-2p*q-q²-8q⁵
-> solution [0,0],trivial(3)
[1+2p,0+2q]:	unknown -> [2] p+4p²+4p³-2q-4p*q-2q²-16q⁵
-> solution [1,0],trivial(1)
[0+2p,1+2q]:	unknown -> [3] -2p-2p²+4p³-7q-4p*q-22q²-40q³-40q⁴-16q⁵-1
[1+2p,1+2q]:	unknown -> [4] -p+4p²+4p³-9q-4p*q-22q²-40q³-40q⁴-16q⁵-2
----------------
expanding queue[1]^0,meter=[2,2]*4: -p²+2p³-2p*q-q²-8q⁵
[0+4p,0+4q]:	unknown -> [5] -p²+4p³-2p*q-q²-64q⁵
-> solution [0,0],trivial(3)
expanding queue[2]^0,meter=[2,1]*4: p+4p²+4p³-2q-4p*q-2q²-16q⁵
[1+4p,0+2q]:	unknown -> [6] p+8p²+16p³-q-4p*q-q²-8q⁵
-> solution [1,0],trivial(1)
expanding queue[3]^0,meter=[1,2]*4: -2p-2p²+4p³-7q-4p*q-22q²-40q³-40q⁴-16q⁵-1
[0+2p,3+4q]:	unknown -> [7] -3p-p²+2p³-411q-4p*q-1084q²-1440q³-960q⁴-256q⁵-63
expanding queue[4]^0,meter=[2,2]*4: -p+4p²+4p³-9q-4p*q-22q²-40q³-40q⁴-16q⁵-2
[1+4p,1+4q]:	unknown -> [8] -p+8p²+16p³-9q-8p*q-44q²-160q³-320q⁴-256q⁵-1
[3+4p,3+4q]:	unknown -> [9] 15p+32p²+16p³-417q-8p*q-1084q²-1440q³-960q⁴-256q⁵-63
-> solution [7,3],NONTRIVIAL
Maximum level 1 [10] mod 2: -p²+p³-2p*q-q²-q⁵
