before x, phead=0, pbody= - 2*y + 4*z, ptail=4 + 2*y^2 - 7*z^2, mlead= + x^2, flead=1, root2=1, widev=1
after  x, phead=x^2, pbody= - 2*y + 4*z, ptail=4 - 2*y^2 + 16*y*z - 23*z^2, vmapt={x=> - 2*y + 4*z+x,y=>y,z=>z}

before y, phead=x^2, pbody= - 4*z, ptail=4 - 23*z^2, mlead= + y^2, flead=1, root2=1, widev=1
after  y, phead=x^2 - 2*y^2, pbody= - 4*z, ptail=4 + 9*z^2, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>z}

zero   z, pbody == 0, fbody=9
after  z, phead=x^2 - 2*y^2 + 9*z^2, pbody=0, ptail=4, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>z}

("4 + x^2 - 4*x*y + 2*y^2 + 8*x*z - 7*z^2").getReductionMap(1) = {=>4 + x^2 - 2*y^2 + z^2,x=>x - 2*y + 4*z,y=>y - 4*z,z=>3*z}
