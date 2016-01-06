ExponentGCDs=[2,3]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm,invall
Refined variables=x,y
[0+1x,0+1y]:	unknown -> [1] x²-y³+4
----------------
expanding queue[0]^-1,meter=[2,2]: x²-y³+4
[0+2x,0+2y]:	unknown -> [1] x²-2y³+1
-> solution [2,2],trivial(2)
[1+2x,1+2y]:	unknown -> [2] 2x+2x²-3y-6y²-4y³+2
----------------
expanding queue[1]^0,meter=[2,2]: x²-2y³+1
[2+4x,2+4y]:	unknown -> [3] x+x²-3y-6y²-4y³
-> solution [2,2],trivial(2)
expanding queue[2]^0,meter=[2,2]: 2x+2x²-3y-6y²-4y³+2
[1+4x,1+4y]:	unknown -> [4] 2x+4x²-3y-12y²-16y³+1
[3+4x,1+4y]:	negative-1 [4] by {x=>-x-1}
----------------
expanding queue[3]^1,meter=[2,2]: x+x²-3y-6y²-4y³
[2+8x,2+8y]:	unknown -> [5] x+2x²-3y-12y²-16y³
-> solution [2,2],trivial(2)
[6+8x,2+8y]:	negative-1 [5] by {x=>-x-1}
expanding queue[4]^2,meter=[2,2]: 2x+4x²-3y-12y²-16y³+1
[1+8x,5+8y]:	unknown -> [6] 2x+8x²-75y-120y²-64y³-15
[5+8x,5+8y]:	unknown -> [7] 10x+8x²-75y-120y²-64y³-12
----------------
expanding queue[5]^3,meter=[2,2]: x+2x²-3y-12y²-16y³
[2+16x,2+16y]:	unknown -> [8] x+4x²-3y-24y²-64y³
-> solution [2,2],trivial(2)
[10+16x,10+16y]:	unknown -> [9] 5x+4x²-75y-120y²-64y³-14
expanding queue[6]^4,meter=[2,2]: 2x+8x²-75y-120y²-64y³-15
[1+16x,13+16y]:	unknown -> [10] 2x+16x²-507y-624y²-256y³-137
[9+16x,13+16y]:	unknown -> [11] 18x+16x²-507y-624y²-256y³-132
expanding queue[7]^4,meter=[2,2]: 10x+8x²-75y-120y²-64y³-12
[5+16x,5+16y]:	unknown -> [12] 10x+16x²-75y-240y²-256y³-6
[13+16x,5+16y]:	unknown -> [13] 26x+16x²-75y-240y²-256y³+3
----------------
expanding queue[8]^5,meter=[2,2]: x+4x²-3y-24y²-64y³
[2+32x,2+32y]:	unknown -> [14] x+8x²-3y-48y²-256y³
-> solution [2,2],trivial(2)
[18+32x,18+32y]:	unknown -> [15] 9x+8x²-243y-432y²-256y³-43
expanding queue[9]^5,meter=[2,2]: 5x+4x²-75y-120y²-64y³-14
[10+32x,10+32y]:	unknown -> [16] 5x+8x²-75y-240y²-256y³-7
[26+32x,26+32y]:	unknown -> [17] 13x+8x²-507y-624y²-256y³-132
expanding queue[10]^6,meter=[2,2]: 2x+16x²-507y-624y²-256y³-137
[1+32x,29+32y]:	unknown -> [18] 2x+32x²-2523y-2784y²-1024y³-762
[17+32x,29+32y]:	unknown -> [19] 34x+32x²-2523y-2784y²-1024y³-753
expanding queue[11]^6,meter=[2,2]: 18x+16x²-507y-624y²-256y³-132
[9+32x,13+32y]:	unknown -> [20] 18x+32x²-507y-1248y²-1024y³-66
[25+32x,13+32y]:	unknown -> [21] 50x+32x²-507y-1248y²-1024y³-49
expanding queue[12]^7,meter=[2,2]: 10x+16x²-75y-240y²-256y³-6
[5+32x,5+32y]:	unknown -> [22] 10x+32x²-75y-480y²-1024y³-3
[21+32x,5+32y]:	unknown -> [23] 42x+32x²-75y-480y²-1024y³+10
expanding queue[13]^7,meter=[2,2]: 26x+16x²-75y-240y²-256y³+3
[13+32x,21+32y]:	unknown -> [24] 26x+32x²-1323y-2016y²-1024y³-284
[29+32x,21+32y]:	unknown -> [25] 58x+32x²-1323y-2016y²-1024y³-263
Maximum level 4 [26] mod 2: x²-y³+4
