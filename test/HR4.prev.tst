polys[0]=0
polys[1]=-4
polys[2]=-4
polys[3]=2,1
order=2
initialize: mN=-1, mRElen=3, mNPlen=1, mOrder=2, mLinit=2
  exp: multiply ring=[0,0,*0] by mN=0
  exp: multiply ring=[0,0,*0] by mN=0
  exp: multiply ring=[0,0,*0] by mN=0
    setRE(0,1): [*0,0,0] -> [*1,0,0]
result=1, RE=[*1,0,0]
0 1
  exp: multiply ring=[*1,0,0] by mN=1
  exp: multiply ring=[*1,0,0] by mN=1
  exp: multiply ring=[*1,0,0] by mN=1
    setRE(1,4): [1,*0,0] -> [1,*4,0]
result=4, RE=[1,*4,0]
1 4
    pvals[3]=2
    pvals[2]=-4
    pvals[1]=-4
    pvals[0]=0
  sum: 0 (pvals[1]=-4, RE=[1,4,*0]) -> -4 (pvals[1]=-4, RE=[*1,4,0])
  sum: -4 (pvals[2]=-4, RE=[*1,4,0]) -> -20 (pvals[2]=-4, RE=[1,*4,0])
  exp: multiply ring=[1,*4,0] by mN=2
  exp: multiply ring=[2,*4,0] by mN=2
  exp: multiply ring=[2,*8,0] by mN=2
    setRE(2,20): [2,8,*0] -> [2,8,*20]
result=20, RE=[2,8,*20]
2 20
    pvals[3]=3
    pvals[2]=-4
    pvals[1]=-4
    pvals[0]=0
  sum: 0 (pvals[1]=-4, RE=[*2,8,20]) -> -32 (pvals[1]=-4, RE=[2,*8,20])
  sum: -32 (pvals[2]=-4, RE=[2,*8,20]) -> -112 (pvals[2]=-4, RE=[2,8,*20])
  exp: multiply ring=[2,8,*20] by mN=3
  exp: multiply ring=[6,8,*20] by mN=3
  exp: multiply ring=[6,24,*20] by mN=3
    setRE(0,112): [*6,24,60] -> [*112,24,60]
result=112, RE=[*112,24,60]
3 112
    pvals[3]=4
    pvals[2]=-4
    pvals[1]=-4
    pvals[0]=0
  sum: 0 (pvals[1]=-4, RE=[112,*24,60]) -> -240 (pvals[1]=-4, RE=[112,24,*60])
  sum: -240 (pvals[2]=-4, RE=[112,24,*60]) -> -688 (pvals[2]=-4, RE=[*112,24,60])
  exp: multiply ring=[*112,24,60] by mN=4
  exp: multiply ring=[*448,24,60] by mN=4
  exp: multiply ring=[*448,96,60] by mN=4
    setRE(1,688): [448,*96,240] -> [448,*688,240]
result=688, RE=[448,*688,240]
4 688
    pvals[3]=5
    pvals[2]=-4
    pvals[1]=-4
    pvals[0]=0
  sum: 0 (pvals[1]=-4, RE=[448,688,*240]) -> -1792 (pvals[1]=-4, RE=[*448,688,240])
  sum: -1792 (pvals[2]=-4, RE=[*448,688,240]) -> -4544 (pvals[2]=-4, RE=[448,*688,240])
  exp: multiply ring=[448,*688,240] by mN=5
  exp: multiply ring=[2240,*688,240] by mN=5
  exp: multiply ring=[2240,*3440,240] by mN=5
    setRE(2,4544): [2240,3440,*1200] -> [2240,3440,*4544]
result=4544, RE=[2240,3440,*4544]
5 4544
    pvals[3]=6
    pvals[2]=-4
    pvals[1]=-4
    pvals[0]=0
  sum: 0 (pvals[1]=-4, RE=[*2240,3440,4544]) -> -13760 (pvals[1]=-4, RE=[2240,*3440,4544])
  sum: -13760 (pvals[2]=-4, RE=[2240,*3440,4544]) -> -31936 (pvals[2]=-4, RE=[2240,3440,*4544])
  exp: multiply ring=[2240,3440,*4544] by mN=6
  exp: multiply ring=[13440,3440,*4544] by mN=6
  exp: multiply ring=[13440,20640,*4544] by mN=6
    setRE(0,31936): [*13440,20640,27264] -> [*31936,20640,27264]
result=31936, RE=[*31936,20640,27264]
6 31936
    pvals[3]=7
    pvals[2]=-4
    pvals[1]=-4
    pvals[0]=0
  sum: 0 (pvals[1]=-4, RE=[31936,*20640,27264]) -> -109056 (pvals[1]=-4, RE=[31936,20640,*27264])
  sum: -109056 (pvals[2]=-4, RE=[31936,20640,*27264]) -> -236800 (pvals[2]=-4, RE=[*31936,20640,27264])
  exp: multiply ring=[*31936,20640,27264] by mN=7
  exp: multiply ring=[*223552,20640,27264] by mN=7
  exp: multiply ring=[*223552,144480,27264] by mN=7
    setRE(1,236800): [223552,*144480,190848] -> [223552,*236800,190848]
result=236800, RE=[223552,*236800,190848]
7 236800
    pvals[3]=8
    pvals[2]=-4
    pvals[1]=-4
    pvals[0]=0
  sum: 0 (pvals[1]=-4, RE=[223552,236800,*190848]) -> -894208 (pvals[1]=-4, RE=[*223552,236800,190848])
  sum: -894208 (pvals[2]=-4, RE=[*223552,236800,190848]) -> -1841408 (pvals[2]=-4, RE=[223552,*236800,190848])
  exp: multiply ring=[223552,*236800,190848] by mN=8
  exp: multiply ring=[1788416,*236800,190848] by mN=8
  exp: multiply ring=[1788416,*1894400,190848] by mN=8
    setRE(2,1841408): [1788416,1894400,*1526784] -> [1788416,1894400,*1841408]
result=1841408, RE=[1788416,1894400,*1841408]
8 1841408
    pvals[3]=9
    pvals[2]=-4
    pvals[1]=-4
    pvals[0]=0
  sum: 0 (pvals[1]=-4, RE=[*1788416,1894400,1841408]) -> -7577600 (pvals[1]=-4, RE=[1788416,*1894400,1841408])
  sum: -7577600 (pvals[2]=-4, RE=[1788416,*1894400,1841408]) -> -14943232 (pvals[2]=-4, RE=[1788416,1894400,*1841408])
  exp: multiply ring=[1788416,1894400,*1841408] by mN=9
  exp: multiply ring=[16095744,1894400,*1841408] by mN=9
  exp: multiply ring=[16095744,17049600,*1841408] by mN=9
    setRE(0,14943232): [*16095744,17049600,16572672] -> [*14943232,17049600,16572672]
result=14943232, RE=[*14943232,17049600,16572672]
9 14943232
