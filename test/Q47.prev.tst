BigInteger divide by zero
java.lang.ArithmeticException: BigInteger divide by zero
	at java.math.MutableBigInteger.divide(Unknown Source)
	at java.math.BigInteger.divideAndRemainder(Unknown Source)
	at org.teherba.ramath.symbolic.Polynomial.isMappableTo(Polynomial.java:1444)
	at org.teherba.ramath.symbolic.Polynomial.similiarity(Polynomial.java:1566)
	at org.teherba.ramath.symbolic.RelationSet.similiarity(RelationSet.java:423)
	at org.teherba.ramath.symbolic.solver.QueuingSolver.findSimiliar(QueuingSolver.java:112)
	at org.teherba.ramath.symbolic.solver.QueuingSolver.expand(QueuingSolver.java:195)
	at org.teherba.ramath.symbolic.solver.BaseSolver.solve(BaseSolver.java:298)
	at org.teherba.ramath.symbolic.solver.QueuingSolver.main(QueuingSolver.java:234)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)
	at java.lang.reflect.Method.invoke(Unknown Source)
	at org.teherba.common.RegressionTester.runTests(RegressionTester.java:479)
	at org.teherba.common.RegressionTester.main(RegressionTester.java:567)
BigInteger divide by zero
java.lang.ArithmeticException: BigInteger divide by zero
	at java.math.MutableBigInteger.divide(Unknown Source)
	at java.math.BigInteger.divideAndRemainder(Unknown Source)
	at org.teherba.ramath.symbolic.Polynomial.isMappableTo(Polynomial.java:1444)
	at org.teherba.ramath.symbolic.Polynomial.similiarity(Polynomial.java:1566)
	at org.teherba.ramath.symbolic.RelationSet.similiarity(RelationSet.java:423)
	at org.teherba.ramath.symbolic.solver.QueuingSolver.findSimiliar(QueuingSolver.java:112)
	at org.teherba.ramath.symbolic.solver.QueuingSolver.expand(QueuingSolver.java:195)
	at org.teherba.ramath.symbolic.solver.BaseSolver.solve(BaseSolver.java:298)
	at org.teherba.ramath.symbolic.solver.QueuingSolver.main(QueuingSolver.java:234)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)
	at java.lang.reflect.Method.invoke(Unknown Source)
	at org.teherba.common.RegressionTester.runTests(RegressionTester.java:479)
	at org.teherba.common.RegressionTester.main(RegressionTester.java:567)
BigInteger divide by zero
java.lang.ArithmeticException: BigInteger divide by zero
	at java.math.MutableBigInteger.divide(Unknown Source)
	at java.math.BigInteger.divideAndRemainder(Unknown Source)
	at org.teherba.ramath.symbolic.Polynomial.isMappableTo(Polynomial.java:1444)
	at org.teherba.ramath.symbolic.Polynomial.similiarity(Polynomial.java:1566)
	at org.teherba.ramath.symbolic.RelationSet.similiarity(RelationSet.java:423)
	at org.teherba.ramath.symbolic.solver.QueuingSolver.findSimiliar(QueuingSolver.java:112)
	at org.teherba.ramath.symbolic.solver.QueuingSolver.expand(QueuingSolver.java:195)
	at org.teherba.ramath.symbolic.solver.BaseSolver.solve(BaseSolver.java:298)
	at org.teherba.ramath.symbolic.solver.QueuingSolver.main(QueuingSolver.java:234)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)
	at java.lang.reflect.Method.invoke(Unknown Source)
	at org.teherba.common.RegressionTester.runTests(RegressionTester.java:479)
	at org.teherba.common.RegressionTester.main(RegressionTester.java:567)
Expanding for base 2, transposables =    0   1   2

