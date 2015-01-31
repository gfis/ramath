#!/usr/bin/perl

#------------------------------------------------------------------ 
# Print Bernoulli numbers
# @(#) $Id: bernoulli.pl 221 2009-08-11 06:08:05Z gfis $
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
	# determine coefficients of (xm + xm-1 + ... + x1 + x0)**k
	
	my %hash = ();
	my $level = 0;

	&iterate("");
	exit;
	# ...
	
	my $key;
	foreach $key (sort(keys(%hash))) {
		my $old;
		my $new;
		my @list = sort(split(/ /, $hash{$key}));
		push (@list, "}}}}}}}}}}}}}}"); # high value
		$old = $list[0];
		my $ind = 1;
		my $count = 1;
		while ($ind < scalar(@list)) {
			if ($old ne $new) { # control break
			} else { # same
			} # same
			$old = $new;
			$ind ++;
		}
	} # foreach
	
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
		&store($elem);
	}
} # iterate

sub store {
	my ($elem) = @_;
	print "$elem\n";
} # store	

