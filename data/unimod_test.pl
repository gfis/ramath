#!/usr/bin/perl

# Test square matrices for unimodularity
# by checking the determinants for +-1 
# @(#) $Id$
# Copyright (c) 2013 Dr. Georg Fischer
# 2013-07-25

use strict;
use Math::Matrix;

while (<>) {
	my $line = $_;
	$line =~ s/\s+\Z//; # chompr
	if ($line =~ m{\A\#\s*\w+\:\s*([0-9 \-]+)}) {
		my $tuple = $1;
		my $head = $line;
		$tuple =~ s/\s+\Z//;
		my @vals = split(/\s+/, $tuple);
		my @mats = ();
		my @marr = ();
		foreach my $val(@vals) {
			$line = <>;
			push(@marr, $line);
			my @arr = split(/\s+/, $line);
			push(@mats, \@arr);
		} # foreach
		my $matrix = new Math::Matrix(@mats);
		my $det = $matrix->determinant();
		$det .= ($det =~ m{\A\-?1\Z}) ? "!" : "?";
		print "$head, determinant " . $det .  "\n";
		print join("", @marr);
	} # if $line
} # while <>
__DATA__
# twice: 8 15 17 => 33 56 65
-2 1 2
-1 2 2
-2 2 3
# twice: 15 8 17 => 35 12 37
-1 2 2
-2 1 2
-2 2 3
# twice: 5 12 13 => 7 24 25
1 -2 2
2 -1 2
2 -2 3
# twice: 21 20 29 => 119 120 169
1 2 2
2 1 2
2 2 3
# twice: 7 24 25 => 15 112 113
2 -1 1
2 2 2
2 1 3
# twice: 12 5 13 => 45 28 53
2 -1 2
1 -2 2
2 -2 3
# twice: 5 12 13 => 9 40 41
2 1 -1
-2 2 2
-2 1 3
# twice: 15 8 17 => 55 48 73
2 1 1
2 -2 2
2 -1 3
# twice: 20 21 29 => 119 120 169
2 1 2
1 2 2
2 2 3
