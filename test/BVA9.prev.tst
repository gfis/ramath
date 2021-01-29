BigVectorArray.parseRecurrence("4*a(n-3) + 3*a(n-2) = 2*a(n-1)")
vname=a_1, k=-1, kmax=0, kmin=-1, poly= - 2*a_1 + 3*a_2 + 4*a_3
vname=a_2, k=-2, kmax=0, kmin=-2, poly= - 2*a_1 + 3*a_2 + 4*a_3
vname=a_3, k=-3, kmax=0, kmin=-3, poly= - 2*a_1 + 3*a_2 + 4*a_3
shift by 0
create bva[5]
bva[3]= - 2, vector=[-2], poly=3*a_2 + 4*a_3
bva[2]=3, vector=[3], poly=4*a_3
bva[1]=4, vector=[4], poly=0
bva[0]=0
result= [[0],[4],[3],[-2]]
