---- j = 2
f = [[5,6,7,34,66,155], [0,0,0,0,0,0,1]]
q = [[0], [0]]
s = [[1], [0]]
[5,6,7,34,66,155] / [0,0,0,0,0,0,1] =
[0] rest [5,6,7,34,66,155]

f = [[5,6,7,34,66,155], [0,0,0,0,0,0,1], [5,6,7,34,66,155]]
q = [[0], [0], [0]]
s = [[1], [0], [1]]
-----------------------------
---- j = 3
f = [[5,6,7,34,66,155], [0,0,0,0,0,0,1], [5,6,7,34,66,155]]
q = [[0], [0], [0]]
s = [[1], [0], [1]]
[0,0,0,0,0,0,1] / [5,6,7,34,66,155] =
[-66/24025,1/155] rest [66/4805,-379/24025,-468/24025,1159/24025,-914/24025]

f = [[5,6,7,34,66,155], [0,0,0,0,0,0,1], [5,6,7,34,66,155], [66/4805,-379/24025,-468/24025,1159/24025,-914/24025]]
q = [[0], [0], [0], [-66/24025,1/155]]
s = [[1], [0], [1], [66/24025,-1/155]]
-----------------------------
---- j = 4
f = [[5,6,7,34,66,155], [0,0,0,0,0,0,1], [5,6,7,34,66,155], [66/4805,-379/24025,-468/24025,1159/24025,-914/24025]]
q = [[0], [0], [0], [-66/24025,1/155]]
s = [[1], [0], [1], [66/24025,-1/155]]
[5,6,7,34,66,155] / [66/4805,-379/24025,-468/24025,1159/24025,-914/24025] =
[-5765255225/835396,-3723875/914] rest [41683375/417698,-39184775/835396,-80075325/417698,240225975/835396]

f = [[5,6,7,34,66,155], [0,0,0,0,0,0,1], [5,6,7,34,66,155], [66/4805,-379/24025,-468/24025,1159/24025,-914/24025], [41683375/417698,-39184775/835396,-80075325/417698,240225975/835396]]
q = [[0], [0], [0], [-66/24025,1/155], [-5765255225/835396,-3723875/914]]
s = [[1], [0], [1], [66/24025,-1/155], [8336675/417698,-27844975/835396,-24025/914]]
-----------------------------
---- j = 5
f = [[5,6,7,34,66,155], [0,0,0,0,0,0,1], [5,6,7,34,66,155], [66/4805,-379/24025,-468/24025,1159/24025,-914/24025], [41683375/417698,-39184775/835396,-80075325/417698,240225975/835396]]
q = [[0], [0], [0], [-66/24025,1/155], [-5765255225/835396,-3723875/914]]
s = [[1], [0], [1], [66/24025,-1/155], [8336675/417698,-27844975/835396,-24025/914]]
[66/4805,-379/24025,-468/24025,1159/24025,-914/24025] / [41683375/417698,-39184775/835396,-80075325/417698,240225975/835396] =
[1377568004/17314287148125,-763551944/5771429049375] rest [835396/144135585,835396/720677925,-835396/80075325]

f = [[5,6,7,34,66,155], [0,0,0,0,0,0,1], [5,6,7,34,66,155], [66/4805,-379/24025,-468/24025,1159/24025,-914/24025], [41683375/417698,-39184775/835396,-80075325/417698,240225975/835396], [835396/144135585,835396/720677925,-835396/80075325]]
q = [[0], [0], [0], [-66/24025,1/155], [-5765255225/835396,-3723875/914], [1377568004/17314287148125,-763551944/5771429049375]]
s = [[1], [0], [1], [66/24025,-1/155], [8336675/417698,-27844975/835396,-24025/914], [835396/720677925,-835396/720677925,-1670792/720677925,-835396/240225975]]
-----------------------------
found: [-3,-2,-1,1]
