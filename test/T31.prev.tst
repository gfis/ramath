Expanding for base=2, reasons+features=base,similiar norm,invall
exponentGCDs=[1,1], transposables={{a},{b}}
----------------
expanding queue[0]^-1,meter=[2,2]*2: 2 + a^2 - a^3 + 2*a*b + 3*a^2*b + b^2 - 3*a*b^2 + b^3
[1,0]:	unknown -> [1] 1-a-4*a^2-4*a^3+5*b+16*a*b+12*a^2*b-4*b^2-12*a*b^2+4*b^3
[0,1]:	unknown -> [2] 2-a+8*a^2-4*a^3+5*b-8*a*b+12*a^2*b+8*b^2-12*a*b^2+4*b^3
----------------
expanding queue[1]^0,meter=[2,2]*4: 1 - a - 4*a^2 - 4*a^3 + 5*b + 16*a*b + 12*a^2*b - 4*b^2 - 12*a*b^2 + 4*b^3
[3,0]:	unknown -> [3] -4-21*a-32*a^2-16*a^3+33*b+80*a*b+48*a^2*b-32*b^2-48*a*b^2+16*b^3
[1,2]:	unknown -> [4] 3+3*a+16*a^2-16*a^3+9*b-16*a*b+48*a^2*b+16*b^2-48*a*b^2+16*b^3
expanding queue[2]^0,meter=[2,2]*4: 2 - a + 8*a^2 - 4*a^3 + 5*b - 8*a*b + 12*a^2*b + 8*b^2 - 12*a*b^2 + 4*b^3
[0,1]:	unknown -> [5] 1-a+16*a^2-16*a^3+5*b-16*a*b+48*a^2*b+16*b^2-48*a*b^2+16*b^3
[2,3]:	unknown -> [6] 7+7*a+16*a^2-16*a^3+13*b-16*a*b+48*a^2*b+16*b^2-48*a*b^2+16*b^3
----------------
expanding queue[3]^1,meter=[2,2]*8:  - 4 - 21*a - 32*a^2 - 16*a^3 + 33*b + 80*a*b + 48*a^2*b - 32*b^2 - 48*a*b^2 + 16*b^3
[3,0]:	unknown -> [7] -2-21*a-64*a^2-64*a^3+33*b+160*a*b+192*a^2*b-64*b^2-192*a*b^2+64*b^3
[7,4]:	unknown -> [8] 12-5*a-64*a^2-64*a^3+49*b+160*a*b+192*a^2*b-64*b^2-192*a*b^2+64*b^3
expanding queue[4]^1,meter=[2,2]*8: 3 + 3*a + 16*a^2 - 16*a^3 + 9*b - 16*a*b + 48*a^2*b + 16*b^2 - 48*a*b^2 + 16*b^3
[5,2]:	unknown -> [9] 3-13*a-64*a^2-64*a^3+41*b+160*a*b+192*a^2*b-64*b^2-192*a*b^2+64*b^3
[1,6]:	unknown -> [10] 22-61*a+128*a^2-64*a^3+89*b-224*a*b+192*a^2*b+128*b^2-192*a*b^2+64*b^3
expanding queue[5]^2,meter=[2,2]*8: 1 - a + 16*a^2 - 16*a^3 + 5*b - 16*a*b + 48*a^2*b + 16*b^2 - 48*a*b^2 + 16*b^3
[4,1]:	unknown -> [11] -17*a-64*a^2-64*a^3+37*b+160*a*b+192*a^2*b-64*b^2-192*a*b^2+64*b^3
[0,5]:	unknown -> [12] 19-65*a+128*a^2-64*a^3+85*b-224*a*b+192*a^2*b+128*b^2-192*a*b^2+64*b^3
expanding queue[6]^2,meter=[2,2]*8: 7 + 7*a + 16*a^2 - 16*a^3 + 13*b - 16*a*b + 48*a^2*b + 16*b^2 - 48*a*b^2 + 16*b^3
[6,3]:	unknown -> [13] 7-9*a-64*a^2-64*a^3+45*b+160*a*b+192*a^2*b-64*b^2-192*a*b^2+64*b^3
[2,7]:	unknown -> [14] 26-57*a+128*a^2-64*a^3+93*b-224*a*b+192*a^2*b+128*b^2-192*a*b^2+64*b^3
----------------
expanding queue[7]^3,meter=[2,2]*16:  - 2 - 21*a - 64*a^2 - 64*a^3 + 33*b + 160*a*b + 192*a^2*b - 64*b^2 - 192*a*b^2 + 64*b^3
[3,0]:	unknown -> [15] -1-21*a-128*a^2-256*a^3+33*b+320*a*b+768*a^2*b-128*b^2-768*a*b^2+256*b^3
[11,8]:	unknown -> [16] 21+11*a-128*a^2-256*a^3+65*b+320*a*b+768*a^2*b-128*b^2-768*a*b^2+256*b^3
expanding queue[8]^3,meter=[2,2]*16: 12 - 5*a - 64*a^2 - 64*a^3 + 49*b + 160*a*b + 192*a^2*b - 64*b^2 - 192*a*b^2 + 64*b^3
[7,4]:	unknown -> [17] 6-5*a-128*a^2-256*a^3+49*b+320*a*b+768*a^2*b-128*b^2-768*a*b^2+256*b^3
[15,12]:	unknown -> [18] 44+27*a-128*a^2-256*a^3+81*b+320*a*b+768*a^2*b-128*b^2-768*a*b^2+256*b^3
expanding queue[9]^4,meter=[2,2]*16: 3 - 13*a - 64*a^2 - 64*a^3 + 41*b + 160*a*b + 192*a^2*b - 64*b^2 - 192*a*b^2 + 64*b^3
[13,2]:	unknown -> [19] -69-333*a-512*a^2-256*a^3+393*b+1088*a*b+768*a^2*b-512*b^2-768*a*b^2+256*b^3
[5,10]:	unknown -> [20] 22-45*a+256*a^2-256*a^3+105*b-448*a*b+768*a^2*b+256*b^2-768*a*b^2+256*b^3
expanding queue[10]^4,meter=[2,2]*16: 22 - 61*a + 128*a^2 - 64*a^3 + 89*b - 224*a*b + 192*a^2*b + 128*b^2 - 192*a*b^2 + 64*b^3
[1,6]:	unknown -> [21] 11-61*a+256*a^2-256*a^3+89*b-448*a*b+768*a^2*b+256*b^2-768*a*b^2+256*b^3
[9,14]:	unknown -> [22] 41-29*a+256*a^2-256*a^3+121*b-448*a*b+768*a^2*b+256*b^2-768*a*b^2+256*b^3
expanding queue[11]^5,meter=[2,2]*16:  - 17*a - 64*a^2 - 64*a^3 + 37*b + 160*a*b + 192*a^2*b - 64*b^2 - 192*a*b^2 + 64*b^3
solution [4,1],NONTRIVIAL
[4,1]:	unknown -> [23] -17*a-128*a^2-256*a^3+37*b+320*a*b+768*a^2*b-128*b^2-768*a*b^2+256*b^3
[12,9]:	unknown -> [24] 26+15*a-128*a^2-256*a^3+69*b+320*a*b+768*a^2*b-128*b^2-768*a*b^2+256*b^3
expanding queue[12]^5,meter=[2,2]*16: 19 - 65*a + 128*a^2 - 64*a^3 + 85*b - 224*a*b + 192*a^2*b + 128*b^2 - 192*a*b^2 + 64*b^3
[8,5]:	unknown -> [25] 9-a-128*a^2-256*a^3+53*b+320*a*b+768*a^2*b-128*b^2-768*a*b^2+256*b^3
[0,13]:	unknown -> [26] 148-481*a+640*a^2-256*a^3+533*b-1216*a*b+768*a^2*b+640*b^2-768*a*b^2+256*b^3
expanding queue[13]^6,meter=[2,2]*16: 7 - 9*a - 64*a^2 - 64*a^3 + 45*b + 160*a*b + 192*a^2*b - 64*b^2 - 192*a*b^2 + 64*b^3
[14,3]:	unknown -> [27] -65-329*a-512*a^2-256*a^3+397*b+1088*a*b+768*a^2*b-512*b^2-768*a*b^2+256*b^3
[6,11]:	unknown -> [28] 26-41*a+256*a^2-256*a^3+109*b-448*a*b+768*a^2*b+256*b^2-768*a*b^2+256*b^3
expanding queue[14]^6,meter=[2,2]*16: 26 - 57*a + 128*a^2 - 64*a^3 + 93*b - 224*a*b + 192*a^2*b + 128*b^2 - 192*a*b^2 + 64*b^3
[2,7]:	unknown -> [29] 13-57*a+256*a^2-256*a^3+93*b-448*a*b+768*a^2*b+256*b^2-768*a*b^2+256*b^3
[10,15]:	unknown -> [30] 47-25*a+256*a^2-256*a^3+125*b-448*a*b+768*a^2*b+256*b^2-768*a*b^2+256*b^3
----------------
expanding queue[15]^7,meter=[2,2]*32:  - 1 - 21*a - 128*a^2 - 256*a^3 + 33*b + 320*a*b + 768*a^2*b - 128*b^2 - 768*a*b^2 + 256*b^3
[19,0]:	unknown -> [31] -203-1045*a-1792*a^2-1024*a^3+1121*b+3712*a*b+3072*a^2*b-1792*b^2-3072*a*b^2+1024*b^3
[3,16]:	unknown -> [32] 80-469*a+1280*a^2-1024*a^3+545*b-2432*a*b+3072*a^2*b+1280*b^2-3072*a*b^2+1024*b^3
expanding queue[16]^7,meter=[2,2]*32: 21 + 11*a - 128*a^2 - 256*a^3 + 65*b + 320*a*b + 768*a^2*b - 128*b^2 - 768*a*b^2 + 256*b^3
[27,8]:	unknown -> [33] -176-1013*a-1792*a^2-1024*a^3+1153*b+3712*a*b+3072*a^2*b-1792*b^2-3072*a*b^2+1024*b^3
[11,24]:	unknown -> [34] 107-437*a+1280*a^2-1024*a^3+577*b-2432*a*b+3072*a^2*b+1280*b^2-3072*a*b^2+1024*b^3
expanding queue[17]^8,meter=[2,2]*32: 6 - 5*a - 128*a^2 - 256*a^3 + 49*b + 320*a*b + 768*a^2*b - 128*b^2 - 768*a*b^2 + 256*b^3
[7,4]:	unknown -> [35] 3-5*a-256*a^2-1024*a^3+49*b+640*a*b+3072*a^2*b-256*b^2-3072*a*b^2+1024*b^3
[23,20]:	unknown -> [36] 57+59*a-256*a^2-1024*a^3+113*b+640*a*b+3072*a^2*b-256*b^2-3072*a*b^2+1024*b^3
expanding queue[18]^8,meter=[2,2]*32: 44 + 27*a - 128*a^2 - 256*a^3 + 81*b + 320*a*b + 768*a^2*b - 128*b^2 - 768*a*b^2 + 256*b^3
[15,12]:	unknown -> [37] 22+27*a-256*a^2-1024*a^3+81*b+640*a*b+3072*a^2*b-256*b^2-3072*a*b^2+1024*b^3
[31,28]:	unknown -> [38] 108+91*a-256*a^2-1024*a^3+145*b+640*a*b+3072*a^2*b-256*b^2-3072*a*b^2+1024*b^3
expanding queue[19]^9,meter=[2,2]*32:  - 69 - 333*a - 512*a^2 - 256*a^3 + 393*b + 1088*a*b + 768*a^2*b - 512*b^2 - 768*a*b^2 + 256*b^3
[29,2]:	unknown -> [39] -585-2125*a-2560*a^2-1024*a^3+2249*b+5248*a*b+3072*a^2*b-2560*b^2-3072*a*b^2+1024*b^3
[13,18]:	unknown -> [40] 34-13*a+512*a^2-1024*a^3+137*b-896*a*b+3072*a^2*b+512*b^2-3072*a*b^2+1024*b^3
expanding queue[20]^9,meter=[2,2]*32: 22 - 45*a + 256*a^2 - 256*a^3 + 105*b - 448*a*b + 768*a^2*b + 256*b^2 - 768*a*b^2 + 256*b^3
[5,10]:	unknown -> [41] 11-45*a+512*a^2-1024*a^3+105*b-896*a*b+3072*a^2*b+512*b^2-3072*a*b^2+1024*b^3
[21,26]:	unknown -> [42] 73+19*a+512*a^2-1024*a^3+169*b-896*a*b+3072*a^2*b+512*b^2-3072*a*b^2+1024*b^3
expanding queue[21]^10,meter=[2,2]*32: 11 - 61*a + 256*a^2 - 256*a^3 + 89*b - 448*a*b + 768*a^2*b + 256*b^2 - 768*a*b^2 + 256*b^3
[17,6]:	unknown -> [43] -25-317*a-1024*a^2-1024*a^3+409*b+2176*a*b+3072*a^2*b-1024*b^2-3072*a*b^2+1024*b^3
[1,22]:	unknown -> [44] 306-1277*a+2048*a^2-1024*a^3+1369*b-3968*a*b+3072*a^2*b+2048*b^2-3072*a*b^2+1024*b^3
expanding queue[22]^10,meter=[2,2]*32: 41 - 29*a + 256*a^2 - 256*a^3 + 121*b - 448*a*b + 768*a^2*b + 256*b^2 - 768*a*b^2 + 256*b^3
[25,14]:	unknown -> [45] 6-285*a-1024*a^2-1024*a^3+441*b+2176*a*b+3072*a^2*b-1024*b^2-3072*a*b^2+1024*b^3
[9,30]:	unknown -> [46] 337-1245*a+2048*a^2-1024*a^3+1401*b-3968*a*b+3072*a^2*b+2048*b^2-3072*a*b^2+1024*b^3
expanding queue[23]^11,meter=[2,2]*32:  - 17*a - 128*a^2 - 256*a^3 + 37*b + 320*a*b + 768*a^2*b - 128*b^2 - 768*a*b^2 + 256*b^3
solution [4,1],NONTRIVIAL
[4,1]:	unknown -> [47] -17*a-256*a^2-1024*a^3+37*b+640*a*b+3072*a^2*b-256*b^2-3072*a*b^2+1024*b^3
[20,17]:	unknown -> [48] 42+47*a-256*a^2-1024*a^3+101*b+640*a*b+3072*a^2*b-256*b^2-3072*a*b^2+1024*b^3
expanding queue[24]^11,meter=[2,2]*32: 26 + 15*a - 128*a^2 - 256*a^3 + 69*b + 320*a*b + 768*a^2*b - 128*b^2 - 768*a*b^2 + 256*b^3
[12,9]:	unknown -> [49] 13+15*a-256*a^2-1024*a^3+69*b+640*a*b+3072*a^2*b-256*b^2-3072*a*b^2+1024*b^3
[28,25]:	unknown -> [50] 87+79*a-256*a^2-1024*a^3+133*b+640*a*b+3072*a^2*b-256*b^2-3072*a*b^2+1024*b^3
expanding queue[25]^12,meter=[2,2]*32: 9 - a - 128*a^2 - 256*a^3 + 53*b + 320*a*b + 768*a^2*b - 128*b^2 - 768*a*b^2 + 256*b^3
[24,5]:	unknown -> [51] -188-1025*a-1792*a^2-1024*a^3+1141*b+3712*a*b+3072*a^2*b-1792*b^2-3072*a*b^2+1024*b^3
[8,21]:	unknown -> [52] 95-449*a+1280*a^2-1024*a^3+565*b-2432*a*b+3072*a^2*b+1280*b^2-3072*a*b^2+1024*b^3
expanding queue[26]^12,meter=[2,2]*32: 148 - 481*a + 640*a^2 - 256*a^3 + 533*b - 1216*a*b + 768*a^2*b + 640*b^2 - 768*a*b^2 + 256*b^3
[0,13]:	unknown -> [53] 74-481*a+1280*a^2-1024*a^3+533*b-2432*a*b+3072*a^2*b+1280*b^2-3072*a*b^2+1024*b^3
[16,29]:	unknown -> [54] 132-417*a+1280*a^2-1024*a^3+597*b-2432*a*b+3072*a^2*b+1280*b^2-3072*a*b^2+1024*b^3
expanding queue[27]^13,meter=[2,2]*32:  - 65 - 329*a - 512*a^2 - 256*a^3 + 397*b + 1088*a*b + 768*a^2*b - 512*b^2 - 768*a*b^2 + 256*b^3
[30,3]:	unknown -> [55] -581-2121*a-2560*a^2-1024*a^3+2253*b+5248*a*b+3072*a^2*b-2560*b^2-3072*a*b^2+1024*b^3
[14,19]:	unknown -> [56] 38-9*a+512*a^2-1024*a^3+141*b-896*a*b+3072*a^2*b+512*b^2-3072*a*b^2+1024*b^3
expanding queue[28]^13,meter=[2,2]*32: 26 - 41*a + 256*a^2 - 256*a^3 + 109*b - 448*a*b + 768*a^2*b + 256*b^2 - 768*a*b^2 + 256*b^3
[6,11]:	unknown -> [57] 13-41*a+512*a^2-1024*a^3+109*b-896*a*b+3072*a^2*b+512*b^2-3072*a*b^2+1024*b^3
[22,27]:	unknown -> [58] 79+23*a+512*a^2-1024*a^3+173*b-896*a*b+3072*a^2*b+512*b^2-3072*a*b^2+1024*b^3
expanding queue[29]^14,meter=[2,2]*32: 13 - 57*a + 256*a^2 - 256*a^3 + 93*b - 448*a*b + 768*a^2*b + 256*b^2 - 768*a*b^2 + 256*b^3
[18,7]:	unknown -> [59] -22-313*a-1024*a^2-1024*a^3+413*b+2176*a*b+3072*a^2*b-1024*b^2-3072*a*b^2+1024*b^3
[2,23]:	unknown -> [60] 309-1273*a+2048*a^2-1024*a^3+1373*b-3968*a*b+3072*a^2*b+2048*b^2-3072*a*b^2+1024*b^3
expanding queue[30]^14,meter=[2,2]*32: 47 - 25*a + 256*a^2 - 256*a^3 + 125*b - 448*a*b + 768*a^2*b + 256*b^2 - 768*a*b^2 + 256*b^3
[26,15]:	unknown -> [61] 11-281*a-1024*a^2-1024*a^3+445*b+2176*a*b+3072*a^2*b-1024*b^2-3072*a*b^2+1024*b^3
[10,31]:	unknown -> [62] 342-1241*a+2048*a^2-1024*a^3+1405*b-3968*a*b+3072*a^2*b+2048*b^2-3072*a*b^2+1024*b^3
Maximum level 4 reached at [63]: 2 + a^2 - a^3 + 2*a*b + 3*a^2*b + b^2 - 3*a*b^2 + b^3
