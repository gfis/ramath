considerNonPrimitive
Expanding for base=3, level=3, reasons+features=base,primitive,same,similiar igtriv,norm
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] [0,0,0] a³+3b³-9c³
---------------- level 0
expanding queue[0]^-1,meter=[3,1,1]: a³+3b³-9c³
[0+3a,0+1b,0+1c]:	unknown -> [1] [0,0,0] 9a³+b³-3c³
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[1,3,1]: 9a³+b³-3c³
[0+3a,0+3b,0+1c]:	unknown -> [2] [0,0,0] 3a³+9b³-c³
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[1,1,3]: 3a³+9b³-c³
[0+3a,0+3b,0+3c]:	non-primitive
endexp[2]
Proof [3] mod 3: a³+3b³-9c³
