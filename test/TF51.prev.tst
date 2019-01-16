TranspositionSet={[1,0,2]}
considerNonPrimitive
Expanding for base=2, level=2, reasons+features=base,transpose,primitive,same,similiar igtriv,norm
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] [0,0,0] a⁵+b⁵-c⁵
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: a⁵+b⁵-c⁵
[0+2a,0+2b,0+2c]:	non-primitive
[1+2a,1+2b,0+2c]:	unknown -> [1] [1,1,0] 5a+20a²+40a³+40a⁴+16a⁵+5b+20b²+40b³+40b⁴+16b⁵-16c⁵+1
[1+2a,0+2b,1+2c]:	unknown -> [2] [1,0,1] 5a+20a²+40a³+40a⁴+16a⁵+16b⁵-5c-20c²-40c³-40c⁴-16c⁵
[0+2a,1+2b,1+2c]:	transposed [2] by [1,0,2]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,1]: 5a+20a²+40a³+40a⁴+16a⁵+5b+20b²+40b³+40b⁴+16b⁵-16c⁵+1
[3+4a,1+4b,0+2c]:	unknown -> [3] [1,0,0] 405a+1080a²+1440a³+960a⁴+256a⁵+5b+40b²+160b³+320b⁴+256b⁵-8c⁵+61
[1+4a,3+4b,0+2c]:	transposed [3] by [1,0,2]
endexp[1]
expanding queue[2]^0,meter=[2,1,2]: 5a+20a²+40a³+40a⁴+16a⁵+16b⁵-5c-20c²-40c³-40c⁴-16c⁵
[1+4a,0+2b,1+4c]:	unknown -> [4] [0,0,0] 5a+40a²+160a³+320a⁴+256a⁵+8b⁵-5c-40c²-160c³-320c⁴-256c⁵
[3+4a,0+2b,3+4c]:	unknown -> [5] [1,0,1] 405a+1080a²+1440a³+960a⁴+256a⁵+8b⁵-405c-1080c²-1440c³-960c⁴-256c⁵
endexp[2]
---------------- level 2
Maximum level 2 [6] mod 2: a⁵+b⁵-c⁵
