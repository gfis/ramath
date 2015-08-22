before x1, phead=0, pbody= - 2*x2 + 4*x3, ptail=2*x2^2 - 7*x3^2, mlead= + x1^2, flead=1, root2=1, widev=1
after  x1, phead=x1^2, pbody= - 2*x2 + 4*x3, ptail= - 2*x2^2 + 16*x2*x3 - 23*x3^2, vmapt={x1=> - 2*x2 + 4*x3+x1,x2=>x2,x3=>x3}

before x2, phead=x1^2, pbody= - 4*x3, ptail= - 23*x3^2, mlead= + x2^2, flead=1, root2=1, widev=1
after  x2, phead=x1^2 - 2*x2^2, pbody= - 4*x3, ptail=9*x3^2, vmapt={x1=> - 2*x2 + 4*x3+x1,x2=> - 4*x3+x2,x3=>x3}

zero   x3, pbody == 0, fbody=9
after  x3, phead=x1^2 - 2*x2^2 + 9*x3^2, pbody=0, ptail=0, vmapt={x1=> - 2*x2 + 4*x3+x1,x2=> - 4*x3+x2,x3=>x3}

("x1^2 - 4*x1*x2 + 2*x2^2 + 8*x1*x3 - 7*x3^2").reduce() = x1^2 - 2*x2^2 + x3^2, vmapt={x1=>x1 - 2*x2 + 4*x3,x2=>x2 - 4*x3,x3=>3*x3}
("x1^2 - 4*x1*x2 + 2*x2^2 + 8*x1*x3 - 7*x3^2").reduce() = x1^2 - 2*x2^2 + x3^2