expanding queue[0]: 1 + 4*a + 6*a^2 + 4*a^3 + a^4 - 4*a^3*c - 12*a^2*b*c - 12*a*b^2*c - 4*b^3*c - 6*a^2*c^2 - 12*a*b*c^2 - 6*b^2*c^2 - 4*a*c^3 - 4*b*c^3 - c^4 = 0 modulo [2,2,2] *2
[0+2*a,0+2*b,0+2*c]: failure constant=1, vgcd=8
[1+2*a,0+2*b,0+2*c]: unknown 16+64*a+96*a^2+64*a^3+16*a^4-8*c-48*a*c-96*a^2*c-64*a^3*c-48*b*c-192*a*b*c-192*a^2*b*c-96*b^2*c-192*a*b^2*c-64*b^3*c-24*c^2-96*a*c^2-96*a^2*c^2-96*b*c^2-192*a*b*c^2-96*b^2*c^2-32*c^3-64*a*c^3-64*b*c^3-16*c^4=0 -> [1]
[0+2*a,1+2*b,0+2*c]: failure constant=1, vgcd=8
[1+2*a,1+2*b,0+2*c]: similiar to [1], is mappable to: {a=>a}  16+64*a+96*a^2+64*a^3+16*a^4-64*c-192*a*c-192*a^2*c-64*a^3*c-192*b*c-384*a*b*c-192*a^2*b*c-192*b^2*c-192*a*b^2*c-64*b^3*c-96*c^2-192*a*c^2-96*a^2*c^2-192*b*c^2-192*a*b*c^2-96*b^2*c^2-64*c^3-64*a*c^3-64*b*c^3-16*c^4=0
[0+2*a,0+2*b,1+2*c]: success [0,0,1],trivial(3)  16*a^4-8*b-48*a*b-96*a^2*b-24*b^2-96*a*b^2-32*b^3-8*c-48*a*c-96*a^2*c-64*a^3*c-48*b*c-192*a*b*c-192*a^2*b*c-96*b^2*c-192*a*b^2*c-64*b^3*c-24*c^2-96*a*c^2-96*a^2*c^2-96*b*c^2-192*a*b*c^2-96*b^2*c^2-32*c^3-64*a*c^3-64*b*c^3-16*c^4=0 -> [2]
[1+2*a,0+2*b,1+2*c]: failure constant=1, vgcd=8
[0+2*a,1+2*b,1+2*c]: failure constant=-14, vgcd=8
[1+2*a,1+2*b,1+2*c]: failure constant=-49, vgcd=8

