postfix=[2, n, *, a(, n, a), *, 23, n, *, 36, -, a(, n, 1, -, a), *, 6, 0, 2, n, *, -, 3, +, *, a(, n, 2, -, a), *, -, =]
postfix[0] = "2"
postfix[1] = "n"
postfix[2] = "*"
postfix[3] = "a("
start=0, ipfix=3, equalFactor=1, signFactor=1, coeffPoly= 2*n
postfix[4] = "n"
postfix[5] = "a)"
start=4, ipfix=5, indexPoly= n
postfix[7] = "23"
postfix[8] = "n"
postfix[9] = "*"
postfix[10] = "36"
postfix[11] = "-"
postfix[12] = "a("
start=7, ipfix=12, equalFactor=1, signFactor=1, coeffPoly= 23*n - 36
postfix[13] = "n"
postfix[14] = "1"
postfix[15] = "-"
postfix[16] = "a)"
start=13, ipfix=16, indexPoly= n - 1
postfix[18] = "6"
postfix[19] = "0"
postfix[20] = "2"
postfix[21] = "n"
postfix[22] = "*"
postfix[23] = "-"
postfix[24] = "3"
postfix[25] = "+"
postfix[26] = "*"
postfix[27] = "a("
start=18, ipfix=27, equalFactor=1, signFactor=1, coeffPoly=  - 12*n + 18
postfix[28] = "n"
postfix[29] = "2"
postfix[30] = "-"
postfix[31] = "a)"
start=28, ipfix=31, indexPoly= n - 2
postfix[34] = "="
** parseRecurrence: "=" at the end only
parseRecurrence: 2*n*a(n)=(23*n-36)*a(n-1)-6*(-2*n+3)*a(n-2)
a(-2):  - 12*n + 18
a(-1): 23*n - 36
a(0): 2*n
result=[[0],[0],[0],[0]]
ires=1, result=[[0],[0],[0],[0]]
key=-2, ires=1, result=[[0],[0],[0],[0]]
key=-1, ires=2, result=[[0],[18,-12],[0],[0]]
key=0, ires=3, result=[[0],[18,-12],[-36,23],[0]]
result= [[0],[18,-12],[-36,23],[0,2]]
