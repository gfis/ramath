BigVectorArray.parseRecurrence("a(n) +(-2*n+1)*a(n-1) +2*(-n+1)*a(n-2)=0")
vname=a_0, k=0, kmax=0, kmin=0, poly=a_0 + a_1 + 2*a_2 - 2*a_1*n - 2*a_2*n
vname=a_1, k=-1, kmax=0, kmin=-1, poly=a_0 + a_1 + 2*a_2 - 2*a_1*n - 2*a_2*n
vname=a_2, k=-2, kmax=0, kmin=-2, poly=a_0 + a_1 + 2*a_2 - 2*a_1*n - 2*a_2*n
shift by 0
create bva[4]
bva[3]=1, vector=[1], poly=a_1 + 2*a_2 - 2*a_1*n - 2*a_2*n
bva[2]=1 - 2*n, vector=[1,-2], poly=2*a_2 - 2*a_2*n
bva[1]=2 - 2*n, vector=[2,-2], poly=0
bva[0]=0
result= [[0],[2,-2],[1,-2],[1]]
