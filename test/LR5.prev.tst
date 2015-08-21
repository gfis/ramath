start0 x, phead=0, pbody=30*x + 30*x^2, ptail= - 42 - 105*y - 56*y^2, vmapt={x=>x,y=>y}
start1 x, pbody=1, fbody=30, mlead= + x^2
start2 x, phead=0, pbody=1, ptail= - 42 - 105*y - 56*y^2, mlead= + x^2, fbody=30, gcdv1=1
loop1 x, pflead=1, wide1=1, widev=1, flead=1, coef1=1, root2=1, divs1=2, qrest[0]=0, qrest[1]=1, pbody=1
loop2 x, widev=2, flead=2, coef1=2, pbody=1
loop1 x, pflead=2, wide1=2, widev=4, flead=4, coef1=4, root2=2, divs1=4, qrest[0]=1, qrest[1]=0, pbody=1
loop2 x, widev=4, flead=4, coef1=1, pbody=1
before x, phead=0, pbody=1, ptail= - 168 - 420*y - 224*y^2, mlead= + x^2, flead=4, root2=2, widev=4
after2 x, pbody=1, ptail= - 198 - 420*y - 224*y^2
after3 x, phead=30*x^2, pbody=1
after  x, phead=30*x^2, pbody=1, ptail= - 198 - 420*y - 224*y^2, vmapt={x=>1+2*x,y=>y}

start0 y, phead=30*x^2, pbody= - 420*y - 224*y^2, ptail= - 198, vmapt={x=>1+2*x,y=>y}
start1 y, pbody=15, fbody=-28, mlead= + 8*y^2
start2 y, phead=30*x^2, pbody=15, ptail= - 198, mlead= + 8*y^2, fbody=-28, gcdv1=15
loop1 y, pflead=2^3, wide1=2, widev=2, flead=16, coef1=30, root2=4, divs1=8, qrest[0]=3, qrest[1]=6, pbody=15
loop2 y, widev=16, flead=128, coef1=240, pbody=15
loop1 y, pflead=2^7, wide1=2, widev=32, flead=256, coef1=480, root2=16, divs1=32, qrest[0]=15, qrest[1]=0, pbody=15
loop2 y, widev=32, flead=256, coef1=15, pbody=15
before y, phead=960*x^2, pbody=15, ptail= - 6336, mlead= + 8*y^2, flead=256, root2=16, widev=32
after2 y, pbody=15, ptail= - 36
after3 y, phead=960*x^2 - 28*y^2, pbody=15
after  y, phead=960*x^2 - 28*y^2, pbody=15, ptail= - 36, vmapt={x=>1+2*x,y=>15+16*y}

(" - 42 + 30*x + 30*x^2 - 105*y - 56*y^2").reduceIt() =  - 9 + 15*x^2 - 7*y^2, vmapt={x=>(1+2*x)*4,y=>15+16*y}
(" - 42 + 30*x + 30*x^2 - 105*y - 56*y^2").reduceIt() =  - 9 + 15*x^2 - 7*y^2
