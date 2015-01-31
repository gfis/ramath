#!/usr/bin/perl

#------------------------------------------------------------------ 
# Iterate through parameter coefficients of a^2 + b^2 = c^2
# @(#) $Id: parm2.pl 221 2009-08-11 06:08:05Z gfis $
# 2009-06-09. Georg Fischer: copied from parm2.pl
#
# Usage: 
#   perl parm2.pl limit
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
	my $imax = 2; # index of last valid parameter/coefficient
	my $count = 0;
	my $k = 2; # exponent
	# print $limit**2;
	my @x = (0, 0, 0, 0, 0, 0, 0, 0);
	my @y = (0, 0, 0, 0, 0, 0, 0, 0);
	my @z = (0, 0, 0, 0, 0, 0, 0, 0);
	my ($coeff4, $coeff3, $coeff2, $coeff1, $coeff0); # coefficients of n**i for z polynom
	my @power = (0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225);
	my %root; # {x2} is defined and = x for x where x2 = x**2
	my $ipw;
	for ($ipw = 0; $ipw < scalar(@power); $ipw ++) {
		$root{$power[$ipw]} = $ipw;
	} # for $ipw

	# iterate through x and y, compute z and check for a^2 + b^2 = c^2
	$x[2] = 0; while ($x[2] != $limit) {
	$y[2] = 0; while ($y[2] != $limit) {
		$coeff4 = $x[2]**2 + $y[2]**2; # coeffcient of n**4 of z/c
		if (defined($root{$coeff4})) {
			$z[2] = $root{$coeff4};

			$x[0] = 0; while ($x[0] != $limit) {
			$y[0] = 0; while ($y[0] != $limit) {
				$coeff0 = $x[0]**2 + $y[0]**2;	
				if (defined($root{$coeff0})) {
					$z[0] = $root{$coeff0};

					$x[1] = 0; while ($x[1] != $limit) {
					$y[1] = 0; while ($y[1] != $limit) {
						&test();
					$y[1] = &next($y[1]); } # while $y[1]
					$x[1] = &next($x[1]); } # while $x[1]

				} # defined coeff0
			$y[0] = &next($y[0]); } # while $y[0]
			$x[0] = &next($x[0]); } # while $x[0]

		} # defined coeff4
	$y[2] = &next($y[2]); } # while $y[2]
	$x[2] = &next($x[2]); } # while $x[2]
	exit;

sub test {
	# check for zero columns
	if (abs($x[2]) + abs($x[1]) + abs($x[0]) == 0) { return; }
	if (abs($y[2]) + abs($y[1]) + abs($y[0]) == 0) { return; }
	
	$coeff3 = 2*$x[2]*$x[1]            
	        + 2*$y[2]*$y[1]
	        ;
	$coeff2 = 2*$x[2]*$x[0] + $x[1]*$x[1] 
	        + 2*$y[2]*$y[0] + $y[1]*$y[1]
	        ;
	$coeff1 = 2*$x[1]*$x[0]            
	        + 2*$y[1]*$y[0]
	        ;
	if (0) {
	} elsif ($z[2] != 0) {
		$z[1] = int($coeff3 / (2*$z[2]));
	} elsif ($z[0] != 0) {
		$z[1] = int($coeff1 / (2*$z[0]));
	} else { # z2=0 && z0=0
		if (! defined($root{$coeff2})) {
			return;
		} 
		$z[1] = $root{$coeff2};
	} # z2=0 && z0=0
	if  (0
		|| $coeff3 != 2*$z[2]*$z[1]
		|| $coeff2 != 2*$z[2]*$z[0] + $z[1]*$z[1] 
		|| $coeff1 != 2*$z[1]*$z[0]
		) {
		return;
	}

	$count ++;
	print "# $count -------------------------------\n";
	my $ind;
	for ($ind = $imax; $ind >= 0; $ind --) {
		print sprintf("%3d %3d %3d\n", $x[$ind], $y[$ind], $z[$ind]);
	} # for $ind
	print "= ";
	my $n = 0;
	my $show = 0;
	while ($show < 8 && $n < 512) {
		my $a = $x[2]*$n*$n + $x[1]*$n + $x[0]; 
		my $b = $y[2]*$n*$n + $y[1]*$n + $y[0]; 
		my $c = $z[2]*$n*$n + $z[1]*$n + $z[0];
		if (1) { # since k is even anyway
			$a = abs($a);
			$b = abs($b);
			$c = abs($c);
		}
		if ($a > $b) { # interchange such that a is smallest
			my $temp = $a;
			$a = $b;
			$b = $temp;
		}
		if ($a > 0) {
			print "$a $b $c;";
			print ($a**2 + $b**2 == $c**2 ? "! " : "??? "); 
			$show ++;
		}
		$n ++;
	} # for $n
	print " ($x[2],$x[1],$x[0])";
	print "+($y[2],$y[1],$y[0])";
	print "=($z[2],$z[1],$z[0])";
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

