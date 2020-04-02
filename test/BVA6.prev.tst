postfix=[0, n, 5, +, n, 4, -, *, a(, n, a), *, -, 2, n, *, 2, n, *, 1, -, *, a(, n, 1, -, a), *, +]
postfix[0] = "0"
postfix[1] = "n"
postfix[2] = "5"
postfix[3] = "+"
postfix[4] = "n"
postfix[5] = "4"
postfix[6] = "-"
postfix[7] = "*"
postfix[8] = "a("
start=0, ipfix=8, equalFactor=1, signFactor=1, coeffPoly= null
postfix[9] = "n"
postfix[10] = "a)"
start=9, ipfix=10, indexPoly= n
postfix[13] = "2"
postfix[14] = "n"
postfix[15] = "*"
postfix[16] = "2"
postfix[17] = "n"
postfix[18] = "*"
postfix[19] = "1"
postfix[20] = "-"
postfix[21] = "*"
postfix[22] = "a("
start=13, ipfix=22, equalFactor=1, signFactor=-1, coeffPoly=  - 2*n + 4*n^2
postfix[23] = "n"
postfix[24] = "1"
postfix[25] = "-"
postfix[26] = "a)"
start=23, ipfix=26, indexPoly= n - 1
parseRecurrence: -(n+5)*(n-4)*a(n)+2*n*(2*n-1)*a(n-1)
a(-1): 2*n - 4*n^2
a(0): null
result=[[0],[0],[0]]
ires=1, result=[[0],[0],[0]]
key=-1, ires=1, result=[[0],[0],[0]]
key=0, ires=2, result=[[0],[0,2,-4],[0]]
