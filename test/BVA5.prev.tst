postfix=[a(, n, a), 2, -., n, *, 1, +, a(, n, 1, -, a), *, +, 2, n, -., 1, +, *, a(, n, 2, -, a), *, +]
postfix[0] = "a("
start=0, ipfix=0, equalFactor=1, signFactor=1, coeffPoly= 1
postfix[1] = "n"
postfix[2] = "a)"
start=1, ipfix=2, indexPoly= n
postfix[3] = "2"
postfix[4] = "-."
postfix[5] = "n"
postfix[6] = "*"
postfix[7] = "1"
postfix[8] = "+"
postfix[9] = "a("
start=3, ipfix=9, equalFactor=1, signFactor=1, coeffPoly=  - 2*n + 1
postfix[10] = "n"
postfix[11] = "1"
postfix[12] = "-"
postfix[13] = "a)"
start=10, ipfix=13, indexPoly= n - 1
postfix[16] = "2"
postfix[17] = "n"
postfix[18] = "-."
postfix[19] = "1"
postfix[20] = "+"
postfix[21] = "*"
postfix[22] = "a("
start=16, ipfix=22, equalFactor=1, signFactor=1, coeffPoly=  - 2*n + 2
postfix[23] = "n"
postfix[24] = "2"
postfix[25] = "-"
postfix[26] = "a)"
start=23, ipfix=26, indexPoly= n - 2
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
