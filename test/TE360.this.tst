TranspositionSet={[2,1,0,3],[1,2,0,3],[2,0,1,3],[0,2,1,3],[1,0,2,3]}
isHomogeneous
ExponentGCDs=[3,3,3,3]
Expanding for base=6, reasons+features=base,transpose,primitive,same,similiar 
Refined variables=a,b,c,d
[0+1a,0+1b,0+1c,0+1d]:	unknown -> [1] [0,0,0,0] a³+b³+c³-d³
-> solution [0,0,0,0],trivial(3) [1,0,0,1],trivial(3) [0,1,0,1],trivial(3) [0,0,1,1],trivial(3)
----------------
expanding queue[0]^-1,meter=[6,6,6,6]: a³+b³+c³-d³
[0+6a,0+6b,0+6c,0+6d]:	non-primitive
-> solution [0,0,0,0],trivial(3) [6,0,0,6],trivial(3) [0,6,0,6],trivial(3) [0,0,6,6],trivial(3)
[5+6a,1+6b,0+6c,0+6d]:	unknown -> [1] [5,1,0,0] 450a+540a²+216a³+18b+108b²+216b³+216c³-216d³+126
[4+6a,2+6b,0+6c,0+6d]:	unknown -> [2] [4,2,0,0] 288a+432a²+216a³+72b+216b²+216b³+216c³-216d³+72
[3+6a,3+6b,0+6c,0+6d]:	unknown -> [3] [3,3,0,0] 162a+324a²+216a³+162b+324b²+216b³+216c³-216d³+54
[2+6a,4+6b,0+6c,0+6d]:	transposed [2] by [1,0,2,3]
[1+6a,5+6b,0+6c,0+6d]:	transposed [1] by [1,0,2,3]
[5+6a,0+6b,1+6c,0+6d]:	transposed [1] by [0,2,1,3]
[3+6a,2+6b,1+6c,0+6d]:	unknown -> [4] [3,2,1,0] 162a+324a²+216a³+72b+216b²+216b³+18c+108c²+216c³-216d³+36
[2+6a,3+6b,1+6c,0+6d]:	transposed [4] by [1,0,2,3]
[0+6a,5+6b,1+6c,0+6d]:	transposed [1] by [2,0,1,3]
[4+6a,0+6b,2+6c,0+6d]:	transposed [2] by [0,2,1,3]
[3+6a,1+6b,2+6c,0+6d]:	transposed [4] by [0,2,1,3]
[1+6a,3+6b,2+6c,0+6d]:	transposed [4] by [2,0,1,3]
[0+6a,4+6b,2+6c,0+6d]:	transposed [2] by [2,0,1,3]
[3+6a,0+6b,3+6c,0+6d]:	transposed [3] by [0,2,1,3]
[2+6a,1+6b,3+6c,0+6d]:	transposed [4] by [1,2,0,3]
[1+6a,2+6b,3+6c,0+6d]:	transposed [4] by [2,1,0,3]
[0+6a,3+6b,3+6c,0+6d]:	transposed [3] by [2,0,1,3]
[5+6a,4+6b,3+6c,0+6d]:	unknown -> [5] [5,4,3,0] 450a+540a²+216a³+288b+432b²+216b³+162c+324c²+216c³-216d³+216
-> solution [5,4,3,6],NONTRIVIAL
[4+6a,5+6b,3+6c,0+6d]:	transposed [5] by [1,0,2,3]
[2+6a,0+6b,4+6c,0+6d]:	transposed [2] by [1,2,0,3]
[0+6a,2+6b,4+6c,0+6d]:	transposed [2] by [2,1,0,3]
[5+6a,3+6b,4+6c,0+6d]:	transposed [5] by [0,2,1,3]
[3+6a,5+6b,4+6c,0+6d]:	transposed [5] by [2,0,1,3]
[1+6a,0+6b,5+6c,0+6d]:	transposed [1] by [1,2,0,3]
[0+6a,1+6b,5+6c,0+6d]:	transposed [1] by [2,1,0,3]
[4+6a,3+6b,5+6c,0+6d]:	transposed [5] by [1,2,0,3]
[3+6a,4+6b,5+6c,0+6d]:	transposed [5] by [2,1,0,3]
[1+6a,0+6b,0+6c,1+6d]:	unknown -> [6] [1,0,0,1] 18a+108a²+216a³+216b³+216c³-18d-108d²-216d³
-> solution [1,0,0,1],trivial(3) [7,0,0,7],trivial(3)
[0+6a,1+6b,0+6c,1+6d]:	transposed [6] by [1,0,2,3]
[4+6a,3+6b,0+6c,1+6d]:	unknown -> [7] [4,3,0,1] 288a+432a²+216a³+162b+324b²+216b³+216c³-18d-108d²-216d³+90
[3+6a,4+6b,0+6c,1+6d]:	transposed [7] by [1,0,2,3]
[0+6a,0+6b,1+6c,1+6d]:	transposed [6] by [1,2,0,3]
[5+6a,1+6b,1+6c,1+6d]:	unknown -> [8] [5,1,1,1] 450a+540a²+216a³+18b+108b²+216b³+18c+108c²+216c³-18d-108d²-216d³+126
[4+6a,2+6b,1+6c,1+6d]:	unknown -> [9] [4,2,1,1] 288a+432a²+216a³+72b+216b²+216b³+18c+108c²+216c³-18d-108d²-216d³+72
[3+6a,3+6b,1+6c,1+6d]:	unknown -> [10] [3,3,1,1] 162a+324a²+216a³+162b+324b²+216b³+18c+108c²+216c³-18d-108d²-216d³+54
[2+6a,4+6b,1+6c,1+6d]:	transposed [9] by [1,0,2,3]
[1+6a,5+6b,1+6c,1+6d]:	transposed [8] by [1,0,2,3]
[4+6a,1+6b,2+6c,1+6d]:	transposed [9] by [0,2,1,3]
[1+6a,4+6b,2+6c,1+6d]:	transposed [9] by [2,0,1,3]
[4+6a,0+6b,3+6c,1+6d]:	transposed [7] by [0,2,1,3]
[3+6a,1+6b,3+6c,1+6d]:	transposed [10] by [0,2,1,3]
[1+6a,3+6b,3+6c,1+6d]:	transposed [10] by [2,0,1,3]
[0+6a,4+6b,3+6c,1+6d]:	transposed [7] by [2,0,1,3]
[3+6a,0+6b,4+6c,1+6d]:	transposed [7] by [1,2,0,3]
[2+6a,1+6b,4+6c,1+6d]:	transposed [9] by [1,2,0,3]
[1+6a,2+6b,4+6c,1+6d]:	transposed [9] by [2,1,0,3]
[0+6a,3+6b,4+6c,1+6d]:	transposed [7] by [2,1,0,3]
[5+6a,4+6b,4+6c,1+6d]:	unknown -> [11] [5,4,4,1] 450a+540a²+216a³+288b+432b²+216b³+288c+432c²+216c³-18d-108d²-216d³+252
[4+6a,5+6b,4+6c,1+6d]:	transposed [11] by [1,0,2,3]
[1+6a,1+6b,5+6c,1+6d]:	transposed [8] by [1,2,0,3]
[4+6a,4+6b,5+6c,1+6d]:	transposed [11] by [1,2,0,3]
[2+6a,0+6b,0+6c,2+6d]:	unknown -> [12] [2,0,0,2] 72a+216a²+216a³+216b³+216c³-72d-216d²-216d³
-> solution [2,0,0,2],trivial(3) [8,0,0,8],trivial(3)
[0+6a,2+6b,0+6c,2+6d]:	transposed [12] by [1,0,2,3]
[5+6a,3+6b,0+6c,2+6d]:	unknown -> [13] [5,3,0,2] 450a+540a²+216a³+162b+324b²+216b³+216c³-72d-216d²-216d³+144
[3+6a,5+6b,0+6c,2+6d]:	transposed [13] by [1,0,2,3]
[5+6a,2+6b,1+6c,2+6d]:	unknown -> [14] [5,2,1,2] 450a+540a²+216a³+72b+216b²+216b³+18c+108c²+216c³-72d-216d²-216d³+126
[2+6a,5+6b,1+6c,2+6d]:	transposed [14] by [1,0,2,3]
[0+6a,0+6b,2+6c,2+6d]:	transposed [12] by [1,2,0,3]
[5+6a,1+6b,2+6c,2+6d]:	transposed [14] by [0,2,1,3]
[4+6a,2+6b,2+6c,2+6d]:	unknown -> [15] [4,2,2,2] 288a+432a²+216a³+72b+216b²+216b³+72c+216c²+216c³-72d-216d²-216d³+72
[3+6a,3+6b,2+6c,2+6d]:	unknown -> [16] [3,3,2,2] 162a+324a²+216a³+162b+324b²+216b³+72c+216c²+216c³-72d-216d²-216d³+54
[2+6a,4+6b,2+6c,2+6d]:	transposed [15] by [1,0,2,3]
[1+6a,5+6b,2+6c,2+6d]:	transposed [14] by [2,0,1,3]
[5+6a,0+6b,3+6c,2+6d]:	transposed [13] by [0,2,1,3]
[3+6a,2+6b,3+6c,2+6d]:	transposed [16] by [0,2,1,3]
[2+6a,3+6b,3+6c,2+6d]:	transposed [16] by [2,0,1,3]
[0+6a,5+6b,3+6c,2+6d]:	transposed [13] by [2,0,1,3]
[2+6a,2+6b,4+6c,2+6d]:	transposed [15] by [1,2,0,3]
[5+6a,5+6b,4+6c,2+6d]:	unknown -> [17] [5,5,4,2] 450a+540a²+216a³+450b+540b²+216b³+288c+432c²+216c³-72d-216d²-216d³+306
[3+6a,0+6b,5+6c,2+6d]:	transposed [13] by [1,2,0,3]
[2+6a,1+6b,5+6c,2+6d]:	transposed [14] by [1,2,0,3]
[1+6a,2+6b,5+6c,2+6d]:	transposed [14] by [2,1,0,3]
[0+6a,3+6b,5+6c,2+6d]:	transposed [13] by [2,1,0,3]
[5+6a,4+6b,5+6c,2+6d]:	transposed [17] by [0,2,1,3]
[4+6a,5+6b,5+6c,2+6d]:	transposed [17] by [2,0,1,3]
[3+6a,0+6b,0+6c,3+6d]:	unknown -> [18] [3,0,0,3] 162a+324a²+216a³+216b³+216c³-162d-324d²-216d³
-> solution [3,0,0,3],trivial(3) [9,0,0,9],trivial(3)
[2+6a,1+6b,0+6c,3+6d]:	unknown -> [19] [2,1,0,3] 72a+216a²+216a³+18b+108b²+216b³+216c³-162d-324d²-216d³-18
-> solution [8,1,6,9],NONTRIVIAL
[1+6a,2+6b,0+6c,3+6d]:	transposed [19] by [1,0,2,3]
[0+6a,3+6b,0+6c,3+6d]:	transposed [18] by [1,0,2,3]
[5+6a,4+6b,0+6c,3+6d]:	unknown -> [20] [5,4,0,3] 450a+540a²+216a³+288b+432b²+216b³+216c³-162d-324d²-216d³+162
[4+6a,5+6b,0+6c,3+6d]:	transposed [20] by [1,0,2,3]
[2+6a,0+6b,1+6c,3+6d]:	transposed [19] by [0,2,1,3]
[0+6a,2+6b,1+6c,3+6d]:	transposed [19] by [2,0,1,3]
[5+6a,3+6b,1+6c,3+6d]:	unknown -> [21] [5,3,1,3] 450a+540a²+216a³+162b+324b²+216b³+18c+108c²+216c³-162d-324d²-216d³+126
[3+6a,5+6b,1+6c,3+6d]:	transposed [21] by [1,0,2,3]
[1+6a,0+6b,2+6c,3+6d]:	transposed [19] by [1,2,0,3]
[0+6a,1+6b,2+6c,3+6d]:	transposed [19] by [2,1,0,3]
[4+6a,3+6b,2+6c,3+6d]:	unknown -> [22] [4,3,2,3] 288a+432a²+216a³+162b+324b²+216b³+72c+216c²+216c³-162d-324d²-216d³+72
[3+6a,4+6b,2+6c,3+6d]:	transposed [22] by [1,0,2,3]
[0+6a,0+6b,3+6c,3+6d]:	transposed [18] by [1,2,0,3]
[5+6a,1+6b,3+6c,3+6d]:	transposed [21] by [0,2,1,3]
[4+6a,2+6b,3+6c,3+6d]:	transposed [22] by [0,2,1,3]
[3+6a,3+6b,3+6c,3+6d]:	unknown -> [23] [3,3,3,3] 162a+324a²+216a³+162b+324b²+216b³+162c+324c²+216c³-162d-324d²-216d³+54
[2+6a,4+6b,3+6c,3+6d]:	transposed [22] by [2,0,1,3]
[1+6a,5+6b,3+6c,3+6d]:	transposed [21] by [2,0,1,3]
[5+6a,0+6b,4+6c,3+6d]:	transposed [20] by [0,2,1,3]
[3+6a,2+6b,4+6c,3+6d]:	transposed [22] by [1,2,0,3]
[2+6a,3+6b,4+6c,3+6d]:	transposed [22] by [2,1,0,3]
[0+6a,5+6b,4+6c,3+6d]:	transposed [20] by [2,0,1,3]
[4+6a,0+6b,5+6c,3+6d]:	transposed [20] by [1,2,0,3]
[3+6a,1+6b,5+6c,3+6d]:	transposed [21] by [1,2,0,3]
[1+6a,3+6b,5+6c,3+6d]:	transposed [21] by [2,1,0,3]
[0+6a,4+6b,5+6c,3+6d]:	transposed [20] by [2,1,0,3]
[4+6a,0+6b,0+6c,4+6d]:	unknown -> [24] [4,0,0,4] 288a+432a²+216a³+216b³+216c³-288d-432d²-216d³
-> solution [4,0,0,4],trivial(3) [10,0,0,10],trivial(3)
[3+6a,1+6b,0+6c,4+6d]:	unknown -> [25] [3,1,0,4] 162a+324a²+216a³+18b+108b²+216b³+216c³-288d-432d²-216d³-36
[1+6a,3+6b,0+6c,4+6d]:	transposed [25] by [1,0,2,3]
[0+6a,4+6b,0+6c,4+6d]:	transposed [24] by [1,0,2,3]
[3+6a,0+6b,1+6c,4+6d]:	transposed [25] by [0,2,1,3]
[2+6a,1+6b,1+6c,4+6d]:	unknown -> [26] [2,1,1,4] 72a+216a²+216a³+18b+108b²+216b³+18c+108c²+216c³-288d-432d²-216d³-54
[1+6a,2+6b,1+6c,4+6d]:	transposed [26] by [1,0,2,3]
[0+6a,3+6b,1+6c,4+6d]:	transposed [25] by [2,0,1,3]
[5+6a,4+6b,1+6c,4+6d]:	unknown -> [27] [5,4,1,4] 450a+540a²+216a³+288b+432b²+216b³+18c+108c²+216c³-288d-432d²-216d³+126
[4+6a,5+6b,1+6c,4+6d]:	transposed [27] by [1,0,2,3]
[1+6a,1+6b,2+6c,4+6d]:	transposed [26] by [1,2,0,3]
[4+6a,4+6b,2+6c,4+6d]:	unknown -> [28] [4,4,2,4] 288a+432a²+216a³+288b+432b²+216b³+72c+216c²+216c³-288d-432d²-216d³+72
[1+6a,0+6b,3+6c,4+6d]:	transposed [25] by [1,2,0,3]
[0+6a,1+6b,3+6c,4+6d]:	transposed [25] by [2,1,0,3]
[4+6a,3+6b,3+6c,4+6d]:	unknown -> [29] [4,3,3,4] 288a+432a²+216a³+162b+324b²+216b³+162c+324c²+216c³-288d-432d²-216d³+54
[3+6a,4+6b,3+6c,4+6d]:	transposed [29] by [1,0,2,3]
[0+6a,0+6b,4+6c,4+6d]:	transposed [24] by [1,2,0,3]
[5+6a,1+6b,4+6c,4+6d]:	transposed [27] by [0,2,1,3]
[4+6a,2+6b,4+6c,4+6d]:	transposed [28] by [0,2,1,3]
[3+6a,3+6b,4+6c,4+6d]:	transposed [29] by [1,2,0,3]
[2+6a,4+6b,4+6c,4+6d]:	transposed [28] by [2,0,1,3]
[1+6a,5+6b,4+6c,4+6d]:	transposed [27] by [2,0,1,3]
[4+6a,1+6b,5+6c,4+6d]:	transposed [27] by [1,2,0,3]
[1+6a,4+6b,5+6c,4+6d]:	transposed [27] by [2,1,0,3]
[5+6a,0+6b,0+6c,5+6d]:	unknown -> [30] [5,0,0,5] 450a+540a²+216a³+216b³+216c³-450d-540d²-216d³
-> solution [5,0,0,5],trivial(3) [11,0,0,11],trivial(3)
[3+6a,2+6b,0+6c,5+6d]:	unknown -> [31] [3,2,0,5] 162a+324a²+216a³+72b+216b²+216b³+216c³-450d-540d²-216d³-90
[2+6a,3+6b,0+6c,5+6d]:	transposed [31] by [1,0,2,3]
[0+6a,5+6b,0+6c,5+6d]:	transposed [30] by [1,0,2,3]
[2+6a,2+6b,1+6c,5+6d]:	unknown -> [32] [2,2,1,5] 72a+216a²+216a³+72b+216b²+216b³+18c+108c²+216c³-450d-540d²-216d³-108
[5+6a,5+6b,1+6c,5+6d]:	unknown -> [33] [5,5,1,5] 450a+540a²+216a³+450b+540b²+216b³+18c+108c²+216c³-450d-540d²-216d³+126
[3+6a,0+6b,2+6c,5+6d]:	transposed [31] by [0,2,1,3]
[2+6a,1+6b,2+6c,5+6d]:	transposed [32] by [0,2,1,3]
[1+6a,2+6b,2+6c,5+6d]:	transposed [32] by [2,0,1,3]
[0+6a,3+6b,2+6c,5+6d]:	transposed [31] by [2,0,1,3]
[5+6a,4+6b,2+6c,5+6d]:	unknown -> [34] [5,4,2,5] 450a+540a²+216a³+288b+432b²+216b³+72c+216c²+216c³-450d-540d²-216d³+72
[4+6a,5+6b,2+6c,5+6d]:	transposed [34] by [1,0,2,3]
[2+6a,0+6b,3+6c,5+6d]:	transposed [31] by [1,2,0,3]
[0+6a,2+6b,3+6c,5+6d]:	transposed [31] by [2,1,0,3]
[5+6a,3+6b,3+6c,5+6d]:	unknown -> [35] [5,3,3,5] 450a+540a²+216a³+162b+324b²+216b³+162c+324c²+216c³-450d-540d²-216d³+54
[3+6a,5+6b,3+6c,5+6d]:	transposed [35] by [1,0,2,3]
[5+6a,2+6b,4+6c,5+6d]:	transposed [34] by [0,2,1,3]
[2+6a,5+6b,4+6c,5+6d]:	transposed [34] by [2,0,1,3]
[0+6a,0+6b,5+6c,5+6d]:	transposed [30] by [1,2,0,3]
[5+6a,1+6b,5+6c,5+6d]:	transposed [33] by [0,2,1,3]
[4+6a,2+6b,5+6c,5+6d]:	transposed [34] by [1,2,0,3]
[3+6a,3+6b,5+6c,5+6d]:	transposed [35] by [1,2,0,3]
[2+6a,4+6b,5+6c,5+6d]:	transposed [34] by [2,1,0,3]
[1+6a,5+6b,5+6c,5+6d]:	transposed [33] by [2,0,1,3]
Maximum level 0 [36] mod 6: a³+b³+c³-d³
