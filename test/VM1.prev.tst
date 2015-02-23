vmap = {a=3,b=4,c=5}; vmap.triviality() = 0
vmap = {a=3,b=5,c=5}; vmap.triviality() = 2
vmap = {a=3,b=5,c=5,d2=0}; vmap.triviality() = 3
{a=2+4*a,b=3+4*b,c=0+2*c,d2=1+2*d2} refined by [1 1 1 1]: {a=6+8*a,b=7+8*b,c=2+4*c,d2=3+4*d2}
