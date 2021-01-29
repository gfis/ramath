BigVectorArray.parseRecurrence("2*n*a(n) = (23*n-36)*a(n-1) -6*(-2*n+3)*a(n-2)")
vname=a_0, k=0, kmax=0, kmin=0, poly=36*a_1 + 18*a_2 + 2*a_0*n - 23*a_1*n - 12*a_2*n
vname=a_1, k=-1, kmax=0, kmin=-1, poly=36*a_1 + 18*a_2 + 2*a_0*n - 23*a_1*n - 12*a_2*n
vname=a_2, k=-2, kmax=0, kmin=-2, poly=36*a_1 + 18*a_2 + 2*a_0*n - 23*a_1*n - 12*a_2*n
shift by 0
create bva[4]
bva[3]=2*n, vector=[0,2], poly=36*a_1 + 18*a_2 - 23*a_1*n - 12*a_2*n
bva[2]=36 - 23*n, vector=[36,-23], poly=18*a_2 - 12*a_2*n
bva[1]=18 - 12*n, vector=[18,-12], poly=0
bva[0]=0
result= [[0],[18,-12],[36,-23],[0,2]]
