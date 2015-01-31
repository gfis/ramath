#!/usr/bin/perl

# Test cubic tuples for special relations among the bases
# The input tuples are in "Wroblewski" order (c.f. __DATA__).
# @(#) $Id$
# Copyright (c) 2013 Dr. Georg Fischer
# 2013-08-05

use strict;
use Math::Matrix;

while (<>) {
	my $line = $_;
	$line =~ s/\s+\Z//; # chompr
	$line =~ s/\A\s+//; # leading spaces
	my @temp = split(/\s+/, $line);
	my @tuple = @temp;
	$tuple[3] = $temp[0];
	$tuple[0] = - $temp[1];
	$tuple[1] = $temp[3];
	# $tuple[2] = $temp[2];
	my ($a, $b, $c, $d) = @tuple;
	my $k = 0;
	my $result = "";

	if ($a + $b == 9) {
		$result .= " a+b=9";
	}
	if ($b + $c == 9) {
		$result .= " b+c=9";
	}
	if ($a + $c == 9) {
		$result .= " a+c=9";
	}

	if ($a + 3 == $d) {
		$result .= " a+3=d";
	}
	if ($b + 3 == $d) {
		$result .= " b+3=d";
	}
	if ($c + 3 == $d) {
		$result .= " c+3=d";
	}

	if ($a + 2 == $b) {
		$result .= " a+2=b";
		if (($d - $c) % 2 == 0) {
			$k = ($d - $c) / 2;
			$result .= " c+2*$k=d"
		}
	}
	if ($a + 2 == $c) {
		$result .= " a+2=c";
		if (($d - $b) % 2 == 0) {
			$k = ($d - $b) / 2;
			$result .= " b+2*$k=d"
		}
	}
	if ($b + 2 == $c) {
		$result .= " b+2=c";
		if (($d - $a) % 2 == 0) {
			$k = ($d - $a) / 2;
			$result .= " a+2*$k=d"
		}
	}

	if ($a + 1 == $c) {
		$result .= " a+1=c";
	}
	if ($b + 1 == $c) {
		$result .= " b+1=c";
	}

	if ($a + 1 == $d) {
		$result .= " a+1=d";
	}
	if ($b + 1 == $d) {
		$result .= " b+1=d";
	}
	if ($c + 1 == $d) {
		$result .= " c+1=d";
		if (($b - $a) % 2 == 1) {
			$k = ($b - $a - 1) / 2;
			$result .= " a+1+2*$k=b"
		}
	}

	if ($a + 2 == $d) {
		$result .= " a+2=d";
		if (($c - $b) % 2 == 0) {
			$k = ($c - $b) / 2;
			$result .= " b+2*$k=c"
		}
	}
	if ($b + 2 == $d) {
		$result .= " b+2=d";
		if (($c - $a) % 2 == 0) {
			$k = ($c - $a) / 2;
			$result .= " a+2*$k=c"
		}
	}
	if ($c + 2 == $d) {
		$result .= " c+2=d";
		if (($b - $a) % 2 == 0) {
			$k = ($b - $a) / 2;
			$result .= " a+2*$k=b"
		}
	}

	if (length($result) > 0) {
	}
	print join("\t", ($a, $b, $c, $d)), "\t$result\n";
} # while <>
__DATA__
    6     -3      5     4
    9     -1      8     6
   19     -3     18    10
   20     -7     17    14
   25     -4     22    17
   28    -18     21    19
   29    -11     27    15
   41     -2     40    17
   41     -6     33    32
   44    -16     41    23
   46     -3     37    36
   46    -27     37    30
   53    -29     44    34
   54    -12     53    19
   58    -15     49    42
   67    -22     54    51
   69    -36     61    38
   70     -7     57    54
   71    -14     70    23
   72    -34     65    39
   75    -38     66    43
   76    -31     72    33
   81    -25     74    48
   82    -19     69    60
 