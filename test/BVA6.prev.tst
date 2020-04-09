postfix=[0, 1, -, n, 5, +, *, n, 4, -, *, a(, n, a), *, 2, n, *, 2, n, *, 1, -, *, a(, n, 1, -, a), *, +]
postfix[0] = "0"
postfix[1] = "1"
postfix[2] = "-"
postfix[3] = "n"
postfix[4] = "5"
postfix[5] = "+"
postfix[6] = "*"
postfix[7] = "n"
postfix[8] = "4"
postfix[9] = "-"
postfix[10] = "*"
postfix[11] = "a("
start=0, ipfix=11, equalFactor=1, signFactor=1, coeffPoly=  - n - n^2 + 20
postfix[12] = "n"
postfix[13] = "a)"
start=12, ipfix=13, indexPoly= n
postfix[15] = "2"
postfix[16] = "n"
postfix[17] = "*"
postfix[18] = "2"
postfix[19] = "n"
postfix[20] = "*"
postfix[21] = "1"
postfix[22] = "-"
postfix[23] = "*"
postfix[24] = "a("
start=15, ipfix=24, equalFactor=1, signFactor=1, coeffPoly=  - 2*n + 4*n^2
postfix[25] = "n"
postfix[26] = "1"
postfix[27] = "-"
postfix[28] = "a)"
start=25, ipfix=28, indexPoly= n - 1
parseRecurrence: (0-1)*(n+5)*(n-4)*a(n)+2*n*(2*n-1)*a(n-1)
a(-1):  - 2*n + 4*n^2
a(0):  - n - n^2 + 20
result=[[0],[0],[0]]
ires=1, result=[[0],[0],[0]]
key=-1, ires=1, result=[[0],[0],[0]]
key=0, ires=2, result=[[0],[0,-2,4],[0]]
result= [[0],[0,-2,4],[20,-1,-1]]
