# post=x
# row=x|name|0|RING.x()
# stack[1]=top=RING.x()
# post=2
# stack[2]=top=RING.monomial(new Q(2), 0)
# post=exp(
# stack[2]=top=RING.monomial(new Q(2), 0)
# post=x
# row=x|name|0|RING.x()
# stack[3]=top=RING.x()
# post=exp)
# row=exp)|func|1|RING.exp(op1, mN)
# stack[3]=top=RING.exp(RING.x(), mN)
# post=-
# row=-|meth|2|RING.subtract(op1, op2)
# stack[2]=top=RING.subtract(RING.monomial(new Q(2), 0), RING.exp(RING.x(), mN))
# post=/
# row=/|meth|2|RING.series(op1, op2, mN)
# stack[1]=top=RING.series(RING.x(), RING.subtract(RING.monomial(new Q(2), 0), RING.exp(RING.x(), mN)), mN)
-> RING.series(RING.x(), RING.subtract(RING.monomial(new Q(2), 0), RING.exp(RING.x(), mN)), mN)
