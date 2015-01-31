#!/usr/bin/perl

#------------------------------------------------------------------ 
# Print Bernoulli numbers
# @(#) $Id: lastbit.pl 221 2009-08-11 06:08:05Z gfis $
# 2009-06-26: Georg Fischer: copied from parm2.pl
# Usage: 
#   perl bernoulli.pl power maxpoly
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

	my $power   = shift(@ARGV); # k = take the polynom to this exponent
	my $maxpoly = shift(@ARGV); # m = degree of polynom
	my $width   = shift(@ARGV);
	my $level;
	
	# determine coefficients of (xm + xm-1 + ... + x1 + x0)**k
	for (my $ind = 0; $ind <= $maxpoly; $ind ++) {
		my $term = $ind**$power;
		print sprintf("%4d %6d %0${width}b\n", $ind, $term, $term);
	} # for
	
sub iterate {
	my ($parm) = @_;
	if ($level < $power) { # need more recursion
		$level ++;
		my $ind = 0;
		while ($ind <= $maxpoly) {
			&iterate("$parm $ind");
			$ind ++
		} # while $ind
		$level --;
	} else { # max. iteration level reached
		my $sum = 0;
		my @list = map {
			$sum += $_; 
			$_
		} sort{$b <=> $a} split(/\s/, substr($parm, 1));
		my $elem = "x" . join("*x", @list) . "\t$sum";
		print "$elem\n";
	}
} # iterate
	

