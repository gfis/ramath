#!/usr/bin/perl

#------------------------------------------------------------------ 
# convert simple Perl programs to C++
# @(#) $Id: perl2c.pl 221 2009-08-11 06:08:05Z gfis $
# 2009-06-17, Georg Fischer: copied from parm2.pl
# Usage: 
#   perl perl2c.pl perl-file > c-file
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

	while (<>) {
		if (s[\#][\/\*] > 0) {
			s[(\r?\n)][ */$1];
		}
		s[\s*use\s+strict\s*\;][int main(argc, argv) int argc; char *argv\[\]; \{];
		s[\A(\s*)my(\s)][${1}int$2];
		s[\&(\w+)][$1]g;
		s[\Asub\s+(\w+)][int $1()];
		s[\selsif\s][ else if ];
		s[\$][]g;
		s{\@(\w+)}{$1\[4095\]};
		s[print\s+sprintf][printf]g;
		print;
	} # while <>
	print "} /* main */\n";
__DATA__
	my $limit = shift(@ARGV); # iterate up to -/+$limit
	$limit = - ($limit + 1);
	my $alimit = abs($limit);
	my $imax = 4; # index of last valid parameter/coefficient
	my $count = 0;
	my $k = 3; # exponent
	my $oldt = time();
	# print $limit**2;
	my @w;
	my @x;
	my @y;
	my @z;
	if (1) {
		@w = ( 0,-2, 0, 0, 1);
		@x = (-1, 0, 0, 2, 0);
		@y = ( 1, 0, 0, 1, 0);
		@z = ( 0, 1, 0, 0, 1);
		print "test Vieta=" . &test() . "\n"; 
		# exit;
	} 
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
	my $vw;
	my $vx;
	my $vy;
	my %root; # {x2} is defined and = x for x where x2 = x**2
	my $ipw;
	for ($ipw = 0; $ipw < 256; $ipw ++) {
		$root{(- $ipw)**$k} = - $ipw; # overwrite this for even exponents k
		$root{(  $ipw)**$k} =   $ipw;
	} # for $ipw
	
	# iterate through x and y, compute z and check for a^3 + b^3 + c^3 = d^3
	$w[4] = 0; while (abs($w[4]) < $alimit) {
	$x[4] = 0; while (abs($x[4]) < $alimit) {
		# without loosing generality, w runs on positive numbers only
		# up to (3 4 5 6), there is no non-trivial sum of w4^3 + x4^3 + y4^3 = z4^3
		# therefore y4 = -x4, and for positive x only, and omit all other triples because of commutativity
		$y[4] = - $x[4];
		$z[4] =   $w[4];
		if (1) {
			$d3z4z4 = 3*$z[4]*$z[4];
			$w[0] = 0; while (abs($w[0]) < $alimit) {
			$x[0] = 0; while (abs($x[0]) < $alimit) {
				$y[0] = - $x[0];
				$z[0] =   $w[0];
				if (1) {
					$d3z0z0 = 3*$z[0]*$z[0];
					$w[3] = 0; while (abs($w[3]) < $alimit) {
					$x[3] = 0; while (abs($x[3]) < $alimit) {
					$y[3] = 0; while (abs($y[3]) < $alimit) {

						$coeff11 = 0
						 + 3*$w[4]*$w[4]*$w[3]                       
				         + 3*$x[4]*$x[4]*$x[3]                     
				         + 3*$y[4]*$y[4]*$y[3]
				         ;  
						if ($z[4] == 0 || $coeff11 % $d3z4z4 == 0) {
							$w[1] = 0; while (abs($w[1]) < $alimit) {
							$x[1] = 0; while (abs($x[1]) < $alimit) {
							$y[1] = 0; while (abs($y[1]) < $alimit) {
	
								$coeff01 = 0
								 + 3*$w[1]*$w[0]*$w[0]                       
						         + 3*$x[1]*$x[0]*$x[0]                     
						         + 3*$y[1]*$y[0]*$y[0]
						        ;  
								if ($z[0] == 0 || $coeff01 % $d3z0z0 == 0) {
										$w[2] = 0; while (abs($w[2]) < $alimit) {
										$x[2] = 0; while (abs($x[2]) < $alimit) {
										$y[2] = 0; while (abs($y[2]) < $alimit) {
											&test();
											# print "test result: " . &test() . "\n";
										$y[2] = &next_toggle($y[2]); } # while $y[2]
										$x[2] = &next_toggle($x[2]); } # while $x[2]
										$w[2] = &next_toggle($w[2]); } # while $w[2]
								} # $z[0] == 0 || $coeff01 % $d3z0z0 == 0
	
							$y[1] = &next_toggle($y[1]); } # while $y[1]
							$x[1] = &next_toggle($x[1]); } # while $x[1]
							$w[1] = &next_toggle($w[1]); } # while $w[1]
						} # $z[4] == 0 || $coeff11 % $d3z4z4 == 0
					
					$y[3] = &next_toggle($y[3]); } # while $y[3]
					$x[3] = &next_toggle($x[3]); } # while $x[3]
					$w[3] = &next_toggle($w[3]); } # while $w[3]
				} # defined coeff0

			$x[0] = &next       ($x[0]); } # while $x[0]
			$w[0] = &next_toggle($w[0]); } # while $w[0]
		} # defined coeff9
		
	$x[4] = &next       ($x[4]); } # while $x[4]
	$w[4] = &next       ($w[4]); } # while $w[4]
	exit;
	
sub test {
	$count ++;
	if ($count & 0xfffff == 0) { # heart-beat
		print sprintf("# iteration 0x%x\n", $count);
		&matrix();
	}
	if (0) {
	} elsif ($z[4] != 0) {
		$d3z4z4 = (3*$z[4]*$z[4]);
		$z[3] = &div(($coeff11) , $d3z4z4);
		if (          $coeff11 != $d3z4z4*$z[3])                       					{ return 22; }

		$coeff10 = 0
	 		 + 3*$w[4]*$w[4]*$w[2] + 3*$w[4]*$w[3]*$w[3] 
	         + 3*$x[4]*$x[4]*$x[2] + 3*$x[4]*$x[3]*$x[3] 
	         + 3*$y[4]*$y[4]*$y[2] + 3*$y[4]*$y[3]*$y[3]
	         ;  
		$z[2] = &div(($coeff10 - 3*$z[4]*$z[3]*$z[3]) , $d3z4z4);
		if (          $coeff10 - 3*$z[4]*$z[3]*$z[3] != $d3z4z4*$z[2]) 					{ return 23; }

		$coeff09 = 0
	         +   $w[3]*$w[3]*$w[3] + 3*$w[4]*$w[4]*$w[1] + 3*$w[4]*$w[3]*$w[2] 
		     +   $x[3]*$x[3]*$x[3] + 3*$x[4]*$x[4]*$x[1] + 3*$x[4]*$x[3]*$x[2] 
		     +   $y[3]*$y[3]*$y[3] + 3*$y[4]*$y[4]*$y[1] + 3*$y[4]*$y[3]*$y[2] 
		     ;  
		$z[1] = &div(($coeff09        - $z[3]*$z[3]*$z[3] - 3*$z[4]*$z[3]*$z[2]) , $d3z4z4);
		if ($coeff09 != $d3z4z4*$z[1] + $z[3]*$z[3]*$z[3] + 3*$z[4]*$z[3]*$z[2]) 		{ return 24 };
	} elsif ($z[0] != 0) {
		my $d3z0z0 = (3*$z[0]*$z[0]);
		$z[1] = &div(($coeff01) , $d3z0z0);
		if (          $coeff01 != $d3z0z0*$z[1]) 										{ return 25; }

		$coeff02 = 0
			 + 3*$w[1]*$w[1]*$w[0] + 3*$w[2]*$w[0]*$w[0] 
	         + 3*$x[1]*$x[1]*$x[0] + 3*$x[2]*$x[0]*$x[0] 
	         + 3*$y[1]*$y[1]*$y[0] + 3*$y[2]*$y[0]*$y[0]
	         ;  
		$z[2] = &div(($coeff02 - 3*$z[1]*$z[1]*$z[0]) , $d3z0z0);
		if (          $coeff02 - 3*$z[1]*$z[1]*$z[0] != $d3z0z0*$z[2] ) 				{ return 26; }

		$coeff03 = 0
			 +   $w[1]*$w[1]*$w[1] + 3*$w[2]*$w[1]*$w[0] + 3*$w[3]*$w[0]*$w[0] 
			 +   $x[1]*$x[1]*$x[1] + 3*$x[2]*$x[1]*$x[0] + 3*$x[3]*$x[0]*$x[0] 
			 +   $y[1]*$y[1]*$y[1] + 3*$y[2]*$y[1]*$y[0] + 3*$y[3]*$y[0]*$y[0]
			 ;  
		$z[3] = &div(($coeff03 - $z[1]*$z[1]*$z[1] - 3*$z[2]*$z[1]*$z[0]) , $d3z0z0);
		if (          $coeff03 - $z[1]*$z[1]*$z[1] - 3*$z[2]*$z[1]*$z[0] != $d3z0z0*$z[3]) 		{ return 27; }
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
			if (          $coeff08 !=  3*$z[3]*$z[3]*$z[2]) 									{ return 35; }
		} elsif ($z[1] != 0) {
			$coeff04 = 0
			 + 3*$w[4]*$w[0]*$w[0] + 3*$w[3]*$w[1]*$w[0] + 3*$w[2]*$w[2]*$w[0] + 3*$w[2]*$w[1]*$w[1] 
	 	     + 3*$x[4]*$x[0]*$x[0] + 3*$x[3]*$x[1]*$x[0] + 3*$x[2]*$x[2]*$x[0] + 3*$x[2]*$x[1]*$x[1] 
			 + 3*$y[4]*$y[0]*$y[0] + 3*$y[3]*$y[1]*$y[0] + 3*$y[2]*$y[2]*$y[0] + 3*$y[2]*$y[1]*$y[1] 
			 ;  
			$z[2] = &div(($coeff04) , (3*$z[1]*$z[1]));
			if (          $coeff04 !=  3*$z[1]*$z[1]*$z[2]) 									{ return 36; }
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
		my $newt = time();
		my $dt = $newt - $oldt;
		$oldt = $newt;
		print "# $count ------------------------------- dt=$dt\n";
		&matrix();
		print $found;
		print " ($w[0],$w[1],$w[2],$w[3],$w[4])^$k";
		print "+($x[0],$x[1],$x[2],$x[3],$x[4])^$k";
		print "+($y[0],$y[1],$y[2],$y[3],$y[4])^$k";
		print "=($z[0],$z[1],$z[2],$z[3],$z[4])^$k";
		print "\n";
	} # length > 2
	print 
	return 0;
} # test

sub matrix {
		my $ind;
		for ($ind = 0; $ind <= $imax; $ind ++) {
			print sprintf("%3d %3d %3d %3d\n", $w[$ind], $x[$ind], $y[$ind], $z[$ind]);
		} # for $ind
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

