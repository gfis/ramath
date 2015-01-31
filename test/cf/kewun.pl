#!/usr/bin/perl

# KEWUN - Georg Fischer 4.3.1969 und 12.2.1973 (ALGOL 60 on TR440)
# @(#) $Id: kewun.pl 232 2009-08-27 22:17:16Z gfis $
# Copyright (c) 1969, 2009 Dr. Georg Fischer

use strict;
	my ($n, $k, $g, $i, $na, $ne, $b0, $b1, $p0, $p1, $q0, $q1);
	$na = shift(@ARGV); # untere Grenze	
	$ne = shift(@ARGV); # obere  Grenze
	$g = 0;
	my $epsi = 0.0001; # fuer INTEGER-Division
	for ($n = $na; $n <= $ne; $n ++) {
		while ($g*$g <= $n) {
			$g ++;
		} # while $g
		$g --;
		print "$n  $g  ";
		if ($g*$g != $n) { # keine Quadratzahl
			$p0 = 0;
			$q0 = 1;
			$b0 = $g;
		bb:
			$p1 = $b0 * $q0 - $p0;
			$q1 = int(($n - $p1*$p1) / $q0 + $epsi);
			$b1 = int(($g + $p1) / $q1 + $epsi);
			print "$b1,";
			if ($q0 == $q1) {
				print "/...";
			} else {
				if ($p0 == $p1) {
					print "*...";
				} else {
					$p0 = $p1; 
					$q0 = $q1;
					$b0 = $b1;
					goto bb;
				}
			}
			print $g+$g;
		} # keine Quadratzahl
		print "\n";	
	} # for $n

