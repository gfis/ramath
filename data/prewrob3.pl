#!/usr/bin/perl

# Prepare Wroblewski's EEC(3) tuples for unique powersum representation
# The input tuples are in "Wroblewski" order (c.f. __DATA__).
# @(#) $Id$
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-03-27: copied from relations3.pl
# 
# The 1st element has maximum absolute value.
# The last 2 of the 4 elements are negated.
# 6 -3 5 4  => 6 -3 -4 -5
# 12 1 10 9 => 12 1 -10 -9
# The resulting tuples, if raised to the 3rd power, yield a sum of zero.
#------------------------------------
use strict;

    while (<>) {
        my $line = $_;
        $line =~ s/\s+\Z//; # chompr
        $line =~ s/\A\s+//; # leading spaces
        my @temp = split(/\s+/, $line);
        my @tuple = @temp;
        $tuple[2] = - $temp[2];
        $tuple[3] = - $temp[3];
        print join("\t", @tuple), "\n";
    } # while <>
__DATA__
    6     -3      5     4
    9     -1      8     6
   19     -3     18    10
   20     -7     17    14
   25     -4     22    17
   28    -18     21    19
   29    -11     27    15
   41     -2     40    17
   41     -6     33    32
   44    -16     41    23
   46     -3     37    36
   46    -27     37    30

   12      1     10     9
   16      2     15     9
   27     10     24    19
   34      2     33    15
   34      9     33    16
   39     17     36    26
   40     12     33    31
 