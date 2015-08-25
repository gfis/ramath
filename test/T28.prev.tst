Expanding for base=3, transposables={{x},{y}}, reasons+features=base,transpose,similiar, exponentParities=[0,1]
----------------
expanding queue[0]^-1: 2 + x^2 - y^3 meter=[3,3] *3
[1+3*x,0+3*y]: unknown 3+6*x+9*x^2-27*y^3 -> [1]
[2+3*x,0+3*y]: unknown 6+12*x+9*x^2-27*y^3 -> [2]
----------------
expanding queue[1]^0: 3 + 6*x + 9*x^2 - 27*y^3 meter=[3,1] *9
[4+9*x,0+3*y]: unknown 18+72*x+81*x^2-27*y^3 -> [3]
expanding queue[2]^0: 6 + 12*x + 9*x^2 - 27*y^3 meter=[3,1] *9
[5+9*x,0+3*y]: unknown 27+90*x+81*x^2-27*y^3 -> [4]
----------------
expanding queue[3]^1: 18 + 72*x + 81*x^2 - 27*y^3 meter=[3,3] *27
[22+27*x,0+9*y]: unknown 486+1188*x+729*x^2-729*y^3 -> [5]
[22+27*x,3+9*y]: unknown 459+1188*x+729*x^2-243*y-729*y^2-729*y^3 -> [6]
[22+27*x,6+9*y]: unknown 270+1188*x+729*x^2-972*y-1458*y^2-729*y^3 -> [7]
expanding queue[4]^2: 27 + 90*x + 81*x^2 - 27*y^3 meter=[3,3] *27
[5+27*x,0+9*y]: unknown 27+270*x+729*x^2-729*y^3 -> [8]
[5+27*x,3+9*y]: unknown 270*x+729*x^2-243*y-729*y^2-729*y^3 -> [9]
[5+27*x,6+9*y]: unknown -189+270*x+729*x^2-972*y-1458*y^2-729*y^3 -> [10]
Maximum level 2 reached, queue size = 11
