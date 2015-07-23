Expanding for base=3, transposables={{x},{y}}, reasons+features=base,transpose,same,dogrow
----------------
expanding queue[0]^-1: 2 + x^2 - y^3 = 0 meter=[3,3] *3
[1+3*x,0+3*y]: unknown 3+6*x+9*x^2-27*y^3=0 -> [1]
[2+3*x,0+3*y]: unknown 6+12*x+9*x^2-27*y^3=0 -> [2]
----------------
expanding queue[1]^0: 3 + 6*x + 9*x^2 - 27*y^3 = 0 meter=[3,1] *9
[4+9*x,0+3*y]: unknown, grown from [1]*6,12,9,1 18+72*x+81*x^2-27*y^3=0 -> [3]
expanding queue[2]^0: 6 + 12*x + 9*x^2 - 27*y^3 = 0 meter=[3,1] *9
[5+9*x,0+3*y]: unknown 27+90*x+81*x^2-27*y^3=0 -> [4]
----------------
expanding queue[3]^1: 18 + 72*x + 81*x^2 - 27*y^3 = 0 meter=[3,3] *27
[22+27*x,0+9*y]: unknown, grown from [1]*162,198,81,27 486+1188*x+729*x^2-729*y^3=0 -> [5]
[22+27*x,3+9*y]: unknown 459+1188*x+729*x^2-243*y-729*y^2-729*y^3=0 -> [6]
[22+27*x,6+9*y]: unknown 270+1188*x+729*x^2-972*y-1458*y^2-729*y^3=0 -> [7]
expanding queue[4]^2: 27 + 90*x + 81*x^2 - 27*y^3 = 0 meter=[3,3] *27
[5+27*x,0+9*y]: unknown, grown from [4]*1,3,9,27 27+270*x+729*x^2-729*y^3=0 -> [8]
[5+27*x,3+9*y]: unknown 270*x+729*x^2-243*y-729*y^2-729*y^3=0 -> [9]
[5+27*x,6+9*y]: unknown -189+270*x+729*x^2-972*y-1458*y^2-729*y^3=0 -> [10]
Maximum level 2 reached, queue size = 11
