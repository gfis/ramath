polys[0]=0
polys[1]=1
polys[2]=1
polys[3]=-1
order=2
initialize: mN=-1, mRElen=3, mNPlen=1, mOrder=2, mLinit=2
polys[0]=0
polys[1]=-1
polys[2]=2,-1
polys[3]=-1,1
order=2
initialize: mN=-1, mRElen=3, mNPlen=2, mOrder=2, mLinit=4
    setRE(0,1): [*0,0,0] -> [*1,0,0]
result=1, RE=[*1,0,0]
0 1
    setRE(1,4): [1,*0,0] -> [1,*4,0]
result=4, RE=[1,*4,0]
1 4
    setRE(2,9): [2,8,*0] -> [2,8,*9]
result=9, RE=[2,8,*9]
2 9
    setRE(0,40): [*6,24,27] -> [*40,24,27]
result=40, RE=[*40,24,27]
3 40
    pvals[3]=3
    pvals[2]=-2
    pvals[1]=-1
    pvals[0]=0
  sum: 0 (pvals[1]=-1, RE=[40,*24,27]) -> -27 (pvals[1]=-1, RE=[40,24,*27])
  sum: -27 (pvals[2]=-2, RE=[40,24,*27]) -> -107 (pvals[2]=-2, RE=[*40,24,27])
assertion: division with rest 2 for 428 / 3
result=null, RE=[40,*null,27]
