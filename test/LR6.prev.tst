start1 x, pbody=7*y, fbody=2, mlead= + 4*x^2
start2 x, phead=0, pbody=7*y, ptail= - 18 - 14*y^2, fbody=2, mlead= + 8*x^2, gcdv1=7
before x, phead=0, pbody=7*y, ptail= - 36 - 28*y^2, mlead= + 8*x^2, flead=8, rootv=4, widev=2
after  x, phead=2*x^2, pbody=7*y, ptail= - 36 - 126*y^2, vmapt={x=>7*y+4*x,y=>2*y}

start1 y, pbody=0, fbody=-126, mlead= + y^2
start2 y, phead=4*x^2, pbody=0, ptail= - 72, fbody=-126, mlead= + 2*y^2, gcdv1=1
before y, phead=8*x^2, pbody=0, ptail= - 144, mlead= + 2*y^2, flead=2, rootv=2, widev=2
after  y, phead=8*x^2 - 126*y^2, pbody=0, ptail= - 144, vmapt={x=>8*x + 14*y,y=>2*y}

(" - 9 + 8*x^2 + 14*x*y - 7*y^2").reduceIt() =  - 72 + 4*x^2 - 63*y^2
