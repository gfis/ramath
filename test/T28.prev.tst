ExponentGCDs=[2,3]
Expanding for base=3, reasons+features=base,same,similiar,evenexp 
----------------
expanding queue[0]^-1,meter=[3,3]*3: 2 + x^2 - y^3
[1,0]:	unknown -> [1] 3+6*x+9*x^2-27*y^3
[2,0]:	negative-1 [1] by {x=>-x-1}
----------------
expanding queue[1]^0,meter=[3,1]*9: 3 + 6*x + 9*x^2 - 27*y^3
[4,0]:	unknown -> [2] 18+72*x+81*x^2-27*y^3
----------------
expanding queue[2]^1,meter=[3,3]*27: 18 + 72*x + 81*x^2 - 27*y^3
[22,0]:	unknown -> [3] 486+1188*x+729*x^2-729*y^3
[22,3]:	unknown -> [4] 459+1188*x+729*x^2-243*y-729*y^2-729*y^3
[22,6]:	unknown -> [5] 270+1188*x+729*x^2-972*y-1458*y^2-729*y^3
Maximum level 2 reached at [6]: 2 + x^2 - y^3
