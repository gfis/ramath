Expanding for base=3, transposables={{x},{y}}, reasons+features=base,evenexp,similiar,evenexp,similiar, exponentParities=[0,1]
----------------
expanding queue[0]^-1: 2 + x^2 - y^3 meter=[3,3] *3
[1+3*x,0+3*y]: unknown 3+6*x+9*x^2-27*y^3 -> [1]
[2+3*x,0+3*y]: negative-1 of [1] by {x=>1+3*x,y=>3*y}
----------------
expanding queue[1]^0: 3 + 6*x + 9*x^2 - 27*y^3 meter=[3,1] *9
[4+9*x,0+3*y]: unknown 18+72*x+81*x^2-27*y^3 -> [2]
----------------
expanding queue[2]^1: 18 + 72*x + 81*x^2 - 27*y^3 meter=[3,3] *27
[22+27*x,0+9*y]: unknown 486+1188*x+729*x^2-729*y^3 -> [3]
[22+27*x,3+9*y]: unknown 459+1188*x+729*x^2-243*y-729*y^2-729*y^3 -> [4]
[22+27*x,6+9*y]: negative-1 of [4] by {x=>22+27*x,y=>3+9*y}
Maximum level 2 reached, queue size = 5
