ExponentGCDs=[2,2]
Expanding for base=2, reasons+features=base,same,similiar,evenexp norm
Refined variables=x,y
----------------
expanding queue[0]^-1,meter=[2,2]*2: -576+15x^2-7y^2
[0+2x,0+2y]:	similiar   [0], is mappable by: {x=>x,y=>y} 
[1+2x,1+2y]:	unknown -> [1] -142+15x+15x^2-7y-7y^2
----------------
expanding queue[1]^0,meter=[2,2]*4: -142+15x+15x^2-7y-7y^2
[1+4x,1+4y]:	unknown -> [2] -71+15x+30x^2-7y-14y^2
[3+4x,1+4y]:	negative-1 [2] by {x=>-x-1}
[1+4x,3+4y]:	negative-1 [2] by {y=>-y-1}
[3+4x,3+4y]:	negative-1 [2] by {x=>-x-1,y=>-y-1}
----------------
expanding queue[2]^1,meter=[2,2]*8: -71+15x+30x^2-7y-14y^2
[5+8x,1+8y]:	unknown -> [3] -13+75x+60x^2-7y-28y^2
[1+8x,5+8y]:	unknown -> [4] -46+15x+60x^2-35y-28y^2
----------------
expanding queue[3]^2,meter=[2,2]*16: -13+75x+60x^2-7y-28y^2
[13+16x,1+16y]:	unknown -> [5] 61+195x+120x^2-7y-56y^2
[5+16x,9+16y]:	unknown -> [6] -24+75x+120x^2-63y-56y^2
expanding queue[4]^2,meter=[2,2]*16: -46+15x+60x^2-35y-28y^2
[1+16x,5+16y]:	unknown -> [7] -23+15x+120x^2-35y-56y^2
[9+16x,13+16y]:	unknown -> [8] -17+135x+120x^2-91y-56y^2
Maximum level 3 at [9]: -576+15x^2-7y^2
