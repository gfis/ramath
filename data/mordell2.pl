#!/usr/bin/perl

# Extracts relations from the output of test/T25.this.tst (Fermat/Carcavi(7), x^2+1=y^3)
# @(#) $Id$
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-06-13

use strict;

my $y = 1;
my $ox = 1;
while ($y < 1000) {
	$y += 1;
	my $y3 = $y*$y*$y;
	my $x = int(sqrt($y3));
	my $xp1 = $x + 1;
	if ($y3 - $x*$x == 0) {
		print '-' x 64, "\n";
	}
	print sprintf("%3d %12d %10d %5d %8.2f %10d %10d\n"
			, $y, $y3, $x, $x - $ox, $x / $y
			, $y3 - $x*$x, $y3 - $xp1*$xp1);
	$ox = $x;
} # while $y