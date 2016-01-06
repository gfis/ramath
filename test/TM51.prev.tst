TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar norm
Refined variables=x,y,z
[0+1x,0+1y,0+1z]:	unknown -> [1] x²+y²-5x*y*z+z²
-> solution [0,0,0],trivial(3)
----------------
expanding queue[0]^-1,meter=[2,2,2]: x²+y²-5x*y*z+z²
[0+2x,0+2y,0+2z]:	unknown -> [1] x²+y²-10x*y*z+z²
-> solution [0,0,0],trivial(3)
[1+2x,1+2y,0+2z]:	unknown -> [2] 2x+2x²+2y+2y²-5z-10x*z-10y*z-20x*y*z+2z²+1
[1+2x,0+2y,1+2z]:	transposed [2] by [0,2,1]
[0+2x,1+2y,1+2z]:	transposed [2] by [2,0,1]
[1+2x,1+2y,1+2z]:	unknown -> [3] 3x-2x²+3y+10x*y-2y²+3z+10x*z+10y*z+20x*y*z-2z²+1
----------------
expanding queue[1]^0,meter=[2,2,2]: x²+y²-10x*y*z+z²
[0+4x,0+4y,0+4z]:	unknown -> [4] x²+y²-20x*y*z+z²
-> solution [0,0,0],trivial(3)
expanding queue[2]^0,meter=[1,1,2]: 2x+2x²+2y+2y²-5z-10x*z-10y*z-20x*y*z+2z²+1
[1+2x,1+2y,2+4z]:	unknown -> [5] 4x-x²+4y+10x*y-y²+z+10x*z+10y*z+20x*y*z-4z²+1
expanding queue[3]^0,meter=[2,2,2]: 3x-2x²+3y+10x*y-2y²+3z+10x*z+10y*z+20x*y*z-2z²+1
[3+4x,1+4y,1+4z]:	unknown -> [6] x+4x²-13y-20x*y+4y²-13z-20x*z-60y*z-80x*y*z+4z²-1
[1+4x,3+4y,1+4z]:	transposed [6] by [1,0,2]
[1+4x,1+4y,3+4z]:	transposed [6] by [1,2,0]
[3+4x,3+4y,3+4z]:	unknown -> [7] 39x-4x²+39y+60x*y-4y²+39z+60x*z+60y*z+80x*y*z-4z²+27
----------------
expanding queue[4]^1,meter=[2,2,2]: x²+y²-20x*y*z+z²
[0+8x,0+8y,0+8z]:	unknown -> [8] x²+y²-40x*y*z+z²
-> solution [0,0,0],trivial(3)
expanding queue[5]^2,meter=[2,2,2]: 4x-x²+4y+10x*y-y²+z+10x*z+10y*z+20x*y*z-4z²+1
[3+4x,1+4y,2+8z]:	unknown -> [9] 2x-2x²+14y+20x*y-2y²+11z+20x*z+60y*z+80x*y*z-8z²+2
[1+4x,3+4y,2+8z]:	transposed [9] by [1,0,2]
[1+4x,1+4y,6+8z]:	unknown -> [10] 14x-2x²+14y+60x*y-2y²-7z+20x*z+20y*z+80x*y*z-8z²-1
[3+4x,3+4y,6+8z]:	unknown -> [11] 42x-2x²+42y+60x*y-2y²+33z+60x*z+60y*z+80x*y*z-8z²+27
expanding queue[6]^3,meter=[2,2,2]: x+4x²-13y-20x*y+4y²-13z-20x*z-60y*z-80x*y*z+4z²-1
[7+8x,1+8y,1+8z]:	unknown -> [12] 9x+8x²-33y-40x*y+8y²-33z-40x*z-280y*z-320x*y*z+8z²+2
[3+8x,5+8y,1+8z]:	unknown -> [13] 19x-8x²+5y+40x*y-8y²+73z+200x*z+120y*z+320x*y*z-8z²+5
[3+8x,1+8y,5+8z]:	transposed [13] by [0,2,1]
[7+8x,5+8y,5+8z]:	unknown -> [14] 111x-8x²+165y+200x*y-8y²+165z+200x*z+280y*z+320x*y*z-8z²+97
expanding queue[7]^3,meter=[2,2,2]: 39x-4x²+39y+60x*y-4y²+39z+60x*z+60y*z+80x*y*z-4z²+27
[7+8x,3+8y,3+8z]:	unknown -> [15] 31x-8x²+99y+120x*y-8y²+99z+120x*z+280y*z+320x*y*z-8z²+31
[3+8x,7+8y,3+8z]:	transposed [15] by [1,0,2]
[3+8x,3+8y,7+8z]:	transposed [15] by [1,2,0]
[7+8x,7+8y,7+8z]:	unknown -> [16] 231x-8x²+231y+280x*y-8y²+231z+280x*z+280y*z+320x*y*z-8z²+196
----------------
expanding queue[8]^4,meter=[2,2,2]: x²+y²-40x*y*z+z²
[0+16x,0+16y,0+16z]:	unknown -> [17] x²+y²-80x*y*z+z²
-> solution [0,0,0],trivial(3)
expanding queue[9]^5,meter=[1,1,2]: 2x-2x²+14y+20x*y-2y²+11z+20x*z+60y*z+80x*y*z-8z²+2
[3+4x,1+4y,2+16z]:	unknown -> [18] x-x²+7y+10x*y-y²+11z+20x*z+60y*z+80x*y*z-16z²+1
expanding queue[10]^5,meter=[1,1,2]: 14x-2x²+14y+60x*y-2y²-7z+20x*z+20y*z+80x*y*z-8z²-1
[1+4x,1+4y,14+16z]:	unknown -> [19] 17x-x²+17y+70x*y-y²-23z+20x*z+20y*z+80x*y*z-16z²-8
expanding queue[11]^5,meter=[1,1,2]: 42x-2x²+42y+60x*y-2y²+33z+60x*z+60y*z+80x*y*z-8z²+27
[3+4x,3+4y,14+16z]:	unknown -> [20] 51x-x²+51y+70x*y-y²+17z+60x*z+60y*z+80x*y*z-16z²+26
expanding queue[12]^6,meter=[2,2,2]: 9x+8x²-33y-40x*y+8y²-33z-40x*z-280y*z-320x*y*z+8z²+2
[7+16x,1+16y,1+16z]:	unknown -> [21] 9x+16x²-33y-80x*y+16y²-33z-80x*z-560y*z-1280x*y*z+16z²+1
[15+16x,9+16y,1+16z]:	unknown -> [22] 15x-16x²+57y+80x*y-16y²+673z+720x*z+1200y*z+1280x*y*z-16z²+23
[15+16x,1+16y,9+16z]:	transposed [22] by [0,2,1]
[7+16x,9+16y,9+16z]:	unknown -> [23] 391x-16x²+297y+720x*y-16y²+297z+720x*z+560y*z+1280x*y*z-16z²+164
expanding queue[13]^6,meter=[2,2,2]: 19x-8x²+5y+40x*y-8y²+73z+200x*z+120y*z+320x*y*z-8z²+5
[11+16x,5+16y,1+16z]:	unknown -> [24] 3x-16x²+45y+80x*y-16y²+273z+400x*z+880y*z+1280x*y*z-16z²+8
[3+16x,13+16y,1+16z]:	unknown -> [25] 59x-16x²-11y+80x*y-16y²+193z+1040x*z+240y*z+1280x*y*z-16z²+1
[3+16x,5+16y,9+16z]:	unknown -> [26] 219x-16x²+125y+720x*y-16y²+57z+400x*z+240y*z+1280x*y*z-16z²+35
[11+16x,13+16y,9+16z]:	unknown -> [27] 563x-16x²+469y+720x*y-16y²+697z+1040x*z+880y*z+1280x*y*z-16z²+379
expanding queue[14]^6,meter=[2,2,2]: 111x-8x²+165y+200x*y-8y²+165z+200x*z+280y*z+320x*y*z-8z²+97
[15+16x,5+16y,5+16z]:	unknown -> [28] 95x-16x²+365y+400x*y-16y²+365z+400x*z+1200y*z+1280x*y*z-16z²+100
[7+16x,13+16y,5+16z]:	unknown -> [29] 311x-16x²+149y+400x*y-16y²+445z+1040x*z+560y*z+1280x*y*z-16z²+127
[7+16x,5+16y,13+16z]:	transposed [29] by [0,2,1]
[15+16x,13+16y,13+16z]:	unknown -> [30] 815x-16x²+949y+1040x*y-16y²+949z+1040x*z+1200y*z+1280x*y*z-16z²+757
expanding queue[15]^7,meter=[2,2,2]: 31x-8x²+99y+120x*y-8y²+99z+120x*z+280y*z+320x*y*z-8z²+31
[15+16x,3+16y,3+16z]:	unknown -> [31] 15x-16x²+219y+240x*y-16y²+219z+240x*z+1200y*z+1280x*y*z-16z²+27
[7+16x,11+16y,3+16z]:	unknown -> [32] 151x-16x²+83y+240x*y-16y²+379z+880x*z+560y*z+1280x*y*z-16z²+61
[7+16x,3+16y,11+16z]:	transposed [32] by [0,2,1]
[15+16x,11+16y,11+16z]:	unknown -> [33] 575x-16x²+803y+880x*y-16y²+803z+880x*z+1200y*z+1280x*y*z-16z²+538
expanding queue[16]^7,meter=[2,2,2]: 231x-8x²+231y+280x*y-8y²+231z+280x*z+280y*z+320x*y*z-8z²+196
[7+16x,7+16y,7+16z]:	unknown -> [34] 231x-16x²+231y+560x*y-16y²+231z+560x*z+560y*z+1280x*y*z-16z²+98
[15+16x,15+16y,7+16z]:	unknown -> [35] 495x-16x²+495y+560x*y-16y²+1111z+1200x*z+1200y*z+1280x*y*z-16z²+461
[15+16x,7+16y,15+16z]:	transposed [35] by [0,2,1]
[7+16x,15+16y,15+16z]:	transposed [35] by [2,0,1]
Maximum level 3 [36] mod 2: x²+y²-5x*y*z+z²
