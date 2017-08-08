#!/usr/bin/perl

# Inrease moduls
# @(#) $Id$
# Copyright (c) 2015 Dr. Georg Fischer
# 2016-03-07
# usage:
#   perl mordell5.pl

use strict;
my $t = 0;
my $r = 0;
my $fr = &frsub($r);
while ($t < 512) {
	my $gt = 128*$t*$t*$t + 48*$t*$t + 6*$t;
	while (&frsub($r + 1) <= $gt) {
		$r ++;
	} # while
	# no f(r+1) > gt
	print sprintf("%2d %10d > f(%d) = %d\t\tdiff=%d \n", $t, $gt, $r, &frsub($r), $gt - &frsub($r));
	$t ++
} # while $i

sub frsub {
	my ($x) = @_;
	return 27*$x*$x + 5*$x;
}
