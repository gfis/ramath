#!perl
# Extract the valid tuples from ramath/test/EC*.this.tst
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-04-01: copied from genEC.pl
#
# usage:
#   perl split_tuple.pl < infile > outfile
#-----------------------------------
use strict;

    my %hash = ();
    my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime (time);
    my $timestamp = sprintf ("%04d-%02d-%02d %02d:%02d:%02d", $year + 1900, $mon + 1, $mday, $hour, $min, $sec);    

    while (<>) {
        my $line = $_;
        my @tuples = $line =~ m{\s\=\>\s\[([\d\-\,]+)\]}g;
        foreach my $tuple (@tuples) {
        	my @t1 = (sort {$b <=> $a} (split(/\,/, $tuple)));
        	if (abs($t1[0]) < abs($t1[scalar(@t1) - 1])) {
        		@t1 = reverse(map {0 - $_} @t1);
        	}
        	my $t2 = join(",", @t1);
            if (defined($hash{$t2})) {
                $hash{$t2} ++;
            } else {
                $hash{$t2} ++;
            }
        } # foreach $tuple
    } # while <>
    foreach my $key (sort(keys(%hash))) {
        print sprintf("%-32s %6d\n", $key, $hash{$key});
    } # foreach $key
