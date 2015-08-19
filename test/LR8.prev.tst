start1 w, pbody= - 2*x, fbody=-7, mlead= + w^2
start2 w, phead=0, pbody= - x, ptail= - 9 + 8*x^2, fbody=-7, mlead= + w^2, gcdv1=2
before w, phead=0, pbody= - x, ptail= - 9 + 8*x^2, mlead= + w^2, flead=1, rootv=1, widev=1
after  w, phead= - 7*w^2, pbody= - x, ptail= - 9 + 15*x^2, vmapt={w=> - x+w,x=>x}

start1 x, pbody=0, fbody=15, mlead= + x^2
start2 x, phead= - 14*w^2, pbody=0, ptail= - 18, fbody=15, mlead= + 2*x^2, gcdv1=1
before x, phead= - 28*w^2, pbody=0, ptail= - 36, mlead= + 2*x^2, flead=2, rootv=2, widev=2
after  x, phead= - 28*w^2 + 15*x^2, pbody=0, ptail= - 36, vmapt={w=>2*w - 2*x,x=>2*x}

(" - 9 - 7*w^2 + 14*w*x + 8*x^2").reduceIt() =  - 36 - 28*w^2 + 15*x^2
