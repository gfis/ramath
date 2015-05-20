Expanding for base 2, transposables =    0   0   2

expanding queue[0]: a^5 + b^5 - c^5 = 0 modulo [2,2,2] *2
[0+2*a,0+2*b,0+2*c]: same form as 32*a^5+32*b^5-32*c^5=0
[1+2*a,0+2*b,0+2*c]: failure constant=1, vgcd=2
[0+2*a,1+2*b,0+2*c]: failure constant=1, vgcd=2
[1+2*a,1+2*b,0+2*c]: unknown 2+10*a+40*a^2+80*a^3+80*a^4+32*a^5+10*b+40*b^2+80*b^3+80*b^4+32*b^5-32*c^5=0 -> [1]
[0+2*a,0+2*b,1+2*c]: failure constant=-1, vgcd=2
[1+2*a,0+2*b,1+2*c]: success [1,0,1],trivial(3) success [3,0,3],trivial(3)  10*a+40*a^2+80*a^3+80*a^4+32*a^5+32*b^5-10*c-40*c^2-80*c^3-80*c^4-32*c^5=0 -> [2]
[0+2*a,1+2*b,1+2*c]: failure transposition of [2] {0/0+2*b,0/1+2*a,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b
[1+2*a,1+2*b,1+2*c]: failure constant=1, vgcd=2

expanding queue[1]: 2 + 10*a + 40*a^2 + 80*a^3 + 80*a^4 + 32*a^5 + 10*b + 40*b^2 + 80*b^3 + 80*b^4 + 32*b^5 - 32*c^5 = 0 modulo [2,2,1] *4
[1+4*a,1+4*b,0+2*c]: failure constant=2, vgcd=4
[3+4*a,1+4*b,0+2*c]: unknown 244+1620*a+4320*a^2+5760*a^3+3840*a^4+1024*a^5+20*b+160*b^2+640*b^3+1280*b^4+1024*b^5-32*c^5=0 -> [3]
[1+4*a,3+4*b,0+2*c]: failure transposition of [3] {0/1+4*b,0/3+4*a,2/0+2*c} by 1+4*b|1+4*a 3+4*a|3+4*b
[3+4*a,3+4*b,0+2*c]: failure constant=486, vgcd=4

expanding queue[2]: 10*a + 40*a^2 + 80*a^3 + 80*a^4 + 32*a^5 + 32*b^5 - 10*c - 40*c^2 - 80*c^3 - 80*c^4 - 32*c^5 = 0 modulo [2,1,2] *4
[1+4*a,0+2*b,1+4*c]: similiar to  [2], affine map: {a=(2*a),b=(1*b),c=(2*c)}  20*a+160*a^2+640*a^3+1280*a^4+1024*a^5+32*b^5-20*c-160*c^2-640*c^3-1280*c^4-1024*c^5=0
[3+4*a,0+2*b,1+4*c]: failure constant=242, vgcd=4
[1+4*a,0+2*b,3+4*c]: failure constant=-242, vgcd=4
[3+4*a,0+2*b,3+4*c]: success [3,0,3],trivial(3) success [7,0,7],trivial(3)  1620*a+4320*a^2+5760*a^3+3840*a^4+1024*a^5+32*b^5-1620*c-4320*c^2-5760*c^3-3840*c^4-1024*c^5=0 -> [4]

expanding queue[3]: 244 + 1620*a + 4320*a^2 + 5760*a^3 + 3840*a^4 + 1024*a^5 + 20*b + 160*b^2 + 640*b^3 + 1280*b^4 + 1024*b^5 - 32*c^5 = 0 modulo [2,2,1] *8
[3+8*a,1+8*b,0+2*c]: failure constant=244, vgcd=8
[7+8*a,1+8*b,0+2*c]: unknown 16808+96040*a+219520*a^2+250880*a^3+143360*a^4+32768*a^5+40*b+640*b^2+5120*b^3+20480*b^4+32768*b^5-32*c^5=0 -> [5]
[3+8*a,5+8*b,0+2*c]: unknown 3368+3240*a+17280*a^2+46080*a^3+61440*a^4+32768*a^5+25000*b+80000*b^2+128000*b^3+102400*b^4+32768*b^5-32*c^5=0 -> [6]
[7+8*a,5+8*b,0+2*c]: failure constant=19932, vgcd=8

expanding queue[4]: 1620*a + 4320*a^2 + 5760*a^3 + 3840*a^4 + 1024*a^5 + 32*b^5 - 1620*c - 4320*c^2 - 5760*c^3 - 3840*c^4 - 1024*c^5 = 0 modulo [2,1,2] *8
[3+8*a,0+2*b,3+8*c]: similiar to  [4], affine map: {a=(2*a),b=(1*b),c=(2*c)}  3240*a+17280*a^2+46080*a^3+61440*a^4+32768*a^5+32*b^5-3240*c-17280*c^2-46080*c^3-61440*c^4-32768*c^5=0
[7+8*a,0+2*b,3+8*c]: failure constant=16564, vgcd=8
[3+8*a,0+2*b,7+8*c]: failure constant=-16564, vgcd=8
[7+8*a,0+2*b,7+8*c]: success [7,0,7],trivial(3) success [15,0,15],trivial(3)  96040*a+219520*a^2+250880*a^3+143360*a^4+32768*a^5+32*b^5-96040*c-219520*c^2-250880*c^3-143360*c^4-32768*c^5=0 -> [7]
Maximum level 2 reached, queue size = 8
