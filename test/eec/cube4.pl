#!/usr/bin/perl

# @(#) $Id: powmod.pl 125 2009-04-30 07:04:50Z gfis $
# check and classify cubic quadruples             
# 2013-05-27, Dr. Georg Fischer

use strict;
use Math::BigInt;
use Math::BigInt':constant';

	while (<>) {
		next if m{\A\s*\#};
		s{\s+\Z}{};
		s{(\#.+)}{};
		my $comment = $1;
		my $line = $_;
		$line =~ s{[\+\-]}{ }g;
		$line =~ s{\A\s+}{};
		$line =~ s{\s+\Z}{};
		my @vars = reverse sort(map {
					sprintf("%08d", $_)
				} split(/\s+/, $line)); 
		if (scalar(@vars) >= 4 and $vars[0] ne $vars[1]) {
			my $out = " " . join(" ", @vars); # . " " . $comment . "\n";
			print "$out\n";
		}
	} # while <>
__END__	
	if (scalar(@ARGV) < 2) {
		print "usage: perl powmod.pl exp div\n";
		exit(0);
	}
	my $exponent = shift(@ARGV);
	my $divisor  = shift(@ARGV);
	my $n = Math::BigInt->new(1);
	my %hash = ();
	while ($n <= 512) {
		my $nk = Math::BigInt->new(1);
		for (my $k = 0; $k < $exponent; $k ++) {
			$nk *= $n;
		} # for $k
		my $mod = $nk % $divisor;
		$hash{$mod} ++;
		$n ++;	
	} # while ++
	my $count = 0;
	foreach my $mod (sort(keys(%hash))) {
		print sprintf("%2d: %4d\n", $mod, $hash{$mod});
		$count ++;
	} # foreach
	print "gain: " . ($divisor - $count) . "\n";
__DATA__
# (6*m^3*t*f+t*(t-m)*(m^4+m^2*t^2+t^4)+3*t*(t+m)*f^2)^3
# +(6*m^3*t*f-t*(t-m)*(m^4+m^2*t^2+t^4)-3*t*(t+m)*f^2)^3
# +(-6*t^3*m*f+m*(m-t)*(m^4+m^2*t^2+t^4)+3*m*(m+t)*f^2)^3
# +(6*t^3*m*f+m*(m-t)*(m^4+m^2*t^2+t^4)+3*m*(m+t)*f^2)^3
0	# Korneck 0 0 0 
0	# Korneck 1 0 0 
0	# Korneck 2 0 0 
0	# Korneck 3 0 0 
0	# Korneck 4 0 0 
0	# Korneck 5 0 0 
0	# Korneck 6 0 0 
0	# Korneck 7 0 0 
1 + 1	# Korneck 0 1 0 
1 + 1	# Korneck 1 1 0 
1 + 1	# Korneck 2 1 0 
1 + 1	# Korneck 3 1 0 
1 + 1	# Korneck 4 1 0 
1 + 1	# Korneck 5 1 0 
1 + 1	# Korneck 6 1 0 
1 + 1	# Korneck 7 1 0 
1 + 1	# Korneck 0 2 0 
1 + 1	# Korneck 1 2 0 
1 + 1	# Korneck 2 2 0 
1 + 1	# Korneck 3 2 0 
1 + 1	# Korneck 4 2 0 
1 + 1	# Korneck 5 2 0 
1 + 1	# Korneck 6 2 0 
1 + 1	# Korneck 7 2 0 
1 + 1	# Korneck 0 3 0 
1 + 1	# Korneck 1 3 0 
1 + 1	# Korneck 2 3 0 
1 + 1	# Korneck 3 3 0 
1 + 1	# Korneck 4 3 0 
1 + 1	# Korneck 5 3 0 
1 + 1	# Korneck 6 3 0 
1 + 1	# Korneck 7 3 0 
1 + 1	# Korneck 0 4 0 
1 + 1	# Korneck 1 4 0 
1 + 1	# Korneck 2 4 0 
1 + 1	# Korneck 3 4 0 
1 + 1	# Korneck 4 4 0 
1 + 1	# Korneck 5 4 0 
1 + 1	# Korneck 6 4 0 
1 + 1	# Korneck 7 4 0 
1 + 1	# Korneck 0 5 0 
1 + 1	# Korneck 1 5 0 
1 + 1	# Korneck 2 5 0 
1 + 1	# Korneck 3 5 0 
1 + 1	# Korneck 4 5 0 
1 + 1	# Korneck 5 5 0 
1 + 1	# Korneck 6 5 0 
1 + 1	# Korneck 7 5 0 
1 + 1	# Korneck 0 6 0 
1 + 1	# Korneck 1 6 0 
1 + 1	# Korneck 2 6 0 
1 + 1	# Korneck 3 6 0 
1 + 1	# Korneck 4 6 0 
1 + 1	# Korneck 5 6 0 
1 + 1	# Korneck 6 6 0 
1 + 1	# Korneck 7 6 0 
1 + 1	# Korneck 0 7 0 
1 + 1	# Korneck 1 7 0 
1 + 1	# Korneck 2 7 0 
1 + 1	# Korneck 3 7 0 
1 + 1	# Korneck 4 7 0 
1 + 1	# Korneck 5 7 0 
1 + 1	# Korneck 6 7 0 
1 + 1	# Korneck 7 7 0 
1 - 1	# Korneck 0 0 1 
1 - 1	# Korneck 1 0 1 
1 - 1	# Korneck 2 0 1 
1 - 1	# Korneck 3 0 1 
1 - 1	# Korneck 4 0 1 
1 - 1	# Korneck 5 0 1 
1 - 1	# Korneck 6 0 1 
1 - 1	# Korneck 7 0 1 
0	# Korneck 0 1 1 
1 + 1	# Korneck 1 1 1 
3 - 1 + 1 + 3	# Korneck 2 1 1 
2 - 1 + 1 + 2	# Korneck 3 1 1 
5 - 3 + 3 + 5	# Korneck 4 1 1 
3 - 2 + 2 + 3	# Korneck 5 1 1 
7 - 5 + 5 + 7	# Korneck 6 1 1 
4 - 3 + 3 + 4	# Korneck 7 1 1 
 - 1 + 1 + 2 + 2	# Korneck 0 2 1 
3 + 5 + 4 + 6	# Korneck 1 2 1 
37 + 27 + 30 + 46	# Korneck 2 2 1 
17 + 7 + 14 + 20	# Korneck 3 2 1 
105 + 23 + 94 + 126	# Korneck 4 2 1 
37 + 3 + 36 + 46	# Korneck 5 2 1 
197 - 5 + 206 + 254	# Korneck 6 2 1 
9 - 1 + 10 + 12	# Korneck 7 2 1 
 - 1 + 1 + 3 + 3	# Korneck 0 3 1 
 - 2 + 83 + 141 + 150	# Korneck 1 3 1 
95 + 229 + 327 + 363	# Korneck 2 3 1 
103 + 140 + 204 + 231	# Korneck 3 3 1 
329 + 319 + 525 + 597	# Korneck 4 3 1 
232 + 173 + 339 + 384	# Korneck 5 3 1 
611 + 361 + 867 + 975	# Korneck 6 3 1 
55 + 26 + 78 + 87	# Korneck 7 3 1 
 - 1 + 1 + 4 + 4	# Korneck 0 4 1 
 - 35 + 99 + 276 + 280	# Korneck 1 4 1 
3 + 509 + 1156 + 1188	# Korneck 2 4 1 
13 + 51 + 104 + 108	# Korneck 3 4 1 
319 + 705 + 1380 + 1444	# Korneck 4 4 1 
123 + 197 + 388 + 408	# Korneck 5 4 1 
225 + 287 + 588 + 620	# Korneck 6 4 1 
31 + 33 + 72 + 76	# Korneck 7 4 1 
 - 1 + 1 + 5 + 5	# Korneck 0 5 1 
 - 153 + 278 + 1090 + 1095	# Korneck 1 5 1 
 - 43 + 168 + 555 + 560	# Korneck 2 5 1 
 - 16 + 391 + 1145 + 1160	# Korneck 3 5 1 
57 + 443 + 1195 + 1215	# Korneck 4 5 1 
133 + 492 + 1260 + 1285	# Korneck 5 5 1 
106 + 269 + 670 + 685	# Korneck 6 5 1 
42 + 83 + 205 + 210	# Korneck 7 5 1 
 - 1 + 1 + 6 + 6	# Korneck 0 6 1 
 - 1337 + 1985 + 10020 + 10038	# Korneck 1 6 1 
 - 3989 + 9173 + 40422 + 40566	# Korneck 2 6 1 
 - 647 + 2591 + 10254 + 10308	# Korneck 3 6 1 
 - 1145 + 11513 + 41862 + 42150	# Korneck 4 6 1 
17 + 631 + 2148 + 2166	# Korneck 5 6 1 
1867 + 13685 + 44310 + 44742	# Korneck 6 6 1 
859 + 3677 + 11478 + 11604	# Korneck 7 6 1 
 - 1 + 1 + 7 + 7	# Korneck 0 7 1 
 - 1052 + 1395 + 8589 + 8596	# Korneck 1 7 1 
 - 1749 + 3121 + 17255 + 17283	# Korneck 2 7 1 
 - 33 + 82 + 414 + 415	# Korneck 3 7 1 
 - 145 + 537 + 2511 + 2519	# Korneck 4 7 1 
 - 318 + 2033 + 8911 + 8946	# Korneck 5 7 1 
 - 83 + 1455 + 6041 + 6069	# Korneck 6 7 1 
73 + 2328 + 9240 + 9289	# Korneck 7 7 1 
1 - 1	# Korneck 0 0 2 
1 - 1	# Korneck 1 0 2 
1 - 1	# Korneck 2 0 2 
1 - 1	# Korneck 3 0 2 
1 - 1	# Korneck 4 0 2 
1 - 1	# Korneck 5 0 2 
1 - 1	# Korneck 6 0 2 
1 - 1	# Korneck 7 0 2 
2 - 2 - 1 - 1	# Korneck 0 1 2 
6 - 4 - 5 + 3	# Korneck 1 1 2 
46 - 30 - 27 + 37	# Korneck 2 1 2 
20 - 14 - 7 + 17	# Korneck 3 1 2 
126 - 94 - 23 + 105	# Korneck 4 1 2 
46 - 36 - 3 + 37	# Korneck 5 1 2 
254 - 206 + 5 + 197	# Korneck 6 1 2 
12 - 10 + 1 + 9	# Korneck 7 1 2 
0	# Korneck 0 2 2 
5 + 3 - 3 + 5	# Korneck 1 2 2 
3 + 1 - 1 + 3	# Korneck 2 2 2 
7 + 1 - 1 + 7	# Korneck 3 2 2 
1 + 1	# Korneck 4 2 2 
9 - 1 + 1 + 9	# Korneck 5 2 2 
5 - 1 + 1 + 5	# Korneck 6 2 2 
11 - 3 + 3 + 11	# Korneck 7 2 2 
 - 2 + 2 + 3 + 3	# Korneck 0 3 2 
22 + 140 + 75 + 147	# Korneck 1 3 2 
502 + 794 + 291 + 867	# Korneck 2 3 2 
244 + 242 + 93 + 309	# Korneck 3 3 2 
1510 + 1082 + 543 + 1695	# Korneck 4 3 2 
526 + 284 + 201 + 561	# Korneck 5 3 2 
2758 + 1130 + 1155 + 2883	# Korneck 6 3 2 
124 + 38 + 57 + 129	# Korneck 7 3 2 
 - 1 + 1 + 2 + 2	# Korneck 0 4 2 
 - 45 + 173 + 214 + 246	# Korneck 1 4 2 
7 + 57 + 54 + 70	# Korneck 2 4 2 
107 + 277 + 230 + 326	# Korneck 3 4 2 
3 + 5 + 4 + 6	# Korneck 4 4 2 
283 + 357 + 294 + 454	# Korneck 5 4 2 
95 + 97 + 86 + 134	# Korneck 6 4 2 
69 + 59 + 58 + 90	# Korneck 7 4 2 
 - 2 + 2 + 5 + 5	# Korneck 0 5 2 
 - 242 + 492 + 915 + 955	# Korneck 1 5 2 
 - 426 + 2426 + 3685 + 4005	# Korneck 2 5 2 
12 + 238 + 315 + 355	# Korneck 3 5 2 
742 + 3258 + 3945 + 4585	# Korneck 4 5 2 
342 + 908 + 1045 + 1245	# Korneck 5 5 2 
674 + 1326 + 1495 + 1815	# Korneck 6 5 2 
676 + 1074 + 1215 + 1495	# Korneck 7 5 2 
 - 1 + 1 + 3 + 3	# Korneck 0 6 2 
 - 563 + 887 + 2175 + 2211	# Korneck 1 6 2 
 - 49 + 130 + 273 + 282	# Korneck 2 6 2 
 - 215 + 1187 + 2211 + 2319	# Korneck 3 6 2 
 - 2 + 83 + 141 + 150	# Korneck 4 6 2 
157 + 1463 + 2319 + 2499	# Korneck 5 6 2 
44 + 199 + 300 + 327	# Korneck 6 6 2 
79 + 245 + 357 + 393	# Korneck 7 6 2 
 - 2 + 2 + 7 + 7	# Korneck 0 7 2 
 - 1830 + 2516 + 7609 + 7665	# Korneck 1 7 2 
 - 842 + 1626 + 4359 + 4423	# Korneck 2 7 2 
 - 1108 + 3166 + 7679 + 7847	# Korneck 3 7 2 
 - 2934 + 13910 + 31045 + 31941	# Korneck 4 7 2 
 - 10 + 108 + 225 + 233	# Korneck 5 7 2 
170 + 16294 + 32081 + 33425	# Korneck 6 7 2 
444 + 4358 + 8197 + 8589	# Korneck 7 7 2 
1 - 1	# Korneck 0 0 3 
1 - 1	# Korneck 1 0 3 
1 - 1	# Korneck 2 0 3 
1 - 1	# Korneck 3 0 3 
1 - 1	# Korneck 4 0 3 
1 - 1	# Korneck 5 0 3 
1 - 1	# Korneck 6 0 3 
1 - 1	# Korneck 7 0 3 
3 - 3 - 1 - 1	# Korneck 0 1 3 
150 - 141 - 83 - 2	# Korneck 1 1 3 
363 - 327 - 229 + 95	# Korneck 2 1 3 
231 - 204 - 140 + 103	# Korneck 3 1 3 
597 - 525 - 319 + 329	# Korneck 4 1 3 
384 - 339 - 173 + 232	# Korneck 5 1 3 
975 - 867 - 361 + 611	# Korneck 6 1 3 
87 - 78 - 26 + 55	# Korneck 7 1 3 
3 - 3 - 2 - 2	# Korneck 0 2 3 
147 - 75 - 140 + 22	# Korneck 1 2 3 
867 - 291 - 794 + 502	# Korneck 2 2 3 
309 - 93 - 242 + 244	# Korneck 3 2 3 
1695 - 543 - 1082 + 1510	# Korneck 4 2 3 
561 - 201 - 284 + 526	# Korneck 5 2 3 
2883 - 1155 - 1130 + 2758	# Korneck 6 2 3 
129 - 57 - 38 + 124	# Korneck 7 2 3 
0	# Korneck 0 3 3 
5 + 4 - 4 + 5	# Korneck 1 3 3 
11 + 7 - 7 + 11	# Korneck 2 3 3 
2 + 1 - 1 + 2	# Korneck 3 3 3 
13 + 5 - 5 + 13	# Korneck 4 3 3 
7 + 2 - 2 + 7	# Korneck 5 3 3 
5 + 1 - 1 + 5	# Korneck 6 3 3 
8 + 1 - 1 + 8	# Korneck 7 3 3 
 - 3 + 3 + 4 + 4	# Korneck 0 4 3 
 - 57 + 633 + 340 + 664	# Korneck 1 4 3 
1113 + 3495 + 964 + 3556	# Korneck 2 4 3 
645 + 1083 + 184 + 1156	# Korneck 3 4 3 
4173 + 5043 + 676 + 5860	# Korneck 4 4 3 
1473 + 1407 + 196 + 1816	# Korneck 5 4 3 
7737 + 6087 + 1060 + 8836	# Korneck 6 4 3 
2427 + 1605 + 376 + 2644	# Korneck 7 4 3 
 - 3 + 3 + 5 + 5	# Korneck 0 5 3 
 - 816 + 1941 + 2155 + 2560	# Korneck 1 5 3 
 - 399 + 4899 + 4085 + 5705	# Korneck 2 5 3 
453 + 2922 + 1990 + 3205	# Korneck 3 5 3 
2283 + 6717 + 3995 + 7235	# Korneck 4 5 3 
1866 + 3759 + 2065 + 4090	# Korneck 5 5 3 
5253 + 8247 + 4385 + 9245	# Korneck 6 5 3 
489 + 636 + 340 + 745	# Korneck 7 5 3 
 - 1 + 1 + 2 + 2	# Korneck 0 6 3 
 - 35 + 59 + 92 + 98	# Korneck 1 6 3 
 - 89 + 281 + 362 + 410	# Korneck 2 6 3 
 - 1 + 9 + 10 + 12	# Korneck 3 6 3 
19 + 365 + 362 + 458	# Korneck 4 6 3 
19 + 101 + 92 + 122	# Korneck 5 6 3 
15 + 49 + 42 + 58	# Korneck 6 6 3 
7 + 17 + 14 + 20	# Korneck 7 6 3 
 - 3 + 3 + 7 + 7	# Korneck 0 7 3 
 - 1029 + 1470 + 2890 + 2971	# Korneck 1 7 3 
 - 2796 + 5883 + 10052 + 10619	# Korneck 2 7 3 
 - 3936 + 13197 + 20083 + 21784	# Korneck 3 7 3 
 - 2235 + 14583 + 20167 + 22435	# Korneck 4 7 3 
 - 489 + 15924 + 20356 + 23191	# Korneck 5 7 3 
93 + 1230 + 1475 + 1718	# Korneck 6 7 3 
3138 + 18471 + 21049 + 25018	# Korneck 7 7 3 
1 - 1	# Korneck 0 0 4 
1 - 1	# Korneck 1 0 4 
1 - 1	# Korneck 2 0 4 
1 - 1	# Korneck 3 0 4 
1 - 1	# Korneck 4 0 4 
1 - 1	# Korneck 5 0 4 
1 - 1	# Korneck 6 0 4 
1 - 1	# Korneck 7 0 4 
4 - 4 - 1 - 1	# Korneck 0 1 4 
280 - 276 - 99 - 35	# Korneck 1 1 4 
1188 - 1156 - 509 + 3	# Korneck 2 1 4 
108 - 104 - 51 + 13	# Korneck 3 1 4 
1444 - 1380 - 705 + 319	# Korneck 4 1 4 
408 - 388 - 197 + 123	# Korneck 5 1 4 
620 - 588 - 287 + 225	# Korneck 6 1 4 
76 - 72 - 33 + 31	# Korneck 7 1 4 
2 - 2 - 1 - 1	# Korneck 0 2 4 
246 - 214 - 173 - 45	# Korneck 1 2 4 
70 - 54 - 57 + 7	# Korneck 2 2 4 
326 - 230 - 277 + 107	# Korneck 3 2 4 
6 - 4 - 5 + 3	# Korneck 4 2 4 
454 - 294 - 357 + 283	# Korneck 5 2 4 
134 - 86 - 97 + 95	# Korneck 6 2 4 
90 - 58 - 59 + 69	# Korneck 7 2 4 
4 - 4 - 3 - 3	# Korneck 0 3 4 
664 - 340 - 633 - 57	# Korneck 1 3 4 
3556 - 964 - 3495 + 1113	# Korneck 2 3 4 
1156 - 184 - 1083 + 645	# Korneck 3 3 4 
5860 - 676 - 5043 + 4173	# Korneck 4 3 4 
1816 - 196 - 1407 + 1473	# Korneck 5 3 4 
8836 - 1060 - 6087 + 7737	# Korneck 6 3 4 
2644 - 376 - 1605 + 2427	# Korneck 7 3 4 
0	# Korneck 0 4 4 
17 + 15 - 15 + 17	# Korneck 1 4 4 
9 + 7 - 7 + 9	# Korneck 2 4 4 
19 + 13 - 13 + 19	# Korneck 3 4 4 
5 + 3 - 3 + 5	# Korneck 4 4 4 
21 + 11 - 11 + 21	# Korneck 5 4 4 
11 + 5 - 5 + 11	# Korneck 6 4 4 
23 + 9 - 9 + 23	# Korneck 7 4 4 
 - 4 + 4 + 5 + 5	# Korneck 0 5 4 
 - 168 + 668 + 385 + 705	# Korneck 1 5 4 
436 + 3564 + 1035 + 3595	# Korneck 2 5 4 
404 + 1096 + 155 + 1115	# Korneck 3 5 4 
2868 + 5132 + 295 + 5415	# Korneck 4 5 4 
1048 + 1452 + 15 + 1615	# Korneck 5 5 4 
5588 + 6412 - 85 + 7595	# Korneck 6 5 4 
252 + 248 - 5 + 315	# Korneck 7 5 4 
 - 2 + 2 + 3 + 3	# Korneck 0 6 4 
 - 2930 + 5522 + 5853 + 7005	# Korneck 1 6 4 
 - 386 + 1682 + 1353 + 1929	# Korneck 2 6 4 
 - 98 + 7874 + 5061 + 8517	# Korneck 3 6 4 
22 + 140 + 75 + 147	# Korneck 4 6 4 
2974 + 9986 + 4629 + 10389	# Korneck 5 6 4 
1150 + 2738 + 1137 + 2865	# Korneck 6 6 4 
898 + 1694 + 651 + 1803	# Korneck 7 6 4 
 - 4 + 4 + 7 + 7	# Korneck 0 7 4 
 - 392 + 588 + 831 + 895	# Korneck 1 7 4 
 - 8100 + 19076 + 22603 + 26187	# Korneck 2 7 4 
 - 428 + 1800 + 1841 + 2289	# Korneck 3 7 4 
 - 2084 + 24036 + 21735 + 28903	# Korneck 4 7 4 
264 + 6596 + 5383 + 7623	# Korneck 5 7 4 
204 + 1364 + 1023 + 1535	# Korneck 6 7 4 
1900 + 7704 + 5397 + 8533	# Korneck 7 7 4 
1 - 1	# Korneck 0 0 5 
1 - 1	# Korneck 1 0 5 
1 - 1	# Korneck 2 0 5 
1 - 1	# Korneck 3 0 5 
1 - 1	# Korneck 4 0 5 
1 - 1	# Korneck 5 0 5 
1 - 1	# Korneck 6 0 5 
1 - 1	# Korneck 7 0 5 
5 - 5 - 1 - 1	# Korneck 0 1 5 
1095 - 1090 - 278 - 153	# Korneck 1 1 5 
560 - 555 - 168 - 43	# Korneck 2 1 5 
1160 - 1145 - 391 - 16	# Korneck 3 1 5 
1215 - 1195 - 443 + 57	# Korneck 4 1 5 
1285 - 1260 - 492 + 133	# Korneck 5 1 5 
685 - 670 - 269 + 106	# Korneck 6 1 5 
210 - 205 - 83 + 42	# Korneck 7 1 5 
5 - 5 - 2 - 2	# Korneck 0 2 5 
955 - 915 - 492 - 242	# Korneck 1 2 5 
4005 - 3685 - 2426 - 426	# Korneck 2 2 5 
355 - 315 - 238 + 12	# Korneck 3 2 5 
4585 - 3945 - 3258 + 742	# Korneck 4 2 5 
1245 - 1045 - 908 + 342	# Korneck 5 2 5 
1815 - 1495 - 1326 + 674	# Korneck 6 2 5 
1495 - 1215 - 1074 + 676	# Korneck 7 2 5 
5 - 5 - 3 - 3	# Korneck 0 3 5 
2560 - 2155 - 1941 - 816	# Korneck 1 3 5 
5705 - 4085 - 4899 - 399	# Korneck 2 3 5 
3205 - 1990 - 2922 + 453	# Korneck 3 3 5 
7235 - 3995 - 6717 + 2283	# Korneck 4 3 5 
4090 - 2065 - 3759 + 1866	# Korneck 5 3 5 
9245 - 4385 - 8247 + 5253	# Korneck 6 3 5 
745 - 340 - 636 + 489	# Korneck 7 3 5 
5 - 5 - 4 - 4	# Korneck 0 4 5 
705 - 385 - 668 - 168	# Korneck 1 4 5 
3595 - 1035 - 3564 + 436	# Korneck 2 4 5 
1115 - 155 - 1096 + 404	# Korneck 3 4 5 
5415 - 295 - 5132 + 2868	# Korneck 4 4 5 
1615 - 15 - 1452 + 1048	# Korneck 5 4 5 
7595 + 85 - 6412 + 5588	# Korneck 6 4 5 
315 + 5 - 248 + 252	# Korneck 7 4 5 
0	# Korneck 0 5 5 
13 + 12 - 12 + 13	# Korneck 1 5 5 
27 + 23 - 23 + 27	# Korneck 2 5 5 
14 + 11 - 11 + 14	# Korneck 3 5 5 
29 + 21 - 21 + 29	# Korneck 4 5 5 
3 + 2 - 2 + 3	# Korneck 5 5 5 
31 + 19 - 19 + 31	# Korneck 6 5 5 
16 + 9 - 9 + 16	# Korneck 7 5 5 
 - 5 + 5 + 6 + 6	# Korneck 0 6 5 
 - 1865 + 5105 + 3156 + 5406	# Korneck 1 6 5 
 - 485 + 26405 + 8718 + 26718	# Korneck 2 6 5 
1705 + 8015 + 1302 + 8052	# Korneck 3 6 5 
14455 + 37385 + 2094 + 38094	# Korneck 4 6 5 
5605 + 10595 - 156 + 11094	# Korneck 5 6 5 
30715 + 47045 - 2946 + 51054	# Korneck 6 6 5 
1405 + 1835 - 174 + 2076	# Korneck 7 6 5 
 - 5 + 5 + 7 + 7	# Korneck 0 7 5 
 - 2670 + 4385 + 4543 + 5418	# Korneck 1 7 5 
 - 505 + 1485 + 1191 + 1691	# Korneck 2 7 5 
 - 835 + 5980 + 3836 + 6461	# Korneck 3 7 5 
255 + 13465 + 7091 + 14091	# Korneck 4 7 5 
160 + 1065 + 471 + 1096	# Korneck 5 7 5 
4285 + 16295 + 6181 + 16681	# Korneck 6 7 5 
3195 + 8810 + 2926 + 9051	# Korneck 7 7 5 
1 - 1	# Korneck 0 0 6 
1 - 1	# Korneck 1 0 6 
1 - 1	# Korneck 2 0 6 
1 - 1	# Korneck 3 0 6 
1 - 1	# Korneck 4 0 6 
1 - 1	# Korneck 5 0 6 
1 - 1	# Korneck 6 0 6 
1 - 1	# Korneck 7 0 6 
6 - 6 - 1 - 1	# Korneck 0 1 6 
10038 - 10020 - 1985 - 1337	# Korneck 1 1 6 
40566 - 40422 - 9173 - 3989	# Korneck 2 1 6 
10308 - 10254 - 2591 - 647	# Korneck 3 1 6 
42150 - 41862 - 11513 - 1145	# Korneck 4 1 6 
2166 - 2148 - 631 + 17	# Korneck 5 1 6 
44742 - 44310 - 13685 + 1867	# Korneck 6 1 6 
11604 - 11478 - 3677 + 859	# Korneck 7 1 6 
3 - 3 - 1 - 1	# Korneck 0 2 6 
2211 - 2175 - 887 - 563	# Korneck 1 2 6 
282 - 273 - 130 - 49	# Korneck 2 2 6 
2319 - 2211 - 1187 - 215	# Korneck 3 2 6 
150 - 141 - 83 - 2	# Korneck 4 2 6 
2499 - 2319 - 1463 + 157	# Korneck 5 2 6 
327 - 300 - 199 + 44	# Korneck 6 2 6 
393 - 357 - 245 + 79	# Korneck 7 2 6 
2 - 2 - 1 - 1	# Korneck 0 3 6 
98 - 92 - 59 - 35	# Korneck 1 3 6 
410 - 362 - 281 - 89	# Korneck 2 3 6 
12 - 10 - 9 - 1	# Korneck 3 3 6 
458 - 362 - 365 + 19	# Korneck 4 3 6 
122 - 92 - 101 + 19	# Korneck 5 3 6 
58 - 42 - 49 + 15	# Korneck 6 3 6 
20 - 14 - 17 + 7	# Korneck 7 3 6 
3 - 3 - 2 - 2	# Korneck 0 4 6 
7005 - 5853 - 5522 - 2930	# Korneck 1 4 6 
1929 - 1353 - 1682 - 386	# Korneck 2 4 6 
8517 - 5061 - 7874 - 98	# Korneck 3 4 6 
147 - 75 - 140 + 22	# Korneck 4 4 6 
10389 - 4629 - 9986 + 2974	# Korneck 5 4 6 
2865 - 1137 - 2738 + 1150	# Korneck 6 4 6 
1803 - 651 - 1694 + 898	# Korneck 7 4 6 
6 - 6 - 5 - 5	# Korneck 0 5 6 
5406 - 3156 - 5105 - 1865	# Korneck 1 5 6 
26718 - 8718 - 26405 - 485	# Korneck 2 5 6 
8052 - 1302 - 8015 + 1705	# Korneck 3 5 6 
38094 - 2094 - 37385 + 14455	# Korneck 4 5 6 
11094 + 156 - 10595 + 5605	# Korneck 5 5 6 
51054 + 2946 - 47045 + 30715	# Korneck 6 5 6 
2076 + 174 - 1835 + 1405	# Korneck 7 5 6 
0	# Korneck 0 6 6 
37 + 35 - 35 + 37	# Korneck 1 6 6 
19 + 17 - 17 + 19	# Korneck 2 6 6 
13 + 11 - 11 + 13	# Korneck 3 6 6 
5 + 4 - 4 + 5	# Korneck 4 6 6 
41 + 31 - 31 + 41	# Korneck 5 6 6 
7 + 5 - 5 + 7	# Korneck 6 6 6 
43 + 29 - 29 + 43	# Korneck 7 6 6 
 - 6 + 6 + 7 + 7	# Korneck 0 7 6 
 - 5046 + 11220 + 7357 + 11893	# Korneck 1 7 6 
 - 7134 + 56526 + 21175 + 57463	# Korneck 2 7 6 
228 + 2418 + 481 + 2425	# Korneck 3 7 6 
2910 + 11202 + 901 + 11269	# Korneck 4 7 6 
8706 + 22164 - 77 + 22603	# Korneck 5 7 6 
49746 + 98430 - 6377 + 102487	# Korneck 6 7 6 
16284 + 26934 - 2975 + 28777	# Korneck 7 7 6 
1 - 1	# Korneck 0 0 7 
1 - 1	# Korneck 1 0 7 
1 - 1	# Korneck 2 0 7 
1 - 1	# Korneck 3 0 7 
1 - 1	# Korneck 4 0 7 
1 - 1	# Korneck 5 0 7 
1 - 1	# Korneck 6 0 7 
1 - 1	# Korneck 7 0 7 
7 - 7 - 1 - 1	# Korneck 0 1 7 
8596 - 8589 - 1395 - 1052	# Korneck 1 1 7 
17283 - 17255 - 3121 - 1749	# Korneck 2 1 7 
415 - 414 - 82 - 33	# Korneck 3 1 7 
2519 - 2511 - 537 - 145	# Korneck 4 1 7 
8946 - 8911 - 2033 - 318	# Korneck 5 1 7 
6069 - 6041 - 1455 - 83	# Korneck 6 1 7 
9289 - 9240 - 2328 + 73	# Korneck 7 1 7 
7 - 7 - 2 - 2	# Korneck 0 2 7 
7665 - 7609 - 2516 - 1830	# Korneck 1 2 7 
4423 - 4359 - 1626 - 842	# Korneck 2 2 7 
7847 - 7679 - 3166 - 1108	# Korneck 3 2 7 
31941 - 31045 - 13910 - 2934	# Korneck 4 2 7 
233 - 225 - 108 - 10	# Korneck 5 2 7 
33425 - 32081 - 16294 + 170	# Korneck 6 2 7 
8589 - 8197 - 4358 + 444	# Korneck 7 2 7 
7 - 7 - 3 - 3	# Korneck 0 3 7 
2971 - 2890 - 1470 - 1029	# Korneck 1 3 7 
10619 - 10052 - 5883 - 2796	# Korneck 2 3 7 
21784 - 20083 - 13197 - 3936	# Korneck 3 3 7 
22435 - 20167 - 14583 - 2235	# Korneck 4 3 7 
23191 - 20356 - 15924 - 489	# Korneck 5 3 7 
1718 - 1475 - 1230 + 93	# Korneck 6 3 7 
25018 - 21049 - 18471 + 3138	# Korneck 7 3 7 
7 - 7 - 4 - 4	# Korneck 0 4 7 
895 - 831 - 588 - 392	# Korneck 1 4 7 
26187 - 22603 - 19076 - 8100	# Korneck 2 4 7 
2289 - 1841 - 1800 - 428	# Korneck 3 4 7 
28903 - 21735 - 24036 - 2084	# Korneck 4 4 7 
7623 - 5383 - 6596 + 264	# Korneck 5 4 7 
1535 - 1023 - 1364 + 204	# Korneck 6 4 7 
8533 - 5397 - 7704 + 1900	# Korneck 7 4 7 
7 - 7 - 5 - 5	# Korneck 0 5 7 
5418 - 4543 - 4385 - 2670	# Korneck 1 5 7 
1691 - 1191 - 1485 - 505	# Korneck 2 5 7 
6461 - 3836 - 5980 - 835	# Korneck 3 5 7 
14091 - 7091 - 13465 + 255	# Korneck 4 5 7 
1096 - 471 - 1065 + 160	# Korneck 5 5 7 
16681 - 6181 - 16295 + 4285	# Korneck 6 5 7 
9051 - 2926 - 8810 + 3195	# Korneck 7 5 7 
7 - 7 - 6 - 6	# Korneck 0 6 7 
11893 - 7357 - 11220 - 5046	# Korneck 1 6 7 
57463 - 21175 - 56526 - 7134	# Korneck 2 6 7 
2425 - 481 - 2418 + 228	# Korneck 3 6 7 
11269 - 901 - 11202 + 2910	# Korneck 4 6 7 
22603 + 77 - 22164 + 8706	# Korneck 5 6 7 
102487 + 6377 - 98430 + 49746	# Korneck 6 6 7 
28777 + 2975 - 26934 + 16284	# Korneck 7 6 7 
0	# Korneck 0 7 7 
25 + 24 - 24 + 25	# Korneck 1 7 7 
51 + 47 - 47 + 51	# Korneck 2 7 7 
26 + 23 - 23 + 26	# Korneck 3 7 7 
53 + 45 - 45 + 53	# Korneck 4 7 7 
27 + 22 - 22 + 27	# Korneck 5 7 7 
55 + 43 - 43 + 55	# Korneck 6 7 7 
4 + 3 - 3 + 4	# Korneck 7 7 7 

