start0 x, phead=0, pbody=30*x^2, ptail= - 2 - 7*y - 14*y^2, vmapt={x=>x,y=>y}
zero   x, pbody == 0, fbody=30
after3 x, phead=30*x^2, pbody=0
after  x, phead=30*x^2, pbody=0, ptail= - 2 - 7*y - 14*y^2, vmapt={x=>x,y=>y}

start0 y, phead=30*x^2, pbody= - 7*y - 14*y^2, ptail= - 2, vmapt={x=>x,y=>y}
start1 y, pbody=1, fbody=-7, mlead= + 2*y^2
start2 y, phead=30*x^2, pbody=1, ptail= - 2, mlead= + 2*y^2, fbody=-7, gcdv1=1
loop1 y, pflead=2, wide1=2, widev=2, flead=4, coef1=2, root2=2, divs1=4, qrest[0]=0, qrest[1]=2, pbody=1
loop2 y, widev=8, flead=16, coef1=8, pbody=1
loop1 y, pflead=2^4, wide1=1, widev=8, flead=16, coef1=8, root2=4, divs1=8, qrest[0]=1, qrest[1]=0, pbody=1
loop2 y, widev=8, flead=16, coef1=1, pbody=1
before y, phead=240*x^2, pbody=1, ptail= - 16, mlead= + 2*y^2, flead=16, root2=4, widev=8
after2 y, pbody=1, ptail= - 9
after3 y, phead=240*x^2 - 7*y^2, pbody=1
after  y, phead=240*x^2 - 7*y^2, pbody=1, ptail= - 9, vmapt={x=>x,y=>1+4*y}

(" - 2 + 30*x^2 - 7*y - 14*y^2").reduceIt() =  - 9 + 15*x^2 - 7*y^2, vmapt={x=>(0+x)*4,y=>1+4*y}
(" - 2 + 30*x^2 - 7*y - 14*y^2").reduceIt() =  - 9 + 15*x^2 - 7*y^2
