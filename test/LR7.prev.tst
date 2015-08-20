start0 x, phead=0, pbody=8*x^2 - 14*x*y, ptail= - 9 - 7*y^2, vmapt={x=>x,y=>y}
start1 x, pbody= - 7*y, fbody=2, mlead= + 4*x^2
start2 x, phead=0, pbody= - 7*y, ptail= - 18 - 14*y^2, fbody=2, mlead= + 8*x^2, gcdv1=7
before x, phead=0, pbody= - 7*y, ptail= - 36 - 28*y^2, mlead= + 8*x^2, flead=8, rootv=4, widev=2
after2 x, pbody= - 7*y, ptail= - 36 - 126*y^2
after3 x, phead=2*x^2, pbody= - 7*y
after  x, phead=2*x^2, pbody= - 7*y, ptail= - 36 - 126*y^2, vmapt={x=> - 7*y+4*x,y=>y}
start0 y, phead=2*x^2, pbody= - 126*y^2, ptail= - 36, vmapt={x=> - 7*y+4*x,y=>y}
zero   y, pbody == 0, fbody=-126
after3 y, phead=2*x^2 - 126*y^2, pbody=0
after  y, phead=2*x^2 - 126*y^2, pbody=0, ptail= - 36, vmapt={x=> - 7*y+4*x,y=>y}
assertion:  - 9 + 8*x^2 - 28*x*y - 7*y^2 !=  - 9 + 8*x^2 - 14*x*y - 7*y^2
(" - 9 + 8*x^2 - 14*x*y - 7*y^2").reduceIt() =  - 18 + x^2 - 7*y^2, vmapt={x=> - 7*y+4*x,y=>(0+y)*3}
(" - 9 + 8*x^2 - 14*x*y - 7*y^2").reduceIt() =  - 18 + x^2 - 7*y^2
