start1 x, pbody=0, fbody=30, mlead= + x^2
start2 x, phead=0, pbody=0, ptail= - 4 - 14*y - 28*y^2, fbody=30, mlead= + 2*x^2, gcdv1=1
before x, phead=0, pbody=0, ptail= - 8 - 28*y - 56*y^2, mlead= + 2*x^2, flead=2, rootv=2, widev=2
after  x, phead=30*x^2, pbody=0, ptail= - 8 - 28*y - 56*y^2, vmapt={x=>2*x,y=>2*y}

start1 y, pbody=1, fbody=-28, mlead= + 2*y^2
start2 y, phead=60*x^2, pbody=1, ptail= - 16, fbody=-28, mlead= + 4*y^2, gcdv1=1
before y, phead=60*x^2, pbody=1, ptail= - 16, mlead= + 4*y^2, flead=4, rootv=2, widev=1
after  y, phead=60*x^2 - 28*y^2, pbody=1, ptail=12, vmapt={x=>4*x,y=>1+2*y}

(" - 2 + 30*x^2 - 7*y - 14*y^2").reduceIt() = 3 + 15*x^2 - 7*y^2
