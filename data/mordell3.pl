#!/usr/bin/perl

# Inrease moduls
# @(#) $Id$
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-12-26
# usage:
#   perl mordell3.pl 54 24 216

use strict;
my $a   = shift(@ARGV);
my $b   = shift(@ARGV);
my $mod = shift(@ARGV);
my $x = 5;
my $y = 3;
my $res = 0;
my 
$i = 0;
while ($i < 10) {
	my $xa = $x + $a * $i;
	my $xres = $xa * $xa + 2;
	my $xmod = $xres % $mod;
	my $yb = $y + $b * $i;
	my $yres = $yb * $yb * $yb;
	my $ymod = $yres % $mod;
	print " ", sprintf("%8d %8d %8d %8d %8d %8d\n", $xa, $xres, $xmod, $yb, $yres, $ymod);
	$i ++
} # while $i
