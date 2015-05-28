#!perl
# Extract valid preserving mappings amat*vect1 => vect2
# and show all sums and differences between coefficients 
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-04-12: copied from get:maps.pl
#
# usage:
#   perl find_seq.pl < infile > outfile
#-----------------------------------
use strict;

    my %hash = ();
    my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime (time);
    my $timestamp = sprintf ("%04d-%02d-%02d %02d:%02d:%02d", $year + 1900, $mon + 1, $mday, $hour, $min, $sec);    

    while (<>) {
        my $line = $_;
        $line =~ m{\, chain\s+(\d+)};
        my $chain = $1;
        $line =~ m{\[([\d\-\,]+)\]};
        my $temp = $1;
        my $alen = scalar(split(/\,/, $temp));
        if ($chain >= 8 and $alen == 4) {
            $line =~ m{(\[\[[\d\-\,]+\](\,\[[\d\-\,]+\])+\])\s+(\[[\d\-\,]+\])};
            my $amat   = $1;
            my $vect0  = $3;
            print "\n$line";
            my @tuples = $line =~ m{\s+\=\>\s+\[([\d\-\,]+)\]}g;
            print join("", map { sprintf("%8s", $_) } ("a","b","c","d","a+b","a-b","a+c","a-c","a+d","a-d","b+c","b-c","b+d","b-d","c+d","c-d")), "\n";
            foreach my $vecti (@tuples) {
                my @v = split(/\,/, $vecti);
                push (@v
                , $v[0]+$v[1]
                , $v[0]-$v[1]
                , $v[0]+$v[2]
                , $v[0]-$v[2]
                , $v[0]+$v[3]
                , $v[0]-$v[3]
                , $v[1]+$v[2]
                , $v[1]-$v[2]
                , $v[1]+$v[3]
                , $v[1]-$v[3]
                , $v[2]+$v[3]
                , $v[2]-$v[3]
                );
                print join("", map { sprintf("%8d", $_) }@v), "\n";
                $vect0 = $vecti;
            } # foreach $vecti
        } # if chain
    } # while <>
__DATA__
[[0,-5,3,5],[3,5,0,-5],[5,0,5,-3],[5,-3,5,0]],det=-81 [18,21,19,28], chain 8 => [92,19,101,122] => [818,-239,599,908] => [7532,-3281,4361,7802] => [68498,-32819,36059,69308] => [618812,-305141,314861,621242] => [5576498,-2775479,2804639,5583788] => [50210252,-25066841,25154321,50232122] => [451957778,-225864059,226126499,452023388]
elapsed time: 289 s
