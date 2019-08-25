Expanding for base=2, level=4, reasons+features=base,same,similiar,evenexp 
Refined variables=q,t
[0+1q,0+1t]:	unknown -> [1] [0,0] q²-2t⁵+1
-> solution [1,1],trivial(2)
---------------- level 0
expanding queue[0]^-1,meter=[2,2]: q²-2t⁵+1
[1+2q,1+2t]:	unknown -> [1] [1,1] 4q+4q²-20t-80t²-160t³-160t⁴-64t⁵
-> solution [1,1],trivial(2)
endexp[0]
---------------- level 1
expanding queue[1]^0,meter=[2,2]: 4q+4q²-20t-80t²-160t³-160t⁴-64t⁵
[1+4q,1+4t]:	unknown -> [2] [0,0] 8q+16q²-40t-320t²-1280t³-2560t⁴-2048t⁵
-> solution [1,1],trivial(2)
[3+4q,1+4t]:	negative-1 [2] by {q=>-q-1}
endexp[1]
---------------- level 2
expanding queue[2]^1,meter=[2,2]: 8q+16q²-40t-320t²-1280t³-2560t⁴-2048t⁵
[1+8q,1+8t]:	same 16q+64q²-80t-1280t²-10240t³-40960t⁴-65536t⁵ map {q=>q/4,t=>t/4} -> [1] 4q+4q²-20t-80t²-160t³-160t⁴-64t⁵
-> solution [1,1],trivial(2)
[5+8q,5+8t]:	unknown -> [3] [1,1] 80q+64q²-50000t-160000t²-256000t³-204800t⁴-65536t⁵-6224
endexp[2]
---------------- level 3
expanding queue[3]^2,meter=[2,2]: 80q+64q²-50000t-160000t²-256000t³-204800t⁴-65536t⁵-6224
[13+16q,5+16t]:	unknown -> [4] [1,0] 416q+256q²-100000t-640000t²-2048000t³-3276800t⁴-2097152t⁵-6080
[5+16q,13+16t]:	unknown -> [5] [0,1] 160q+256q²-4569760t-11248640t²-13844480t³-8519680t⁴-2097152t⁵-742560
endexp[3]
---------------- level 4
Maximum level 4 [6] mod 2: q²-2t⁵+1
