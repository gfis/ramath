#!/usr/bin/perl

#------------------------------------------------------------------ 
# convert simple Perl programs to C++
# @(#) $Id: noarray.pl 221 2009-08-11 06:08:05Z gfis $
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
		s{(\$[a-z])\[(\d)\]}{$1$2}g;
		print;
	} # while <>
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

