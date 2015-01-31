/*!/usr/bin/perl */

/*------------------------------------------------------------------  */
/* Iterate through parameter coefficients of a^3 + b^3 + c^2 = d^3 */
/* @(#) Id: cubic5.pl 170 2009-06-18 06:43:42Z gfis  */
/* 2009-06-12: x4...x0 for Vieta */
/* 2009-06-10, Georg Fischer: copied from parm2.pl */
/* Usage:  */
/*   perl parm3.pl limit */
/*------------------------------------------------------------------  */
/* */
/*  Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom> */
/*  */
/*  Licensed under the Apache License, Version 2.0 (the "License"); */
/*  you may not use this file except in compliance with the License. */
/*  You may obtain a copy of the License at */
/*  */
/*       http://www.apache.org/licenses/LICENSE-2.0 */
/*  */
/*  Unless required by applicable law or agreed to in writing, software */
/*  distributed under the License is distributed on an "AS IS" BASIS, */
/*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. */
/*  See the License for the specific language governing permissions and */
/*  limitations under the License. */
/* */
#include <stdio.h>
#include <string.h>

	int limit; /* iterate up to -/+limit */
	int dummy;
	int alimit; /* abs(limit) */
	int imax; /* index of last valid parameter/coefficient */
	int count;
	int k; /* exponent */
	int oldt;
	int w0;
	int w1;
	int w2;
	int w3;
	int w4;
	int x0;
	int x1;
	int x2;
	int x3;
	int x4;
	int y0;
	int y1;
	int y2;
	int y3;
	int y4;
	int z0;
	int z1;
	int z2;
	int z3;
	int z4;
	/* coefficients of n**i for z polynom */
	int coeff12;
	int coeff11;
	int coeff10;
	int coeff09;
	int coeff08;
	int coeff07; 
	int coeff06;
	int coeff05;
	int coeff04;
	int coeff03;
	int coeff02;
	int coeff01;
	int coeff00; 
	int d3z4z4;
	int d3z3z3;
	int d3z2z2;
	int d3z1z1;
	int d3z0z0;
	int ipw;
	int ipw3; /* ipw**3 */
	/* for test(): */
	int n;
	int show;
	int a;
	int b;
	int c;
	int d;
	int sa;
	int sb;
	int sc;
	int sd;
	int newt;
	int dt;
	int noroot;
#define MAX_ROOT 32767
	int qroot [MAX_ROOT];
	char found[1024];
	char temp [256];

