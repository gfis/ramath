vmap = {a=3,b=4,c=5}; vmap.triviality() = 0
vmap = {a=3,b=5,c=5}; vmap.triviality() = 2
vmap = {a=3,b=5,c=5,d2=0}; vmap.triviality() = 3
{a=4*a+2,b=4*b+3,c=2*c+0,d2=2*d2+1} refined by [1 1 1 1]: {a=8*a+6,b=8*b+7,c=4*c+2,d2=4*d2+3}
