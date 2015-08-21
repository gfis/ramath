start0 w, phead=0, pbody= - 7*w^2 + 14*w*x, ptail= - 9 + 8*x^2, vmapt={w=>w,x=>x}
start1 w, pbody= - 2*x, fbody=-7, mlead= + w^2
start2 w, phead=0, pbody= - 2*x, ptail= - 9 + 8*x^2, mlead= + w^2, fbody=-7, gcdv1=2
loop1 w, pflead=1, wide1=1, widev=1, flead=1, coef1=2, root2=1, divs1=2, qrest[0]=1, qrest[1]=0, pbody= - 2*x
loop2 w, widev=1, flead=1, coef1=1, pbody= - x
before w, phead=0, pbody= - x, ptail= - 9 + 8*x^2, mlead= + w^2, flead=1, root2=1, widev=1
after2 w, pbody= - x, ptail= - 9 + 15*x^2
after3 w, phead= - 7*w^2, pbody= - x
after  w, phead= - 7*w^2, pbody= - x, ptail= - 9 + 15*x^2, vmapt={w=> - x+w,x=>x}

start0 x, phead= - 7*w^2, pbody=15*x^2, ptail= - 9, vmapt={w=> - x+w,x=>x}
zero   x, pbody == 0, fbody=15
after3 x, phead= - 7*w^2 + 15*x^2, pbody=0
after  x, phead= - 7*w^2 + 15*x^2, pbody=0, ptail= - 9, vmapt={w=> - x+w,x=>x}

(" - 9 - 7*w^2 + 14*w*x + 8*x^2").reduceIt() =  - 9 - 7*w^2 + 15*x^2, vmapt={w=> - x+w,x=>x}
(" - 9 - 7*w^2 + 14*w*x + 8*x^2").reduceIt() =  - 9 - 7*w^2 + 15*x^2
