Expanding for base=2, reasons+features=base,transpose,similiar norm
exponentGCDs=[1,1,1], transposables={{x,y,z}}
----------------
expanding queue[0]^-1,meter=[2,2,2]*2: x^2 + y^2 - 5*x*y*z + z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [1] x^2+y^2-10*x*y*z+z^2
[1,1,0]:	unknown -> [2] 1+2*x+2*x^2+2*y+2*y^2-5*z-10*x*z-10*y*z-20*x*y*z+2*z^2
[1,0,1]:	transposed [2] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*y 1+2*y|1+2*z
[0,1,1]:	transposed [2] {0/0+2*z,0/1+2*x,0/1+2*y} by 0+2*z|0+2*x 1+2*x|1+2*y 1+2*y|1+2*z
[1,1,1]:	unknown -> [3] -1-3*x+2*x^2-3*y-10*x*y+2*y^2-3*z-10*x*z-10*y*z-20*x*y*z+2*z^2
----------------
expanding queue[1]^0,meter=[2,2,2]*4: x^2 + y^2 - 10*x*y*z + z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [4] x^2+y^2-20*x*y*z+z^2
expanding queue[2]^0,meter=[1,1,2]*4: 1 + 2*x + 2*x^2 + 2*y + 2*y^2 - 5*z - 10*x*z - 10*y*z - 20*x*y*z + 2*z^2
[1,1,2]:	unknown -> [5] -1-4*x+x^2-4*y-10*x*y+y^2-z-10*x*z-10*y*z-20*x*y*z+4*z^2
expanding queue[3]^0,meter=[2,2,2]*4:  - 1 - 3*x + 2*x^2 - 3*y - 10*x*y + 2*y^2 - 3*z - 10*x*z - 10*y*z - 20*x*y*z + 2*z^2
[3,1,1]:	unknown -> [6] -1+x+4*x^2-13*y-20*x*y+4*y^2-13*z-20*x*z-60*y*z-80*x*y*z+4*z^2
[1,3,1]:	transposed [6] {0/1+4*y,0/1+4*z,0/3+4*x} by 1+4*y|1+4*x 3+4*x|3+4*y
[1,1,3]:	transposed [6] {0/1+4*y,0/1+4*z,0/3+4*x} by 1+4*y|1+4*x 1+4*z|1+4*y 3+4*x|3+4*z
[3,3,3]:	unknown -> [7] -27-39*x+4*x^2-39*y-60*x*y+4*y^2-39*z-60*x*z-60*y*z-80*x*y*z+4*z^2
----------------
expanding queue[4]^1,meter=[2,2,2]*8: x^2 + y^2 - 20*x*y*z + z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [8] x^2+y^2-40*x*y*z+z^2
expanding queue[5]^2,meter=[2,2,2]*8:  - 1 - 4*x + x^2 - 4*y - 10*x*y + y^2 - z - 10*x*z - 10*y*z - 20*x*y*z + 4*z^2
[3,1,2]:	unknown -> [9] -2-2*x+2*x^2-14*y-20*x*y+2*y^2-11*z-20*x*z-60*y*z-80*x*y*z+8*z^2
[1,3,2]:	transposed [9] {0/1+4*y,0/2+8*z,0/3+4*x} by 1+4*y|1+4*x 3+4*x|3+4*y
[1,1,6]:	unknown -> [10] 1-14*x+2*x^2-14*y-60*x*y+2*y^2+7*z-20*x*z-20*y*z-80*x*y*z+8*z^2
[3,3,6]:	unknown -> [11] -27-42*x+2*x^2-42*y-60*x*y+2*y^2-33*z-60*x*z-60*y*z-80*x*y*z+8*z^2
expanding queue[6]^3,meter=[2,2,2]*8:  - 1 + x + 4*x^2 - 13*y - 20*x*y + 4*y^2 - 13*z - 20*x*z - 60*y*z - 80*x*y*z + 4*z^2
[7,1,1]:	unknown -> [12] 2+9*x+8*x^2-33*y-40*x*y+8*y^2-33*z-40*x*z-280*y*z-320*x*y*z+8*z^2
[3,5,1]:	unknown -> [13] -5-19*x+8*x^2-5*y-40*x*y+8*y^2-73*z-200*x*z-120*y*z-320*x*y*z+8*z^2
[3,1,5]:	transposed [13] {0/1+8*z,0/3+8*x,0/5+8*y} by 1+8*z|1+8*y 5+8*y|5+8*z
[7,5,5]:	unknown -> [14] -97-111*x+8*x^2-165*y-200*x*y+8*y^2-165*z-200*x*z-280*y*z-320*x*y*z+8*z^2
expanding queue[7]^3,meter=[2,2,2]*8:  - 27 - 39*x + 4*x^2 - 39*y - 60*x*y + 4*y^2 - 39*z - 60*x*z - 60*y*z - 80*x*y*z + 4*z^2
[7,3,3]:	unknown -> [15] -31-31*x+8*x^2-99*y-120*x*y+8*y^2-99*z-120*x*z-280*y*z-320*x*y*z+8*z^2
[3,7,3]:	transposed [15] {0/3+8*y,0/3+8*z,0/7+8*x} by 3+8*y|3+8*x 7+8*x|7+8*y
[3,3,7]:	transposed [15] {0/3+8*y,0/3+8*z,0/7+8*x} by 3+8*y|3+8*x 3+8*z|3+8*y 7+8*x|7+8*z
[7,7,7]:	unknown -> [16] -196-231*x+8*x^2-231*y-280*x*y+8*y^2-231*z-280*x*z-280*y*z-320*x*y*z+8*z^2
----------------
expanding queue[8]^4,meter=[2,2,2]*16: x^2 + y^2 - 40*x*y*z + z^2
solution [0,0,0],trivial(3)
[0,0,0]:	unknown -> [17] x^2+y^2-80*x*y*z+z^2
expanding queue[9]^5,meter=[1,1,2]*16:  - 2 - 2*x + 2*x^2 - 14*y - 20*x*y + 2*y^2 - 11*z - 20*x*z - 60*y*z - 80*x*y*z + 8*z^2
[3,1,2]:	unknown -> [18] -1-x+x^2-7*y-10*x*y+y^2-11*z-20*x*z-60*y*z-80*x*y*z+16*z^2
expanding queue[10]^5,meter=[1,1,2]*16: 1 - 14*x + 2*x^2 - 14*y - 60*x*y + 2*y^2 + 7*z - 20*x*z - 20*y*z - 80*x*y*z + 8*z^2
[1,1,14]:	unknown -> [19] 8-17*x+x^2-17*y-70*x*y+y^2+23*z-20*x*z-20*y*z-80*x*y*z+16*z^2
expanding queue[11]^5,meter=[1,1,2]*16:  - 27 - 42*x + 2*x^2 - 42*y - 60*x*y + 2*y^2 - 33*z - 60*x*z - 60*y*z - 80*x*y*z + 8*z^2
[3,3,14]:	unknown -> [20] -26-51*x+x^2-51*y-70*x*y+y^2-17*z-60*x*z-60*y*z-80*x*y*z+16*z^2
expanding queue[12]^6,meter=[2,2,2]*16: 2 + 9*x + 8*x^2 - 33*y - 40*x*y + 8*y^2 - 33*z - 40*x*z - 280*y*z - 320*x*y*z + 8*z^2
[7,1,1]:	unknown -> [21] 1+9*x+16*x^2-33*y-80*x*y+16*y^2-33*z-80*x*z-560*y*z-1280*x*y*z+16*z^2
[15,9,1]:	unknown -> [22] -23-15*x+16*x^2-57*y-80*x*y+16*y^2-673*z-720*x*z-1200*y*z-1280*x*y*z+16*z^2
[15,1,9]:	transposed [22] {0/1+16*z,0/15+16*x,0/9+16*y} by 1+16*z|1+16*y 9+16*y|9+16*z
[7,9,9]:	unknown -> [23] -164-391*x+16*x^2-297*y-720*x*y+16*y^2-297*z-720*x*z-560*y*z-1280*x*y*z+16*z^2
expanding queue[13]^6,meter=[2,2,2]*16:  - 5 - 19*x + 8*x^2 - 5*y - 40*x*y + 8*y^2 - 73*z - 200*x*z - 120*y*z - 320*x*y*z + 8*z^2
[11,5,1]:	unknown -> [24] -8-3*x+16*x^2-45*y-80*x*y+16*y^2-273*z-400*x*z-880*y*z-1280*x*y*z+16*z^2
[3,13,1]:	unknown -> [25] -1-59*x+16*x^2+11*y-80*x*y+16*y^2-193*z-1040*x*z-240*y*z-1280*x*y*z+16*z^2
[3,5,9]:	unknown -> [26] -35-219*x+16*x^2-125*y-720*x*y+16*y^2-57*z-400*x*z-240*y*z-1280*x*y*z+16*z^2
[11,13,9]:	unknown -> [27] -379-563*x+16*x^2-469*y-720*x*y+16*y^2-697*z-1040*x*z-880*y*z-1280*x*y*z+16*z^2
expanding queue[14]^6,meter=[2,2,2]*16:  - 97 - 111*x + 8*x^2 - 165*y - 200*x*y + 8*y^2 - 165*z - 200*x*z - 280*y*z - 320*x*y*z + 8*z^2
[15,5,5]:	unknown -> [28] -100-95*x+16*x^2-365*y-400*x*y+16*y^2-365*z-400*x*z-1200*y*z-1280*x*y*z+16*z^2
[7,13,5]:	unknown -> [29] -127-311*x+16*x^2-149*y-400*x*y+16*y^2-445*z-1040*x*z-560*y*z-1280*x*y*z+16*z^2
[7,5,13]:	transposed [29] {0/13+16*y,0/5+16*z,0/7+16*x} by 13+16*y|13+16*z 5+16*z|5+16*y
[15,13,13]:	unknown -> [30] -757-815*x+16*x^2-949*y-1040*x*y+16*y^2-949*z-1040*x*z-1200*y*z-1280*x*y*z+16*z^2
expanding queue[15]^7,meter=[2,2,2]*16:  - 31 - 31*x + 8*x^2 - 99*y - 120*x*y + 8*y^2 - 99*z - 120*x*z - 280*y*z - 320*x*y*z + 8*z^2
[15,3,3]:	unknown -> [31] -27-15*x+16*x^2-219*y-240*x*y+16*y^2-219*z-240*x*z-1200*y*z-1280*x*y*z+16*z^2
[7,11,3]:	unknown -> [32] -61-151*x+16*x^2-83*y-240*x*y+16*y^2-379*z-880*x*z-560*y*z-1280*x*y*z+16*z^2
[7,3,11]:	transposed [32] {0/11+16*y,0/3+16*z,0/7+16*x} by 11+16*y|11+16*z 3+16*z|3+16*y
[15,11,11]:	unknown -> [33] -538-575*x+16*x^2-803*y-880*x*y+16*y^2-803*z-880*x*z-1200*y*z-1280*x*y*z+16*z^2
expanding queue[16]^7,meter=[2,2,2]*16:  - 196 - 231*x + 8*x^2 - 231*y - 280*x*y + 8*y^2 - 231*z - 280*x*z - 280*y*z - 320*x*y*z + 8*z^2
[7,7,7]:	unknown -> [34] -98-231*x+16*x^2-231*y-560*x*y+16*y^2-231*z-560*x*z-560*y*z-1280*x*y*z+16*z^2
[15,15,7]:	unknown -> [35] -461-495*x+16*x^2-495*y-560*x*y+16*y^2-1111*z-1200*x*z-1200*y*z-1280*x*y*z+16*z^2
[15,7,15]:	transposed [35] {0/15+16*x,0/15+16*y,0/7+16*z} by 15+16*y|15+16*z 7+16*z|7+16*y
[7,15,15]:	transposed [35] {0/15+16*x,0/15+16*y,0/7+16*z} by 15+16*x|15+16*y 15+16*y|15+16*z 7+16*z|7+16*x
Maximum level 3 reached at [36]: x^2 + y^2 - 5*x*y*z + z^2
