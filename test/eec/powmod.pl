#!/usr/bin/perl

# @(#) $Id: powmod.pl 125 2009-04-30 07:04:50Z gfis $
# determine modulos 'div' of 'exp'th powers
# 2009-04-30, Dr. Georg Fischer

use strict;
use Math::BigInt;
use Math::BigInt':constant';

    if (scalar(@ARGV) < 2) {
        print "usage: perl powmod.pl exp div\n";
        exit(0);
    }
    my $exponent = shift(@ARGV);
    my $divisor  = shift(@ARGV);
    my $n = Math::BigInt->new(1);
    my %hash = ();
    while ($n <= 512) {
        my $nk = Math::BigInt->new(1);
        for (my $k = 0; $k < $exponent; $k ++) {
            $nk *= $n;
        } # for $k
        my $mod = $nk % $divisor;
        $hash{$mod} ++;
        $n ++;  
    } # while ++
    my $count = 0;
    foreach my $mod (sort(map { sprintf("%4d", $_) } keys(%hash))) {
        print sprintf("%4d: %4d\n", $mod, $hash{$mod + 0});
        $count ++;
    } # foreach
    print "gain: " . ($divisor - $count) . "\n";

