polys[0]=0
polys[1]=1
polys[2]=1
polys[3]=-1
order=2
initialize: mN=-1, mRElen=3, mNPlen=1, mOrder=2, mLinit=2
    setRE(0,0): [*0,0,0] -> [*0,0,0]
result=0, RE=[*0,0,0]
0 0
    setRE(1,1): [0,*0,0] -> [0,*1,0]
result=1, RE=[0,*1,0]
1 1
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[0,1,*0]) -> 0 (pvals[1]=1, RE=[*0,1,0])
  sum: 0 (pvals[2]=1, RE=[*0,1,0]) -> 1 (pvals[2]=1, RE=[0,*1,0])
    setRE(2,1): [0,1,*0] -> [0,1,*1]
result=1, RE=[0,1,*1]
2 1
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[*0,1,1]) -> 1 (pvals[1]=1, RE=[0,*1,1])
  sum: 1 (pvals[2]=1, RE=[0,*1,1]) -> 2 (pvals[2]=1, RE=[0,1,*1])
    setRE(0,2): [*0,1,1] -> [*2,1,1]
result=2, RE=[*2,1,1]
3 2
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[2,*1,1]) -> 1 (pvals[1]=1, RE=[2,1,*1])
  sum: 1 (pvals[2]=1, RE=[2,1,*1]) -> 3 (pvals[2]=1, RE=[*2,1,1])
    setRE(1,3): [2,*1,1] -> [2,*3,1]
result=3, RE=[2,*3,1]
4 3
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[2,3,*1]) -> 2 (pvals[1]=1, RE=[*2,3,1])
  sum: 2 (pvals[2]=1, RE=[*2,3,1]) -> 5 (pvals[2]=1, RE=[2,*3,1])
    setRE(2,5): [2,3,*1] -> [2,3,*5]
result=5, RE=[2,3,*5]
5 5
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[*2,3,5]) -> 3 (pvals[1]=1, RE=[2,*3,5])
  sum: 3 (pvals[2]=1, RE=[2,*3,5]) -> 8 (pvals[2]=1, RE=[2,3,*5])
    setRE(0,8): [*2,3,5] -> [*8,3,5]
result=8, RE=[*8,3,5]
6 8
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[8,*3,5]) -> 5 (pvals[1]=1, RE=[8,3,*5])
  sum: 5 (pvals[2]=1, RE=[8,3,*5]) -> 13 (pvals[2]=1, RE=[*8,3,5])
    setRE(1,13): [8,*3,5] -> [8,*13,5]
result=13, RE=[8,*13,5]
7 13
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[8,13,*5]) -> 8 (pvals[1]=1, RE=[*8,13,5])
  sum: 8 (pvals[2]=1, RE=[*8,13,5]) -> 21 (pvals[2]=1, RE=[8,*13,5])
    setRE(2,21): [8,13,*5] -> [8,13,*21]
result=21, RE=[8,13,*21]
8 21
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[*8,13,21]) -> 13 (pvals[1]=1, RE=[8,*13,21])
  sum: 13 (pvals[2]=1, RE=[8,*13,21]) -> 34 (pvals[2]=1, RE=[8,13,*21])
    setRE(0,34): [*8,13,21] -> [*34,13,21]
result=34, RE=[*34,13,21]
9 34
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[34,*13,21]) -> 21 (pvals[1]=1, RE=[34,13,*21])
  sum: 21 (pvals[2]=1, RE=[34,13,*21]) -> 55 (pvals[2]=1, RE=[*34,13,21])
    setRE(1,55): [34,*13,21] -> [34,*55,21]
result=55, RE=[34,*55,21]
10 55
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[34,55,*21]) -> 34 (pvals[1]=1, RE=[*34,55,21])
  sum: 34 (pvals[2]=1, RE=[*34,55,21]) -> 89 (pvals[2]=1, RE=[34,*55,21])
    setRE(2,89): [34,55,*21] -> [34,55,*89]
result=89, RE=[34,55,*89]
11 89
