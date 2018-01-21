TranspositionSet={[1,0,2]}
isHomogeneous
Expanding for base=2, level=4, reasons+features=base,transpose,primitive,same,similiar igtriv,norm
Refined variables=a,b,c
[0+1a,0+1b,0+1c]:	unknown -> [1] [0,0,0] a³+b³-c³
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: a³+b³-c³
[0+2a,0+2b,0+2c]:	non-primitive
[1+2a,1+2b,0+2c]:	unknown -> [1] [1,1,0] 3a+6a²+4a³+3b+6b²+4b³-4c³+1
[1+2a,0+2b,1+2c]:	unknown -> [2] [1,0,1] 3a+6a²+4a³+4b³-3c-6c²-4c³
[0+2a,1+2b,1+2c]:	transposed [2] by [1,0,2]
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,1]: 3a+6a²+4a³+3b+6b²+4b³-4c³+1
[3+4a,1+4b,0+2c]:	unknown -> [3] [1,0,0] 27a+36a²+16a³+3b+12b²+16b³-2c³+7
[1+4a,3+4b,0+2c]:	transposed [3] by [1,0,2]
endexp[1]
expanding queue[2]^0,meter=[2,1,2]: 3a+6a²+4a³+4b³-3c-6c²-4c³
[1+4a,0+2b,1+4c]:	unknown -> [4] [0,0,0] 3a+12a²+16a³+2b³-3c-12c²-16c³
[3+4a,0+2b,3+4c]:	unknown -> [5] [1,0,1] 27a+36a²+16a³+2b³-27c-36c²-16c³
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2,1]: 27a+36a²+16a³+3b+12b²+16b³-2c³+7
[7+8a,1+8b,0+2c]:	unknown -> [6] [1,0,0] 147a+168a²+64a³+3b+24b²+64b³-c³+43
[3+8a,5+8b,0+2c]:	unknown -> [7] [0,1,0] 27a+72a²+64a³+75b+120b²+64b³-c³+19
endexp[3]
expanding queue[4]^2,meter=[2,1,2]: 3a+12a²+16a³+2b³-3c-12c²-16c³
[1+8a,0+2b,1+8c]:	unknown -> [8] [0,0,0] 3a+24a²+64a³+b³-3c-24c²-64c³
[5+8a,0+2b,5+8c]:	unknown -> [9] [1,0,1] 75a+120a²+64a³+b³-75c-120c²-64c³
endexp[4]
expanding queue[5]^2,meter=[2,1,2]: 27a+36a²+16a³+2b³-27c-36c²-16c³
[3+8a,0+2b,3+8c]:	unknown -> [10] [0,0,0] 27a+72a²+64a³+b³-27c-72c²-64c³
[7+8a,0+2b,7+8c]:	unknown -> [11] [1,0,1] 147a+168a²+64a³+b³-147c-168c²-64c³
endexp[5]
---------------- level 3
expanding queue[6]^3,meter=[2,2,2]: 147a+168a²+64a³+3b+24b²+64b³-c³+43
[15+16a,1+16b,0+4c]:	unknown -> [12] [1,0,0] 675a+720a²+256a³+3b+48b²+256b³-4c³+211
[7+16a,9+16b,0+4c]:	unknown -> [13] [0,1,0] 147a+336a²+256a³+243b+432b²+256b³-4c³+67
[7+16a,1+16b,2+4c]:	unknown -> [14] [0,0,1] 147a+336a²+256a³+3b+48b²+256b³-3c-6c²-4c³+21
[15+16a,9+16b,2+4c]:	unknown -> [15] [1,1,1] 675a+720a²+256a³+243b+432b²+256b³-3c-6c²-4c³+256
endexp[6]
expanding queue[7]^3,meter=[2,2,2]: 27a+72a²+64a³+75b+120b²+64b³-c³+19
[11+16a,5+16b,0+4c]:	unknown -> [16] [1,0,0] 363a+528a²+256a³+75b+240b²+256b³-4c³+91
[3+16a,13+16b,0+4c]:	unknown -> [17] [0,1,0] 27a+144a²+256a³+507b+624b²+256b³-4c³+139
[3+16a,5+16b,2+4c]:	unknown -> [18] [0,0,1] 27a+144a²+256a³+75b+240b²+256b³-3c-6c²-4c³+9
[11+16a,13+16b,2+4c]:	unknown -> [19] [1,1,1] 363a+528a²+256a³+507b+624b²+256b³-3c-6c²-4c³+220
endexp[7]
expanding queue[8]^4,meter=[2,2,2]: 3a+24a²+64a³+b³-3c-24c²-64c³
[1+16a,0+4b,1+16c]:	unknown -> [20] [0,0,0] 3a+48a²+256a³+4b³-3c-48c²-256c³
[9+16a,2+4b,1+16c]:	unknown -> [21] [1,1,0] 243a+432a²+256a³+3b+6b²+4b³-3c-48c²-256c³+46
[9+16a,0+4b,9+16c]:	unknown -> [22] [1,0,1] 243a+432a²+256a³+4b³-243c-432c²-256c³
[1+16a,2+4b,9+16c]:	unknown -> [23] [0,1,1] 3a+48a²+256a³+3b+6b²+4b³-243c-432c²-256c³-45
endexp[8]
expanding queue[9]^4,meter=[2,2,2]: 75a+120a²+64a³+b³-75c-120c²-64c³
[5+16a,0+4b,5+16c]:	unknown -> [24] [0,0,0] 75a+240a²+256a³+4b³-75c-240c²-256c³
[13+16a,2+4b,5+16c]:	unknown -> [25] [1,1,0] 507a+624a²+256a³+3b+6b²+4b³-75c-240c²-256c³+130
[13+16a,0+4b,13+16c]:	unknown -> [26] [1,0,1] 507a+624a²+256a³+4b³-507c-624c²-256c³
[5+16a,2+4b,13+16c]:	unknown -> [27] [0,1,1] 75a+240a²+256a³+3b+6b²+4b³-507c-624c²-256c³-129
endexp[9]
expanding queue[10]^5,meter=[2,2,2]: 27a+72a²+64a³+b³-27c-72c²-64c³
[3+16a,0+4b,3+16c]:	unknown -> [28] [0,0,0] 27a+144a²+256a³+4b³-27c-144c²-256c³
[11+16a,2+4b,3+16c]:	unknown -> [29] [1,1,0] 363a+528a²+256a³+3b+6b²+4b³-27c-144c²-256c³+82
[11+16a,0+4b,11+16c]:	unknown -> [30] [1,0,1] 363a+528a²+256a³+4b³-363c-528c²-256c³
[3+16a,2+4b,11+16c]:	unknown -> [31] [0,1,1] 27a+144a²+256a³+3b+6b²+4b³-363c-528c²-256c³-81
endexp[10]
expanding queue[11]^5,meter=[2,2,2]: 147a+168a²+64a³+b³-147c-168c²-64c³
[7+16a,0+4b,7+16c]:	unknown -> [32] [0,0,0] 147a+336a²+256a³+4b³-147c-336c²-256c³
[15+16a,2+4b,7+16c]:	unknown -> [33] [1,1,0] 675a+720a²+256a³+3b+6b²+4b³-147c-336c²-256c³+190
[15+16a,0+4b,15+16c]:	unknown -> [34] [1,0,1] 675a+720a²+256a³+4b³-675c-720c²-256c³
[7+16a,2+4b,15+16c]:	unknown -> [35] [0,1,1] 147a+336a²+256a³+3b+6b²+4b³-675c-720c²-256c³-189
endexp[11]
---------------- level 4
Maximum level 4 [36] mod 2: a³+b³-c³
