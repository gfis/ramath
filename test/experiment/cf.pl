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
# @(#) $Id: cf.pl 221 2009-08-11 06:08:05Z gfis $
#
# Usage: 
#   perl cf.pl [-reg|-ceil|-alt|-near]
#------------------------------------------------------------------ 

use strict;
use Math::BigInt;
use Math::BigInt':constant';

	my $opt = shift(@ARGV);
	my $denom = Math::BigInt->new("271828182845904523536028747135266249775724709369995957496696762772407");
	my $nomin = Math::BigInt->new("100000000000000000000000000000000000000000000000000000000000000000000");
	$denom = Math::BigInt->new("0577215664901532860606512090082402431042");
	$nomin = Math::BigInt->new("1000000000000000000000000000000000000000");
	my $quot  = Math::BigInt->new(1);
	my $rest  = Math::BigInt->new(1);
	my $toggle = 1;
	my $loop_check = 128;
	while (-- $loop_check > 0 && $denom != 0) {
		$quot = int($denom / $nomin);
		$rest = $denom % $nomin;
		print "$denom / $nomin";
		if (0) {
		} elsif ($opt =~ m[ceil]) {
			$quot ++;
			$rest = $nomin - $rest;
		} elsif ($opt =~ m[alt] ) {
			$toggle = 1 - $toggle;
			if ($toggle == 1) {
				$quot ++;
				$rest = $nomin - $rest;
			}
		} elsif ($opt =~ m[near]) {
			if ($rest >= $nomin / 2) {
				$quot ++;
				$rest = $nomin - $rest;
			}
		} else { # regular
		}
		print " = $quot rest $rest\n";
		$denom = $nomin;
		$nomin = $rest;
	} # while
	
