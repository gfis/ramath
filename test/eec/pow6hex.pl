#!/usr/bin/perl

# @(#) $Id: pow6hex.pl 126 2009-04-30 17:02:24Z gfis $
# determine the last nibble of nth powers
# 2009-04-20, Dr. Georg Fischer

use strict;
use Math::BigInt;
use Math::BigInt':constant';

	my $exponent = shift(@ARGV);
	my $divisor  = shift(@ARGV);
	my $n = Math::BigInt->new(1);
	while ($n <= 128) {
		my $nk = Math::BigInt->new(1);
		for (my $k = 0; $k < $exponent; $k ++) {
			$nk *= $n;
		} # for $k
		my $hexnk = $nk->as_hex();
		$hexnk =~s[\A0x][0];
		# my $nib1   = sprintf("%02x", $nk % 256);
		# my $nib2   = substr($hexnk, -4);
		my $nib2   = sprintf("%02d", $nk % $divisor);
		print "$nib2\t$n\t$hexnk\t$nk\n";
		$n ++;	
	} # while ++
