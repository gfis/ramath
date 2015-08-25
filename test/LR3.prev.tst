zero   x, pbody == 0, fbody=15
after  x, phead=15*x^2, pbody=0, ptail= - 4 - 7*y - 7*y^2, vmapt={x=>x,y=>y}

before y, phead=60*x^2, pbody=1, ptail= - 16, mlead= + y^2, flead=4, root2=2, widev=4
after  y, phead=60*x^2 - 7*y^2, pbody=1, ptail= - 9, vmapt={x=>x,y=>1+2*y}

(" - 4 + 15*x^2 - 7*y - 7*y^2").getReductionMap(1) = {=> - 9 + 15*x^2 - 7*y^2,x=>2*x,y=>1 + 2*y}