expanding queue[1]: 16 + 64*a + 96*a^2 + 64*a^3 + 16*a^4 - 8*c - 48*a*c - 96*a^2*c - 64*a^3*c - 48*b*c - 192*a*b*c - 192*a^2*b*c - 96*b^2*c - 192*a*b^2*c - 64*b^3*c - 24*c^2 - 96*a*c^2 - 96*a^2*c^2 - 96*b*c^2 - 192*a*b*c^2 - 96*b^2*c^2 - 32*c^3 - 64*a*c^3 - 64*b*c^3 - 16*c^4 = 0 modulo [2,2,2] *4
[1+4*a,0+4*b,0+4*c]: unknown 16+128*a+384*a^2+512*a^3+256*a^4-16*c-192*a*c-768*a^2*c-1024*a^3*c-192*b*c-1536*a*b*c-3072*a^2*b*c-768*b^2*c-3072*a*b^2*c-1024*b^3*c-96*c^2-768*a*c^2-1536*a^2*c^2-768*b*c^2-3072*a*b*c^2-1536*b^2*c^2-256*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [3]
[3+4*a,0+4*b,0+4*c]: unknown 256+1024*a+1536*a^2+1024*a^3+256*a^4-432*c-1728*a*c-2304*a^2*c-1024*a^3*c-1728*b*c-4608*a*b*c-3072*a^2*b*c-2304*b^2*c-3072*a*b^2*c-1024*b^3*c-864*c^2-2304*a*c^2-1536*a^2*c^2-2304*b*c^2-3072*a*b*c^2-1536*b^2*c^2-768*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [4]
[1+4*a,2+4*b,0+4*c]: similiar to [3], is mappable to: {a=>a}  16+128*a+384*a^2+512*a^3+256*a^4-432*c-1728*a*c-2304*a^2*c-1024*a^3*c-1728*b*c-4608*a*b*c-3072*a^2*b*c-2304*b^2*c-3072*a*b^2*c-1024*b^3*c-864*c^2-2304*a*c^2-1536*a^2*c^2-2304*b*c^2-3072*a*b*c^2-1536*b^2*c^2-768*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0
[3+4*a,2+4*b,0+4*c]: similiar to [4], is mappable to: {a=>a}  256+1024*a+1536*a^2+1024*a^3+256*a^4-2000*c-4800*a*c-3840*a^2*c-1024*a^3*c-4800*b*c-7680*a*b*c-3072*a^2*b*c-3840*b^2*c-3072*a*b^2*c-1024*b^3*c-2400*c^2-3840*a*c^2-1536*a^2*c^2-3840*b*c^2-3072*a*b*c^2-1536*b^2*c^2-1280*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0
[1+4*a,0+4*b,2+4*c]: unknown -64-288*a-384*a^2+256*a^4-416*b-1536*a*b-1536*a^2*b-768*b^2-1536*a*b^2-512*b^3-432*c-1728*a*c-2304*a^2*c-1024*a^3*c-1728*b*c-4608*a*b*c-3072*a^2*b*c-2304*b^2*c-3072*a*b^2*c-1024*b^3*c-864*c^2-2304*a*c^2-1536*a^2*c^2-2304*b*c^2-3072*a*b*c^2-1536*b^2*c^2-768*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [5]
[3+4*a,0+4*b,2+4*c]: unknown -288-544*a+512*a^3+256*a^4-1568*b-3072*a*b-1536*a^2*b-1536*b^2-1536*a*b^2-512*b^3-2000*c-4800*a*c-3840*a^2*c-1024*a^3*c-4800*b*c-7680*a*b*c-3072*a^2*b*c-3840*b^2*c-3072*a*b^2*c-1024*b^3*c-2400*c^2-3840*a*c^2-1536*a^2*c^2-3840*b*c^2-3072*a*b*c^2-1536*b^2*c^2-1280*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [6]
[1+4*a,2+4*b,2+4*c]: unknown -528-1440*a-1152*a^2+256*a^4-1568*b-3072*a*b-1536*a^2*b-1536*b^2-1536*a*b^2-512*b^3-2000*c-4800*a*c-3840*a^2*c-1024*a^3*c-4800*b*c-7680*a*b*c-3072*a^2*b*c-3840*b^2*c-3072*a*b^2*c-1024*b^3*c-2400*c^2-3840*a*c^2-1536*a^2*c^2-3840*b*c^2-3072*a*b*c^2-1536*b^2*c^2-1280*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [7]
[3+4*a,2+4*b,2+4*c]: unknown -1520-2464*a-768*a^2+512*a^3+256*a^4-3488*b-4608*a*b-1536*a^2*b-2304*b^2-1536*a*b^2-512*b^3-5488*c-9408*a*c-5376*a^2*c-1024*a^3*c-9408*b*c-10752*a*b*c-3072*a^2*b*c-5376*b^2*c-3072*a*b^2*c-1024*b^3*c-4704*c^2-5376*a*c^2-1536*a^2*c^2-5376*b*c^2-3072*a*b*c^2-1536*b^2*c^2-1792*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [8]

