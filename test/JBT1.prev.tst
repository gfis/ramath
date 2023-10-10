# post=exp(
# stack empty
# post=x
# row=x|name|0|RING.x()
# stack[1]=top=RING.x()
# post=4
# stack[2]=top=RING.monomial(new Q(4), 0)
# post=+
# row=+|meth|2|RING.add(op1, op2)
# stack[1]=top=RING.add(RING.x(), RING.monomial(new Q(4), 0))
# post=exp)
# row=exp)|func|1|RING.exp(op1, mN)
# stack[1]=top=RING.exp(RING.add(RING.x(), RING.monomial(new Q(4), 0)), mN)
# post=sqrt(
# stack[1]=top=RING.exp(RING.add(RING.x(), RING.monomial(new Q(4), 0)), mN)
# post=2
# stack[2]=top=RING.monomial(new Q(2), 0)
# post=sqrt)
# row=sqrt)|func|1|RING.sqrt(op1, mN)
# stack[2]=top=RING.sqrt(RING.monomial(new Q(2), 0), mN)
# post=/
# row=/|meth|2|RING.series(op1, op2, mN)
# stack[1]=top=RING.series(RING.exp(RING.add(RING.x(), RING.monomial(new Q(4), 0)), mN), RING.sqrt(RING.monomial(new Q(2), 0), mN), mN)
-> RING.series(RING.exp(RING.add(RING.x(), RING.monomial(new Q(4), 0)), mN), RING.sqrt(RING.monomial(new Q(2), 0), mN), mN)
