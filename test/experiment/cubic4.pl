#!/usr/bin/perl

#------------------------------------------------------------------ 
# Iterate through parameter coefficients of a^3 + b^3 + c^2 = d^3
# @(#) $Id: cubic4.pl 221 2009-08-11 06:08:05Z gfis $
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

	my $limit; # iterate up to -/+$limit
	my $alimit; # abs(limit)
	my $imax; # index of last valid parameter/coefficient
	my $count;
	my $k; # exponent
	my $oldt;
	my $w0;
	my $w1;
	my $w2;
	my $w3;
	my $w4;
	my $x0;
	my $x1;
	my $x2;
	my $x3;
	my $x4;
	my $y0;
	my $y1;
	my $y2;
	my $y3;
	my $y4;
	my $z0;
	my $z1;
	my $z2;
	my $z3;
	my $z4;
	my %root; # {x2} is defined and = x for x where x2 = x**2
	# coefficients of n**i for z polynom
	my $coeff12;
	my $coeff11;
	my $coeff10;
	my $coeff09;
	my $coeff08;
	my $coeff07; 
	my $coeff06;
	my $coeff05;
	my $coeff04;
	my $coeff03;
	my $coeff02;
	my $coeff01;
	my $coeff00; 
	my $d3z4z4;
	my $d3z3z3;
	my $d3z2z2;
	my $d3z1z1;
	my $d3z0z0;
	my $ipw;

	$k = 3;
	$imax = 4;
	$count = 0;
	$limit = shift(@ARGV);
	$limit = - ($limit + 1);
	$alimit = abs($limit);
	$oldt = time();

	if (1) {
		$w0 =  0; $w1 = -2; $w2 =  0; $w3 =  0; $w4 =  1;
		$x0 = -1; $x1 =  0; $x2 =  0; $x3 =  2; $x4 =  0;
		$y0 =  1; $y1 =  0; $y2 =  0; $y3 =  1; $y4 =  0;
		$z0 =  0; $z1 =  1; $z2 =  0; $z3 =  0; $z4 =  1;
		print "test Vieta=" . &test() . "\n"; 
		# exit;
	} 
	
	for ($ipw = 0; $ipw < 256; $ipw ++) {
		$root{(- $ipw)*(- $ipw)*(- $ipw)} = - $ipw; # overwrite this for even exponents k
		$root{(  $ipw)*(  $ipw)*(  $ipw)} =   $ipw;
	} # for $ipw
	
	# iterate through x and y, compute z and check for a^3 + b^3 + c^3 = d^3
	$w4 = 0; while (abs($w4) < $alimit) {
	$x4 = 0; while (abs($x4) < $alimit) {
		# without loosing generality, w runs on positive numbers only
		# up to (3 4 5 6), there is no non-trivial sum of w4^3 + x4^3 + y4^3 = z4^3
		# therefore y4 = -x4, and for positive x only, and omit all other triples because of commutativity
		$y4 = - $x4;
		$z4 =   $w4;
		if (1) {
			$d3z4z4 = 3*$z4*$z4;
			$w0 = 0; while (abs($w0) < $alimit) {
			$x0 = 0; while (abs($x0) < $alimit) {
				$y0 = - $x0;
				$z0 =   $w0;
				if (1) {
					$d3z0z0 = 3*$z0*$z0;
					$w3 = 0; while (abs($w3) < $alimit) {
					$x3 = 0; while (abs($x3) < $alimit) {
					$y3 = 0; while (abs($y3) < $alimit) {

						$coeff11 = 0
						 + 3*$w4*$w4*$w3                       
				         + 3*$x4*$x4*$x3                     
				         + 3*$y4*$y4*$y3
				         ;  
						if ($z4 == 0 || $coeff11 % $d3z4z4 == 0) {
							$w1 = 0; while (abs($w1) < $alimit) {
							$x1 = 0; while (abs($x1) < $alimit) {
							$y1 = 0; while (abs($y1) < $alimit) {
	
								$coeff01 = 0
								 + 3*$w1*$w0*$w0                       
						         + 3*$x1*$x0*$x0                     
						         + 3*$y1*$y0*$y0
						        ;  
								if ($z0 == 0 || $coeff01 % $d3z0z0 == 0) {
										$w2 = 0; while (abs($w2) < $alimit) {
										$x2 = 0; while (abs($x2) < $alimit) {
										$y2 = 0; while (abs($y2) < $alimit) {
											&test();
											# print "test result: " . &test() . "\n";
										$y2 = &next_toggle($y2); } # while $y2
										$x2 = &next_toggle($x2); } # while $x2
										$w2 = &next_toggle($w2); } # while $w2
								} # $z0 == 0 || $coeff01 % $d3z0z0 == 0
	
							$y1 = &next_toggle($y1); } # while $y1
							$x1 = &next_toggle($x1); } # while $x1
							$w1 = &next_toggle($w1); } # while $w1
						} # $z4 == 0 || $coeff11 % $d3z4z4 == 0
					
					$y3 = &next_toggle($y3); } # while $y3
					$x3 = &next_toggle($x3); } # while $x3
					$w3 = &next_toggle($w3); } # while $w3
				} # defined coeff0

			$x0 = &next       ($x0); } # while $x0
			$w0 = &next_toggle($w0); } # while $w0
		} # defined coeff9
		
	$x4 = &next       ($x4); } # while $x4
	$w4 = &next       ($w4); } # while $w4
	exit;
	
