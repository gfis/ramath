BigVectorArray.parseRecurrence("-(n+5)*(n-4)*a(n) +2*n*(2*n-1)*a(n-1)=0")
vname=a_0, k=0, kmax=0, kmin=0, poly=20*a_0 - a_0*n - 2*a_1*n - a_0*n^2 + 4*a_1*n^2
vname=a_1, k=-1, kmax=0, kmin=-1, poly=20*a_0 - a_0*n - 2*a_1*n - a_0*n^2 + 4*a_1*n^2
shift by 0
create bva[3]
bva[2]=20 - n - n^2, vector=[20,-1,-1], poly= - 2*a_1*n + 4*a_1*n^2
bva[1]= - 2*n + 4*n^2, vector=[0,-2,4], poly=0
bva[0]=0
result= [[0],[0,-2,4],[20,-1,-1]]
