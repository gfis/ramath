Expanding for base 2, transposables =    0   0   2

expanding queue[0]: a^5 + b^5 - c^5 = 0 modulo [2,2,2] *2
[0+2*a,0+2*b,0+2*c]: same form as 32*a^5+32*b^5-32*c^5=0 success [0,0,0],trivial(3) success [2,0,2],trivial(3) success [0,2,2],trivial(3) 
[1+2*a,0+2*b,0+2*c]: failure constant=1, vgcd=2
[0+2*a,1+2*b,0+2*c]: failure constant=1, vgcd=2
[1+2*a,1+2*b,0+2*c]: unknown 2+10*a+40*a^2+80*a^3+80*a^4+32*a^5+10*b+40*b^2+80*b^3+80*b^4+32*b^5-32*c^5=0 -> [1]
[0+2*a,0+2*b,1+2*c]: failure constant=-1, vgcd=2
[1+2*a,0+2*b,1+2*c]: success [1,0,1],trivial(3) success [3,0,3],trivial(3)  10*a+40*a^2+80*a^3+80*a^4+32*a^5+32*b^5-10*c-40*c^2-80*c^3-80*c^4-32*c^5=0 -> [2]
[0+2*a,1+2*b,1+2*c]: failure transposition of [2] {0/0+2*b,0/1+2*a,2/1+2*c} by 0+2*b|0+2*a 1+2*a|1+2*b success [0,1,1],trivial(3) success [0,3,3],trivial(3) 
[1+2*a,1+2*b,1+2*c]: failure constant=1, vgcd=2

expanding queue[1]: 2 + 10*a + 40*a^2 + 80*a^3 + 80*a^4 + 32*a^5 + 10*b + 40*b^2 + 80*b^3 + 80*b^4 + 32*b^5 - 32*c^5 = 0 modulo [2,2,1] *4
[1+4*a,1+4*b,0+2*c]: failure constant=2, vgcd=4
[3+4*a,1+4*b,0+2*c]: grown from [1] 244+1620*a+4320*a^2+5760*a^3+3840*a^4+1024*a^5+20*b+160*b^2+640*b^3+1280*b^4+1024*b^5-32*c^5=0
[1+4*a,3+4*b,0+2*c]: grown from [1] 244+20*a+160*a^2+640*a^3+1280*a^4+1024*a^5+1620*b+4320*b^2+5760*b^3+3840*b^4+1024*b^5-32*c^5=0
[3+4*a,3+4*b,0+2*c]: failure constant=486, vgcd=4

expanding queue[2]: 10*a + 40*a^2 + 80*a^3 + 80*a^4 + 32*a^5 + 32*b^5 - 10*c - 40*c^2 - 80*c^3 - 80*c^4 - 32*c^5 = 0 modulo [2,1,2] *4
[1+4*a,0+2*b,1+4*c]: grown from [2] 20*a+160*a^2+640*a^3+1280*a^4+1024*a^5+32*b^5-20*c-160*c^2-640*c^3-1280*c^4-1024*c^5=0 success [1,0,1],trivial(3) success [5,0,5],trivial(3) 
[3+4*a,0+2*b,1+4*c]: failure constant=242, vgcd=4
[1+4*a,0+2*b,3+4*c]: failure constant=-242, vgcd=4
[3+4*a,0+2*b,3+4*c]: grown from [2] 1620*a+4320*a^2+5760*a^3+3840*a^4+1024*a^5+32*b^5-1620*c-4320*c^2-5760*c^3-3840*c^4-1024*c^5=0 success [3,0,3],trivial(3) success [7,0,7],trivial(3) 
Proof - queue exhausted, queue size = 3
