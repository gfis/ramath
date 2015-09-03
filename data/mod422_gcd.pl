#!perl

# check for GCD in EEC(4,2,2)
# @(#) $Id$
# 2015-08-29, Dr. Georg Fischer

use strict;

	while (<>) {
		s/\s+\Z//; # chompr
		my @mods = split(/\s+/, $_);
		print &gcd4(@mods) . "\t" . join(",", @mods) . "\n";
	} # while <>

# from http://langref.org/fantom+perl/algorithms/arithmetic/greatest-common-divisor
sub gcd {
    my ($a, $b) = @_;
    ($a, $b) = ($b, $a) if $a > $b; 
    while ($a) { 
        ($a, $b) = ($b % $a, $a) 
    } # while
    return $b;
} # gcd

sub gcd4 {
    my @a = @_;
    return &gcd($a[0], &gcd($a[1], &gcd($a[2], $a[3])));
} # gcd4


__DATA__
158 59 134 133
239 7 227 157
292 193 257 256
502 271 497 298
542 103 514 359
631 222 558 503
1203 76 1176 653
1381 878 1342 997
2189 1324 1997 1784
2461 1042 2141 2026
