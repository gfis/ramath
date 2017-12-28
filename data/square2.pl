#!/usr/bin/perl

# äöüÄÖÜß
# compute epxr mod 9
# @(#) $Id$
# Copyright (c) 2017 Dr. Georg Fischer
# 2017-12-28

use strict;

my $x = 0;
while ($x < 200) {
	if ((12*$x*$x - 20*$x + 9 ) % 9 == 0) {
		print "x=$x\n"; 
	}
	$x ++;
} # while $x

__DATA__
...