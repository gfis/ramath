start0 x, phead=0, pbody=x^2 - 4*x*y + 8*x*z, ptail=4 + 2*y^2 - 7*z^2, vmapt={x=>x,y=>y,z=>z}
start1 x, pbody= - 4*y + 8*z, fbody=1, mlead= + x^2
start2 x, phead=0, pbody= - 4*y + 8*z, ptail=4 + 2*y^2 - 7*z^2, mlead= + x^2, fbody=1, gcdv1=4
loop1 x, pflead=1, wide1=1, widev=1, flead=1, coef1=4, root2=1, divs1=2, qrest[0]=2, qrest[1]=0, pbody= - 4*y + 8*z
loop2 x, widev=1, flead=1, coef1=2, pbody= - 2*y + 4*z
before x, phead=0, pbody= - 2*y + 4*z, ptail=4 + 2*y^2 - 7*z^2, mlead= + x^2, flead=1, root2=1, widev=1
after2 x, pbody= - 2*y + 4*z, ptail=4 - 2*y^2 + 16*y*z - 23*z^2
after3 x, phead=x^2, pbody= - 2*y + 4*z
after  x, phead=x^2, pbody= - 2*y + 4*z, ptail=4 - 2*y^2 + 16*y*z - 23*z^2, vmapt={x=> - 2*y + 4*z+x,y=>y,z=>z}

start0 y, phead=x^2, pbody= - 2*y^2 + 16*y*z, ptail=4 - 23*z^2, vmapt={x=> - 2*y + 4*z+x,y=>y,z=>z}
start1 y, pbody= - 8*z, fbody=-2, mlead= + y^2
start2 y, phead=x^2, pbody= - 8*z, ptail=4 - 23*z^2, mlead= + y^2, fbody=-2, gcdv1=8
loop1 y, pflead=1, wide1=1, widev=1, flead=1, coef1=8, root2=1, divs1=2, qrest[0]=4, qrest[1]=0, pbody= - 8*z
loop2 y, widev=1, flead=1, coef1=4, pbody= - 4*z
before y, phead=x^2, pbody= - 4*z, ptail=4 - 23*z^2, mlead= + y^2, flead=1, root2=1, widev=1
after2 y, pbody= - 4*z, ptail=4 + 9*z^2
after3 y, phead=x^2 - 2*y^2, pbody= - 4*z
after  y, phead=x^2 - 2*y^2, pbody= - 4*z, ptail=4 + 9*z^2, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>z}

start0 z, phead=x^2 - 2*y^2, pbody=9*z^2, ptail=4, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>z}
zero   z, pbody == 0, fbody=9
after3 z, phead=x^2 - 2*y^2 + 9*z^2, pbody=0
after  z, phead=x^2 - 2*y^2 + 9*z^2, pbody=0, ptail=4, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>z}

("4 + x^2 - 4*x*y + 2*y^2 + 8*x*z - 7*z^2").reduceIt() = 4 + x^2 - 2*y^2 + z^2, vmapt={x=> - 2*y + 4*z+x,y=> - 4*z+y,z=>(0+z)*3}
("4 + x^2 - 4*x*y + 2*y^2 + 8*x*z - 7*z^2").reduceIt() = 4 + x^2 - 2*y^2 + z^2
