#!/usr/bin/perl

# @(#) $Id$
# Determine which rests are left mod 128 for expansion of a^4+b^4 (T52)
# 2015-09-14, Georg Fischer

use strict;

	my $mod   = 128;
    my %hash2 = ();
    my %hash3 = ();
    my $limit = 4096;
    my $num = 0;
    while ($num < $limit) {
    	my $pow =16 * $num * (1 + 6 * $num);
        my $m01 = ( 1 + $pow) % $mod;
        my $m17 = (17 + $pow) % $mod;
        print sprintf("%4d: %3d %3d\n", $num, $m01, $m17);
        $num ++;
    } # while $num
