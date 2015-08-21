start0 x, phead=0, pbody=8*x^2 - 14*x*y, ptail= - 9 - 7*y^2, vmapt={x=>x,y=>y}
start1 x, pbody= - 7*y, fbody=2, mlead= + 4*x^2
start2 x, phead=0, pbody= - 7*y, ptail= - 9 - 7*y^2, mlead= + 4*x^2, fbody=2, gcdv1=7
loop1 x, pflead=2^2, wide1=1, widev=1, flead=4, coef1=7, root2=2, divs1=4, qrest[0]=1, qrest[1]=3, pbody= - 7*y
loop2 x, widev=4, flead=16, coef1=28, pbody= - 7*y
loop1 x, pflead=2^4, wide1=1, widev=4, flead=16, coef1=28, root2=4, divs1=8, qrest[0]=3, qrest[1]=4, pbody= - 7*y
loop2 x, widev=32, flead=128, coef1=224, pbody= - 7*y
loop1 x, pflead=2^7, wide1=2, widev=64, flead=256, coef1=448, root2=16, divs1=32, qrest[0]=14, qrest[1]=0, pbody= - 7*y
loop2 x, widev=64, flead=256, coef1=14, pbody= - 14*y
before x, phead=0, pbody= - 14*y, ptail= - 576 - 448*y^2, mlead= + 4*x^2, flead=256, root2=16, widev=64
after2 x, pbody= - 14*y, ptail= - 576 - 840*y^2
after3 x, phead=2*x^2, pbody= - 14*y
after  x, phead=2*x^2, pbody= - 14*y, ptail= - 576 - 840*y^2, vmapt={x=> - 14*y+16*x,y=>y}

start0 y, phead=2*x^2, pbody= - 840*y^2, ptail= - 576, vmapt={x=> - 14*y+16*x,y=>y}
zero   y, pbody == 0, fbody=-840
after3 y, phead=2*x^2 - 840*y^2, pbody=0
after  y, phead=2*x^2 - 840*y^2, pbody=0, ptail= - 576, vmapt={x=> - 14*y+16*x,y=>y}

(" - 9 + 8*x^2 - 14*x*y - 7*y^2").reduceIt() =  - 288 + x^2 - 105*y^2, vmapt={x=> - 14*y+16*x,y=>(0+y)*2}
(" - 9 + 8*x^2 - 14*x*y - 7*y^2").reduceIt() =  - 288 + x^2 - 105*y^2
