postfix=[2, n, *, a(, n, a), *, 23, -., n, *, 36, +, a(, n, 1, -, a), *, +, 6, 2, -., n, *, 3, +, *, a(, n, 2, -, a), *, +]
postfix[0] = "2"
postfix[1] = "n"
postfix[2] = "*"
postfix[3] = "a("
start=0, ipfix=3, equalFactor=1, signFactor=1, coeffPoly= 2*n
postfix[4] = "n"
postfix[5] = "a)"
start=4, ipfix=5, indexPoly= n
postfix[7] = "23"
postfix[8] = "-."
postfix[9] = "n"
postfix[10] = "*"
postfix[11] = "36"
postfix[12] = "+"
postfix[13] = "a("
start=7, ipfix=13, equalFactor=1, signFactor=1, coeffPoly=  - 23*n + 36
postfix[14] = "n"
postfix[15] = "1"
postfix[16] = "-"
postfix[17] = "a)"
start=14, ipfix=17, indexPoly= n - 1
postfix[20] = "6"
postfix[21] = "2"
postfix[22] = "-."
postfix[23] = "n"
postfix[24] = "*"
postfix[25] = "3"
postfix[26] = "+"
postfix[27] = "*"
postfix[28] = "a("
start=20, ipfix=28, equalFactor=1, signFactor=1, coeffPoly=  - 12*n + 18
postfix[29] = "n"
postfix[30] = "2"
postfix[31] = "-"
postfix[32] = "a)"
start=29, ipfix=32, indexPoly= n - 2
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
