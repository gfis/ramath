---- j = 2
f = [[0,1,1,2,3,5,8,13,21,34], [0,0,0,0,0,0,0,0,0,0,1]]
q = [[0], [0]]
s = [[1], [0]]
[0,1,1,2,3,5,8,13,21,34] / [0,0,0,0,0,0,0,0,0,0,1] =
[0] rest [0,1,1,2,3,5,8,13,21,34]

f = [[0,1,1,2,3,5,8,13,21,34], [0,0,0,0,0,0,0,0,0,0,1], [0,1,1,2,3,5,8,13,21,34]]
q = [[0], [0], [0]]
s = [[1], [0], [1]]
-----------------------------
---- j = 3
f = [[0,1,1,2,3,5,8,13,21,34], [0,0,0,0,0,0,0,0,0,0,1], [0,1,1,2,3,5,8,13,21,34]]
q = [[0], [0], [0]]
s = [[1], [0], [1]]
[0,0,0,0,0,0,0,0,0,0,1] / [0,1,1,2,3,5,8,13,21,34] =
[-21/1156,1/34] rest [0,21/1156,-13/1156,2/289,-5/1156,3/1156,-1/578,1/1156,-1/1156]

f = [[0,1,1,2,3,5,8,13,21,34], [0,0,0,0,0,0,0,0,0,0,1], [0,1,1,2,3,5,8,13,21,34], [0,21/1156,-13/1156,2/289,-5/1156,3/1156,-1/578,1/1156,-1/1156]]
q = [[0], [0], [0], [-21/1156,1/34]]
s = [[1], [0], [1], [21/1156,-1/34]]
-----------------------------
---- j = 4
f = [[0,1,1,2,3,5,8,13,21,34], [0,0,0,0,0,0,0,0,0,0,1], [0,1,1,2,3,5,8,13,21,34], [0,21/1156,-13/1156,2/289,-5/1156,3/1156,-1/578,1/1156,-1/1156]]
q = [[0], [0], [0], [-21/1156,1/34]]
s = [[1], [0], [1], [21/1156,-1/34]]
[0,1,1,2,3,5,8,13,21,34] / [0,21/1156,-13/1156,2/289,-5/1156,3/1156,-1/578,1/1156,-1/1156] =
[-63580,-39304] rest [0,1156]

f = [[0,1,1,2,3,5,8,13,21,34], [0,0,0,0,0,0,0,0,0,0,1], [0,1,1,2,3,5,8,13,21,34], [0,21/1156,-13/1156,2/289,-5/1156,3/1156,-1/578,1/1156,-1/1156], [0,1156]]
q = [[0], [0], [0], [-21/1156,1/34], [-63580,-39304]]
s = [[1], [0], [1], [21/1156,-1/34], [1156,-1156,-1156]]
-----------------------------
found: [-1,-1,1]
