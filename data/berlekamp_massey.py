import sage.rings.rational_field

def berlekamp_massey(a):
    if not isinstance(a, list):
        raise TypeError("Argument 1 must be a list.")
    if len(a)%2 != 0:
        raise ValueError("Argument 1 must have an even number of terms.")

    M = len(a)//2

    try:
        K = a[0].parent().fraction_field()
    except AttributeError:
        K = sage.rings.rational_field.RationalField()
    R = K['x']
    x = R.gen()

    f = {}
    q = {}
    s = {}
    t = {}
    f[-1] = R(a)
    f[0] = x**(2*M)
    s[-1] = 1
    t[0] = 1
    s[0] = 0
    t[-1] = 0
    j = 0
    while f[j].degree() >= M:
        j += 1
        print "j=", j
        print "f=", f
        print "q=", q
        print "s=", s
        print "t=", t
        q[j], f[j] = f[j-2].quo_rem(f[j-1])
        # assert q[j]*f[j-1] + f[j] == f[j-2], "poly divide failed."
        s[j] = s[j-2] - q[j]*s[j-1]
        t[j] = t[j-2] - q[j]*t[j-1]
    print "----result:"
    print "s=", s
    t = s[j].reverse()
    print "t reversed=", t
    print "t factor=", (t[t.degree()])
    f = ~(t[t.degree()]) * t  # make monic  (~ is inverse in python)
    print "f result=", f
    return f
berlekamp_massey([5,6,7,34,66,155])
