#!perl

# Determine which rests are left for m^4 mod 2..n 
# @(#) $Id$
# 2018-10-09, Georg Fischer: copied from modpow.pl
#
# http://mathworld.wolfram.com/DiophantineEquation4thPowers.html
# https://oeis.org/search?q=+95800+217519+414560+422481%5E4+&language=english&go=Search
# A003828
#-------------------------

use strict;
use integer;

    my $limit  = 8192;
    my $lim2   = 32768;
    my $dist   = 2;
    my $exp    = 4;
    my @powers = ();
    my $ip = 0;
    while ($ip < $lim2) { # precompute 
        $powers[$ip] = $ip**$exp;
        $ip ++;
    } # while $ip precompute
    print "$lim2 ${exp}th powers precomputed\n";
    
    my $mod = 2;
    while ($mod < $limit) { # evaluate modulos
        my $num = 2;
        my %residues = (); # residues of $num**$exp
        while ($num < $lim2) {
            my $residue = $powers[$num] % $mod;
            $residues{sprintf("%04d", $residue)} = 1;
            $num += 1;
        } # while $num
        if (1) { # show all residues
            my @arr = map { $_ + 0 } sort(keys(%residues));
            if (scalar(@arr) <= 16000) {
                # print STDERR sprintf("%d\t", $mod) . join(" ",  @arr) . "\n";
            }
            my $comb = &combine(@arr);
            print STDERR sprintf("%d\t", $mod) . "$comb\n";
        } # show all residues
        $mod += 1;
    } # while $mod evaluate modulos
#-----------------------------------
sub combine {
    my @arr = @_;
    my $len = scalar(@arr);
    my $count = 0;
    my @result = ();
    my $i =       0; 
    while ($i < $len) {
    my $j =       0; 
    while ($j < $len) {
    if ($j != $i) {
    my $k =      $j; 
    while ($k < $len) {
    if ($k != $i) {
    my $l =      $k;
    while ($l < $len) {
    if ($l != $i) {
        my $sumgt0 = 0;
        $sumgt0 ++ if $arr[$i] > 0;
        $sumgt0 ++ if $arr[$j] > 0;
        $sumgt0 ++ if $arr[$k] > 0;
        $sumgt0 ++ if $arr[$l] > 0;
        if ($sumgt0 >= 3) {
            if ($arr[$i] == ($arr[$j] + $arr[$k] + $arr[$l]) % $mod) { # power sum is possible
                $count ++;
                if ($count <= 64) {
                    push(@result, "$arr[$i]=($arr[$j]+$arr[$k]+$arr[$l])%$mod");
                } else {
                    # print " and more";
                    # break all loops
                    $i = $len;
                    $j = $len;
                    $k = $len;
                    $l = $len;
                }
            } # possible
        } # sumgt0
    } # $i != $l
    $l ++;
    } # while l
    } # $i != $k
    $k ++;
    } # while k
    } # $i != $j
    $j ++;
    } # while j
    $i ++;
    } # while i
    
    return ($count > 8 ) ? "..." : ($count >= 1 ? join(" ", @result) : "none");
} # sub combine
#---------------
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
