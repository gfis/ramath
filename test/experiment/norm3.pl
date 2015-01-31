#!/usr/bin/perl

#------------------------------------------------------------------ 
# normalize results if cubic parameter search
# @(#) $Id: norm3.pl 221 2009-08-11 06:08:05Z gfis $
# 2009-06-22, Georg Fischer: copied from parm2.pl
# Usage: 
#   cat cubic4.full.167.txt | perl norm3.pl
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

	# print &ggt(18,12), "  ", &ggt(18,7), "\n";
	# exit;
	my @matrix;
	my @tuples;
	my @tuple;
	my $busy = 1;
	while ($busy) { # skip over first result set
		$_ = <>;
		if (m[\!]) {
			$busy = 0;
		}
	} # while <>

	while (<>) {
		if (m[\!]) {
			s[\r?\n][];
			@tuples  = split(/\s*\!\s*/);
			my $rest = $tuples[5];
			@tuples  = splice(@tuples, 1, 4);
			@tuple   = split(/\,/, $tuples[0]);
			my $ind;
			while ($ind < scalar(@tuples)) {
				$tuples[$ind] = &tuple_ggt($tuples[$ind]);
				$ind ++;
			} # while $ind
			my $prod = 1
					* abs($tuple[0]) 
					* abs($tuple[1]) 
					* abs($tuple[2]) 
					* abs($tuple[3]) 
					; 
			$rest    =~ s[\^3][]g;
			$rest    =~ s{[\(\)]}{}g;
			@matrix  = split(/[+=]/, $rest);
			print "" , &tuple_prod($tuples[0])
				, " ", &tuple_prod($tuples[1])
				, " ", &tuple_prod($tuples[2])
				, " ", &tuple_prod($tuples[3])
				, "\t",  join(" \t", @tuples), "\t" , join("\t", @matrix), "\n";
		}
	} # while <>
	
sub tuple_prod { my ($parm) = @_;
	my @tuple = split(/\,/, $parm);
	return = 1
			* abs($tuple[0]) 
			* abs($tuple[1]) 
			* abs($tuple[2]) 
			* abs($tuple[3]) 
			; 
} # tuple_prod
	
sub tuple_ggt { my ($parm) = @_;
	my @tuple = split(/\,/, $parm);
	my $factor = &ggt(&ggt(&ggt($tuple[0], $tuple[1]), $tuple[2]), $tuple[3]);
	my $ind = 0;
	while ($ind < scalar(@tuple)) {
		$tuple[$ind ++] /= $factor;
	}
	my $result = join(",", @tuple);
	if ($factor > 1) {
		$result .= "*$factor";
	}
	return $result;
} # tuple_ggt
	
sub ggt { my ($a, $b) = @_;
	$a = abs($a);
	$b = abs($b);
	# 18/10, 10/8, 8/2 -> 2;  18/7, 7/4, 4/3, 3/1
	my $m = $a % $b;
	while ($m > 0) {
		my $a = $b;
		$b = $m;
		$m = $a % $b;
	} # while
	return  $b;
} # ggt
__DATA__
# 1 ------------------------------- dt=0
  0  -1   1   0
 -2   0   0   1
  0   0   0   0
  0   2   1   0
  1   0   0   1
!12,15,9,18! 75,53,28,84! 248,127,65,260! 615,249,126,630!  (0,-2,0,0,1)^3+(-1,0,0,2,0)^3+(1,0,0,1,0)^3=(0,1,0,0,1)^3
test Vieta=0
# 2566625 ------------------------------- dt=30
  0   1  -1   0
 -1  -1   1   2
  2   2  -2  -1
 -1   1   2   2
  0   0   0   0
!-2,15,9,16! -12,43,38,51! -36,93,99,120! -80,171,204,235!  (0,-1,2,-1,0)^3+(1,-1,2,1,0)^3+(-1,1,-2,2,0)^3=(0,2,-1,2,0)^3
# 2692100 ------------------------------- dt=1
  0   1  -1   0
 -1   1  -1   2
 -2   2  -2   1
 -1   2   1   2
  0   0   0   0
!-4,6,-3,5! -18,27,-3,24! -48,76,5,69! -100,165,27,152!  (0,-1,-2,-1,0)^3+(1,1,2,2,0)^3+(-1,-1,-2,1,0)^3=(0,2,1,2,0)^3
# 2867125 ------------------------------- dt=2
  0   1  -1   0
  1   1  -1  -2
  2   2  -2  -1
  1  -1  -2  -2
  0   0   0   0
!4,3,-6,-5! 18,3,-27,-24! 48,-5,-76,-69! 100,-27,-165,-152!  (0,1,2,1,0)^3+(1,1,2,-1,0)^3+(-1,-1,-2,-2,0)^3=(0,-2,-1,-2,0)^3
# 2991600 ------------------------------- dt=1
  0   1  -1   0
  1  -1   1  -2
 -2   2  -2   1
  1  -2  -1  -2
  0   0   0   0

