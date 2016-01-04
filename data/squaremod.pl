#!/usr/bin/perl
# @(#) $Id$
use strict;

my $m = 9;
my $i = 0;
while ($i < 4*$m) {
	my $form = 6*$i*$i + 11*$i + 4;
	print sprintf("%4d %4d %4d\n", $i, $form, $form % $m);
	$i ++;
} # while $i

# (n*v+a)^2+2=(n*w+b)^3
