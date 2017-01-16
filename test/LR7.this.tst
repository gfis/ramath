before x, phead=0, pbody= - 14*y, ptail= - 448*y^2 - 576, mlead= + 4*x^2, flead=256, root2=16, widev=64
after  x, phead=2*x^2, pbody= - 14*y, ptail= - 840*y^2 - 576, vmapt={x=> - 14*y+16*x,y=>y}

zero   y, pbody == 0, fbody=-840
after  y, phead=2*x^2 - 840*y^2, pbody=0, ptail= - 576, vmapt={x=> - 14*y+16*x,y=>y}

("8*x^2 - 14*x*y - 7*y^2 - 9").getReductionMap(1) = {=>x^2 - 105*y^2 - 288,x=>16*x - 14*y,y=>2*y}
