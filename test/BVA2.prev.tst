postfix=[2, n, *, a(, n, a), *, 0, 23, n, *, -, 36, +, a(, n, 1, -, a), *, +, 6, 0, 2, n, *, -, 3, +, *, a(, n, 2, -, a), *, +]
postfix[0] = "2"
postfix[1] = "n"
postfix[2] = "*"
postfix[3] = "a("
start=0, ipfix=3, equalFactor=1, signFactor=1, coeffPoly= 2*n
postfix[4] = "n"
postfix[5] = "a)"
start=4, ipfix=5, indexPoly= n
postfix[7] = "0"
postfix[8] = "23"
postfix[9] = "n"
postfix[10] = "*"
postfix[11] = "-"
postfix[12] = "36"
postfix[13] = "+"
postfix[14] = "a("
start=7, ipfix=14, equalFactor=1, signFactor=1, coeffPoly=  - 23*n + 36
postfix[15] = "n"
postfix[16] = "1"
postfix[17] = "-"
postfix[18] = "a)"
start=15, ipfix=18, indexPoly= n - 1
postfix[21] = "6"
postfix[22] = "0"
postfix[23] = "2"
postfix[24] = "n"
postfix[25] = "*"
postfix[26] = "-"
postfix[27] = "3"
postfix[28] = "+"
postfix[29] = "*"
postfix[30] = "a("
start=21, ipfix=30, equalFactor=1, signFactor=1, coeffPoly=  - 12*n + 18
postfix[31] = "n"
postfix[32] = "2"
postfix[33] = "-"
postfix[34] = "a)"
start=31, ipfix=34, indexPoly= n - 2
parseRecurrence: 2*n*a(n)+(-23*n+36)*a(n-1)+6*(-2*n+3)*a(n-2)
a(-2):  - 12*n + 18
a(-1):  - 23*n + 36
a(0): 2*n
result=[[0],[0],[0],[0]]
ires=1, result=[[0],[0],[0],[0]]
key=-2, ires=1, result=[[0],[0],[0],[0]]
key=-1, ires=2, result=[[0],[18,-12],[0],[0]]
key=0, ires=3, result=[[0],[18,-12],[36,-23],[0]]
result= [[0],[18,-12],[36,-23],[0,2]]
