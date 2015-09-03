#!perl

# check for GCD in EEC(4,2,2)
# @(#) $Id$
# 2015-08-29, Dr. Georg Fischer

use strict;

	while (<>) {
		s/\s+\Z//; # chompr
		my @mods = split(/\s+/, $_);
		my $pow2 = $mods[0]*$mods[0] + $mods[1]*$mods[1];
		my $pow4 = $mods[0]*$mods[0]*$mods[0]*$mods[0]* + $mods[1]*$mods[1]*$mods[1]*$mods[1];
		print join(",", @mods) . "\t" . $pow2 . "\t" . $pow4 
				. "\t" . ($pow2 % 4) . "\t" . ($pow4 % 4) ."\n";
	} # while <>

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
