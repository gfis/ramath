polys[0]=0
polys[1]=1
polys[2]=1
polys[3]=-1
order=2
initialize: mN=-1, mRElen=3, mNPlen=1, mOrder=2, mLinit=2
polys[0]=0
polys[1]=1
polys[2]=0,1
polys[3]=-1,-1
order=2
initialize: mN=0, mRElen=3, mNPlen=2, mOrder=2, mLinit=4
  exp: multiply ring=[*0,0,0] by mN=1
  exp: multiply ring=[*0,0,0] by mN=1
  exp: multiply ring=[*0,0,0] by mN=1
    setRE(1,1): [0,*0,0] -> [0,*1,0]
result=1, RE=[0,*1,0]
1 1
  exp: multiply ring=[0,*1,0] by mN=2
  exp: multiply ring=[0,*1,0] by mN=2
  exp: multiply ring=[0,*2,0] by mN=2
    setRE(2,4): [0,2,*0] -> [0,2,*4]
result=4, RE=[0,2,*4]
2 4
  exp: multiply ring=[0,2,*4] by mN=3
  exp: multiply ring=[0,2,*4] by mN=3
  exp: multiply ring=[0,6,*4] by mN=3
    setRE(0,9): [*0,6,12] -> [*9,6,12]
result=9, RE=[*9,6,12]
3 9
  exp: multiply ring=[*9,6,12] by mN=4
  exp: multiply ring=[*36,6,12] by mN=4
  exp: multiply ring=[*36,24,12] by mN=4
    setRE(1,40): [36,*24,48] -> [36,*40,48]
result=40, RE=[36,*40,48]
4 40
    pvals[3]=-4
    pvals[2]=3
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[36,40,*48]) -> 36 (pvals[1]=1, RE=[*36,40,48])
  sum: 36 (pvals[2]=3, RE=[*36,40,48]) -> 156 (pvals[2]=3, RE=[36,*40,48])
  exp: multiply ring=[36,*40,48] by mN=5
  exp: multiply ring=[180,*40,48] by mN=5
  exp: multiply ring=[180,*200,48] by mN=5
    setRE(2,195): [180,200,*240] -> [180,200,*195]
result=195, RE=[180,200,*195]
5 195
    pvals[3]=-5
    pvals[2]=4
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[*180,200,195]) -> 200 (pvals[1]=1, RE=[180,*200,195])
  sum: 200 (pvals[2]=4, RE=[180,*200,195]) -> 980 (pvals[2]=4, RE=[180,200,*195])
  exp: multiply ring=[180,200,*195] by mN=6
  exp: multiply ring=[1080,200,*195] by mN=6
  exp: multiply ring=[1080,1200,*195] by mN=6
    setRE(0,1176): [*1080,1200,1170] -> [*1176,1200,1170]
result=1176, RE=[*1176,1200,1170]
6 1176
    pvals[3]=-6
    pvals[2]=5
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[1176,*1200,1170]) -> 1170 (pvals[1]=1, RE=[1176,1200,*1170])
  sum: 1170 (pvals[2]=5, RE=[1176,1200,*1170]) -> 7050 (pvals[2]=5, RE=[*1176,1200,1170])
  exp: multiply ring=[*1176,1200,1170] by mN=7
  exp: multiply ring=[*8232,1200,1170] by mN=7
  exp: multiply ring=[*8232,8400,1170] by mN=7
    setRE(1,8225): [8232,*8400,8190] -> [8232,*8225,8190]
result=8225, RE=[8232,*8225,8190]
7 8225
    pvals[3]=-7
    pvals[2]=6
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[8232,8225,*8190]) -> 8232 (pvals[1]=1, RE=[*8232,8225,8190])
  sum: 8232 (pvals[2]=6, RE=[*8232,8225,8190]) -> 57582 (pvals[2]=6, RE=[8232,*8225,8190])
  exp: multiply ring=[8232,*8225,8190] by mN=8
  exp: multiply ring=[65856,*8225,8190] by mN=8
  exp: multiply ring=[65856,*65800,8190] by mN=8
    setRE(2,65808): [65856,65800,*65520] -> [65856,65800,*65808]
result=65808, RE=[65856,65800,*65808]
8 65808
    pvals[3]=-8
    pvals[2]=7
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[*65856,65800,65808]) -> 65800 (pvals[1]=1, RE=[65856,*65800,65808])
  sum: 65800 (pvals[2]=7, RE=[65856,*65800,65808]) -> 526456 (pvals[2]=7, RE=[65856,65800,*65808])
  exp: multiply ring=[65856,65800,*65808] by mN=9
  exp: multiply ring=[592704,65800,*65808] by mN=9
  exp: multiply ring=[592704,592200,*65808] by mN=9
    setRE(0,592263): [*592704,592200,592272] -> [*592263,592200,592272]
result=592263, RE=[*592263,592200,592272]
9 592263
    pvals[3]=-9
    pvals[2]=8
    pvals[1]=1
    pvals[0]=0
  sum: 0 (pvals[1]=1, RE=[592263,*592200,592272]) -> 592272 (pvals[1]=1, RE=[592263,592200,*592272])
  sum: 592272 (pvals[2]=8, RE=[592263,592200,*592272]) -> 5330376 (pvals[2]=8, RE=[*592263,592200,592272])
  exp: multiply ring=[*592263,592200,592272] by mN=10
  exp: multiply ring=[*5922630,592200,592272] by mN=10
  exp: multiply ring=[*5922630,5922000,592272] by mN=10
    setRE(1,5922640): [5922630,*5922000,5922720] -> [5922630,*5922640,5922720]
result=5922640, RE=[5922630,*5922640,5922720]
10 5922640
