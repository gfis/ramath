#!/usr/bin/perl

#------------------------------------------------------------------ 
# Iterate through parameter coefficients of a^3 + b^3 + c^2 = d^3
# @(#) $Id: parm3.160.pl 221 2009-08-11 06:08:05Z gfis $
# 2009-06-12: x4...x0 for Vieta
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
	my $base2 = ($limit + 1); # half of digit base for id sums of vectors
	my $base  = $base2 * 2;
	$base2 = 5;
	$base = 10;
	$limit = - ($limit + 1);
	my $imax = 4; # index of last valid parameter/coefficient
	my $count = 0;
	my $k = 3; # exponent
	# print $limit**2;
	my @w;
	my @x;
	my @y;
	my @z;
	@w = ( 0,-2, 0, 0, 1);
	@x = (-1, 0, 0, 2, 0);
	@y = ( 1, 0, 0, 1, 0);
	@z = ( 0, 1, 0, 0, 1);
	if (1) {
		print "test Vieta=" . &test() . "\n"; 
		# exit;
	} 
	# = 6 -1 -3 5;??? 35 -7 -29 23;???  (1,1,2,1,1)+(0,-1,1,-2,1)+(-1,-1,-2,2,-1)=(0,2,1,1,1)
	@w = ( 1, 1, 2, 1, 1);
	@x = ( 1,-2, 1,-1, 0);
	@y = (-1, 2,-2,-1,-1);
	@z = ( 1, 1, 1, 2, 0);
	if (1) {
		print "test wrong1=" . &test() . "\n"; 
		# exit;
	} 
	@w = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	@x = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	@y = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	@z = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	my (  $coeff12
		, $coeff11, $coeff10, $coeff09
		, $coeff08, $coeff07, $coeff06
		, $coeff05, $coeff04, $coeff03
		, $coeff02, $coeff01, $coeff00); # coefficients of n**i for z polynom
	my ($d3z4z4, $d3z3z3, $d3z2z2, $d3z1z1, $d3z0z0);
	my %root; # {x2} is defined and = x for x where x2 = x**2
	my $ipw;
	for ($ipw = 0; $ipw < 256; $ipw ++) {
		$root{(- $ipw)**$k} = - $ipw; # overwrite this for even exponents k
		$root{(  $ipw)**$k} =   $ipw;
	} # for $ipw
	
	# iterate through x and y, compute z and check for a^2 + b^2 = c^2
	$w[4] = 0; while ($w[4] != $limit) {
	$x[4] = 0; while ($x[4] != $limit) {
	$y[4] = 0; while ($y[4] != $limit) {
		$coeff12 = 0
			 +   $w[4]*$w[4]*$w[4]
		     +   $x[4]*$x[4]*$x[4]
		     +   $y[4]*$y[4]*$y[4]
		     ; 
		if (defined($root{$coeff12})) {
			$z[4] = $root{$coeff12};
			$d3z4z4 = 3*$z[4]*$z[4];
			
			$w[0] = 0; while ($w[0] != $limit) {
			$x[0] = 0; while ($x[0] != $limit) {
			$y[0] = 0; while ($y[0] != $limit) {
				$coeff00 = 0
			     +   $w[0]*$w[0]*$w[0]
				 +   $x[0]*$x[0]*$x[0]
				 +   $y[0]*$y[0]*$y[0]
				 ; 
				if (defined($root{$coeff00})) {
					$z[0] = $root{$coeff00};
					$d3z0z0 = 3*$z[0]*$z[0];
					
					$w[3] = 0; while ($w[3] != $limit) {
					$x[3] = 0; while ($x[3] != $limit) {
					$y[3] = 0; while ($y[3] != $limit) {

						$coeff11 = 0
						 + 3*$w[4]*$w[4]*$w[3]                       
				         + 3*$x[4]*$x[4]*$x[3]                     
				         + 3*$y[4]*$y[4]*$y[3]
				         ;  
						if ($z[4] == 0 || $coeff11 % $d3z4z4 == 0) {
							$w[1] = 0; while ($w[1] != $limit) {
							$x[1] = 0; while ($x[1] != $limit) {
							$y[1] = 0; while ($y[1] != $limit) {
	
								$coeff01 = 0
								 + 3*$w[1]*$w[0]*$w[0]                       
					 	         + 3*$x[1]*$x[0]*$x[0]                     
					 	         + 3*$y[1]*$y[0]*$y[0]
								 ;  
								if ($z[0] == 0 || $coeff01 % $d3z0z0 == 0) {
						  			if (1) {
										$w[2] = 0; while ($w[2] != $limit) {
										$x[2] = 0; while ($x[2] != $limit) {
										$y[2] = 0; while ($y[2] != $limit) {
											&test();
											# print "test result: " . &test() . "\n";
										$y[2] = &next($y[2]); } # while $y[2]
										$x[2] = &next($x[2]); } # while $x[2]
										$w[2] = &next($w[2]); } # while $w[2]
									} else {
										$w[2] = 0;
										$x[2] = 0;
										$y[2] = 0;
											&test();
											# print "test result: " . &test() . "\n";
									}
								} # $z[0] == 0 || $coeff01 % $d3z0z0 == 0
							$y[1] = &next($y[1]); } # while $y[1]
							$x[1] = &next($x[1]); } # while $x[1]
							$w[1] = &next($w[1]); } # while $w[1]
						} # $z[4] == 0 || $coeff11 % $d3z4z4 == 0

					$y[3] = &next($y[3]); } # while $y[3]
					$x[3] = &next($x[3]); } # while $x[3]
					$w[3] = &next($w[3]); } # while $w[3]
				} # defined coeff0

			$y[0] = &next($y[0]); } # while $y[0]
			$x[0] = &next($x[0]); } # while $x[0]
			$w[0] = &next($w[0]); } # while $w[0]
		} # defined coeff12
		
	$y[4] = &next($y[4]); } # while $y[4]
	$x[4] = &next($x[4]); } # while $x[4]
	$w[4] = &next($w[4]); } # while $w[4]
	exit;
	
