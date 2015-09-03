#!perl
# values of  1 + 16b + 96b^2 mod 128
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-08-15: from scratch
#
# usage:
#   perl mod128.pl
#-----------------------------------
use strict;
	my $div = 128;
	my 
	$num = 0;
	while ($num < 32) {
		my $mod = ( 1 +  16*$num +  96*$num*$num) % $div;
		print "$num\t$mod\n";
		$num ++;
	} # while
	print "----\n";
	$num = 0;
	while ($num < 32) {
		my $mod = (16 + 128*$num + 384*$num*$num) % $div;
		print "$num\t$mod\n";
		$num ++;
	} # while