int main(int argc, char *argv[]) {
	k = 3;
	imax = 4;
	count = 0;
	limit = 2;
	sscanf(argv[0], "%d", &limit);
	limit = - (limit + 1);
	alimit = abs(limit);
	noroot = 0xffffff;
	oldt = time(); 

	if (1) {
		w0 =  0; w1 = -2; w2 =  0; w3 =  0; w4 =  1;
		x0 = -1; x1 =  0; x2 =  0; x3 =  2; x4 =  0;
		y0 =  1; y1 =  0; y2 =  0; y3 =  1; y4 =  0;
		z0 =  0; z1 =  1; z2 =  0; z3 =  0; z4 =  1;
		printf("test Vieta=%d\n", test()); 
	} 
	
	for (ipw = 0; ipw < MAX_ROOT; ipw ++) {
		qroot[ipw] = noroot;
	}
	ipw = 0; 
	ipw3 = ipw*ipw*ipw;
	while (ipw3 < MAX_ROOT) {
		qroot[ipw3] = ipw;
		ipw ++;
		ipw3 = ipw*ipw*ipw;
	} /* while ipw */

	/* iterate through x and y, compute z and check for a^3 + b^3 + c^3 = d^3 */
	w4 = 0; while (abs(w4) < alimit) {
	x4 = 0; while (abs(x4) < alimit) {
		/* without loosing generality, w runs on positive numbers only */
		/* up to (3 4 5 6), there is no non-trivial solution to w4^3 + x4^3 + y4^3 = z4^3 */
		/* therefore y4 = -x4, and for positive x only, and omit all other triples because of commutativity */
		y4 = - x4;
		z4 =   w4;
		if (1) {
			d3z4z4 = 3*z4*z4;
			w0 = 0; while (abs(w0) < alimit) {
			x0 = 0; while (abs(x0) < alimit) {
				y0 = - x0;
				z0 =   w0;
				if (1) {
					d3z0z0 = 3*z0*z0;
					w3 = 0; while (abs(w3) < alimit) {
					x3 = 0; while (abs(x3) < alimit) {
					y3 = 0; while (abs(y3) < alimit) {

						coeff11 = 0
						 + 3*w4*w4*w3                       
				         + 3*x4*x4*x3                     
				         + 3*y4*y4*y3
				         ;  
						if (z4 == 0 || coeff11 % d3z4z4 == 0) {
							w1 = 0; while (abs(w1) < alimit) {
							x1 = 0; while (abs(x1) < alimit) {
							y1 = 0; while (abs(y1) < alimit) {
	
								coeff01 = 0
								 + 3*w1*w0*w0                       
						         + 3*x1*x0*x0                     
						         + 3*y1*y0*y0
						        ;  
								if (z0 == 0 || coeff01 % d3z0z0 == 0) {
									w2 = 0; while (abs(w2) < alimit) { 
										/* 
										w2 = 3 - (w4 + w3 + w1 + w0);
										*/
									x2 = 0; while (abs(x2) < alimit) {
										/* 
										x2 = 4 - (x4 + x3 + x1 + x0);
										*/
									y2 = 0; while (abs(y2) < alimit) {
										/* 
										y2 = 5 - (y4 + y3 + y1 + y0);
										*/
											test();
											/* print "test result: " . test() . "\n"; */
									y2 = next_toggle(y2); }
										/* 
										*/  /* while y2 */
									x2 = next_toggle(x2); } 
										/* 
										*/ /* while x2 */
									w2 = next_toggle(w2); } 
										/* 
										*/ /* while w2 */
								} /* z0 == 0 || coeff01 % d3z0z0 == 0 */
	
							y1 = next_toggle(y1); } /* while y1 */
							x1 = next_toggle(x1); } /* while x1 */
							w1 = next_toggle(w1); } /* while w1 */
						} /* z4 == 0 || coeff11 % d3z4z4 == 0 */
					
					y3 = next_toggle(y3); } /* while y3 */
					x3 = next_toggle(x3); } /* while x3 */
					w3 = next_toggle(w3); } /* while w3 */
				} /* defined coeff0 */

			x0 = next       (x0); } /* while x0 */
			w0 = next_toggle(w0); } /* while w0 */
		} /* defined coeff9 */
		
	x4 = next       (x4); } /* while x4 */
	w4 = next       (w4); } /* while w4 */
	return 0;
} /* main */

int polygon3() {
	int x =
0
/* 12 */	 + x4*x4*x4 * 1
/* 11 */	 + x4*x4*x3 * 3
/* 10 */	 + x4*x3*x3 * 3 + x4*x4*x2 * 3
/*  9 */	 + x3*x3*x3 * 1 + x4*x3*x2 * 6 + x4*x4*x1 * 3
/*  8 */	 + x4*x3*x1 * 6 + x4*x4*x0 * 3 + x3*x3*x2 * 3 + x4*x2*x2 * 3
/*  7 */	 + x4*x2*x1 * 6 + x4*x3*x0 * 6 + x3*x3*x1 * 3 + x3*x2*x2 * 3
/*  6 */	 + x3*x3*x0 * 3 + x4*x1*x1 * 3 + x2*x2*x2 * 1 + x4*x2*x0 * 6 + x3*x2*x1 * 6
/*  5 */	 + x3*x2*x0 * 6 + x3*x1*x1 * 3 + x2*x2*x1 * 3 + x4*x1*x0 * 6
/*  4 */	 + x2*x1*x1 * 3 + x3*x1*x0 * 6 + x4*x0*x0 * 3 + x2*x2*x0 * 3
/*  3 */	 + x3*x0*x0 * 3 + x2*x1*x0 * 6 + x1*x1*x1 * 1
/*  2 */	 + x2*x0*x0 * 3 + x1*x1*x0 * 3
/*  1 */	 + x1*x0*x0 * 3
/*  0 */	 + x0*x0*x0 * 1
	;
	return x;
} /* dummy */

