#!/usr/bin/perl

# Extracts special relations from the output of "relations3.pl"
# @(#) $Id$
# Copyright (c) 2013 Dr. Georg Fischer
# 2013-08-05

use strict;
use Math::Matrix;
my $desired = shift(@ARGV);
# print "/$desired/\n";

while (<>) {
	my $line = $_;
	$line =~ s/\s+\Z//; # chompr
	$line =~ s/\A\s+//; # leading spaces
	my @temp = split(/\t/, $line);
	my $cond = $temp[4];
	$cond =~ s/\A\s+//;
	# print "/$cond/\n";
	my @tuple = splice(@temp, 0, 4);
	if ($desired eq substr($cond, 0, length($desired))) {
		print '                    test.add(new Vector(new int[]{', join(",", @tuple), "})); // " . $cond . "\n";
	}
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
 