TranspositionSet={[1,0,2]}
isHomogeneous
ExponentGCDs=[5,5,5]
Expanding for base=2, reasons+features=base,transpose,primitive,same,similiar norm,igtriv
Refined variables=a,b,c
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: a^5+b^5-c^5
[0+2a,0+2b,0+2c]:	non-primitive
[1+2a,1+2b,0+2c]:	unknown -> [1] 1+5a+20a^2+40a^3+40a^4+16a^5+5b+20b^2+40b^3+40b^4+16b^5-16c^5
[1+2a,0+2b,1+2c]:	unknown -> [2] 5a+20a^2+40a^3+40a^4+16a^5+16b^5-5c-20c^2-40c^3-40c^4-16c^5
[0+2a,1+2b,1+2c]:	transposed [2] by [1,0,2]
----------------
expanding queue[1]^0,meter=[2,2,1]*4: 1+5a+20a^2+40a^3+40a^4+16a^5+5b+20b^2+40b^3+40b^4+16b^5-16c^5
[3+4a,1+4b,0+2c]:	unknown -> [3] 61+405a+1080a^2+1440a^3+960a^4+256a^5+5b+40b^2+160b^3+320b^4+256b^5-8c^5
[1+4a,3+4b,0+2c]:	transposed [3] by [1,0,2]
expanding queue[2]^0,meter=[2,1,2]*4: 5a+20a^2+40a^3+40a^4+16a^5+16b^5-5c-20c^2-40c^3-40c^4-16c^5
[1+4a,0+2b,1+4c]:	unknown -> [4] 5a+40a^2+160a^3+320a^4+256a^5+8b^5-5c-40c^2-160c^3-320c^4-256c^5
[3+4a,0+2b,3+4c]:	unknown -> [5] 405a+1080a^2+1440a^3+960a^4+256a^5+8b^5-405c-1080c^2-1440c^3-960c^4-256c^5
----------------
expanding queue[3]^1,meter=[2,2,1]*8: 61+405a+1080a^2+1440a^3+960a^4+256a^5+5b+40b^2+160b^3+320b^4+256b^5-8c^5
[7+8a,1+8b,0+2c]:	unknown -> [6] 2101+12005a+27440a^2+31360a^3+17920a^4+4096a^5+5b+80b^2+640b^3+2560b^4+4096b^5-4c^5
[3+8a,5+8b,0+2c]:	unknown -> [7] 421+405a+2160a^2+5760a^3+7680a^4+4096a^5+3125b+10000b^2+16000b^3+12800b^4+4096b^5-4c^5
expanding queue[4]^2,meter=[2,1,2]*8: 5a+40a^2+160a^3+320a^4+256a^5+8b^5-5c-40c^2-160c^3-320c^4-256c^5
[1+8a,0+2b,1+8c]:	unknown -> [8] 5a+80a^2+640a^3+2560a^4+4096a^5+4b^5-5c-80c^2-640c^3-2560c^4-4096c^5
[5+8a,0+2b,5+8c]:	unknown -> [9] 3125a+10000a^2+16000a^3+12800a^4+4096a^5+4b^5-3125c-10000c^2-16000c^3-12800c^4-4096c^5
expanding queue[5]^2,meter=[2,1,2]*8: 405a+1080a^2+1440a^3+960a^4+256a^5+8b^5-405c-1080c^2-1440c^3-960c^4-256c^5
[3+8a,0+2b,3+8c]:	unknown -> [10] 405a+2160a^2+5760a^3+7680a^4+4096a^5+4b^5-405c-2160c^2-5760c^3-7680c^4-4096c^5
[7+8a,0+2b,7+8c]:	unknown -> [11] 12005a+27440a^2+31360a^3+17920a^4+4096a^5+4b^5-12005c-27440c^2-31360c^3-17920c^4-4096c^5
Maximum level 2 at [12]: a^5+b^5-c^5
