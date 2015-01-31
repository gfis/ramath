#!/usr/bin/perl

#
#  Copyright 2008 Dr. Georg Fischer <punctum at punctum dot kom>
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
#------------------------------------------------------------------ 
# Test program for continued fraction in different modes
# @(#) $Id: eec3.pl 221 2009-08-11 06:08:05Z gfis $
#
# Usage: 
#   perl cf.pl [-reg|-ceil|-alt|-near]
#------------------------------------------------------------------ 

use strict;
use Math::BigInt;
use Math::BigInt':constant';
	my $a = &pow(30,4) + &pow(120,4) + &pow(272,4) + &pow(315,4);
	my $b = &pow(353,4);
	print "$a = $b\n";
	exit;
	# my $opt = shift(@ARGV);
	my $denom = Math::BigInt->new("271828182845904523536028747135266249775724709369995957496696762772407");

	my @a = @ARGV;
	my $p = 3 * ($a[1]*$a[2] - $a[0]*$a[3]) * (&pow($a[2], 2) + 3 * &pow($a[3], 2));
	my $q = 0 + &pow(&pow($a[0], 2) + 3 * &pow($a[1], 2), 2) - ($a[0]*$a[2] + 3 * $a[1]*$a[3]) * (&pow($a[2], 2) + 3 * &pow($a[3], 2));
	my $r = 3 * ($a[1]*$a[2] - $a[0]*$a[3]) * (&pow($a[0], 2) + 3 * &pow($a[1], 2));
	my $s = 0 - &pow(&pow($a[2], 2) + 3 * &pow($a[3], 2), 2) + ($a[0]*$a[2] + 3 * $a[1]*$a[3]) * (&pow($a[0], 2) + 3 * &pow($a[1], 2));
	my $x = ($p + $q);
	my $y = ($p - $q);
	my $w = ($r + $s);
	my $z = ($r - $s);
	print "$x, $y, $w, $z\n";
	print "" . &pow($x, 3) . " + " . &pow($y, 3) . " = " . &pow($w, 3) . " + " . &pow($z, 3) . "\n";
	my $g1 =  &pow($x, 3) + &pow($y, 3);
	my $g2 =  &pow($w, 3) + &pow($z, 3);
	print "$g1 = $g2\n";
	
sub pow {
	my ($x, $k) = @_;
	my $x1 = Math::BigInt->new("1");
	while ($k > 0) {
		$x1 *= $x;
		$k --;
	} # while
	return $x1;
} # pow

