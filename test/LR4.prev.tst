start0 x, phead=0, pbody=30*x^2, ptail= - 2 - 7*y - 14*y^2, vmapt={x=>x,y=>y}
zero   x, pbody == 0, fbody=30
after3 x, phead=30*x^2, pbody=0
after  x, phead=30*x^2, pbody=0, ptail= - 2 - 7*y - 14*y^2, vmapt={x=>x,y=>y}
start0 y, phead=30*x^2, pbody= - 7*y - 14*y^2, ptail= - 2, vmapt={x=>x,y=>y}
start1 y, pbody=1, fbody=-7, mlead= + 2*y^2
start2 y, phead=60*x^2, pbody=1, ptail= - 4, fbody=-7, mlead= + 4*y^2, gcdv1=1
before y, phead=60*x^2, pbody=1, ptail= - 4, mlead= + 4*y^2, flead=4, rootv=2, widev=1
after2 y, pbody=1, ptail=3
after3 y, phead=60*x^2 - 7*y^2, pbody=1
after  y, phead=60*x^2 - 7*y^2, pbody=1, ptail=3, vmapt={x=>x,y=>1+2*y}
assertion:  - 1 + 15*x^2 - 7*y - 7*y^2 !=  - 2 + 30*x^2 - 7*y - 14*y^2
(" - 2 + 30*x^2 - 7*y - 14*y^2").reduceIt() = 3 + 15*x^2 - 7*y^2, vmapt={x=>(0+x)*2,y=>1+2*y}
(" - 2 + 30*x^2 - 7*y - 14*y^2").reduceIt() = 3 + 15*x^2 - 7*y^2
