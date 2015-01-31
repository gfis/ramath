#!/usr/bin/perl

#------------------------------------------------------------------ 
# Iterate through parameter coefficients of a^3 + b^3 + c^2 = d^3
# @(#) $Id: parm3.3.pl 221 2009-08-11 06:08:05Z gfis $
# 2009-06-10, Georg Fischer: copied from parm2.pl
# Usage: 
#   perl parm3.pl limit
#------------------------------------------------------------------ 
#
#  Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
# 
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
# 
#       http://www.apache.org/licenses/LICENSE-2.0
# 
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

use strict;

	my $limit = shift(@ARGV); # iterate up to -/+$limit
	my $base = $limit + 1; # digit base for id sums of vectors
	$limit = - ($limit + 1);
	my $imax = 3; # index of last valid parameter/coefficient
	my $count = 0;
	my $k = 3; # exponent
	# print $limit**2;
	my @w = (0, 0, 0, 0, 0, 0, 0, 0);
	my @x = (0, 0, 0, 0, 0, 0, 0, 0);
	my @y = (0, 0, 0, 0, 0, 0, 0, 0);
	my @z = (0, 0, 0, 0, 0, 0, 0, 0);
	my ($coeff9, $coeff8, $coeff7, $coeff6, $coeff5, $coeff4, $coeff3, $coeff2, $coeff1, $coeff0); # coefficients of n**i for z polynom
	my @power = (0, 1, 8, 27, 64, 125, 216, 343, 512, 729, 1000);
	my $ipw;
	for ($ipw = 0; $ipw < 20; $ipw ++) {
		$power[$ipw] = $ipw**$k;
	}
	my %root; # {x2} is defined and = x for x where x2 = x**2
	for ($ipw = 0; $ipw < scalar(@power); $ipw ++) {
		$root{$power[$ipw]} = $ipw;
	} # for $ipw
	
	# iterate through x and y, compute z and check for a^2 + b^2 = c^2
	$w[3] = 0; while ($w[3] != $limit) {
	$x[3] = 0; while ($x[3] != $limit) {
	$y[3] = 0; while ($y[3] != $limit) {
		$coeff9 =   $w[3]*$w[3]*$w[3]
		        +   $x[3]*$x[3]*$x[3]
		        +   $y[3]*$y[3]*$y[3]
		        ; 
		if (defined($root{$coeff9})) {
			$z[3] = $root{$coeff9};

			$w[0] = 0; while ($w[0] != $limit) {
			$x[0] = 0; while ($x[0] != $limit) {
			$y[0] = 0; while ($y[0] != $limit) {
				$coeff0 =   $w[0]*$w[0]*$w[0]
			            +   $x[0]*$x[0]*$x[0]
			            +   $y[0]*$y[0]*$y[0]
						; 
				if (defined($root{$coeff0})) {
					$z[0] = $root{$coeff0};

					$w[2] = 0; while ($w[2] != $limit) {
					$x[2] = 0; while ($x[2] != $limit) {
					$y[2] = 0; while ($y[2] != $limit) {

						$w[1] = 0; while ($w[1] != $limit) {
						$x[1] = 0; while ($x[1] != $limit) {
						$y[1] = 0; while ($y[1] != $limit) {

							&test();

						$y[1] = &next($y[1]); } # while $y[1]
						$x[1] = &next($x[1]); } # while $x[1]
						$w[1] = &next($w[1]); } # while $w[1]

					$y[2] = &next($y[2]); } # while $y[2]
					$x[2] = &next($x[2]); } # while $x[2]
					$w[2] = &next($w[2]); } # while $w[2]
				} # defined coeff0

			$y[0] = &next($y[0]); } # while $y[0]
			$x[0] = &next($x[0]); } # while $x[0]
			$w[0] = &next($w[0]); } # while $w[0]
		} # defined coeff9
		
	$y[3] = &next($y[3]); } # while $y[3]
	$x[3] = &next($x[3]); } # while $x[3]
	$w[3] = &next($w[3]); } # while $w[3]
	exit;
	
