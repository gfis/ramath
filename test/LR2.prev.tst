start1 x, pbody= - 4*y + 8*z, fbody=1, mlead= + x^2
start2 x, phead=0, pbody= - 2*y + 4*z, ptail=4 + 2*y^2 - 7*z^2, fbody=1, mlead= + x^2, gcdv1=4
before x, phead=0, pbody= - 2*y + 4*z, ptail=4 + 2*y^2 - 7*z^2, mlead= + x^2, flead=1, rootv=1, widev=1
after  x, phead=x^2, pbody= - 2*y + 4*z, ptail=4 - 2*y^2 + 16*y*z - 23*z^2, vmapt={x=> - 2*y + 4*z+x,y=>y,z=>z}

start1 y, pbody= - 8*z, fbody=-2, mlead= + y^2
start2 y, phead=x^2, pbody= - 4*z, ptail=4 - 23*z^2, fbody=-2, mlead= + y^2, gcdv1=8
before y, phead=x^2, pbody= - 4*z, ptail=4 - 23*z^2, mlead= + y^2, flead=1, rootv=1, widev=1
after  y, phead=x^2 - 2*y^2, pbody= - 4*z, ptail=4 + 9*z^2, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>z}

start1 z, pbody=0, fbody=9, mlead= + z^2
start2 z, phead=2*x^2 - 4*y^2, pbody=0, ptail=8, fbody=9, mlead= + 2*z^2, gcdv1=1
before z, phead=4*x^2 - 8*y^2, pbody=0, ptail=16, mlead= + 2*z^2, flead=2, rootv=2, widev=2
after  z, phead=4*x^2 - 8*y^2 + 9*z^2, pbody=0, ptail=16, vmapt={x=>2*x - 4*y + 8*z,y=>2*y - 8*z,z=>2*z}

("4 + x^2 - 4*x*y + 2*y^2 + 8*x*z - 7*z^2").reduceIt() = 16 + 4*x^2 - 8*y^2 + 9*z^2
