#!/usr/bin/perl

# KEWUN - Georg Fischer 4.3.1969 und 12.2.1973 (in ALGOL 60 on TR440)
# @(#) $Id: kewun3.pl 232 2009-08-27 22:17:16Z gfis $
# Copyright (c) 1969, 2009 Dr. Georg Fischer
# 2009-08-27: Periode 1 kuerzer; ohne GOTO

use strict;
	my ($n, $k, $g, $i, $na, $ne, $b0, $b1, $p0, $p1, $q0, $q1);
	$na = shift(@ARGV); # untere Grenze	
	$ne = $na;
	if (scalar(@ARGV) > 0) {
		$ne = shift(@ARGV); # obere  Grenze
	}
	$g = 0;
	my $epsilon = 0.0000001; # fuer INTEGER-Division
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
			my $busy = 1;
			while ($busy) {
				$p1 = $b0 * $q0 - $p0;
				$q1 = int(($n - $p1*$p1) / $q0 + $epsilon);
				$b1 = int(($g + $p1) / $q1 + $epsilon);
				print "$b1,";
				if ($q0 == $q1) {
					print "/..."; # davor steht die linke Haelfte der Periode, sie spiegelt sich am "/"
					$busy = 0;
				} elsif ($p0 == $p1) {
					print "*..."; # vor dem letzten Wert steht die linke Haelfte der Periode, sie spiegelt sich an diesem Wert
					$busy = 0;
				} else {
					$p0 = $p1; 
					$q0 = $q1;
					$b0 = $b1;
				}
			} # while $busy
			print 2*$g;
		} # keine Quadratzahl
		print "\n";	
	} # for $n

