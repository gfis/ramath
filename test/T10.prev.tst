TranspositionSet={[2,1,0],[1,2,0],[2,0,1],[0,2,1],[1,0,2]}
ExponentGCDs=[1,1,1]
Expanding for base=2, reasons+features=base,transpose,same,similiar norm
Refined variables=x,y,z
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^2+y^2-5x*y*z+z^2
solution [0,0,0],trivial(3)
[0+2x,0+2y,0+2z]:	unknown -> [1] x^2+y^2-10x*y*z+z^2
[1+2x,1+2y,0+2z]:	unknown -> [2] 1+2x+2x^2+2y+2y^2-5z-10x*z-10y*z-20x*y*z+2z^2
[1+2x,0+2y,1+2z]:	transposed [2] by [0,2,1]
[0+2x,1+2y,1+2z]:	transposed [2] by [2,0,1]
[1+2x,1+2y,1+2z]:	unknown -> [3] -1-3x+2x^2-3y-10x*y+2y^2-3z-10x*z-10y*z-20x*y*z+2z^2
----------------
expanding queue[1]^0,meter=[2,2,2]*4: x^2+y^2-10x*y*z+z^2
solution [0,0,0],trivial(3)
[0+4x,0+4y,0+4z]:	unknown -> [4] x^2+y^2-20x*y*z+z^2
expanding queue[2]^0,meter=[1,1,2]*4: 1+2x+2x^2+2y+2y^2-5z-10x*z-10y*z-20x*y*z+2z^2
[1+2x,1+2y,2+4z]:	unknown -> [5] -1-4x+x^2-4y-10x*y+y^2-z-10x*z-10y*z-20x*y*z+4z^2
expanding queue[3]^0,meter=[2,2,2]*4: -1-3x+2x^2-3y-10x*y+2y^2-3z-10x*z-10y*z-20x*y*z+2z^2
[3+4x,1+4y,1+4z]:	unknown -> [6] -1+x+4x^2-13y-20x*y+4y^2-13z-20x*z-60y*z-80x*y*z+4z^2
[1+4x,3+4y,1+4z]:	transposed [6] by [1,0,2]
[1+4x,1+4y,3+4z]:	transposed [6] by [1,2,0]
[3+4x,3+4y,3+4z]:	unknown -> [7] -27-39x+4x^2-39y-60x*y+4y^2-39z-60x*z-60y*z-80x*y*z+4z^2
----------------
expanding queue[4]^1,meter=[2,2,2]*8: x^2+y^2-20x*y*z+z^2
solution [0,0,0],trivial(3)
[0+8x,0+8y,0+8z]:	unknown -> [8] x^2+y^2-40x*y*z+z^2
expanding queue[5]^2,meter=[2,2,2]*8: -1-4x+x^2-4y-10x*y+y^2-z-10x*z-10y*z-20x*y*z+4z^2
[3+4x,1+4y,2+8z]:	unknown -> [9] -2-2x+2x^2-14y-20x*y+2y^2-11z-20x*z-60y*z-80x*y*z+8z^2
[1+4x,3+4y,2+8z]:	transposed [9] by [1,0,2]
[1+4x,1+4y,6+8z]:	unknown -> [10] 1-14x+2x^2-14y-60x*y+2y^2+7z-20x*z-20y*z-80x*y*z+8z^2
[3+4x,3+4y,6+8z]:	unknown -> [11] -27-42x+2x^2-42y-60x*y+2y^2-33z-60x*z-60y*z-80x*y*z+8z^2
expanding queue[6]^3,meter=[2,2,2]*8: -1+x+4x^2-13y-20x*y+4y^2-13z-20x*z-60y*z-80x*y*z+4z^2
[7+8x,1+8y,1+8z]:	unknown -> [12] 2+9x+8x^2-33y-40x*y+8y^2-33z-40x*z-280y*z-320x*y*z+8z^2
[3+8x,5+8y,1+8z]:	unknown -> [13] -5-19x+8x^2-5y-40x*y+8y^2-73z-200x*z-120y*z-320x*y*z+8z^2
[3+8x,1+8y,5+8z]:	transposed [13] by [0,2,1]
[7+8x,5+8y,5+8z]:	unknown -> [14] -97-111x+8x^2-165y-200x*y+8y^2-165z-200x*z-280y*z-320x*y*z+8z^2
expanding queue[7]^3,meter=[2,2,2]*8: -27-39x+4x^2-39y-60x*y+4y^2-39z-60x*z-60y*z-80x*y*z+4z^2
[7+8x,3+8y,3+8z]:	unknown -> [15] -31-31x+8x^2-99y-120x*y+8y^2-99z-120x*z-280y*z-320x*y*z+8z^2
[3+8x,7+8y,3+8z]:	transposed [15] by [1,0,2]
[3+8x,3+8y,7+8z]:	transposed [15] by [1,2,0]
[7+8x,7+8y,7+8z]:	unknown -> [16] -196-231x+8x^2-231y-280x*y+8y^2-231z-280x*z-280y*z-320x*y*z+8z^2
----------------
expanding queue[8]^4,meter=[2,2,2]*16: x^2+y^2-40x*y*z+z^2
solution [0,0,0],trivial(3)
[0+16x,0+16y,0+16z]:	unknown -> [17] x^2+y^2-80x*y*z+z^2
expanding queue[9]^5,meter=[1,1,2]*16: -2-2x+2x^2-14y-20x*y+2y^2-11z-20x*z-60y*z-80x*y*z+8z^2
[3+4x,1+4y,2+16z]:	unknown -> [18] -1-x+x^2-7y-10x*y+y^2-11z-20x*z-60y*z-80x*y*z+16z^2
expanding queue[10]^5,meter=[1,1,2]*16: 1-14x+2x^2-14y-60x*y+2y^2+7z-20x*z-20y*z-80x*y*z+8z^2
[1+4x,1+4y,14+16z]:	unknown -> [19] 8-17x+x^2-17y-70x*y+y^2+23z-20x*z-20y*z-80x*y*z+16z^2
expanding queue[11]^5,meter=[1,1,2]*16: -27-42x+2x^2-42y-60x*y+2y^2-33z-60x*z-60y*z-80x*y*z+8z^2
[3+4x,3+4y,14+16z]:	unknown -> [20] -26-51x+x^2-51y-70x*y+y^2-17z-60x*z-60y*z-80x*y*z+16z^2
expanding queue[12]^6,meter=[2,2,2]*16: 2+9x+8x^2-33y-40x*y+8y^2-33z-40x*z-280y*z-320x*y*z+8z^2
[7+16x,1+16y,1+16z]:	unknown -> [21] 1+9x+16x^2-33y-80x*y+16y^2-33z-80x*z-560y*z-1280x*y*z+16z^2
[15+16x,9+16y,1+16z]:	unknown -> [22] -23-15x+16x^2-57y-80x*y+16y^2-673z-720x*z-1200y*z-1280x*y*z+16z^2
[15+16x,1+16y,9+16z]:	transposed [22] by [0,2,1]
[7+16x,9+16y,9+16z]:	unknown -> [23] -164-391x+16x^2-297y-720x*y+16y^2-297z-720x*z-560y*z-1280x*y*z+16z^2
expanding queue[13]^6,meter=[2,2,2]*16: -5-19x+8x^2-5y-40x*y+8y^2-73z-200x*z-120y*z-320x*y*z+8z^2
[11+16x,5+16y,1+16z]:	unknown -> [24] -8-3x+16x^2-45y-80x*y+16y^2-273z-400x*z-880y*z-1280x*y*z+16z^2
[3+16x,13+16y,1+16z]:	unknown -> [25] -1-59x+16x^2+11y-80x*y+16y^2-193z-1040x*z-240y*z-1280x*y*z+16z^2
[3+16x,5+16y,9+16z]:	unknown -> [26] -35-219x+16x^2-125y-720x*y+16y^2-57z-400x*z-240y*z-1280x*y*z+16z^2
[11+16x,13+16y,9+16z]:	unknown -> [27] -379-563x+16x^2-469y-720x*y+16y^2-697z-1040x*z-880y*z-1280x*y*z+16z^2
expanding queue[14]^6,meter=[2,2,2]*16: -97-111x+8x^2-165y-200x*y+8y^2-165z-200x*z-280y*z-320x*y*z+8z^2
[15+16x,5+16y,5+16z]:	unknown -> [28] -100-95x+16x^2-365y-400x*y+16y^2-365z-400x*z-1200y*z-1280x*y*z+16z^2
[7+16x,13+16y,5+16z]:	unknown -> [29] -127-311x+16x^2-149y-400x*y+16y^2-445z-1040x*z-560y*z-1280x*y*z+16z^2
[7+16x,5+16y,13+16z]:	transposed [29] by [0,2,1]
[15+16x,13+16y,13+16z]:	unknown -> [30] -757-815x+16x^2-949y-1040x*y+16y^2-949z-1040x*z-1200y*z-1280x*y*z+16z^2
expanding queue[15]^7,meter=[2,2,2]*16: -31-31x+8x^2-99y-120x*y+8y^2-99z-120x*z-280y*z-320x*y*z+8z^2
[15+16x,3+16y,3+16z]:	unknown -> [31] -27-15x+16x^2-219y-240x*y+16y^2-219z-240x*z-1200y*z-1280x*y*z+16z^2
[7+16x,11+16y,3+16z]:	unknown -> [32] -61-151x+16x^2-83y-240x*y+16y^2-379z-880x*z-560y*z-1280x*y*z+16z^2
[7+16x,3+16y,11+16z]:	transposed [32] by [0,2,1]
[15+16x,11+16y,11+16z]:	unknown -> [33] -538-575x+16x^2-803y-880x*y+16y^2-803z-880x*z-1200y*z-1280x*y*z+16z^2
expanding queue[16]^7,meter=[2,2,2]*16: -196-231x+8x^2-231y-280x*y+8y^2-231z-280x*z-280y*z-320x*y*z+8z^2
[7+16x,7+16y,7+16z]:	unknown -> [34] -98-231x+16x^2-231y-560x*y+16y^2-231z-560x*z-560y*z-1280x*y*z+16z^2
[15+16x,15+16y,7+16z]:	unknown -> [35] -461-495x+16x^2-495y-560x*y+16y^2-1111z-1200x*z-1200y*z-1280x*y*z+16z^2
[15+16x,7+16y,15+16z]:	transposed [35] by [0,2,1]
[7+16x,15+16y,15+16z]:	transposed [35] by [2,0,1]
Maximum level 3 reached at [36]: x^2+y^2-5x*y*z+z^2