sub test {
	$count ++;
	# check for zero columns
	if (abs($w[3]) + abs($w[2]) + abs($w[1]) + abs($w[0]) == 0) { return; }
	if (abs($x[3]) + abs($x[2]) + abs($x[1]) + abs($x[0]) == 0) { return; }
	if (abs($y[3]) + abs($y[2]) + abs($y[1]) + abs($y[0]) == 0) { return; }

	$coeff8 = 3*$w[3]*$w[3]*$w[2]                       
	        + 3*$x[3]*$x[3]*$x[2]                     
	        + 3*$y[3]*$y[3]*$y[2]
	        ;  
	$coeff7 = 3*$w[3]*$w[3]*$w[1] + 3*$w[3]*$w[2]*$w[2] 
	        + 3*$x[3]*$x[3]*$x[1] + 3*$x[3]*$x[2]*$x[2] 
	        + 3*$y[3]*$y[3]*$y[1] + 3*$y[3]*$y[2]*$y[2]
	        ;  
	$coeff6 =   $w[2]*$w[2]*$w[2] + 3*$w[3]*$w[2]*$w[1] + 3*$w[3]*$w[3]*$w[0] 
		    +   $x[2]*$x[2]*$x[2] + 3*$x[3]*$x[2]*$x[1] + 3*$x[3]*$x[3]*$x[0] 
		    +   $y[2]*$y[2]*$y[2] + 3*$y[3]*$y[2]*$y[1] + 3*$y[3]*$y[3]*$y[0] 
		    ;  
	$coeff5 = 3*$w[3]*$w[1]*$w[1] + 3*$w[2]*$w[2]*$w[1] + 3*$w[3]*$w[2]*$w[0] 
	 	    + 3*$x[3]*$x[1]*$x[1] + 3*$x[2]*$x[2]*$x[1] + 3*$x[3]*$x[2]*$x[0] 
		    + 3*$y[3]*$y[1]*$y[1] + 3*$y[2]*$y[2]*$y[1] + 3*$y[3]*$y[2]*$y[0] 
			;  
	$coeff4 = 3*$w[3]*$w[1]*$w[0] + 3*$w[2]*$w[2]*$w[0] + 3*$w[2]*$w[1]*$w[1] 
	 	    + 3*$x[3]*$x[1]*$x[0] + 3*$x[2]*$x[2]*$x[0] + 3*$x[2]*$x[1]*$x[1] 
			+ 3*$y[3]*$y[1]*$y[0] + 3*$y[2]*$y[2]*$y[0] + 3*$y[2]*$y[1]*$y[1] 
			;  
	$coeff3 =   $w[1]*$w[1]*$w[1] + 3*$w[2]*$w[1]*$w[0] + 3*$w[3]*$w[0]*$w[0] 
			+   $x[1]*$x[1]*$x[1] + 3*$x[2]*$x[1]*$x[0] + 3*$x[3]*$x[0]*$x[0] 
			+   $y[1]*$y[1]*$y[1] + 3*$y[2]*$y[1]*$y[0] + 3*$y[3]*$y[0]*$y[0]
			;  
	$coeff2 = 3*$w[1]*$w[1]*$w[0] + 3*$w[2]*$w[0]*$w[0] 
	        + 3*$x[1]*$x[1]*$x[0] + 3*$x[2]*$x[0]*$x[0] 
	        + 3*$y[1]*$y[1]*$y[0] + 3*$y[2]*$y[0]*$y[0]
	        ;  
	$coeff1 = 3*$w[1]*$w[0]*$w[0]                       
	        + 3*$x[1]*$x[0]*$x[0]                     
	        + 3*$y[1]*$y[0]*$y[0]
	        ;  
	my $z3_23 = 0; 
	if (0) {
	} elsif ($z[3] != 0) {
		$z[2] = int(($coeff8                      ) / (3*$z[3]*$z[3]));
		$z[1] = int(($coeff7 - 3*$z[3]*$z[2]*$z[2]) / (3*$z[3]*$z[3]));
	} elsif ($z[0] != 0) {
		$z[1] = int(($coeff1                      ) / (3*$z[0]*$z[0]));
		$z[2] = int(($coeff2 - 3*$z[1]*$z[1]*$z[0]) / (3*$z[0]*$z[0]));
	} else { # z3=0 && z0=0
		if (! defined($root{$coeff6})) {
			return;
		} 
		if (! defined($root{$coeff3})) {
			return;
		} 
		$z[2] = $root{$coeff6};
		$z[1] = $root{$coeff3};
	} # z2=0 && z0=0
	if  (0
		|| $coeff8 != 3*$z[3]*$z[3]*$z[2]
		|| $coeff7 != 3*$z[3]*$z[3]*$z[1] + 3*$z[3]*$z[2]*$z[2] 
		|| $coeff6 !=   $z[2]*$z[2]*$z[2] + 3*$z[3]*$z[2]*$z[1] + 3*$z[3]*$z[3]*$z[0] 
		|| $coeff5 != 3*$z[2]*$z[2]*$z[1] + 3*$z[3]*$z[1]*$z[1] + 3*$z[3]*$z[2]*$z[0] 
		|| $coeff4 != 3*$z[2]*$z[1]*$z[1] + 3*$z[2]*$z[2]*$z[0] + 3*$z[3]*$z[1]*$z[0]  
		|| $coeff3 !=   $z[1]*$z[1]*$z[1] + 3*$z[2]*$z[1]*$z[0] + 3*$z[3]*$z[0]*$z[0] 
		|| $coeff2 != 3*$z[1]*$z[1]*$z[0] + 3*$z[2]*$z[0]*$z[0] 
		|| $coeff1 != 3*$z[1]*$z[0]*$z[0]
		) {
		return;
	}

	print "# $count -------------------------------\n";
	my $ind;
	for ($ind = $imax; $ind >= 0; $ind --) {
		print sprintf("%3d %3d %3d %3d\n", $w[$ind], $x[$ind], $y[$ind], $z[$ind]);
	} # for $ind
	print "= ";
	my $n = 0;
	my $show = 0;
	while ($show < 8 && $n < 512) {
		my $a = $w[3]*$n*$n*$n + $w[2]*$n*$n + $w[1]*$n + $w[0]; 
		my $b = $x[3]*$n*$n*$n + $x[2]*$n*$n + $x[1]*$n + $x[0]; 
		my $c = $y[3]*$n*$n*$n + $y[2]*$n*$n + $y[1]*$n + $y[0]; 
		my $d = $z[3]*$n*$n*$n + $z[2]*$n*$n + $z[1]*$n + $z[0];
		my ($aa, $ab, $ac, $ad);
		if (0) { # not for odd exponent
			$aa = abs($a);
			$ab = abs($b);
			$ac = abs($c);
			$ad = abs($d);
			if  (0
			|| $aa == $ab 
			|| $aa == $ab 
			|| $aa == $ac 
			|| $aa == $ad 
			|| $ab == $ac 
			|| $ab == $ad 
			|| $ac == $ad 
			) {
			return;
			}
		}
		if ($a > $b) { # interchange such that a is smallest
			my $temp = $a;
			$a = $b;
			$b = $temp;
		}
		if (abs($a) > 0 && abs($b) > 0 && abs($c) > 0 && abs($d) > 0) {
			print "$a $b $c $d;";
			print ($a**3 + $b**3 + $c**3 == $d**3 ? "! " : "??? "); 
			$show ++;
		}
		$n ++;
	} # for $n
	print " ($w[3],$w[2],$w[1],$w[0])";
	print "+($x[3],$x[2],$x[1],$x[0])";
	print "+($y[3],$y[2],$y[1],$y[0])";
	print "=($z[3],$z[2],$z[1],$z[0])";
	print "\n";
} # test
sub next {
	my ($p) = @_;
	if ($p >= 0) {
		$p = - $p - 1;
	} else {
		$p = - $p;
	}
	return $p;
} # next