sub test {
	my $n;
	my $show;
	my $found;
	my $a;
	my $b;
	my $c;
	my $d;
	my $sa;
	my $sb;
	my $sc;
	my $sd;
	my $newt;
	my $dt;
	
	$count ++;
	if ($count & 0xfff == 0) { # heart-beat
		print sprintf("# iteration 0x%x\n", $count);
		&matrix();
	}
	if (0) {
	} elsif ($z4 != 0) {
		$d3z4z4 = (3*$z4*$z4);
		$z3 = &div(($coeff11) , $d3z4z4);
		if (          $coeff11 != $d3z4z4*$z3)                       					{ return 22; }

		$coeff10 = 0
	 		 + 3*$w4*$w4*$w2 + 3*$w4*$w3*$w3 
	         + 3*$x4*$x4*$x2 + 3*$x4*$x3*$x3 
	         + 3*$y4*$y4*$y2 + 3*$y4*$y3*$y3
	         ;  
		$z2 = &div(($coeff10 - 3*$z4*$z3*$z3) , $d3z4z4);
		if (          $coeff10 - 3*$z4*$z3*$z3 != $d3z4z4*$z2) 					{ return 23; }

		$coeff09 = 0
	         +   $w3*$w3*$w3 + 3*$w4*$w4*$w1 + 3*$w4*$w3*$w2 
		     +   $x3*$x3*$x3 + 3*$x4*$x4*$x1 + 3*$x4*$x3*$x2 
		     +   $y3*$y3*$y3 + 3*$y4*$y4*$y1 + 3*$y4*$y3*$y2 
		     ;  
		$z1 = &div(($coeff09        - $z3*$z3*$z3 - 3*$z4*$z3*$z2) , $d3z4z4);
		if ($coeff09 != $d3z4z4*$z1 + $z3*$z3*$z3 + 3*$z4*$z3*$z2) 		{ return 24 };
	} elsif ($z0 != 0) {
		$d3z0z0 = (3*$z0*$z0);
		$z1 = &div(($coeff01) , $d3z0z0);
		if (          $coeff01 != $d3z0z0*$z1) 										{ return 25; }

		$coeff02 = 0
			 + 3*$w1*$w1*$w0 + 3*$w2*$w0*$w0 
	         + 3*$x1*$x1*$x0 + 3*$x2*$x0*$x0 
	         + 3*$y1*$y1*$y0 + 3*$y2*$y0*$y0
	         ;  
		$z2 = &div(($coeff02 - 3*$z1*$z1*$z0) , $d3z0z0);
		if (          $coeff02 - 3*$z1*$z1*$z0 != $d3z0z0*$z2 ) 				{ return 26; }

		$coeff03 = 0
			 +   $w1*$w1*$w1 + 3*$w2*$w1*$w0 + 3*$w3*$w0*$w0 
			 +   $x1*$x1*$x1 + 3*$x2*$x1*$x0 + 3*$x3*$x0*$x0 
			 +   $y1*$y1*$y1 + 3*$y2*$y1*$y0 + 3*$y3*$y0*$y0
			 ;  
		$z3 = &div(($coeff03 - $z1*$z1*$z1 - 3*$z2*$z1*$z0) , $d3z0z0);
		if (          $coeff03 - $z1*$z1*$z1 - 3*$z2*$z1*$z0 != $d3z0z0*$z3) 		{ return 27; }
	} else { # z4=z0=0
		$coeff09 = 0
	         +   $w3*$w3*$w3 + 3*$w4*$w4*$w1 + 3*$w4*$w3*$w2 
		     +   $x3*$x3*$x3 + 3*$x4*$x4*$x1 + 3*$x4*$x3*$x2 
		     +   $y3*$y3*$y3 + 3*$y4*$y4*$y1 + 3*$y4*$y3*$y2 
		     ;  
		$z3 = $root{$coeff09};
		if (length($z3) > 0) {	return 14; } 

		$coeff03 = 0
			 +   $w1*$w1*$w1 + 3*$w2*$w1*$w0 + 3*$w3*$w0*$w0 
			 +   $x1*$x1*$x1 + 3*$x2*$x1*$x0 + 3*$x3*$x0*$x0 
			 +   $y1*$y1*$y1 + 3*$y2*$y1*$y0 + 3*$y3*$y0*$y0
			 ;  
		$z1 = $root{$coeff03};
		if (length($z1) > 0) {	return 15; } 

		if (0) {
		} elsif ($z3 != 0) {
			$coeff08 = 0
			 + 3*$w4*$w4*$w0 + 3*$w4*$w3*$w1 + 3*$w4*$w2*$w2 + 3*$w3*$w3*$w2                       
	         + 3*$x4*$x4*$x0 + 3*$x4*$x3*$x1 + 3*$x4*$x2*$x2 + 3*$x3*$x3*$x2                     
	         + 3*$y4*$y4*$y0 + 3*$y4*$y3*$y1 + 3*$y4*$y2*$y2 + 3*$y3*$y3*$y2
	         ;  
			$z2 = &div(($coeff08) , (3*$z3*$z3));
			if (          $coeff08 !=  3*$z3*$z3*$z2) 									{ return 35; }
		} elsif ($z1 != 0) {
			$coeff04 = 0
			 + 3*$w4*$w0*$w0 + 3*$w3*$w1*$w0 + 3*$w2*$w2*$w0 + 3*$w2*$w1*$w1 
	 	     + 3*$x4*$x0*$x0 + 3*$x3*$x1*$x0 + 3*$x2*$x2*$x0 + 3*$x2*$x1*$x1 
			 + 3*$y4*$y0*$y0 + 3*$y3*$y1*$y0 + 3*$y2*$y2*$y0 + 3*$y2*$y1*$y1 
			 ;  
			$z2 = &div(($coeff04) , (3*$z1*$z1));
			if (          $coeff04 !=  3*$z1*$z1*$z2) 									{ return 36; }
		} else { # z4=z3=z1=z0=0
			$coeff06 = 0
			 + 3*$w4*$w2*$w0 + 3*$w4*$w1*$w1 +   $w2*$w2*$w2 + 3*$w3*$w2*$w1 + 3*$w3*$w3*$w0 
		     + 3*$x4*$x2*$x0 + 3*$x4*$x1*$x1 +   $x2*$x2*$x2 + 3*$x3*$x2*$x1 + 3*$x3*$x3*$x0 
		     + 3*$y4*$y2*$y0 + 3*$y4*$y1*$y1 +   $y2*$y2*$y2 + 3*$y3*$y2*$y1 + 3*$y3*$y3*$y0 
		     ;  
			$z2 = $root{$coeff06};
			if (length($z2) > 0) {	return 16; } 
		}
	} # z2=0 && z0=0

	$n = 0;
	$show = 0;
	$found = "!";
	while ($show < 4 && $n < 8) {
		$a = $w0 + $n * ($w1 + $n * ($w2 + $n * ($w3 + $n * ($w4)))); 
		$b = $x0 + $n * ($x1 + $n * ($x2 + $n * ($x3 + $n * ($x4)))); 
		$c = $y0 + $n * ($y1 + $n * ($y2 + $n * ($y3 + $n * ($y4)))); 
		$d = $z0 + $n * ($z1 + $n * ($z2 + $n * ($z3 + $n * ($z4)))); 
		$sa = abs($a);
		$sb = abs($b);
		$sc = abs($c);
		$sd = abs($d);
		if (0) {
		} elsif ($a ==  0 || $b == 0  || $c == 0  || $d == 0) {
			# ignore those with a zero element (Fermat)
		} elsif ($sa == $sb || $sa == $sc || $sa == $sd || $sb == $sc || $sb == $sd || $sc == $sd) { 
			# ignore those with a duplicated element
		} else {
			if ($a*$a*$a + $b*$b*$b + $c*$c*$c == $d*$d*$d) {
				 $found .= "$a,$b,$c,$d! ";
			} else {
				return 30;
			}
			$show ++;
		}
		$n ++;
	} # for $n

	if (length($found) > 1) {
		$newt = time();
		$dt = $newt - $oldt;
		$oldt = $newt;
		print sprintf("# %d ------------------------------- dt=%d\n", $count, $dt);
		&matrix();
		print sprintf("%s", $found);
		print sprintf(" (%d,%d,%d,%d,%d)^3", $w0,$w1,$w2,$w3,$w4);
		print sprintf("+(%d,%d,%d,%d,%d)^3", $x0,$x1,$x2,$x3,$x4);
		print sprintf("+(%d,%d,%d,%d,%d)^3", $y0,$y1,$y2,$y3,$y4);
		print sprintf("=(%d,%d,%d,%d,%d)^3", $z0,$z1,$z2,$z3,$z4);
		print sprintf("\n");
	} # length > 2
	print 
	return 0;
} # test

sub matrix {
	my $ind;
	print sprintf("%3d %3d %3d %3d\n", $w0, $x0, $y0, $z0);
	print sprintf("%3d %3d %3d %3d\n", $w1, $x1, $y1, $z1);
	print sprintf("%3d %3d %3d %3d\n", $w2, $x2, $y2, $z2);
	print sprintf("%3d %3d %3d %3d\n", $w3, $x3, $y3, $z3);
	print sprintf("%3d %3d %3d %3d\n", $w4, $x4, $y4, $z4);
} # matrix

sub div {
	my ($x, $y) = @_;
	# return int($x / $y);
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
	return ++ $p;
} # next

sub next_toggle {
	my ($p) = @_;
	return ($p >= 0) ? - $p - 1 : - $p;
} # next_toggle

