before x, phead=0, pbody=1, ptail= - 476*y - 448*y^2 - 112, mlead= + x^2, flead=4, root2=2, widev=4
after  x, phead=15*x^2, pbody=1, ptail= - 476*y - 448*y^2 - 127, vmapt={x=>1+2*x,y=>y}

before y, phead=15360*x^2, pbody=68, ptail= - 130048, mlead= + 16*y^2, flead=16384, root2=128, widev=1024
after  y, phead=15360*x^2 - 28*y^2, pbody=68, ptail= - 576, vmapt={x=>1+2*x,y=>68+128*y}

("15*x + 15*x^2 - 119*y - 112*y^2 - 28").getReductionMap(1) = {=>15*x^2 - 7*y^2 - 144,x=>32*x + 16,y=>128*y + 68}
