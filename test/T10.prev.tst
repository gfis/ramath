Expanding for base=2, transposables={{x,y,z}}, reasons+features=base,similiar,transpose norm, exponentGCDs=[1,1,1]
----------------
expanding queue[0]^-1: x^2 + y^2 - 5*x*y*z + z^2 meter=[2,2,2] *2
solution [0,0,0],trivial(3)
[0+2*x,0+2*y,0+2*z]: unknown x^2+y^2-10*x*y*z+z^2 -> [1]
[1+2*x,1+2*y,0+2*z]: unknown 1+2*x+2*x^2+2*y+2*y^2-5*z-10*x*z-10*y*z-20*x*y*z+2*z^2 -> [2]
[1+2*x,0+2*y,1+2*z]: transposition of [2] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*y 1+2*y|1+2*z
[0+2*x,1+2*y,1+2*z]: transposition of [2] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*x 1+2*x|1+2*y 1+2*y|1+2*z
[1+2*x,1+2*y,1+2*z]: unknown -1-3*x+2*x^2-3*y-10*x*y+2*y^2-3*z-10*x*z-10*y*z-20*x*y*z+2*z^2 -> [3]
----------------
expanding queue[1]^0: x^2 + y^2 - 10*x*y*z + z^2 meter=[2,2,2] *4
solution [0,0,0],trivial(3)
[0+4*x,0+4*y,0+4*z]: unknown x^2+y^2-20*x*y*z+z^2 -> [4]
expanding queue[2]^0: 1 + 2*x + 2*x^2 + 2*y + 2*y^2 - 5*z - 10*x*z - 10*y*z - 20*x*y*z + 2*z^2 meter=[1,1,2] *4
[1+2*x,1+2*y,2+4*z]: unknown -1-4*x+x^2-4*y-10*x*y+y^2-z-10*x*z-10*y*z-20*x*y*z+4*z^2 -> [5]
expanding queue[3]^0:  - 1 - 3*x + 2*x^2 - 3*y - 10*x*y + 2*y^2 - 3*z - 10*x*z - 10*y*z - 20*x*y*z + 2*z^2 meter=[2,2,2] *4
[3+4*x,1+4*y,1+4*z]: unknown -1+x+4*x^2-13*y-20*x*y+4*y^2-13*z-20*x*z-60*y*z-80*x*y*z+4*z^2 -> [6]
[1+4*x,3+4*y,1+4*z]: transposition of [6] {0/1+4*y,0/1+4*z,0/3+4*x} by 1+4*y|1+4*x 3+4*x|3+4*y
[1+4*x,1+4*y,3+4*z]: transposition of [6] {0/1+4*y,0/1+4*z,0/3+4*x} by 1+4*y|1+4*x 1+4*z|1+4*y 3+4*x|3+4*z
[3+4*x,3+4*y,3+4*z]: unknown -27-39*x+4*x^2-39*y-60*x*y+4*y^2-39*z-60*x*z-60*y*z-80*x*y*z+4*z^2 -> [7]
----------------
expanding queue[4]^1: x^2 + y^2 - 20*x*y*z + z^2 meter=[2,2,2] *8
solution [0,0,0],trivial(3)
[0+8*x,0+8*y,0+8*z]: unknown x^2+y^2-40*x*y*z+z^2 -> [8]
expanding queue[5]^2:  - 1 - 4*x + x^2 - 4*y - 10*x*y + y^2 - z - 10*x*z - 10*y*z - 20*x*y*z + 4*z^2 meter=[2,2,2] *8
[3+4*x,1+4*y,2+8*z]: unknown -2-2*x+2*x^2-14*y-20*x*y+2*y^2-11*z-20*x*z-60*y*z-80*x*y*z+8*z^2 -> [9]
[1+4*x,3+4*y,2+8*z]: transposition of [9] {0/1+4*y,0/2+8*z,0/3+4*x} by 1+4*y|1+4*x 3+4*x|3+4*y
[1+4*x,1+4*y,6+8*z]: unknown 1-14*x+2*x^2-14*y-60*x*y+2*y^2+7*z-20*x*z-20*y*z-80*x*y*z+8*z^2 -> [10]
[3+4*x,3+4*y,6+8*z]: unknown -27-42*x+2*x^2-42*y-60*x*y+2*y^2-33*z-60*x*z-60*y*z-80*x*y*z+8*z^2 -> [11]
expanding queue[6]^3:  - 1 + x + 4*x^2 - 13*y - 20*x*y + 4*y^2 - 13*z - 20*x*z - 60*y*z - 80*x*y*z + 4*z^2 meter=[2,2,2] *8
[7+8*x,1+8*y,1+8*z]: unknown 2+9*x+8*x^2-33*y-40*x*y+8*y^2-33*z-40*x*z-280*y*z-320*x*y*z+8*z^2 -> [12]
[3+8*x,5+8*y,1+8*z]: unknown -5-19*x+8*x^2-5*y-40*x*y+8*y^2-73*z-200*x*z-120*y*z-320*x*y*z+8*z^2 -> [13]
[3+8*x,1+8*y,5+8*z]: transposition of [13] {0/1+8*z,0/3+8*x,0/5+8*y} by 1+8*z|1+8*y 5+8*y|5+8*z
[7+8*x,5+8*y,5+8*z]: unknown -97-111*x+8*x^2-165*y-200*x*y+8*y^2-165*z-200*x*z-280*y*z-320*x*y*z+8*z^2 -> [14]
expanding queue[7]^3:  - 27 - 39*x + 4*x^2 - 39*y - 60*x*y + 4*y^2 - 39*z - 60*x*z - 60*y*z - 80*x*y*z + 4*z^2 meter=[2,2,2] *8
[7+8*x,3+8*y,3+8*z]: unknown -31-31*x+8*x^2-99*y-120*x*y+8*y^2-99*z-120*x*z-280*y*z-320*x*y*z+8*z^2 -> [15]
[3+8*x,7+8*y,3+8*z]: transposition of [15] {0/3+8*y,0/3+8*z,0/7+8*x} by 3+8*y|3+8*x 7+8*x|7+8*y
[3+8*x,3+8*y,7+8*z]: transposition of [15] {0/3+8*y,0/3+8*z,0/7+8*x} by 3+8*y|3+8*x 3+8*z|3+8*y 7+8*x|7+8*z
[7+8*x,7+8*y,7+8*z]: unknown -196-231*x+8*x^2-231*y-280*x*y+8*y^2-231*z-280*x*z-280*y*z-320*x*y*z+8*z^2 -> [16]
----------------
expanding queue[8]^4: x^2 + y^2 - 40*x*y*z + z^2 meter=[2,2,2] *16
solution [0,0,0],trivial(3)
[0+16*x,0+16*y,0+16*z]: unknown x^2+y^2-80*x*y*z+z^2 -> [17]
expanding queue[9]^5:  - 2 - 2*x + 2*x^2 - 14*y - 20*x*y + 2*y^2 - 11*z - 20*x*z - 60*y*z - 80*x*y*z + 8*z^2 meter=[1,1,2] *16
[3+4*x,1+4*y,2+16*z]: unknown -1-x+x^2-7*y-10*x*y+y^2-11*z-20*x*z-60*y*z-80*x*y*z+16*z^2 -> [18]
expanding queue[10]^5: 1 - 14*x + 2*x^2 - 14*y - 60*x*y + 2*y^2 + 7*z - 20*x*z - 20*y*z - 80*x*y*z + 8*z^2 meter=[1,1,2] *16
[1+4*x,1+4*y,14+16*z]: unknown 8-17*x+x^2-17*y-70*x*y+y^2+23*z-20*x*z-20*y*z-80*x*y*z+16*z^2 -> [19]
expanding queue[11]^5:  - 27 - 42*x + 2*x^2 - 42*y - 60*x*y + 2*y^2 - 33*z - 60*x*z - 60*y*z - 80*x*y*z + 8*z^2 meter=[1,1,2] *16
[3+4*x,3+4*y,14+16*z]: unknown -26-51*x+x^2-51*y-70*x*y+y^2-17*z-60*x*z-60*y*z-80*x*y*z+16*z^2 -> [20]
expanding queue[12]^6: 2 + 9*x + 8*x^2 - 33*y - 40*x*y + 8*y^2 - 33*z - 40*x*z - 280*y*z - 320*x*y*z + 8*z^2 meter=[2,2,2] *16
[7+16*x,1+16*y,1+16*z]: unknown 1+9*x+16*x^2-33*y-80*x*y+16*y^2-33*z-80*x*z-560*y*z-1280*x*y*z+16*z^2 -> [21]
[15+16*x,9+16*y,1+16*z]: unknown -23-15*x+16*x^2-57*y-80*x*y+16*y^2-673*z-720*x*z-1200*y*z-1280*x*y*z+16*z^2 -> [22]
[15+16*x,1+16*y,9+16*z]: transposition of [22] {0/1+16*z,0/15+16*x,0/9+16*y} by 1+16*z|1+16*y 9+16*y|9+16*z
[7+16*x,9+16*y,9+16*z]: unknown -164-391*x+16*x^2-297*y-720*x*y+16*y^2-297*z-720*x*z-560*y*z-1280*x*y*z+16*z^2 -> [23]
expanding queue[13]^6:  - 5 - 19*x + 8*x^2 - 5*y - 40*x*y + 8*y^2 - 73*z - 200*x*z - 120*y*z - 320*x*y*z + 8*z^2 meter=[2,2,2] *16
[11+16*x,5+16*y,1+16*z]: unknown -8-3*x+16*x^2-45*y-80*x*y+16*y^2-273*z-400*x*z-880*y*z-1280*x*y*z+16*z^2 -> [24]
[3+16*x,13+16*y,1+16*z]: unknown -1-59*x+16*x^2+11*y-80*x*y+16*y^2-193*z-1040*x*z-240*y*z-1280*x*y*z+16*z^2 -> [25]
[3+16*x,5+16*y,9+16*z]: unknown -35-219*x+16*x^2-125*y-720*x*y+16*y^2-57*z-400*x*z-240*y*z-1280*x*y*z+16*z^2 -> [26]
[11+16*x,13+16*y,9+16*z]: unknown -379-563*x+16*x^2-469*y-720*x*y+16*y^2-697*z-1040*x*z-880*y*z-1280*x*y*z+16*z^2 -> [27]
expanding queue[14]^6:  - 97 - 111*x + 8*x^2 - 165*y - 200*x*y + 8*y^2 - 165*z - 200*x*z - 280*y*z - 320*x*y*z + 8*z^2 meter=[2,2,2] *16
[15+16*x,5+16*y,5+16*z]: unknown -100-95*x+16*x^2-365*y-400*x*y+16*y^2-365*z-400*x*z-1200*y*z-1280*x*y*z+16*z^2 -> [28]
[7+16*x,13+16*y,5+16*z]: unknown -127-311*x+16*x^2-149*y-400*x*y+16*y^2-445*z-1040*x*z-560*y*z-1280*x*y*z+16*z^2 -> [29]
[7+16*x,5+16*y,13+16*z]: transposition of [29] {0/13+16*y,0/5+16*z,0/7+16*x} by 13+16*y|13+16*z 5+16*z|5+16*y
[15+16*x,13+16*y,13+16*z]: unknown -757-815*x+16*x^2-949*y-1040*x*y+16*y^2-949*z-1040*x*z-1200*y*z-1280*x*y*z+16*z^2 -> [30]
expanding queue[15]^7:  - 31 - 31*x + 8*x^2 - 99*y - 120*x*y + 8*y^2 - 99*z - 120*x*z - 280*y*z - 320*x*y*z + 8*z^2 meter=[2,2,2] *16
[15+16*x,3+16*y,3+16*z]: unknown -27-15*x+16*x^2-219*y-240*x*y+16*y^2-219*z-240*x*z-1200*y*z-1280*x*y*z+16*z^2 -> [31]
[7+16*x,11+16*y,3+16*z]: unknown -61-151*x+16*x^2-83*y-240*x*y+16*y^2-379*z-880*x*z-560*y*z-1280*x*y*z+16*z^2 -> [32]
[7+16*x,3+16*y,11+16*z]: transposition of [32] {0/11+16*y,0/3+16*z,0/7+16*x} by 11+16*y|11+16*z 3+16*z|3+16*y
[15+16*x,11+16*y,11+16*z]: unknown -538-575*x+16*x^2-803*y-880*x*y+16*y^2-803*z-880*x*z-1200*y*z-1280*x*y*z+16*z^2 -> [33]
expanding queue[16]^7:  - 196 - 231*x + 8*x^2 - 231*y - 280*x*y + 8*y^2 - 231*z - 280*x*z - 280*y*z - 320*x*y*z + 8*z^2 meter=[2,2,2] *16
[7+16*x,7+16*y,7+16*z]: unknown -98-231*x+16*x^2-231*y-560*x*y+16*y^2-231*z-560*x*z-560*y*z-1280*x*y*z+16*z^2 -> [34]
[15+16*x,15+16*y,7+16*z]: unknown -461-495*x+16*x^2-495*y-560*x*y+16*y^2-1111*z-1200*x*z-1200*y*z-1280*x*y*z+16*z^2 -> [35]
[15+16*x,7+16*y,15+16*z]: transposition of [35] {0/15+16*x,0/15+16*y,0/7+16*z} by 15+16*y|15+16*z 7+16*z|7+16*y
[7+16*x,15+16*y,15+16*z]: transposition of [35] {0/15+16*x,0/15+16*y,0/7+16*z} by 15+16*x|15+16*y 15+16*y|15+16*z 7+16*z|7+16*x
Maximum level 3 reached at [36]: x^2 + y^2 - 5*x*y*z + z^2
