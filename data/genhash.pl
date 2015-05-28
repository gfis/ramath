#!/usr/bin/perl

# Generate a Java HashMap from
# prepared Wroblewski's EEC(3) tuples for unique powersum representation
# For the input tuples see __DATA__.
# @(#) $Id$
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-04-02: copied from prewrob3.pl
# 
# The 1st element has maximum absolute value.
# The other 3 are in ascending order, even if negative.
# 6 -3 -5 -4  => 6 -5 -4 -3
# 12 1 -10 -9 => 12 -10 -9 1
# The resulting tuples, if raised to the 3rd power, yield a sum of zero.
#------------------------------------
use strict;
    my $MAXLIST = 256;
    print <<"GFis";
        int MAXLIST = $MAXLIST;
        int[] vlist = new int[MAXLIST][];
        for (int ilist = 0; ilist < MAXLIST; ilist ++) {
            vlist[ilist] = null;
        } // for ilist
        
GFis
    my $of = sprintf("%3d", 0);
    my      $code =    "        vlist[$of] = new int[] {";
    my $count = 0;
    while (<>) {
    	$count ++;
        my $line = $_;
        $line =~ s/\s+\Z//; # chompr
        $line =~ s/\A\s+//; # leading spaces
        my @temp = split(/\,/, $line);
        my $nf = sprintf("%3d", shift(@temp));
    	last if $nf >= $MAXLIST;
        my @tuple = sort {$b <=> $a} (@temp);
        # unshift(@tuple, $nf);
        my $normtup = join(",", @tuple);
        if ($nf != $of) {
            $of = $nf;
            print "$code };\n";
            $code  =   "        vlist[$nf] = new int[] { $normtup";
        } else {
            $code .= "\n                               , $normtup";
        }
    } # while <>
    
            print "$code };\n";
    print <<"GFis";
GFis

__DATA__
6,-3,-5,-4
9,-1,-8,-6
12,1,-10,-9
16,2,-15,-9
19,-3,-18,-10
20,-7,-17,-14
25,-4,-22,-17
27,10,-24,-19
28,-18,-21,-19
29,-11,-27,-15
34,2,-33,-15
34,9,-33,-16
39,17,-36,-26
40,12,-33,-31
41,-2,-40,-17
41,-6,-33,-32
44,-16,-41,-23
46,-27,-37,-30
46,-3,-37,-36
51,12,-43,-38
53,-29,-44,-34
53,8,-50,-29
54,-12,-53,-19
55,17,-54,-24
58,-15,-49,-42
58,9,-57,-22
60,3,-59,-22
67,-22,-54,-51
67,30,-58,-51
69,-36,-61,-38
69,42,-61,-56
70,-7,-57,-54
71,-14,-70,-23
72,-34,-65,-39
75,-38,-66,-43
76,-31,-72,-33
76,17,-73,-38
76,5,-69,-48
80,15,-71,-54
81,-25,-74,-48
82,-19,-69,-60
82,51,-75,-64
84,-28,-75,-53
85,-50,-64,-61
87,-20,-79,-54
87,-26,-78,-55
87,-38,-79,-48
88,-21,-84,-43
88,-25,-86,-31
89,-17,-86,-40
89,2,-86,-41
90,-25,-87,-38
90,-58,-69,-59
93,-32,-85,-54
93,11,-92,-30
94,23,-84,-63
96,-19,-90,-53
96,50,-93,-59
97,-45,-79,-69
97,20,-96,-33
97,47,-90,-66
98,24,-89,-63
98,35,-92,-59
99,29,-92,-60
