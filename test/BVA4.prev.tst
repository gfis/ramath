BigVectorArray.parseRecurrence("a(n) -n*a(n-1) +(n-1)*a(n-2) -(n-1)*(n-2)*a(n-3)=0")
vname=a_0, k=0, kmax=0, kmin=0, poly=a_0 - a_2 - 2*a_3 - a_1*n + a_2*n + 3*a_3*n - a_3*n^2
vname=a_1, k=-1, kmax=0, kmin=-1, poly=a_0 - a_2 - 2*a_3 - a_1*n + a_2*n + 3*a_3*n - a_3*n^2
vname=a_2, k=-2, kmax=0, kmin=-2, poly=a_0 - a_2 - 2*a_3 - a_1*n + a_2*n + 3*a_3*n - a_3*n^2
vname=a_3, k=-3, kmax=0, kmin=-3, poly=a_0 - a_2 - 2*a_3 - a_1*n + a_2*n + 3*a_3*n - a_3*n^2
shift by 0
create bva[5]
bva[4]=1, vector=[1], poly= - a_2 - 2*a_3 - a_1*n + a_2*n + 3*a_3*n - a_3*n^2
bva[3]= - n, vector=[0,-1], poly= - a_2 - 2*a_3 + a_2*n + 3*a_3*n - a_3*n^2
bva[2]= - 1 + n, vector=[-1,1], poly= - 2*a_3 + 3*a_3*n - a_3*n^2
bva[1]= - 2 + 3*n - n^2, vector=[-2,3,-1], poly=0
bva[0]=0
result= [[0],[-2,3,-1],[-1,1],[0,-1],[1]]
