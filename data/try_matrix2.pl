#!/usr/bin/perl

# Try to compute a 3x3 matrix preserving Pythagoras
# (3 4 5) -> (21 20 29)
# @(#) $Id$
# Copyright (c) 2013 Dr. Georg Fischer
# 2013-07-31

use strict;
use Math::Matrix;

# 21 = 3x11 + 4 x12 + 5 x13
my @m21 = qw(
	7 0 0
	4 1 1 
	3 3 0 
	2 0 3
	1 2 2 
	0 4 1
	);
# 20 = 3x21 + 4 x22 + 5 x23
my @m20 = qw(
	0 5 0
	0 0 4
	2 1 2 
	4 2 0
	1 3 1
	);
# 29 = 3x31 + 4 x32 + 5 x33
my @m29 = qw(
	8 0 1
	7 2 0
	5 1 2
	3 5 0
	3 0 4
	2 2 3 
	1 4 2
	0 1 5
	0 6 1
	);
my $dim = 3;
my @base = (21, 20, 29);
my $im21 = 0;
while ($im21 < scalar(@m21)) {
	my $im20 = 0;
	while ($im20 < scalar(@m20)) {
		my $im29 = 0;
		while ($im29 < scalar(@m29)) {
			my @hm21 = @m21; # copy because 'splice' shortens the arrays
			my @hm20 = @m20;
			my @hm29 = @m29;
			my @am21 = splice(@hm21, $im21, $dim);
			my @am20 = splice(@hm20, $im20, $dim);
			my @am29 = splice(@hm29, $im29, $dim);
			my @mats = 
				( \@am21
				, \@am20
				, \@am29
				);
			my $matrix = new Math::Matrix(@mats);
			my $vector = new Math::Matrix((\@base));
			my $det = $matrix->determinant();
			my $prod = $matrix->multiply($vector->transpose());
			my $cprod = $prod->as_string();
			$cprod =~ s{\.0+}{}g;
			$cprod =~ s{\s+}{ }g;
			$cprod =~ s{\A\s+}{}; # leading  whitespace
			$cprod =~ s{\s+\Z}{}; # trailing whitespace
			# print "/$cprod/\n";
			my @c = split(/ /, $cprod);
			print "# Matrix $im21 $im20 $im29, det=$det" . (($det == 1 or $det == -1) ? '!' : '?') 
				. " => " . join(",", @c)
				. (($c[0]*$c[0] + $c[1]*$c[1] == $c[2]*$c[2]) ? " !!" : " ??")
				. "\n"
				;
			print ""
				. join(" ", @am21) ."\n"
				. join(" ", @am20) ."\n"
				. join(" ", @am29) ."\n"
				;
			$im29 += $dim;
		} # while im29
		$im20 += $dim;
	} # while im20
	$im21 += $dim;
} # while im21
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
