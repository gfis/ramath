zero   x, pbody == 0, fbody=30
after  x, phead=30*x^2, pbody=0, ptail= - 2 - 7*y - 14*y^2, vmapt={x=>x,y=>y}

before y, phead=240*x^2, pbody=1, ptail= - 16, mlead= + 2*y^2, flead=16, root2=4, widev=8
after  y, phead=240*x^2 - 7*y^2, pbody=1, ptail= - 9, vmapt={x=>x,y=>1+4*y}

(" - 2 + 30*x^2 - 7*y - 14*y^2").reduce() =  - 9 + 15*x^2 - 7*y^2, vmapt={x=>4*x,y=>1 + 4*y}
(" - 2 + 30*x^2 - 7*y - 14*y^2").reduce() =  - 9 + 15*x^2 - 7*y^2
