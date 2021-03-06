#!/usr/bin/perl

# Extracts relations from the output of test/T25.this.tst (Fermat/Carcavi(7), x^2+1=y^3)
# @(#) $Id$
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-06-13

use strict;
my $factor;
my (@xof, @yof); # offsets for x, y in lines

while (<DATA>) {
	my $line = $_;
	$line =~ s/\s+\Z//; # chompr
	$line =~ s/\A\s+//; # leading spaces
	if (0) {
	} elsif ($line =~ m{\A--}) {
		&output();
	} elsif ($line =~ m{\Aexpand}) {
		&output();
		$line =~ m{\*(\d+)\Z};
		$factor = $1;
		@xof = ();
		@yof = ();
	} elsif ($line =~ m{\A\[(\d+)}) {
		my $x1 = $1;
		push(@xof, $x1);
		$line =~ m{\,(\d+)};
		my $y1 = $1;
		push(@yof, $y1);
	} else {
		&output();
	}
} # while <>

sub output {
	if (scalar(@xof) > 0) {  
		my $div = 1;
		print sprintf("%6d%6d  %6d%6d %6d%6d   %10b %10b %10b %10b\n"
			, $xof[0], $yof[0] 
			, $xof[1], $yof[1]

			, ($xof[1]-$xof[0]) / $div
			, ($yof[1]-$yof[0]) / $div 

			, $xof[0] , $yof[0] 
			, $xof[1] , $yof[1] 
			);
		@xof = ();
		@yof = ();
	}
} # output
__DATA__
expanding queue[3]^2:  - 3 + x + 2*x^2 - 27*y - 72*y^2 - 64*y^3 = 0 meter=[2,2] *16
[5+8*x,3+16*y]: success [5,3],NONTRIVIAL  5*x+4*x^2-27*y-144*y^2-256*y^3=0 -> [5]
[1+8*x,11+16*y]: unknown -83+x+4*x^2-363*y-528*y^2-256*y^3=0 -> [6]
expanding queue[4]^2:  - 2 + 3*x + 2*x^2 - 27*y - 72*y^2 - 64*y^3 = 0 meter=[2,2] *16
[3+8*x,3+16*y]: unknown -1+3*x+4*x^2-27*y-144*y^2-256*y^3=0 -> [7]
[7+8*x,11+16*y]: unknown -80+7*x+4*x^2-363*y-528*y^2-256*y^3=0 -> [8]
----------------
expanding queue[5]^3: 5*x + 4*x^2 - 27*y - 144*y^2 - 256*y^3 = 0 meter=[2,2] *32
[5+16*x,3+32*y]: success [5,3],NONTRIVIAL  5*x+8*x^2-27*y-288*y^2-1024*y^3=0 -> [9]
[13+16*x,19+32*y]: unknown -209+13*x+8*x^2-1083*y-1824*y^2-1024*y^3=0 -> [10]
expanding queue[6]^3:  - 83 + x + 4*x^2 - 363*y - 528*y^2 - 256*y^3 = 0 meter=[2,2] *32
[9+16*x,11+32*y]: unknown -39+9*x+8*x^2-363*y-1056*y^2-1024*y^3=0 -> [11]
[1+16*x,27+32*y]: unknown -615+x+8*x^2-2187*y-2592*y^2-1024*y^3=0 -> [12]
expanding queue[7]^4:  - 1 + 3*x + 4*x^2 - 27*y - 144*y^2 - 256*y^3 = 0 meter=[2,2] *32
[11+16*x,3+32*y]: unknown 3+11*x+8*x^2-27*y-288*y^2-1024*y^3=0 -> [13]
[3+16*x,19+32*y]: unknown -214+3*x+8*x^2-1083*y-1824*y^2-1024*y^3=0 -> [14]
expanding queue[8]^4:  - 80 + 7*x + 4*x^2 - 363*y - 528*y^2 - 256*y^3 = 0 meter=[2,2] *32
[7+16*x,11+32*y]: unknown -40+7*x+8*x^2-363*y-1056*y^2-1024*y^3=0 -> [15]
[15+16*x,27+32*y]: unknown -608+15*x+8*x^2-2187*y-2592*y^2-1024*y^3=0 -> [16]
----------------
expanding queue[9]^5: 5*x + 8*x^2 - 27*y - 288*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[5+32*x,3+64*y]: success [5,3],NONTRIVIAL  5*x+16*x^2-27*y-576*y^2-4096*y^3=0 -> [17]
[21+32*x,35+64*y]: unknown -663+21*x+16*x^2-3675*y-6720*y^2-4096*y^3=0 -> [18]
expanding queue[10]^5:  - 209 + 13*x + 8*x^2 - 1083*y - 1824*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[29+32*x,19+64*y]: unknown -94+29*x+16*x^2-1083*y-3648*y^2-4096*y^3=0 -> [19]
[13+32*x,51+64*y]: unknown -2070+13*x+16*x^2-7803*y-9792*y^2-4096*y^3=0 -> [20]
expanding queue[11]^6:  - 39 + 9*x + 8*x^2 - 363*y - 1056*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[25+32*x,11+64*y]: unknown -11+25*x+16*x^2-363*y-2112*y^2-4096*y^3=0 -> [21]
[9+32*x,43+64*y]: unknown -1241+9*x+16*x^2-5547*y-8256*y^2-4096*y^3=0 -> [22]
expanding queue[12]^6:  - 615 + x + 8*x^2 - 2187*y - 2592*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[17+32*x,27+64*y]: unknown -303+17*x+16*x^2-2187*y-5184*y^2-4096*y^3=0 -> [23]
[1+32*x,59+64*y]: unknown -3209+x+16*x^2-10443*y-11328*y^2-4096*y^3=0 -> [24]
expanding queue[13]^7: 3 + 11*x + 8*x^2 - 27*y - 288*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[27+32*x,3+64*y]: unknown 11+27*x+16*x^2-27*y-576*y^2-4096*y^3=0 -> [25]
[11+32*x,35+64*y]: unknown -668+11*x+16*x^2-3675*y-6720*y^2-4096*y^3=0 -> [26]
expanding queue[14]^7:  - 214 + 3*x + 8*x^2 - 1083*y - 1824*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[3+32*x,19+64*y]: unknown -107+3*x+16*x^2-1083*y-3648*y^2-4096*y^3=0 -> [27]
[19+32*x,51+64*y]: unknown -2067+19*x+16*x^2-7803*y-9792*y^2-4096*y^3=0 -> [28]
expanding queue[15]^8:  - 40 + 7*x + 8*x^2 - 363*y - 1056*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[7+32*x,11+64*y]: unknown -20+7*x+16*x^2-363*y-2112*y^2-4096*y^3=0 -> [29]
[23+32*x,43+64*y]: unknown -1234+23*x+16*x^2-5547*y-8256*y^2-4096*y^3=0 -> [30]
expanding queue[16]^8:  - 608 + 15*x + 8*x^2 - 2187*y - 2592*y^2 - 1024*y^3 = 0 meter=[2,2] *64
[15+32*x,27+64*y]: unknown -304+15*x+16*x^2-2187*y-5184*y^2-4096*y^3=0 -> [31]
[31+32*x,59+64*y]: unknown -3194+31*x+16*x^2-10443*y-11328*y^2-4096*y^3=0 -> [32]
----------------
expanding queue[17]^9: 5*x + 16*x^2 - 27*y - 576*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[5+64*x,3+128*y]: success [5,3],NONTRIVIAL  5*x+32*x^2-27*y-1152*y^2-16384*y^3=0 -> [33]
[37+64*x,67+128*y]: unknown -2339+37*x+32*x^2-13467*y-25728*y^2-16384*y^3=0 -> [34]
expanding queue[18]^9:  - 663 + 21*x + 16*x^2 - 3675*y - 6720*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[53+64*x,35+128*y]: unknown -313+53*x+32*x^2-3675*y-13440*y^2-16384*y^3=0 -> [35]
[21+64*x,99+128*y]: unknown -7577+21*x+32*x^2-29403*y-38016*y^2-16384*y^3=0 -> [36]
expanding queue[19]^10:  - 94 + 29*x + 16*x^2 - 1083*y - 3648*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[29+64*x,19+128*y]: unknown -47+29*x+32*x^2-1083*y-7296*y^2-16384*y^3=0 -> [37]
[61+64*x,83+128*y]: unknown -4438+61*x+32*x^2-20667*y-31872*y^2-16384*y^3=0 -> [38]
expanding queue[20]^10:  - 2070 + 13*x + 16*x^2 - 7803*y - 9792*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[13+64*x,51+128*y]: unknown -1035+13*x+32*x^2-7803*y-19584*y^2-16384*y^3=0 -> [39]
[45+64*x,115+128*y]: unknown -11866+45*x+32*x^2-39675*y-44160*y^2-16384*y^3=0 -> [40]
expanding queue[21]^11:  - 11 + 25*x + 16*x^2 - 363*y - 2112*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[57+64*x,11+128*y]: unknown 15+57*x+32*x^2-363*y-4224*y^2-16384*y^3=0 -> [41]
[25+64*x,75+128*y]: unknown -3291+25*x+32*x^2-16875*y-28800*y^2-16384*y^3=0 -> [42]
expanding queue[22]^11:  - 1241 + 9*x + 16*x^2 - 5547*y - 8256*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[41+64*x,43+128*y]: unknown -608+41*x+32*x^2-5547*y-16512*y^2-16384*y^3=0 -> [43]
[9+64*x,107+128*y]: unknown -9570+9*x+32*x^2-34347*y-41088*y^2-16384*y^3=0 -> [44]
expanding queue[23]^12:  - 303 + 17*x + 16*x^2 - 2187*y - 5184*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[49+64*x,27+128*y]: unknown -135+49*x+32*x^2-2187*y-10368*y^2-16384*y^3=0 -> [45]
[17+64*x,91+128*y]: unknown -5885+17*x+32*x^2-24843*y-34944*y^2-16384*y^3=0 -> [46]
expanding queue[24]^12:  - 3209 + x + 16*x^2 - 10443*y - 11328*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[33+64*x,59+128*y]: unknown -1596+33*x+32*x^2-10443*y-22656*y^2-16384*y^3=0 -> [47]
[1+64*x,123+128*y]: unknown -14538+x+32*x^2-45387*y-47232*y^2-16384*y^3=0 -> [48]
expanding queue[25]^13: 11 + 27*x + 16*x^2 - 27*y - 576*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[59+64*x,3+128*y]: unknown 27+59*x+32*x^2-27*y-1152*y^2-16384*y^3=0 -> [49]
[27+64*x,67+128*y]: unknown -2344+27*x+32*x^2-13467*y-25728*y^2-16384*y^3=0 -> [50]
expanding queue[26]^13:  - 668 + 11*x + 16*x^2 - 3675*y - 6720*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[11+64*x,35+128*y]: unknown -334+11*x+32*x^2-3675*y-13440*y^2-16384*y^3=0 -> [51]
[43+64*x,99+128*y]: unknown -7566+43*x+32*x^2-29403*y-38016*y^2-16384*y^3=0 -> [52]
expanding queue[27]^14:  - 107 + 3*x + 16*x^2 - 1083*y - 3648*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[35+64*x,19+128*y]: unknown -44+35*x+32*x^2-1083*y-7296*y^2-16384*y^3=0 -> [53]
[3+64*x,83+128*y]: unknown -4467+3*x+32*x^2-20667*y-31872*y^2-16384*y^3=0 -> [54]
expanding queue[28]^14:  - 2067 + 19*x + 16*x^2 - 7803*y - 9792*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[51+64*x,51+128*y]: unknown -1016+51*x+32*x^2-7803*y-19584*y^2-16384*y^3=0 -> [55]
[19+64*x,115+128*y]: unknown -11879+19*x+32*x^2-39675*y-44160*y^2-16384*y^3=0 -> [56]
expanding queue[29]^15:  - 20 + 7*x + 16*x^2 - 363*y - 2112*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[7+64*x,11+128*y]: unknown -10+7*x+32*x^2-363*y-4224*y^2-16384*y^3=0 -> [57]
[39+64*x,75+128*y]: unknown -3284+39*x+32*x^2-16875*y-28800*y^2-16384*y^3=0 -> [58]
expanding queue[30]^15:  - 1234 + 23*x + 16*x^2 - 5547*y - 8256*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[23+64*x,43+128*y]: unknown -617+23*x+32*x^2-5547*y-16512*y^2-16384*y^3=0 -> [59]
[55+64*x,107+128*y]: unknown -9547+55*x+32*x^2-34347*y-41088*y^2-16384*y^3=0 -> [60]
expanding queue[31]^16:  - 304 + 15*x + 16*x^2 - 2187*y - 5184*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[15+64*x,27+128*y]: unknown -152+15*x+32*x^2-2187*y-10368*y^2-16384*y^3=0 -> [61]
[47+64*x,91+128*y]: unknown -5870+47*x+32*x^2-24843*y-34944*y^2-16384*y^3=0 -> [62]
expanding queue[32]^16:  - 3194 + 31*x + 16*x^2 - 10443*y - 11328*y^2 - 4096*y^3 = 0 meter=[2,2] *128
[31+64*x,59+128*y]: unknown -1597+31*x+32*x^2-10443*y-22656*y^2-16384*y^3=0 -> [63]
[63+64*x,123+128*y]: unknown -14507+63*x+32*x^2-45387*y-47232*y^2-16384*y^3=0 -> [64]
----------------
expanding queue[33]^17: 5*x + 32*x^2 - 27*y - 1152*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[5+128*x,3+256*y]: success [5,3],NONTRIVIAL  5*x+64*x^2-27*y-2304*y^2-65536*y^3=0 -> [65]
[69+128*x,131+256*y]: unknown -8763+69*x+64*x^2-51483*y-100608*y^2-65536*y^3=0 -> [66]
expanding queue[34]^17:  - 2339 + 37*x + 32*x^2 - 13467*y - 25728*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[101+128*x,67+256*y]: unknown -1135+101*x+64*x^2-13467*y-51456*y^2-65536*y^3=0 -> [67]
[37+128*x,195+256*y]: unknown -28959+37*x+64*x^2-114075*y-149760*y^2-65536*y^3=0 -> [68]
expanding queue[35]^18:  - 313 + 53*x + 32*x^2 - 3675*y - 13440*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[117+128*x,35+256*y]: unknown -114+117*x+64*x^2-3675*y-26880*y^2-65536*y^3=0 -> [69]
[53+128*x,163+256*y]: unknown -16906+53*x+64*x^2-79707*y-125184*y^2-65536*y^3=0 -> [70]
expanding queue[36]^18:  - 7577 + 21*x + 32*x^2 - 29403*y - 38016*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[85+128*x,99+256*y]: unknown -3762+85*x+64*x^2-29403*y-76032*y^2-65536*y^3=0 -> [71]
[21+128*x,227+256*y]: unknown -45690+21*x+64*x^2-154587*y-174336*y^2-65536*y^3=0 -> [72]
expanding queue[37]^19:  - 47 + 29*x + 32*x^2 - 1083*y - 7296*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[93+128*x,19+256*y]: unknown 7+93*x+64*x^2-1083*y-14592*y^2-65536*y^3=0 -> [73]
[29+128*x,147+256*y]: unknown -12405+29*x+64*x^2-64827*y-112896*y^2-65536*y^3=0 -> [74]
expanding queue[38]^19:  - 4438 + 61*x + 32*x^2 - 20667*y - 31872*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[61+128*x,83+256*y]: unknown -2219+61*x+64*x^2-20667*y-63744*y^2-65536*y^3=0 -> [75]
[125+128*x,211+256*y]: unknown -36634+125*x+64*x^2-133563*y-162048*y^2-65536*y^3=0 -> [76]
expanding queue[39]^20:  - 1035 + 13*x + 32*x^2 - 7803*y - 19584*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[77+128*x,51+256*y]: unknown -495+77*x+64*x^2-7803*y-39168*y^2-65536*y^3=0 -> [77]
[13+128*x,179+256*y]: unknown -22403+13*x+64*x^2-96123*y-137472*y^2-65536*y^3=0 -> [78]
expanding queue[40]^20:  - 11866 + 45*x + 32*x^2 - 39675*y - 44160*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[45+128*x,115+256*y]: unknown -5933+45*x+64*x^2-39675*y-88320*y^2-65536*y^3=0 -> [79]
[109+128*x,243+256*y]: unknown -56004+109*x+64*x^2-177147*y-186624*y^2-65536*y^3=0 -> [80]
expanding queue[41]^21: 15 + 57*x + 32*x^2 - 363*y - 4224*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[121+128*x,11+256*y]: unknown 52+121*x+64*x^2-363*y-8448*y^2-65536*y^3=0 -> [81]
[57+128*x,139+256*y]: unknown -10478+57*x+64*x^2-57963*y-106752*y^2-65536*y^3=0 -> [82]
expanding queue[42]^21:  - 3291 + 25*x + 32*x^2 - 16875*y - 28800*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[89+128*x,75+256*y]: unknown -1617+89*x+64*x^2-16875*y-57600*y^2-65536*y^3=0 -> [83]
[25+128*x,203+256*y]: unknown -32675+25*x+64*x^2-123627*y-155904*y^2-65536*y^3=0 -> [84]
expanding queue[43]^22:  - 608 + 41*x + 32*x^2 - 5547*y - 16512*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[41+128*x,43+256*y]: unknown -304+41*x+64*x^2-5547*y-33024*y^2-65536*y^3=0 -> [85]
[105+128*x,171+256*y]: unknown -19489+105*x+64*x^2-87723*y-131328*y^2-65536*y^3=0 -> [86]
expanding queue[44]^22:  - 9570 + 9*x + 32*x^2 - 34347*y - 41088*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[9+128*x,107+256*y]: unknown -4785+9*x+64*x^2-34347*y-82176*y^2-65536*y^3=0 -> [87]
[73+128*x,235+256*y]: unknown -50674+73*x+64*x^2-165675*y-180480*y^2-65536*y^3=0 -> [88]
expanding queue[45]^23:  - 135 + 49*x + 32*x^2 - 2187*y - 10368*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[113+128*x,27+256*y]: unknown -27+113*x+64*x^2-2187*y-20736*y^2-65536*y^3=0 -> [89]
[49+128*x,155+256*y]: unknown -14537+49*x+64*x^2-72075*y-119040*y^2-65536*y^3=0 -> [90]
expanding queue[46]^23:  - 5885 + 17*x + 32*x^2 - 24843*y - 34944*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[81+128*x,91+256*y]: unknown -2918+81*x+64*x^2-24843*y-69888*y^2-65536*y^3=0 -> [91]
[17+128*x,219+256*y]: unknown -41028+17*x+64*x^2-143883*y-168192*y^2-65536*y^3=0 -> [92]
expanding queue[47]^24:  - 1596 + 33*x + 32*x^2 - 10443*y - 22656*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[33+128*x,59+256*y]: unknown -798+33*x+64*x^2-10443*y-45312*y^2-65536*y^3=0 -> [93]
[97+128*x,187+256*y]: unknown -25507+97*x+64*x^2-104907*y-143616*y^2-65536*y^3=0 -> [94]
expanding queue[48]^24:  - 14538 + x + 32*x^2 - 45387*y - 47232*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[1+128*x,123+256*y]: unknown -7269+x+64*x^2-45387*y-94464*y^2-65536*y^3=0 -> [95]
[65+128*x,251+256*y]: unknown -61754+65*x+64*x^2-189003*y-192768*y^2-65536*y^3=0 -> [96]
expanding queue[49]^25: 27 + 59*x + 32*x^2 - 27*y - 1152*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[123+128*x,3+256*y]: unknown 59+123*x+64*x^2-27*y-2304*y^2-65536*y^3=0 -> [97]
[59+128*x,131+256*y]: unknown -8768+59*x+64*x^2-51483*y-100608*y^2-65536*y^3=0 -> [98]
expanding queue[50]^25:  - 2344 + 27*x + 32*x^2 - 13467*y - 25728*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[27+128*x,67+256*y]: unknown -1172+27*x+64*x^2-13467*y-51456*y^2-65536*y^3=0 -> [99]
[91+128*x,195+256*y]: unknown -28932+91*x+64*x^2-114075*y-149760*y^2-65536*y^3=0 -> [100]
expanding queue[51]^26:  - 334 + 11*x + 32*x^2 - 3675*y - 13440*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[11+128*x,35+256*y]: unknown -167+11*x+64*x^2-3675*y-26880*y^2-65536*y^3=0 -> [101]
[75+128*x,163+256*y]: unknown -16895+75*x+64*x^2-79707*y-125184*y^2-65536*y^3=0 -> [102]
expanding queue[52]^26:  - 7566 + 43*x + 32*x^2 - 29403*y - 38016*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[43+128*x,99+256*y]: unknown -3783+43*x+64*x^2-29403*y-76032*y^2-65536*y^3=0 -> [103]
[107+128*x,227+256*y]: unknown -45647+107*x+64*x^2-154587*y-174336*y^2-65536*y^3=0 -> [104]
expanding queue[53]^27:  - 44 + 35*x + 32*x^2 - 1083*y - 7296*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[35+128*x,19+256*y]: unknown -22+35*x+64*x^2-1083*y-14592*y^2-65536*y^3=0 -> [105]
[99+128*x,147+256*y]: unknown -12370+99*x+64*x^2-64827*y-112896*y^2-65536*y^3=0 -> [106]
expanding queue[54]^27:  - 4467 + 3*x + 32*x^2 - 20667*y - 31872*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[67+128*x,83+256*y]: unknown -2216+67*x+64*x^2-20667*y-63744*y^2-65536*y^3=0 -> [107]
[3+128*x,211+256*y]: unknown -36695+3*x+64*x^2-133563*y-162048*y^2-65536*y^3=0 -> [108]
expanding queue[55]^28:  - 1016 + 51*x + 32*x^2 - 7803*y - 19584*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[51+128*x,51+256*y]: unknown -508+51*x+64*x^2-7803*y-39168*y^2-65536*y^3=0 -> [109]
[115+128*x,179+256*y]: unknown -22352+115*x+64*x^2-96123*y-137472*y^2-65536*y^3=0 -> [110]
expanding queue[56]^28:  - 11879 + 19*x + 32*x^2 - 39675*y - 44160*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[83+128*x,115+256*y]: unknown -5914+83*x+64*x^2-39675*y-88320*y^2-65536*y^3=0 -> [111]
[19+128*x,243+256*y]: unknown -56049+19*x+64*x^2-177147*y-186624*y^2-65536*y^3=0 -> [112]
expanding queue[57]^29:  - 10 + 7*x + 32*x^2 - 363*y - 4224*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[7+128*x,11+256*y]: unknown -5+7*x+64*x^2-363*y-8448*y^2-65536*y^3=0 -> [113]
[71+128*x,139+256*y]: unknown -10471+71*x+64*x^2-57963*y-106752*y^2-65536*y^3=0 -> [114]
expanding queue[58]^29:  - 3284 + 39*x + 32*x^2 - 16875*y - 28800*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[39+128*x,75+256*y]: unknown -1642+39*x+64*x^2-16875*y-57600*y^2-65536*y^3=0 -> [115]
[103+128*x,203+256*y]: unknown -32636+103*x+64*x^2-123627*y-155904*y^2-65536*y^3=0 -> [116]
expanding queue[59]^30:  - 617 + 23*x + 32*x^2 - 5547*y - 16512*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[87+128*x,43+256*y]: unknown -281+87*x+64*x^2-5547*y-33024*y^2-65536*y^3=0 -> [117]
[23+128*x,171+256*y]: unknown -19530+23*x+64*x^2-87723*y-131328*y^2-65536*y^3=0 -> [118]
expanding queue[60]^30:  - 9547 + 55*x + 32*x^2 - 34347*y - 41088*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[119+128*x,107+256*y]: unknown -4730+119*x+64*x^2-34347*y-82176*y^2-65536*y^3=0 -> [119]
[55+128*x,235+256*y]: unknown -50683+55*x+64*x^2-165675*y-180480*y^2-65536*y^3=0 -> [120]
expanding queue[61]^31:  - 152 + 15*x + 32*x^2 - 2187*y - 10368*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[15+128*x,27+256*y]: unknown -76+15*x+64*x^2-2187*y-20736*y^2-65536*y^3=0 -> [121]
[79+128*x,155+256*y]: unknown -14522+79*x+64*x^2-72075*y-119040*y^2-65536*y^3=0 -> [122]
expanding queue[62]^31:  - 5870 + 47*x + 32*x^2 - 24843*y - 34944*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[47+128*x,91+256*y]: unknown -2935+47*x+64*x^2-24843*y-69888*y^2-65536*y^3=0 -> [123]
[111+128*x,219+256*y]: unknown -40981+111*x+64*x^2-143883*y-168192*y^2-65536*y^3=0 -> [124]
expanding queue[63]^32:  - 1597 + 31*x + 32*x^2 - 10443*y - 22656*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[95+128*x,59+256*y]: unknown -767+95*x+64*x^2-10443*y-45312*y^2-65536*y^3=0 -> [125]
[31+128*x,187+256*y]: unknown -25540+31*x+64*x^2-104907*y-143616*y^2-65536*y^3=0 -> [126]
expanding queue[64]^32:  - 14507 + 63*x + 32*x^2 - 45387*y - 47232*y^2 - 16384*y^3 = 0 meter=[2,2] *256
[127+128*x,123+256*y]: unknown -7206+127*x+64*x^2-45387*y-94464*y^2-65536*y^3=0 -> [127]
[63+128*x,251+256*y]: unknown -61755+63*x+64*x^2-189003*y-192768*y^2-65536*y^3=0 -> [128]
Maximum level 7 reached, queue size = 129
 