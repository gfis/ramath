A052882	egf	0	x/(2-exp(x))
result postfix=[x, 2, exp(, x, exp), -, /]
# post=
# stack[1]=top=<?post=?>
# post=x
# row=x|name|0|RING.x()
# stack[2]=top=RING.x()
# post=2
# stack[3]=top=RING.monomial(new Q(2), 0)
# post=exp(
# stack[3]=top=RING.monomial(new Q(2), 0)
# post=x
# row=x|name|0|RING.x()
# stack[4]=top=RING.x()
# post=exp)
# row=exp)|func|1|RING.exp(op1, mN)
# stack[4]=top=RING.exp(RING.x(), mN)
# post=-
# row=-|meth|2|RING.subtract(op1, op2)
# stack[3]=top=RING.subtract(RING.monomial(new Q(2), 0), RING.exp(RING.x(), mN))
# post=/
# row=/|meth|2|RING.series(op1, op2, mN)
# stack[2]=top=RING.series(RING.x(), RING.subtract(RING.monomial(new Q(2), 0), RING.exp(RING.x(), mN)), mN)
A052882	egf	0	RING.series(RING.x(), RING.subtract(RING.monomial(new Q(2), 0), RING.exp(RING.x(), mN)), mN)	0
A053488	egf	0	exp(exp(sinh(x))-1)-1
result postfix=[exp(, exp(, sinh(, x, sinh), exp), 1, -, exp), 1, -]
# post=
# stack[1]=top=<?post=?>
# post=exp(
# stack[1]=top=<?post=?>
# post=exp(
# stack[1]=top=<?post=?>
# post=sinh(
# stack[1]=top=<?post=?>
# post=x
# row=x|name|0|RING.x()
# stack[2]=top=RING.x()
# post=sinh)
# row=sinh)|func|1|RING.sinh(op1, mN)
# stack[2]=top=RING.sinh(RING.x(), mN)
# post=exp)
# row=exp)|func|1|RING.exp(op1, mN)
# stack[2]=top=RING.exp(RING.sinh(RING.x(), mN), mN)
# post=1
# row=1|numb|0|RING.one()
# stack[3]=top=RING.one()
# post=-
# row=-|meth|2|RING.subtract(op1, op2)
# stack[2]=top=RING.subtract(RING.exp(RING.sinh(RING.x(), mN), mN), RING.one())
# post=exp)
# row=exp)|func|1|RING.exp(op1, mN)
# stack[2]=top=RING.exp(RING.subtract(RING.exp(RING.sinh(RING.x(), mN), mN), RING.one()), mN)
# post=1
# row=1|numb|0|RING.one()
# stack[3]=top=RING.one()
# post=-
# row=-|meth|2|RING.subtract(op1, op2)
# stack[2]=top=RING.subtract(RING.exp(RING.subtract(RING.exp(RING.sinh(RING.x(), mN), mN), RING.one()), mN), RING.one())
A053488	egf	0	RING.subtract(RING.exp(RING.subtract(RING.exp(RING.sinh(RING.x(), mN), mN), RING.one()), mN), RING.one())	0
