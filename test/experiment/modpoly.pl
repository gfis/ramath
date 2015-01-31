#!/usr/bin/perl

#------------------------------------------------------------------
# Test some modular polynomial
# @(#) $Id: bernoulli.pl 221 2009-08-11 06:08:05Z gfis $
# 2013-09-19: Georg Fischer
# Usage:
#   perl modpoly.pl
#------------------------------------------------------------------

use strict;

	my $lob = -64;
	my $upb = -$lob;
	my $mod = 3;
	my $maxpoly = 1024;
	my $a = $lob;
	while ($a < $upb) {
		my $form = -17 + 16 * ($a*$a*$a);
		print "- 17 + 16 * a^3 = " . ($form % $mod) . " (mod $mod), a = $a = " . ($a % $mod) . " (mod $mod)\n";
		$a ++;
	} # while $ind
