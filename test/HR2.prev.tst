polys[0]=0
polys[1]=1
polys[2]=1
polys[3]=-1
order=2
initialize: mN=-1, mRElen=3, mNPlen=1, mOrder=2, mLinit=2
polys[0]=0
polys[1]=1
polys[2]=1
polys[3]=-1
order=2
initialize: mN=-1, mRElen=3, mNPlen=1, mOrder=2, mLinit=2
setGfType: mN=2, mRElen=3, mNPlen=1, mOrder=2, mLinit=-1
    setRE(1,1): [0,*0,0] -> [0,*1,0]
result=1, RE=[0,*1,0]
1 1
    setRE(0,0): [*0,1,0] -> [*0,1,0]
result=0, RE=[*0,1,0]
0 0
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[3]=-1, RE=[0,1,*0]) -> -1 (pvals[3]=-1, RE=[0,*1,0])
  sum: -1 (pvals[2]=1, RE=[0,*1,0]) -> -1 (pvals[2]=1, RE=[*0,1,0])
    setRE(2,1): [0,1,*0] -> [0,1,*1]
result=1, RE=[0,1,*1]
-1 1
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[3]=-1, RE=[0,*1,1]) -> 0 (pvals[3]=-1, RE=[*0,1,1])
  sum: 0 (pvals[2]=1, RE=[*0,1,1]) -> 1 (pvals[2]=1, RE=[0,1,*1])
    setRE(1,-1): [0,*1,1] -> [0,*-1,1]
result=-1, RE=[0,*-1,1]
-2 -1
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[3]=-1, RE=[*0,-1,1]) -> -1 (pvals[3]=-1, RE=[0,-1,*1])
  sum: -1 (pvals[2]=1, RE=[0,-1,*1]) -> -2 (pvals[2]=1, RE=[0,*-1,1])
    setRE(0,2): [*0,-1,1] -> [*2,-1,1]
result=2, RE=[*2,-1,1]
-3 2
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[3]=-1, RE=[2,-1,*1]) -> 1 (pvals[3]=-1, RE=[2,*-1,1])
  sum: 1 (pvals[2]=1, RE=[2,*-1,1]) -> 3 (pvals[2]=1, RE=[*2,-1,1])
    setRE(2,-3): [2,-1,*1] -> [2,-1,*-3]
result=-3, RE=[2,-1,*-3]
-4 -3
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[3]=-1, RE=[2,*-1,-3]) -> -2 (pvals[3]=-1, RE=[*2,-1,-3])
  sum: -2 (pvals[2]=1, RE=[*2,-1,-3]) -> -5 (pvals[2]=1, RE=[2,-1,*-3])
    setRE(1,5): [2,*-1,-3] -> [2,*5,-3]
result=5, RE=[2,*5,-3]
-5 5
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[3]=-1, RE=[*2,5,-3]) -> 3 (pvals[3]=-1, RE=[2,5,*-3])
  sum: 3 (pvals[2]=1, RE=[2,5,*-3]) -> 8 (pvals[2]=1, RE=[2,*5,-3])
    setRE(0,-8): [*2,5,-3] -> [*-8,5,-3]
result=-8, RE=[*-8,5,-3]
-6 -8
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[3]=-1, RE=[-8,5,*-3]) -> -5 (pvals[3]=-1, RE=[-8,*5,-3])
  sum: -5 (pvals[2]=1, RE=[-8,*5,-3]) -> -13 (pvals[2]=1, RE=[*-8,5,-3])
    setRE(2,13): [-8,5,*-3] -> [-8,5,*13]
result=13, RE=[-8,5,*13]
-7 13
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[3]=-1, RE=[-8,*5,13]) -> 8 (pvals[3]=-1, RE=[*-8,5,13])
  sum: 8 (pvals[2]=1, RE=[*-8,5,13]) -> 21 (pvals[2]=1, RE=[-8,5,*13])
    setRE(1,-21): [-8,*5,13] -> [-8,*-21,13]
result=-21, RE=[-8,*-21,13]
-8 -21
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[3]=-1, RE=[*-8,-21,13]) -> -13 (pvals[3]=-1, RE=[-8,-21,*13])
  sum: -13 (pvals[2]=1, RE=[-8,-21,*13]) -> -34 (pvals[2]=1, RE=[-8,*-21,13])
    setRE(0,34): [*-8,-21,13] -> [*34,-21,13]
result=34, RE=[*34,-21,13]
-9 34
    pvals[3]=-1
    pvals[2]=1
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[3]=-1, RE=[34,-21,*13]) -> 21 (pvals[3]=-1, RE=[34,*-21,13])
  sum: 21 (pvals[2]=1, RE=[34,*-21,13]) -> 55 (pvals[2]=1, RE=[*34,-21,13])
    setRE(2,-55): [34,-21,*13] -> [34,-21,*-55]
result=-55, RE=[34,-21,*-55]
-10 -55
