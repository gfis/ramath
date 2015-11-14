TranspositionSet={[1,0,2]}
isHomogeneous
ExponentGCDs=[5,5,5]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar norm,igtriv
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] a⁵+b⁵-c⁵
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a⁵+b⁵-c⁵
[0+2a,0+2b,0+2c]:	non-primitive
[1+2a,1+2b,0+2c]:	unknown -> [1] 5a+20a²+40a³+40a⁴+16a⁵+5b+20b²+40b³+40b⁴+16b⁵-16c⁵+1
[1+2a,0+2b,1+2c]:	unknown -> [2] 5a+20a²+40a³+40a⁴+16a⁵+16b⁵-5c-20c²-40c³-40c⁴-16c⁵
[0+2a,1+2b,1+2c]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,1]*4: 5a+20a²+40a³+40a⁴+16a⁵+5b+20b²+40b³+40b⁴+16b⁵-16c⁵+1
[3+4a,1+4b,0+2c]:	unknown -> [3] 405a+1080a²+1440a³+960a⁴+256a⁵+5b+40b²+160b³+320b⁴+256b⁵-8c⁵+61
[1+4a,3+4b,0+2c]:	transposed [3] by [1,0,2]
expanding queue[2]^0,meter=[2,1,2]*4: 5a+20a²+40a³+40a⁴+16a⁵+16b⁵-5c-20c²-40c³-40c⁴-16c⁵
[1+4a,0+2b,1+4c]:	unknown -> [4] 5a+40a²+160a³+320a⁴+256a⁵+8b⁵-5c-40c²-160c³-320c⁴-256c⁵
[3+4a,0+2b,3+4c]:	unknown -> [5] 405a+1080a²+1440a³+960a⁴+256a⁵+8b⁵-405c-1080c²-1440c³-960c⁴-256c⁵
----------------
expanding queue[3]^1,meter=[2,2,1]*8: 405a+1080a²+1440a³+960a⁴+256a⁵+5b+40b²+160b³+320b⁴+256b⁵-8c⁵+61
[7+8a,1+8b,0+2c]:	unknown -> [6] 12005a+27440a²+31360a³+17920a⁴+4096a⁵+5b+80b²+640b³+2560b⁴+4096b⁵-4c⁵+2101
[3+8a,5+8b,0+2c]:	unknown -> [7] 405a+2160a²+5760a³+7680a⁴+4096a⁵+3125b+10000b²+16000b³+12800b⁴+4096b⁵-4c⁵+421
expanding queue[4]^2,meter=[2,1,2]*8: 5a+40a²+160a³+320a⁴+256a⁵+8b⁵-5c-40c²-160c³-320c⁴-256c⁵
[1+8a,0+2b,1+8c]:	unknown -> [8] 5a+80a²+640a³+2560a⁴+4096a⁵+4b⁵-5c-80c²-640c³-2560c⁴-4096c⁵
[5+8a,0+2b,5+8c]:	unknown -> [9] 3125a+10000a²+16000a³+12800a⁴+4096a⁵+4b⁵-3125c-10000c²-16000c³-12800c⁴-4096c⁵
expanding queue[5]^2,meter=[2,1,2]*8: 405a+1080a²+1440a³+960a⁴+256a⁵+8b⁵-405c-1080c²-1440c³-960c⁴-256c⁵
[3+8a,0+2b,3+8c]:	unknown -> [10] 405a+2160a²+5760a³+7680a⁴+4096a⁵+4b⁵-405c-2160c²-5760c³-7680c⁴-4096c⁵
[7+8a,0+2b,7+8c]:	unknown -> [11] 12005a+27440a²+31360a³+17920a⁴+4096a⁵+4b⁵-12005c-27440c²-31360c³-17920c⁴-4096c⁵
Maximum level 2 [12] mod 2: a⁵+b⁵-c⁵