sub test {
	$count ++;
	# check for zero columns
	if (abs($w[4]) + abs($w[3]) + abs($w[2]) + abs($w[1]) + abs($w[0]) == 0) { return 11; }
	if (abs($x[4]) + abs($x[3]) + abs($x[2]) + abs($x[1]) + abs($x[0]) == 0) { return 12; }
	if (abs($y[4]) + abs($y[3]) + abs($y[2]) + abs($y[1]) + abs($y[0]) == 0) { return 13; }
	if (1) { # check for descending a,b,c columns 
		my $vw = $w[0] + $base2 + $base * ($w[1] + $base2 + $base * ($w[2] + $base2 + $base * ($w[3] + $base2 + $base * ($w[4] + $base2)))); 
		my $vx = $x[0] + $base2 + $base * ($x[1] + $base2 + $base * ($x[2] + $base2 + $base * ($x[3] + $base2 + $base * ($x[4] + $base2)))); 
		# print "vw=$vw, vx=$vx, vy=$vy\n";
		if ($vw <= $vx) { return 05; }
		my $vy = $y[0] + $base2 + $base * ($y[1] + $base2 + $base * ($y[2] + $base2 + $base * ($y[3] + $base2 + $base * ($y[4] + $base2)))); 
		if ($vw <= $vy) { return 06; }
		if ($vx <= $vy) { return 07; }
		# here $vw > $vx > $vy
	}
	# ($z[3], $z[2], $z[1]) = (0, 0, 0);
	if (0) {
	} elsif ($d3z4z4 != 0) {
		$z[3] = &div(($coeff11                                            ) , $d3z4z4);
		if ($coeff11 != $d3z4z4*$z[3])                       						{ return 22; }

		$coeff10 = 0
	 		 + 3*$w[4]*$w[4]*$w[2] + 3*$w[4]*$w[3]*$w[3] 
	         + 3*$x[4]*$x[4]*$x[2] + 3*$x[4]*$x[3]*$x[3] 
	         + 3*$y[4]*$y[4]*$y[2] + 3*$y[4]*$y[3]*$y[3]
	         ;  
		$z[2] = &div(($coeff10                       - 3*$z[4]*$z[3]*$z[3]) , $d3z4z4);
		if ($coeff10 != $d3z4z4*$z[2] + 3*$z[4]*$z[3]*$z[3]) 						{ return 23; }

		$coeff09 = 0
	         +   $w[3]*$w[3]*$w[3] + 3*$w[4]*$w[4]*$w[1] + 3*$w[4]*$w[3]*$w[2] 
		     +   $x[3]*$x[3]*$x[3] + 3*$x[4]*$x[4]*$x[1] + 3*$x[4]*$x[3]*$x[2] 
		     +   $y[3]*$y[3]*$y[3] + 3*$y[4]*$y[4]*$y[1] + 3*$y[4]*$y[3]*$y[2] 
		     ;  
		$z[1] = &div(($coeff09 -   $z[3]*$z[3]*$z[3] - 3*$z[4]*$z[3]*$z[2]) , $d3z4z4);
		if ($coeff09 !=   $z[3]*$z[3]*$z[3] + $d3z4z4*$z[1] + 3*$z[4]*$z[3]*$z[2]) 	{ return 24 };

	} elsif ($d3z0z0 != 0) {
		$z[1] = &div(($coeff01                                            ) , $d3z0z0);
		if ($coeff01 != $d3z0z0*$z[1]) 												{ return 25; }

		$coeff02 = 0
			 + 3*$w[1]*$w[1]*$w[0] + 3*$w[2]*$w[0]*$w[0] 
	         + 3*$x[1]*$x[1]*$x[0] + 3*$x[2]*$x[0]*$x[0] 
	         + 3*$y[1]*$y[1]*$y[0] + 3*$y[2]*$y[0]*$y[0]
	         ;  
		$z[2] = &div(($coeff02                       - 3*$z[1]*$z[1]*$z[0]) , $d3z0z0);
		if ($coeff02 != 3*$z[1]*$z[1]*$z[0] + $d3z0z0*$z[2] ) 						{ return 26; }

		$coeff03 = 0
			 +   $w[1]*$w[1]*$w[1] + 3*$w[2]*$w[1]*$w[0] + 3*$w[3]*$w[0]*$w[0] 
			 +   $x[1]*$x[1]*$x[1] + 3*$x[2]*$x[1]*$x[0] + 3*$x[3]*$x[0]*$x[0] 
			 +   $y[1]*$y[1]*$y[1] + 3*$y[2]*$y[1]*$y[0] + 3*$y[3]*$y[0]*$y[0]
			 ;  
		$z[3] = &div(($coeff03 -   $z[1]*$z[1]*$z[1] - 3*$z[2]*$z[1]*$z[0]) , $d3z0z0);
		if ($coeff03 !=   $z[1]*$z[1]*$z[1] + 3*$z[2]*$z[1]*$z[0] + $d3z0z0*$z[3] ) { return 27; }
	} else { # z4=z0=0
		$coeff09 = 0
	         +   $w[3]*$w[3]*$w[3] + 3*$w[4]*$w[4]*$w[1] + 3*$w[4]*$w[3]*$w[2] 
		     +   $x[3]*$x[3]*$x[3] + 3*$x[4]*$x[4]*$x[1] + 3*$x[4]*$x[3]*$x[2] 
		     +   $y[3]*$y[3]*$y[3] + 3*$y[4]*$y[4]*$y[1] + 3*$y[4]*$y[3]*$y[2] 
		     ;  
		if (! defined($root{$coeff09})) {
			return 14;
		} 
		$z[3] = $root{$coeff09};
		$coeff03 = 0
			 +   $w[1]*$w[1]*$w[1] + 3*$w[2]*$w[1]*$w[0] + 3*$w[3]*$w[0]*$w[0] 
			 +   $x[1]*$x[1]*$x[1] + 3*$x[2]*$x[1]*$x[0] + 3*$x[3]*$x[0]*$x[0] 
			 +   $y[1]*$y[1]*$y[1] + 3*$y[2]*$y[1]*$y[0] + 3*$y[3]*$y[0]*$y[0]
			 ;  
		if (! defined($root{$coeff03})) {
			return 15;
		} 
		$z[1] = $root{$coeff03};
		if (0) {
		} elsif ($z[3] != 0) {
			$coeff08 = 0
			 + 3*$w[4]*$w[4]*$w[0] + 3*$w[4]*$w[3]*$w[1] + 3*$w[4]*$w[2]*$w[2] + 3*$w[3]*$w[3]*$w[2]                       
	         + 3*$x[4]*$x[4]*$x[0] + 3*$x[4]*$x[3]*$x[1] + 3*$x[4]*$x[2]*$x[2] + 3*$x[3]*$x[3]*$x[2]                     
	         + 3*$y[4]*$y[4]*$y[0] + 3*$y[4]*$y[3]*$y[1] + 3*$y[4]*$y[2]*$y[2] + 3*$y[3]*$y[3]*$y[2]
	         ;  
			$z[2] = &div(($coeff08) , (3*$z[3]*$z[3]));
			if ($coeff08 != 3*$z[3]*$z[3]*$z[2] ) 								{ return 36; }
		} elsif ($z[1] != 0) {
			$coeff04 = 0
			 + 3*$w[4]*$w[0]*$w[0] + 3*$w[3]*$w[1]*$w[0] + 3*$w[2]*$w[2]*$w[0] + 3*$w[2]*$w[1]*$w[1] 
	 	     + 3*$x[4]*$x[0]*$x[0] + 3*$x[3]*$x[1]*$x[0] + 3*$x[2]*$x[2]*$x[0] + 3*$x[2]*$x[1]*$x[1] 
			 + 3*$y[4]*$y[0]*$y[0] + 3*$y[3]*$y[1]*$y[0] + 3*$y[2]*$y[2]*$y[0] + 3*$y[2]*$y[1]*$y[1] 
			 ;  
			$z[2] = &div(($coeff04) , (3*$z[1]*$z[1]));
		} else { # z4=z3=z1=z0=0
			$coeff06 = 0
			 + 3*$w[4]*$w[2]*$w[0] + 3*$w[4]*$w[1]*$w[1] +   $w[2]*$w[2]*$w[2] + 3*$w[3]*$w[2]*$w[1] + 3*$w[3]*$w[3]*$w[0] 
		     + 3*$x[4]*$x[2]*$x[0] + 3*$x[4]*$x[1]*$x[1] +   $x[2]*$x[2]*$x[2] + 3*$x[3]*$x[2]*$x[1] + 3*$x[3]*$x[3]*$x[0] 
		     + 3*$y[4]*$y[2]*$y[0] + 3*$y[4]*$y[1]*$y[1] +   $y[2]*$y[2]*$y[2] + 3*$y[3]*$y[2]*$y[1] + 3*$y[3]*$y[3]*$y[0] 
		     ;  
			if (! defined($root{$coeff06})) {
				return 16;
			} 
			$z[2] = $root{$coeff06};
		}
	} # z2=0 && z0=0

	my $n = 0;
	my $show = 0;
	my $found = "!";
	while ($show < 4 && $n < 8) {
		my $a = $w[0] + $n * ($w[1] + $n * ($w[2] + $n * ($w[3] + $n * ($w[4])))); 
		my $b = $x[0] + $n * ($x[1] + $n * ($x[2] + $n * ($x[3] + $n * ($x[4])))); 
		my $c = $y[0] + $n * ($y[1] + $n * ($y[2] + $n * ($y[3] + $n * ($y[4])))); 
		my $d = $z[0] + $n * ($z[1] + $n * ($z[2] + $n * ($z[3] + $n * ($z[4])))); 
		my $sa = abs($a);
		my $sb = abs($b);
		my $sc = abs($c);
		my $sd = abs($d);
		if (0) {
		} elsif ($a ==  0 || $b == 0  || $c == 0  || $d == 0) {
			# ignore those with a zero element (Fermat)
		} elsif ($sa == $sb || $sa == $sc || $sa == $sd || $sb == $sc || $sb == $sd || $sc == $sd) { 
			# ignore those with a duplicated element
		} else {
			if ($a**$k + $b**$k + $c**$k == $d**$k) {
				 $found .= "$a,$b,$c,$d! ";
			} else {
				return 30;
			}
			$show ++;
		}
		$n ++;
	} # for $n

	if (length($found) > 1) {
		print "# $count -------------------------------\n";
		my $ind;
		for ($ind = 0; $ind <= $imax; $ind ++) {
			print sprintf("%3d %3d %3d %3d\n", $w[$ind], $x[$ind], $y[$ind], $z[$ind]);
		} # for $ind
		print $found;
		print " ($w[0],$w[1],$w[2],$w[3],$w[4])^$k";
		print "+($x[0],$x[1],$x[2],$x[3],$x[4])^$k";
		print "+($y[0],$y[1],$y[2],$y[3],$y[4])^$k";
		print "=($z[0],$z[1],$z[2],$z[3],$z[4])^$k";
		print "\n";
	} # length > 2
	return 0;
} # test

