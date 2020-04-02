postfix=[a(, n, a), n, a(, n, 1, -, a), *, -, n, 1, -, a(, n, 2, -, a), *, +, n, 1, -, n, 2, -, *, a(, n, 3, -, a), *, -]
postfix[0] = "a("
start=0, ipfix=0, equalFactor=1, signFactor=1, coeffPoly= 1
postfix[1] = "n"
postfix[2] = "a)"
start=1, ipfix=2, indexPoly= n
postfix[3] = "n"
postfix[4] = "a("
start=3, ipfix=4, equalFactor=1, signFactor=1, coeffPoly= n
postfix[5] = "n"
postfix[6] = "1"
postfix[7] = "-"
postfix[8] = "a)"
start=5, ipfix=8, indexPoly= n - 1
postfix[11] = "n"
postfix[12] = "1"
postfix[13] = "-"
postfix[14] = "a("
start=11, ipfix=14, equalFactor=1, signFactor=-1, coeffPoly= n - 1
postfix[15] = "n"
postfix[16] = "2"
postfix[17] = "-"
postfix[18] = "a)"
start=15, ipfix=18, indexPoly= n - 2
postfix[21] = "n"
postfix[22] = "1"
postfix[23] = "-"
postfix[24] = "n"
postfix[25] = "2"
postfix[26] = "-"
postfix[27] = "*"
postfix[28] = "a("
start=21, ipfix=28, equalFactor=1, signFactor=1, coeffPoly=  - 3*n + n^2 + 2
postfix[29] = "n"
postfix[30] = "3"
postfix[31] = "-"
postfix[32] = "a)"
start=29, ipfix=32, indexPoly= n - 3
parseRecurrence: a(n)-n*a(n-1)+(n-1)*a(n-2)-(n-1)*(n-2)*a(n-3)
a(-3):  - 3*n + n^2 + 2
a(-2):  - n + 1
a(-1): n
a(0): 1
result=[[0],[0],[0],[0],[0]]
ires=1, result=[[0],[0],[0],[0],[0]]
key=-3, ires=1, result=[[0],[0],[0],[0],[0]]
key=-2, ires=2, result=[[0],[2,-3,1],[0],[0],[0]]
key=-1, ires=3, result=[[0],[2,-3,1],[1,-1],[0],[0]]
key=0, ires=4, result=[[0],[2,-3,1],[1,-1],[0,1],[0]]
result= [[0],[2,-3,1],[1,-1],[0,1],[1]]
