Expanding for base=2, level=4, reasons+features=base,same,similiar invall,norm
Refined variables=a,b
[0+1a,0+1b]:	unknown -> [1] [0,0] a²-a³+2a*b+3a²*b+b²-3a*b²+b³+2
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: a²-a³+2a*b+3a²*b+b²-3a*b²+b³+2
[1+2a,0+2b]:	unknown -> [1] [1,0] a+4a²+4a³-5b-16a*b-12a²*b+4b²+12a*b²-4b³-1
[0+2a,1+2b]:	unknown -> [2] [0,1] a-8a²+4a³-5b+8a*b-12a²*b-8b²+12a*b²-4b³-2
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: a+4a²+4a³-5b-16a*b-12a²*b+4b²+12a*b²-4b³-1
[3+4a,0+4b]:	unknown -> [3] [1,0] 21a+32a²+16a³-33b-80a*b-48a²*b+32b²+48a*b²-16b³+4
[1+4a,2+4b]:	unknown -> [4] [0,1] 3a+16a²-16a³+9b-16a*b+48a²*b+16b²-48a*b²+16b³+3
endexp[1]
expanding queue[2]^0,meter=[2,2]: a-8a²+4a³-5b+8a*b-12a²*b-8b²+12a*b²-4b³-2
[0+4a,1+4b]:	unknown -> [5] [0,0] a-16a²+16a³-5b+16a*b-48a²*b-16b²+48a*b²-16b³-1
-> solution [4,1],NONTRIVIAL
[2+4a,3+4b]:	unknown -> [6] [1,1] 7a+16a²-16a³+13b-16a*b+48a²*b+16b²-48a*b²+16b³+7
endexp[2]
---------------- level 2
expanding queue[3]^1,meter=[2,2]: 21a+32a²+16a³-33b-80a*b-48a²*b+32b²+48a*b²-16b³+4
[3+8a,0+8b]:	unknown -> [7] [0,0] 21a+64a²+64a³-33b-160a*b-192a²*b+64b²+192a*b²-64b³+2
[7+8a,4+8b]:	unknown -> [8] [1,1] 5a+64a²+64a³-49b-160a*b-192a²*b+64b²+192a*b²-64b³-12
endexp[3]
expanding queue[4]^1,meter=[2,2]: 3a+16a²-16a³+9b-16a*b+48a²*b+16b²-48a*b²+16b³+3
[5+8a,2+8b]:	unknown -> [9] [1,0] 13a+64a²+64a³-41b-160a*b-192a²*b+64b²+192a*b²-64b³-3
[1+8a,6+8b]:	unknown -> [10] [0,1] 61a-128a²+64a³-89b+224a*b-192a²*b-128b²+192a*b²-64b³-22
endexp[4]
expanding queue[5]^2,meter=[2,2]: a-16a²+16a³-5b+16a*b-48a²*b-16b²+48a*b²-16b³-1
[4+8a,1+8b]:	unknown -> [11] [1,0] 17a+64a²+64a³-37b-160a*b-192a²*b+64b²+192a*b²-64b³
-> solution [4,1],NONTRIVIAL
[0+8a,5+8b]:	unknown -> [12] [0,1] 65a-128a²+64a³-85b+224a*b-192a²*b-128b²+192a*b²-64b³-19
endexp[5]
expanding queue[6]^2,meter=[2,2]: 7a+16a²-16a³+13b-16a*b+48a²*b+16b²-48a*b²+16b³+7
[6+8a,3+8b]:	unknown -> [13] [1,0] 9a+64a²+64a³-45b-160a*b-192a²*b+64b²+192a*b²-64b³-7
[2+8a,7+8b]:	unknown -> [14] [0,1] 57a-128a²+64a³-93b+224a*b-192a²*b-128b²+192a*b²-64b³-26
endexp[6]
---------------- level 3
expanding queue[7]^3,meter=[2,2]: 21a+64a²+64a³-33b-160a*b-192a²*b+64b²+192a*b²-64b³+2
[3+16a,0+16b]:	unknown -> [15] [0,0] 21a+128a²+256a³-33b-320a*b-768a²*b+128b²+768a*b²-256b³+1
[11+16a,8+16b]:	unknown -> [16] [1,1] 11a-128a²-256a³+65b+320a*b+768a²*b-128b²-768a*b²+256b³+21
endexp[7]
expanding queue[8]^3,meter=[2,2]: 5a+64a²+64a³-49b-160a*b-192a²*b+64b²+192a*b²-64b³-12
[7+16a,4+16b]:	unknown -> [17] [0,0] 5a+128a²+256a³-49b-320a*b-768a²*b+128b²+768a*b²-256b³-6
[15+16a,12+16b]:	unknown -> [18] [1,1] 27a-128a²-256a³+81b+320a*b+768a²*b-128b²-768a*b²+256b³+44
endexp[8]
expanding queue[9]^4,meter=[2,2]: 13a+64a²+64a³-41b-160a*b-192a²*b+64b²+192a*b²-64b³-3
[13+16a,2+16b]:	unknown -> [19] [1,0] 333a+512a²+256a³-393b-1088a*b-768a²*b+512b²+768a*b²-256b³+69
[5+16a,10+16b]:	unknown -> [20] [0,1] 45a-256a²+256a³-105b+448a*b-768a²*b-256b²+768a*b²-256b³-22
endexp[9]
expanding queue[10]^4,meter=[2,2]: 61a-128a²+64a³-89b+224a*b-192a²*b-128b²+192a*b²-64b³-22
[1+16a,6+16b]:	unknown -> [21] [0,0] 61a-256a²+256a³-89b+448a*b-768a²*b-256b²+768a*b²-256b³-11
[9+16a,14+16b]:	unknown -> [22] [1,1] 29a-256a²+256a³-121b+448a*b-768a²*b-256b²+768a*b²-256b³-41
endexp[10]
expanding queue[11]^5,meter=[2,2]: 17a+64a²+64a³-37b-160a*b-192a²*b+64b²+192a*b²-64b³
[4+16a,1+16b]:	unknown -> [23] [0,0] 17a+128a²+256a³-37b-320a*b-768a²*b+128b²+768a*b²-256b³
-> solution [4,1],NONTRIVIAL
[12+16a,9+16b]:	unknown -> [24] [1,1] 15a-128a²-256a³+69b+320a*b+768a²*b-128b²-768a*b²+256b³+26
endexp[11]
expanding queue[12]^5,meter=[2,2]: 65a-128a²+64a³-85b+224a*b-192a²*b-128b²+192a*b²-64b³-19
[8+16a,5+16b]:	unknown -> [25] [1,0] a+128a²+256a³-53b-320a*b-768a²*b+128b²+768a*b²-256b³-9
[0+16a,13+16b]:	unknown -> [26] [0,1] 481a-640a²+256a³-533b+1216a*b-768a²*b-640b²+768a*b²-256b³-148
endexp[12]
expanding queue[13]^6,meter=[2,2]: 9a+64a²+64a³-45b-160a*b-192a²*b+64b²+192a*b²-64b³-7
[14+16a,3+16b]:	unknown -> [27] [1,0] 329a+512a²+256a³-397b-1088a*b-768a²*b+512b²+768a*b²-256b³+65
[6+16a,11+16b]:	unknown -> [28] [0,1] 41a-256a²+256a³-109b+448a*b-768a²*b-256b²+768a*b²-256b³-26
endexp[13]
expanding queue[14]^6,meter=[2,2]: 57a-128a²+64a³-93b+224a*b-192a²*b-128b²+192a*b²-64b³-26
[2+16a,7+16b]:	unknown -> [29] [0,0] 57a-256a²+256a³-93b+448a*b-768a²*b-256b²+768a*b²-256b³-13
[10+16a,15+16b]:	unknown -> [30] [1,1] 25a-256a²+256a³-125b+448a*b-768a²*b-256b²+768a*b²-256b³-47
endexp[14]
---------------- level 4
Maximum level 4 [31] mod 2: a²-a³+2a*b+3a²*b+b²-3a*b²+b³+2
