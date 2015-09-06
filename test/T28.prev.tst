ExponentGCDs=[2,3]
Expanding for base=3, reasons+features=base,same,similiar,evenexp 
Refined variables=x,y
----------------
expanding queue[0]^-1,meter=[3,3]*3: 2+x^2-y^3
[1+3x,0+3y]:	unknown -> [1] 3+6x+9x^2-27y^3
[2+3x,0+3y]:	negative-1 [1] by {x=>-x-1}
----------------
expanding queue[1]^0,meter=[3,1]*9: 3+6x+9x^2-27y^3
[4+9x,0+3y]:	unknown -> [2] 18+72x+81x^2-27y^3
----------------
expanding queue[2]^1,meter=[3,3]*27: 18+72x+81x^2-27y^3
[22+27x,0+9y]:	unknown -> [3] 486+1188x+729x^2-729y^3
[22+27x,3+9y]:	unknown -> [4] 459+1188x+729x^2-243y-729y^2-729y^3
[22+27x,6+9y]:	unknown -> [5] 270+1188x+729x^2-972y-1458y^2-729y^3
Maximum level 2 reached at [6]: 2+x^2-y^3