sub div {
	my ($x, $y) = @_;
	my $result = $x / $y;
	if ($result != int($result)) {
		if ($result < 0) {
			$result = int($result - 0.01);
		} else {
			$result = int($result + 0.01);
		}
	}
	return $result;
} # div

sub next {
	my ($p) = @_;
	if ($p >= 0) {
		$p = - $p - 1;
	} else {
		$p = - $p;
	}
	return $p;
} # next
__DATA__
	if (0) {
		$coeff08 = 0
			 + 3*$w[4]*$w[4]*$w[0] + 3*$w[4]*$w[3]*$w[1] + 3*$w[4]*$w[2]*$w[2] + 3*$w[3]*$w[3]*$w[2]                       
	         + 3*$x[4]*$x[4]*$x[0] + 3*$x[4]*$x[3]*$x[1] + 3*$x[4]*$x[2]*$x[2] + 3*$x[3]*$x[3]*$x[2]                     
	         + 3*$y[4]*$y[4]*$y[0] + 3*$y[4]*$y[3]*$y[1] + 3*$y[4]*$y[2]*$y[2] + 3*$y[3]*$y[3]*$y[2]
	         ;  
		$coeff07 = 0
			 + 3*$w[4]*$w[3]*$w[0] + 3*$w[4]*$w[2]*$w[1] + 3*$w[3]*$w[3]*$w[1] + 3*$w[3]*$w[2]*$w[2] 
			 + 3*$x[4]*$x[3]*$x[0] + 3*$x[4]*$x[2]*$x[1] + 3*$x[3]*$x[3]*$x[1] + 3*$x[3]*$x[2]*$x[2] 
			 + 3*$y[4]*$y[3]*$y[0] + 3*$y[4]*$y[2]*$y[1] + 3*$y[3]*$y[3]*$y[1] + 3*$y[3]*$y[2]*$y[2] 
	         ;  
		$coeff06 = 0
			 + 3*$w[4]*$w[2]*$w[0] + 3*$w[4]*$w[1]*$w[1] +   $w[2]*$w[2]*$w[2] + 3*$w[3]*$w[2]*$w[1] + 3*$w[3]*$w[3]*$w[0] 
		     + 3*$x[4]*$x[2]*$x[0] + 3*$x[4]*$x[1]*$x[1] +   $x[2]*$x[2]*$x[2] + 3*$x[3]*$x[2]*$x[1] + 3*$x[3]*$x[3]*$x[0] 
		     + 3*$y[4]*$y[2]*$y[0] + 3*$y[4]*$y[1]*$y[1] +   $y[2]*$y[2]*$y[2] + 3*$y[3]*$y[2]*$y[1] + 3*$y[3]*$y[3]*$y[0] 
		     ;  
		$coeff05 = 0
		     + 3*$w[4]*$w[1]*$w[0] + 3*$w[3]*$w[1]*$w[1] + 3*$w[2]*$w[2]*$w[1] + 3*$w[3]*$w[2]*$w[0] 
	 	     + 3*$x[4]*$x[1]*$x[0] + 3*$x[3]*$x[1]*$x[1] + 3*$x[2]*$x[2]*$x[1] + 3*$x[3]*$x[2]*$x[0] 
		     + 3*$y[4]*$y[1]*$y[0] + 3*$y[3]*$y[1]*$y[1] + 3*$y[2]*$y[2]*$y[1] + 3*$y[3]*$y[2]*$y[0] 
		 	 ;  
		$coeff04 = 0
			 + 3*$w[4]*$w[0]*$w[0] + 3*$w[3]*$w[1]*$w[0] + 3*$w[2]*$w[2]*$w[0] + 3*$w[2]*$w[1]*$w[1] 
	 	     + 3*$x[4]*$x[0]*$x[0] + 3*$x[3]*$x[1]*$x[0] + 3*$x[2]*$x[2]*$x[0] + 3*$x[2]*$x[1]*$x[1] 
			 + 3*$y[4]*$y[0]*$y[0] + 3*$y[3]*$y[1]*$y[0] + 3*$y[2]*$y[2]*$y[0] + 3*$y[2]*$y[1]*$y[1] 
			 ;  
		$coeff03 = 0
			 +   $w[1]*$w[1]*$w[1] + 3*$w[2]*$w[1]*$w[0] + 3*$w[3]*$w[0]*$w[0] 
			 +   $x[1]*$x[1]*$x[1] + 3*$x[2]*$x[1]*$x[0] + 3*$x[3]*$x[0]*$x[0] 
			 +   $y[1]*$y[1]*$y[1] + 3*$y[2]*$y[1]*$y[0] + 3*$y[3]*$y[0]*$y[0]
			 ;  
		$coeff02 = 0
			 + 3*$w[1]*$w[1]*$w[0] + 3*$w[2]*$w[0]*$w[0] 
	         + 3*$x[1]*$x[1]*$x[0] + 3*$x[2]*$x[0]*$x[0] 
	         + 3*$y[1]*$y[1]*$y[0] + 3*$y[2]*$y[0]*$y[0]
	         ;
	}  