int test() {
	count ++;
/* heart-beat 
	if (count & 0xfff == 0) {
		printf("# iteration 0x%x\n", count);
		matrix();
	}
*/
	if (0) {
	} else if (z4 != 0) {
		d3z4z4 = (3*z4*z4);
		z3 = div((coeff11) , d3z4z4);
		if (      coeff11 != d3z4z4*z3)                       			{ return 22; }

		coeff10 = 0
	 		 + 3*w4*w4*w2 + 3*w4*w3*w3 
	         + 3*x4*x4*x2 + 3*x4*x3*x3 
	         + 3*y4*y4*y2 + 3*y4*y3*y3
	         ;  
		z2 = div((coeff10 - 3*z4*z3*z3) , d3z4z4);
		if (      coeff10 - 3*z4*z3*z3 != d3z4z4*z2) 					{ return 23; }

		coeff09 = 0
	         +   w3*w3*w3 + 3*w4*w4*w1 + 6*w4*w3*w2 
		     +   x3*x3*x3 + 3*x4*x4*x1 + 6*x4*x3*x2 
		     +   y3*y3*y3 + 3*y4*y4*y1 + 6*y4*y3*y2 
		     ;  
		z1 = div((coeff09 - z3*z3*z3 - 6*z4*z3*z2) , d3z4z4);
		if (      coeff09 - z3*z3*z3 - 6*z4*z3*z2 != d3z4z4*z1) 		{ return 24; }
	} else if (z0 != 0) {
		d3z0z0 = (3*z0*z0);
		z1 = div((coeff01) , d3z0z0);
		if (        coeff01 != d3z0z0*z1) 									{ return 25; }

		coeff02 = 0
			 + 3*w1*w1*w0 + 3*w2*w0*w0 
	         + 3*x1*x1*x0 + 3*x2*x0*x0 
	         + 3*y1*y1*y0 + 3*y2*y0*y0
	         ;  
		z2 = div((coeff02 - 3*z1*z1*z0) , d3z0z0);
		if (      coeff02 - 3*z1*z1*z0 != d3z0z0*z2 ) 					{ return 26; }

		coeff03 = 0
			 +   w1*w1*w1 + 6*w2*w1*w0 + 3*w3*w0*w0 
			 +   x1*x1*x1 + 6*x2*x1*x0 + 3*x3*x0*x0 
			 +   y1*y1*y1 + 6*y2*y1*y0 + 3*y3*y0*y0
			 ;  
		z3 = div((coeff03 - z1*z1*z1 - 6*z2*z1*z0) , d3z0z0);
		if (      coeff03 - z1*z1*z1 - 6*z2*z1*z0 != d3z0z0*z3) 		{ return 27; }
	} else { /* z4=z0=0 */
		coeff09 = 0
	         +   w3*w3*w3 + 3*w4*w4*w1 + 6*w4*w3*w2 
		     +   x3*x3*x3 + 3*x4*x4*x1 + 6*x4*x3*x2 
		     +   y3*y3*y3 + 3*y4*y4*y1 + 6*y4*y3*y2 
		     ;  
		z3 = (coeff09 >= 0) ?  qroot[coeff09] : - qroot[- coeff09];
		if (z3 == noroot) {	return 14; } 

		coeff03 = 0
			 +   w1*w1*w1 + 6*w2*w1*w0 + 3*w3*w0*w0 
			 +   x1*x1*x1 + 6*x2*x1*x0 + 3*x3*x0*x0 
			 +   y1*y1*y1 + 6*y2*y1*y0 + 3*y3*y0*y0
			 ;  
		z1 = (coeff03 >= 0) ?  qroot[coeff03] : - qroot[- coeff03];
		if (z1 == noroot) {	return 15; } 

		if (0) {
		} else if (z3 != 0) {
			coeff08 = 0
			 + 3*w4*w4*w0 + 6*w4*w3*w1 + 3*w4*w2*w2 + 3*w3*w3*w2                       
	         + 3*x4*x4*x0 + 6*x4*x3*x1 + 3*x4*x2*x2 + 3*x3*x3*x2                     
	         + 3*y4*y4*y0 + 6*y4*y3*y1 + 3*y4*y2*y2 + 3*y3*y3*y2
	         ;  
			z2 = div((coeff08) , (3*z3*z3));
			if (      coeff08 !=  3*z3*z3*z2) 							{ return 35; }
		} else if (z1 != 0) {
			coeff04 = 0
			 + 3*w4*w0*w0 + 6*w3*w1*w0 + 3*w2*w2*w0 + 3*w2*w1*w1 
	 	     + 3*x4*x0*x0 + 6*x3*x1*x0 + 3*x2*x2*x0 + 3*x2*x1*x1 
			 + 3*y4*y0*y0 + 6*y3*y1*y0 + 3*y2*y2*y0 + 3*y2*y1*y1 
			 ;  
			z2 = div((coeff04) , (3*z1*z1));
			if (      coeff04 !=  3*z1*z1*z2) 							{ return 36; }
		} else { /* z4=z3=z1=z0=0 */
			coeff06 = 0
			 + 6*w4*w2*w0 + 3*w4*w1*w1 +   w2*w2*w2 + 6*w3*w2*w1 + 3*w3*w3*w0 
		     + 6*x4*x2*x0 + 3*x4*x1*x1 +   x2*x2*x2 + 6*x3*x2*x1 + 3*x3*x3*x0 
		     + 6*y4*y2*y0 + 3*y4*y1*y1 +   y2*y2*y2 + 6*y3*y2*y1 + 3*y3*y3*y0 
		     ;  
			z2 = (coeff06 >= 0) ?  qroot[coeff06] : - qroot[- coeff06];
			if (z2 == noroot) {	return 16; } 
		}
	} /* z2=0 && z0=0 */

	n = 0;
	show = 0;
	strcpy(found, "!");
	while (show < 4 && n < 8) {
		a = w0 + n * (w1 + n * (w2 + n * (w3 + n * (w4)))); 
		b = x0 + n * (x1 + n * (x2 + n * (x3 + n * (x4)))); 
		c = y0 + n * (y1 + n * (y2 + n * (y3 + n * (y4)))); 
		d = z0 + n * (z1 + n * (z2 + n * (z3 + n * (z4)))); 
		sa = abs(a);
		sb = abs(b);
		sc = abs(c);
		sd = abs(d);
		if (0) {
		} else if (a ==  0 || b == 0  || c == 0  || d == 0) {
			/* ignore those with a zero element (Fermat), omits many trival tuples 1 0 0 1 ... */
		} else if (sa == sb || sa == sc || sa == sd || sb == sc || sb == sd || sc == sd) { 
			/* ignore those with a duplicated element, omits many trivial tuples 18 9 - 9 18 ... */
		} else {
			if (a*a*a + b*b*b + c*c*c == d*d*d) {
				sprintf(temp, "    %d %d %d %d!", a, b, c, d);
				strcat(found, temp);
			} else {
				return 30;
			}
			show ++;
		}
		n ++;
	} /* for n */

	if (strlen(found) > 1) {
		newt = time();
		dt = newt - oldt;
		oldt = newt;
		printf("# %d ------------------------------- dt=%d\n", count, dt);
		matrix();
		printf("%s", found);
		printf(" (%d,%d,%d,%d,%d)^3", w0,w1,w2,w3,w4);
		printf("+(%d,%d,%d,%d,%d)^3", x0,x1,x2,x3,x4);
		printf("+(%d,%d,%d,%d,%d)^3", y0,y1,y2,y3,y4);
		printf("=(%d,%d,%d,%d,%d)^3", z0,z1,z2,z3,z4);
		printf("\n");
	} /* length > 2 */
	return 0;
} /* test */

int matrix() {
	printf("%3d %3d %3d %3d\n", w0, x0, y0, z0);
	printf("%3d %3d %3d %3d\n", w1, x1, y1, z1);
	printf("%3d %3d %3d %3d\n", w2, x2, y2, z2);
	printf("%3d %3d %3d %3d\n", w3, x3, y3, z3);
	printf("%3d %3d %3d %3d\n", w4, x4, y4, z4);
} /* matrix */

int div(x,y ) int x,y; {
	int result = x / y;
/*
	if (result != int(result)) {
		if (result < 0) {
			result = int(result - 0.01);
		} else {
			result = int(result + 0.01);
		}
	}
*/
	return result;
} /* div */

int next       (p) int p; {
	return ++ p;
} /* next */

int next_toggle(p) int p; {
	return (p >= 0) ? - p - 1 : - p;
} /* next_toggle */

