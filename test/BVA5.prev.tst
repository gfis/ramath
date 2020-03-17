postfix=[a(), n, funct, 0, 2, n, *, -, 1, +, a(), n, 1, -, funct, *, +, 2, 0, n, -, 1, +, *, a(), n, 2, -, funct, *, +]
postfix[0] = "a()"
start=0, ipfix=0, equalFactor=1, signFactor=1, coeffPoly= 1
postfix[1] = "n"
postfix[2] = "funct"
start=1, ipfix=2, indexPoly= n
postfix[3] = "0"
postfix[4] = "2"
postfix[5] = "n"
postfix[6] = "*"
postfix[7] = "-"
postfix[8] = "1"
postfix[9] = "+"
postfix[10] = "a()"
start=3, ipfix=10, equalFactor=1, signFactor=1, coeffPoly=  - 2*n + 1
postfix[11] = "n"
postfix[12] = "1"
postfix[13] = "-"
postfix[14] = "funct"
start=11, ipfix=14, indexPoly= n - 1
postfix[17] = "2"
postfix[18] = "0"
postfix[19] = "n"
postfix[20] = "-"
postfix[21] = "1"
postfix[22] = "+"
postfix[23] = "*"
postfix[24] = "a()"
start=17, ipfix=24, equalFactor=1, signFactor=1, coeffPoly=  - 2*n + 2
postfix[25] = "n"
postfix[26] = "2"
postfix[27] = "-"
postfix[28] = "funct"
start=25, ipfix=28, indexPoly= n - 2
parseRecurrence: a(n)+(-2*n+1)*a(n-1)+2*(-n+1)*a(n-2)
a(-2):  - 2*n + 2
a(-1):  - 2*n + 1
a(0): 1
result=[[0],[0],[0],[0]]
ires=1, result=[[0],[0],[0],[0]]
key=-2, ires=1, result=[[0],[0],[0],[0]]
key=-1, ires=2, result=[[0],[2,-2],[0],[0]]
key=0, ires=3, result=[[0],[2,-2],[1,-2],[0]]
result= [[0],[2,-2],[1,-2],[1]]