...
	if (1) { 
	} elsif (0
		|| $coeff11 != $d3z4z4*$z[3]
		|| $coeff10 != $d3z4z4*$z[2] + 3*$z[4]*$z[3]*$z[3]
		|| $coeff09 !=   $z[3]*$z[3]*$z[3] + $d3z4z4*$z[1] + 3*$z[4]*$z[3]*$z[2]
		|| $coeff08 != $d3z4z4*$z[0] + 3*$z[4]*$z[3]*$z[1] + 3*$z[4]*$z[2]*$z[2] + 3*$z[3]*$z[3]*$z[2]
		|| $coeff07 != 3*$z[4]*$z[3]*$z[0] + 3*$z[4]*$z[2]*$z[1] + 3*$z[3]*$z[3]*$z[1] + 3*$z[3]*$z[2]*$z[2]
		|| $coeff06 != 3*$z[3]*$z[2]*$z[1] + 3*$z[4]*$z[1]*$z[1] + 3*$z[3]*$z[3]*$z[0] + 3*$z[4]*$z[2]*$z[0]  +   $z[2]*$z[2]*$z[2]
		|| $coeff05 != 3*$z[4]*$z[1]*$z[0] + 3*$z[3]*$z[2]*$z[0] + 3*$z[2]*$z[2]*$z[1] + 3*$z[3]*$z[1]*$z[1] 
		|| $coeff04 != 3*$z[4]*$z[0]*$z[0] + 3*$z[3]*$z[1]*$z[0] + 3*$z[2]*$z[2]*$z[0] + 3*$z[2]*$z[1]*$z[1]  
		|| $coeff03 !=   $z[1]*$z[1]*$z[1] + 3*$z[2]*$z[1]*$z[0] + 3*$z[3]*$z[0]*$z[0] 
		|| $coeff02 != 3*$z[1]*$z[1]*$z[0] + 3*$z[2]*$z[0]*$z[0] 
		|| $coeff01 != 3*$z[1]*$z[0]*$z[0]
		) {
		return 17;
	}

