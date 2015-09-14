#!/usr/bin/perl
# @(#) $Id$
# Determine which rests are left for m^3 mod n, m=3,5,7, ..., n input
# 2015-09-11, Georg Fischer

use strict;

    my $limit = 100;
    my $lim2  = 4096;
    my @p2 = ();
    my @p3 = ();
    my $ip = 0;
    while ($ip < $lim2) {
        $p2[$ip] = $ip * $ip;
        $p3[$ip] = $p2[$ip] * $ip;
        $ip ++;
    } # while $ip
    my $mod = 3;
    while ($mod < $limit) {
        my %hash2 = ();
        my %hash3 = ();
        my $odd = 3;
        while ($odd < $lim2) {
            # my $oddpow2 = $odd * $odd;
            # my $oddpow3 = $oddpow2 * $odd;
            my $rest2 = $p2[$odd] % $mod;
            my $rest3 = $p3[$odd] % $mod;
            $hash2{sprintf("%04d", $rest2)} = 1;
            $hash3{sprintf("%04d", $rest3)} = 1;
            $odd += 1;
        } # while $odd
        if (1) { # show all rests
            print sprintf("%4d", $mod);
            foreach my $key(sort(keys(%hash2))) {
                print "," . ($key + 0);
            } # foreach $key
            print "\n";
            print sprintf("%4d", $mod);
            foreach my $key(sort(keys(%hash3))) {
                print "," . ($key + 0);
            } # foreach $key
            print "\n";
        } # show all rests
        if (1) { # show matching
            my $count = 0;
            my $line = "";
            foreach my $key(sort(keys(%hash2))) {
                my $val = sprintf("%04d", ($key + 2) % $mod);
                if (defined($hash3{$val})) {
                    $count ++;
                    $line .= "," . ($val + 0);
                }
            } # foreach $key
            if ($count <= 10) {
                print sprintf("%4d", $mod) . " -> " .substr($line, 1) . "\n";
            }
        } # show matching

        # print "\n";
        $mod += 1;
    } # while $mod
__DATA__
   3 -> 2,0
   5 -> 2,3,1
   7 -> 6
   9 -> 0
  11 -> 2,3,5,6,7,0
  13 -> 5,12,1
  15 -> 2,3,6,8,11,12
  17 -> 2,3,4,6,10,11,15,0,1
  19 -> 7,8,11,18,0
  21 -> 6,20
  27 -> 0
  31 -> 2,4,16,27,30
  35 -> 6,13,27
  37 -> 6,11,14,23,27,29,36,1
  39 -> 5,12,14,18,27,38
  43 -> 2,8,11,16,27,42,0
  45 -> 18,27,36
  49 -> 6,13,20,27,34,41,48
  57 -> 8,11,18,26,27,30,38,45,56,0
  61 -> 3,11,24,27,38,41,50,58,60,1
  63 -> 27
  65 -> 12,18,27,31,38,51,53,57,1
  77 -> 6,13,27,55,62,69
  81 -> 27,54,0
  91 -> 27,83,90
  93 -> 2,27,30,33,35,47,66,78,89,92
  99 -> 18,27,36,72,90,0
 105 -> 6,27,41,48,62,83
 117 -> 18,27,90
 119 -> 6,20,27,34,55,62,69,83,104
 133 -> 27,76,83,125,132
 135 -> 27,81,108
 153 -> 18,27,36,45,54,72,108,117,0
 171 -> 18,27,45,144,0
 189 -> 27
 217 -> 27,97,188,202,216
 243 -> 27,216,0
 259 -> 6,27,48,97,125,223,251,258
 273 -> 27,83,90,174,209,272
 279 -> 27,126,171,216,252
 297 -> 27,135,189,216,270,0
 301 -> 27,97,174,188,223,258,300
 315 -> 27,153,216
 333 -> 27,36,117,162,171,270,288,297
 351 -> 27,135,324
 387 -> 27,45,54,171,180,360,0
 399 -> 27,83,125,132,209,216,258,293,342,398
 405 -> 27,81,108,162,216,243,297,351,378
 427 -> 27,41,62,111,125,146,160,363,377,426
 441 -> 27,90,153,216,279,342,405
 455 -> 27,83,118,181,272,356,363,391,447
 459 -> 27,54,108,189,270,324,351,378,0
 513 -> 27,189,216,486,0
 549 -> 27,72,99,180,207,243,306,369,468,477
 567 -> 27,216,405
 585 -> 18,27,207,252,261,378,441,486,558
 651 -> 27,188,216,314,405,419,461,531,636,650
 693 -> 27,90,216,468,531,594
 729 -> 27,216,270,459,513,702,0
 819 -> 27,90,720
 837 -> 27,216,405,729,810
 945 -> 27,216,783
 999 -> 27,162,270,297,621,702,783,837
1053 -> 27,135,324,378,486,675,729,837,1026
1071 -> 27,153,342,531,657,720,783,972,1035
1161 -> 27,54,432,567,945,1134,0
1197 -> 27,216,342,531,657
1215 -> 27,216,243,486,513,702,756,972,1188
1323 -> 27,216,405,594,783,972,1161
1647 -> 27,243,621,648,729,756,918,1026,1404,1566
1701 -> 27,216,972
1755 -> 27,378,486,837,1026,1188,1377,1431,1728
1953 -> 27,216,405,531,1287
2079 -> 27,216,594,783,1161,1917
2331 -> 27,783,1035,1161,1287,1602,2169,2295
2457 -> 27,1539,1728
2709 -> 27,1161,1602,1728,1980,2106,2295
2835 -> 27,216,783,972,1161,1728,1917,2106,2673
3159 -> 27,486,729,1188,1431,1728,2430,2943,3132
3213 -> 27,783,972,1728,2106,2295,2484,2673,2862
3591 -> 27,216,1539,1728,3051
3843 -> 27,468,1854,2295,2673,2925,2988,3051,3114,3366
4095 -> 27,846,1728,2358,2547,3177,3303,3366,3996
5103 -> 27,216,1728,1917,3429,3618,4374
5859 -> 27,216,405,2484,3240
6993 -> 27,783,1161,2295,3618,5697,6264,6831
7371 -> 27,1539,1728,2484,3996,4185,4941,6453,6642
8127 -> 27,1161,1728,2106,2295,7020,7398
8505 -> 27,216,972,1728,1917,2673,3618,6831,7776
11529 -> 27,10611,10800,2295,2673,3051,5697,6831,7209,8154
12285 -> 27,11367,11556,1728,3996,4941,6453,6642,7398
22113 -> 27,13824,16281,17226,1728,18738,18927,19683,21384

C:\Users\gfis\work\gits\ramath\data>