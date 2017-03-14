before w, phead=0, pbody=x, ptail=8*x^2 - 9, mlead= + w^2, flead=1, root2=1, widev=1
after  w, phead= - 7*w^2, pbody=x, ptail=15*x^2 - 9, vmapt={w=>x+w,x=>x}

zero   x, pbody == 0, fbody=15
after  x, phead= - 7*w^2 + 15*x^2, pbody=0, ptail= - 9, vmapt={w=>x+w,x=>x}

(" - 7*w^2 - 14*w*x + 8*x^2 - 9").getReductionMap(1) = {=> - 7*w^2 + 15*x^2 - 9,w=>w + x,x=>x}
