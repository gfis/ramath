BigVectorArray.parseRecurrence("4*a(n-1) + 3*a(n) = 2*a(n+1)")
vname=a_0, k=0, kmax=0, kmin=0, poly=3*a_0 + 4*a_1 - 2*a__1
vname=a_1, k=-1, kmax=0, kmin=-1, poly=3*a_0 + 4*a_1 - 2*a__1
vname=a__1, k=1, kmax=1, kmin=-1, poly=3*a_0 + 4*a_1 - 2*a__1
shift by -1
create bva[4]

shift by -1
row 0	 dipows=[1]	 binoms=[1]	 result=[3]
bva[2]=3, vector=[3], poly=4*a_1 - 2*a__1

shift by -1
row 0	 dipows=[1]	 binoms=[1]	 result=[4]
bva[1]=4, vector=[4], poly= - 2*a__1

shift by -1
row 0	 dipows=[1]	 binoms=[1]	 result=[-2]
bva[3]= - 2, vector=[-2], poly=0
bva[0]=0
result= [[0],[4],[3],[-2]]