expanding queue[2]: 16*a^4 - 8*b - 48*a*b - 96*a^2*b - 24*b^2 - 96*a*b^2 - 32*b^3 - 8*c - 48*a*c - 96*a^2*c - 64*a^3*c - 48*b*c - 192*a*b*c - 192*a^2*b*c - 96*b^2*c - 192*a*b^2*c - 64*b^3*c - 24*c^2 - 96*a*c^2 - 96*a^2*c^2 - 96*b*c^2 - 192*a*b*c^2 - 96*b^2*c^2 - 32*c^3 - 64*a*c^3 - 64*b*c^3 - 16*c^4 = 0 modulo [2,2,2] *4
[0+4*a,0+4*b,1+4*c]: success [0,0,1],trivial(3)  256*a^4-16*b-192*a*b-768*a^2*b-96*b^2-768*a*b^2-256*b^3-16*c-192*a*c-768*a^2*c-1024*a^3*c-192*b*c-1536*a*b*c-3072*a^2*b*c-768*b^2*c-3072*a*b^2*c-1024*b^3*c-96*c^2-768*a*c^2-1536*a^2*c^2-768*b*c^2-3072*a*b*c^2-1536*b^2*c^2-256*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [9]
[2+4*a,0+4*b,1+4*c]: unknown 16+128*a+384*a^2+512*a^3+256*a^4-304*b-960*a*b-768*a^2*b-480*b^2-768*a*b^2-256*b^3-432*c-1728*a*c-2304*a^2*c-1024*a^3*c-1728*b*c-4608*a*b*c-3072*a^2*b*c-2304*b^2*c-3072*a*b^2*c-1024*b^3*c-864*c^2-2304*a*c^2-1536*a^2*c^2-2304*b*c^2-3072*a*b*c^2-1536*b^2*c^2-768*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [10]
[0+4*a,2+4*b,1+4*c]: unknown -64-288*a-384*a^2+256*a^4-304*b-960*a*b-768*a^2*b-480*b^2-768*a*b^2-256*b^3-432*c-1728*a*c-2304*a^2*c-1024*a^3*c-1728*b*c-4608*a*b*c-3072*a^2*b*c-2304*b^2*c-3072*a*b^2*c-1024*b^3*c-864*c^2-2304*a*c^2-1536*a^2*c^2-2304*b*c^2-3072*a*b*c^2-1536*b^2*c^2-768*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [11]
[2+4*a,2+4*b,1+4*c]: unknown -288-544*a+512*a^3+256*a^4-976*b-1728*a*b-768*a^2*b-864*b^2-768*a*b^2-256*b^3-2000*c-4800*a*c-3840*a^2*c-1024*a^3*c-4800*b*c-7680*a*b*c-3072*a^2*b*c-3840*b^2*c-3072*a*b^2*c-1024*b^3*c-2400*c^2-3840*a*c^2-1536*a^2*c^2-3840*b*c^2-3072*a*b*c^2-1536*b^2*c^2-1280*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [12]
[0+4*a,0+4*b,3+4*c]: unknown -80-416*a-768*a^2-512*a^3+256*a^4-432*b-1728*a*b-2304*a^2*b-864*b^2-2304*a*b^2-768*b^3-432*c-1728*a*c-2304*a^2*c-1024*a^3*c-1728*b*c-4608*a*b*c-3072*a^2*b*c-2304*b^2*c-3072*a*b^2*c-1024*b^3*c-864*c^2-2304*a*c^2-1536*a^2*c^2-2304*b*c^2-3072*a*b*c^2-1536*b^2*c^2-768*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [13]
[2+4*a,0+4*b,3+4*c]: unknown -528-1440*a-1152*a^2+256*a^4-1872*b-4032*a*b-2304*a^2*b-2016*b^2-2304*a*b^2-768*b^3-2000*c-4800*a*c-3840*a^2*c-1024*a^3*c-4800*b*c-7680*a*b*c-3072*a^2*b*c-3840*b^2*c-3072*a*b^2*c-1024*b^3*c-2400*c^2-3840*a*c^2-1536*a^2*c^2-3840*b*c^2-3072*a*b*c^2-1536*b^2*c^2-1280*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [14]
[0+4*a,2+4*b,3+4*c]: unknown -608-1856*a-1920*a^2-512*a^3+256*a^4-1872*b-4032*a*b-2304*a^2*b-2016*b^2-2304*a*b^2-768*b^3-2000*c-4800*a*c-3840*a^2*c-1024*a^3*c-4800*b*c-7680*a*b*c-3072*a^2*b*c-3840*b^2*c-3072*a*b^2*c-1024*b^3*c-2400*c^2-3840*a*c^2-1536*a^2*c^2-3840*b*c^2-3072*a*b*c^2-1536*b^2*c^2-1280*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [15]
[2+4*a,2+4*b,3+4*c]: unknown -2064-4032*a-2304*a^2+256*a^4-4464*b-6336*a*b-2304*a^2*b-3168*b^2-2304*a*b^2-768*b^3-5488*c-9408*a*c-5376*a^2*c-1024*a^3*c-9408*b*c-10752*a*b*c-3072*a^2*b*c-5376*b^2*c-3072*a*b^2*c-1024*b^3*c-4704*c^2-5376*a*c^2-1536*a^2*c^2-5376*b*c^2-3072*a*b*c^2-1536*b^2*c^2-1792*c^3-1024*a*c^3-1024*b*c^3-256*c^4=0 -> [16]
Maximum level 1 reached, queue size = 17
