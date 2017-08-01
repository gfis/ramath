#!/usr/bin/perl

# mormax.pl - Evaluate (y+x)^2 + 2 = y^3
# For each x=0, 1, ...
# determine the first y which makes the polynomial <= 0
# @(#) $Id$
# Copyright (c) 2017 Dr. Georg Fischer
# 2017-07-31: copied from mordell1.pl

use strict;

	my $x = 0;
    while ($x <= 256) {
        my $z = 0;
        my $y = 0;
        my $poly = 1;
        while ($poly > 0) {
            $z ++;
            $y = 8*$z + 3;
            $poly = ($y + $x)*($y + $x) + 2 - $y * $y * $y;
        } # while $y
        print sprintf("%6d %6d %6d %6d\n", $x, $z, $y, $poly);
        $x += 2;
    } # while $x

__DATA__
