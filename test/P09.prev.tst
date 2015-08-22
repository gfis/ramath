before x1, phead=0, pbody= - 9*x2 + 21*x3, ptail=0, mlead= + 3*x1^2, flead=324, root2=18, widev=108
after  x1, phead=x1^2, pbody= - 9*x2 + 21*x3, ptail= - 81*x2^2 + 378*x2*x3 - 441*x3^2, vmapt={x1=> - 9*x2 + 21*x3+18*x1,x2=>x2,x3=>x3}

before x2, phead=3*x1^2, pbody= - 7*x3, ptail= - 1323*x3^2, mlead= + 3*x2^2, flead=9, root2=3, widev=3
after  x2, phead=3*x1^2 - 27*x2^2, pbody= - 7*x3, ptail=0, vmapt={x1=> - 9*x2 + 21*x3+18*x1,x2=> - 7*x3+3*x2,x3=>x3}

("3*x1^2 - 3*x1*x2 + 7*x1*x3").reduce() = x1^2 - x2^2, vmapt={x1=>18*x1 - 9*x2 + 21*x3,x2=>9*x2 - 21*x3,x3=>x3}
("3*x1^2 - 3*x1*x2 + 7*x1*x3").reduce() = x1^2 - x2^2
