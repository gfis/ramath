BigVectorArray.parseRecurrence("4*a(n) + 3*a(n+1) = 2*a(n+2)")
vname=a_0, k=0, kmax=0, kmin=0, poly=4*a_0 + 3*a__1 - 2*a__2
vname=a__1, k=1, kmax=1, kmin=0, poly=4*a_0 + 3*a__1 - 2*a__2
vname=a__2, k=2, kmax=2, kmin=0, poly=4*a_0 + 3*a__1 - 2*a__2
shift by -2
create bva[4]

shift by -2
row 0	 dipows=[1]	 binoms=[1]	 result=[4]
bva[1]=4, vector=[4], poly=3*a__1 - 2*a__2

shift by -2
row 0	 dipows=[1]	 binoms=[1]	 result=[3]
bva[2]=3, vector=[3], poly= - 2*a__2

shift by -2
row 0	 dipows=[1]	 binoms=[1]	 result=[-2]
bva[3]= - 2, vector=[-2], poly=0
bva[0]=0
result= [[0],[4],[3],[-2]]
