irow=1, trimIndexNew=15, vect=[4,12,20,28,36,44,52,60,68,76,84,92,100,108,116,124,0]
irow=2, trimIndexNew=14, vect=[8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,0]
irow=3, trimIndexNew=-1, vect=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
getDiffLeads=[[],[-1,4,8,0]]
icef=0, jcef=2, nexp=2, coeffs = [-1,4,8]
coeffs = [-1,4,4]
polys=-1+4*(n-0)+4*(n-0)*(n-1)
A000466	polint	0	n -> Z.valueOf(n).multiply(4).multiply(n).add(-1)	[]	[-1,0,4]
irow=1, trimIndexNew=14, vect=[0,1,5,14,30,55,91,140,204,285,385,506,650,819,1015,0]
irow=2, trimIndexNew=13, vect=[1,4,9,16,25,36,49,64,81,100,121,144,169,196,0]
irow=3, trimIndexNew=12, vect=[3,5,7,9,11,13,15,17,19,21,23,25,27,0]
irow=4, trimIndexNew=11, vect=[2,2,2,2,2,2,2,2,2,2,2,2,0]
irow=5, trimIndexNew=-1, vect=[0,0,0,0,0,0,0,0,0,0,0,0]
getDiffLeads=[[],[0,0,1,3,2,0]]
icef=2, jcef=4, nexp=2, coeffs = [0,0,1,3,2]
icef=1, jcef=3, nexp=2, coeffs = [0,0,1,3,1]
icef=1, jcef=4, nexp=3, coeffs = [0,0,1,3/2,1]
icef=0, jcef=2, nexp=2, coeffs = [0,0,1,3/2,1/3]
icef=0, jcef=3, nexp=3, coeffs = [0,0,1/2,3/2,1/3]
icef=0, jcef=4, nexp=4, coeffs = [0,0,1/2,1/2,1/3]
coeffs = [0,0,1/2,1/2,1/12]
polys=+0+0*(n-0)+1/2*(n-0)*(n-1)+1/2*(n-0)*(n-1)*(n-2)+1/12*(n-0)*(n-1)*(n-2)*(n-3)
A002415	polint	0	n -> Z.valueOf(n).multiply(n).add(-1).multiply(n).multiply(n).divide(12)	[]	[0,0,-1,0,1]/12	0
irow=1, trimIndexNew=13, vect=[19,25,31,37,43,49,55,61,67,73,79,85,91,97,0]
irow=2, trimIndexNew=12, vect=[6,6,6,6,6,6,6,6,6,6,6,6,6,0]
irow=3, trimIndexNew=-1, vect=[0,0,0,0,0,0,0,0,0,0,0,0,0]
getDiffLeads=[[],[16,19,6,0]]
icef=0, jcef=2, nexp=2, coeffs = [16,19,6]
coeffs = [16,19,3]
polys=+16+19*(n-0-1)+3*(n-0-1)*(n-1-1)
A337024	polint	1	n -> Z.valueOf(n).multiply(3).add(10).multiply(n).add(3)	[]	[3,10,3]	+30	0
irow=1, trimIndexNew=6, vect=[176,400,744,1232,1888,2736,3800,0]
irow=2, trimIndexNew=5, vect=[224,344,488,656,848,1064,0]
irow=3, trimIndexNew=4, vect=[120,144,168,192,216,0]
irow=4, trimIndexNew=3, vect=[24,24,24,24,0]
irow=5, trimIndexNew=-1, vect=[0,0,0,0]
getDiffLeads=[[],[28,176,224,120,24,0]]
icef=2, jcef=4, nexp=2, coeffs = [0,0,224,120,24]
icef=1, jcef=3, nexp=2, coeffs = [0,176,224,120,12]
icef=1, jcef=4, nexp=3, coeffs = [0,176,224,60,12]
icef=0, jcef=2, nexp=2, coeffs = [28,176,224,60,4]
icef=0, jcef=3, nexp=3, coeffs = [28,176,112,60,4]
icef=0, jcef=4, nexp=4, coeffs = [28,176,112,20,4]
coeffs = [28,176,112,20,1]
polys=+28+176*(n-0)+112*(n-0)*(n-1)+20*(n-0)*(n-1)*(n-2)+1*(n-0)*(n-1)*(n-2)*(n-3)
2023-11-12T20:39:12.567+0100 ERROR Index 5 out of bounds for length 5
java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
	at org.teherba.ramath.sequence.JoeisPreparer.processRecord(JoeisPreparer.java:375) ~[ramath.jar:?]
	at org.teherba.ramath.sequence.JoeisPreparer.processFile(JoeisPreparer.java:492) [ramath.jar:?]
	at org.teherba.ramath.sequence.JoeisPreparer.main(JoeisPreparer.java:540) [ramath.jar:?]
	at jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method) ~[?:?]
	at jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62) ~[?:?]
	at jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43) ~[?:?]
	at java.lang.reflect.Method.invoke(Method.java:566) ~[?:?]
	at org.teherba.common.RegressionTester.runTests(RegressionTester.java:631) [ramath.jar:?]
	at org.teherba.common.RegressionTester.main(RegressionTester.java:734) [ramath.jar:?]
