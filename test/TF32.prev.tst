isHomogeneous
Expanding for base=2, level=3, reasons+features=base,primitive,same,similiar,accel igtriv,norm
Refined variables=a,b,c
??? assertion: accelerate loopCheck
[0+177147a,0+177147b,0+177147c]:	unknown accelerated by a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 -> [1] [0,0,0] a³+3b³-9c³
---------------- level 0
expanding queue[0]^-1,meter=[2,2,2]: a³+3b³-9c³
[0+354294a,0+354294b,0+354294c]:	non-primitive
[177147+354294a,177147+354294b,0+354294c]:	unknown -> [1] [1,1,0] 3a+6a²+4a³+9b+18b²+12b³-36c³+2
[177147+354294a,0+354294b,177147+354294c]:	unknown -> [2] [1,0,1] 3a+6a²+4a³+12b³-27c-54c²-36c³-4
[0+1062882a,177147+354294b,177147+354294c]:	unknown accelerated by a*3 -> [3] [0,1,1] 4a³+9b+18b²+12b³-27c-54c²-36c³-3
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2,1]: 3a+6a²+4a³+9b+18b²+12b³-36c³+2
[177147+708588a,177147+708588b,0+354294c]:	unknown -> [4] [0,0,0] 3a+12a²+16a³+9b+36b²+48b³-18c³+1
[531441+2125764a,531441+2125764b,0+1062882c]:	unknown accelerated by a*3 b*3 c*3 -> [5] [1,1,0] 27a+36a²+16a³+81b+108b²+48b³-18c³+27
endexp[1]
expanding queue[2]^0,meter=[2,1,2]: 3a+6a²+4a³+12b³-27c-54c²-36c³-4
[177147+708588a,0+354294b,177147+708588c]:	unknown -> [6] [0,0,0] 3a+12a²+16a³+6b³-27c-108c²-144c³-2
[531441+2125764a,0+1062882b,531441+2125764c]:	unknown accelerated by a*3 b*3 c*3 -> [7] [1,0,1] 27a+36a²+16a³+6b³-243c-324c²-144c³-54
endexp[2]
expanding queue[3]^0,meter=[1,2,2]: 4a³+9b+18b²+12b³-27c-54c²-36c³-3
[0+1062882a,531441+2125764b,177147+708588c]:	unknown accelerated by b*3 -> [8] [0,1,0] 18a³+27b+36b²+16b³-9c-36c²-48c³+6
[0+1062882a,177147+708588b,531441+708588c]:	unknown -> [9] [0,0,1] 18a³+3b+12b²+16b³-81c-108c²-48c³-20
endexp[3]
---------------- level 2
expanding queue[4]^1,meter=[2,2,1]: 3a+12a²+16a³+9b+36b²+48b³-18c³+1
[885735+1417176a,177147+1417176b,0+354294c]:	unknown -> [10] [1,0,0] 75a+120a²+64a³+9b+72b²+192b³-9c³+16
[177147+1417176a,885735+1417176b,0+354294c]:	unknown -> [11] [0,1,0] 3a+24a²+64a³+225b+360b²+192b³-9c³+47
endexp[4]
expanding queue[5]^1,meter=[2,2,1]: 27a+36a²+16a³+81b+108b²+48b³-18c³+27
[2657205+4251528a,531441+4251528b,0+1062882c]:	unknown -> [12] [1,0,0] 75a+120a²+64a³+9b+72b²+192b³-9c³+16
[531441+4251528a,2657205+4251528b,0+1062882c]:	unknown -> [13] [0,1,0] 3a+24a²+64a³+225b+360b²+192b³-9c³+47
endexp[5]
expanding queue[6]^2,meter=[2,1,2]: 3a+12a²+16a³+6b³-27c-108c²-144c³-2
[177147+1417176a,0+354294b,177147+1417176c]:	unknown -> [14] [0,0,0] 3a+24a²+64a³+3b³-27c-216c²-576c³-1
[885735+1417176a,0+354294b,885735+1417176c]:	unknown -> [15] [1,0,1] 75a+120a²+64a³+3b³-675c-1080c²-576c³-125
endexp[6]
expanding queue[7]^2,meter=[2,1,2]: 27a+36a²+16a³+6b³-243c-324c²-144c³-54
[531441+4251528a,0+1062882b,531441+4251528c]:	unknown -> [16] [0,0,0] 3a+24a²+64a³+3b³-27c-216c²-576c³-1
[2657205+4251528a,0+1062882b,2657205+4251528c]:	unknown -> [17] [1,0,1] 75a+120a²+64a³+3b³-675c-1080c²-576c³-125
endexp[7]
expanding queue[8]^3,meter=[1,2,2]: 18a³+27b+36b²+16b³-9c-36c²-48c³+6
[0+1062882a,531441+4251528b,177147+1417176c]:	unknown -> [18] [0,0,0] 3a³+27b+216b²+576b³-3c-24c²-64c³+1
[0+1062882a,2657205+4251528b,885735+1417176c]:	unknown -> [19] [0,1,1] 3a³+675b+1080b²+576b³-75c-120c²-64c³+125
endexp[8]
expanding queue[9]^3,meter=[1,2,2]: 18a³+3b+12b²+16b³-81c-108c²-48c³-20
[0+1062882a,177147+1417176b,531441+1417176c]:	unknown -> [20] [0,0,0] 9a³+3b+24b²+64b³-81c-216c²-192c³-10
[0+1062882a,885735+1417176b,1240029+1417176c]:	unknown -> [21] [0,1,1] 9a³+75b+120b²+64b³-441c-504c²-192c³-113
endexp[9]
---------------- level 3
Maximum level 3 [22] mod 2: a³+3b³-9c³
