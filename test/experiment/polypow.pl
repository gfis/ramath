#!/usr/bin/perl

#------------------------------------------------------------------ 
# take a polynom to the kth power
# @(#) $Id: polypow.pl 221 2009-08-11 06:08:05Z gfis $
# 2009-06-29: Georg Fischer: 62!
# Usage: 
#   perl polypow.pl power maxpoly
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

	if (scalar(@ARGV) < 2) {
		print "usage: perl polypow.pl k m\n\tk = exponent\n\tm = degree of polynom to be exponentiated\n";
		exit;
	}
	my $power   = shift(@ARGV); # k = take the polynom to this exponent
	my $maxpoly = shift(@ARGV); # m = degree of polynom
	# determine coefficients of (xm + xm-1 + ... + x1 + x0)**k
	
	my %hash = ();
	my $level = 0;

	&iterate("");
	# ...
	
	my $old = "";
	my $new;
	my $key;
	my $term;
	print "0";
	foreach $key (sort { $b <=> $a} keys(%hash)) {
		($new, $term) = split(/\t/, $key);
		if ($new ne $old) {
			print "\n" . sprintf("/* %2d */\t", $new);
			$old = $new;
		} else {
 		}
		print " + $term *" . sprintf("%2d", $hash{$key});
	} # foreach
	print "\n";
	
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
		my $elem =  "$sum\t" . "x" . join("*x", @list);
		&store($elem);
	}
} # iterate

sub store {
	my ($elem) = @_;
	if (defined($hash{$elem})) {
		$hash{$elem} ++;
	} else {
		$hash{$elem} = 1;
	} 
	# print "$elem\n";
} # store	

