start0 x, phead=0, pbody=15*x^2, ptail= - 4 - 7*y - 7*y^2, vmapt={x=>x,y=>y}
zero   x, pbody == 0, fbody=15
after3 x, phead=15*x^2, pbody=0
after  x, phead=15*x^2, pbody=0, ptail= - 4 - 7*y - 7*y^2, vmapt={x=>x,y=>y}

start0 y, phead=15*x^2, pbody= - 7*y - 7*y^2, ptail= - 4, vmapt={x=>x,y=>y}
start1 y, pbody=1, fbody=-7, mlead= + y^2
start2 y, phead=15*x^2, pbody=1, ptail= - 4, mlead= + y^2, fbody=-7, gcdv1=1
loop1 y, pflead=1, wide1=1, widev=1, flead=1, coef1=1, root2=1, divs1=2, qrest[0]=0, qrest[1]=1, pbody=1
loop2 y, widev=2, flead=2, coef1=2, pbody=1
loop1 y, pflead=2, wide1=2, widev=4, flead=4, coef1=4, root2=2, divs1=4, qrest[0]=1, qrest[1]=0, pbody=1
loop2 y, widev=4, flead=4, coef1=1, pbody=1
before y, phead=60*x^2, pbody=1, ptail= - 16, mlead= + y^2, flead=4, root2=2, widev=4
after2 y, pbody=1, ptail= - 9
after3 y, phead=60*x^2 - 7*y^2, pbody=1
after  y, phead=60*x^2 - 7*y^2, pbody=1, ptail= - 9, vmapt={x=>x,y=>1+2*y}

(" - 4 + 15*x^2 - 7*y - 7*y^2").reduceIt() =  - 9 + 15*x^2 - 7*y^2, vmapt={x=>(0+x)*2,y=>1+2*y}
(" - 4 + 15*x^2 - 7*y - 7*y^2").reduceIt() =  - 9 + 15*x^2 - 7*y^2
