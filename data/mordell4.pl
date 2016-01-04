#!/usr/bin/perl

# Increase modulus
# @(#) $Id$
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-12-26
# usage:
#   perl mordell3.pl 54 24 216

use strict;
my $mod = shift(@ARGV);
my $r = 0;
my $t = 0;
my $i = 0;
while ($i < 64) {
	my $left = 4 * $r * (27 * $r + 5) + 1;
	my $right = (8 * $t + 1);
	$right = $right * $right * $right;
	print " ", sprintf("%8d %8d %8d %8d %8d\n", $r, $left, $right, $left % $mod, $right % $mod);
	$i ++;
	$r ++;
	$t ++;
} # while $i
