Expanding for base=2, transposables={{x},{y}}, reasons+features=base,evenexp,similiar norm,invall, exponentParities=[0,1]
----------------
expanding queue[0]^-1: 4 + x^2 - y^3 meter=[2,2] *2
[0+2*x,0+2*y]: unknown 1+x^2-2*y^3 -> [1]
[1+2*x,1+2*y]: unknown 2+2*x+2*x^2-3*y-6*y^2-4*y^3 -> [2]
----------------
expanding queue[1]^0: 1 + x^2 - 2*y^3 meter=[2,2] *4
[2+4*x,2+4*y]: unknown x+x^2-3*y-6*y^2-4*y^3 -> [3]
expanding queue[2]^0: 2 + 2*x + 2*x^2 - 3*y - 6*y^2 - 4*y^3 meter=[2,2] *4
[1+4*x,1+4*y]: unknown 1+2*x+4*x^2-3*y-12*y^2-16*y^3 -> [4]
[3+4*x,1+4*y]: negative-1 of [4] by {x=>1+4*x,y=>1+4*y}
----------------
expanding queue[3]^1: x + x^2 - 3*y - 6*y^2 - 4*y^3 meter=[2,2] *8
solution [2,2],trivial(2)
[2+8*x,2+8*y]: unknown x+2*x^2-3*y-12*y^2-16*y^3 -> [5]
[6+8*x,2+8*y]: negative-1 of [5] by {x=>2+8*x,y=>2+8*y}
expanding queue[4]^2: 1 + 2*x + 4*x^2 - 3*y - 12*y^2 - 16*y^3 meter=[2,2] *8
[1+8*x,5+8*y]: unknown -15+2*x+8*x^2-75*y-120*y^2-64*y^3 -> [6]
[5+8*x,5+8*y]: unknown -12+10*x+8*x^2-75*y-120*y^2-64*y^3 -> [7]
----------------
expanding queue[5]^3: x + 2*x^2 - 3*y - 12*y^2 - 16*y^3 meter=[2,2] *16
solution [2,2],trivial(2)
[2+16*x,2+16*y]: unknown x+4*x^2-3*y-24*y^2-64*y^3 -> [8]
[10+16*x,10+16*y]: unknown -14+5*x+4*x^2-75*y-120*y^2-64*y^3 -> [9]
expanding queue[6]^4:  - 15 + 2*x + 8*x^2 - 75*y - 120*y^2 - 64*y^3 meter=[2,2] *16
[1+16*x,13+16*y]: unknown -137+2*x+16*x^2-507*y-624*y^2-256*y^3 -> [10]
[9+16*x,13+16*y]: unknown -132+18*x+16*x^2-507*y-624*y^2-256*y^3 -> [11]
expanding queue[7]^4:  - 12 + 10*x + 8*x^2 - 75*y - 120*y^2 - 64*y^3 meter=[2,2] *16
[5+16*x,5+16*y]: unknown -6+10*x+16*x^2-75*y-240*y^2-256*y^3 -> [12]
[13+16*x,5+16*y]: unknown 3+26*x+16*x^2-75*y-240*y^2-256*y^3 -> [13]
----------------
expanding queue[8]^5: x + 4*x^2 - 3*y - 24*y^2 - 64*y^3 meter=[2,2] *32
solution [2,2],trivial(2)
[2+32*x,2+32*y]: unknown x+8*x^2-3*y-48*y^2-256*y^3 -> [14]
[18+32*x,18+32*y]: unknown -43+9*x+8*x^2-243*y-432*y^2-256*y^3 -> [15]
expanding queue[9]^5:  - 14 + 5*x + 4*x^2 - 75*y - 120*y^2 - 64*y^3 meter=[2,2] *32
[10+32*x,10+32*y]: unknown -7+5*x+8*x^2-75*y-240*y^2-256*y^3 -> [16]
[26+32*x,26+32*y]: unknown -132+13*x+8*x^2-507*y-624*y^2-256*y^3 -> [17]
expanding queue[10]^6:  - 137 + 2*x + 16*x^2 - 507*y - 624*y^2 - 256*y^3 meter=[2,2] *32
[1+32*x,29+32*y]: unknown -762+2*x+32*x^2-2523*y-2784*y^2-1024*y^3 -> [18]
[17+32*x,29+32*y]: unknown -753+34*x+32*x^2-2523*y-2784*y^2-1024*y^3 -> [19]
expanding queue[11]^6:  - 132 + 18*x + 16*x^2 - 507*y - 624*y^2 - 256*y^3 meter=[2,2] *32
[9+32*x,13+32*y]: unknown -66+18*x+32*x^2-507*y-1248*y^2-1024*y^3 -> [20]
[25+32*x,13+32*y]: unknown -49+50*x+32*x^2-507*y-1248*y^2-1024*y^3 -> [21]
expanding queue[12]^7:  - 6 + 10*x + 16*x^2 - 75*y - 240*y^2 - 256*y^3 meter=[2,2] *32
[5+32*x,5+32*y]: unknown -3+10*x+32*x^2-75*y-480*y^2-1024*y^3 -> [22]
[21+32*x,5+32*y]: unknown 10+42*x+32*x^2-75*y-480*y^2-1024*y^3 -> [23]
expanding queue[13]^7: 3 + 26*x + 16*x^2 - 75*y - 240*y^2 - 256*y^3 meter=[2,2] *32
[13+32*x,21+32*y]: unknown -284+26*x+32*x^2-1323*y-2016*y^2-1024*y^3 -> [24]
[29+32*x,21+32*y]: unknown -263+58*x+32*x^2-1323*y-2016*y^2-1024*y^3 -> [25]
Maximum level 4 reached, queue size = 26
