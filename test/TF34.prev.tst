isHomogeneous
Expanding for base=6, level=2, reasons+features=base,primitive,same,similiar,accel igtriv,norm
Refined variables=a,b,c
??? assertion: accelerate loopCheck
[0+177147a,0+177147b,0+177147c]:	unknown accelerated by a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 a*3 b*3 c*3 -> [1] [0,0,0] a³+3b³-9c³
---------------- level 0
expanding queue[0]^-1,meter=[6,6,6]: a³+3b³-9c³
[0+1062882a,0+1062882b,0+1062882c]:	same form as a³+3b³-9c³
[531441+1062882a,531441+1062882b,0+1062882c]:	unknown -> [1] [3,3,0] 3a+6a²+4a³+9b+18b²+12b³-36c³+2
[531441+1062882a,0+1062882b,531441+1062882c]:	unknown -> [2] [3,0,3] 3a+6a²+4a³+12b³-27c-54c²-36c³-4
[0+3188646a,531441+1062882b,531441+1062882c]:	unknown accelerated by a*3 -> [3] [0,3,3] 4a³+9b+18b²+12b³-27c-54c²-36c³-3
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[6,6,1]: 3a+6a²+4a³+9b+18b²+12b³-36c³+2
[1594323+6377292a,1594323+6377292b,0+3188646c]:	unknown accelerated by c*3 -> [4] [1,1,0] 9a+36a²+48a³+27b+108b²+144b³-2c³+3
[4782969+19131876a,4782969+19131876b,0+9565938c]:	unknown accelerated by c*3 a*3 b*3 c*3 -> [5] [4,4,0] 81a+108a²+48a³+243b+324b²+144b³-2c³+81
endexp[1]
expanding queue[2]^0,meter=[6,1,6]: 3a+6a²+4a³+12b³-27c-54c²-36c³-4
[4782969+6377292a,0+3188646b,531441+6377292c]:	unknown accelerated by b*3 -> [6] [4,0,0] 243a+324a²+144a³+2b³-27c-324c²-1296c³+60
[1594323+6377292a,0+9565938b,1594323+6377292c]:	unknown accelerated by b*9 -> [7] [1,0,1] 27a+108a²+144a³+2b³-243c-972c²-1296c³-18
[4782969+6377292a,0+3188646b,2657205+6377292c]:	unknown accelerated by b*3 -> [8] [4,0,2] 243a+324a²+144a³+2b³-675c-1620c²-1296c³-33
[1594323+6377292a,0+3188646b,3720087+6377292c]:	unknown accelerated by b*3 -> [9] [1,0,3] 27a+108a²+144a³+2b³-1323c-2268c²-1296c³-255
[4782969+57395628a,0+9565938b,4782969+19131876c]:	unknown accelerated by b*9 a*9 c*3 -> [10] [4,0,4] 243a+324a²+144a³+2b³-2187c-2916c²-1296c³-486
[1594323+6377292a,0+3188646b,5845851+6377292c]:	unknown accelerated by b*3 -> [11] [1,0,5] 27a+108a²+144a³+2b³-3267c-3564c²-1296c³-996
endexp[2]
expanding queue[3]^0,meter=[6,6,6]: 4a³+9b+18b²+12b³-27c-54c²-36c³-3
[0+19131876a,4782969+19131876b,1594323+6377292c]:	unknown accelerated by b*3 -> [12] [0,4,1] 144a³+27b+36b²+16b³-9c-36c²-48c³+6
[9565938+19131876a,4782969+19131876b,1594323+6377292c]:	unknown accelerated by b*3 -> [13] [3,4,1] 108a+216a²+144a³+27b+36b²+16b³-9c-36c²-48c³+24
[0+19131876a,1594323+6377292b,4782969+6377292c]:	unknown -> [14] [0,1,4] 144a³+3b+12b²+16b³-81c-108c²-48c³-20
[9565938+19131876a,1594323+6377292b,4782969+6377292c]:	unknown -> [15] [3,1,4] 108a+216a²+144a³+3b+12b²+16b³-81c-108c²-48c³-2
endexp[3]
---------------- level 2
Maximum level 2 [16] mod 6: a³+3b³-9c³
