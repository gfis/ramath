---- j = 2
f = [[[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]], [[0],[0,0],[0,0,0],[0,0,0,0],[0,0,0,0,0],[1,20,85,146,112,32]]]
q = [[[0]], [[0]]]
s = [[[1]], [[0]]]
[[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]] / [[0],[0,0],[0,0,0],[0,0,0,0],[0,0,0,0,0],[1,20,85,146,112,32]] =
[[0]] rest [[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]]

f = [[[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]], [[0],[0,0],[0,0,0],[0,0,0,0],[0,0,0,0,0],[1,20,85,146,112,32]], [[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]]]
q = [[[0]], [[0]], [[0]]]
s = [[[1]], [[0]], [[1]]]
-----------------------------
---- j = 3
f = [[[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]], [[0],[0,0],[0,0,0],[0,0,0,0],[0,0,0,0,0],[1,20,85,146,112,32]], [[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]]]
q = [[[0]], [[0]], [[0]]]
s = [[[1]], [[0]], [[1]]]
[[0],[0,0],[0,0,0],[0,0,0,0],[0,0,0,0,0],[1,20,85,146,112,32]] / [[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]] =
[[-1],[3/2,2]] rest [[1],[-1/2,0],[-1/2,0,0],[-1/2,-1/2,0,0],[-1/2,-3/2,-1,0,0],[-1/2,-3,-9/2,-2]

f = [[[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]], [[0],[0,0],[0,0,0],[0,0,0,0],[0,0,0,0,0],[1,20,85,146,112,32]], [[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]], [[1],[-1/2,0],[-1/2,0,0],[-1/2,-1/2,0,0],[-1/2,-3/2,-1,0,0],[-1/2,-3,-9/2,-2]]
q = [[[0]], [[0]], [[0]], [[-1],[3/2,2]]]
s = [[[1]], [[0]], [[1]], [[1],[-3/2,-2]]]
-----------------------------
---- j = 4
f = [[[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]], [[0],[0,0],[0,0,0],[0,0,0,0],[0,0,0,0,0],[1,20,85,146,112,32]], [[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]], [[1],[-1/2,0],[-1/2,0,0],[-1/2,-1/2,0,0],[-1/2,-3/2,-1,0,0],[-1/2,-3,-9/2,-2]]
q = [[[0]], [[0]], [[0]], [[-1],[3/2,2]]]
s = [[[1]], [[0]], [[1]], [[1],[-3/2,-2]]]
[[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]] / [[1],[-1/2,0],[-1/2,0,0],[-1/2,-1/2,0,0],[-1/2,-3/2,-1,0,0],[-1/2,-3,-9/2,-2] =
[[0]] rest [[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]]

f = [[[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]], [[0],[0,0],[0,0,0],[0,0,0,0],[0,0,0,0,0],[1,20,85,146,112,32]], [[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]], [[1],[-1/2,0],[-1/2,0,0],[-1/2,-1/2,0,0],[-1/2,-3/2,-1,0,0],[-1/2,-3,-9/2,-2], [[1],[1,2],[1,5,4],[1,9,16,8],[1,14,41,44,16]]]
q = [[[0]], [[0]], [[0]], [[-1],[3/2,2]], [[0]]]
s = [[[1]], [[0]], [[1]], [[1],[-3/2,-2]], [[1]]]
-----------------------------
found: [[0]]
