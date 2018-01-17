#!/usr/bin/perl
# @(#) $Id$
# Determine which rests are left for m^2 and m^3 mod n, m=3,5,7, ..., n input
# and whether k^2 +2 = m^3 could fit 
# 2015-09-11, Georg Fischer

use strict;

    my $limit = 2048;
    my $lim2  = 4096;
    my $dist  = 2;
    my @p2 = ();
    my @p3 = ();
    my $ip = 0;
    while ($ip < $lim2) { # precompute x^2 and x^3
        $p2[$ip] = $ip * $ip;
        $p3[$ip] = $p2[$ip] * $ip;
        $ip ++;
    } # while $ip precompute
    my $mod = 2;
    while ($mod < $limit) { # evaluate modulos
        my $num = 2;
        my %hash2 = (); # residues of $num^2
        my %hash3 = (); # residues of $num^3
        while ($num < $lim2) {
            my $rest2 = $p2[$num] % $mod;
            my $rest3 = $p3[$num] % $mod;
            $hash2{sprintf("%04d", $rest2)} = 1;
            $hash3{sprintf("%04d", $rest3)} = 1;
            $num += 1;
        } # while $num
        if (0) { # show all residues
            print sprintf("%4d^2\t\t", $mod);
            foreach my $key(sort(keys(%hash2))) {
                print " " . ($key + 0);
            } # foreach $key
            print "\n";
            print sprintf("%4d^3\t\t", $mod);
            foreach my $key(sort(keys(%hash3))) {
                print " " . ($key + 0);
            } # foreach $key
            print "\n";
        } # show all residues
        if (1) { # show matching
            my $count = 0;
            my $line = "";
            foreach my $key(sort(keys(%hash2))) {
                my $val = sprintf("%04d", ($key + $dist) % $mod);
                if (defined($hash3{$val})) {
                    $count ++;
                    $line .= " " . ($val + 0);
                }
            } # foreach $key
            if (0) {
            } elsif ($count == 0) {
                print sprintf("%4d= ", $mod) . " no matching residues\n";
            } elsif ($count <= 10) {
                print sprintf("%4d= ", $mod) . substr($line, 1) . "\n";
            } else {
                print sprintf("%4d= ", $mod) . substr($line, 1, 100) . " etc ... \n";
            }
        } # show matching

        # print "\n";
        $mod += 1;
    } # while $mod evaluate modulos
__DATA__
dist =2, x^2 + 2 = y^3
   2= 0 1
   3= 2 0
   4= 3
   5= 2 3 1
   6= 2 3 5 0
   7= 6
   8= 3
   9= 0
  10= 2 3 6 7 8 1
  11= 2 3 5 6 7 0
  12= 3 11
  13= 5 12 1
  14= 6 13
  15= 2 3 6 8 11 12
  16= 3 11
  17= 2 3 4 6 10 11 15 0 1
  18= 9 0
  19= 7 8 11 18 0
  20= 3 7 11
  21= 6 20
  22= 2 3 5 6 7 11 13 14 16 17 18 0 etc ... 
  23= 2 3 4 5 6 8 10 11 14 15 18 20 etc ... 
  24= 3 11
  25= 2 3 6 8 11 13 16 18 21 23 1 etc ... 
  26= 5 12 14 18 25 1
  27= 0
  28= 27
  29= 2 3 6 7 8 9 11 15 18 22 24 25 26 27 1 etc ... 
  30= 2 3 6 8 11 12 17 18 21 23 26 27 etc ... 
  31= 2 4 16 27 30
  32= 3 11 19 27
