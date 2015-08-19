before x, phead=0, pbody= - 4*x*y + 8*x*z, ptail=4 + 2*y^2 - 7*z^2, rootv=1, widev=1, divs1=2
after  x, phead=x^2, pbody=x - 4*x*y + 8*x*z, ptail=4 + 2*y^2 - 16*x^2*y^2 + 64*x^2*y*z - 7*z^2 - 64*x^2*z^2
before y, phead=x^2, pbody= - 16*x^2*y^2 + 64*x^2*y*z, ptail=4 - 7*z^2 - 64*x^2*z^2, rootv=1, widev=1, divs1=2
after  y, phead=x^2 + y^2, pbody=y - 16*x^2*y^2 + 64*x^2*y*z, ptail=4 - 256*x^4*y^4 + 2048*x^4*y^3*z - 7*z^2 - 64*x^2*z^2 - 4096*x^4*y^2*z^2
before z, phead=x^2 + y^2, pbody=2048*x^4*y^3*z - 64*x^2*z^2 - 4096*x^4*y^2*z^2, ptail=4 - 256*x^4*y^4, rootv=1, widev=1, divs1=2
after  z, phead=x^2 + y^2 + z^2, pbody=z + 2048*x^4*y^3*z - 64*x^2*z^2 - 4096*x^4*y^2*z^2, ptail=4 - 256*x^4*y^4 - 4194304*x^8*y^6*z^2 + 262144*x^6*y^3*z^3 + 16777216*x^8*y^5*z^3 - 4096*x^4*z^4 - 524288*x^6*y^2*z^4 - 16777216*x^8*y^4*z^4
("4 + x^2 - 4*x*y + 2*y^2 + 8*x*z - 7*z^2").squareCompletion() = 2^2 + x^2 + y^2 - 2^8*x^4*y^4 + z^2 - 2^22*x^8*y^6*z^2 + 2^18*x^6*y^3*z^3 + 2^24*x^8*y^5*z^3 - 2^12*x^4*z^4 - 2^19*x^6*y^2*z^4 - 2^24*x^8*y^4*z^4 = 4 + x^2 + y^2 - 256*x^4*y^4 + z^2 - 4194304*x^8*y^6*z^2 + 262144*x^6*y^3*z^3 + 16777216*x^8*y^5*z^3 - 4096*x^4*z^4 - 524288*x^6*y^2*z^4 - 16777216*x^8*y^4*z^4
