#!/usr/bin/perl

#------------------------------------------------------------------ 
#  Print mod sums for FLT
#  @(#) $Id: expmod.pl 221 2009-08-11 06:08:05Z gfis $
#  2009-07-08: Georg Fischer: copied from parm2.pl
#  Usage: 
#    perl expmod.pl power max
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

	my $exp     = shift(@ARGV); # k = take the polynom to this exponent
	my $maxmod  = shift(@ARGV); # m = max modulus
	
	my @powers = ();
	my $ind;
	for ($ind = 0; $ind <= $maxmod; $ind ++) {
		$powers[$ind] = $ind ** $exp;
	} # for $ind
	$ind = 2;
	while ($ind <= $maxmod) {
		&loop($ind);
		print "\n";
		$ind ++;
	} # while $ind
	
sub loop {
	my ($ind) = @_;
	my $a;
	my $b;
	my $c;
	for ($a = 0; $a < $ind; $a ++) {
	for ($b = 0; $b < $ind; $b ++) {
	for ($c = 0; $c < $ind; $c ++) {
		&test($ind, $a, $b, $c);
	} # for $c
	} # for $b
	} # for $a
} # loop

sub test {
	my ($ind, $a, $b, $c) = @_;
	return if ($a == 0 && $b == 0 && $c == 0);
	if ((($a**$exp + $b**$exp - $c**$exp) % $ind) == 0) {
		print "($a^$exp + $b^$exp - $c^$exp) % $ind == 0; " . $a**$exp . " + " . $b**$exp . " - " . $c**$exp . "\n";
	} else {
		print "($a^$exp + $b^$exp - $c^$exp)\n";
	}
} # test
__DUMMY__
(192*a - 133 - 1458*c) % 5 == 0
(192*a -   3 - 1458*c) % 5 == 0
192*a % 5 == 3 % 5 + 1458*c % 5 
(190 * a + 2*a) % 5 = (130 % 5 + 3 % 5) + (1455*c + 3*c) % 5
(2*a) % 5 = 3 % 5 + (3*c) % 5
(2*a) % 5 = (3*(c + 1)) % 5
 a    c
 0    4
 1    3, 8, 13 ...
 2    2, 7, ...
 3    1, 6, ..
 4    0, 5, ...  
