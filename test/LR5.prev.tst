start1 x, pbody=1, fbody=30, mlead= + x^2
start2 x, phead=0, pbody=1, ptail= - 84 - 210*y - 112*y^2, fbody=30, mlead= + 2*x^2, gcdv1=1
before x, phead=0, pbody=1, ptail= - 168 - 420*y - 224*y^2, mlead= + 2*x^2, flead=2, rootv=2, widev=2
after  x, phead=30*x^2, pbody=1, ptail= - 198 - 420*y - 224*y^2, vmapt={x=>1+2*x,y=>2*y}

start1 y, pbody=15, fbody=-28, mlead= + 8*y^2
start2 y, phead=60*x^2, pbody=15, ptail= - 396, fbody=-28, mlead= + 16*y^2, gcdv1=15
before y, phead=60*x^2, pbody=15, ptail= - 396, mlead= + 16*y^2, flead=16, rootv=4, widev=1
after  y, phead=60*x^2 - 28*y^2, pbody=15, ptail=5904, vmapt={x=>2 + 4*x,y=>15+4*y}

(" - 42 + 30*x + 30*x^2 - 105*y - 56*y^2").reduceIt() = 1476 + 15*x^2 - 7*y^2
